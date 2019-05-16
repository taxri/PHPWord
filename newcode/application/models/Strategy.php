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
 * Class QuestionGroup
 *
 * @property integer $gid ID
 * @property integer $sid Survey ID
 * @property string $group_name Question group display name
 * @property integer $group_order Group order number (max 100 chars)
 * @property string $description Group display description
 * @property string $language Language code (eg: 'en')
 * @property string $randomization_group  Randomization group
 * @property string $grelevance Group's relevane equation
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
     * @param integer $sid
     * @param string $lang
     * @param int $position
     */
    public function updateGroupOrder($sid, $lang, $position = 0)
    {
    }

    public function cleanOrder($surveyid){
    }
    /**
     * Insert an array into the groups table
     * Returns false if insertion fails, otherwise the new GID
     *
     * @param array $data
     * @return bool|int
     */
    public function insertRecords($data)
    {
        $group = new self;
        foreach ($data as $k => $v) {
            $group->$k = $v;
        }
        if (!$group->save()) {
            return false;
        } else {
            return $group->gid;
        }
    }


    /**
     * This functions insert question group data in the form of array('<grouplanguage>'=>array( <array of fieldnames => values >))
     * It will take care of maintaining the group ID
     *
     * @param mixed $aQuestionGroupData
     * @return bool|int
     */
    public function insertNewGroup($aQuestionGroupData)
    {
        $aFirstRecord = reset($aQuestionGroupData);
        $iSurveyID = $aFirstRecord['sid'];
        $sBaseLangauge = Survey::model()->findByPk($iSurveyID)->language;
        $aAdditionalLanguages = Survey::model()->findByPk($iSurveyID)->additionalLanguages;
        $aSurveyLanguages = array($sBaseLangauge) + $aAdditionalLanguages;
        $bFirst = true;
        $iGroupID = null;
        foreach ($aSurveyLanguages as $sLanguage) {
            if ($bFirst) {
                $iGroupID = $this->insertRecords($aQuestionGroupData[$sLanguage]);
                $bFirst = false;
            } else {
                $aQuestionGroupData[$sLanguage]['strg_id'] = $iGroupID;
                switchMSSQLIdentityInsert('strategies', true);
                $this->insertRecords($aQuestionGroupData[$sLanguage]);
                switchMSSQLIdentityInsert('strategies', false);
            }
        }
        return $iGroupID;
    }


    /**
     * @param int $surveyid
     * @return array
     */
    public function getGroups($surveyid)
    {
        $language = Survey::model()->findByPk($surveyid)->language;
        return Yii::app()->db->createCommand()
            ->select(array('strg_id', 'strg_name'))
            ->from($this->tableName())
            ->where(array('and', 'sid=:surveyid', 'language=:language'))
            ->order('group_order asc')
            ->bindParam(":language", $language, PDO::PARAM_STR)
            ->bindParam(":surveyid", $surveyid, PDO::PARAM_INT)
            ->query()->readAll();
    }

    /**
     * @param integer $groupId
     * @param integer $surveyId
     * @return int|null
     */
    public static function deleteWithDependency($groupId, $surveyId)
    {
    }

    /**
     * Get group description
     *
     * @param int $iGroupId
     * @param string $sLanguage
     * @return string
     */
    public function getGroupDescription($iGroupId, $sLanguage)
    {
        return $this->findByPk(array('strg_id' => $iGroupId, 'language' => $sLanguage))->strg_name;
    }

    /**
     * @param integer $groupId
     * @return array
     */
    private static function getQuestionIdsInGroup($groupId)
    {
    }

    /**
     * @param mixed|array $condition
     * @param string[] $order
     * @return CDbDataReader
     */
    public function getAllGroups($condition, $order = false)
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

        // Add question to this group
        if (Permission::model()->hasSurveyPermission($this->sid, 'surveycontent', 'update')) {
            $url = Yii::app()->createUrl("admin/questions/sa/newquestion/surveyid/$this->sid/gid/$this->gid");
            $button .= '<a class="btn btn-default list-btn '.($surveyIsActive ? 'disabled' : '').' "  data-toggle="tooltip"  data-placement="left" title="'.gT('Add new question to group').'" href="'.$url.'" role="button"><i class="fa fa-plus " ></i></a>';
        }

        // Group edition
        // Edit
        if (Permission::model()->hasSurveyPermission($this->sid, 'surveycontent', 'update')) {
            $url = Yii::app()->createUrl("admin/questiongroups/sa/edit/surveyid/$this->sid/gid/$this->gid");
            $button .= '  <a class="btn btn-default  list-btn" href="'.$url.'" role="button" data-toggle="tooltip" title="'.gT('Edit group').'"><i class="fa fa-pencil " ></i></a>';
        }

        // View summary
        if (Permission::model()->hasSurveyPermission($this->sid, 'surveycontent', 'read')) {
            $url = Yii::app()->createUrl("/admin/questiongroups/sa/view/surveyid/");
            $url .= '/'.$this->sid.'/gid/'.$this->gid;
            $button .= '  <a class="btn btn-default  list-btn" href="'.$url.'" role="button" data-toggle="tooltip" title="'.gT('Group summary').'"><i class="fa fa-list-alt " ></i></a>';
        }

        // Delete
        if ($oSurvey->active != "Y" && Permission::model()->hasSurveyPermission($this->sid, 'surveycontent', 'delete')) {
            $condarray = getGroupDepsForConditions($this->sid, "all", $this->gid, "by-targgid");
            if (is_null($condarray)) {
                $button .= '<span data-toggle="tooltip" title="'.gT('Delete survey group').'">'
                    .'<button class="btn btn-default" '
                    .' data-onclick="(function() { '.CHtml::encode(convertGETtoPOST(Yii::app()->createUrl("admin/questiongroups/sa/delete/", ["surveyid" => $this->sid,  "gid"=>$this->gid]))).' })" '
                    .' data-target="#confirmation-modal"'
                    .' role="button"'
                    .' data-toggle="modal"'
                    .' data-message="'.gT("Deleting this group will also delete any questions and answers it contains. Are you sure you want to continue?", "js").'"'
                    .'>'
                        .'<i class="fa fa-trash text-danger "></i>'
                        .'<span class="sr-only">'.gT('Delete survey group').'</span>'
                    .'</button>'
                    .'</span>';

            } else {
                $button .= '<span data-toggle="tooltip" title="'.gT('Group cant be deleted, because of depending conditions').'">'
                    .'<button class="btn btn-default" '
                    .' disabled '
                    .' role="button"'
                    .' data-toggle="popover"'
                    .' data-tooltip="true"'
                    .' title="'.gT("Impossible to delete this group because there is at least one question having a condition on its content", "js").'">'
                        .'<i class="fa fa-trash text-muted "></i>'
                        .'<span class="sr-only">'.gT('Delete survey group not possible').'</span>'
                    .'</button>'
                    .'</span>';
            }
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
        $sort->defaultOrder = array('group_order'=> false);
        $sort->attributes = array(
            'group_id'=>array(
                'asc'=>'gid',
                'desc'=>'gid desc',
            ),
            'group_order'=>array(
                'asc'=>'group_order',
                'desc'=>'group_order desc',
            ),
            'group_name'=>array(
                'asc'=>'group_name',
                'desc'=>'group_name desc',
            ),
        );

        $criteria = new CDbCriteria;
        $criteria->condition = 'sid=:surveyid AND language=:language';
        $criteria->params = (array(':surveyid'=>$this->sid, ':language'=>$this->language));
        $criteria->compare('group_name', $this->group_name, true);

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
                $this->addError('gid', gT("You can not add a group if survey is active."));
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

    /*
     * Used in frontend helper, buildsurveysession.
     * @param int $surveyid
     * @return int
     */
    public static function getTotalGroupsWithoutQuestions($surveyid)
    {
    }

    /**
     * Used in frontend helper, buildsurveysession.
     * @param int $surveyid
     * @return int
     */
    public static function getTotalGroupsWithQuestions($surveyid)
    {
    }

}
