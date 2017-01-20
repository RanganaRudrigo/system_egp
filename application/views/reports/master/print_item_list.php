
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
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Product Item List

                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body  ">

                            <div class="table-responsive">
                                <div role="grid" class="dataTables_wrapper form-inline" id="dataTable_wrapper">

                                    <table id="dataTables"
                                           class="table table-striped table-bordered table-hover dataTable no-footer"
                                           aria-describedby="dataTables-example_info">
                                        <thead>
                                        <tr role="row">
                                            <th>System ID</th>
                                            <th>Product Type Name</th>
                                            <th>Product Brand Name</th>
                                            <th>Product Model Name</th>
                                            <th>Product Item Name</th>
                                            <th>Has Serial</th>

                                        </tr>
                                        </thead>
                                        <tbody>

                                        <?php
                                        foreach ($result as $row) {
                                            $url=base_url().'Master/Product_item/update/'
                                            ?>
                                            <tr class="gradeU">
                                                <td><?= $row->sysid ?></td>
                                                <td><?= $row->typeName ?></td>
                                                <td><?= $row->brandName ?></td>
                                                <td><?= $row->modelName ?></td>
                                                <td><?= $row->item_name ?></td>
                                                <td><?= ($row->has_sireal == '0') ? 'No' : 'Yes'; ?></td>

                                            </tr>
                                        <?php
                                        }
                                        ?>
                                        </tbody>
                                    </table>

                                </div>
                            </div>
                            <!-- /.table-responsive -->

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