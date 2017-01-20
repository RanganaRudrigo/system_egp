<?php
/**
 * Created by PhpStorm.
 * User: Rangana Rudrigo
 * Date: 7/9/15
 * Time: 10:59 AM
 */
?>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">
                <i class="fa fa-search-plus"></i>
                Setting
            </h1>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">

                User Setting
            </div>
            <div class="panel-body">
                <?php
                //print_r($message);
              if(isset($message)){
                  ?>
                    <div class="alert alert-success alert-dismissable">
                        <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
                        <?=$message?>
                    </div>
                <?php } ?>
                <div class="row">

                    <div class="col-lg-6">
                        <?php echo form_open(); ?>
                        <input type="hidden" id="id" name="id" readonly size="50" value="<?php echo $this->session->userdata('id'); ?>">
                            <!--<div class="form-group">
                                <label>Current Password</label>
                                <input type="password" class="form-control" name="cp"  placeholder="Current Password">
                                <span style="color: red;"> <?php /*echo form_error('password'); */?></span>
                            </div>-->
                            <div class="form-group">
                                <label>New Password</label>
                                <input type="password" class="form-control" name="password" placeholder="New Password" >
                                <span style="color: red;"> <?php echo form_error('password'); ?></span>
                            </div>
                            <div class="form-group">
                                <label>Retype New Password</label>
                                <input type="password" class="form-control" name="passconf" placeholder="Retype New Password" >
                                <span style="color: red;"> <?php echo form_error('passconf'); ?></span>
                            </div>
                            <div class="form-group">
                                <button class="btn btn-default" type="submit" name="btn" value="submit"><i
                                        class="fa  fa-save fa-fw"></i> &nbsp;save Data
                                </button>
                                <button class="btn btn-danger" type="reset"><i class="fa fa-refresh fa-fw"></i> &nbsp;Reset
                                    Data
                                </button>
                            </div>

                        </form>
                    </div>

                </div>

            </div>

        </div>

    </div>

</div>