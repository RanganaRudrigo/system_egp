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
            <h1 class="page-header"><i class="fa fa-smile-o"></i> Balance Stock Report

<!--                <form accept-charset="utf-8" method="post" target="_blank" action="http://manpowerdemo.info/report/client_report">-->
<!--                    <input type="hidden" value="1" name="print">-->
                    <button type="submit" class="btn btn-default pull-right " onclick="window.open('<?= base_url() ?>Reports/Stock/Stock_balance/print_report', '_blank');">print <i class="fa fa-file-pdf-o"></i> </button>
<!--                </form>-->

                <form accept-charset="utf-8" method="post" action="<?= base_url() ?>Reports/Stock/Stock_balance/view">

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
                    Balance Stock Report
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
                                    <th>#</th>
                                    <th>Item Code</th>
                                    <th>Type</th>
                                    <th>Brand</th>
                                    <th>Model</th>
                                    <th>Item Name</th>
                                    <th>Got Serial No.</th>
                                    <th>Good Stock</th>
                                    <th>Damage Stock</th>
                                    <th>Total Stock in Store</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php foreach ($list as $k =>  $row) {
                                    $url=base_url().'Master/Users/update/'
                                    ?>
                                    <tr class="gradeU">
                                        <td><?= $k+1 ?></td>
                                        <td><?= $row->sysid ?></td>
                                        <td><?= $row->pro_type ?></td>
                                        <td><?= $row->pro_brand?></td>
                                        <td class="center"><?= $row->pro_model ?></td>
                                        <td class="center"><?= $row->item_name ?></td>
                                        <td class="center"><?=  ($row->has_sireal == '0') ? 'No' : 'Yes'; ?></td>
                                        <td class="center"><?= $row->abl_qty ?></td>
                                        <td class="center">
                                            <?php
                                            if($row->has_sireal == 'Yes'){
                                                echo $row->s_damage->count;
                                            }else{
                                                echo ($row->damage->qty == null) ? '0' : $row->damage->qty;

                                            }
                                            ?>
                                        </td>
                                        <td class="center">
                                            <?php
                                            if($row->has_sireal == 'Yes'){
                                                echo $row->abl_qty+$row->s_damage->count;
                                            }else{
                                                echo $row->abl_qty+$row->damage->qty;
                                            }
                                            ?>
                                        </td>

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