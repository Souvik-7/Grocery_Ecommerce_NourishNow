<?php
include_once "php/config.php";
include_once "nav.php";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Funda of Web IT</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="CSS/test.css">
    
</head>
<body>
    
    <div class="container">
        <div class="row">
            <!-- Brand List  -->
            <div class="col-md-3">
                <form action="" method="GET">
                    <div class="card shadow mt-3">
                        <div class="card-header">
                            <h1><b>Filter</b> 
                                <button type="submit" class="btn btn-primary btn-sm float-end"><h2><b>Search</b></h2></button>
                            </h1>
                        </div>
                        <div class="card-body">

                            <h6>categories List</h6>
                            <hr>
                            <?php
                                $con = mysqli_connect("localhost","root","","ecom");

                                $brand_query = "SELECT * FROM categories";
                                $brand_query_run  = mysqli_query($con, $brand_query);

                                if(mysqli_num_rows($brand_query_run) > 0)
                                {
                                    foreach($brand_query_run as $brandlist)
                                    {
                                        $checked = [];
                                        if(isset($_GET['brands']))
                                        {
                                            $checked = $_GET['brands'];
                                        }
                                        ?>
                                            <div style="font-size: 1.5rem">
                                                <input type="checkbox" name="brands[]" value="<?= $brandlist['id']; ?>" 
                                                    <?php if(in_array($brandlist['id'], $checked)){ echo "checked"; } ?>
                                                 />
                                                <?= $brandlist['categories']; ?>
                                            </div>
                                        <?php
                                    }
                                }
                                else
                                {
                                    echo "No Brands Found";
                                }
                            ?>
                        </div>
                        <div class="card-body">
                            <h6>sub_categories List</h6>
                            <hr>
                            <?php
                            

                                $brand_query = "SELECT * FROM sub_categories";
                                $brand_query_run  = mysqli_query($con, $brand_query);

                                if(mysqli_num_rows($brand_query_run) > 0)
                                {
                                    foreach($brand_query_run as $brandlist)
                                    {
                                        $checked = [];
                                        if(isset($_GET['brand']))
                                        {
                                            $checked = $_GET['brand'];
                                        }
                                        ?>
                                            <div style="font-size: 1.5rem">
                                                <input type="checkbox" name="brand[]" value="<?= $brandlist['id']; ?>" 
                                                    <?php if(in_array($brandlist['id'], $checked)){ echo "checked"; } ?>
                                                 />
                                                <?= $brandlist['sub_categories']; ?>
                                            </div>
                                        <?php
                                    }
                                }
                                else
                                {
                                    echo "No Brands Found";
                                }
                            ?>
                        </div>
                    </div>
                </form>
            </div>

            <!-- Brand Items - Products -->
            <div class="col-md-9 mt-3">
                <div class="card ">
                    <div class="card-body row">
                        <?php
                            if(isset($_GET['brands']))
                            {
                                $branchecked = [];
                                $branchecked = $_GET['brands'];
                                foreach($branchecked as $rowbrand)
                                {
                                    // echo $rowbrand;
                                    $products = "SELECT * FROM product WHERE categories_id IN ($rowbrand)";
                                    $products_run = mysqli_query($con, $products);
                                    if(mysqli_num_rows($products_run) > 0)
                                    {
                                        foreach($products_run as $proditems) :
                                    ?>
                                        <div class="col-md-4 mt-3">
                                            <div class="product" id="<?php echo $proditems['id'];?>">
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
                                                                <a href="javascript:void(0)" onclick="wishlist_manage('<?php echo $proditems['id']?>','add')"><i class="fa fa-heart" id="btn" style="font-size:2rem;color:grey"></i></a>
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
                                    <?php
                                        endforeach;
                            if(isset($_GET['brand']))
                            {
                                $branchecked = [];
                                $branchecked = $_GET['brand'];
                                foreach($branchecked as $rowbrand)
                                {
                                    // echo $rowbrand;
                                    $products = "SELECT * FROM product WHERE sub_categories_id IN ($rowbrand)";
                                    $products_run = mysqli_query($con, $products);
                                    if(mysqli_num_rows($products_run) > 0)
                                    {
                                        foreach($products_run as $proditems) :
                                            ?>
                                            <div class="col-md-4 mt-3">
                                                <div class="product" id="<?php echo $proditems['id'];?>">
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
                                                                <a href="javascript:void(0)" onclick="wishlist_manage('<?php echo $proditems['id']?>','add')"><i class="fa fa-heart" id="btn" style="font-size:2rem;color:grey"></i></a>                                                                    
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
                                            <?php
                                        endforeach;
                                    }
                                }
                            }
                                    }
                                    else
                                    {
                                        echo "No Items Found";
                                    }
                                }
                            }
                        elseif(isset($_GET['brand']))
                            {
                                $branchecked = [];
                                $branchecked = $_GET['brand'];
                                foreach($branchecked as $rowbrand)
                                {
                                    // echo $rowbrand;
                                    $products = "SELECT * FROM product WHERE sub_categories_id IN ($rowbrand)";
                                    $products_run = mysqli_query($con, $products);
                                    if(mysqli_num_rows($products_run) > 0)
                                    {
                                        foreach($products_run as $proditems) :
                                            ?>
                                            <div class="col-md-4 mt-3">
                                                <div class="product" id="<?php echo $proditems['id'];?>">
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
                                                                    <a href="javascript:void(0)" onclick="wishlist_manage('<?php echo $proditems['id']?>','add')"><i class="fa fa-heart" id="btn" style="font-size:2rem;color:grey"></i></a>                                                                    
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
                                                                <a href="javascript:void(0)" onclick="cart_manage('<?php echo $proditems['id']?>','add')" class="add-btn cart"></a>
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
                                            <?php
                                        endforeach;
                                    }
                                }
                            }
                            else
                            {
                                $products = "SELECT * FROM product";
                                $products_run = mysqli_query($con, $products);
                                if(mysqli_num_rows($products_run) > 0)
                                {
                                    foreach($products_run as $proditems) :
                                        ?>
                                            <div class="col-md-4 mt-3">
                                                <div class="product" id="<?php echo $proditems['id'];?>">
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
                                                                    <a href="javascript:void(0)" onclick="wishlist_manage('<?php echo $proditems['id']?>','add')"><i class="fa fa-heart" id="btn" style="font-size:2rem;color:grey"></i></a>                                                                    
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
                                        <?php
                                    endforeach;
                                }
                                else
                                {
                                    echo "No Items Found";
                                }
                            }
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="javascript/wishlist.js"></script>
    <script src="javascript/cart.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.13.2/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.13.2/jquery-ui.min.js"></script>
</body>
</html>