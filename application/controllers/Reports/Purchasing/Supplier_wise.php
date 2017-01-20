<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 8/18/15
 * Time: 11:45 AM
 */

class Supplier_wise extends CI_Controller{

    function __construct()
    {
        parent::__construct();

        $this->permissions = $this->session->userdata('supplier_wise_d');

        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');

        $this->load->model('Supplier_list_model');
        $this->load->model('Supplier_wise_model');

    }


    public function view(){

        if ($this->permissions == 7 || $this->permissions == 1 || $this->permissions == 3 || $this->permissions == 5) {

        $suppler=$this->Supplier_list_model->getSupplierAll();

        foreach($suppler as &$order){
            $order->order = $this->Supplier_wise_model->getAll($order->id);

            foreach($order->order as $item){
                $item->itemName = $this->Supplier_wise_model->getPurchaseItemByOrderBySysId($item->sysid);
            }
//
        }

        if($this->input->post('download') != null){
            if ($this->permissions == 7 || $this->permissions == 2 || $this->permissions == 3 || $this->permissions == 6) {
            $suppler=$this->Supplier_list_model->getSupplierAll();

            foreach($suppler as &$order){
                $order->order = $this->Supplier_wise_model->getAll($order->id);

                foreach($order->order as $item){
                    $item->itemName = $this->Supplier_wise_model->getPurchaseItemByOrderBySysId($item->sysid);
                }
//
            }


            $data['suppler']=$suppler;
            $data['itemName']=$item;

            $this->report_download('reports/purchasing/print_supplier_wise_report',$data,date("Y-m-d").'-Purchase_Supplier_Wise_Detailed_Report');
        } else {
            $data['view'] = 'errors/cus_error';
            $this->load->view('inc/body', $data);

        }

        }


//        $orders = $this->Supplier_wise_model->getAll();

//         echo '<pre>';
//          print_r($suppler);
//         echo '</pre>';


        $data['suppler']=$suppler;
        $data['itemName']=$item;

        $data['view']='reports/purchasing/supplier_wise';
        $this->load->view('inc/body',$data);

        } else {
            $data['view'] = 'errors/cus_error';
            $this->load->view('inc/body', $data);

        }

    }

    public function print_report(){
        if ($this->permissions == 7 || $this->permissions == 4 || $this->permissions == 5 || $this->permissions == 6) {
        $suppler=$this->Supplier_list_model->getSupplierAll();

        foreach($suppler as &$order){
            $order->order = $this->Supplier_wise_model->getAll($order->id);

            foreach($order->order as $item){
                $item->itemName = $this->Supplier_wise_model->getPurchaseItemByOrderBySysId($item->sysid);
            }
//
        }


        $data['suppler']=$suppler;
        $data['itemName']=$item;

//        $data['result'] = $result;
        //this data will be passed on to the view
//        $data['the_content']='mPDF and CodeIgniter are cool!';

//load the view, pass the variable and do not show it but "save" the output into $html variable
        $html=$this->load->view('reports/purchasing/print_supplier_wise_report', $data, true);

//this the the PDF filename that user will get to download
        $pdfFilePath = date("Y-m-d")."-Purchase_Supplier_Wise_Detailed_Report.pdf";

//load mPDF library
        $this->load->library('pdf');
//actually, you can pass mPDF parameter on this load() function
        $pdf = $this->pdf->load();
//generate the PDF!
        $pdf->WriteHTML($html);
//offer it to user via browser download! (The PDF won't be saved on your server HDD)
        $pdf->Output($pdfFilePath, "I");
//        $pdf->Output($pdfFilePath, "D");
//        $pdf->Stream($pdfFilePath);
        } else {
            $data['view'] = 'errors/cus_error';
            $this->load->view('inc/body', $data);

        }



    }

    function report_download($path,$data,$file_name){
        $result=$data;
        ob_start();
//        $this->load->view($path,array('records'=>$data ));
        $this->load->view($path,$result );
        $content = ob_get_contents();
        ob_clean();
        header("Content-type: application/vnd.ms-excel");
        header("Content-Disposition: attachment; filename=$file_name.xls");
        echo $content;
        exit();
    }

} 