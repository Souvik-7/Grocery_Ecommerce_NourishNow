<?php
session_start();
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
    <link rel="stylesheet" href="CSS/wishlist.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<!-- cart-main-area start -->


<!-- Table heading -->
  <div class="main_container">
    <h1>Home<i class="fa fa-angle-right" aria-hidden="true"></i>Your Wishlist</h1>
    <table class="product-table">
      <thead>
        <tr>
          <th style="text-align:center">PRODUCTS</th>
          <th style="text-align:center">NAME OF PRODUCTS</th>
          <th style="text-align:center">PRICE</th>
          <th style="text-align:center">Add to Cart</th>
          <th style="text-align:center">REMOVE</th>
        </tr>
      </thead>
      <!-- Product Details -->
      <tbody>

        <div class="product">
        <?php
              $sql = "SELECT * FROM wishlist WHERE user_id = '$user_id'";

              $sql_run = mysqli_query($con, $sql);
              if(mysqli_num_rows($sql_run) > 0)
                {
                  foreach($sql_run as $sql2) :
                    $prod_id = $sql2['product_id'];
                    $products = "SELECT * FROM product WHERE id = '$prod_id'";
                    $products_run = mysqli_query($con, $products);
                    $proditems = mysqli_fetch_assoc($products_run);
                    $price=$proditems['price'];
          ?>
            <tr>
              <div class="product-image"><td style="text-align:center"><img src="../admin/images/picture/<?php echo $proditems['image']; ?>" alt="Product 1"></td></div>
              <div class="product_info"><td style="text-align:center"><?= $proditems['name']; ?></td></div>
              <div class="product-price"><td style="text-align:center">₹ <?php echo $price ?></td></div>
              <div class="product-remove1"><td style="text-align:center;"><a href="javascript:void(0)" onclick="cart_manage('<?= $proditems['id']?>','add')" ><button>Add to cart</button></a></td></div>
              <div class="product-remove"><td style="text-align:center;"><a href="wishlistmanage.php?$removid=<?= $proditems['id']; ?>" class="wishlist-remove-btn"><i class="fa fa-heart"  aria-hidden="true" style="color: red; font-size:3.5rem;"></i></a></td></div>
            </tr>
            <?php
                                    endforeach;
                                }?>
        </div>
        
        <!-- Add more product rows as needed -->
      </tbody>
    </table>
  </div>


<!-- cart-main-area end -->

<!-- footer area start-->
<div class="bottom-bar">
<a href="allproduct.php"><button class="con_shp-button">Continue Shopping</button></a>
<a href="wishlistmanage.php?$emptyid=<?php echo $user_id ?>" class="wishlist-remove-btn"><button class="proceed-button">Empty Wishlist</button></a>

</div>
<script src="javascript/wishlist.js"></script>
    <script src="javascript/cart.js"></script>
</body>
</html>