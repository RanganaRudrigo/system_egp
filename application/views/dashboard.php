<?php
/**
 * Created by PhpStorm.
 * User: Rangana Rudrigo
 * Date: 6/10/15
 * Time: 11:07 AM
 */

//echo "<pre>";
//print_r($this->session->all_userdata());
//echo "</pre>";

if($this->input->post('logout') == true){
    session_destroy();
    redirect(base_url());
}

if($this->session->userdata('id')== null){
    redirect(base_url());
}

$this->view('inc/head');
?>
<body>



<div id="wrapper">

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href=""> EGP Solution Network System</a>
        </div>
        <!-- /.navbar-header -->

        <ul class="nav navbar-top-links navbar-right">
            <?php $this->view('inc/topHeader'); ?>
            <!-- /.dropdown -->
        </ul>
        <!-- /.navbar-top-links -->

        <div class="navbar-default sidebar" role="navigation">

            <?php $this->view('inc/menu'); ?>
            <!-- /.sidebar-collapse -->
        </div>
        <!-- /.navbar-static-side -->
    </nav>

    <div id="page-wrapper">

        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->

</div>



<?php
$this->view('inc/footer');
?>