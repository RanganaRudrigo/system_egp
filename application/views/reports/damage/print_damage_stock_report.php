
<html>
<head>
    <title> R&G Pro System </title>
    <link rel="shortcut icon" href="http://localhost/rngpro.com/images/faicon.png">
    <link href="<?= base_url()?>css/bootstrap.min.css" rel="stylesheet">

    <style>
        @page {
            sheet-size: A4-L;
            margin: 2%;
            odd-header-name: html_myHeader1;
            even-header-name: html_myHeader1;
            odd-footer-name: html_myFooter1;
            even-footer-name: html_myFooter1;
        }
        .table > tbody > tr > td , .table > tbody > tr > th {
            /*border: none;*/
        }

        th, td {
            /*padding: 5px;*/
            padding: 10px;
            text-align: left;
            font-size: 12px;
        }
    </style>
</head>
<body>


<htmlpageheader name="html_myHeader1" style="display:none"></htmlpageheader>
<div style="background-color: transparent;padding: 5px;margin: 0 auto;">
    <div style="width: 100%;">


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




    </div>
</div>
<htmlpagefooter name="myFooter1" style="display:none">
    <table width="100%" style="vertical-align: bottom; font-family: serif; font-size: 8pt;
    color: #000000; font-weight: bold; font-style: italic;"><tr>
            <td width="33%"><span style="font-weight: bold; font-style: italic;"><?= date("Y-m-d") ?></span></td>
<!--            <td width="33%" align="center" style="font-weight: bold; font-style: italic;">{PAGENO}/{nbpg}</td>-->
            <td width="33%" style="text-align: right; "></td>
        </tr></table>
</htmlpagefooter>
</body>
</html>