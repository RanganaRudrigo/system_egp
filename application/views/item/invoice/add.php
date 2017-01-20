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
        <h1 class="page-header"><i class="fa fa-shopping-cart "></i> Invoice - Item



            <div class="btn-group pull-right">
                <a type="button" class="btn btn-primary btn-outline btn-xs " href="<?= base_url() ?>Transaction/Invoice_item/view">Manage</a>
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
                                    <td>&nbsp;<?= 'INVC00' . $maxID; ?></td>
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
                                <input type="hidden" id="sysid" name="form[sysid]" value="<?= 'INVC00' . $maxID; ?>">
                            <?php

                            }
                            ?>

                            <div class="col-lg-5">
                                <div class="form-group">
                                    <label>Invoice Code :<i class="text-center text-danger fa fa-asterisk "></i> </label>
                                    <input type="text" class="form-control input-sm" placeholder="" value="<?=$result->item_name ?>" name="form[i_code]" autocomplete="off" autocorrect="off" autocapitalize="off" kl_virtual_keyboard_secure_input="on" >
                                    <span style="color: red;"><?= form_error('form[i_code]'); ?> </span>
                                </div>
                            </div>
                            <div class="col-lg-5">
                                <div class="form-group">
                                    <label>Invoice Date : </label>
                                    <div class="input-group input-append date" id="dateRangePicker">
                                        <input type="text" class="form-control" value="<?=$result->item_name == null? date("Y-m-d") : $result->item_name ?>" name="form[i_date]" />
                                        <span class="input-group-addon add-on">
                                            <span class="fa fa-calendar "></span>
                                        </span>
                                        <span style="color: red;"><?= form_error('form[p_date]'); ?> </span>
                                    </div>

                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-lg-5">
                                <div class="form-group">
                                    <label>Customer Name :<i class="text-center text-danger fa fa-asterisk "></i> </label>
                                    <input type="text" id="sup_name" class="form-control input-sm" name="form[cus_name]"  value="<?= $result->cus_name; ?>"  onkeyup="searchDataLikeStatement(value,'Transaction/Invoice_item/get_customer_data_like_statement/')"/>
                                    <input type="hidden" value="<?= $result->cus_id; ?>" name="form[cus_id]" id="sup_id" />

                                    <span style="color: red;"><?= form_error('form[cus_id]'); ?> </span>
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
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Filter Item
                        </div>
                        <div class="panel-body">


                            <div class="table-responsive">
                                <div role="grid" class="dataTables_wrapper form-inline" id="dataTable_wrapper">

                                    <table id="dataTables"
                                           class="table table-striped table-bordered table-hover dataTable no-footer"
                                           aria-describedby="dataTables-example_info">
                                        <thead>
                                        <tr role="row">
                                            <th style="display: none">Item ID</th>
                                            <th>Item Code</th>
                                            <th>Item Name</th>
                                            <th>Item Has Serial</th>
                                            <th>Price (LKR)</th>
                                            <th>Avaliable Qty:</th>
                                            <th>Action</th>

                                        </tr>
                                        </thead>
                                        <tbody>
                                        <?php foreach ($product_item_list as $row) {
                                            if($row->abl_qty > 0){
                                            ?>
                                            <tr class="gradeU">
                                                <td style="display: none"><?= $row->id ?></td>
                                                <td><?= $row->sysid ?></td>
                                                <td><?= $row->item_name ?></td>
                                                <td><?=  ($row->has_sireal == '0') ? 'No' : 'Yes'; ?></td>
                                                <td><?= $row->item_price ?></td>
                                                <td><?= $row->abl_qty ?></td>
                                                <td><a style="cursor: pointer;text-decoration: none;" class="address add_cart"  data-id="<?= $row->id ?>"><i class="fa fa-adn"></i> Add</a></td>
                                            </tr>
                                        <?php
                                        }
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
                            Purchase  Details
                        </div>
                        <div class="panel-body">


                            <div class="table-responsive">
                                <div role="grid" class="dataTables_wrapper form-inline" id="dataTable_wrapper">

                                    <table id="dataTables"
                                           class="table table-striped table-bordered table-hover dataTable no-footer"
                                           aria-describedby="dataTables-example_info">
                                        <thead>
                                        <tr role="row">
                                            <th>Item Code</th>
                                            <th>Item Name</th>
                                            <th>Avaliable Qty:</th>
                                            <th>Price</th>
                                            <th>Selected Qty</th>
                                            <th>Total</th>

                                            <th>Remove</th>
                                        </tr>
                                        </thead>
                                        <tbody id="perDataRowIn">



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