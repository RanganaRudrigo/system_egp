<?php
/**
 * Created by PhpStorm.
 * User: Rangana Rudrigo
 * Date: 6/10/15
 * Time: 11:33 AM
 */
?>
<div class="sidebar-nav navbar-collapse">
    <ul class="nav" id="side-menu">




        <?php
        if($this->session->userdata('id') == '1'){ ?>

            <li>
                <a href="#"><i class="fa fa-gears fa-fw"></i> User Control<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="<?= base_url() ?>User_control">User Privilege</a>
                    </li>
                    <li>
                        <a href="<?= base_url() ?>User_control/view">Manage User Privilege </a>
                    </li>
                </ul>
            </li>


        <?php
        }
       ?>


        <li>
            <a href="<?= base_url() ?>Master"><i class="fa fa-cubes fa-fw"></i> Master</a>
        </li>
        <li>
            <a href="<?= base_url() ?>Transaction"><i class="fa fa-money fa-fw"></i> Transaction</a>
        </li>


        <li>
            <a href="#"><i class="fa  fa-files-o fa-fw"></i> Reports<span class="fa arrow"></span></a>
            <ul class="nav nav-second-level">
                <li>
                    <a href="<?= base_url() ?>Reports/Master">Master</a>
                </li>
                <li>
                    <a href="<?= base_url() ?>Reports/Purchasing">Purchasing Reports</a>
                </li>
                <li>
                    <a href="<?= base_url() ?>Reports/Stock/Stock_balance/view">Balance Stock Reports</a>
                </li>
                <li>
                    <a href="<?= base_url() ?>Reports/Stock/Damage_stock/view">Damage Stock Reports</a>
                </li>
            </ul>
        </li>


    </ul>
</div>