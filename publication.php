  <?php  

  session_start()
  ?>

  <!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/publication.css">
	<link rel="stylesheet" type="text/css" href="css/menu.css">
		<link rel="stylesheet" type="text/css" href="css/footer.css">
	<title>publication</title>
</head>
<body>
<?php
require"coupures/db.php";
require"coupures/menu.php";

require"script/publication_script.php";
?>
<div class="container">

	<center> <h2> Publier une nouvelle information</h2></center>
	<?PHP if (isset($error)) {
		echo $error;
	}
	?>
	<form method="POST" enctype="multipart/form-data"> 
<div>
<label>photo:</label>
<input type="file" name="photo_actu">	

</div>
<div>
<label>titre:</label>
<input type="text" name="titre_actu">	

</div>
<div>
<label>contenu:</label>
<textarea name="contenu_actu" cols="80" rows="10"></textarea>	

</div>
<div>
<label>type d'information</label>

<select name="type_actu"> 
	<?php  
$selectquery=$pdo->prepare("SELECT * FROM `type_actualite`");
$selectquery->execute();
while ($findtype=$selectquery->fetch()){ ?>
<option value="<?php echo $findtype ['id_type_actu'] ?> "> <?php echo $findtype ['type_actualite'] ?></option>
  <?php } ?>
   </select>

</div>
<input type="submit" value="publier"name="publier_btn">
	</form>
</div>

<?php
require"coupures/footer.php";
?>
</body>
</html>