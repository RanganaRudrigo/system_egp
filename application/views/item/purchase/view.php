<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 7/20/15
 * Time: 2:05 PM
 */
?>

<div class="container-fluid">

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header"><i class="fa fa-truck "></i> Purchase - Item
            </h1>

        </div>
        <!-- /.col-lg-12 -->
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Purchase - Item List
                    <div class="btn-group pull-right">
                        <a type="button" class="btn btn-primary btn-outline btn-xs "
                           href="<?= base_url() ?>Transaction/Purchase_item/add"> <i class="fa fa-share-square-o"></i> Add New Purchase - Item</a>
                    </div>
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
                                    <th>Product Name</th>
                                    <th>Qty.</th>
                                    <th>Serial</th>
<!--                                    <th>Action</th>-->
                                </tr>
                                </thead>
                                <tbody>
                                <?php foreach ($purchase_list as $row) {
                                    ?>
                                    <tr class="gradeU">
                                        <td><?= $row->p_order_id ?></td>
                                        <td>
                                            <?= $row->item_name ?>
                                            <table class="table table-bordered">
                                                <tbody>
                                                <?php if($row->has_serial == 'Yes'){
                                                    foreach ($row->serial as $k => $item) {
                                                        ?>
                                                        <tr>
                                                            <td><strong><?= $k + 1 ?></strong></td>
                                                            <td><?= $item->key ?></td>
                                                        </tr>
                                                    <?php } }?>
                                                </tbody>

                                            </table>
                                        </td>
                                        <td><?= $row->qty ?></td>
                                        <td><?= $row->has_serial ?></td>
<!--                                        <td> -->
<!--                                        </td>-->
<!--                                        <td class="center">-->
                                            <!--<a style="cursor: pointer;text-decoration: none;" onclick="location.href='<?/*= $url.$row->id */?>'"><i class="fa  fa-edit"></i> Edit</a>-->
<!--                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-->
                                            <!--<a style="cursor: pointer;text-decoration: none;" onclick="deleteRecordeById('Transaction/Purchase_item/view','Transaction/Purchase_item/delete/',<?/*= $row->id */?>,'user')"><i class="fa fa-times"></i> Delete</a>-->
<!--                                        </td>-->
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