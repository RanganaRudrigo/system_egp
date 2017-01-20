<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 7/20/15
 * Time: 2:00 PM
 */
?>
<div class=" container-fluid">
    <!-- master -->
    <div id="master" class="row">
        <div class="col-lg-12">
            <h1 class="page-header"><i class="fa fa-puzzle-piece "></i> Product Type



                <div class="btn-group pull-right">
                    <a type="button" class="btn btn-primary btn-outline btn-xs " href="<?= base_url() ?>Master/Product_type/view">Manage</a>
                </div>

            </h1>

        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.master -->
    <div class="row">
        <div class="col-lg-12">
            <div class="col-lg-6 col-md-6 col-sm-12 pull-right">
                <div class="input-group custom-search-form">
                    <input type="search" placeholder="Search..." onkeyup="searchDataLikeStatement(value,'Master/Product_type/get_data_like_statement/')" class="form-control" kl_virtual_keyboard_secure_input="on">
                                <span class="input-group-btn">
                                <button type="button" class="btn btn-default ">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                </div>
            </div>
        </div>
    </div>

    <div class="row">

        <div class="col-lg-12">
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="col-lg-5">
                            <table class="table table-bordered">
                                <tbody>
                                <?php
                                if ($result->sysid && $result->date) {
                                    ?>
                                    <tr>
                                        <th>System code</th>
                                        <td>&nbsp;<?= $result->sysid ?></td>
                                    </tr>
                                    <tr>
                                        <th>Date</th>
                                        <td> &nbsp; <?= $result->date ?></td>
                                    </tr>
                                <?php
                                } else {
                                    ?>
                                    <tr>
                                        <th>System code</th>
                                        <td>&nbsp;<?= 'PRTY00' . $maxID; ?></td>
                                    </tr>
                                    <tr>
                                        <th>Date</th>
                                        <td> &nbsp; <?= date("d-M-Y") ?></td>
                                    </tr>
                                <?php

                                }
                                ?>
                                </tbody></table>
                        </div>
                        <div class="clearfix"></div>

                        <?php echo form_open(); ?>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    General Information
                                </div>
                                <div class="panel-body">
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

                                    <?php
                                    if ($result->sysid) {
                                        ?>
                                        <input type="hidden" name="form[sysid]" value="<?= $result->sysid; ?>">
                                    <?php
                                    } else {
                                        ?>
                                        <input type="hidden" name="form[sysid]" value="<?= 'PRTY00' . $maxID; ?>">
                                    <?php

                                    }
                                    ?>

                                    <div class="clearfix"></div>
                                    <div class="col-lg-5">
                                        <div class="form-group">
                                            <label>Product Type Name :<i class="text-center text-danger fa fa-asterisk "></i> </label>
                                            <input type="text" class="form-control input-sm" placeholder="" value="<?= $result->pro_type; ?>" name="form[pro_type]" autocomplete="off" autocorrect="off" autocapitalize="off" kl_virtual_keyboard_secure_input="on" >
                                            <span style="color: red;"> <?= form_error('form[pro_type]'); ?></span>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="col-lg-10">
                                        <div class="form-group">
                                            <label>Description :</label>
                                            <textarea class="form-control" name="form[pro_type_des]" ><?= $result->pro_type_des; ?></textarea>
                                            <span style="color: red;"> </span>
                                        </div>
                                    </div>
                                    <?php

                                    if ($result->date) {
                                        ?>
                                        <input type="hidden" name="form[date]" value="<?= $result->date; ?>">
                                    <?php
                                    } else {
                                        ?>
                                        <input type="hidden" name="form[date]" value="<?= date("d-M-Y") ?>">
                                    <?php
                                    }
                                    ?>

                                </div>
                            </div>

                            <div class="col-lg-10">
                                <div class="form-group">
                                    <button value="submit" name="btn" type="submit" class="btn btn-default"><i class="fa  fa-save fa-fw"></i> &nbsp;Save Data
                                    </button>
                                    <button type="reset" class="btn btn-danger"><i class="fa fa-refresh fa-fw"></i> &nbsp;Reset
                                        Data
                                    </button>
                                </div>
                            </div>
                        </form>
                        <!-- /.panel -->
                    </div>
                </div>
                <!-- /.row (nested) -->
            </div>
            <!-- /.panel-body -->
            <!--                </div>-->
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>

</div>