<?php

session_start();
$con=mysqli_connect('localhost','root','','ecom');
$email=$_SESSION['email'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NourishNow</title>
    <!-- Linking CSS file -->
    <link rel="stylesheet" href="./css/o_v.css">

    <!-- Fontawsome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <div class="hero">
        <form action="check.php" method="post">
        <h1>OTP Verification</h1>
        <p>Code has been send to your <span>Registered Mail </span> :  <?php
        echo $email;
        ?>
        </p>
        <div class="otp-input">
            <input type="text" name="otp"maxlength="6" autofocus required>
        </div>
        <div class="resend">
        <a href="sendotp.php" style="text-decoration : none">    Resend OTP<i class="fa fa-caret-right"></i></a>
        </div>
        <div class="verify">
            <input type="submit" name="submit" id="btn" value="Verify">
        </div>
        </form>
    </div>
</body>
</html>