<?php if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}
/*
* LimeSurvey
* Copyright (C) 2013 The LimeSurvey Project Team / Carsten Schmitz
* All rights reserved.
* License: GNU/GPL License v2 or later, see LICENSE.php
* LimeSurvey is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See COPYRIGHT.php for copyright notices and details.
*
*    Files Purpose: lots of common functions
*/

/**
 * Class Strategy
 *
 * @property integer $strg_id ID
 * @property integer $sid Survey ID
 * @property integer $gid Group ID
 * @property string $strg_name Strategy name
 * @property string $target  target 
 * @property string $strategy summary 
 * @property string $strategy detail
 * @property string $language Language code (eg: 'en')
 * @property string $relevance Group's relevane equation
 *
 * @property Survey $survey
 * @property Question[] $questions Questions without subquestions
 */
class Strategy extends LSActiveRecord
{
    public $aQuestions; // to stock array of questions of the group
    /**
     * @inheritdoc
     * @return QuestionGroup
     */
    public static function model($class = __CLASS__)
    {
        /** @var self $model */
        $model = parent::model($class);
        return $model;
    }

    /** @inheritdoc */
    public function tableName()
    {
        return '{{strategies}}';
    }

    /** @inheritdoc */
    public function primaryKey()
    {
        return array('strg_id', 'language');
    }


    /** @inheritdoc */
    public function rules()
    {
        return array(
            array('strg_id', 'unique', 'caseSensitive'=>true, 'criteria'=>array(
                'condition'=>'language=:language',
                'params'=>array(':language'=>$this->language)
                ),
                'message'=>'{attribute} "{value}" is already in use.'),
            array('language', 'length', 'min' => 2, 'max'=>20), // in array languages ?
            array('strg_name,strategy_summary,strategy_detail,target', 'LSYii_Validators'),
            array('strg_name', 'length', 'min' => 0, 'max'=>100),
        );
    }


    /** @inheritdoc */
    public function attributeLabels()
    {
        return array(
            'language' => gt('Language'),
            'strg_name' => gt('Strategy name')
        );
    }

    /** @inheritdoc */
    public function relations()
    {
        return array(
            'survey'    => array(self::BELONGS_TO, 'Survey', 'sid'),
            'groups' => array(self::BELONGS_TO, 'QuestionGroup', 'gid, language', 'together' => true),
        );
    }


    public function getAllRecords($condition = false, $order = false, $return_query = true)
    {
        $query = Yii::app()->db->createCommand()->select('*')->from('{{strategies}}');

        if ($condition != false) {
            $query->where($condition);
        }

        if ($order != false) {
            $query->order($order);
        }

        return ($return_query) ? $query->queryAll() : $query;
    }

    /**
     * Insert an array into the $strategy table
     * Returns false if insertion fails, otherwise the new GID
     *
     * @param array $data
     * @return bool|int
     */
    public function insertRecords($data)
    {
        $strategy = new self;
        foreach ($data as $k => $v) {
            $strategy->$k = $v;
        }
        if (!$strategy->save()) {
            return false;
        } else {
            return $strategy->strg_id;
        }
    }


    /**
     * This functions insert Strategyg data in the form of array('<grouplanguage>'=>array( <array of fieldnames => values >))
     * It will take care of maintaining the group ID
     *
     * @param mixed $aStrategyData
     * @return bool|int
     */
    public function insertNewStrategy($aStrategyData)
    {
        $aFirstRecord = reset($aStrategyData);
        $iSurveyID = $aFirstRecord['sid'];
        $sBaseLangauge = Survey::model()->findByPk($iSurveyID)->language;
        $aAdditionalLanguages = Survey::model()->findByPk($iSurveyID)->additionalLanguages;
        $aSurveyLanguages = array($sBaseLangauge) + $aAdditionalLanguages;
        $bFirst = true;
        $iStrategyID = null;
        foreach ($aSurveyLanguages as $sLanguage) {
            if ($bFirst) {
                $iStrategyID = $this->insertRecords($aStrategyData[$sLanguage]);
                $bFirst = false;
            } else {
                $aStrategyData[$sLanguage]['strg_id'] = $iStrategyID;
                switchMSSQLIdentityInsert('strategies', true);
                $this->insertRecords($aStrategyData[$sLanguage]);
                switchMSSQLIdentityInsert('strategies', false);
            }
        }
        return $iStrategyID;
    }


    /**
     * @param int $surveyid
     * @return array
     */
    public function getStrategies($surveyid)
    {
        $language = Survey::model()->findByPk($surveyid)->language;
        return Yii::app()->db->createCommand()
            ->select(array('strg_id', 'strg_name'))
            ->from($this->tableName())
            ->where(array('and', 'sid=:surveyid', 'language=:language'))
            ->order('gid asc')
            ->bindParam(":language", $language, PDO::PARAM_STR)
            ->bindParam(":surveyid", $surveyid, PDO::PARAM_INT)
            ->query()->readAll();
    }

    /**
     * @param integer $groupId
     * @param integer $surveyId
     * @return int|null
     */
    public static function deleteWithDependency($strgId, $surveyId)
    {
        // Abort if the survey is active
        $surveyIsActive = Survey::model()->findByPk($surveyId)->active !== 'N';
        if ($surveyIsActive) {
            Yii::app()->user->setFlash('error', gt("Can't delete strategy when the survey is active"));
            return null;
        }

        return Strategy::model()->deleteAllByAttributes(array('sid' => $surveyId, 'strg_id' => $strgId));
    }

    /**
     * Get group description
     *
     * @param int $iGroupId
     * @param string $sLanguage
     * @return string
     */
    public function getStrategyDescription($iStrgId, $sLanguage)
    {
        return $this->findByPk(array('strg_id' => $iStrgId, 'language' => $sLanguage))->strg_name;
    }

    /**
     * @param integer $groupId
     * @return array
     */
    private static function getStrategyIdsInGroup($surveyid, $groupId)
    {
        $strategies = Yii::app()->db->createCommand()
            ->select('strg_id')
            ->from('{{strategies}}')
            ->where(array('and', 'sid=:surveyid', 'gid=:groupId', 'language=:language'))
            ->bindParam(":surveyid", $surveyid, PDO::PARAM_INT)
            ->bindParam(":groupid", $groupId, PDO::PARAM_INT)
            ->bindParam(":language", $language, PDO::PARAM_STR)
            ->queryAll();
//          ->query()->readAll();
            

        $strategyIds = array();
        foreach ($strategies as $strategy) {
            $strategyIds[] = $strategy['strg_id'];
        }

        return $strategyIds;
    }
    
    /**
     * Return all group of the active survey
     * Used to render group filter in questions list
     */
    public function getAllGroups()
    {
        return QuestionGroup::model()->findAll("sid=:sid and language=:lang",
            array(':sid'=>$this->sid,
                ':lang'=>$this->survey->language));
    }

    /**
     * @param mixed|array $condition
     * @param string[] $order
     * @return CDbDataReader
     */
    public function getAllStrategies($condition, $order = false)
    {
        $command = Yii::app()->db->createCommand()
            ->where($condition)
            ->select('*')
            ->from($this->tableName());
        if ($order != false) {
            $command->order($order);
        }
        return $command->query();
    }

    /**
     * @return string
     */
    public function getbuttons()
    {
        // Find out if the survey is active to disable add-button
        $oSurvey = Survey::model()->findByPk($this->sid);
        $surveyIsActive = $oSurvey->active !== 'N';
        $button = '';

        /* Add question to this group
        if (Permission::model()->hasSurveyPermission($this->sid, 'surveycontent', 'update')) {
            $url = Yii::app()->createUrl("admin/questions/sa/newquestion/surveyid/$this->sid/gid/$this->gid");
            $button .= '<a class="btn btn-default list-btn '.($surveyIsActive ? 'disabled' : '').' "  data-toggle="tooltip"  data-placement="left" title="'.gT('Add new question to group').'" href="'.$url.'" role="button"><i class="fa fa-plus " ></i></a>';
        }*/

        // strategies edition
        // Edit
        if (Permission::model()->hasSurveyPermission($this->sid, 'surveycontent', 'update')) {
            $url = Yii::app()->createUrl("admin/strategies/sa/edit/surveyid/$this->sid/strg_id/$this->strg_id");
            $button .= '  <a class="btn btn-default  list-btn" href="'.$url.'" role="button" data-toggle="tooltip" title="'.gT('Edit Strategy').'"><i class="fa fa-pencil " ></i></a>';
        }

        // View summary
        if (Permission::model()->hasSurveyPermission($this->sid, 'surveycontent', 'read')) {
            $url = Yii::app()->createUrl("/admin/strategies/sa/view/surveyid/");
            $url .= '/'.$this->sid.'/strg_id/'.$this->strg_id;
            $button .= '  <a class="btn btn-default  list-btn" href="'.$url.'" role="button" data-toggle="tooltip" title="'.gT('Strategy summary').'"><i class="fa fa-list-alt " ></i></a>';
        }

        // Delete
        if ($oSurvey->active != "Y" && Permission::model()->hasSurveyPermission($this->sid, 'surveycontent', 'delete')) {
            $button .= '<a class="btn btn-default"  data-toggle="tooltip" title="'.gT("Delete").'" href="#" role="button"'
                ." onclick='$.bsconfirm(\"".CHtml::encode(gT("Deleting will also delete any conditions it includes. Are you sure you want to continue?"))
                            ."\", {\"confirm_ok\": \"".gT("Yes")."\", \"confirm_cancel\": \"".gT("No")."\"}, function() {"
                            . convertGETtoPOST(Yii::app()->createUrl("admin/strategies/sa/delete/", ["surveyid" => $this->sid, "strg_id" => $this->strg_id]))
                        ."});'>"
                    .' <i class="text-danger fa fa-trash"></i>
                </a>';
        }        

        return $button;

    }


    /**
     * @return CActiveDataProvider
     */
    public function search()
    {
        $pageSize = Yii::app()->user->getState('pageSize', Yii::app()->params['defaultPageSize']);

        $sort = new CSort();
        $sort->defaultOrder = array('strg_id'=> false);
        $sort->attributes = array(
            'strg_id'=>array(
                'asc'=>'strg_id',
                'desc'=>'strg_id desc',
            ),
            'strg_name'=>array(
                'asc'=>'strg_name',
                'desc'=>'strg_name desc',
            ),
            'group'=>array(
                'asc'=>'gid',
                'desc'=>'gid desc',
            ),
            'target'=>array(
                'asc'=>'target',
                'desc'=>'target desc',
            ),
            'strategy_summary'=>array(
                'asc'=>'strategy_summary',
                'desc'=>'strategy_summary desc',
            ),
        );

        $criteria = new CDbCriteria;
        $criteria->condition = 'sid=:surveyid AND language=:language';
        $criteria->params = (array(':surveyid'=>$this->sid, ':language'=>$this->language));
        $criteria->compare('strg_name', $this->strg_name, true);

        $dataProvider = new CActiveDataProvider(get_class($this), array(
            'criteria'=>$criteria,

            'sort'=>$sort,

            'pagination'=>array(
                'pageSize'=>$pageSize,
            ),
        ));
        return $dataProvider;
    }

    /**
     * Make sure we don't save a new question group
     * while the survey is active.
     *
     * @inheritdoc
     */
    protected function beforeSave()
    {
        if (parent::beforeSave()) {
            $surveyIsActive = Survey::model()->findByPk($this->sid)->active !== 'N';
            if ($surveyIsActive && $this->getIsNewRecord()) {
                /* And for multi lingual, when add a new language ? */
                $this->addError('strg_id', gT("You can not add a strategy if survey is active."));
                return false;
            }
            return true;
        } else {
            return false;
        }
    }

    /**
     * Returns the first question group in the survey
     * @param int $surveyId
     * @return QuestionGroup
     */
    public static function getFirstGroup($surveyId)
    {
        $criteria = new CDbCriteria();
        $criteria->addCondition('sid = '.$surveyId);
        $criteria->mergeWith(array(
            'order' => 'strg_id DESC'
        ));
        return self::model()->find($criteria);
    }

    /**
     * Delete a bunch of questions in one go
     *
     * @param mixed $questionsIds
     * @return void
     */
    public static function deleteAllById($strategiesIds)
    {
        if (!is_array($strategiesIds)) {
            $strategiesIds = array($strategiesIds);
        }

       // Yii::app()->db->createCommand()->delete(StrgConditions::model()->tableName(), array('in', 'qid', $strategiesIds));
        Yii::app()->db->createCommand()->delete(Strategy::model()->tableName(), array('in', 'strg_id', $strategiesIds));
    }
    
    /*
     * Used in frontend helper, buildsurveysession.
     * @param int $surveyid
     * @return int
     
    public static function getTotalGroupsWithoutQuestions($surveyid)
    {
        $sQuery = "select count(*) from {{groups}}
            left join {{questions}} on  {{groups}}.gid={{questions}}.gid
            where {{groups}}.sid={$surveyid} and qid is null";
        return Yii::app()->db->createCommand($sQuery)->queryScalar();
    }*/

    /**
     * Used in frontend helper, buildsurveysession.
     * @param int $surveyid
     * @return int
     
    public static function getTotalGroupsWithQuestions($surveyid)
    {
        $sQuery = "select count(DISTINCT {{groups}}.gid) from {{groups}}
            left join {{questions}} on  {{groups}}.gid={{questions}}.gid
            where {{groups}}.sid={$surveyid} and qid is not null";
        return Yii::app()->db->createCommand($sQuery)->queryScalar();
    }*/

}
