<?php

/**
 * Created by PhpStorm.
 * User: Web
 * Date: 7/20/15
 * Time: 10:16 AM
 */
class Users extends CI_Controller
{


    function __construct()
    {

        parent::__construct();

        $this->permissions = $this->session->userdata('user');

        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');
        $this->load->model('User_model');

        $this->cus_type = array(
            array('id' => '', 'name' => '--- Select User Type ---'),
            array('id' => 'Customer', 'name' => 'Customer'),
            array('id' => 'Supplier', 'name' => 'Supplier')
        );
    }


    public function add()
    {



        if($this->permissions == 7 || $this->permissions == 1 || $this->permissions == 3 || $this->permissions == 5){
            $this->form_validation->set_rules('form[type]', 'User Type', 'trim|required');
            $this->form_validation->set_rules('form[cus_code]', 'User Code', 'trim|required|is_unique[user.cus_code]',
                array('is_unique' => 'This User Code is already in use')
            );
            $this->form_validation->set_rules('form[name]', 'User Name', 'trim|required');
            $this->form_validation->set_rules('form[company]', 'User Company', 'trim|required');
            $this->form_validation->set_rules('form[email]', 'Email', 'trim|valid_email');


            $result = new stdClass();

            if ($this->form_validation->run() != FALSE) {

                if ($this->User_model->insert()) {

                    $this->session->set_flashdata('msg_done', 'Successfully Data Saved');

                } else {
                    $this->session->set_flashdata('msg_err', 'Something Wrong.Try Again');
                }
                redirect(current_url());
            } else {
                if ($this->input->post('btn')) {

                    $result = (object)$this->input->post('form');
                }
            }

            $data['maxID'] = $this->User_model->getMax();

            $data['cus_type'] = $this->cus_type;

            $data['view'] = 'user/add';
            $data['result'] = $result;
            $this->load->view('inc/body', $data);
        }else{
            $data['view'] = 'errors/cus_error';
            $this->load->view('inc/body', $data);

        }


    }


    public function view()
    {

        $data['user_list'] = $this->User_model->getAll();

        $data['view'] = 'user/view';
        $this->load->view('inc/body', $data);
    }


    function update($id)
    {


        if($this->permissions == 7 || $this->permissions == 2 || $this->permissions == 3 || $this->permissions == 6){
       $this->form_validation->set_rules('form[type]', 'User Type', 'trim|required');
        $this->form_validation->set_rules('form[cus_code]', 'User Code', "trim|required|is_unique_update[user.cus_code.id.$id]",
            array('is_unique_update' => 'This User Code is already in use other user')
        );
        $this->form_validation->set_rules('form[name]', 'User Name', 'trim|required');
        $this->form_validation->set_rules('form[company]', 'User Company', 'trim|required');
        $this->form_validation->set_rules('form[email]', 'Email', 'trim|valid_email');

        $result = new stdClass();


        if ($this->form_validation->run() != FALSE) {
            if ($this->User_model->update($id)) {
                $this->session->set_flashdata('msg_done', 'Successfully Data Saved');
            } else {
                $this->session->set_flashdata('msg_err', 'Something Wrong.Try Again');
            }
            redirect(base_url() . 'Master/Users/view');
        } else {
            if ($this->input->post('btn')) {
                $result->post = $this->input->post('form');
            }
        }

        $result = $this->User_model->getById($id);

        if (is_object($result)) {

            $data['maxID'] = $result->sysid;

            $data['cus_type'] = $this->cus_type;

            $data['view'] = 'user/add';
            $data['result'] = $result;

            $this->load->view('inc/body', $data);

        } else {
            show_404();
        }

        }else{
            $data['view'] = 'errors/cus_error';
            $this->load->view('inc/body', $data);
        }


    }


    function delete($id)
    {



        $result = $this->User_model->delete($id);

        if ($result) {
            $this->session->set_flashdata('msg_done', 'Successfully Data Deleted');
            $this->view();
        } else {
            $this->session->set_flashdata('msg_err', "This user has some link recode.You can't delete this user");
            $this->view();
//            show_404();
        }



    }

    function get_data_like_statement($key)
    {

         $result['data']= $this->User_model->get_data_like_statement($key);
        $this->load->view('user/_ajax', $result);

    }


}
/*

$this->db->trans_begin();
$this->User_model->insert();
$this->User_model->insert();
$this->User_model->insert();
$this->User_model->insert();
$this->User_model->insert();
$this->User_model->insert();

if ($this->db->trans_status() === FALSE)
{
    $this->session->set_flashdata('msg', 'Sasd');
    $this->db->trans_rollback();
}
else
{
    $this->session->set_flashdata('msg', 'Successfully Data Saved');
    $this->db->trans_commit();
}*/
