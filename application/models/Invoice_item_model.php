<?php

/**
 * Created by PhpStorm.
 * User: Web
 * Date: 7/29/15
 * Time: 4:31 PM
 */
class Invoice_item_model extends CI_Model
{

    function getMax()
    {
        $maxid = $this->db->query('SELECT id as maxid FROM invoice_item order by id desc limit 1')->row()->maxid;
        return ($maxid >= 1 || $id == 1) ? $maxid + 1 : 1;
    }

    function getAll(){


        return  $this->db->query("Select invoice_item.*, user.name From invoice_item, user where invoice_item.cus_id=user.id")->result();

//        return $this->db->from('invoice_item','user')->where('invoice_item', 'cus_id')->where('user', 'id')->get()->result();

//  Select
//  invoice_item.*,
//  user.name
//  From
//  invoice_item,
//  user
//  where invoice_item.cus_id=user.id



    }

    function get_customer_data_like_statement($key)
    {
        return $this->db->from('user')->where('type', 'Customer')->like('name', $key)->get()->result();
    }

    function get_serial_number_by_item_id($key)
    {

        return $this->db->from('purchase_item_serial')->where('p_id', $key)->where('sold', '0')->where('damage', '0')->get()->result();

    }

    function insert_data_invoice_item()
    {
        $data = $this->input->post('form');

        unset($data['cus_name']);
        $data['status'] = 'No';

//        echo '<pre>';
//        print_r($data);
//        echo '</pre>';


        return $this->db->insert('invoice_item', $data) ? TRUE : FALSE;

    }

    function insert_invoice_item_details()
    {


        $datas = $this->input->post('product');
        $data = $datas['Noserial'];

        foreach ($data as $k => $key) {
            $this->insert_update_product_item($data[$k]['item_id'],$data[$k]['qty']);
        }

//        echo '<pre>';
//        print_r($data);
//        echo '</pre>';

        return $this->db->insert_batch('invoice_item_details', $data) ? TRUE : FALSE;


    }

    function insert_invoice_item_serial()
    {
        $datas = $this->input->post('product');
        $data = $datas['serial'];

        foreach ($data as $k => $key) {
            $in_details[]=array(
                'invoice_id'=>$data[$k]['invoice_id'],
                'item_id'=>$data[$k]['item_id'],
                'has_serial'=>$data[$k]['has_serial'],
                'qty'=>$data[$k]['qty']
            );

            for($i=0;$i < count($data[$k]['s_no']);$i++){
                $in_serial_key[]=array(
                    'key'=>$data[$k]['s_no'][$i],
                    'sold'=>$data[$k]['invoice_id']
                );
            }

            $this->insert_update_product_item($data[$k]['item_id'],$data[$k]['qty']);
        }

        $this->db->insert_batch('invoice_item_details',$in_details) ? TRUE : FALSE;


        /*update sold serial number*/
        foreach ($in_serial_key as $k => $key) {

            for($x=0;$x < count($in_serial_key[$k]['key']);$x++){
                $data = array(
                    'sold' => $in_serial_key[$k]['sold']
                );
                $this->db->where('key', $in_serial_key[$k]['key'])->update('purchase_item_serial', $data);
            }
        }

    }


    function insert_update_product_item($item_id, $item_qty)
    {

        $query = $this->db->from('pro_item')->select_sum('abl_qty')->where('id', $item_id)->get()->first_row();

            $data = array(
                'abl_qty' => $query->abl_qty - $item_qty
            );

            $this->db->where('id', $item_id)->update('pro_item', $data);

//        echo '<pre>';
//        print_r($data);
//        echo '</pre>';

    }


    function update_qty_product_item($item_id, $item_qty)
    {

        $query = $this->db->from('pro_item')->select_sum('abl_qty')->where('id', $item_id)->get()->first_row();

        $data = array(
            'abl_qty' => $query->abl_qty + $item_qty
        );

        $this->db->where('id', $item_id)->update('pro_item', $data);

    }

    function delete($id){

//        $serial_count=0;

        $query = $this->db->from('invoice_item')->where('id', $id)->get()->first_row();
        $in_id=$query->sysid;

//        echo "SELECT count(*) as maxid from return_item_details ,purchase_item_serial  where return_item_details.invoice_id ='$in_id' and purchase_item_serial.`return`='$in_id' or purchase_item_serial.damage='$in_id'";

        $maxid=$this->db->query("SELECT count(*) as maxid from return_item_details ,purchase_item_serial  where return_item_details.invoice_id ='$in_id' or purchase_item_serial.`return`='$in_id' or purchase_item_serial.damage='$in_id'")->row()->maxid;

        if($maxid <= 0){
//            echo 'in';
            $data=$this->db->from('invoice_item_details')->where('invoice_id', $in_id)->order_by("id", "desc")->get()->result();

            foreach ($data as $k =>  $row) {
//              echo $k+1;
//              echo $row->item_id;

                if($row->has_serial == 'Yes'){
                    $data = array(
                        'sold' => '0'
                    );
                    $this->db->where('p_id', $row->item_id)->where('sold', $row->invoice_id)->update('purchase_item_serial', $data);

//                    $this->db->update('purchase_item_serial', $data, array('p_id' => $row->item_id,'p_id' => $row->item_id));

//                    $serial_count = $this->db->query("SELECT count(*) as maxid FROM purchase_item_serial where p_id='$row->item_id' AND sold='$row->invoice_id' ")->row()->maxid;
//                  echo $serial_count;
                    $this->update_qty_product_item($row->item_id,$row->qty);
                }else{
                    $this->update_qty_product_item($row->item_id,$row->qty);
                }

            }

//            echo '<pre>';
//                print_r($data);
//            echo '</pre>';


           $this->db->delete( 'invoice_item'  ,"id=$id");
//           $this->db->delete( 'invoice_item_details'  ,"invoice_id=$in_id");
           $this->db->delete('invoice_item_details', array('invoice_id' => $in_id));
           return true;
        }else{
            echo 'out';
            return false;
        }

//
        return false;
    }


    function getDetailInvoice($key){

        return $this->db->from('invoice_item')
            ->join("user" , " user.id = invoice_item.cus_id " )

            ->select("invoice_item.sysid ,invoice_item.i_code , invoice_item.i_date , invoice_item.date  " )
            ->select("user.name" )

            ->where("invoice_item.sysid",$key)
            ->get()->result();


    }

    function getInvoiceItemDetails($key){

        return $this->db->from('invoice_item_details')
            ->join("pro_item" , " pro_item.id = invoice_item_details.item_id " )

            ->select("invoice_item_details.has_serial ,invoice_item_details.qty , invoice_item_details.invoice_id  " )
            ->select("pro_item.item_name" )

            ->where("invoice_item_details.invoice_id",$key)
            ->get()->result();


    }


} 