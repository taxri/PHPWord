<?php
/**
 * @var AdminController $this
 * @var Survey $oSurvey
 * strg_id,strg_name,sid,gid,target,strategy_summary,strategy_detail,other,language,relevance
 * http://localhost/limesurvey2/index.php/admin/strategies/sa/view/surveyid/811742/strgid/1
 */
?>
<div class='side-body <?php echo getSideBodyClass(true); ?>'>
    <div class="pagetitle h3"><?php eT('Strategy summary'); ?><small><em><?php echo  $grow['strg_name'];?></em> (ID: <?php echo (int) $grow['strg_id'];?>)</small></div>
    <div class="row">
        <div class="col-lg-12 content-right">

            <table id='strategydetails' <?php echo $qshowstyle; ?>>
            <tr ><td ><strong>
                        <?php eT("Strategy Name"); ?>:</strong></td>
                <td>
                    <?php echo $grow['strg_name']; ?> (<?php echo $grow['gid']; ?>)</td>
            </tr>
            <tr>
                <td><strong>
                    <?php eT("Target:"); ?></strong>
                </td>
                <td>
                    <?php if (trim($grow['target'])!='') {
                            templatereplace($grow['target']);
                            echo LimeExpressionManager::GetLastPrettyPrintExpression();
                    } ?>
                </td>
            </tr>
            <tr>
                <td><strong>
                    <?php eT("strategy summary:"); ?></strong>
                </td>
                <td>
                    <?php if (trim($grow['strategy_summary'])!='') {
                            templatereplace($grow['strategy_summary']);
                            echo LimeExpressionManager::GetLastPrettyPrintExpression();
                    } ?>
                </td>
            </tr>
            <tr>
                <td><strong>
                    <?php eT("strategy detail:"); ?></strong>
                </td>
                <td>
                    <?php if (trim($grow['strategy_detail'])!='') {
                            templatereplace($grow['strategy_detail']);
                            echo LimeExpressionManager::GetLastPrettyPrintExpression();
                    } ?>
                </td>
            </tr>
            <?php if (trim($grow['relevance'])!='') { ?>
                <tr>
                    <td><strong>
                        <?php eT("relevance:"); ?></strong>
                    </td>
                    <td>
                        <?php
                            templatereplace('{' . $grow['relevance'] . '}');
                            echo LimeExpressionManager::GetLastPrettyPrintExpression();
                        ?>
                    </td>
                </tr>
                <?php } ?>
            <?php
                // TMSW Condition->Relevance:  Use relevance equation or different EM query to show dependencies
                if (!is_null($condarray))
                { ?>
                <tr><td><strong>
                            <?php eT("Questions with conditions to this group"); ?>:</strong></td>
                    <td>
                        <?php foreach ($condarray[$gid] as $depgid => $deprow)
                            {
                                foreach ($deprow['conditions'] as $depqid => $depcid)
                                {

                                    $listcid=implode("-",$depcid);?>
                                <a href='<?php echo $this->createUrl("admin/conditions/sa/index/subaction/conditions/surveyid/$surveyid/gid/$depgid/qid/$depqid",array('markcid'=>implode("-",$depcid))); ?>'>[QID: <?php echo $depqid; ?>]</a>
                                <?php }
                        } ?>
                    </td></tr>
                <?php } ?>
            </table>
        </div>
    </div>
</div>

<?php
App()->getClientScript()->registerScript(
    'activatePanelClickable', 
    'LS.pageLoadActions.panelClickable()', 
    LSYii_ClientScript::POS_POSTSCRIPT 
)
?>
