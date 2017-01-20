<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 7/22/15
 * Time: 10:08 AM
 */
?>

<div class="panel panel-primary" id="modal-header" style="margin-bottom: 0;">
    <div class="panel-heading">
        User List
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    </div>
    <div class="panel-body">
        <div class="table-responsive">
            <table class="table table-striped table-bordered table-hover">
                <thead>
                <tr>
                    <th>User Code</th>
                    <th>User Type</th>
                    <th>User Name</th>
                    <th>Telephone</th>
                    <th>Mobile</th>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($data as $row) { ?>
                    <tr>


                        <td><a href="<?= base_url().'Master/Users/update/'.$row->id ?>"><?= $row->cus_code ?></a></td>
                        <td><?= $row->type ?></td>
                        <td> <a href="<?= base_url().'Master/Users/update/'.$row->id ?>"> <?= $row->name ?></a></td>
                        <td><?= $row->tele ?></td>
                        <td><?= $row->mobile ?></td>
                    </tr>
                <?php } ?>

                </tbody>
            </table>
        </div>
        <!-- /.table-responsive -->
    </div>
    <div class="panel-footer">
        <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
    </div>

</div>




<!--<div class="modal-header ">-->
<!---->
<!--    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>-->
<!--    <h4 class="modal-title">User List</h4>-->
<!--</div>-->
<!--<div class="modal-body">-->
<!---->
<!---->
<!--</div>-->
<!--<div class="modal-footer">-->
<!--    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>-->
<!--</div>-->