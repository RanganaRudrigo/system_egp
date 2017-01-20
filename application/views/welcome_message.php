<!DOCTYPE html>
<html lang="en">

<head>

    <?php $this->view('inc/icon_title'); ?>

    <!-- Bootstrap Core CSS -->
    <link href="<?= base_url() ?>css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="<?= base_url() ?>css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<?= base_url() ?>css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<?= base_url() ?>font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="login-panel panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"> EGP Solution Network System </h3>
                </div>

                <div class="panel-body">
                    <!--                    <form role="form">-->
                    <fieldset>
                        <div class="form-group">
                            <p class="text-center">
                                <small id="login_err">

                                </small>
                            </p>
                        </div>
                        <div class="form-group">
                            <input class="form-control" placeholder="User Name" name="email" type="email" autofocus id="login_username">
                        </div>
                        <div class="form-group">
                            <input class="form-control" placeholder="Password" name="password" type="password"
                                   value="" id="login_pwd">
                        </div>
                        <div class="loader progress progress-striped active hidden" id="progress">
                            <div style="width: 100%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="100" role="progressbar" class="progress-bar progress-bar-success">
                            </div>
                        </div>
                        <!-- Change this to a button or input when using this as a form -->
                        <button class="btn btn-lg btn-success btn-block" type="submit" onclick="check_login()">
                            Login
                        </button>
                    </fieldset>
                    <!--                    </form>-->
                </div>
                <p class="text-center">
                    <small>Copyrights &copy; <?= date('Y') ?>  EGP Solution Network</small>
                    <br/>
                    <small>    Powered by <a href="http://www.egpsolutionnetwork.com" target="_blank">EGP Solution Network    </a>                </small>
                </p>
            </div>
        </div>
    </div>
</div>

<!-- jQuery -->
<script src="<?= base_url() ?>js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="<?= base_url() ?>js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="<?= base_url() ?>js/plugins/metisMenu/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="<?= base_url() ?>js/sb-admin-2.js"></script>

<script src="<?= base_url() ?>js/common_script.js"></script>

<script src="<?= base_url() ?>js/login.js"></script>

</body>

</html>
