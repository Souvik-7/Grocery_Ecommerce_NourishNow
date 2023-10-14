<?php
    session_start();
    include_once "php/config.php";
    $id = $_SESSION['user_id'];
    $order_id = $_SESSION['order_id'];
    $grand_total = $_SESSION['grand_total']; 
    $sql = mysqli_query($con, "SELECT * FROM users WHERE id = '{$id}'");
    $result2 = mysqli_fetch_assoc($sql);
    $fname = $result2['fname'];
    $lname = $result2['lname'];
     $sql2 = mysqli_query($con, "SELECT * FROM order_document WHERE user_id = '{$id}'");
    /* $result = mysqli_fetch_assoc($sql2);  */

  if(mysqli_num_rows($sql2) > 0)
  {
  	$row1 = mysqli_fetch_assoc($sql2);
  	$address = $row1['address'];
  	$state = $row1['state'];
  	$pincode = $row1['pincode'];
  }
  else
  {
  	$address = " ";
  	$state = " ";
  	$pincode = " ";
  }
    if(isset($_POST['submit'])){
      $address = $_POST['address'];
      $pincode = $_POST['pincode'];
      $state = $_POST['state'];
      $ran_id = rand(time(), 100000000);
      $sql4 = mysqli_query($con, "INSERT INTO order_document (user_id,order_id ,address,payment_type,total_price,payment_status,order_status,ship_order_id,pincode,state,added_on)  VALUES ('{$id}','{$order_id}','{$address}','COD','{$grand_total}','pending','pending','{$ran_id}','{$pincode}','{$state}',now())");
      if($sql4){
        echo "<script>alert('Order Placed Successfully!');</script>";
        header("Location: index.php");
      }
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="CSS/address1.css">
    <style>
      /* Add additional styles here if needed */
    </style>
</head>
<body>
<form action="#" method="post">
  <div class="main-container">
    
      <div class="container">
        <div class="address-section">
          <h2>Welcome, <span style="color: brown;"><?php echo $fname; ?></span> enter your address to continue.</h2>
          <div class="form-group">
            <label for="landmark">Landmark*</label>
            <input type="text" id="landmark" name="address" placeholder="Street No./ House No./ Building/ Street Name" required style="font-size: 1rem;" value="<?php echo $address?>">
          </div>
          <div class="form-group">
            <label for="area">Area*</label>
            <input type="text" id="area" name="state" placeholder="Area / City/ State" value="<?php echo $state; ?>" required style="font-size: 1rem;">
          </div>
          <div class="form-group">
            <label for="pincode">Pin Code*</label>
            <input type="number" id="pincode" name="pincode" min="700001" max="743711" value="<?php echo $pincode;?>" required style="font-size: 1rem; height: 2rem;" >
          </div>
        </div>
        <div class="payment-section">
          <h2 style="color:green;">Payment Details</h2>
          <div class="form-group payment-mode">
            <label for="payment-mode" style="font-size: 1.2rem;">Payment Mode</label>
            <select id="payment-mode" style="font-size: 1rem;">
              <option value="cash" selected="">Cash on Delivery</option>
              <option value="upi" disabled>UPI</option>
              <option value="cards" disabled>Cards</option>
              <option value="mobile-banking" disabled>Mobile Banking</option>
            </select>
          </div>
        </div>
        <div class="save"><center><button class="save-button" name="submit">Save</button></center></div>
      </div>
    
  </div>
</form>
</body>
</html>
