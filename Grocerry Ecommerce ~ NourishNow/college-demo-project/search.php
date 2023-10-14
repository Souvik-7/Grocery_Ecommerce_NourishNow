<?php
	 include_once "nav.php"; 
    include_once "php/config.php";
    $search = mysqli_real_escape_string($con, $_POST['search']);
    if(!empty($search)){
      //  $LIST ="SELECT * FROM product WHERE name LIKE '{$search}%' ";
		$products ="SELECT * FROM product WHERE name LIKE '%{$search}%' OR categories_name LIKE '%{$search}%'";
		$products_run = mysqli_query($con, $products);
		if(mysqli_num_rows($products_run) > 0)
		{
			?>
				<div class="container " style="margin:100px 0 0 0;">
				<div class="col-md-9 mt-3">
        			<!-- <div class="row"> -->
			<?php
			foreach($products_run as $proditems) :
			?>

						<div class="col-md-4 mt-3" style=" float: left; width: 33%;">
							<div class="product" >
								<a class="img-wrapper" href="#">
									<img src="../admin/images/picture/<?php echo $proditems['image']; ?>">
								</a>
								<?php
									if($proditems['qty'] == 0)
									{
										?>
											<div class="note no-stock">Out of stock</div>
										<?php
									}

										?>


								<div class="info">
									<div class="title"><a href="#"><?= $proditems['name']; ?></a></div>
									<div class="price sale"><?= $proditems['price']; ?></div>
									<div class="price old"><?= $proditems['mrp']; ?></div>
								</div>

								<div class="actions-wrapper">
									<?php
										$cartid = $proditems['id'];
										$wishlistid = $proditems['id'];
										if(isset($_SESSION['user_id']))
										{
											?>
												<a href="javascript:void(0)" onclick="wishlist_manage('<?php echo $proditems['id']?>','add')" class="add-btn wishlist">wishlist</a>
									<?php
									if($proditems['qty'] == 0)
									{
										?>
										<a href="#" >NOtify Me</a>
										<?php
									}
									else
									{
										?>
										<a href="javascript:void(0)" onclick="cart_manage('<?php echo $proditems['id']?>','add')" class="add-btn cart">cart</a>
										
										<?php
									}
										}
										else
										{
											?>
												<a href="login.php" class="add-btn wishlist">Wishlist</a>
												<a href="login.php" class="add-btn cart">Cart</a>
											<?php
										}
									?>
								</div>
							</div>
						</div>
					</div>
				</div> 
					<?php
				endforeach;
		}else{ ?>

          <div class="no-data" style="margin:150px 0 0 100px; font-size:50px;"> <?php echo "No Data Found Related to Your Search Term " ;?> </div>
		 <?php }
    }else{
		header('location:index.php');
	}
	
    ?>
	    <script src="javascript/wishlist.js"></script>
    <script src="javascript/cart.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.13.2/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.13.2/jquery-ui.min.js"></script>