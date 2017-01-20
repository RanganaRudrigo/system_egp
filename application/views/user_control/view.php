<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 7/20/15
 * Time: 1:29 PM
 */
?>
<div class="container-fluid">

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header"><i class="fa fa-smile-o"></i> User
            </h1>

        </div>
        <!-- /.col-lg-12 -->
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    User List
                    <div class="btn-group pull-right">
                        <a type="button" class="btn btn-primary btn-outline btn-xs "
                           href="<?= base_url().'Master/Users/add' ?>"> <i class="fa fa-share-square-o"></i> Add New User</a>
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
                                    <th>#</th>
                                    <th>User Name</th>
                                    <th>Create Date/Time</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>


                                <?php foreach ($user_list as $k => $row) {
                                    $url=base_url().'User_control/update/';
                                    if($row->username != 'admin'){
                                    ?>
                                    <tr class="gradeU">
                                        <td><?= $k + 1 ?></td>
                                        <td><?= $row->username ?></td>
                                        <td><?= $row->time_ ?></td>

                                        <td class="center">
                                            <a style="cursor: pointer;text-decoration: none;" onclick="location.href='<?= $url.$row->id ?>'"><i class="fa  fa-edit"></i> Edit</a>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <a style="cursor: pointer;text-decoration: none;" onclick="deleteRecordeById('User_control/view','User_control/delete/',<?= $row->id ?>,'user')"><i class="fa fa-times"></i> Delete</a>
                                        </td>
                                    </tr>
                                <?php
                                }
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