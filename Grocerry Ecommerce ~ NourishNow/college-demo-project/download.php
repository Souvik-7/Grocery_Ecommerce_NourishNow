<?php
require('vendor/autoload.php');
require('php/config.php');
$order_id=$_GET['order_id'];
$css=file_get_contents('CSS/pdf.css');
$html=file_get_contents('test.php');
$mpdf=new \Mpdf\Mpdf();
$mpdf->WriteHTML($css,1); 
$mpdf->WriteHTML($html,2);
$file=time().'.pdf';
$mpdf->Output($file,'D');
?>