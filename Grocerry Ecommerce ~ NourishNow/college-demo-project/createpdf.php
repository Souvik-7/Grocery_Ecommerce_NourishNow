<?php
require('vendor/autoload.php');
session_start();
require('php/config.php');
$order_id=$_GET['order_id']; 
$sql1="SELECT * FROM `order_document` WHERE order_id='$order_id'";
$result1=mysqli_query($con,$sql1);
$row1=mysqli_fetch_assoc($result1);
$user_id=$row1['user_id'];
$address=$row1['address'];
$grand_total=$row1['total_price'];
$state=$row1['state'];
$pincode=$row1['pincode'];
$invoice_id=$row1['ship_order_id'];
$invoice_date=$row1['added_on'];
$order_date=$row1['added_on'];
$order_id=$row1['order_id'];
$sql2="SELECT * FROM `users` WHERE id='$user_id'";
$result2=mysqli_query($con,$sql2);
$row2=mysqli_fetch_assoc($result2);
$fname=$row2['fname'];
$lname=$row2['lname'];
$name=$fname." ".$lname;
$email=$row2['email'];
$phone=$row2['mobile'];
$sql="SELECT * FROM `order_detail` WHERE order_id='$order_id'";
$result=mysqli_query($con,$sql);
$row=mysqli_fetch_assoc($result);
$css=file_get_contents('CSS/pdf.css');
$html='<div class="main-container">
        <div class="title"><b>Invoice </b></div>
            
            
    <div class="container">

        <div class="card">
            <b>Invoice Id :</b><span> '.$invoice_id.'</span><br>
            <b>Invoice Date :</b><span>'.$invoice_date.'</span>
        </div>
        <div class="card">
            <b>Order Id : </b><span>'.$order_id.'</span><br>
            <b>Order Date :</b><span>'.$order_date .'</span>
        </div>
    </div>
    <div class="container1">
        <div class="card1">
            <b>NourishNow </b><br>
            <b>Address :</b><span>Barabazar Strand Rd. ,</span><br>
            <b>City :</b><span>  Chandannagar,</span><br>
            <b>District :</b><span>  Hooghly </span><br>
            <b>Pincode :</b><span> 712136</span>
        </div>
        <div class="card1">
            <b>Billing Details</b><br>
            <b>Name :</b><span>'. $name.'</span><br>
            <b>Phone Number :</b><span>'. $phone.'</span><br>
            <b>Email :</b><span>'. $email.'</span><br>
            <b>Address :</b><span>'.$address.'</span><br>
            <b>state :</b><span>'.$state.'</span><br>
            <b>Pincode :</b><span>'. $pincode.'</span>
        </div>
    </div>
    <div class="table-card">
        <table class="table-container" style="    border: 1px solid black;
        border-collapse: collapse;">
            <thead>
              <tr>
                <th style="    border: 1px solid black;
                border-collapse: collapse;
            ">Product Name</th>
                <th style="    border: 1px solid black;
                border-collapse: collapse;
            ">Quantity</th>
                <th style="    border: 1px solid black;
                border-collapse: collapse;
            ">Total</th>
              </tr>
            </thead>';
            
            if(mysqli_num_rows($result) > 0){
                
                foreach($result as $row) :
                    $product_id=$row['product_id'];
                    $sql3="SELECT * FROM `order_detail` WHERE  order_id='$order_id' AND product_id='$product_id'";
                    $result3=mysqli_query($con,$sql3);
                    $row3=mysqli_fetch_assoc($result3);
                    $product_id_1=$row3['product_id'];
                    $quantity=$row3['qty'];                   
                    $price=$row3['price'];
                    $sql2="SELECT * FROM `product` WHERE id='$product_id_1'";
                    $result2=mysqli_query($con,$sql2);
                    $row2=mysqli_fetch_assoc($result2);
                    $product_name=$row2['name'];
                   
                    $html.='<tbody>
                    <tr>
                      <td style="    border: 1px solid black;
                      border-collapse: collapse;
                  ">'.$product_name.'</td>
                      <td style="    border: 1px solid black;
                      border-collapse: collapse;
                  ">'.$quantity.'</td>
                      <td style="    border: 1px solid black;
                      border-collapse: collapse;
                  ">'.$price.'</td>
                    </tr>';
                endforeach;
                $html.='<tr>
                <td colspan="2" style="    border: 1px solid black;
                border-collapse: collapse; align-items: right;
            ">Grand Total</td>
                <td style="    border: 1px solid black;
                border-collapse: collapse;
            ">'.$grand_total.'</td>
              </tr>

            </tbody>';
            }

    $html.='      </table>
    </div>
    <div class="end-container">

        <div class="end-card" style="align-item:right;">
            <p>NourishNow</p>

        </div>

    </div>
</div>';
$mpdf=new \Mpdf\Mpdf();
$mpdf->WriteHTML($css,1); 
$mpdf->WriteHTML($html,2);
$file=time().'.pdf';
$mpdf->Output($file,'D');
?><!--             <tbody>
              <tr>
                <td style="    border: 1px solid black;
                border-collapse: collapse;
            ">Product 1</td>
                <td style="    border: 1px solid black;
                border-collapse: collapse;
            ">2</td>
                <td style="    border: 1px solid black;
                border-collapse: collapse;
            ">$100.00</td>
              </tr>
              <tr>
                <td colspan="2" style="    border: 1px solid black;
                border-collapse: collapse; align-items: right;
            ">Grand Total</td>
                <td style="    border: 1px solid black;
                border-collapse: collapse;
            ">$150.00</td>
              </tr>

            </tbody> -->