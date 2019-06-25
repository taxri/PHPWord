<?php
    echo PrepareEditorScript(false, $this);
    $count = 0;
?>
<div id='edit-group' class='side-body <?php echo getSideBodyClass(false); ?>'>
    <div class="row">
        <div class="col-sm-12 content-right">
            <div class="pagetitle h3"><?php eT("Edit Stategy"); ?></div>
            <ul class="nav nav-tabs" id="edit-group-language-selection">
                <?php foreach ($tabtitles as $i=>$eachtitle):?>
                    <li role="presentation" class="<?php if($count==0) {echo "active"; $count++;}?>">
                        <a role="tab" data-toggle="tab" href="#editgrp_<?php echo $i;?>">
                            <?php echo $eachtitle;?>
                        </a>
                    </li>
                <?php endforeach;?>
            </ul>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <?php echo CHtml::form(array("admin/strategies/sa/update/strg_id/{$strg_id}"), 'post', array('id'=>'frmeditgroup', 'name'=>'frmeditgroup', 'class'=>'form30 ')); ?>

                    <div class="tab-content">

                        <?php foreach ($tabtitles as $i=>$eachtitle):?>
                            <div id="editgrp_<?php echo $i;?>" class="tab-pane fade in <?php if($count==1) {echo "active"; $count++;}?> center-box">


                                <div class="form-group">
                                    <label class="control-label " id="question-group-strg_name-<?=$aStrgData[$i]['language']?>"><?php eT("strategy name:"); ?></label>
                                    <div class="">
                                        <?php echo CHtml::textField("strg_name_{$aStrgData[$i]['language']}",$aStrgData[$i]['strg_name'],array('class'=>'form-control','size'=>"80",'maxlength'=>'100','id'=>"strg_name_{$aStrgData[$i]['language']}")); ?>
                                    </div>
                                </div>

                                <!-- group -->
                                <div  class="form-group">
                                    <label class=" control-label" for='gid'><?php eT("Question group:"); ?></label>
                                    <div class="">
                                        <select name='gid' id='gid' class="form-control" <?php if ($actived =="Y"){echo " disabled ";} ?> >
                                            <?php echo getGroupList3($gid,$surveyid); ?>
                                        </select>
                                        <?php if ($actived == "Y"): ?>
                                            <input type='hidden' name='gid' value='<?php echo $gid ;?>' />
                                        <?php endif; ?>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label class=" control-label" for="target_<?php echo $aStrgData[$i]['language']; ?>"><?php eT("target:"); ?></label>
                                    <div class="">
                                        <div class="htmleditor input-group">
                                            <?php echo CHtml::textArea("target_{$aStrgData[$i]['language']}",$aStrgData[$i]['target'],array('class'=>'form-control','cols'=>'60','rows'=>'8','id'=>"target_{$aStrgData[$i]['language']}")); ?>
                                            <?php echo getEditor("target","target_".$aStrgData[$i]['language'], "[".gT("target:", "js")."](".$aStrgData[$i]['language'].")",$surveyid,$strg_id,'',$action); ?>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class=" control-label" for="strategy_summary_<?php echo $aStrgData[$i]['language']; ?>"><?php eT("strategy summary:"); ?></label>
                                    <div class="">
                                        <div class="htmleditor input-group">
                                            <?php echo CHtml::textArea("strategy_summary_{$aStrgData[$i]['language']}",$aStrgData[$i]['strategy_summary'],array('class'=>'form-control','cols'=>'60','rows'=>'8','id'=>"strategy_summary_{$aStrgData[$i]['language']}")); ?>
                                            <?php echo getEditor("group-desc","strategy_summary_".$aStrgData[$i]['language'], "[".gT("strategy summary:", "js")."](".$aStrgData[$i]['language'].")",$surveyid, $strg_id,'',$action); ?>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class=" control-label" for="strategy_detail_<?php echo $aStrgData[$i]['language']; ?>"><?php eT("strategy detail:"); ?></label>
                                    <div class="">
                                        <div class="htmleditor input-group">
                                            <?php echo CHtml::textArea("strategy_detail_{$aStrgData[$i]['language']}",$aStrgData[$i]['strategy_detail'],array('class'=>'form-control','cols'=>'60','rows'=>'8','id'=>"strategy_detail_{$aStrgData[$i]['language']}")); ?>
                                            <?php echo getEditor("group-desc","strategy_detail_".$aStrgData[$i]['language'], "[".gT("strategy detail:", "js")."](".$aStrgData[$i]['language'].")",$surveyid, $strg_id,'',$action); ?>
                                        </div>
                                    </div>
                                </div>                                
                            </div>

                        <?php endforeach; ?>
                    </div>


                    <div class="form-group" >
                        <label class="control-label " id="relevance"><?php eT("Relevance equation:"); ?></label>
                        <div class="">
                            <?php echo CHtml::textArea("relevance",$aStrgData[$aBaseLanguage]['relevance'],array('class'=>'form-control','cols'=>'20','rows'=>'1','id'=>"relevance")); ?>
                        </div>
                    </div>

                    <input type="submit" class="btn btn-primary hidden" value="Save" role="button" aria-disabled="false">
                </form>
            </div>
        </div>
    </div>
</div>
