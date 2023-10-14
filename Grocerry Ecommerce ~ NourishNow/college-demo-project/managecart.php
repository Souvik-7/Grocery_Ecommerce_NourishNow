<?php
session_start();
include('php/config.php');
$user_id = $_SESSION['user_id'];
     if(isset($_GET['$removeid']))
    {
        $removeid = $_GET['$removeid'];
        $sql = "DELETE FROM cart WHERE productid = '$removeid' AND user_id = '$user_id'";
        $sql_run = mysqli_query($con, $sql);
        if($sql_run)
        {
             echo "<script>window.location.href='cart.php';</script>"; 
        }
        else
        {
            echo "<script>alert('Cannot Remove Item');</script>";
        }
    }
    if(isset($_GET['$updateid']))
    {
         $qty = $_POST['qty']; 
         /* echo $qty; */
        $updateid = $_GET['$updateid'];
       /*  echo $updateid;
          $quary = "SELECT * FROM cart WHERE productid = '$updateid' AND user_id = '$user_id'";
        $quary_run = mysqli_query($con, $quary);
        $row = mysqli_fetch_array($quary_run); */
       // $qty = $row['qty'];
        
        /*$quantity = $qty + 1;
        $updateid = $_POST['updateid'];*/
        $sql = "UPDATE cart SET qty = '$qty' WHERE productid = '$updateid' AND user_id = '$user_id'";
        $sql_run = mysqli_query($con, $sql);
        if($sql_run)
        {
             echo "<script>window.location.href='cart.php';</script>"; 
        }
        else
        {
            echo "<script>alert('Cannot Update Item');</script>";
        } 
    }
    if(isset($_GET['$addid']))
    {
        $addid = $_GET['$addid'];
        $sql="SELECT * FROM wishlist WHERE  user_id='$addid'";
        $sql_run = mysqli_query($con, $sql);
        $rowcount=mysqli_num_rows($sql_run);
        if($rowcount>0){
            foreach($sql_run as $sql2) :
            $productid = $sql2['product_id'];
            $sql="SELECT * FROM cart WHERE productid='$productid' AND user_id='$user_id'";
            $sql_run = mysqli_query($con, $sql);
            $rowcount1=mysqli_num_rows($sql_run);
            if($rowcount1>0){
                continue;
            }
            else{
                $row = mysqli_fetch_array($sql_run);
                $productid = $row['product_id'];
                $productname = $row['product_name'];
                $productprice = $row['product_price'];
                $productimage = $row['product_image'];
                $sql = "INSERT INTO cart (productid, qty, user_id, added_on) VALUES ('$productid', '1', '$user_id',now())";
                $sql_run = mysqli_query($con, $sql);
            }
            endforeach;
            echo "<script>window.location.href='cart.php';</script>";

/*             $sql1="SELECT * FROM wishlist WHERE  user_id='$addid'";
            $sql1_run = mysqli_query($con, $sql1);
            $rowcount2=mysqli_num_rows($sql1_run);
            if($rowcount2 ==0)
            {
                 echo "<script>window.location.href='cart.php';</script>"; 
            }
            else
            {
                echo "<script>alert('Cannot Add Item');</script>";
            } */
        }
        else{
            echo "<script>alert('Item Not Found');</script>";
        }
    }
?>