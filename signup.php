	<?php 
session_start();
?>	


		<!DOCTYPE html>
		<html>
		<head>
			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<title>enregistrement</title>
			<link rel="stylesheet" type="text/css" href="css/signup.css">
			<link rel="stylesheet" type="text/css" href="css/menu.css">
			<link rel="stylesheet" type="text/css" href="css/footer.css">
		</head>
		<body>
		<div id="container"><!--debut du bloc principale-->

			<?php
             require"coupures/db.php";
			require"coupures/menu.php";
			require"script/signup_script.php";
			?>

			<div style="margin-top: 50px;"></div>
			<center>
			<div id="head"><h3>veuiller enregistrer</h3></div>
			</center><hr>
			<div id="erreur"><center>
				<?php 
		if (isset($error)) {
			// code...
			echo $error;
		}
			 ?>
			 </center>
			 </div>

			<form method="POST" enctype="multipart/form-data">
			<label>Votre nom </label>
			<input type="text" name="nom" placeholder="Ex:bucumi">
			<label>Votre prenom </label>
			<input type="text" name="prenom" placeholder="Ex:therence">

			<label>Votre email</label>
			<input type="text" name="email" placeholder="Ex: ndagi@gmail.com">

			<label>Votre mot de passe</label>
			<input type="password" name="password" placeholder="..........">

			<label>Votre telephone</label>
			<input type="text" name="telephone" placeholder="Ex: 25779292984">

			<label>Votre adresse</label>
			<input type="text" name="adresse" placeholder="Ex: buja-celab">

			<label>Votre photo</label>
			<input type="file" name="photo">
			<input type="submit" name="btn" value="Je m'inscris">
			</form>
		<?php
			require"coupures/footer.php";
			?>	
		</div><!--fin du bloc principale-->
		</body>
		</html>