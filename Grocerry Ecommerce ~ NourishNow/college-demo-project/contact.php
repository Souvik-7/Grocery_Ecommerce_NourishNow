<?php
    $name = $_POST["name"];
    $email = $_POST["email"];
    $phone = $_POST["mobile"];
    $message = $_POST["comment"];
    $hostname = "localhost";
    $username = "root";
    $password = "";
    $dbname = "ecom";
  
    $con = mysqli_connect($hostname, $username, $password, $dbname);
    if(!$con){
      echo "Database connection error".mysqli_connect_error();
    }

    if(empty($name) || empty($email) || empty($phone) || empty($message)) {
      echo "<script>alert('All fields are required.');</script>";
      ?>
      <script>
       window.location.href='index.php';
   </script>
    <?php
    }else {
      if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
        echo "<script>alert('Invalid email format.');</script>";
        ?>
        <script>
         window.location.href='index.php';
     </script>
      <?php
      }else{
        if(!preg_match("/^[a-zA-Z-' ]*$/",$name)) {
          echo "<script>alert('Only letters and white space allowed.');</script>";
          ?>
          <script>
           window.location.href='index.php';
       </script>
        <?php
        }else{
          if(!preg_match("/^[0-9]*$/",$phone)) {
            echo "<script>alert('Only numbers allowed.');</script>";
            ?>
            <script>
             window.location.href='index.php';
         </script>
          <?php
          }else{
            if(strlen($phone) != 10) {
              echo "<script>alert('Phone number must be 10 digits.');</script>";
              ?>
                <script>
                 window.location.href='index.php';
             </script>
              <?php
            }else{
                date_default_timezone_set("Asia/Kolkata");
                $date=date("Y-m-d h:i:sa");
              $sql = "INSERT INTO contact_us (name, email, mobile, comment, added_on) VALUES ('$name', '$email', '$phone', '$message', '$date')";
            $mail=mysqli_query($con,$sql);
            
/*Add this code to send email*/
    if ($mail) {
      echo "<script>alert('Massage Send successfully.');</script>";?>
           <script>
     window.location.href='index.php';
    </script> 
    <?php
    }else {
      echo "<script>alert('Massage  Not Send.');</script>";
      ?>
              <script>
        window.location.href='index.php#contact';
         </script>
<?php
    }
  }
}
}
}
}

?>
