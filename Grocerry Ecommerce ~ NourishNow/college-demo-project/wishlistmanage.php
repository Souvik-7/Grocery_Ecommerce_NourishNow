<?php
session_start();
include('php/config.php');
$user_id = $_SESSION['user_id'];
     if(isset($_GET['$removid']))
    {
        $addid = $_GET['$removid'];
        $sql="SELECT * FROM wishlist WHERE product_id='$addid' AND user_id='$user_id'";
        $sql_run = mysqli_query($con, $sql);
        $rowcount=mysqli_num_rows($sql_run);
        if($rowcount>0){
            $sql = "DELETE FROM wishlist WHERE product_id = '$addid' AND user_id = '$user_id'";
            $sql_run = mysqli_query($con, $sql);
            if($sql_run)
            {
                 echo "<script>window.location.href='wishlist.php';</script>"; 
            }
            else
            {
                echo "<script>alert('Cannot Remove Item');</script>";
            }
        }
        else{
            echo "<script>alert('Item Not Found');</script>";
        }
    }
    if(isset($_GET['$emptyid']))
    {
        $emptyid=$_GET['$emptyid'];
        $sql = "DELETE FROM wishlist WHERE user_id = '$emptyid'";
        $sql_run = mysqli_query($con, $sql);
        if($sql_run)
        {
             echo "<script>window.location.href='wishlist.php';</script>"; 
        }
        else
        {
            echo "<script>alert('Cannot Remove Item');</script>";
        }
    }
?>