<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 7/20/15
 * Time: 11:42 AM
 */

class Master extends CI_Controller{



    public function index(){

        $data['view']='master/view';
        $this->load->view('inc/body',$data);
    }

} 