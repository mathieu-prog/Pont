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
require "coupures/db.php";
	require"coupures/menu.php";
	?>
<div class="container">
	<div class="option_gestion">
		<form method="POST">
		<p>Gestion de l'actualite</p>
		<input type="submit" name="manage_actualite_btn" value="controler">
</form>
	</div>
	<div class="option_gestion">
		<p>Gestion des modelateurs</p>
		<form method="POST">
		<input type="submit" name="manage_users_btn" value="controler">
	</form>
	</div>
	<div class="option_gestion">
		<p>gestion des photos</p>
		<form method="POST">
		<input type="submit" name="manage_pictures_btn" value="Ajouter">

</form>
	</div>
	<div class="option_gestion">
		<p>Gestion des publicites</p>
		<form method="POST">
		<input type="submit" name="manage_publicite_btn" value="controler">
  </form>
</div>

</div>

<?php 
if (isset($_POST['manage_actualite_btn'])) {
header("Location:manage_actualite.php");
}
if (isset($_POST['manage_users_btn'])) {
header("Location:manage_users.php");
}
if (isset($_POST['manage_pictures_btn'])) {
header("Location:galerie.php");
}
if (isset($_POST['manage_publicite_btn'])) {
header("Location:manage_publicite.php");
}
?>
<?php 
require"coupures/footer.php";
?>

</body>
</html>