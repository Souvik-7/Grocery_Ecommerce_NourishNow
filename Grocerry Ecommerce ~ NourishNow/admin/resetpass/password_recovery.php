<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NourishNow</title>
    <link rel="stylesheet" href="./css/p_r.css">
</head>
<body>
    <!-- Password Recovery Page 1 -->
    <div class="hero">
        <h1>Forget your Password</h1>
        <p id="req">Enter your email to request OTP</p>
        <form action="sendotp.php" method="post">
        <div class="email-input">
                <input  type="text"  name="uname"spellcheck="false" placeholder="Username" size="30">
        </div>
        <p>By entering your details you have to accept our <span>terms & conditions.</span></p>
        <div class="send-otp">
            <input id="btn" type="submit" name="submit" value="Request">
        </div>
    </form>
    </div>
<!-- Linking Js file -->
    <script src="./js/p_r.js"></script>


</body>
</html>