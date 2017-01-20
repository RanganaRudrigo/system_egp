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
            <h1 class="page-header"><i class="fa fa-shopping-cart  "></i> Invoice - Detailed View




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
                       Customer Name :- <?= $row->name ?>
                    </div>
                    <div class="panel-body  ">
                        <div class="col-lg-12">


                                <table style="width: 100%;margin-bottom: 50px;border-bottom: 2px solid #000000" id="n123456"
                                       class=" table-responsive result-set  ">
                                    <tbody>
                                    <tr>
                                        <th style="width:15%">Invoice Code</th>
                                        <th style="width: 5px"> :</th>
                                        <td><strong> <?= $row->sysid ?> </strong></td>
                                        <td style="width:40%" rowspan="3">
                                            <table class="table table-bordered">
                                                <tbody>
                                                <tr>
                                                    <td>Customer Name :</td>
                                                    <td class="text-right"><?= $row->name ?></td>
                                                </tr>
                                                <tr>
                                                    <td>Invoice Date :</td>
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
                                                    <th> Item Name</th>
                                                    <th> Has Serial</th>
                                                    <th> Qty</th>
                                                </tr>

                                                <?php foreach ($row->details as $k => $item) {
                                                    ?>
                                                    <tr>
                                                        <td> <?= $k + 1 ?> </td>
                                                        <td> <?= $item->item_name ?> </td>
                                                        <td> <?= $item->has_serial ?> </td>
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

                        </div>
                    </div>
                    </div>
                <?php } ?>

        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->

</div>