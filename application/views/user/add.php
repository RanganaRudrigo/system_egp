<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 7/20/15
 * Time: 10:19 AM
 */
?>
<div class=" container-fluid">
<!-- master -->
<div id="master" class="row">
    <div class="col-lg-12">
        <h1 class="page-header"><i class="fa fa-smile-o"></i> User


            <div class="btn-group pull-right">
                <a type="button" class="btn btn-primary btn-outline btn-xs "
                   href="<?= base_url() . 'Master/Users/view' ?>">Manage</a>
            </div>
            <p style="font-size: 15px;font-weight: bold">Customer / Supplier </p>
        </h1>

    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.master -->
<div class="row">
    <div class="col-lg-12">
        <div class="col-lg-6 col-md-6 col-sm-12 pull-right">
            <div class="input-group custom-search-form">
                <input type="search" placeholder="Search..." data-url="master/airline/search" class="form-control"
                       kl_virtual_keyboard_secure_input="on" id="project"
                       onkeyup="searchDataLikeStatement(value,'Master/Users/get_data_like_statement/')"/>
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
                        <td>&nbsp;<?= 'CUS000' . $maxID; ?></td>
                    </tr>
                    <tr>
                        <th>Date</th>
                        <td> &nbsp; <?= date("d-M-Y") ?></td>
                    </tr>
                <?php

                }
                ?>


                </tbody>
            </table>
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
                    <input type="hidden" name="form[sysid]" value="<?= 'CUS000' . $maxID; ?>">
                <?php

                }
                ?>


                <div class="col-lg-5">
                    <div class="form-group">
                        <label>User Type :<i class="text-center text-danger fa fa-asterisk "></i></label>

                        <select name="form[type]" class="form-control">
                            <?php foreach ($cus_type as $status) { ?>
                                <option value="<?= $status['id'] ?>"
                                    <?= $status['id'] == $result->type ? "selected" : "" ?> >
                                    <?= $status['name'] ?></option>
                            <?php } ?>
                        </select>

                        <span style="color: red;"> <?= form_error('form[type]'); ?></span>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="col-lg-5">
                    <div class="form-group">
                        <label>Registration Code :<i class="text-center text-danger fa fa-asterisk "></i>
                        </label>
                        <input type="text" class="form-control input-sm" placeholder=""
                               value="<?= $result->cus_code; ?>" name="form[cus_code]" autocomplete="off"
                               autocorrect="off" autocapitalize="off" kl_virtual_keyboard_secure_input="on">
                        <span style="color: red;"> <?= form_error('form[cus_code]'); ?></span>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="col-lg-5">
                    <div class="form-group">
                        <label>Name :<i class="text-center text-danger fa fa-asterisk "></i> </label>
                        <input type="text" class="form-control input-sm" placeholder=""
                               value="<?= $result->name; ?>" name="form[name]" autocomplete="off"
                               autocorrect="off" autocapitalize="off" kl_virtual_keyboard_secure_input="on">
                        <span style="color: red;"><?= form_error('form[name]'); ?> </span>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="form-group">
                        <label>Company :<i class="text-center text-danger fa fa-asterisk "></i> </label>
                        <input type="text" class="form-control input-sm" placeholder=""
                               value="<?= $result->company; ?>" name="form[company]" autocomplete="off"
                               autocorrect="off" autocapitalize="off" kl_virtual_keyboard_secure_input="on">
                        <span style="color: red;"><?= form_error('form[company]'); ?> </span>
                    </div>
                </div>

            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                Contact Information
            </div>
            <div class="panel-body">


                <div class="col-lg-10">
                    <div class="form-group">
                        <label>Address</label>
                        <textarea name="form[address]"
                                  class="form-control"><?= $result->address; ?></textarea>
                        <span style="color: red;"> </span>
                    </div>
                </div>

                <div class="col-lg-5">
                    <div class="form-group">
                        <label>Telephone No. : </label>
                        <input type="text" class="form-control input-sm" placeholder=""
                               value="<?= $result->tele; ?>" name="form[tele]" autocomplete="off"
                               autocorrect="off" autocapitalize="off" kl_virtual_keyboard_secure_input="on">
                        <span style="color: red;"> </span>
                    </div>
                </div>

                <div class="col-lg-5">
                    <div class="form-group">
                        <label>Mobile No. : </label>
                        <input type="text" class="form-control input-sm" placeholder=""
                               value="<?= $result->mobile; ?>" name="form[mobile]" autocomplete="off"
                               autocorrect="off" autocapitalize="off" kl_virtual_keyboard_secure_input="on">
                        <span style="color: red;"> </span>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="col-lg-5">
                    <div class="form-group">
                        <label>Fax No. : </label>
                        <input type="text" class="form-control input-sm" placeholder=""
                               value="<?= $result->fax; ?>" name="form[fax]" autocomplete="off"
                               autocorrect="off" autocapitalize="off" kl_virtual_keyboard_secure_input="on">
                        <span style="color: red;"> </span>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="form-group">
                        <label>Email. : </label>
                        <input type="text" class="form-control input-sm" placeholder=""
                               value="<?= $result->email; ?>" name="form[email]" autocomplete="off"
                               autocorrect="off" autocapitalize="off" kl_virtual_keyboard_secure_input="on">
                        <span style="color: red;"> <?= form_error('form[email]'); ?></span>
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
                <button value="submit" name="btn" type="submit" class="btn btn-default"><i
                        class="fa  fa-save fa-fw"></i> &nbsp;Save Data
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