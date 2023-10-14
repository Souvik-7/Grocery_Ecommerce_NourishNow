<?php
include_once "php/config.php";
include_once "nav.php";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="CSS/go_to_cart.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<!-- cart-main-area start -->


<!-- Table heading -->
  <div class="main_container">
    <h1>Home<i class="fa fa-angle-right" aria-hidden="true"></i>Your Shopping Cart</h1>
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
      <tbody>

        <div class="product">
            <tr>
              <div class="product-image"><td><img src="image/product-5.png" alt="product"></td></div>
              <div class="product_info"><td>Product 1</td></div>
              <div class="product-price"><td>₹ 100</td></div>
              <div class="product-quantity" style="display:flex; align-items:center; justify-content: space-between;"><td><input type="number" min="1" value="1" style="font-size: 2.1rem; width: 4.5rem; margin-left: 2.5rem; background-color:floralwhite; border-radius: .5rem;"><a href="" style="background-color: #00c400; border: .1px solid black; border-radius: .2rem; padding: .2rem 1rem;  cursor: pointer; margin-left: 8rem; text-decoration:none;  color: white;">Apply</a></td></div>
              <div class="product-total"><td>₹ 200</td></div>
              <div class="product-remove"><td><a href="" class="remove-btn"><i class="fa fa-trash-o" aria-hidden="true"></i></a></td></div>
            </tr>
        </div>
        
        <!-- Add more product rows as needed -->
      </tbody>
    </table>
  </div>


<!-- cart-main-area end -->

<!-- footer area start-->
<div class="bottom-bar">
      <button class="con_shp-button">Continue Shopping</button>
      <button class="proceed-button">Proceed to Buy</button>
</div>

</body>
</html>