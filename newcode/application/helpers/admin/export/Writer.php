<?php
/**
* Contains functions and properties that are common to all writers.
* All extending classes must implement the internalWrite(...) method and
* have access to functionality as described below:
*
* TODO Write more docs here
*/
abstract class Writer implements IWriter
{
    protected $sLanguageCode;
    /** @var Translator $translator */
    protected $translator;
    public $filename;
    public $webfilename;

    protected function translate($key, $sLanguageCode)
    {
        return $this->translator->translate($key, $sLanguageCode);
    }

    /**
     * An initialization method that implementing classes can override to gain access
     * to any information about the survey, language, or formatting options they
     * may need for setup.
     *
     * @param SurveyObj $oSurvey
     * @param mixed $sLanguageCode
     * @param FormattingOptions $oOptions
     */
    public function init(SurveyObj $oSurvey, $sLanguageCode, FormattingOptions $oOptions)
    {
        $this->languageCode = $sLanguageCode;
        $this->translator = new Translator();
        $this->filename = Yii::app()->getConfig("tempdir").DIRECTORY_SEPARATOR.randomChars(40);
        $this->webfilename = 'results-survey'.$oSurvey->id;
    }

    public function initwebfilename(SurveyObj $oSurvey, $sLanguageCode, FormattingOptions $oOptions)
    {
       if (strrpos($oSurvey->languageSettings['surveyls_urldescription'],'docx')){
          $this->webfilename = $oSurvey->languageSettings['surveyls_urldescription'];
       }
    }

    /**
     * Return map of questions groups
     *
     * @param SurveyObj $survey
     * @param FormattingOptions $oOptions
     * @return array
     */
    public function setGroupMap(SurveyObj $survey, FormattingOptions $oOptions)
    {
        $aGroupMap = array();
        $index = 0;
        foreach ($oOptions->selectedColumns as $column) {
            if (isset($survey->fieldMap[$column])) {
                $question = $survey->fieldMap[$column];
            } else {
                // Token field
                $question = array('gid'=>0, 'qid'=>'');
            }
            $question['index'] = $index;
            $aGroupMap[intval($question['gid'])][] = $question;
            $index++;
        }
        return $aGroupMap;
    }

    /**
     * Returns an abbreviated heading for the survey's question that matches
     * Force headingTextLength to be set, set to 15 if is not set (old behaviour)
     *
     * @param SurveyObj $oSurvey
     * @param string $fieldName
     * @return string
     */
    public function getAbbreviatedHeading(SurveyObj $oSurvey, FormattingOptions $oOptions, $fieldName)
    {
        $oOptions->headingTextLength = ((int) $oOptions->headingTextLength) ? (int) $oOptions->headingTextLength : 15;
        return $this->getHeadingText($oSurvey, $oOptions, $fieldName);
    }

    /**
     * Returns a full heading for the question that matches the $fieldName.
     * Force headingTextLength to null (old behaviour)
     *
     * @deprecated
     * @param SurveyObj $oSurvey
     * @param FormattingOptions $oOptions
     * @param string $fieldName
     * @return string
     */
    public function getFullHeading(SurveyObj $oSurvey, FormattingOptions $oOptions, $fieldName)
    {
        $oOptions->headingTextLength = null;
        return $this->getHeadingText($oSurvey, $oOptions, $fieldName);
    }

    /**
     * Return the subquestion part, if not empty : add a space before it.
     *
     * @param SurveyObj $oSurvey
     * @param FormattingOptions $oOptions
     * @param string $fieldName
     * @return string
     */
    public function getFullFieldSubHeading(SurveyObj $oSurvey, FormattingOptions $oOptions, $fieldName)
    {
        if (isset($oSurvey->fieldMap[$fieldName])) {
            $aField = $oSurvey->fieldMap[$fieldName];
            $aField['question'] = '';
            $subHeading = trim(viewHelper::getFieldText($aField, array('separator'=>array('[', ']'), 'abbreviated'=>$oOptions->headingTextLength, 'ellipsis'=>".. ")));
            if ($subHeading) {
                            return " {$subHeading}";
            }
        }
        return false;
    }

    /**
     * Return the question text part without any subquestion
     *
     * @param SurveyObj $oSurvey
     * @param FormattingOptions $oOptions
     * @param string $fieldName
     * @return string
     */
    public function getFullQuestionHeading(SurveyObj $oSurvey, FormattingOptions $oOptions, $fieldName)
    {
        if (isset($oSurvey->fieldMap[$fieldName])) {
            $aField = $oSurvey->fieldMap[$fieldName];
            return viewHelper::flatEllipsizeText($aField['question'], true, $oOptions->headingTextLength, ".. ");
        }
        return false;
    }

    /**
     * Return the question code according to options
     *
     * @param SurveyObj $oSurvey
     * @param FormattingOptions $oOptions
     * @param string $fieldName
     * @return string
     */
    public function getHeadingCode(SurveyObj $oSurvey, FormattingOptions $oOptions, $fieldName)
    {
        if (isset($oSurvey->fieldMap[$fieldName])) {
            return viewHelper::getFieldCode($oSurvey->fieldMap[$fieldName], array('separator'=>array('[', ']'), 'LEMcompat'=>$oOptions->useEMCode));
        } else {
            return $fieldName;
        }
    }

    /**
     * Return the question text according to options
     *
     * @param SurveyObj $oSurvey
     * @param FormattingOptions $oOptions
     * @param string $fieldName
     * @return string
     */
    public function getHeadingText(SurveyObj $oSurvey, FormattingOptions $oOptions, $fieldName)
    {
        if (isset($oSurvey->fieldMap[$fieldName])) {
            $textHead = $this->getFullQuestionHeading($oSurvey, $oOptions, $fieldName).$this->getFullFieldSubHeading($oSurvey, $oOptions, $fieldName);
        } elseif (isset($oSurvey->tokenFields[$fieldName])) {
            $textHead = $oSurvey->tokenFields[$fieldName]['description'];
        } else {
            $textHead = $fieldName;
        }
        if ($oOptions->headerSpacesToUnderscores) {
            $textHead = str_replace(' ', '_', $textHead);
        }
        return $textHead;
    }

    /**
     * Return the answer text according to options
     *
     * @param SurveyObj $oSurvey
     * @param FormattingOptions $oOptions
     * @param string $fieldName
     * @param string $sValue
     * @return string
     */
    public function getLongAnswer(SurveyObj $oSurvey, FormattingOptions $oOptions, $fieldName, $sValue)
    {
        return $this->transformResponseValue(
                $oSurvey->getFullAnswer($fieldName, $sValue, $this->translator, $this->languageCode),
                $oSurvey->fieldMap[$fieldName]['type'],
                $oOptions,
                $fieldName
                );
    }

    /**
     * Return the answer text according to options
     *
     * @param SurveyObj $oSurvey
     * @param FormattingOptions $oOptions
     * @param string $fieldName
     * @param string $sValue
     * @return string
     */
    public function getShortAnswer(SurveyObj $oSurvey, FormattingOptions $oOptions, $fieldName, $sValue)
    {
        return $this->transformResponseValue(
                $oSurvey->getShortAnswer($fieldName, $sValue),
                $oSurvey->fieldMap[$fieldName]['type'],
                $oOptions,
                $fieldName
                );
    }

    /**
     * Performs a transformation of the response value based on the value, the
     * type of field the value is a response for, and the FormattingOptions.
     * All transforms should be processed during the execution of this function!
     *
     * The final step in the transform is to apply a stripTagsFull on the $value.
     * This occurs for ALL values whether or not any other transform is applied.
     *
     * @param string $value
     * @param string $fieldType
     * @param FormattingOptions $oOptions
     * @param string $column The name of the column
     * @return string
     */
    protected function transformResponseValue($value, $fieldType, FormattingOptions $oOptions, $column = null)
    {
        //The following if block handles transforms of Ys and Ns.
        if (($oOptions->convertN || $oOptions->convertY) &&
        isset($fieldType) &&
        ($fieldType == 'M' || $fieldType == 'P' || $fieldType == 'Y')) {
            if (($value == 'N' || ($value == '' && !is_null($value))) && $oOptions->convertN) {
                return $oOptions->nValue;
            } else if ($value == 'Y' && $oOptions->convertY) {
                    return $oOptions->yValue;
                }
        }

        //This spot should only be reached if no transformation occurs.
        return $value;
    }

public function getMaskInfo(SurveyObj $oSurvey, FormattingOptions $oOptions, $fieldName, $sValue)
    {
        $aQuestion = $oSurvey->fieldMap[$fieldName];
        $sFieldType = $aQuestion['type'];
        $title = $fieldName;
        $maskname = str_replace("{$oSurvey->id}X", "", $title);

        $m_no = '<w:r><w:rPr><w:lang w:val="en-GB"/></w:rPr><w:sym w:font="Wingdings" w:char="00A8"/></w:r>';
        $m_yes = '<w:r><w:rPr><w:lang w:val="en-GB"/></w:rPr><w:sym w:font="Wingdings" w:char="00FE"/></w:r>';
        $s_yes = '<w:r><w:rPr><w:lang w:val="en-GB"/></w:rPr><w:sym w:font="Wingdings" w:char="00A4"/></w:r>';
        $s_no = '<w:r><w:rPr><w:lang w:val="en-GB"/></w:rPr><w:sym w:font="Wingdings" w:char="00A1"/></w:r>'; 

        $mask=array();
        // Types "L", "!", "O", "D", "G", "N", "X", "Y", "5", "S", "T", "U"
        switch ($sFieldType) {
            case 'L':   //DROPDOWN LIST
            case '!':
                for ($i = 1; $i <= 16; $i++) {
                        $mask["{$maskname}A$i"]=$s_no;
                    }

                if (mb_substr($fieldName, -5, 5) == 'other') {
                    $maskNameFlag = str_replace('other','oth',$maskname);
                    $mask[$maskname]=$sValue;
                    if (strlen($sValue)>0){
                        $mask[$maskNameFlag]=$s_yes;
                    }else{
                        $mask[$maskNameFlag]=$s_no;
                    }
                } else {
                    $mask["{$maskname}{$sValue}"]=$s_yes;
                }
                break;

            case 'O':   //DROPDOWN LIST WITH COMMENT
                $mask[$maskname]=$sValue;
                break;

            case 'M':   //MULTIOPTION
            case 'P':
                if (mb_substr($fieldName, -5, 5) == 'other') {
                    $maskNameFlag2 = str_replace('other','oth',$maskname);
                    $mask[$maskname]=$sValue;
                    if (strlen($sValue)>0){
                        $mask[$maskNameFlag2]=$m_yes;
                    }else{
                        $mask[$maskNameFlag2]=$m_no;
                    }
                }else if (mb_substr($fieldName, -7, 7) == 'comment') {
                    $maskNameFlag3 = str_replace('comment','comm',$maskname);
                    $mask[$maskname]=$sValue;
                    if (strlen($sValue)>0){
                        $mask[$maskNameFlag3]=$m_yes;
                    }else{
                        $mask[$maskNameFlag3]=$m_no;
                    }
                }
                else {
                    if ($sValue == 'Y') {
                        $mask[$maskname]=$m_yes;
                    } else{
                        $mask[$maskname]=$m_no;
                    }
                }
                break;
                
            case 'K':
            case 'N':
                if (trim($sValue) != '') {
                    if (strpos($sValue, ".") !== false) {
                        $sValue = rtrim(rtrim($sValue, "0"), ".");
                    }
                }
                $mask[$maskname]=$sValue;
                break;

            case 'R':   //RANKING TYPE
                $mask[$maskname]=$sValue;
                break;


            case '1':   //Array dual scale
                $mask[$maskname]=$sValue;
                break;

            case 'Y':   //YES/NO
                if ($sValue == 'Y') {
                    $mask["{$maskname}"]=$s_yes;
                    $mask["{$maskname}Y"]=$s_yes;
                    $mask["{$maskname}N"]=$s_no;
                }else if ($sValue == 'N') {
                    $mask["{$maskname}"]=$s_no;
                    $mask["{$maskname}Y"]=$s_no;
                    $mask["{$maskname}N"]=$s_yes;
                }else{
                    $mask["{$maskname}"]="";
                }
                break;

            case 'G':
                if ($sValue == 'M') {
                    $mask["{$maskname}M"]=$s_yes;
                    $mask["{$maskname}F"]=$s_no;
                }else if ($sValue == 'F') {
                    $mask["{$maskname}M"]=$s_no;
                    $mask["{$maskname}F"]=$s_yes;
                }else{
                    $mask["{$maskname}M"]=$s_no;
                    $mask["{$maskname}F"]=$s_no;
                }
                break;

            case 'C':
                $mask[$maskname]=$sValue;
                break;

            case 'E':
                $mask[$maskname]=$sValue;
                break;

            case 'F':
            case 'H':
                $mask[$maskname]=$sValue;
                break;

            case 'D':
                if (mb_substr($sValue, -8, 8) == '00:00:00') {
                    $sFmtValue = str_replace('00:00:00', '', $sValue);
                    $mask[$maskname] = $sFmtValue;
                }else{
                    $mask[$maskname] = $sValue;
                }
                break;
            default:
                $mask[$maskname]=$sValue;
                break;
        }
        /*
         * */
        return $mask;
}

    /**
     * This method is made final to prevent extending code from circumventing the
     * initialization process that must take place prior to any of the translation
     * infrastructure to work.
     *
     * The inialization process is dependent upon the survey being passed into the
     * write function and so must be performed when the method is called and not
     * prior to (such as in a constructor).
     *
     * All extending classes must implement the internalWrite function which is
     * the code that is called after all initialization is completed.
     *
     * @param SurveyObj $oSurvey
     * @param string $sLanguageCode
     * @param FormattingOptions $oOptions
     * @param boolean $bOutputHeaders Set if header should be given back
     */
    final public function write(SurveyObj $oSurvey, $sLanguageCode, FormattingOptions $oOptions, $bOutputHeaders = true)
    {
        //traceVar($oSurvey);
        //traceVar($oOptions);

        //Output the survey.
        $headers = array();
        if ($bOutputHeaders) {
            foreach ($oOptions->selectedColumns as $sColumn) {
                //Survey question field, $column value is a field name from the getFieldMap function.
                switch ($oOptions->headingFormat) {
                    case 'abbreviated':
                        $value = $this->getAbbreviatedHeading($oSurvey, $oOptions, $sColumn);
                        //traceVar($value);
                        break;
                    case 'full':
                        $value = $this->getFullHeading($oSurvey, $oOptions, $sColumn);
                        //traceVar($value);
                        break;
                    case 'codetext':
                        $value = $this->getHeadingCode($oSurvey, $oOptions, $sColumn).$oOptions->headCodeTextSeparator.$this->getHeadingText($oSurvey, $oOptions, $sColumn);
                        //traceVar($value);
                        break;
                    case 'code':
                    default:
                        $value = $this->getHeadingCode($oSurvey, $oOptions, $sColumn);
                        //traceVar($value);
                        break;
                }
                $headers[] = $value;
                //traceVar($headers);
            }
        }
        //Output the results.
        $sFile = '';

        // If empty survey, prepare an empty responses array, and output just 1 empty record with header.
        if ($oSurvey->responses->rowCount == 0) {
                foreach ($oOptions->selectedColumns as $column) {
                    $elementArray[] = "";
                }
            $this->outputRecord($headers, $elementArray, $oOptions,$oSurvey,$sLanguageCode);
        }

        // If no empty survey, render/export responses array.
        foreach ($oSurvey->responses as $response) {
            $elementArray = array();
            $maskArray = array();

            
            foreach ($oOptions->selectedColumns as $column) {
                $value = $response[$column];

                $maskTmpArray = $this->getMaskInfo($oSurvey, $oOptions, $column, $value);
                $maskArray = array_merge($maskArray, $maskTmpArray);
                
                if (isset($oSurvey->fieldMap[$column]) && $oSurvey->fieldMap[$column]['type'] != 'answer_time' && $oSurvey->fieldMap[$column]['type'] != 'page_time' && $oSurvey->fieldMap[$column]['type'] != 'interview_time') {
                    switch ($oOptions->answerFormat) {
                        case 'long':
                            $elementArray[] = $this->getLongAnswer($oSurvey, $oOptions, $column, $value);
                            break;
                        default:
                        case 'short':
                            $elementArray[] = $this->getShortAnswer($oSurvey, $oOptions, $column, $value);
                            break;
                    }
                } else {
                    //Survey participants table value
                    $elementArray[] = $value;
                }
            }
            if ($oOptions->output == 'display') {
                $this->outputRecord($headers, $elementArray, $oOptions,$oSurvey,$maskArray);
            } else {
                $sFile .= $this->outputRecord($headers, $elementArray, $oOptions,$oSurvey,$maskArray);
            }
        }
        return $sFile;
    }

    protected function stripTagsFull($string)
    {
        $string = str_replace('-oth-', '', $string);
        return flattenText($string, false, true, 'UTF-8', false);
    }



    /**
     * This method will be called once for every row of data that needs to be
     * output.
     *
     * Implementations must use the data from these method calls to construct
     * proper output for their output type and the given FormattingOptions.
     *
     * @param array $headers
     * @param array $values
     * @param FormattingOptions $oOptions
     */
    abstract protected function outputRecord($headers, $values, FormattingOptions $oOptions, SurveyObj $oSurvey, $mask);
}
