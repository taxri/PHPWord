<?php
/**
* This file render the list of groups
* It use the QuestionGroup model search method to build the data provider.
*
* @var $model  obj    the QuestionGroup model
* @var $surveyid int
*/
?>
<?php $pageSize=Yii::app()->user->getState('pageSize',Yii::app()->params['defaultPageSize']);?>
<div class='side-body <?php echo getSideBodyClass(true); ?>'>
    <h3><?php eT('Strategies in this survey'); ?></h3>


    <div class="row">
        <div class="col-lg-12 content-right">
            <!-- Search Box -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="form  text-right">
                        <!-- Begin Form -->
                        <?php $form=$this->beginWidget('CActiveForm', array(
                            'action' => Yii::app()->createUrl('admin/survey/sa/liststrategies/surveyid/'.$surveyid),
                            'method' => 'get',
                                'htmlOptions'=>array(
                                    'class'=>'form-inline',
                                ),
                            )); ?>

                            <!-- search input -->
                            <div class="form-group">
                                <?php echo $form->label($model, 'search', array('label'=>gT('Search:'),'class'=>'control-label' )); ?>
                                <?php echo $form->textField($model, 'strg_name', array('class'=>'form-control')); ?>
                            </div>

                            <!-- select group -->
                            <div class="form-group">
                                <?php echo $form->label($model, 'gid', array('label'=>gT('Group:'),'class'=>'control-label')); ?>
                                    <select name="gid" class="form-control">
                                        <option value=""><?php eT('(Any group)');?></option>
                                        <?php foreach($model->AllGroups as $group): ?>
                                            <option value="<?php echo $group->gid;?>" <?php if( $group->gid == $model->gid){echo 'selected';} ?>>
                                                <?php echo flattenText($group->group_name);?>
                                            </option>
                                        <?php endforeach?>
                                    </select>
                            </div>

                            <?php echo CHtml::submitButton(gT('Search','unescaped'), array('class'=>'btn btn-success')); ?>
                            <a href="<?php echo Yii::app()->createUrl('admin/survey/sa/liststrategies/surveyid/'.$surveyid);?>" class="btn btn-warning"><?php eT('Reset');?></a>

                        <?php $this->endWidget(); ?>
                    </div><!-- form -->
                </div>
            </div>

            <!-- The table grid  -->
            <div class="row">
                <div class="col-lg-12">
                    <?php
                    $this->widget('ext.LimeGridView.LimeGridView', array(
                        'id'=>'strategy-grid',
                        'type'=>'striped',
                        'dataProvider' => $model->search(),
                        'emptyText'=>gT('No strategies found.'),
                        'summaryText'=>gT('Displaying {start}-{end} of {count} result(s).') .' '.sprintf(gT('%s rows per page'),
                            CHtml::dropDownList(
                                'pageSize',
                                $pageSize,
                                Yii::app()->params['pageSizeOptions'],
                                array(  'class'=>'changePageSize form-control',
                                    'style'=>'display: inline; width: auto'))),

                        // Columns to dispplay
                        'columns' => array(

                            //strg_id
                            array(
                                'header'=>gT('Strategy ID'),
                                'name'=>'strg_id',
                                'value'=>'$data->strg_id',
                            ),

                            //strg_name
                            array(
                                'header'=>gT('Strategy name'),
                                'name'=>'strg_name',
                                'value'=>'$data->strg_name'
                            ),

                            //group
                            array(
                                'header' => gT('Group'),
                                'name' => 'group',
                                'value'=>'$data->groups->group_name',                                
                                'htmlOptions' => array('class' => 'col-md-2'),
                            ),

                            // target
                            array(
                                'header'=>gT('target'),
                                'name'=>'target',
                                'type'=>'raw',
                                'value'=>'viewHelper::flatEllipsizeText($data->target,1,30,"...")',
                                'htmlOptions' => array('class' => 'col-md-3'),
                            ),

                            // strategy_summary
                            array(
                                'header'=>gT('strategy summary'),
                                'name'=>'strategy_summary',
                                'type'=>'raw',
                                'value'=>'viewHelper::flatEllipsizeText($data->strategy_summary,1,60,"...")',
                                'htmlOptions' => array('class' => 'col-md-3'),
                            ),

                            // strategy_detail
                            array(
                                'header'=>gT('strategy detail'),
                                'name'=>'strategy_detail',
                                'type'=>'raw',
                                'value'=>'viewHelper::flatEllipsizeText($data->strategy_detail,1,60,"...")',
                                'htmlOptions' => array('class' => 'col-md-3'),
                            ),
                            
                            // Action buttons (defined in model)
                            array(
                                'header'=>'',
                                'name'=>'actions',
                                'type'=>'raw',
                                'value'=>'$data->buttons',
                                'htmlOptions' => array('class' => 'col-md-2 text-right nowrap'),
                            ),

                        ),
                        'ajaxUpdate' => true,
                        'afterAjaxUpdate' => 'bindPageSizeChange'
                    ));
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- To update rows per page via ajax -->
<?php App()->getClientScript()->registerScript("ListQuestionGroups-pagination", "
        var bindPageSizeChange = function(){
            $('#pageSize').on('change', function(){
                $.fn.yiiGridView.update('question-group-grid',{ data:{ pageSize: $(this).val() }});
            });
            $(document).trigger('actions-updated');
        };
    ", LSYii_ClientScript::POS_BEGIN); ?>
    
<?php App()->getClientScript()->registerScript("ListQuestionGroups-run-pagination", "bindPageSizeChange(); ", LSYii_ClientScript::POS_POSTSCRIPT); ?>

