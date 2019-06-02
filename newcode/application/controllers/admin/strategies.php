<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}
/*
 * LimeSurvey
 * Copyright (C) 2007-2011 The LimeSurvey Project Team / Carsten Schmitz
 * All rights reserved.
 * License: GNU/GPL License v2 or later, see LICENSE.php
 * LimeSurvey is free software. This version may have been modified pursuant
 * to the GNU General Public License, and as distributed it includes or
 * is derivative of works licensed under the GNU General Public License or
 * other free or open source software licenses.
 * See COPYRIGHT.php for copyright notices and details.
 *
 */

/**
 * strategies
 *
 * @package LimeSurvey
 * @author
 * @copyright 2011
 * @access public
 */
class strategies extends Survey_Common_Action
{
    /**
     * strategies::add()
     * Load add new question group screen.
     * @return
     */
    function add($surveyid)
    {
        /////
        $iSurveyID = $surveyid = sanitize_int($surveyid);
        $survey = Survey::model()->findByPk($iSurveyID);
        $aViewUrls = $aData = array();

        if (Permission::model()->hasSurveyPermission($surveyid, 'surveycontent', 'create')) {
            Yii::app()->session['FileManagerContext'] = "create:strategy:{$surveyid}";

            Yii::app()->loadHelper('admin/htmleditor');
            Yii::app()->loadHelper('surveytranslator');
            $grplangs = Survey::model()->findByPk($surveyid)->additionalLanguages;
            $baselang = Survey::model()->findByPk($surveyid)->language;
            $grplangs[] = $baselang;
            $grplangs = array_reverse($grplangs);
            App()->getClientScript()->registerScriptFile(App()->getConfig('adminscripts').'strategy.js');

            $aData['display']['menu_bars']['surveysummary'] = 'addstrategy';
            $aData['surveyid'] = $surveyid;
            $aData['action'] = $aData['display']['menu_bars']['gid_action'] = 'addstrategy';
            $aData['grplangs'] = $grplangs;
            $aData['baselang'] = $baselang;

            $aData['sidemenu']['state'] = false;
            $aData['title_bar']['title'] = $survey->currentLanguageSettings->surveyls_title." (".gT("ID").":".$iSurveyID.")";
            $aData['subaction'] = gT('Add Strategy');
            $aData['surveybar']['importquestiongroup'] = true;
            $aData['surveybar']['closebutton']['url'] = 'admin/survey/sa/liststrategies/surveyid/'.$surveyid; // Close button
            $aData['surveybar']['savebutton']['form'] = true;
            $aData['surveybar']['saveandclosebutton']['form'] = true;

		    $eqrow = [];
		    $eqrow['language'] = $baselang;
		    $eqrow['title'] = '';
		    $eqrow['question'] = '';
		    $eqrow['help'] = '';
		    $eqrow['lid'] = 0;
		    $eqrow['lid1'] = 0;
		    $eqrow['gid'] = 0;
		    $eqrow['other'] = 'N';
		    $eqrow['mandatory'] = 'N';
		    $eqrow['preg'] = '';
		    $eqrow['relevance'] = 1;
		    $eqrow['group_name'] = '';
		    $eqrow['modulename'] = '';
		    $eqrow['conditions_number'] = false;
		    $eqrow['type'] = 'T';
		    if (isset($_GET['gid'])) {
		        $eqrow['gid'] = $_GET['gid'];
		    }
		    $aData['eqrow'] = $eqrow;
	        $aData['adding'] = true;
	        $aData['action'] = 'newstrategy';            
	        // Get the questions for this group, for position
	        // NB: gid won't be set if user clicks quick-button Add question
	        if (isset($_GET['gid'])) {
	            $oQuestionGroup = QuestionGroup::model()->find('gid=:gid', array(':gid'=>$_GET['gid']));
	        } else {
	            $aData['oqresult'] = array();
	            $oQuestionGroup = QuestionGroup::model()->find(array('condition'=>'sid=:sid', 'params'=> array(':sid'=>$surveyid), 'order'=>'group_order'));
	        }
	        $aData['oQuestionGroup'] = $oQuestionGroup;
	        
            $this->_renderWrappedTemplate('survey/strategy', 'addStrategy_view', $aData);
        } else {
            Yii::app()->user->setFlash('error', gT("Access denied"));
            $this->getController()->redirect(Yii::app()->request->urlReferrer);
        }
    }

    /**
     * Insert the new strategies to the database
     *
     * @access public
     * @param int $surveyid
     * @return void
     */
    public function insert($surveyid)
    {
        if (Permission::model()->hasSurveyPermission($surveyid, 'surveycontent', 'create')) {
            Yii::app()->loadHelper('surveytranslator');

            $sSurveyLanguages = Survey::model()->findByPk($surveyid)->getAllLanguages();
            foreach ($sSurveyLanguages as $sLanguage) {
                $oStrategy = new Strategy;
                $oStrategy->sid = $surveyid;
                if (isset($newStrgID)) {
                    switchMSSQLIdentityInsert('strategies', true);
                    $oStrategy->strg_id = $newStrgID;
                }
                $oStrategy->gid = Yii::app()->request->getPost('gid');
                $oStrategy->strg_name = Yii::app()->request->getPost('strg_name_'.$sLanguage, "");
                $oStrategy->target = Yii::app()->request->getPost('target_'.$sLanguage, "");
                $oStrategy->strategy_summary = Yii::app()->request->getPost('strategy_summary_'.$sLanguage, "");
                $oStrategy->strategy_detail = Yii::app()->request->getPost('strategy_detail_'.$sLanguage, "");
                $oStrategy->other = Yii::app()->request->getPost('other_'.$sLanguage, "");
                $oStrategy->relevance = Yii::app()->request->getPost('relevance');
                $oStrategy->language = $sLanguage;
                
                if ($oStrategy->save()) {
                    if (!isset($newStrgID)) {
                        $newStrgID = $oStrategy->strg_id;
                    } else {
                        switchMSSQLIdentityInsert('strategies', true);
                    }
                } else {
                    Yii::app()->setFlashMessage(CHtml::errorSummary($oStrategy), 'error');
                }
            }
            if (!isset($newStrgID)) {
                // Error, redirect back.
                Yii::app()->setFlashMessage(gT("Strategies was not saved."), 'error');
                $this->getController()->redirect(array("admin/strategies/sa/add/surveyid/$surveyid"));
            }

            Yii::app()->setFlashMessage(gT("New strategy was saved."));
            Yii::app()->setFlashMessage(sprintf(gT('You can now %sadd a relevance%s in this survey.'), 
               '<a href="'.Yii::app()->createUrl("admin/strategies/sa/newquestion/surveyid/$surveyid/strg_id/$newStrgID").'">', '</a>'), 'info');
            if (Yii::app()->request->getPost('close-after-save') === 'true') {
                $this->getController()->redirect(array("admin/strategies/sa/view/surveyid/$surveyid/strg_id/$newStrgID"));
            } else if (Yii::app()->request->getPost('saveandnew', '') !== '') {
                $this->getController()->redirect(array("admin/strategies/sa/add/surveyid/$surveyid"));
            } else {
                // After save, go to edit
                $this->getController()->redirect(array("admin/strategies/sa/edit/surveyid/$surveyid/strg_id/$newStrgID"));
            }

        } else {
            Yii::app()->user->setFlash('error', gT("Access denied"));
            $this->getController()->redirect(Yii::app()->request->urlReferrer);
        }
    }

    /**
     * Action to delete a strategies
     *
     * @access public
     * @return void
     */
    public function delete($iSurveyId=null, $strg_id=null)
    {
        $iSurveyID = $surveyid = sanitize_int($surveyid);
        $survey = Survey::model()->findByPk($iSurveyID);
        $baselang = $survey->language;

        $oStrategy = Strategy::model()->findByPk(array('strg_id' => $strg_id, 'language' => $baselang));
        if (is_null($oStrategy)) {
            $this->getController()->error('Invalid Strategy ID');
        }
        
        $oQuestionGroup = QuestionGroup::model()->find("gid = :gid",array(":gid"=>$oStrategy->gid));
        if(empty($oQuestionGroup)) {
            throw new CHttpException(401, gT("Invalid question id"));
        }
        /* Test the surveyid from question, not from submitted value */
        $iSurveyId = $oQuestionGroup->sid;
        if(!Permission::model()->hasSurveyPermission($iSurveyId, 'surveycontent', 'delete')) {
            throw new CHttpException(403, gT("You are not authorized to delete questions."));
        }
        if(!Yii::app()->getRequest()->isPostRequest) {
            throw new CHttpException(405, gT("Invalid action"));
        }

        LimeExpressionManager::RevertUpgradeConditionsToRelevance($iSurveyId);

       /// $iGroupId = sanitize_int($iGroupId);
       /// $iGroupsDeleted = QuestionGroup::deleteWithDependency($iGroupId, $iSurveyId);

        if ($iGroupsDeleted > 0) {
            fixSortOrderGroups($iSurveyId);
            Yii::app()->setFlashMessage(gT('The question group was deleted.'));
        } else {
            Yii::app()->setFlashMessage(gT('Group could not be deleted'), 'error');
        }

        LimeExpressionManager::UpgradeConditionsToRelevance($iSurveyId);
        $this->getController()->redirect(array('admin/survey/sa/listquestiongroups/surveyid/'.$iSurveyId));
    }

    public function view($surveyid, $strg_id)
    {
        $aData = array();
        $aData['surveyid'] = $iSurveyID = $surveyid;
        $survey = Survey::model()->findByPk($iSurveyID);
        $aData['gid'] = $gid;
        $baselang = $survey->language;
        $condarray = getGroupDepsForConditions($surveyid, "all", $gid, "by-targgid");
        $aData['condarray'] = $condarray;

        $oStrategy = Strategy::model()->findByPk(array('strg_id' => $strg_id, 'language' => $baselang));
        if (is_null($oStrategy)) {
            $this->getController()->error('Invalid Strategy ID');
        }
        
        $oQuestionGroup = QuestionGroup::model()->findByPk(array('gid' => $oStrategy->gid, 'language' => $baselang));
        $grow           = $oQuestionGroup->attributes;

        $grow = array_map('flattenText', $grow);

        $aData['eqrow'] = $oStrategy;
        $aData['oQuestionGroup'] = $oQuestionGroup;
        $aData['surveyid'] = $surveyid;
        $aData['gid'] = $oStrategy->gid;
        $aData['grow'] = $grow;

        $aData['sidemenu']['questiongroups'] = true;
        $aData['sidemenu']['group_name'] = $grow['group_name'];
        $aData['title_bar']['title'] = $survey->currentLanguageSettings->surveyls_title." (".gT("ID").":".$iSurveyID.")";
        $aData['questiongroupbar']['buttons']['view'] = true;

        ///////////
        // sidemenu
        $aData['sidemenu']['state'] = true;
        $aData['sidemenu']['explorer']['state'] = true;
        $aData['sidemenu']['explorer']['gid'] = (isset($gid)) ? $gid : false;
        $aData['sidemenu']['explorer']['qid'] = false;

        $this->_renderWrappedTemplate('survey/strategy', 'Strategy_view', $aData);
    }

    /**
     * strategies::edit()
     * Load editing of a strategies screen.
     *
     * @access public
     * @param int $surveyid
     * @param int $strg_id
     * @return void
     */
    public function edit($surveyid, $strg_id)
    {
        $surveyid = $iSurveyID = sanitize_int($surveyid);
        $survey = Survey::model()->findByPk($surveyid);
        $baselang = $survey->language;
        
        $strg_id = sanitize_int($strg_id);
        
        $aViewUrls = $aData = array();

        if (Permission::model()->hasSurveyPermission($surveyid, 'surveycontent', 'update')) {
            Yii::app()->session['FileManagerContext'] = "edit:group:{$surveyid}";

            Yii::app()->loadHelper('admin/htmleditor');
            Yii::app()->loadHelper('surveytranslator');

            $aAdditionalLanguages = Survey::model()->findByPk($surveyid)->additionalLanguages;
            // TODO: This is not an array, but a string "en"
            $aBaseLanguage = Survey::model()->findByPk($surveyid)->language;

            $aLanguages = array_merge(array($aBaseLanguage), $aAdditionalLanguages);

            $grplangs = array_flip($aLanguages);

            // Check out the intgrity of the language versions of this group
            $oStrategy = Strategy::model()->findByPk(array('strg_id' => $strg_id, 'language' => $baselang));
            if (is_null($oStrategy)) {
                $this->getController()->error('Invalid Strategy ID');
            }
            
            $egresult = QuestionGroup::model()->findAllByAttributes(array('sid' => $surveyid, 'gid' => $oStrategy->gid));
            foreach ($egresult as $esrow) {
                $esrow = $esrow->attributes;

                // Language Exists, BUT ITS NOT ON THE SURVEY ANYMORE
                if (!in_array($esrow['language'], $aLanguages)) {
                    QuestionGroup::model()->deleteAllByAttributes(array('sid' => $surveyid, 'gid' => $oStrategy->gid, 'language' => $esrow['language']));
                } else {
                    $grplangs[$esrow['language']] = 'exists';
                }

                if ($esrow['language'] == $aBaseLanguage) {
                                    $basesettings = $esrow;
                }
            }

            // Create groups in missing languages
            foreach ($grplangs as $key => $value) {
                if ($value != 'exists') {
                    $basesettings['language'] = $key;
                    $group = new QuestionGroup;
                    foreach ($basesettings as $k => $v) {
                                            $group->$k = $v;
                    }
                    switchMSSQLIdentityInsert('groups', true);
                    $group->save();
                    switchMSSQLIdentityInsert('groups', false);
                }
            }
            $first = true;
            foreach ($aLanguages as $sLanguage) {
                $oResult = $oQuestionGroup = QuestionGroup::model()->findByAttributes(array('sid' => $surveyid, 'gid' => $oStrategy->gid, 'language' => $sLanguage));
                $aData['aGroupData'][$sLanguage] = $oResult->attributes;
                $aTabTitles[$sLanguage] = getLanguageNameFromCode($sLanguage, false);
                if ($first) {
                    $aTabTitles[$sLanguage] .= ' ('.gT("Base language").')';
                    $first = false;
                }
            }

            $aData['eqrow'] = $oStrategy;
            $aData['oQuestionGroup'] = $oQuestionGroup;
            $aData['sidemenu']['questiongroups'] = true;
            $aData['questiongroupbar']['buttonspreview'] = true;
            $aData['questiongroupbar']['savebutton']['form'] = true;
            $aData['questiongroupbar']['saveandclosebutton']['form'] = true;
           // $aData['questiongroupbar']['closebutton']['url'] = 'admin/questiongroups/sa/view/surveyid/'.$surveyid.'/gid/'.$gid; // Close button

            //$aData['action'] = $aData['display']['menu_bars']['gid_action'] = 'editgroup';
            $aData['subaction'] = gT('Edit group');
            $aData['surveyid'] = $surveyid;
            $aData['gid'] = $oStrategy->gid;
            $aData['tabtitles'] = $aTabTitles;
            $aData['aBaseLanguage'] = $aBaseLanguage;

            $aData['title_bar']['title'] = $survey->currentLanguageSettings->surveyls_title.":".$iSurveyID.")";

            ///////////
            // sidemenu
            $aData['sidemenu']['state'] = false;
            $aData['sidemenu']['explorer']['state'] = true;
            $aData['sidemenu']['explorer']['gid'] = (isset($gid)) ? $gid : false;
            $aData['sidemenu']['explorer']['qid'] = false;

            $this->_renderWrappedTemplate('survey/strategy', 'editStrategy_view', $aData);
        } else {
            Yii::app()->user->setFlash('error', gT("Access denied"));
            $this->getController()->redirect(Yii::app()->request->urlReferrer);
        }

    }

    /**
     * Reorder the questiongroups based on the new order in the adminpanel
     *
     * @param type $surveyid
     * @return void
     */
    public function updateOrder($surveyid)
    {
        $oSurvey = Survey::model()->findByPk($surveyid);
        $success = true;
        if(!$oSurvey->isActive) {
            $grouparray = Yii::app()->request->getPost('grouparray', []);
            if(!empty($grouparray)) { 
                foreach ($grouparray as $aQuestiongroup) {
                    
                    //first set up the ordering for questiongroups
                    $oQuestiongroups = QuestionGroup::model()->findAll("gid=:gid AND sid=:sid", [':gid'=> $aQuestiongroup['gid'], ':sid'=> $surveyid]);
                    array_map(function($oQuestiongroup) use ($aQuestiongroup, $success)
                    {
                        $oQuestiongroup->group_order = $aQuestiongroup['group_order'];
                        $success = $success && $oQuestiongroup->save();
                    }, $oQuestiongroups);
                    
                    $aQuestiongroup['questions'] = isset($aQuestiongroup['questions']) ? $aQuestiongroup['questions'] : [];

                    foreach ($aQuestiongroup['questions'] as $aQuestion) {
                        $oQuestions = Question::model()->findAll("qid=:qid AND sid=:sid", [':qid'=> $aQuestion['qid'], ':sid'=> $surveyid]);
                        array_map(function($oQuestion) use ($aQuestion, $success)
                        {
                            $oQuestion->question_order = $aQuestion['question_order'];
                            $oQuestion->gid = $aQuestion['gid'];
                            $success = $success && $oQuestion->save(true);
                        }, $oQuestions);
                    }
                }
            }

            QuestionGroup::model()->cleanOrder($surveyid);

            return Yii::app()->getController()->renderPartial(
                '/admin/super/_renderJson',
                array(
                    'data' => [
                        'success' => $success,
                        'DEBUG' => ['POST'=>$_POST, 'grouparray' => $grouparray]
                    ],
                ),
                false,
                false
            );
        }
        return Yii::app()->getController()->renderPartial(
            '/admin/super/_renderJson',
            array(
                'data' => [
                    'success' => false,
                    'message' => gT("You can't reorder in an active survey"),
                    'DEBUG' => ['POST'=>$_POST, 'grouparray' => $grouparray]
                ],
            ),
            false,
            false
        );
    }

    /**
     * Reorder the questiongroups based on the new order in the adminpanel
     *
     * @param type $surveyid
     * @return void
     */
    public function updateOrderWithQuestions($surveyid)
    {
        $grouparray = Yii::app()->request->getPost('grouparray', []);
        foreach ($grouparray as $aQuestiongroup) {
            $oQuestiongroups = QuestionGroup::model()->findAll("gid=:gid AND sid=:sid", [':gid'=> $aQuestiongroup['gid'], ':sid'=> $surveyid]);
            array_map(function($oQuestiongroup) use ($aQuestiongroup)
            {
                $oQuestiongroup->group_order = $aQuestiongroup['group_order'];
                $oQuestiongroup->save();
            }, $oQuestiongroups);
        }
    }

    /**
     * Provides an interface for updating a group
     *
     * @access public
     * @param int $gid
     * @return void
     */
    public function update($gid)
    {
        $gid = (int) $gid;
        $group = QuestionGroup::model()->findByAttributes(array('gid' => $gid));
        $surveyid = $group->sid;
        $survey = Survey::model()->findByPk($surveyid);

        if (Permission::model()->hasSurveyPermission($surveyid, 'surveycontent', 'update')) {
            Yii::app()->loadHelper('surveytranslator');

            foreach ($survey->allLanguages as $grplang) {
                if (isset($grplang) && $grplang != "") {
                    $group_name = $_POST['group_name_'.$grplang];
                    $group_description = $_POST['description_'.$grplang];

                    $group_name = html_entity_decode($group_name, ENT_QUOTES, "UTF-8");
                    $group_description = html_entity_decode($group_description, ENT_QUOTES, "UTF-8");

                    // Fix bug with FCKEditor saving strange BR types
                    $group_name = fixCKeditorText($group_name);
                    $group_description = fixCKeditorText($group_description);

                    $aData = array(
                        'group_name' => $group_name,
                        'description' => $group_description,
                        'randomization_group' => $_POST['randomization_group'],
                        'grelevance' => $_POST['grelevance'],
                    );
                    $condition = array(
                        'gid' => $gid,
                        'sid' => $surveyid,
                        'language' => $grplang
                    );
                    $group = QuestionGroup::model()->findByAttributes($condition);
                    foreach ($aData as $k => $v) {
                                            $group->$k = $v;
                    }
                    $ugresult = $group->save();
                    if ($ugresult) {
                        $groupsummary = getGroupList($gid, $surveyid);
                    }
                }
            }

            Yii::app()->setFlashMessage(gT("Question group successfully saved."));

            if (Yii::app()->request->getPost('close-after-save') === 'true') {
                            $this->getController()->redirect(array('admin/questiongroups/sa/view/surveyid/'.$surveyid.'/gid/'.$gid));
            }

            $this->getController()->redirect(array('admin/questiongroups/sa/edit/surveyid/'.$surveyid.'/gid/'.$gid));
        } else {
            Yii::app()->user->setFlash('error', gT("Access denied"));
            $this->getController()->redirect(Yii::app()->request->urlReferrer);
        }
    }

    /**
     * Renders template(s) wrapped in header and footer
     *
     * @param string $sAction Current action, the folder to fetch views from
     * @param string $aViewUrls View url(s)
     * @param array $aData Data to be passed on. Optional.
     */
    protected function _renderWrappedTemplate($sAction = 'survey/QuestionGroups', $aViewUrls = array(), $aData = array(), $sRenderFile = false)
    {
        parent::_renderWrappedTemplate($sAction, $aViewUrls, $aData, $sRenderFile);
    }
}
