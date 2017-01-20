<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 8/26/15
 * Time: 10:39 AM
 */

class User_control extends CI_Controller{

    function __construct()
    {
        parent::__construct();

        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');
        $this->load->model('User_control_model');

    }


    function index(){

        $this->form_validation->set_rules('userd[username]', 'User Name', 'trim|required|is_unique[admin_tab.username]',
            array('is_unique' => 'This User Name is already in use')
        );
        $this->form_validation->set_rules('userd[password]', 'Password', 'trim|required');

        $this->form_validation->set_rules('password', 'Password Confirmation', 'required|matches[userd[password]]');


        $result = new stdClass();

        if ($this->form_validation->run() != FALSE) {


            $this->db->trans_begin();
            $this->User_control_model->insert_user_control();
//
            if ($this->db->trans_status() === FALSE) {
                $this->session->set_flashdata('msg_err', 'Something Wrong.Try Again');
                $this->db->trans_rollback();
            }else{
                $this->session->set_flashdata('msg_done', 'Successfully Data Saved');
                $this->db->trans_commit();
            }
//            echo $this->db->last_query();
            redirect(current_url());
        } else {

            if ($this->input->post('btn')) {

                $result = $this->input->post('userd');

                $master=$this->input->post('master');
                foreach ($master as $k => $key) {
                    $m_details[$k] = array_sum($master[$k]);
                }
//                $mas_obj = (object)$m_details;

                $transaction=$this->input->post('transaction');
                foreach ($transaction as $k => $key) {
                    $t_details[$k] = array_sum($transaction[$k]);
                }
//                $trans_obj = (object)$t_details;

                $report=$this->input->post('report');
                foreach ($report as $k => $key) {
                    $r_details[$k] = array_sum($report[$k]);
                }
//                $rep_obj = (object)$r_details;


                $result = array_merge($result,(array)$m_details , (array)$t_details , (array)$r_details  );
//                echo '<pre>';
//                print_r($m_details);
//                echo '</pre>';

//                echo $mas_obj->user;



//                $result = (object)$this->input->post('master');
//                $result = (object)$this->input->post('transaction');
//                $result = (object)$this->input->post('report');
//                print_r($result);
            }
        }


        $data['view']='user_control/add';
        $data['result'] = (object)$result;
        $this->load->view('inc/body',$data);
    }

    function view(){

        $data['user_list'] = $this->User_control_model->getAll();


        $data['view'] = 'user_control/view';
        $this->load->view('inc/body', $data);
    }

    function update($id){

        $result = $this->User_control_model->getById($id);

        $this->form_validation->set_rules('userd[username]', 'User Name', "trim|required|is_unique_update[admin_tab.username.id.$id]",
            array('is_unique_update' => 'This User Name is already in use other user')
        );
        $this->form_validation->set_rules('userd[password]', 'Password', 'trim|required');
        $this->form_validation->set_rules('password', 'Password Confirmation', 'required|matches[userd[password]]');


       // $result = new stdClass();

        if ($this->form_validation->run() != FALSE) {


            $this->db->trans_begin();
            $this->User_control_model->update($id);
//
            if ($this->db->trans_status() === FALSE) {
                $this->session->set_flashdata('msg_err', 'Something Wrong.Try Again');
                $this->db->trans_rollback();
            }else{
                $this->session->set_flashdata('msg_done', 'Successfully Data Saved');
                $this->db->trans_commit();
            }


            redirect(base_url() . 'User_control/view');
        } else {
            if ($this->input->post('btn')) {
////
                $result = $this->input->post('userd');
////
                $master=$this->input->post('master');
                foreach ($master as $k => $key) {
                    $m_details[$k] = array_sum($master[$k]);
                }
////
                $transaction=$this->input->post('transaction');
                foreach ($transaction as $k => $key) {
                    $t_details[$k] = array_sum($transaction[$k]);
                }
////
                $report=$this->input->post('report');
                foreach ($report as $k => $key) {
                    $r_details[$k] = array_sum($report[$k]);
                }
                $result = (object)array_merge($result,(array)$m_details , (array)$t_details , (array)$r_details  );
            }
        }




        if (is_object($result)) {


            $data['result'] = (object)$result;

            $data['view'] = 'user_control/add';
            $this->load->view('inc/body', $data);

//            $data['view'] = 'user_control/add';
//            $this->load->view('inc/body', $data);
        } else {
            show_404();
        }

    }

    function delete($id)
    {
        $result = $this->User_control_model->delete($id);

//        if ($result) {
//            $this->session->set_flashdata('msg_done', 'Successfully Data Deleted');
//            $this->view();
//        } else {
//            $this->session->set_flashdata('msg_err', "This user has some link recode.You can't delete this user");
//            $this->view();
//        }

    }

} 