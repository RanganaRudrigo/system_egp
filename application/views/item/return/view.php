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
            <h1 class="page-header"><i class="fa fa-reply  "></i> Return - Item
            </h1>

        </div>
        <!-- /.col-lg-12 -->
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Invoice - Item List
                    <div class="btn-group pull-right">
                        <a type="button" class="btn btn-primary btn-outline btn-xs "
                           href="<?= base_url() ?>Transaction/Return_item/add"> <i class="fa fa-share-square-o"></i> Add New Return - Item </a>
                    </div>
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
                                    <th>Return Code</th>
                                    <th>Invoice Code</th>
                                    <th>Customer Name</th>
                                    <th>Date</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php foreach ($list as $row) {
                                    ?>
                                    <tr class="gradeU">
                                        <td><?= $row->sysid ?></td>
                                        <td><?= $row->in_id ?></td>
                                        <td><?= $row->re_per_name ?></td>
                                        <td><?= $row->date ?></td>
                                        <td class="center">
                                            <a style="cursor: pointer;text-decoration: none;" href="<?= base_url().'Transaction/Return_item/viewDetail/'. $row->in_id .'/'.$row->sysid?>"><i class="fa fa-table"></i> View Details</a>
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