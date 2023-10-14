<?php
/* include_once "nav.php"; */
session_start();
include_once "php/config.php";
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="x-icon" href="image/logo_tab.png">
    <title>NourishNow</title>

    <!--Linking Swiper CSS Cdn-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />

    <!--Code for Fontawsome cdn-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!--Linking custom Css File-->
    <link rel="stylesheet" href="./CSS/home.css">

</head>

<body>
    <!--Header Section-->
    <header class="header">
        <a href="#" class="logo"><div class="logo-container">
            <img src="./image/logo_tab.png" class="logo-image">
            <h4>ourishnow</h4>
        </div></a>

        <!--Navbar-->
        <nav class="navbar">
            <a href="#home">home</a>
            <a href="#features">features</a>
            <a href="allproduct.php">products</a>
            <a href="#categories">categories</a>
            <a href="#reviews">reviews</a>
            <a href="#contact">contact us</a>

        </nav>

        <!--Icons-->
        <div class="icons">
        <?php
            if(isset($_SESSION['user_id']))
            {
                $name = $_SESSION['fname'];
                $firstLetter = substr($name, 0, 1);
                ?>
            <div class="fa fa-search" id="search-btn"></div>           
            <a href="cart.php"><div class="fa fa-shopping-cart" id="cart-btn"></div></a>
            <div class="fa "  id="login-btn"><b><?php

                echo $firstLetter;
            ?>
                </b></div>
                <?php
            }
            else
            {
                ?>
                    <div class="fa fa-search" id="search-btn"></div>
            
                    <a href="login.php"><div class="fa fa-shopping-cart" id="cart-btn"></div></a>
                <a href="login.php"><div class="fa fa-user" ></div></a>
                <?php
            }
            ?>
            <div class="fa fa-bars" id="menu-btn"></div>
        </div>

        <!--Search Bar-->
        <form action="search.php" method="POST" class="search-form">
            <input type="text" name="search" id="search-box" placeholder="Search in NourishNow...">
            <button type="submit" class="search-btn" style="background-color: #fff;"><label for="search-box" class="fa fa-search"></label></button>
        </form>

        <!-- Shopping Cart -->
        
        <!-- Shopping Cart -->

        <!-- Responsive Login-->
        <form action="#" class="login-form">
            <h3><a href="profile.php">Profile</h3><br>
            <h3><a href="order.php">Orders</h3><br>
            <h3><a href="wishlist.php">Wishlist</h3><br>
            <h3><a href="php/logout.php">Logout</h3><br>
        </form>

        <!--Navbar-->
    </header>
    <!--Header Section-->

    <!-- Banner Section -->
    <section class="home" id="home">
        <div class="content">
            <h3>Your <span>one-stop-shop</span> for healthy eating</h3>
            <p>Our goal is to make grocery shopping hassle-free and enjoyable experience, so you can focus on what
                matters most - taking care of yourself and your loved ones</p>

            <a href="#" class="btn">Shop Now</a>
        </div>
    </section>
    <!-- Banner Section -->

    <!-- Features Section -->
    <section class="features" id="features">
        <h1 class="heading">Our<span>Features</span></h1>

        <div class="box-container">

            <div class="box">

                <img src="image/feature-img-1.png" alt="feature-1">
                <h3>Fresh And Organic</h3>
                <p>Taste the difference quality makes.Fresh handpicked products.</p>
                <a href="index.php" class="btn">Read More</a>
            </div>

            <div class="box">

                <img src="image/feature-img-2.png" alt="feature-1">
                <h3>Fast Delivery</h3>
                <p>From farm to table to your doorstep. Delivery within 30 mins</p>
                <a href="index.php" class="btn">Read More</a>
            </div>

            <div class="box">

                <img src="image/feature-img-3.png" alt="feature-1">
                <h3>Easy Payments</h3>
                <p>Eating well shouldn't be hard. Cash On Delivery avalable.</p>
                <a href="index.php" class="btn">Read More</a>
            </div>

        </div>

    </section>
    <!-- Features Section -->
        <!-- deals section -->

        <section class="deals" id="deals">
            <div class="content">
                <h3 class="title">deal of the day</h3>
                <p>Shop for groceries online with our exciting deals and get everything delivered around your schedule. We make it easy to scratch one more thing off your to-do list.</p>

                <div class="count-down">
                    <div class="box">
                        <h3 id="day">00</h3>
                        <span>day</span>
                    </div>
                    <div class="box">
                        <h3 id="hour">00</h3>
                        <span>hour</span>
                    </div>
                    <div class="box">
                        <h3 id="minute">00</h3>
                        <span>minute</span>
                    </div>
                    <div class="box">
                        <h3 id="second">00</h3>
                        <span>second</span>
                    </div>
                </div>
                <a href="#" class="btn">check the deal</a>
            </div>
        </section>
    <!-- deals section -->

    <!-- Product Section -->
    <section class="products" id="products">
        <h1 class="heading">Our<span>products</span></h1>

        <div class="swiper product-slider">
            <div class="swiper-wrapper">
                <div class="swiper-slide box">
                    <img src="./image/product-1.png">
                    <h1>Fresh Orange</h1>
                    <div class="price"> ₹40/- - ₹50/-</div>
                    <div class="stars">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half"></i>
                    </div>
                    <a href="allproduct.php" class="btn">Add to Cart</a>
                </div>

                <div class="swiper-slide box">
                    <img src="./image/product-2.png">
                    <h1>Fresh Onion</h1>
                    <div class="price"> ₹20/- - ₹30/-</div>
                    <div class="stars">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half"></i>
                    </div>
                    <a href="allproduct.php" class="btn">Add to Cart</a>
                </div>

                <div class="swiper-slide box">
                    <img src="./image/product-3.png">
                    <h1>Fresh Meat</h1>
                    <div class="price"> ₹200/- - ₹220/-</div>
                    <div class="stars">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half"></i>
                    </div>
                    <a href="allproduct.php" class="btn">Add to Cart</a>
                </div>
                <div class="swiper-slide box">
                    <img src="./image/product-4.png">
                    <h1>Fresh Cabbage</h1>
                    <div class="price"> ₹40/- - ₹50/-</div>
                    <div class="stars">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half"></i>
                    </div>
                    <a href="allproduct.php" class="btn">Add to Cart</a>
                </div>
            </div>
        </div>

        <div class=" swiper product-slider">
            <div class="swiper-wrapper">
                <div class="swiper-slide box">
                    <img src="./image/product-5.png">
                    <h1>Fresh Potato</h1>
                    <div class="price"> ₹40/- - ₹50/-</div>
                    <div class="stars">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half"></i>
                    </div>
                    <a href="allproduct.php" class="btn">Add to Cart</a>
                </div>

                <div class="swiper-slide box">
                    <img src="./image/product-6.png">
                    <h1>Fresh Avocado</h1>
                    <div class="price"> ₹40/- - ₹50/-</div>
                    <div class="stars">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half"></i>
                    </div>
                    <a href="allproduct.php" class="btn">Add to Cart</a>
                </div>

                <div class="swiper-slide box">
                    <img src="./image/product-7.png">
                    <h1>Fresh Carrot</h1>
                    <div class="price"> ₹40/- - ₹50/-</div>
                    <div class="stars">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half"></i>
                    </div>
                    <a href="allproduct.php" class="btn">Add to Cart</a>
                </div>

                <div class="swiper-slide box">
                    <img src="./image/product-8.png">
                    <h1>Fresh Lemon</h1>
                    <div class="price"> ₹40/- - ₹50/-</div>
                    <div class="stars">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half"></i>
                    </div>
                    <a href="allproduct.php" class="btn">Add to Cart</a>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Section -->

    <div><center>
    <a href="allproduct.php"><button class="button-60" role="button">Show All Product </button></a></center></div>


    <!-- Product Categories -->
        <section class="categories" id="categories">
            <h1 class="heading"> product <span>Categories</span></h1>

            <div class="box-container">
                <div class="box">
                    <img src="./image/cat-1.png">
                    <h3>Vegetables</h3>
                    <p>Upto 45% Off</p>
                    <a href="category.php?$cateid=11" class="btn">shop now</a>
                </div>

                <div class="box">
                    <img src="./image/cat-2.jpg">
                    <h3>Rice</h3>
                    <p>Upto 45% Off</p>
                    <a href="category.php?$cateid=8" class="btn">shop now</a>
                </div>

                <div class="box">
                    <img src="./image/cat-3.jpg">
                    <h3>Spice</h3>
                    <p>Upto 25% Off</p>
                    <a href="category.php?$cateid=13" class="btn">shop now</a>
                </div>

                <div class="box">
                    <img src="./image/cat-4.jpg">
                    <h3>Oil</h3>
                    <p>Upto 43% Off</p>
                    <a href="category.php?$cateid=10" class="btn">shop now</a>
                </div>
            </div>
            
        </section>
    <!-- Product Categories -->

<!-- Newsletter section -->

        <div class="newsletter">
            <h3>subscribe us for latest updates</h3>
            <form action="#">
                <input type="email" class="box" placeholder="enter your email">
                <input type="submit" value="subscribe"  class="btn">
            </form>

        </div>
<!-- Newsletter section -->

<!-- Review Section -->

<section class="reviews" id="reviews">
    <h1 class="heading"> Customer's <span>Review</span></h1>

    <div class="swiper review-slider">
        <div class="swiper-wrapper">
            <div class="swiper-slide box">
                <img src="./image/pic-1.png">
                <p>Good Quality Fresh items, Good delivery.</p>
                <h3>Arghya Das</h3>
                <div class="stars">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half"></i>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="./image/pic-2.png">
                <p>Good Quality groceris, Good packaging.</p>
                <h3>Soumyadeep Sarkar</h3>
                <div class="stars">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half"></i>
                    <i class="fa fa-star-half"></i>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="./image/pic-3.png">
                <p>Instant Delivery.</p>
                <h3>Prianshu Pal</h3>
                <div class="stars">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half"></i>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="./image/pic-4.png">
                <p>Khub Valo Service</p>
                <h3>Subham Biswas</h3>
                <div class="stars">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half"></i>
                </div>
            </div>
        </div>
    </div>

</section>
<!-- Review Section -->

<!-- Contact Us Section -->
    <section class="contact" id="contact">
        <h1 class="heading">get in <span>touch</span></h1>
        <div class="contact-container">
          <div class="map">
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d397.1111571682332!2d88.3696975785493!3d22.85736332426013!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1682911830232!5m2!1sen!2sin" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
          </div>
          <div class="form">
            <form action="contact.php" method="POST">
              <input type="text" name="name" required placeholder="name">
              <!-- <label>name</label> -->
              <input type="email" name="email" required placeholder="email">
             <!--  <label>email</label> -->
              <input type="text" name="mobile" placeholder="phone" maxlenth="10" required>
              <!-- <label>number</label> -->
              <textarea  name="comment" id="" cols="30" rows="10" placeholder="message" required></textarea>
              <!-- <label>message</label> -->
              <div class="contact-btn-container">
                <input type="submit" name="submit" value="send message" class="contact-btn">
              </div>
            </form>
          </div>
        </div>
      </section>      
<!-- Contact Us Section -->

<!-- Footer Section -->
<section class="footer">
<div class="box-container">
        <div class="box">
            <h3>NourishNow</h3>
            
            <p>We serve you the fresh and quality foods.</p>
            <div class="share">
                <a href="#" class="fa fa-facebook-f"></a>
                <a href="#" class="fa fa-twitter"></a>
                <a href="#" class="fa fa-instagram"></a>
                <a href="#" class="fa fa-linkedin"></a>
            </div>
        </div>
        <div class="box">
            <h3>contact info</h3>
            <a href="#" class="links"><i class="fa fa-phone"></i> +91 0000000000 </a>
            <a href="#" class="links"><i class="fa fa-phone"></i> +91 0000000000 </a>
            <a href="#" class="links"><i class="fa fa-envelope"></i> nourishnow2023.com </a>
            <a href="#" class="links"><i class="fa fa-map-marker" aria-hidden="true"></i> west bengal, india - 712136 </a>
        </div>
        <div class="box">
            <h3>quick links</h3>
            <a href="index.php" class="links"><i class="fa fa-arrow-right"></i> home </a>
            <a href="#features" class="links"><i class="fa fa-arrow-right"></i> features </a>
            <a href="allproduct.php" class="links"><i class="fa fa-arrow-right"></i> products </a>
            <a href="#categories" class="links"><i class="fa fa-arrow-right"></i> categories </a>
        </div>
    </div>

<!-- Footer Section -->








</section>
<!-- Footer Section -->
<!--Swiper Slider JS link-->
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>

<!--Linking Javascript File-->
    <script src="./javascript/home.js"></script>


</body>

</html> 