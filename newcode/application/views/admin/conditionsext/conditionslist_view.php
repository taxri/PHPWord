<?php echo $conditionsoutput;?>

<p class="lead">
    <?php eT("show strategy"); ?>
    <strong><?php echo ' ' . $sCurrentQuestionText;?></strong>
    <?php eT('if:');?>
</p>

<?php echo CHtml::form(array("/admin/conditionsext/sa/index/subaction/deleteallconditions/surveyid/{$surveyid}/gid/{$gid}/strg_id/{$strg_id}/"), 'post', array('style'=>'margin-bottom:0;','id'=>'deleteallconditions','name'=>'deleteallconditions'));?>
    <input type='hidden' name='strg_id' value='<?php echo $strg_id;?>' />
    <input type='hidden' name='gid' value='<?php echo $gid;?>' />
    <input type='hidden' name='sid' value='<?php echo $surveyid;?>' />
    <input type='hidden' id='toplevelsubaction' name='subaction' value='deleteallconditions' />
</form>
