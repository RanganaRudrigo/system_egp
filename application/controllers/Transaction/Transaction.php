<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 7/23/15
 * Time: 1:05 PM
 */


class Transaction extends  CI_Controller{

    public function index(){
        $data['view']='transaction/view';
        $this->load->view('inc/body',$data);
    }

} 