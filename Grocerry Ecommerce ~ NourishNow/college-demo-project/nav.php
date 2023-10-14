<?php
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" href="CSS/test.css">
    <link rel="stylesheet" href="CSS/cart.css">

</head>

<body>
    <!--Header Section-->
    <header class="header">
        <a href="index.php" class="logo" style="text-decoration: none"><div class="logo-container">
            <img src="./image/logo_tab.png" class="logo-image">
            <h2><b style="text-transform: lowercase; color: #622A0F;">ourishnow</b></h2>
        </div></a>

        <!--Navbar-->
        <nav class="navbar">
            <a href="index.php">home</a>
            <a href="index.php#features">features</a>
            <a href="allproduct.php">products</a>
            <a href="index.php#categories">categories</a>
            <a href="index.php#reviews">reviews</a>
            <a href="index.php#contact us">contact us</a>

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
            <a href="index.php" style="text-decoration :none; color:black;"><div class="fa "  id="login-btn"><b><?php

                echo $firstLetter;
            ?></a>
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
        <!-- souvik next work -->
<!--         <form action="#" class="login-form">
            <h3><a href="#">Profile</h3><br>
            <h3><a href="#">Orders</h3><br>
            <h3><a href="#">Wishlist</h3><br>
            <h3><a href="php/logout.php">Logout</h3><br>
        </form> -->
        </header>
        <!--Swiper Slider JS link-->
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>

<!--Linking Javascript File-->
    <script src="./javascript/home.js"></script>
    