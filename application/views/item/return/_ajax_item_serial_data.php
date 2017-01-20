<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 7/22/15
 * Time: 1:42 PM
 */
?>
<div class="panel panel-primary" id="modal-header" style="margin-bottom: 0;">
    <div class="panel-heading">
        Invoiced Serial List
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    </div>

    <div class="panel-body">
        <div class="table-responsive" style="height: 60%;overflow: auto">
            <table class="table table-striped table-bordered table-hover">
                <thead>
                <tr>
                    <th >#</th>
                    <th >Serial No</th>
                    <th>Good Item Return :</th>
                    <th>Damage Item Return :</th>

                </tr>
                </thead>
                <tbody>
                <?php foreach ($data as $k =>  $row) { ?>

                    <tr style="cursor: pointer;">
                        <td ><?=$k+1 ?></td>
                        <td ><?= $row->key ?></td>
                        <td>
                            <div class="checkbox" >
                                <label>
                                    <input data-id="<?= $k+1?>" id="rets_<?= $k+1?>" type="checkbox" class="is_return" name="is_return[]" value="<?= $row->key ?>"/>
                                </label>
                            </div>
                        </td>
                        <td >
                            <div class="checkbox" >
                                <label>
                                    <input data-id="<?= $k+1?>" id="dmgs_<?= $k+1?>" type="checkbox" class="is_damage" name="is_damage[]" value="<?= $row->key ?>" />
                                </label>
                            </div>
                        </td>
                    </tr>
                <?php } ?>

                </tbody>
            </table>
            Number of Return Serials : <strong id="r_count"> 0 </strong>
            <input type="hidden" name="r_count_val" value="0" id="r_count_val"/>
    <br/>
            Number of Damage serials : <strong id="d_count"> 0 </strong>
            <input type="hidden" name="d_count_val" value="0" id="d_count_val"/>


        </div>
        <!-- /.table-responsive -->
    </div>
    <div class="panel-footer">
        <button id="key_process_return" data-dismiss="modal" class="btn btn-primary key_process_return" type="button">Process</button>
        <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
    </div>


</div>