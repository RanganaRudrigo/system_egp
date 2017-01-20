<?php
/**
 * Created by PhpStorm.
 * User: Rangana Rudrigo
 * Date: 6/10/15
 * Time: 11:34 AM
 */
?>
<li class="dropdown">
    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
    </a>
    <ul class="dropdown-menu dropdown-user">
        <!--        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a> </li>-->
        <li><a href="<?= base_url()?>Setting/update"><i class="fa fa-gear fa-fw"></i> Settings</a>
        </li>
        <li class="divider"></li>
        <li>
            <a onclick="document.getElementById('logout').submit()" style="cursor: pointer;">
                <i class="fa fa-sign-out fa-fw"></i>
                Logout
                <form method="post" id="logout">
                    <input type="hidden" name="logout" value="1"/>
                </form>

            </a>
        </li>
    </ul>
    <!-- /.dropdown-user -->
</li>