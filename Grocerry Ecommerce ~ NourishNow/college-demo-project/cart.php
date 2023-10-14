<?php
include_once "php/config.php";
include_once "nav.php";
$user_id = $_SESSION['user_id'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="CSS/cart.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<!-- cart-main-area start -->


<!-- Table heading -->
  <div class="main_container">
    <h1><center>Your Shopping Cart</center><!-- Home<i class="fa fa-angle-right" aria-hidden="true"></i> --></h1>
    <table class="product-table">
      <thead>
        <tr>
          <th>PRODUCTS</th>
          <th>NAME OF PRODUCTS</th>
          <th>PRICE</th>
          <th>QUANTITY</th>
          <th>TOTAL</th>
          <th>REMOVE</th>
        </tr>
      </thead>
      <!-- Product Details -->
      <tbody><?php
                  $sql = "SELECT * FROM cart WHERE user_id = '$user_id'";

                  $sql_run = mysqli_query($con, $sql);
                  $grand_total = 0;
                  if(mysqli_num_rows($sql_run) > 0)
                    {
                      
                      foreach($sql_run as $sql2) :
                        $qty = $sql2['qty'];
                        $prod_id = $sql2['productid'];
                        $products = "SELECT * FROM product WHERE id = '$prod_id'";
                        $products_run = mysqli_query($con, $products);
                        $proditems = mysqli_fetch_assoc($products_run);
                        $price=$proditems['price'];
                        $grand_total = $grand_total + ($qty * $price);
              ?>
        <div class="product">
          <tr><div class="product_image"><td><img src="../admin/images/picture/<?php echo $proditems['image']; ?>" alt="Product 1"></td></div>
            <div class="product_info"><td><?= $proditems['name']; ?></td></div>
            <div class="product_price"><td><?= $proditems['price']; ?></td></div>
            <div class="product_quantity" style="display:flex;  justify-content: space-between;"><td><form action="managecart.php?$updateid=<?php echo $proditems['id']; ?> " method="post"><input type="number" name="qty" value="<?php echo $qty; ?>" min="1" max="<?php echo $proditems['qty']; ?>" style="font-size: 2.1rem; width: 4.5rem; margin-left: 2.5rem; background-color:floralwhite; border-radius: .5rem;
            border:1px solid;"><button type="submit" name="update" class="update-btn" style="background-color: #00c400; border: .1px solid black; border-radius: .2rem; padding: .2rem 1rem;  cursor: pointer; margin-left: 8rem; text-decoration:none;  color: white;">Add<!-- <i class="fa fa-refresh" aria-hidden="true"></i> --></button></form></td></div>
            <div class="product_total"><td ><?php echo $qty*$price ; ?></td></div>
            <div class="product_remove"><td><a href="managecart.php?$removeid=<?php echo $proditems['id']; ?> "><button class="remove-btn"><i class="fa fa-trash-o" aria-hidden="true"></i></button></a></td></div>
          </tr>
        </div>
        <?php
                                    endforeach;
                                }
                                $_SESSION['grand_total'] = $grand_total;
                                ?>
 

        <!-- Add more product rows as needed -->

      </tbody>
      <tr>
        <td colspan='4'>Grand Total  : </td>
        <td colspan='2'>₹ <?= $grand_total?></td>
      </tr>
    </table>
  </div>


<!-- cart-main-area end -->

<!-- footer area start-->
<!-- <div class="buy"><button><a href="checkout.php?$checkoutid= ">Proceed To Buy<i class="fa fa-credit-card" aria-hidden="true"></i></a>
</button></div> -->
<div class="bottom-bar">
      <button class="con_shp-button"><a href="allproduct.php"style=" text-decoration:none;  font-size:2rem"><b>Continue Shopping</b></a></button>
      <button class="proceed-button"><a href="checkout.php?$checkoutid=<?php echo $user_id; ?> "style=" text-decoration:none; color: white; font-size:2rem"><b>Proceed to Buy</b></a></button>
</div>

</body>
</html>