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
            <h1 class="page-header"><i class="fa fa-users"></i> Supplier List

                <!--                <form accept-charset="utf-8" method="post" target="_blank" action="http://manpowerdemo.info/report/client_report">-->
                <!--                    <input type="hidden" value="1" name="print">-->
                <button type="submit" class="btn btn-default pull-right " onclick="window.open('<?= base_url() ?>Reports/Master/Supplier_list/print_report', '_blank');">print <i class="fa fa-file-pdf-o"></i> </button>
                <!--                </form>-->

                <form accept-charset="utf-8" method="post" action="<?= base_url() ?>Reports/Master/Supplier_list/view">

                                        <input type="hidden" value="1" name="download">
                    <button type="submit" class="btn btn-default pull-right ">Download excel <i class="fa fa-file-excel-o"></i> </button>
                </form>
            </h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">

                <div class="panel-heading">
                    Supplier List
                </div>


                <!-- /.panel-heading -->
                <div class="panel-body  ">
                    <?php
                    if ($this->session->flashdata('msg')) {
                        ?>
                        <div class="alert alert-success alert-dismissable">
                            <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
                            <?= $this->session->flashdata('msg') ?>
                        </div>
                    <?php } ?>
                    <div class="table-responsive">
                        <div role="grid" class="dataTables_wrapper form-inline" id="dataTable_wrapper">

                            <table id="dataTables"
                                   class="table table-striped table-bordered table-hover dataTable no-footer"
                                   aria-describedby="dataTables-example_info">
                                <thead>
                                <tr role="row">
                                    <th>System ID</th>
                                    <th>Customer Code</th>
                                    <th>Name</th>
                                    <th>Company</th>
                                    <th>Address</th>
                                    <th>Tele No.</th>
                                    <th>Mob No.</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php foreach ($user_list as $row) {
                                    $url=base_url().'Master/Users/update/'
                                    ?>
                                    <tr class="gradeU">
                                        <td><?= $row->sysid ?></td>
                                        <td><?= $row->cus_code ?></td>
                                        <td><?= $row->name ?></td>
                                        <td><?= $row->company?></td>
                                        <td class="center"><?= $row->address ?></td>
                                        <td class="center"><?= $row->tele ?></td>
                                        <td class="center"><?= $row->mobile ?></td>

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
    <!-- /.row -->

</div>