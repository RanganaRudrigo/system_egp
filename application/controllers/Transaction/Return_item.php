<?php

/**
 * Created by PhpStorm.
 * User: Web
 * Date: 7/23/15
 * Time: 1:22 PM
 */
class Return_item extends CI_Controller
{

    function __construct()
    {
        parent::__construct();

        $this->permissions = $this->session->userdata('return_item');

        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');

        $this->load->model('Product_item_model');
        $this->load->model('Purchase_item_model');
        $this->load->model('Invoice_item_model');
        $this->load->model('Return_item_model');

    }


    function add()
    {

        if ($this->permissions == 7 || $this->permissions == 1 || $this->permissions == 3 || $this->permissions == 5) {
        $this->form_validation->set_rules('form[re_code]', 'Return Code', 'trim|required|is_unique[return_item.sysid]',
            array('is_unique' => 'This Invoice Code is already in use')
        );
        $this->form_validation->set_rules('form[re_per_name]', 'Return Person Name', 'trim|required');

        $result = new stdClass();


        if ($this->form_validation->run() != FALSE) {

//        echo '<pre>';
//        print_r( $this->input->post('product[No_serial]'));
//        echo '</pre>';
//        echo '<pre>';
//        print_r( $this->input->post('product[serial]'));
//        echo '</pre>';

        $this->db->trans_begin();
        $this->Return_item_model->insert_data_return_item();
        $this->Return_item_model->insert_no_serial_return_item();
        $this->Return_item_model->insert_serial_return_item();

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


        $data['invoice_list'] = $this->Invoice_item_model->getAll();

        $data['maxID'] = $this->Return_item_model->getMax();
        $data['result'] = $result;


        $data['view'] = 'item/return/add';
        $this->load->view('inc/body', $data);

        } else {
            $data['view'] = 'errors/cus_error';
            $this->load->view('inc/body', $data);

        }
    }

    public function view(){
        $data['list'] = $this->Return_item_model->getAll();
        $data['view']='item/return/view';
        $this->load->view('inc/body',$data);
    }

    public function viewDetail($in_id,$rt_id){
        $return_basic = $this->Return_item_model->getReturnByID($rt_id);
        $data_wothout = $this->Return_item_model->getReturnItemWithOutSerial($rt_id);//
        $data_s_damage = $this->Return_item_model->getReturnItemWithSerialDamage($in_id);//
        $data_s_return = $this->Return_item_model->getReturnItemWithSerialReturn($in_id);//
//        foreach($data_s as &$data1){
//            $data1->details = $this->Invoice_item_model->getInvoiceItemDetails($key);
//        }

        $data['list']=$return_basic;
        $data['out_s']=$data_wothout;
        $data['s_damage']=$data_s_damage;
        $data['s_return']=$data_s_return;
//        echo $this->db->last_query();
//        echo '<pre>';
//        print_r($data);
//        echo '</pre>';

        $data['view']='item/return/detail_view';
        $this->load->view('inc/body',$data);
    }



    function get_searchAllInvoiceData($key)
    {
        $data = $this->Return_item_model->get_searchAllInvoiceData($key);

//        print_r($data);
//        $this->db->last_query();

        for ($i = 0; $i < count($data); $i++) {

            if($data[$i]->has_serial == 'Yes'){

                $url='Transaction/Return_item/get_serial_number_by_invoice_id/';
                $s_total=$this->Return_item_model->getDamageReturnTotalWithSerial($data[$i]->sysid,$data[$i]->item_id);
                $bal=($data[$i]->qty-$s_total);
//                echo $s_total;
//                echo $data[$i]->item_id;
//                echo $data[$i]->sysid;
                echo ' <tr class="gradeU">';
                echo '<td>'.$data[$i]->item_code .'</td>';
                echo '<td>'.$data[$i]->item_name.   '<button class="btn btn-default" type="button" name="btn" value="submit" style="float:right;" onclick="searchInvoicedItem_return(\''.$data[$i]->proID.'\',\''.$data[$i]->sysid.'\',\''.$url.'\','.$i.');"><i class="fa  fa fa-reply "></i> &nbsp;Item Return </button>' .'</td>';
                echo '<td>'.$data[$i]->qty .'</td>';
                echo '<td> - </td>';
                echo '<td> - </td>';
                echo '<td><input type="text" name=""  id="ret_'.$i.'" disabled class="form-control input-sm" required onkeypress="return NumOnly(this,event);" ></td>';
                echo '<td><input type="text" name="" id="dmg_'.$i.'" disabled class="form-control input-sm" required onkeypress="return NumOnly(this,event);" ></td>';
                echo '  </tr>';

            }else{
                $s_total=$this->Return_item_model->getDamageReturnTotalWithOutSerial($data[$i]->sysid,$data[$i]->item_id);
                $bal=($data[$i]->qty-$s_total);
//                echo $s_total;
//                echo $data[$i]->item_id;
//                echo $data[$i]->sysid;
            echo ' <tr class="gradeU">';
            echo '<td>'.$data[$i]->item_code .'</td>';
            echo '<td>'.$data[$i]->item_name .'</td>';
            echo '<td>'.$data[$i]->qty .'</td>';
            echo '<td>'.$s_total .'</td>';
            echo '<td>'.$bal .'</td>';
//            echo '<input id="bal'.$i.'" type="hidden" value="'.$bal .'" >';
            echo '<input id="item_qty'.$i.'" type="hidden" value="'.$data[$i]->qty .'" name="product[No_serial]['.$data[$i]->sysid.']['.$data[$i]->item_id.'][qty]">';
            echo '<input id="item_qty'.$i.'" type="hidden" value="'.$data[$i]->item_id .'" name="product[No_serial]['.$data[$i]->sysid.']['.$data[$i]->item_id.'][item_id]">';
            echo '<td><input type="text" name="product[No_serial]['.$data[$i]->sysid.']['.$data[$i]->item_id.'][re_qty]" id="return_item_qty'.$i.'" class="form-control input-sm" value="" required onkeypress="return NumOnly(this,event);" onkeyup="BalanceInvoiceQty(this,this.value,'.$bal .','.$i.');"></td>';
            echo '<td><input type="text" name="product[No_serial]['.$data[$i]->sysid.']['.$data[$i]->item_id.'][dam_qty]" id="damage_item_qty'.$i.'" class="form-control input-sm" value="" required onkeypress="return NumOnly(this,event);" onkeyup="BalanceInvoiceQty(this,this.value,'.$bal .','.$i.');"></td>';
            echo '  </tr>';

            }
        }

    }



    function get_serial_number_by_invoice_id($proID,$InID)
    {
        $result['data']= $this->Return_item_model->get_serial_number_by_invoice_id($proID,$InID);
        $this->load->view('item/return/_ajax_item_serial_data', $result);

    }

}