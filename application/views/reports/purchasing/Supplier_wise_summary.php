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
            <h1 class="page-header"><i class="fa fa-users "></i> Purchase - Supplier Wise - Summary Report

                <!--                <form accept-charset="utf-8" method="post" target="_blank" action="http://manpowerdemo.info/report/client_report">-->
                <!--                    <input type="hidden" value="1" name="print">-->
                <button type="submit" class="btn btn-default pull-right "
                        onclick="window.open('<?= base_url() ?>Reports/Purchasing/Supplier_wise_summary/print_report', '_blank');">print <i
                        class="fa fa-file-pdf-o"></i></button>
                <!--                </form>-->

                <form accept-charset="utf-8" method="post" action="<?= base_url() ?>Reports/Purchasing/Supplier_wise_summary/view">

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
            <!--   <pre><?php /*print_r($suppler); */?></pre>-->
            <?php foreach ($suppler as $row) { ?>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Supplier Name :- <?= $row->name ?>
                    </div>
                    <div class="panel-body  ">
                        <div class="col-lg-12">
                            <table style="width: 100%;margin-bottom: 50px;border-bottom: 2px solid #000000" id="n123456"
                                   class=" table-responsive result-set  ">
                                <tbody>

                                <tr>
                                    <td colspan="4">

                                        <table class="table table-hover table-bordered ">
                                            <tbody>

                                            <tr>
                                                <th> #</th>
                                                <th> Purchase Code </th>
                                                <th> Purchase Date </th>
                                                <th> Number of Items </th>
                                                <th> Total Qty </th>
                                            </tr>
                            <?php foreach ($row->order as $k =>  $row) {
                                ?>
                                                <?php foreach ($row->ItemQty as $item) {
                                                    ?>
                                                    <tr>
                                                        <td> <?= $k + 1 ?> </td>
                                                        <td> <?= $row->pid ?> </td>
                                                        <td> <?= $row->date ?> </td>
                                                        <td> <?= $item->count ?> </td>
                                                        <td> <?= $item->qty ?> </td>
                                                    </tr>
                                                <?php
                                                } ?>

                            <?php } ?>
                                            </tbody>
                                        </table>

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