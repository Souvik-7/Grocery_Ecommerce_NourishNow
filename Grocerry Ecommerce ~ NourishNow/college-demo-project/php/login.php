<?php 
    session_start();
    include_once "config.php";
    $email = mysqli_real_escape_string($con, $_POST['email']);
    $password = mysqli_real_escape_string($con, $_POST['password']);
    if(!empty($email) && !empty($password)){
        $sql = mysqli_query($con, "SELECT * FROM users WHERE email = '{$email}'");
        if(mysqli_num_rows($sql) > 0){
            $row = mysqli_fetch_assoc($sql);
            $user_pass = md5($password);
            $enc_pass = $row['password'];
            $status = $row['status'];
            if($user_pass === $enc_pass){
                if($status == "active"){
                $_SESSION['user_id'] = $row['id'];
                $_SESSION['fname'] = $row['fname'];
                $_SESSION['lname'] = $row['lname'];
                $_SESSION['mobile'] = $row['mobile'];
                $_SESSION['email'] = $row['email'];
                
                    echo "success";
                }else{
                    echo "Your account is not active!.
                    Please verify your account.";
                }
            }else{
                echo "Password is Incorrect!";
            }
        }else{
            echo "$email - This email not Exist!";
        }
    }else{
        echo "All input fields are required!";
    }
?>