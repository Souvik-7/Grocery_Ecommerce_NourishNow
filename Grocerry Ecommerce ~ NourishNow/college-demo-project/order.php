<?php
        
        include_once "php/config.php";
        include_once "nav.php";
        $id = $_SESSION['user_id'];

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="CSS/order_sts.css">
</head>
<body>
  <div class="container">
    <b>
    <div class="status-section">
      <h2>Status</h2>
      <table>
        <thead>
          <tr>
            <th>Order ID</th>
            <th>Address</th>
            <th>Payment Mode</th>
            <th>Order Status</th>
            <th>Invoice</th>
          </tr>
        </thead>
        <?php 
        $sql2 = "SELECT * FROM order_document WHERE user_id = '$id'";
        $result2 = mysqli_query($con,$sql2);
        /* $row2 = mysqli_fetch_assoc($result2); */
        if(mysqli_num_rows($result2) > 0)
        {
          foreach($result2 as $row2) :
          
            $order_id = $row2['order_id'];
            $address = $row2['address'];
            $pincode = $row2['pincode'];
            $state = $row2['state'];
            $full_address = $address . " , " . $state . " ," . $pincode;
            $payment_type = $row2['payment_type'];
            $order_status = $row2['order_status'];
            ?>
            <tbody>
              <tr>
                <td><?= $order_id; ?></td>
                <td><?= $full_address; ?></td>
                <td><?= $payment_type; ?></td>
                <td><?= $order_status; ?></td>
                <td><a href="createpdf.php?order_id=<?php echo $order_id;?>"><button>pdf</button></a></td>
              </tr>
            </tbody>
            <?php
          endforeach;
        }
        ?>
      </table>
    </div>
    </b>
  </div>
</body>
</html>
