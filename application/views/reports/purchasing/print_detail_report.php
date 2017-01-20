
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
            .table {
                margin-bottom: 20px;
                max-width: 100%;
                width: 100%;
            }
            *::before, *::after {
                box-sizing: border-box;
            }
            *::before, *::after {
                box-sizing: border-box;
            }
            .table-bordered {
                border: 1px solid #ddd;
            }
            .col-lg-12 {
                width: 100%;
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
                    <div class="panel panel-default">

                        <div class="panel-heading">
                            Purchase - Detailed Report
                        </div>


                        <!-- /.panel-heading -->
                        <div class="panel-body  ">
                            <div class="col-lg-12">

                                <?php
                                foreach ($result as $row) {
                                    ?>
                                    <table style="width: 100%;margin-bottom: 50px;border-bottom: 2px solid #000000" id="n123456"
                                           class=" table-responsive result-set  ">
                                        <tbody>
                                        <tr>
                                            <th style="width:15%">Purchase Code</th>
                                            <th style="width: 5px"> :</th>
                                            <td><strong> <?= $row->sysid ?> </strong></td>
                                            <td style="width:40%" rowspan="1">
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




        </div>
    </div>
    <htmlpagefooter name="myFooter1" style="display:none">
        <table width="100%" style="vertical-align: bottom; font-family: serif; font-size: 8pt;
    color: #000000; font-weight: bold; font-style: italic;"><tr>
                <td width="33%"><span style="font-weight: bold; font-style: italic;">{DATE j-m-Y}</span></td>
                <td width="33%" align="center" style="font-weight: bold; font-style: italic;">{PAGENO}/{nbpg}</td>
                <td width="33%" style="text-align: right; "></td>
            </tr></table>
    </htmlpagefooter>
    </body>
    </html>