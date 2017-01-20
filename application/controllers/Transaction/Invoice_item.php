<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 7/23/15
 * Time: 1:21 PM
 */

class Invoice_item extends CI_Controller{

    function __construct()
    {
        parent::__construct();

        $this->permissions = $this->session->userdata('invoice_item');

        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');

        $this->load->model('Product_item_model');
        $this->load->model('Purchase_item_model');
        $this->load->model('Invoice_item_model');

    }

    function add(){

        if ($this->permissions == 7 || $this->permissions == 1 || $this->permissions == 3 || $this->permissions == 5) {
//        print_r($this->input->post('form')) ;

        $this->form_validation->set_rules('form[i_code]', 'Invoice Code', 'trim|required|is_unique[invoice_item.i_code]',
            array('is_unique' => 'This Invoice Code is already in use')
        );
        $this->form_validation->set_rules('form[cus_id]', 'Customer Name', 'trim|required');

        $result = new stdClass();


        if ($this->form_validation->run() != FALSE) {

            $this->db->trans_begin();
            $this->Invoice_item_model->insert_data_invoice_item();
            $this->Invoice_item_model->insert_invoice_item_details();
            $this->Invoice_item_model->insert_invoice_item_serial();
//
            if ($this->db->trans_status() === FALSE) {
                $this->session->set_flashdata('msg_err', 'Something Wrong.Try Again');
                $this->db->trans_rollback();
            }else{
                $this->session->set_flashdata('msg_done', 'Successfully Data Saved');
                $this->db->trans_commit();
            }

//            redirect(current_url());


        } else {
            if ($this->input->post('btn')) {

                $result = (object)$this->input->post('form');
            }
        }

        $data['product_item_list'] = $this->Product_item_model->getAll();

        $data['maxID'] = $this->Invoice_item_model->getMax();
        $data['result'] = $result;


        $data['view']='item/invoice/add';
        $this->load->view('inc/body',$data);

        } else {
            $data['view'] = 'errors/cus_error';
            $this->load->view('inc/body', $data);

        }
    }

    public function view(){
        $data['invoice_list'] = $this->Invoice_item_model->getAll();
        $data['view']='item/invoice/view';
        $this->load->view('inc/body',$data);
    }

    public function viewDetail($key){
        $data_s = $this->Invoice_item_model->getDetailInvoice($key);

        foreach($data_s as &$data1){
            $data1->details = $this->Invoice_item_model->getInvoiceItemDetails($key);

        }

        $data['list']=$data_s;
//        echo $this->db->last_query();
//        echo '<pre>';
//        print_r($data);
//        echo '</pre>';
        $data['view']='item/invoice/detail_view';
        $this->load->view('inc/body',$data);
    }


    function get_customer_data_like_statement($key)
    {
        $result['data']= $this->Invoice_item_model->get_customer_data_like_statement($key);
        $this->load->view('item/invoice/_ajax_customer_data', $result);

    }

    function get_serial_number_by_item_id($key)
    {
        $result['data']= $this->Invoice_item_model->get_serial_number_by_item_id($key);
        $this->load->view('item/invoice/_ajax_item_serial_data', $result);
    }


    function delete($id)
    {
        $result = $this->Invoice_item_model->delete($id);

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