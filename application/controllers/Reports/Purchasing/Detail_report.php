<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 8/14/15
 * Time: 9:37 AM
 */

class Detail_report extends CI_Controller{

    function __construct()
    {
        parent::__construct();

        $this->permissions = $this->session->userdata('purchasing_report_d');

        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');

        $this->load->model('Detail_report_model');

    }


    public function view(){

        if ($this->permissions == 7 || $this->permissions == 1 || $this->permissions == 3 || $this->permissions == 5) {

        $orders = $this->Detail_report_model->getAll();
        foreach($orders as &$order){
            $order->item = $this->Detail_report_model->getPurchaseItemByOrderBySysId($order->sysid);
        }

        if($this->input->post('download') != null){
            if ($this->permissions == 7 || $this->permissions == 2 || $this->permissions == 3 || $this->permissions == 6) {
            $orders = $this->Detail_report_model->getAll();
            foreach($orders as &$order){
                $order->item = $this->Detail_report_model->getPurchaseItemByOrderBySysId($order->sysid);
            }
            $data['result'] = $orders;

            $this->report_download('reports/purchasing/print_detail_report',$data,date("Y-m-d").'-Purchase_Detailed_Report');
            } else {
                $data['view'] = 'errors/cus_error';
                $this->load->view('inc/body', $data);

            }
        }

//        echo $this->db->last_query();

//        echo '<pre>';
//        print_r($orders);
//        echo '</pre>';

        $data['view']='reports/purchasing/detail_report';
        $data['orders']=$orders;
        $this->load->view('inc/body',$data);

        } else {
            $data['view'] = 'errors/cus_error';
            $this->load->view('inc/body', $data);

        }
    }

    public function print_report(){
        if ($this->permissions == 7 || $this->permissions == 4 || $this->permissions == 5 || $this->permissions == 6) {
        $orders = $this->Detail_report_model->getAll();
        foreach($orders as &$order){
            $order->item = $this->Detail_report_model->getPurchaseItemByOrderBySysId($order->sysid);
        }
        $data['result'] = $orders;
        //this data will be passed on to the view
//        $data['the_content']='mPDF and CodeIgniter are cool!';

//load the view, pass the variable and do not show it but "save" the output into $html variable
        $html=$this->load->view('reports/purchasing/print_detail_report', $data, true);

//this the the PDF filename that user will get to download
        $pdfFilePath = date("Y-m-d")."-Purchase_Detailed_Report.pdf";

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