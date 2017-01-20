<?php

/**
 * Created by PhpStorm.
 * User: Web
 * Date: 7/20/15
 * Time: 2:32 PM
 */
class product_model extends CI_Controller
{

    function __construct()
    {
        parent::__construct();

        $this->permissions = $this->session->userdata('product_model');

        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');
        $this->load->model('Product_brand_model');
        $this->load->model('Product_model_model');

    }

    public function add()
    {

        if ($this->permissions == 7 || $this->permissions == 1 || $this->permissions == 3 || $this->permissions == 5) {

            $this->form_validation->set_rules('form[pro_brand]', 'Product Brand Name', 'trim|required',
                array('required' => 'The Product Brand Name field is required,Select Product Brand Name')
            );
            $this->form_validation->set_rules('form[pro_model]', 'Product Model Name', 'trim|required|is_unique[pro_model.pro_model]',
                array('is_unique' => 'This Product Model Name Code is already in use')
            );


            $result = new stdClass();

            if ($this->form_validation->run() != FALSE) {

                if ($this->Product_model_model->insert()) {

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

            $data['brand_list'] = $this->Product_brand_model->getAll();

            $data['maxID'] = $this->Product_model_model->getMax();
            $data['result'] = $result;

            $data['view'] = 'product/model/add';
            $this->load->view('inc/body', $data);

        } else {
            $data['view'] = 'errors/cus_error';
            $this->load->view('inc/body', $data);

        }
    }

    public function view()
    {

        $data['product_model_list'] = $this->Product_model_model->getAll();
        $data['view'] = 'product/model/view';
        $this->load->view('inc/body', $data);
    }


    function update($id)
    {

        if ($this->permissions == 7 || $this->permissions == 2 || $this->permissions == 3 || $this->permissions == 6) {

            $this->form_validation->set_rules('form[pro_brand]', 'Product Brand Name', 'trim|required',
                array('required' => 'The Product Brand Name field is required,Select Product Brand Name')
            );

//        $this->form_validation->set_rules('form[pro_brand]', 'Product Brand Name', "trim|required|is_unique_update[pro_brand.pro_brand.id.$id]",
//            array('is_unique_update' => 'This Product Brand Name is already in use other user')
//        );

            $this->form_validation->set_rules('form[pro_model]', 'Product Model Name', "trim|required|is_unique_update[pro_model.pro_model.id.$id]",
                array('is_unique' => 'This Product Model Name is already in use other user')
            );


            $result = new stdClass();


            if ($this->form_validation->run() != FALSE) {
                if ($this->Product_model_model->update($id)) {
                    $this->session->set_flashdata('msg_done', 'Successfully Data Saved');
                } else {
                    $this->session->set_flashdata('msg_err', 'Something Wrong.Try Again');
                }
                redirect(base_url() . 'Master/Product_model/view');
            } else {
                if ($this->input->post('btn')) {
                    $result->post = $this->input->post('form');
                }
            }

            $result = $this->Product_model_model->getById($id);
            $data['brand_list'] = $this->Product_brand_model->getAll();

            if (is_object($result)) {

                $data['maxID'] = $result->sysid;

                $data['view'] = 'product/model/add';
                $data['result'] = $result;

                $this->load->view('inc/body', $data);

            } else {
                show_404();
            }

        } else {
            $data['view'] = 'errors/cus_error';
            $this->load->view('inc/body', $data);

        }

    }

    function delete($id)
    {
        $this->Product_model_model->delete($id);

        if ($this->db->trans_status() === FALSE) {
            $this->session->set_flashdata('msg_err', "This recode link with other recodes .You can't delete this recode");
            $this->db->trans_rollback();

        } else {
            $this->session->set_flashdata('msg_done', 'Successfully Data Saved');
            $this->db->trans_commit();

        }
        $this->view();

    }


    function get_data_like_statement($key)
    {
        $result['data'] = $this->Product_model_model->get_data_like_statement($key);
        $this->load->view('product/model/_ajax', $result);

    }

} 