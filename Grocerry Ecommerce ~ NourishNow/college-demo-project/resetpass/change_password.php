<?
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
    <link rel="stylesheet" href="css/c_p.css">
</head>
<body>
    <div class="hero">
    <form action="reset.php" method="post">
        <h1>Password</h1>
        <p>New password</p>
        <input type="password" name="pass" required id="pwd1">
        <p>Confirm Password</p>
        <input type="password" name="cpass"required id="pwd2">
        <div class="save-btn">
            <div class="save">
                <input type="submit" name="submit"id="btn" value="save">
            </div>
        </div>
    </form>
    </div>
</body>
</html>