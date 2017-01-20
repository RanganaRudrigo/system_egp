
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