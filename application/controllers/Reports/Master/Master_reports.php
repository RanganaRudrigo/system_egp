<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 8/13/15
 * Time: 10:27 AM
 */




class Master_reports extends  CI_Controller{

    public function index(){
        $data['view']='reports/master/view';
        $this->load->view('inc/body',$data);
    }

} 