<?php
session_start();
include_once "php/config.php";
$user_id = $_SESSION['user_id'];
if (isset($_POST['itemId']) && isset($_POST['action'])) {
    $itemId = $_POST['itemId'];
    $action = $_POST['action'];
    // Insert Cart item into the database
     if ($action === 'add') {
        $sql="SELECT * FROM cart WHERE productid='$itemId'";
        $result=mysqli_query($con,$sql);
        $rowcount=mysqli_num_rows($result);
        if($rowcount>0){

            echo 'success';
        }else{
            // Perform any necessary validation or data retrieval here
            // Insert the item into the wishlist table
            $query = "INSERT INTO cart (productid, user_id,qty,added_on) VALUES (?, $user_id, 1,NOW())";
            $stmt = $con->prepare($query);
            $stmt->bind_param("i", $itemId);
            if ($stmt->execute()) {
                echo 'success';
            } else {
                echo 'error';
            }
        }
    }
    
    // Delete cart item from database
/*     if ($action === 'remove') {
        $query = "DELETE FROM cart WHERE productid='$itemId' AND user_id = '$user_id'";
        $stmt = $con->prepare($query);
        $stmt->bind_param("i", $itemId);
        if ($stmt->execute()) {
            echo 'success';
        } else {
            echo 'error';
        }
    } */
    // Update cart item quantity in database
/*     if ($action === 'update') {
        $qty = $_POST['qty'];
        $query = "UPDATE cart SET qty= $qty WHERE productid='$itemId' AND user_id = '$user_id'";
        $stmt = $con->prepare($query);
        $stmt->bind_param("ii", $qty, $itemId);
        if ($stmt->execute()) {
            echo 'success';
        } else {
            echo 'error';
        }
    } */
}
else {
    echo 'Invalid request';
}