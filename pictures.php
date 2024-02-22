<?php 
session_start()	;
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- <link rel="stylesheet" type="text/css" href="css/login.css">  -->
	<link rel="stylesheet" type="text/css" href="css/menu.css"> 
    
     	<link rel="stylesheet" type="text/css" href="css/footer.css">
	<title>pictures</title>
</head>
<body>

<div style="display:grid;grid-template-columns: repeat(7,13%);">
	<?php 
	require"coupures/db.php";
	// require"script/login_script.php";
	require"coupures/menu.php";
	

		$photo_galerie_query=$pdo->prepare("SELECT * FROM `galerie`");
		$photo_galerie_query->execute();
		$user_info=$photo_galerie_query->fetch();


	?>
	<?php 
    while($user_info=$photo_galerie_query->fetch()) { ?>
    	<img style="width: 150px;height: 150px;" src="galerie/<?php echo $user_info['nom_photo']  ?>">
  <?php  } ?>
</div>
<?php 
require"coupures/footer.php";
?>

</body>
</html>