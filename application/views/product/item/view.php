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
            <h1 class="page-header"><i class="fa fa-plus-square"></i> Product Item
            </h1>

        </div>
        <!-- /.col-lg-12 -->
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Product Item List
                    <div class="btn-group pull-right">
                        <a type="button" class="btn btn-primary btn-outline btn-xs "
                           href="<?= base_url() ?>Master/Product_item/add"> <i class="fa fa-share-square-o"></i> Add New Product Item</a>
                    </div>
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body  ">
                    <?php
                    if ($this->session->flashdata('msg_err')) {
                        ?>
                        <div class="alert alert-danger alert-dismissable">
                            <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×
                            </button>
                            <?= $this->session->flashdata('msg_err') ?>
                        </div>
                    <?php }elseif($this->session->flashdata('msg_done')){ ?>
                        <div class="alert alert-success alert-dismissable">
                            <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×
                            </button>
                            <?= $this->session->flashdata('msg_done') ?>
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
                                    <th>Product Type Name</th>
                                    <th>Product Brand Name</th>
                                    <th>Product Model Name</th>
                                    <th>Product Item Name</th>
                                    <th>Has Serial</th>
                                    <th>Date</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>

                                <?php
                                foreach ($product_item_list as $row) {
                                    $url=base_url().'Master/Product_item/update/'
                                    ?>
                                    <tr class="gradeU">
                                        <td><?= $row->sysid ?></td>
                                        <td><?= $row->typeName ?></td>
                                        <td><?= $row->brandName ?></td>
                                        <td><?= $row->modelName ?></td>
                                        <td><?= $row->item_name ?></td>
                                        <td><?=  ($row->has_sireal == '0') ? 'No' : 'Yes'; ?></td>
                                        <td><?= $row->date ?></td>
                                        <td class="center">

                                            <a style="cursor: pointer;text-decoration: none;" onclick="location.href='<?= $url.$row->id ?>'"><i class="fa  fa-edit"></i> Edit</a>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <a style="cursor: pointer;text-decoration: none;" onclick="deleteRecordeById('Master/Product_item/view','Master/Product_item/delete/',<?= $row->id ?>,<?= $this->session->userdata('product_item') ?>)"><i class="fa fa-times"></i> Delete</a>

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