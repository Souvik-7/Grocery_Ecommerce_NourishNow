<?php
session_start();
include_once "php/config.php";
$user_id = $_SESSION['user_id'];
// Assuming you have already connected to your database

if (isset($_POST['itemId']) && isset($_POST['action'])) {
  $itemId = $_POST['itemId'];
  $action = $_POST['action'];

  // Insert wishlist item into the database
  if ($action === 'add') {
    $sql="SELECT * FROM wishlist WHERE product_id='$itemId' AND user_id='$user_id'";
    $result=mysqli_query($con,$sql);
    $rowcount=mysqli_num_rows($result);
    if($rowcount>0){
      echo 'success';
    }else{ 
    // Perform any necessary validation or data retrieval here

    // Insert the item into the wishlist table
    $query1 = "INSERT INTO wishlist (product_id, user_id,added_on) VALUES (?, $user_id, NOW())";
    $stmt = $con->prepare($query1);
    
    $stmt->bind_param("i", $itemId);
  
    if ($stmt->execute()) {
      echo 'success';
    } else {
      echo 'error';
    }
  }
  }
}
else {
  echo 'Invalid request';
}
?>
