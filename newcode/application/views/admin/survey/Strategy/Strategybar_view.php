<?php
$aReplacementData=array();
?>

<div class='menubar surveybar' id="strategybarid">
    <div class='row container-fluid'>

        <?php if(isset($strategybar['buttons']['view'])):?>
        <div class="col-md-12">
            <!-- Edit button -->
            <?php if(Permission::model()->hasSurveyPermission($surveyid,'surveycontent','update')): ?>
                <a class="btn btn-default" href='<?php echo $this->createUrl("admin/strategies/sa/edit/surveyid/".$surveyid."/strg_id/".$strg_id); ?>' role="button">
                    <span class="icon-edit"></span>
                    <?php eT("Edit");?>
                </a>
            <?php endif; ?>

            <!-- Delete -->
            <?php if( $activated != "Y" && Permission::model()->hasSurveyPermission($surveyid,'surveycontent','delete' )):?>
                <button class="btn btn-default"
                   data-toggle="modal"
                   data-target="#confirmation-modal"
                   data-onclick='(function() { <?php echo convertGETtoPOST(Yii::app()->createUrl("admin/strategies/sa/delete/", ["surveyid" => $surveyid, "strg_id" => $strg_id])); ?> })'
                   data-message="<?php eT("Deleting this strategy will also delete conditions it includes. Are you sure you want to continue?","js"); ?>"
                   >
                    <span class="fa fa-trash text-danger"></span>
                    <?php eT("Delete"); ?>
                </button>
                
            <?php elseif (Permission::model()->hasSurveyPermission($surveyid,'surveycontent','delete')): ?>
                <button class="btn btn-default btntooltip" disabled data-toggle="tooltip" data-placement="bottom" title="<?php eT("You can't delete a strategy if the survey is active."); ?>">
                    <span class="fa fa-trash text-danger"></span>
                    <?php eT("Delete"); ?>
                </button>
                <?php // NB: Don't show delete button if user has no delete permission. ?>
            <?php endif; ?>

            <!-- conditions -->
            <?php if(Permission::model()->hasSurveyPermission($surveyid,'surveycontent','update')):?>
                <a class="btn btn-default pjax" href="<?php echo $this->createUrl("admin/conditionsext/sa/index/subaction/editconditionsform/surveyid/$surveyid/gid/$gid/strg_id/$strg_id"); ?>" role="button">
                    <span class="icon-conditions"></span>
                    <?php eT("Set conditions "); ?>
                </a>
            <?php endif;?>

            <!-- Close -->
            <?php if(isset($strategybar['closebutton']['url'])):?>
                <a class="btn btn-danger pull-right margin-left" href="<?php echo $strategybar['closebutton']['url']; ?>" role="button">
                    <span class="fa fa-close"></span>
                    <?php eT("Close");?>
                </a>
            <?php endif;?>            
        </div>

    <?php elseif(isset($strategybar['buttons']['conditions'])):?>
        <div class="col-sm-12 form form-inline">
            <a class="btn btn-default pjax <?php if(isset($strategybar['buttons']['condition']['conditions'])){echo 'active';}?>" href="<?php echo $this->createUrl("/admin/conditionsext/sa/index/subaction/conditions/surveyid/$surveyid/gid/$gid/strg_id/$strg_id"); ?>" role="button">
                <span class="fa fa-info-sign"></span>
                <?php eT("Show conditions for this question");?>
            </a>

            <a class="btn btn-default pjax <?php if(isset($strategybar['buttons']['condition']['edit']) && $strategybar['buttons']['condition']['edit']){ echo 'active'; }?>" href="<?php echo $this->createUrl("admin/conditionsext/sa/index/subaction/editconditionsform/surveyid/$surveyid/gid/$gid/strg_id/$strg_id"); ?>" role="button">
                <span class="icon-conditions_add"></span>
                <?php eT("Add and edit conditions");?>
            </a>


            <?php if(!isset($organizebar)): // TODO: Factor out organizer bar in own view? ?>
                <?php if(isset($strategybar['savebutton']['form'])):?>
                    <a class="btn btn-success" href="#" role="button">
                        <span class="fa fa-floppy-o"></span>
                        <?php eT("Save");?>
                    </a>
                <?php endif;?>
                
                <a class="btn btn-default" href="<?php echo $this->createUrl("admin/survey/sa/liststrategies/surveyid/{$surveyid}"); ?>" role="button">
                    <span class="fa fa-saved"></span>
                    <?php eT("Save and close");?>
                </a>

                <!-- Close -->
                <?php if(isset($strategybar['closebutton']['url'])):?>
                    <a class="btn btn-danger pull-right margin-left" href="<?php echo $strategybar['closebutton']['url']; ?>" role="button">
                        <span class="fa fa-close"></span>
                        <?php eT("Close");?>
                    </a>
                <?php endif;?>

                <!-- Condition designer navigator -->
                <?php if(isset($strategybar['buttons']['conditions'])):?>
                    <?php echo $questionNavOptions; ?> <!-- HTML is in views/admin/conditionsext/includes/navigator.php -->
                <?php endif;?>

                <?php if(isset($strategybar['returnbutton']['url'])):?>
                    <a class="btn btn-default" href="<?php echo $strategybar['returnbutton']['url']; ?>" role="button">
                        <span class="fa fa-step-backward"></span>
                        <?php echo $strategybar['returnbutton']['text'];?>
                    </a>
                <?php endif;?>
            <?php endif;?>
        </div>
    <?php else: ?>        
        <!-- Close -->
        <?php if(isset($strategybar['closebutton']['url'])):?>
            <a class="btn btn-danger pull-right margin-left" href="<?php echo $strategybar['closebutton']['url']; ?>" role="button">
                <span class="fa fa-close"></span>
                <?php eT("Close");?>
            </a>
        <?php endif;?>
    <?php endif; ?>

    </div>
</div>
