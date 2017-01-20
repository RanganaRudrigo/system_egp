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
            <h1 class="page-header"><i class="fa fa-th-list "></i> Purchase - Detailed Report

                <!--                <form accept-charset="utf-8" method="post" target="_blank" action="http://manpowerdemo.info/report/client_report">-->
                <!--                    <input type="hidden" value="1" name="print">-->
                <button type="submit" class="btn btn-default pull-right "
                        onclick="window.open('<?= base_url() ?>Reports/Purchasing/Detail_report/print_report', '_blank');">print <i
                        class="fa fa-file-pdf-o"></i></button>
                <!--                </form>-->

                <form accept-charset="utf-8" method="post" action="<?= base_url() ?>Reports/Purchasing/Detail_report/view">

                                        <input type="hidden" value="1" name="download">
                    <button type="submit" class="btn btn-default pull-right ">Download excel <i
                            class="fa fa-file-excel-o"></i></button>
                </form>
            </h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">

                <div class="panel-heading">
                    Purchase - Detailed Report
                </div>


                <!-- /.panel-heading -->
                <div class="panel-body  ">
                    <div class="col-lg-12" style="height: 75%;overflow: auto">

                        <?php
                        foreach ($orders as $row) {
                            ?>
                            <table style="width: 100%;margin-bottom: 50px;border-bottom: 2px solid #000000" id="n123456"
                                   class=" table-responsive result-set  ">
                                <tbody>
                                <tr>
                                    <th style="width:15%">Purchase Code</th>
                                    <th style="width: 5px"> :</th>
                                    <td><strong> <?= $row->sysid ?> </strong></td>
                                    <td style="width:40%" rowspan="3">
                                        <table class="table table-bordered">
                                            <tbody>
                                            <tr>
                                                <td>Supplier Name :</td>
                                                <td class="text-right"><?= $row->name ?></td>
                                            </tr>
                                            <tr>
                                                <td>Purchase Date :</td>
                                                <td class="text-right"><?= $row->date ?> </td>
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

                                        <table class="table table-hover table-bordered ">
                                            <tbody>

                                            <tr>
                                                <th> #</th>
                                                <th> Item Code</th>
                                                <th> Item Name</th>
                                                <th> Qty</th>
                                            </tr>

                                            <?php foreach ($row->item as $k => $item) {
                                                ?>
                                                <tr>
                                                    <td> <?= $k + 1 ?> </td>
                                                    <td> <?= $item->sysid ?> </td>
                                                    <td> <?= $item->item_name ?> </td>
                                                    <td> <?= $item->qty ?> </td>
                                                </tr>
                                            <?php
                                            } ?>
                                            </tbody>
                                        </table>

                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        <?php } ?>


                        <!-- /.panel -->
                    </div>

                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->

</div>