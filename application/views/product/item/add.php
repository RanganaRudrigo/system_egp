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
            <h1 class="page-header"><i class="fa fa-plus-square"></i> Product Item



                <div class="btn-group pull-right">
                    <a type="button" class="btn btn-primary btn-outline btn-xs " href="<?= base_url() ?>Master/Product_item/view">Manage</a>
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
                    <input type="search" placeholder="Search..." onkeyup="searchDataLikeStatement(value,'Master/Product_item/get_data_like_statement/')" data-url="master/airline/search" class="form-control" kl_virtual_keyboard_secure_input="on">
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
                                        <td>&nbsp;<?= 'ITEM00' . $maxID; ?></td>
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
                                        <input type="hidden" name="form[sysid]" value="<?= 'ITEM00' . $maxID; ?>">
                                    <?php

                                    }
                                    ?>



                                    <div class="col-lg-5">
                                        <div class="form-group">
                                            <label>Product Type Name :<i class="text-center text-danger fa fa-asterisk "></i> </label>
                                            <select class="form-control" name="form[pro_type_id]">
                                                <option value="" selected="">---- Select Product Type Name ----</option>
                                                <?php foreach ($type_list as $row) {              ?>
                                                    <option value="<?= $row->id ?>" <?= $row->id == $result->pro_type_id ? "selected" : "" ?>> <?= $row->pro_type ?></option>
                                                <?php } ?>
                                            </select>
                                            <span style="color: red;"><?= form_error('form[pro_type_id]'); ?> </span>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="col-lg-5">
                                        <div class="form-group">
                                            <label>Product Brand Name :<i class="text-center text-danger fa fa-asterisk "></i> </label>
                                            <select class="form-control" name="form[pro_brand_id]" onchange="loadModelSearchByBrandName(value,'Master/Product_item/load_model_search_by_brand_name/','pro_model')">
                                                <option value="" selected="">---- Select Product Brand Name ----</option>
                                                <?php foreach ($brand_list as $row) {              ?>
                                                    <option value="<?= $row->id ?>" <?= $row->id == $result->pro_brand_id ? "selected" : "" ?>> <?= $row->pro_brand ?></option>
                                                <?php } ?>
                                            </select>
                                            <span style="color: red;"><?= form_error('form[pro_brand_id]'); ?> </span>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="col-lg-5">
                                        <div class="form-group">
                                            <label>Product Model Name :<i class="text-center text-danger fa fa-asterisk "></i> </label>
                                            <select class="form-control" name="form[pro_model_id]" id="pro_model">
                                                <option value="" selected="">---- Select Product Model Name ----</option>
                                                <?php foreach ($item_model as $row) {              ?>
                                                    <option value="<?= $row->id ?>" <?= $row->id == $result->pro_model_id ? "selected" : "" ?>> <?= $row->pro_model ?></option>
                                                <?php } ?>
                                            </select>
                                            <span style="color: red;"><?= form_error('form[pro_model_id]'); ?> </span>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>

                                    <div class="col-lg-5">
                                        <div class="form-group">
                                            <label>Product Item Name :<i class="text-center text-danger fa fa-asterisk "></i> </label>
                                            <input type="text" class="form-control input-sm" placeholder="" value="<?=$result->item_name ?>" name="form[item_name]" autocomplete="off" autocorrect="off" autocapitalize="off" kl_virtual_keyboard_secure_input="on" >
                                            <span style="color: red;"><?= form_error('form[item_name]'); ?> </span>
                                        </div>
                                    </div>

                                    <div class="col-lg-5">
                                        <div class="form-group">
                                            <label>Product Item Price :<i class="text-center text-danger fa fa-asterisk "></i> </label>
                                            <input type="text" class="form-control input-sm" placeholder="" value="<?=$result->item_price ?>" name="form[item_price]" autocomplete="off" autocorrect="off" autocapitalize="off" kl_virtual_keyboard_secure_input="on" >
                                            <span style="color: red;"><?= form_error('form[item_price]'); ?> </span>
                                        </div>
                                    </div>
                                    <div class="col-lg-5">
                                        <div class="form-group">
                                            <label>Has Serial Number : </label>
                                            <div class="checkbox">
                                                <label>

                                                    <?php

                                                    if ($result->has_sireal == 'Yes') {
                                                        ?>
                                                        <input type="checkbox" checked value="<?= $result->has_sireal ?>" name="form[has_sireal]" id="chk_has_serial_no" onclick="change_state('chk_has_serial_no','lbl_has_serial_no');"/>
                                                        <span id="lbl_has_serial_no" style="color: green;font-weight: bold;"><?= $result->has_sireal ?></span>
                                                    <?php

                                                    } else {
                                                        ?>
                                                        <input type="checkbox" value="No" name="form[has_sireal]" id="chk_has_serial_no" onclick="change_state('chk_has_serial_no','lbl_has_serial_no');"/>
                                                        <span id="lbl_has_serial_no" style="color: red;font-weight: bold;">No</span>
                                                    <?php
                                                    }
                                                    ?>

                                                </label>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="col-lg-10">
                                        <div class="form-group">
                                            <label>Description :</label>
                                            <textarea class="form-control" name="form[item_desc]" ><?=$result->item_desc ?></textarea>
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

<script type="text/javascript">

    function change_state(compornet,label){

        if($('#'+compornet).prop('checked')){
            $("#"+label).css("color","green").text("Yes");
            $('#'+compornet).val("Yes");

        }else{
            $('#'+compornet).val("No");
            $("#"+label).css("color","red").text("No");
        }
    }

</script>