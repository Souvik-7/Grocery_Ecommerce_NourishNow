<?php
session_start();
$con=mysqli_connect('localhost','root','','ecom');

$otp1=$_POST['otp'];
$email=$_SESSION['email'];
$otp=$_SESSION['otp'];
if($otp1==$otp){
    mysqli_query($con,"UPDATE users set otp='' , status='active' where email='$email'");
    header('location:../login.php');
}
else{
    echo 
   " 
    <script>
        alert('otp not match');
    </script>
     ";
     ?>
     
     <script>
     window.location.href='otp_verification.php';
    </script> 
<?php
}
?>