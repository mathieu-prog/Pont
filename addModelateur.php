<?php 
session_start();
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/addModelateur.css">
	<link rel="stylesheet" type="text/css" href="css/menu.css">
	<link rel="stylesheet" type="text/css" href="css/footer.css">
	<title>login</title>
</head>
<body>

	<?php 
	require"coupures/db.php";
	require"coupures/menu.php";
	require"script/addModelateur_script.php";
	?>

	<div class="formconteneur">
		<?php 

		if (isset($error)) {
			echo $error;
		}?>
		<form method="POST"enctype ="multipart/form-data">
	<center><h1>enregistrement du modelateur</h1></center>	
		<div class="loginfo">
		<label>Nom :</label>
		<input type="text" name="nom" required>
		</div>
		<div class="loginfo">
		<label>Prenom :</label>
		<input type="text" name="prenom" required>
		</div>
		<div class="loginfo">
		<label>Email :</label>
		<input type="email" name="email" required>
		</div>
		<div class="loginfo">
		<label>Telephone :</label>
		<input type="text" name="telephone" required>
		</div>
		<div class="loginfo">
		<label>Password :</label>
		<input type="password" name="password" required>
		</div>
		<div class="loginfo">
		<label>Adresse :</label>
		<input type="text" name="adresse" required>
		</div>
		<div class="loginfo">
		<label>Selectionner photo de profile :</label>
		<input type="file" name="photo" required>
		</div>
		<div class="loginfo">
		<input type="submit"value="se connecter" name="addmodelateur_btn">	
		</div>

		</form>
	</div>

	<?php 
	require"coupures/footer.php";
	?>

</body>
</html>