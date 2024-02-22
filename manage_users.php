<?php 
session_start();
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/manage.css">
	<link rel="stylesheet" type="text/css" href="css/menu.css">
		<link rel="stylesheet" type="text/css" href="css/footer.css">
	<title>login</title>
</head>
<body>

	<?php 
	require"coupures/db.php";
	require"coupures/menu.php";
?>
<a href="addModelateur.php"><input class="addmodelateur" type="submit" name="addmodelateur" value="Ajouter un modelateur"> </a>
<?php 
	$find_users_query=$pdo->prepare("SELECT * FROM `users` where type_user=2");
	$find_users_query->execute();
	while($found_user=$find_users_query->fetch()){

		?>
		
		<hr>
		<div class="userinfo">
			<div>
				<img src="<?php echo $found_user['photo_url']?>">
			</div>
			<div>
				<h3><?php echo $found_user['nom']." ".$found_user['prenom']?></h3>
			</div>
			<div>
				<h3><?php echo $found_user['telephone']?></h3>
			</div>
			<div>
				<h3><?php echo $found_user['adresse']?></h3>
			</div>

			<div class="function">
				<a href="Modifier_modelateur.php?modelateur=<?php echo $found_user['id_user']?>">modify</a>
				<a href="delete_modelateur.php?modelateur=<?php echo $found_user['id_user']?>">delete</a>
				
			</div>
		</div>
		<?php } ?>

	<?php 
	require"coupures/footer.php";
	?>

</body>
</html>