<?php 
session_start()	;
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/login.css">
	<link rel="stylesheet" type="text/css" href="css/menu.css">
		<link rel="stylesheet" type="text/css" href="css/footer.css">
	<title>login</title>
</head>
<body>


	<?php 
	require"coupures/db.php";
	require"script/login_script.php";
	require"coupures/menu.php";
	
	?>
	<div class="conteneur">
		<form method="POST"enctype ="multipart/form-data">
	<center><h1>LOGIN</h1></center>	
	<div class="f">
		<label>email</label>
		<input type="email" name="email" required>
		</div>
		<div class="f">
		<label>password</label>
		<input type="password" name="password" required>
		</div>
		<div class="f">
		<input type="submit"value="se connecter" name="login_btn">	
		</div>

		</form>
	</div>
<?php 
require"coupures/footer.php";
?>

</body>
</html>