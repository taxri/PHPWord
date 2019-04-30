    public function getMaskInfo(SurveyObj $oSurvey, FormattingOptions $oOptions, $fieldName, $sValue)
    {
        $aQuestion = $oSurvey->fieldMap[$fieldName];
        $sFieldType = $aQuestion['type'];
		$title = $fieldName;
		$maskname = str_replace("{$oSurvey->id}X", "", $title);

		$m_yes = '<w:r><w:rPr><w:lang w:val="en-GB"/></w:rPr><w:sym w:font="Wingdings" w:char="00A8"/></w:r>';
		$m_no = '<w:r><w:rPr><w:lang w:val="en-GB"/></w:rPr><w:sym w:font="Wingdings" w:char="00FE"/></w:r>';
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
                    $mask[$maskname]=$sValue;
                    $mask["{$maskname}oth"]=$s_yes;
                } else {
                    $mask["{$maskname}{$sValue}"]=$s_yes;
                }
                break;

            case 'O':   //DROPDOWN LIST WITH COMMENT
                $mask[$maskname]=$sValue;
                break;

            case 'M':   //MULTIOPTION
            case 'P':
                if (mb_substr($fieldName, -5, 5) == 'other' || mb_substr($fieldName, -7, 7) == 'comment') {
                    $mask[$maskname]=$sValue;
                    $mask["{$maskname}oth"]=$m_yes;
                } else {
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
                        rtrim(rtrim($sValue, "0"), ".");
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
                    $mask["{$maskname}Y"]=$s_yes;
                    $mask["{$maskname}N"]=$s_no;
                }else if ($sValue == 'N') {
                    $mask["{$maskname}Y"]=$s_no;
                    $mask["{$maskname}N"]=$s_yes;
                }else{
                    $mask["{$maskname}Y"]=$s_no;
                    $mask["{$maskname}N"]=$s_no;
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

            default:
                $mask[$maskname]=$sValue;
                break;
        }
        /*
         * */
        return $mask;
    }
        $templateProcessor = new \PhpOffice\PhpWord\TemplateProcessor('我的test.docx');
        $templateProcessor->setValues($mask);
        $templateProcessor->saveAs('我的test2.docx');

    abstract protected function outputRecord($headers, $values, FormattingOptions $oOptions,SurveyObj $oSurvey, $mask);
