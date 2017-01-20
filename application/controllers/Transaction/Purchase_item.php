<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 7/23/15
 * Time: 1:20 PM
 */

class Purchase_item extends CI_Controller{

    function __construct()
    {
        parent::__construct();

        $this->permissions = $this->session->userdata('purchase_item');

        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');

        $this->load->model('Product_item_model');
        $this->load->model('Purchase_item_model');

    }

    public function add(){

        if ($this->permissions == 7 || $this->permissions == 1 || $this->permissions == 3 || $this->permissions == 5) {

        $this->form_validation->set_rules('form[p_code]', 'Purchase Code', 'trim|required|is_unique[purchase_order.p_code]',
            array('is_unique' => 'This Purchase Code is already in use')
        );
        $this->form_validation->set_rules('form[supp_id]', 'Supplier Name', 'trim|required');




        $result = new stdClass();

        if ($this->form_validation->run() != FALSE) {

            $this->db->trans_begin();
            $this->Purchase_item_model->insert_purchase_order();
            $this->Purchase_item_model->insert_purchase_item();
            $this->Purchase_item_model->insert_purchase_item_serial();

            if ($this->db->trans_status() === FALSE) {
                $this->session->set_flashdata('msg_err', 'Something Wrong.Try Again');
                $this->db->trans_rollback();
            }else{
                $this->session->set_flashdata('msg_done', 'Successfully Data Saved');
                $this->db->trans_commit();
            }

            redirect(current_url());


        } else {
            if ($this->input->post('btn')) {

                $result = (object)$this->input->post('form');
            }
        }

        $data['product_item_list'] = $this->Product_item_model->getAll();

        $data['maxID'] = $this->Purchase_item_model->getMax();
        $data['result'] = $result;

//        echo '<pre>';
//        print_r( $this->input->post('form'));
//        echo '</pre>';
//        echo '<pre>';
//        print_r( $this->input->post('product')['serial']);
//        echo '</pre>';
//        echo '<pre>';
//        print_r( $this->input->post('product')['nonserial']);
//        echo '</pre>';


        $data['view']='item/purchase/add';
        $this->load->view('inc/body',$data);

        } else {
            $data['view'] = 'errors/cus_error';
            $this->load->view('inc/body', $data);

        }

    }



    public function view(){
//        $data['purchase_list'] = $this->Purchase_item_model->getAll();
        $purchase_list = $this->Purchase_item_model->getAll();
        foreach($purchase_list as &$list){
            if($list->has_serial == 'Yes'){
                $list->serial=$this->Purchase_item_model->get_serial_number_by_item_id_pre_id($list->item_id,$list->p_order_id);
           }
      }

        $data['purchase_list']=$purchase_list;

//        echo $this->db->last_query();
        $data['view']='item/purchase/view';
        $this->load->view('inc/body',$data);
    }


    function get_supplier_data_like_statement($key)
    {
        $result['data']= $this->Purchase_item_model->get_supplier_data_like_statement($key);
        $this->load->view('item/purchase/_ajax_supplier_data', $result);

    }


    function delete($id)
    {
        $result = $this->Purchase_item_model->delete($id);

        if ($result) {
            $this->session->set_flashdata('msg', 'Successfully Data Deleted');
            $this->view();
        } else {
            $this->session->set_flashdata('msg', "This invoice has some returns.You can't delete this invoice");
            $this->view();
//            show_404();
        }

    }


} 