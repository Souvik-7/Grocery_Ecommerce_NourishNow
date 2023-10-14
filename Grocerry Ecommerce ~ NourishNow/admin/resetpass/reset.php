<?php
session_start();
$con=mysqli_connect('localhost','root','','ecom');
$pass=$_POST['pass'];
$email=$_SESSION['email'];
$cpass=$_POST['cpass'];
if($pass==$cpass){
    //$pass=md5($pass);
    mysqli_query($con,"UPDATE admin_users set password='$pass' where email='$email'");
    header('location:../index.php');
}
else{
    echo 
   " 
    <script>
        alert('password not match');
    </script>
     ";
     ?>
     
     <script>
     window.location.href='change_password.php';
    </script>
<?php
}
?>