<?php
session_start();
include('php/config.php');
$user_id = $_SESSION['user_id'];
     if(isset($_GET['$checkoutid']))
    {
        $ran_id = rand(time(), 10000);
        $sql = "SELECT * FROM cart WHERE user_id = '$user_id'";

        $sql_run = mysqli_query($con, $sql);
        if(mysqli_num_rows($sql_run) > 0)
          {
            foreach($sql_run as $sql2) :
              $qty = $sql2['qty'];
              $prod_id = $sql2['productid'];
              $products = "SELECT * FROM product WHERE id = '$prod_id'";
              $products_run = mysqli_query($con, $products);
              $proditems = mysqli_fetch_assoc($products_run);
              $price = $proditems['price'];
              $total = $price * $qty;
              $quantity = $proditems['qty'];
                $newqty = $quantity - $qty;
                $update = "UPDATE product SET qty = '$newqty' WHERE id = '$prod_id'";
                $update_run = mysqli_query($con, $update);
                if($update_run)
                {
                    
                    $insert_quary = "INSERT INTO order_detail (product_id, order_id, user_id,qty,price,added_on) VALUES ('$prod_id', '$ran_id', '$user_id', '$qty', '$total', NOW())";
                    $insert_run = mysqli_query($con, $insert_quary);
                    $insert_quary2 = "INSERT INTO order_status (order_id, user_id, name, added_on) VALUES ('$ran_id', '$user_id', 'Processing', NOW())";
                    $insert_run2 = mysqli_query($con, $insert_quary2);
                    $checkoutid = $_GET['$checkoutid'];
                    $sql = "DELETE FROM cart WHERE productid = '$prod_id' AND user_id = '$user_id'";
                    $sql_run = mysqli_query($con, $sql);
                    if($sql_run)
                    {
                         echo "<script>window.location.href='checkout_1.php';</script>"; 
                    }
                    else
                    {
                        echo "<script>alert('Cannot Remove Item');</script>";
                    }
                }
                else
                {
                    echo "<script>alert('Cannot Update Item');</script>";
                }
            
            endforeach;
        }
        $_SESSION['order_id'] = $ran_id;

    }
?>