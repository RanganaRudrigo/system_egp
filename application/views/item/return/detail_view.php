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
            <h1 class="page-header"><i class="fa fa-reply    "></i> Return - Item - Detailed View


            </h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <div class="row">
        <div class="col-lg-12">
            <!--   <pre><?php /*print_r($suppler); */?></pre>-->
            <?php foreach ($list as $row) { ?>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Return Person Name :- <?= $row->re_per_name ?>
                    </div>
                    <div class="panel-body  ">
                        <div class="col-lg-12">


                            <table style="width: 100%;margin-bottom: 50px;border-bottom: 2px solid #000000" id="n123456"
                                   class=" table-responsive result-set  ">
                                <tbody>
                                <tr>
                                    <th style="width:15%">System Code</th>
                                    <th style="width: 5px"> :</th>
                                    <td><strong> <?= $row->sysid ?> </strong></td>
                                    <td style="width:40%" rowspan="3">
                                        <table class="table table-bordered">
                                            <tbody>
                                            <tr>
                                                <td>Return Code :</td>
                                                <td class="text-right"><?= $row->re_code ?></td>
                                            </tr>
                                            <tr>
                                                <td>Return Person Name :</td>
                                                <td class="text-right"><?= $row->re_per_name ?></td>
                                            </tr>
                                            <tr>
                                                <td>Return Date :</td>
                                                <td class="text-right"><?= $row->date ?> </td>
                                            </tr>
                                            <tr>
                                                <td>Invoice Code :</td>
                                                <td class="text-right"><?= $row->in_id ?> </td>
                                            </tr>
                                            </tbody>

                                        </table>
                                    </td>
                                </tr>
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
                                                    <th> Return Qty</th>
                                                    <th> Damage Qty</th>

                                                </tr>

                                                <?php foreach ($out_s as $k => $item) {
                                                    if($item->rtn_qty != '0' && $item->dmg_qty != '0'){
                                                    ?>
                                                    <tr>
                                                        <td> <?= $k + 1 ?> </td>
                                                        <td> <?= $item->item_name ?> </td>
                                                        <td> <?= $item->rtn_qty ?> </td>
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
            <?php } ?>

        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->

</div>