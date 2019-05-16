<?php
/**
 * Add a Strategy to survey
 * @var AdminController $this
 */

// DO NOT REMOVE This is for automated testing to validate we see that page
echo viewHelper::getViewTestTag('addStrategy');

?>

<!-- addStrategy -->
<script type='text/javascript'>
    var sEnterTitle = '<?php eT('Error: You have to enter a Strategy name for each language.','js'); ?>';
</script>

<?php echo PrepareEditorScript(false, $this); $active = 1;?>
<div id='edit-survey-text-element' class='side-body <?php echo getSideBodyClass(false); ?>'>
    <div class="pagetitle h3"><?php eT("Add strategy"); ?></div>
    <div class="row">

        <!-- Tabs -->
        <ul class="nav nav-tabs" >
            <?php foreach ($grplangs as $grouplang): ?>
                <li role="presentation" class="<?php if($active){ echo 'active'; $active=0; }?>">
                    <a role="tab" data-toggle="tab" href="#<?php echo $grouplang; ?>">
                            <?php echo getLanguageNameFromCode($grouplang,false);
                            if ($grouplang==$baselang) { ?> (<?php eT("Base language"); ?>) <?php } ?>
                    </a>
                </li>
            <?php endforeach; ?>

        </ul>

        <!-- form -->
        <?php echo CHtml::form(array("admin/strategies/sa/insert/surveyid/{$surveyid}"), 'post', array('id'=>'newstrategy', 'name'=>'newstrategy', 'class'=>'form30 ')); ?>

            <!-- tab content -->
            <div class="tab-content">

                <?php $active=1; foreach ($grplangs as $grouplang): ?>

                    <!-- Lang Content -->
                    <div id="<?php echo $grouplang; ?>" class="tab-pane fade in <?php if($active){ echo 'active'; $active=0; }?> ">
                        <div>

                            <!-- strg_name -->
                            <div class="form-group">
                                <label class="control-label " for='strg_name_<?php echo $grouplang; ?>'><?php eT("Title:"); ?></label>
                                <div class="">
                                    <input class="form-control strg_name" type='text' size='80' maxlength='100' name='strg_name_<?php echo $grouplang; ?>' id='strg_name_<?php echo $grouplang; ?>' /></li>
                                </div>
                            </div>

,strategy_summary,strategy_detail,other,language,relevance

                            <!-- target -->
                            <div class="form-group">
                                <label class="control-label " for='target_<?php echo $grouplang; ?>'><?php eT("target:"); ?></label>
                                <div class=" input-group">
                                    <?php echo CHtml::textArea("target_{$grouplang}","",array('class'=>'form-control','cols'=>'60','rows'=>'8','id'=>"target_{$grouplang}")); ?>
                                    <?php echo getEditor("target","target_".$grouplang, "[".gT("Description:", "js")."](".$grouplang.")",$surveyid,'','',$action); ?>
                                </div>
                            </div>

                            <!-- strategy_summary -->
                            <div class="form-group">
                                <label class="control-label " for='strategy_summary_<?php echo $grouplang; ?>'><?php eT("strategy_summary:"); ?></label>
                                <div class=" input-group">
                                    <?php echo CHtml::textArea("strategy_summary_{$grouplang}","",array('class'=>'form-control','cols'=>'60','rows'=>'8','id'=>"strategy_summary_{$grouplang}")); ?>
                                    <?php echo getEditor("strategy_summary","strategy_summary_".$grouplang, "[".gT("Description:", "js")."](".$grouplang.")",$surveyid,'','',$action); ?>
                                </div>
                            </div>


                            <!-- strategy_detail -->
                            <div class="form-group">
                                <label class="control-label " for='strategy_detail_<?php echo $grouplang; ?>'><?php eT("strategy_detail:"); ?></label>
                                <div class=" input-group">
                                    <?php echo CHtml::textArea("strategy_detail_{$grouplang}","",array('class'=>'form-control','cols'=>'60','rows'=>'8','id'=>"strategy_detail_{$grouplang}")); ?>
                                    <?php echo getEditor("strategy_detail","strategy_detail_".$grouplang, "[".gT("Description:", "js")."](".$grouplang.")",$surveyid,'','',$action); ?>
                                </div>
                            </div>


                            <!-- other -->
                            <div class="form-group">
                                <label class="control-label " for='other_<?php echo $grouplang; ?>'><?php eT("other:"); ?></label>
                                <div class=" input-group">
                                    <?php echo CHtml::textArea("other_{$grouplang}","",array('class'=>'form-control','cols'=>'60','rows'=>'8','id'=>"other_{$grouplang}")); ?>
                                    <?php echo getEditor("other","other_".$grouplang, "[".gT("Description:", "js")."](".$grouplang.")",$surveyid,'','',$action); ?>
                                </div>
                            </div>


                            <div class="form-group" id="relevanceContainer">
                                <label class=" control-label" for='relevance'><?php eT("Relevance equation:"); ?></label>
                                <div class="">
                                    <div class="input-group">
                                        <div class="input-group-addon">{</div>
                                        <textarea class="form-control" rows='1' id='relevance' name='relevance' <?php if ($eqrow['conditions_number']) {?> readonly='readonly'<?php } ?> ><?php echo $eqrow['relevance']; ?></textarea>
                                        <div class="input-group-addon">}</div>
                                    </div>
                                    <?php if ($eqrow['conditions_number']) :?>
                                        <div class='help-block text-warning'> <?php eT("Note: You can't edit the relevance equation because there are currently conditions set for this question."); ?></div>
                                    <?php endif; ?>
                                </div>
                            </div>

                            <?php if ($adding || $copying ): ?>
                                <!-- Rendering position widget -->
                                <?php $this->widget('ext.admin.survey.question.PositionWidget.PositionWidget', array(
                                            'display'           => 'ajax_form_group',
                                            'oQuestionGroup'    => $oQuestionGroup,
                                    ));
                                ?>
                            <?php endif; ?>

                            <?php if ($grouplang==$baselang){?>
                            <!-- Base Lang -->
                                <!-- Relevance equation -->
                                <div class="form-group">
                                    <label class="control-label " for='relevance'><?php eT("Relevance equation:"); ?></label>
                                    <div class="">
                                        <textarea cols='1' class="form-control" rows='1' id='relevance' name='relevance'></textarea>
                                    </div>
                                </div>
                                <?php } ?>
                        </div>

                        <!-- Save question group -->
                        <p>
                            <input type='submit' class="hidden" value='<?php eT("Save strategy"); ?>' />
                        </p>
                    </div>
                <?php endforeach; ?>
            </div>
       </form>
    </div>
</div>
