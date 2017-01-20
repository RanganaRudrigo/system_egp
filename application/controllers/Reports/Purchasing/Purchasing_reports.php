<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 8/13/15
 * Time: 3:48 PM
 */


class Purchasing_reports extends  CI_Controller{

    public function index(){
        $data['view']='reports/purchasing/view';
        $this->load->view('inc/body',$data);
    }
} 