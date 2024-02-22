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
	
	require"script/ModifModelateur_script.php";
	
	?>
	<div class="Modifier_mod_container">
		<form method="POST" enctype="multipart/form-data">	
		<?php 
		$modelateur_modifier=$_GET['modelateur'];
		$modelateur_modifier_query=$pdo->prepare("SELECT * FROM `users` where id_user=?");
		$modelateur_modifier_query->execute(array($modelateur_modifier));
		$modelateur_info=$modelateur_modifier_query->fetch();
		?>

		<div>
			<label><?php if (isset($error)) {
				echo $error;
			}
		?></label>

		
			<img src="<?php echo $modelateur_info['photo_url']?>">
			<input type="file" name="photo">
		</div>
		<div>
			<table>
				<tr>
					<td>
						nom:
					</td>
					<td>
						<input type="text" name="nom" value="<?php echo $modelateur_info['nom']?>">
					</td>
				</tr>
				<tr>
					<td>
						prenom:
					</td>
					<td>
						<input type="text" name="prenom" value="<?php echo $modelateur_info['prenom']?>">
					</td>
				</tr>
				<tr>
					<td>
						email:
					</td>
					<td>
						<input type="text" name="email" value="<?php echo $modelateur_info['email']?>">
					</td>
				</tr>
				<tr>
					<td>
						mot de passe:
					</td>
					<td>
						<input type="text" name="password" value="<?php echo $modelateur_info['password']?>">
					</td>
				</tr>
				<tr>
					<td>
						telephone:
					</td>
					<td>
						<input type="text" name="telephone" value="<?php echo $modelateur_info['telephone']?>">
					</td>
				</tr>
				<tr>
					<td>
						adresse:
					</td>
					<td>
						<input type="text" name="adresse" value="<?php echo $modelateur_info['adresse']?>">
					</td>
				</tr>
			</table>
		</div>
	
		<input type="submit" name="Update_Modelateur_btn" value="Modify">
	</form>
</div>

<?php 

require"coupures/footer.php";
?>

</body>
</html>