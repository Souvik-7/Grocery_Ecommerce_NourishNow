<?php
session_start();
include_once "php/config.php";
if(!isset($_SESSION['user_id'])){
	header("location: login.php");
}
$user_id = $_SESSION['user_id'];
$sql1 = mysqli_query($con, "SELECT * FROM order_document WHERE user_id = '$user_id' LIMIT 0, 25");
if(mysqli_num_rows($sql1) > 0)
{
	$row1 = mysqli_fetch_assoc($sql1);
	$address = $row1['address'];
	$state = $row1['state'];
	$pincode = $row1['pincode'];
}
else
{
	$address = "";
	$state = "";
	$pincode = "";
}
/* $row1 = mysqli_fetch_assoc($sql1);
$address = $row1['address'];
$state = $row1['state'];
$pincode = $row1['pincode']; */
$sql = mysqli_query($con, "SELECT * FROM users WHERE id = '$user_id'");

$row = mysqli_fetch_assoc($sql);
$id= $row['id'];
$fname = $row['fname'];
$lname = $row['lname'];
$email = $row['email'];
$phone = $row['mobile'];
/* include_once "nav.php"; */

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Account Settings UI Design</title>
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="account-css/style.css">
</head>
<body>
	<section class="py-5 my-5">
	
		<div class="container">
			<h1 class="mb-5">Account Settings</h1>
			<div class="bg-white shadow rounded-lg d-block d-sm-flex">
				<div class="profile-tab-nav border-right">
					<div class="p-4">
 						<div class="img-circle text-center mb-3" style=" margin-left: 4.6rem; margin-top:1rem; height: 5rem; width: 5rem; border-radius: 40%;  border:2px solid black; background-color:grey; color:red;">
							
							<b style="font-size:3rem;">
												
								<?php
 								$name = $fname;
                				$firstLetter = substr($name, 0, 1);
								echo $firstLetter; 
                				?>
								</b>
							
							<!-- <img src="img/user2.jpg" alt="Image" class="shadow"> -->
						</div>
						<h4 class="text-center" style="font-size:3.4rem;"><?php echo $fname ;?></h4>
					</div>
					<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
						<a class="nav-link active" id="account-tab" data-toggle="pill" href="#account" role="tab" aria-controls="account" aria-selected="true">
							<i class="fa fa-home text-center mr-1"></i> 
							Details
						</a>
<!-- 						<a class="nav-link" id="password-tab" data-toggle="pill" href="#password" role="tab" aria-controls="password" aria-selected="false">
							<i class="fa fa-key text-center mr-1"></i> 
							Password
						</a> -->
<!-- 						<a class="nav-link" id="security-tab" data-toggle="pill" href="#security" role="tab" aria-controls="security" aria-selected="false">
							<i class="fa fa-user text-center mr-1"></i> 
							Security
						</a> -->
						<a class="nav-link" id="application-tab" data-toggle="pill" href="#application" role="tab" aria-controls="application" aria-selected="false">
							<i class="fa fa-tv text-center mr-1"></i> 
							Account-Settings
						</a>
<!-- 						<a class="nav-link" id="notification-tab" data-toggle="pill" href="#notification" role="tab" aria-controls="notification" aria-selected="false">
							<i class="fa fa-bell text-center mr-1"></i> 
							Notification
						</a> -->
					</div>
				</div>
				<div class="tab-content p-4 p-md-5" id="v-pills-tabContent">
					
					<div class="tab-pane fade show active" id="account" role="tabpanel" aria-labelledby="account-tab">
						<h3 class="mb-4">Account Settings</h3>
						<form action="" method="post">
						<div class="row">
						
							<div class="col-md-6">
								<div class="form-group">
								  	<label>First Name</label>
								  	<input type="text" name="fname" class="form-control" value="<?php echo $fname; ?>">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Last Name</label>
								  	<input type="text" name="lname" class="form-control" value="<?php echo $lname; ?>">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Email</label>
								  	<input type="text"  class="form-control" value="<?php echo $email; ?>" readonly>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Phone number</label>
								  	<input type="number" name="mobile" class="form-control" value="<?php echo $phone; ?>"min="6256845210" max="9987653241">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Address</label>
								  	<input type="text" name="address" class="form-control" value="<?php
									echo $address?>">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>State</label>
								  	<input type="text" name="state" class="form-control" value="<?php echo $state ;?>">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>PinCode</label>
								  	<input type="text" name="pincode" class="form-control" value="<?php echo $pincode ;?>">
								</div>
							</div>
	<!-- 						<div class="col-md-12">
								<div class="form-group">
								  	<label>Bio</label>
									<textarea class="form-control"name="fname"  rows="4">Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore vero enim error similique quia numquam ullam corporis officia odio repellendus aperiam consequatur laudantium porro voluptatibus, itaque laboriosam veritatis voluptatum distinctio!</textarea>
								</div>
							</div> -->

						</div>
						<div>
							<button class="btn btn-primary"name="submit">Update</button>
							<button class="btn btn-light" type="reset">Cancel</button>	
						</div>
						</form>
					</div>
					
					<div class="tab-pane fade" id="password" role="tabpanel" aria-labelledby="password-tab">
						<h3 class="mb-4">Password Settings</h3>
						<form action="" method="post">
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Old password</label>
								  	<input type="password" name="opassword"class="form-control">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>New password</label>
								  	<input type="password" name="npassword"class="form-control">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Confirm new password</label>
								  	<input type="password" name="cpassword" class="form-control">
								</div>
							</div>
						</div>
						<div>
							<button class="btn btn-primary" name="update">Update</button>
							<button class="btn btn-light"type="reset">Cancel</button>
						</div>
						</form>
					</div>
					<div class="tab-pane fade" id="security" role="tabpanel" aria-labelledby="security-tab">
						<h3 class="mb-4">Security Settings</h3>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Login</label>
								  	<input type="text" class="form-control">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Two-factor auth</label>
								  	<input type="text" class="form-control">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value="" id="recovery">
										<label class="form-check-label" for="recovery">
										Recovery
										</label>
									</div>
								</div>
							</div>
						</div>
						<div>
							<button class="btn btn-primary">Update</button>
							<button class="btn btn-light">Cancel</button>
						</div>
					</div>
					<div class="tab-pane fade" id="application" role="tabpanel" aria-labelledby="application-tab">
						<h3 class="mb-4"style="text-align:center;">Application Settings</h3>
<!-- 						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value="" id="app-check">
										<label class="form-check-label" for="app-check">
										App check
										</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value="" id="defaultCheck2" >
										<label class="form-check-label" for="defaultCheck2">
										Lorem ipsum dolor sit.
										</label>
									</div>
								</div>
							</div>
						</div> -->
						<div style="margin-top:6rem;">
							<a href="deleteaccount.php"><button class="btn btn-primary" style="margin-left:4rem;">Deactive Account</button></a>
							<a href="disable.php"><button class="btn btn-light" style="margin-left:5rem;">Disable Account</button></a>
							<a href="index.php"><button class="btn btn-light"style="margin-left:5rem;">Go To Home</button></a>
						</div>
					</div>
					<div class="tab-pane fade" id="notification" role="tabpanel" aria-labelledby="notification-tab">
						<h3 class="mb-4">Notification Settings</h3>
						<div class="form-group">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value="" id="notification1">
								<label class="form-check-label" for="notification1">
									Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum accusantium accusamus, neque cupiditate quis
								</label>
							</div>
						</div>
						<div class="form-group">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value="" id="notification2" >
								<label class="form-check-label" for="notification2">
									hic nesciunt repellat perferendis voluptatum totam porro eligendi.
								</label>
							</div>
						</div>
						<div class="form-group">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value="" id="notification3" >
								<label class="form-check-label" for="notification3">
									commodi fugiat molestiae tempora corporis. Sed dignissimos suscipit
								</label>
							</div>
						</div>
						<div>
							<button class="btn btn-primary">Update</button>
							<button class="btn btn-light">Cancel</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		
	</section>


	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>


	<?php

	if(isset($_POST['submit'])){
		$firstname = mysqli_real_escape_string($con, $_POST['fname']);
		$lastname = mysqli_real_escape_string($con, $_POST['lname']);
		
		$number = mysqli_real_escape_string($con, $_POST['mobile']); 
		$address = mysqli_real_escape_string($con, $_POST['address']);
		$state = mysqli_real_escape_string($con, $_POST['state']);
		$pincode = mysqli_real_escape_string($con, $_POST['pincode']);
		/* echo "<script>alert('$firstname');</script>"; */
 		if(!empty($firstname) && !empty($lastname) && !empty($address) && !empty($number) && !empty($state) && !empty($pincode)){
					if(!preg_match("/^[a-zA-Z-' ]*$/",$firstname)) {
						echo "$fname - Only letters and white space allowed.";
					}else{
						if(!preg_match("/^[a-zA-Z-' ]*$/",$lastname)) {
						  echo "$lname - Only letters and white space allowed.";
						}else{
								$insert_query = mysqli_query($con, "UPDATE users SET fname = '{$firstname}', lname = '{$lastname}', mobile = '{$number}' WHERE id = $user_id");
								if($insert_query){
									$select_sql2 = mysqli_query($con, "SELECT * FROM users WHERE id = $user_id");
									if(mysqli_num_rows($select_sql2) > 0)
										{
											$result = mysqli_fetch_assoc($select_sql2);
											$_SESSION['user_id'] = $result['id'];
											$_SESSION['fname'] = $result['fname'];
											$_SESSION['lname'] = $result['lname'];
											$_SESSION['mobile'] = $result['mobile'];
											$check_query2 = mysqli_query($con, "SELECT * FROM order_document WHERE user_id = $user_id");
											if(mysqli_num_rows($check_query2) > 0){
												$update_query2 = mysqli_query($con, "UPDATE order_document SET address = '{$address}', state = '{$state}', pincode = '{$pincode}' WHERE user_id = $user_id");
												if($update_query2){
													echo "<script>alert('Your Profile Updated Successfully!');
													</script>";
												}else{
													 echo "<script>alert('Your Profile Not Updated Successfully!');</script>"; 
												}
											}else{
												$insert_query2 = mysqli_query($con, "INSERT INTO order_document (user_id, address, state, pincode) VALUES('{$user_id}', '{$address}', '{$state}', '{$pincode}')");
												if($insert_query2){
													echo "<script>alert('Your Profile Updated Successfully!');
													</script>";
												}else{
													 echo "<script>alert('Your Profile Not Updated Successfully!');</script>"; 
												}
											}
									}
								}else{
									echo "<script>alert('Something went wrong. Please try again!');</script>";
								}                                                        							           
							}						
					}
				}else{
					echo "<script>alert('All input fields are required!');
					</script>";
				} 
			}
			elseif(isset($_POST['update'])){
				$old_password = mysqli_real_escape_string($con, $_POST['opassword']);
				$new_password = mysqli_real_escape_string($con, $_POST['npassword']);
				$confirm_password = mysqli_real_escape_string($con, $_POST['cpassword']);
				if(!empty($old_password) && !empty($new_password) && !empty($confirm_password)){
					$select_sql = mysqli_query($con, "SELECT * FROM users WHERE id = $user_id");
					if(mysqli_num_rows($select_sql) > 0)
						{
							$result = mysqli_fetch_assoc($select_sql);
							$old_password_db = $result['password'];
							$old_password_input = md5($old_password);
							if($old_password_db == $old_password_input){
								if($new_password == $confirm_password){
									$new_password_input = md5($new_password);
									$insert_query = mysqli_query($con, "UPDATE users SET password = '{$new_password_input}' WHERE id = $user_id");
									if($insert_query){
										echo "<script>alert('Your Password Updated Successfully!');
										</script>";
										 echo "<script>window.location.href='profile.php#password';</script>"; 
									}else{
										echo "script>alert('Something went wrong. Please try again!);
										</script>";
									}
								}else{
									echo "<script>alert('New Password and Confirm Password does not match!);
									</script>";
								}
							}else{
								echo "<script>alert('Old Password is incorrect!);
								</script>";
							}
						}
				}else{
					echo "All input fields are required!);
					";
				}
			}
	?>
</body>
</html>