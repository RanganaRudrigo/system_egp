<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 7/20/15
 * Time: 2:42 PM
 */

class Product_item extends CI_Controller{


    function __construct()
    {
        parent::__construct();

        $this->permissions = $this->session->userdata('product_item');

        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');

        $this->load->model('Product_type_model');
        $this->load->model('Product_brand_model');
        $this->load->model('Product_model_model');

        $this->load->model('Product_item_model');

    }


    public function add(){

        if ($this->permissions == 7 || $this->permissions == 1 || $this->permissions == 3 || $this->permissions == 5) {

        $this->form_validation->set_rules('form[pro_type_id]','Product Type Name','trim|required',
            array('required'=>'The Product Type Name field is required,Select Product Type Name')
        );
        $this->form_validation->set_rules('form[pro_brand_id]','Product Brand Name','trim|required',
            array('required'=>'The Product Brand Name field is required,Select Product Brand Name')
        );
        $this->form_validation->set_rules('form[pro_model_id]','Product Model Name','trim|required',
            array('required'=>'The Product Model Name field is required,Select Product Model Name')
        );

        $this->form_validation->set_rules('form[item_name]', 'Product Item Name', 'trim|required|is_unique[pro_item.item_name]',
            array('is_unique' => 'This Product Item Name is already in use')
        );



        $result = new stdClass();

        if ($this->form_validation->run() != FALSE) {

            if ($this->Product_item_model->insert()) {

                $this->session->set_flashdata('msg_done', 'Successfully Data Saved');

            } else {
                $this->session->set_flashdata('msg_err', 'Something Wrong.Try Again');
            }
            redirect(current_url());
        } else {
            if ($this->input->post('btn')) {
                $result = (object)$this->input->post('form');
                $data['item_model'] = $this->Product_item_model->load_model_search_by_brand_name($result->pro_brand_id);
            }
        }

        $data['type_list']  = $this->Product_type_model->getAll();
        $data['brand_list']  = $this->Product_brand_model->getAll();



        $data['maxID'] = $this->Product_item_model->getMax();
        $data['result'] = $result;


        $data['view']='product/item/add';
        $this->load->view('inc/body',$data);

        } else {
            $data['view'] = 'errors/cus_error';
            $this->load->view('inc/body', $data);

        }
    }

    public function view(){

        $data['product_item_list'] = $this->Product_item_model->getAll();


        $data['view']='product/item/view';
        $this->load->view('inc/body',$data);
    }

    function delete($id)
    {
        $result = $this->Product_item_model->delete($id);

        if ($result) {
            $this->session->set_flashdata('msg_done', 'Successfully Data Saved');
        }else{
            $this->session->set_flashdata('msg_err', "This recode link with other recodes .You can't delete this recode");
        }
        $this->view();

    }


    function update($id)
    {

        if ($this->permissions == 7 || $this->permissions == 2 || $this->permissions == 3 || $this->permissions == 6) {

        $this->form_validation->set_rules('form[pro_type_id]','Product Type Name','trim|required',
            array('required'=>'The Product Type Name field is required,Select Product Type Name')
        );
        $this->form_validation->set_rules('form[pro_brand_id]','Product Brand Name','trim|required',
            array('required'=>'The Product Brand Name field is required,Select Product Brand Name')
        );
        $this->form_validation->set_rules('form[pro_model_id]','Product Model Name','trim|required',
            array('required'=>'The Product Model Name field is required,Select Product Model Name')
        );

        $this->form_validation->set_rules('form[item_name]', 'Product Item Name', "trim|required|is_unique_update[pro_item.item_name.id.$id]",
            array('is_unique_update' => 'This Product Item Name is already in use other')
        );


//        $this->form_validation->set_rules('form[pro_type]', 'Product Type Name', "trim|required|is_unique_update[pro_type.pro_type.id.$id]",
//            array('is_unique_update' => 'This Product Type Name is already in use other user')
//        );

        $result = new stdClass();


        if ($this->form_validation->run() != FALSE) {

            if ($this->Product_item_model->update($id)) {
                $this->session->set_flashdata('msg_done', 'Successfully Data Saved');
            } else {
                $this->session->set_flashdata('msg_err', 'Something Wrong.Try Again');
            }
//            redirect(base_url() . 'Master/Product_item/view');

        } else {
            if ($this->input->post('btn')) {
                $result->post = $this->input->post('form');
                $data['item_model'] = $this->Product_item_model->load_model_search_by_brand_name($result->pro_brand_id);
            }
        }

        $result = $this->Product_item_model->getById($id);


        if (is_object($result)) {

            $data['type_list']  = $this->Product_type_model->getAll();
            $data['brand_list']  = $this->Product_brand_model->getAll();
            $data['item_model'] = $this->Product_item_model->load_model_search_by_brand_name($result->pro_brand_id);
            $data['maxID'] = $result->sysid;

            $data['view'] = 'product/item/add';
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

    function load_model_search_by_brand_name($key)
    {
        $result['data']= $this->Product_item_model->load_model_search_by_brand_name($key);
        $this->load->view('product/item/_ajax_load_product_model', $result);
    }

    function get_data_like_statement($key)
    {
        $result['data']= $this->Product_item_model->get_data_like_statement($key);
        $this->load->view('product/item/_ajax', $result);
    }




} 