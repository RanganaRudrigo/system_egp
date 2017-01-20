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

    <style>
        .modal
        {
            overflow: hidden;
        }
        #ajax_pop>.modal-backdrop {
            background-color: transparent;
        }
        /*#ajax_pop_custom>.modal-backdrop {*/
            /*background-color: transparent;*/
        /*}*/

    </style>

    <!-- DataTables CSS -->
    <link href="css/plugins/dataTables.bootstrap.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script type="text/javascript" src="<?= base_url() ?>js/tinymce/tinymce.min.js"></script>

    <script type="text/javascript">
        tinymce.init({
            mode : "exact",
            elements : "elm1",
//        selector: "textarea",
            theme: "modern",
            plugins: [
                "advlist autolink lists link image charmap print preview hr anchor pagebreak",
                "searchreplace wordcount visualblocks visualchars code fullscreen",
                "insertdatetime media nonbreaking save table contextmenu directionality",
                "emoticons template paste textcolor colorpicker textpattern"
            ],
            toolbar1: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image",
            toolbar2: "print preview media | forecolor backcolor emoticons",
            image_advtab: true,
            templates: [
                {title: 'Test template 1', content: 'Test 1'},
                {title: 'Test template 2', content: 'Test 2'}
            ]
        });
    </script>

    <script>
        _URL = window.URL || window.webkitURL;
        URL = {
          base :  "<?=base_url()?>" ,
          current :  "<?=current_url()?>"
        };
    </script>






</head>
<?php
//header("Pragma: no-cache");
?>