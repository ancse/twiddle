<!DOCTYPE html>
<html lang="en">

	<title>Login In</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link href="https://fonts.googleapis.com/css?family=Roboto+Mono,Do+Hyeon" rel="stylesheet">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="../../assets/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../assets/css/SignIn.css">
<!--===============================================================================================-->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<!--===============================================================================================-->
	<script src="../../assets/js/SignIn.js"></script>	
<!--===============================================================================================-->

	<body>
		<div class="container">
			<div class="wrap">
				<div class="wrap-img tilt" data-tilt>
					<img src="../../assets/images/img-01.png" alt="IMG">
				</div>

				<form class="form validate-form" method="post">
					<span class="form-title">
						Member Login
					</span>

					<div class="data-input validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<span class="symbol">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
						<input class="input" id="email" type="text" name="email" placeholder="Email">
						<span class="focus"></span>
					</div>

					<div class="data-input validate-input" data-validate = "Password is required">
						<span class="symbol">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
						<input class="input" id="password" type="password" name="pass" placeholder="Password">
						<span class="focus"></span>
						
					</div>
					
					<div class="form-btn">
						<button class="btn" name="button" id="button">
							Login
						</button>
					</div>

					<div class="text">
						<span class="text-1">
							Forgot
						</span>
						<a class="text-2" href="#">
							Username / Password?
						</a>
					</div>

					<div class="text">
						<a class="text-2" href="../signup/register.php">
							Create your Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</body>
</html>