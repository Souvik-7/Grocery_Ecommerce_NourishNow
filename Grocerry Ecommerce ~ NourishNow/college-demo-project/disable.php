<?php
    session_start();
    include_once "php/config.php";
    $id = $_SESSION['user_id'];
    $sql = mysqli_query($con, "SELECT * FROM users WHERE id = '{$id}'");
    if(mysqli_num_rows($sql) > 0){
        $sql2 = mysqli_query($con, "UPDATE users SET status = 'inactive' WHERE id = '{$id}'");
        if($sql2){
            session_unset();
            session_destroy();
            echo "<script>window.location.href='login.php';</script>";
        }
    }
    else{
        echo "Something went wrong!";
    }
?>