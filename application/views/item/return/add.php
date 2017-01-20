<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 7/23/15
 * Time: 1:34 PM
 */
?>
<div class=" container-fluid">
<!-- master -->
<div id="master" class="row">
    <div class="col-lg-12">
        <h1 class="page-header"><i class="fa fa-reply "></i> Return - Item



            <div class="btn-group pull-right">
                <a type="button" class="btn btn-primary btn-outline btn-xs " href="<?= base_url() ?>Transaction/Return_item/view">Manage</a>
            </div>

        </h1>

    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.master -->


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
                                    <td>&nbsp;<?= 'ITRT000' . $maxID; ?></td>
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
                                <input type="hidden" id="sysid" name="form[sysid]" value="<?= $result->sysid; ?>">
                            <?php
                            } else {
                                ?>
                                <input type="hidden" id="sysid" name="form[sysid]" value="<?= 'ITRT000' . $maxID; ?>">
                            <?php

                            }
                            ?>

                            <div class="col-lg-5">
                                <div class="form-group">
                                    <label>Return Code :<i class="text-center text-danger fa fa-asterisk "></i> </label>
                                    <input type="text" class="form-control input-sm" placeholder="" value="<?=$result->re_code ?>" name="form[re_code]" autocomplete="off" autocorrect="off" autocapitalize="off" kl_virtual_keyboard_secure_input="on" >
                                    <span style="color: red;"><?= form_error('form[re_code]'); ?> </span>
                                </div>
                            </div>
                            <div class="col-lg-5">
                                <div class="form-group">
                                    <label>Invoice Date : </label>

                                    <div class="input-group input-append date" id="dateRangePicker">
                                        <input type="text" class="form-control" value="<?=$result->item_name == null? date("Y-m-d") : $result->item_name ?>" name="form[re_date]" />
                                        <span class="input-group-addon add-on">
                                            <span class="fa fa-calendar "></span>
                                        </span>
                                        <span style="color: red;"><?= form_error('form[re_date]'); ?> </span>
                                    </div>


                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-lg-5">
                                <div class="form-group">
                                    <label>Return Person Name :<i class="text-center text-danger fa fa-asterisk "></i> </label>
                                    <input type="text" id="sup_name" class="form-control input-sm" name="form[re_per_name]"  value="<?= $result->re_per_name; ?>"/>
                                    <span style="color: red;"><?= form_error('form[re_per_name]'); ?> </span>
                                </div>
                            </div>
                            <div class="col-lg-10">
                                <div class="form-group">
                                    <label>Return Note :</label>
                                    <textarea name="form[return_note]" class="form-control"><?= $result->return_note; ?></textarea>

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
                                <input type="hidden" name="form[in_id]" value="" id="in_id"/>
                            <?php
                            }
                            ?>

                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Filter Invoice
                        </div>
                        <div class="panel-body">


                            <div class="table-responsive">
                                <div role="grid" class="dataTables_wrapper form-inline" id="dataTable_wrapper">

                                    <table id="dataTables"
                                           class="table table-striped table-bordered table-hover dataTable no-footer"
                                           aria-describedby="dataTables-example_info">
                                        <thead>
                                        <tr role="row">
                                            <th style="display: none">Invoice Id:</th>
                                            <th>Invoice Code:</th>
                                            <th>Invoice No:</th>
                                            <th>Customer Name:</th>
                                            <th>Date</th>
                                            <th>Action</th>

                                        </tr>
                                        </thead>
                                        <tbody>
                                        <?php

                                        foreach ($invoice_list as $row) {

                                            ?>
                                            <tr class="gradeU">
                                                <td  style="display: none"><?= $row->id ?></td>
                                                <td><?= $row->sysid ?></td>
                                                <td><?= $row->i_code ?></td>
                                                <td><?= $row->name ?></td>
                                                <td><?= $row->i_date ?></td>
                                                <td><a style="cursor: pointer;text-decoration: none;" class="address return_cart"  data-id="<?= $row->id ?>"><i class="fa fa-adn"></i> Add</a></td>
                                            </tr>
                                        <?php
                                        }

                                        ?>
                                        </tbody>
                                    </table>

                                </div>
                            </div>


                        </div>
                    </div>



                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Invoice Details
                        </div>
                        <div class="panel-body">
                            <div class="col-lg-5">
                                <div class="form-group">
                                    <label>Invoice No. : </label>
                                    <label id="in_code" style="color: #337ab7;"></label>

                                </div>
                            </div>
                            <div class="col-lg-5">
                                <div class="form-group">
                                    <label>Invoice Date : </label>
                                    <label id="in_date" style="color: #337ab7;"></label>

                                </div>
                            </div>
                            <div class="col-lg-5">
                                <div class="form-group">
                                    <label>Customer Name : </label>
                                    <label id="cusName" style="color: #337ab7;"></label>

                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="table-responsive">
                                <div role="grid" class="dataTables_wrapper form-inline" id="dataTable_wrapper">

                                    <table id="dataTables"
                                           class="table table-striped table-bordered table-hover dataTable no-footer"
                                           aria-describedby="dataTables-example_info">
                                        <thead>
                                        <tr role="row">
                                            <th>Item Code</th>
                                            <th>Item Name</th>
                                            <th>Invoice Qty:</th>
                                            <th>Return Qty:</th>
                                            <th>Abl: Qty:</th>
                                            <th>Return Qty</th>
                                            <th>Damage Qty</th>
                                        </tr>
                                        </thead>
                                        <tbody id="invoiceDataBody">



                                        </tbody>
                                    </table>

                                </div>
                            </div>


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