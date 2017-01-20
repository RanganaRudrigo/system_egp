<?php
/**
 * Created by PhpStorm.
 * User: Rangana Rudrigo
 * Date: 7/9/15
 * Time: 10:55 AM
 */

class Setting extends CI_Controller{

    function __construct(){
        parent::__construct();
        $this->load->model('setting_m');
        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');

    }


    function update(){

//        $this->form_validation->set_rules('cp', 'Current Password Not Match', 'required|matches[admin_tab.password]');
        $this->form_validation->set_rules('password', 'Password', 'required');
        $this->form_validation->set_rules('passconf', 'Password Confirmation', 'required|matches[password]');


        if ($this->form_validation->run() != FALSE) {

            if( $this->setting_m->update() ){
                $data['message'] = "Successfully Data Saved ";
                session_destroy();
                redirect(base_url());
            }else{
                $data['message']= "Something Wrong.Try Again";
            }

        }else{

//            if($this->input->post('btn')){
//
//            }
        }

        $data['view']='setting/update';
        $this->load->view('inc/body',$data);


    }

} 