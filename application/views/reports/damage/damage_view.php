<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 8/13/15
 * Time: 11:14 AM
 */
?>
<div class="container-fluid">

    <div class="row">
        <div class="col-lg-12">
            <!--            <h1 class="page-header"><i class="fa fa-smile-o"></i> Customer List </h1>-->
            <h1 class="page-header"><i class="fa fa-reply    "></i> Damage Stock Report


                <button type="submit" class="btn btn-default pull-right " onclick="window.open('<?= base_url() ?>Reports/Stock/Damage_stock/print_report', '_blank');">print <i class="fa fa-file-pdf-o"></i> </button>


                <form accept-charset="utf-8" method="post" action="<?= base_url() ?>Reports/Stock/Damage_stock/view">

                    <input type="hidden" value="1" name="download">
                    <button type="submit" class="btn btn-default pull-right ">Download excel <i class="fa fa-file-excel-o"></i> </button>
                </form>

            </h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <div class="row">
        <div class="col-lg-12">
            <!--   <pre><?php /*print_r($suppler); */?></pre>-->

                <div class="panel panel-default">
                    <div class="panel-heading">
                       Damage Stock Item
                    </div>
                    <div class="panel-body  ">
                        <div class="col-lg-12">


                            <table style="width: 100%;margin-bottom: 50px;border-bottom: 2px solid #000000" id="n123456"
                                   class=" table-responsive result-set  ">
                                <tbody>

                                <tr>

                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>

                                <tr>
                                    <td colspan="4">

                                        <?php
                                        if (count($out_s) > 0) {
                                            ?>
                                    <h4>Has No Serial Items</h4>
                                            <table class="table table-hover table-bordered ">
                                                <tbody>

                                                <tr>
                                                    <th> #</th>
                                                    <th> Item Name</th>
<!--                                                    <th> Return Qty</th>-->
                                                    <th> Damage Qty</th>

                                                </tr>

                                                <?php foreach ($out_s as $k => $item) {
                                                    if($item->rtn_qty != '0' && $item->dmg_qty != '0'){
                                                    ?>
                                                    <tr>
                                                        <td> <?= $k + 1 ?> </td>
                                                        <td> <?= $item->item_name ?> </td>
                                                        <!--<td> <?/*= $item->rtn_qty */?> </td>-->
                                                        <td> <?= $item->dmg_qty ?> </td>

                                                    </tr>
                                                <?php
                                                }} ?>
                                                </tbody>
                                            </table>
                                        <?php
                                        }
                                        ?>


                                    </td>
                                </tr>

                                <tr>
                                    <td colspan="4">
                                        <?php
                                        if (count($s_return) > 0) {
                                            ?>
                                            <h4>Return Serial Items</h4>
                                            <table class="table table-hover table-bordered ">
                                                <tbody>

                                                <tr>
                                                    <th> #</th>
                                                    <th> Item Name</th>
                                                    <th> Return Qty</th>

                                                </tr>

                                                <?php foreach ($s_return as $k => $item) {
                                                    ?>
                                                    <tr>
                                                        <td> <?= $k + 1 ?> </td>
                                                        <td> <?= $item->item_name ?> </td>
                                                        <td> <?= $item->rTot ?> </td>

                                                    </tr>
                                                <?php
                                                } ?>
                                                </tbody>
                                            </table>
                                        <?php
                                        }
                                        ?>


                                    </td>
                                </tr>

                                <tr>
                                    <td colspan="4">
                                        <?php
                                        if (count($s_damage) > 0) {
                                            ?>
                                            <h4>Damage Serial Items</h4>
                                            <table class="table table-hover table-bordered ">
                                                <tbody>

                                                <tr>
                                                    <th> #</th>
                                                    <th> Item Name</th>
                                                    <th> Damage Qty</th>

                                                </tr>

                                                <?php foreach ($s_damage as $k => $item) {
                                                    ?>
                                                    <tr>
                                                        <td> <?= $k + 1 ?> </td>
                                                        <td> <?= $item->item_name ?> </td>
                                                        <td> <?= $item->rTot ?> </td>

                                                    </tr>
                                                <?php
                                                } ?>
                                                </tbody>
                                            </table>
                                        <?php
                                        }
                                        ?>


                                    </td>
                                </tr>

                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>


        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->

</div>