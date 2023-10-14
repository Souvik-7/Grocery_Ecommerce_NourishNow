<?php include "header.php"; ?>

<body style="background-image: url(picture/login.jpg);background-size:cover;background-repeat: no-repeat;">
  <div class="wrapper">
    <section class="form login">
      <header>Log In to NourishNow</header>
      <form action="#" method="POST" enctype="multipart/form-data" autocomplete="off">
        <div class="error-text"></div>

        <div class="field input">
          <label>Email Address</label>
          <input type="text" name="email" placeholder="Enter your email" required>
        </div>
        <div class="field input">
          <label>Password</label>
          <input type="password" name="password" placeholder="Enter password" required>
          <i class="fas fa-eye"></i>
        </div>
        <div class="field button">
          <input type="submit" name="submit" value="submit" >
        </div>
      </form>
      <div class="link">Verify your account <a href="verify_account/forverify.php" style="text-decoration : none"> Click Here</a></div>
      <div class="link">Forgot your password <a href="resetpass/password_recovery.php" style="text-decoration : none"> Click Here</a></div>
      <div class="link">Don't have an account <a href="signup.php" style="text-decoration : none"> Signup now</a></div>
    </section>
  </div>

  <script src="javascript/pass-show-hide.js"></script>
  <script src="javascript/login.js"></script>

</body>
</html>
