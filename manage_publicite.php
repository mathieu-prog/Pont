	 <?php  

  session_start()
  ?>

  <!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/publicite.css">
	<link rel="stylesheet" type="text/css" href="css/menu.css">
     <link rel="stylesheet" type="text/css" href="css/footer.css">
	<title>publication</title>
</head>
<body>
<?php
require"coupures/db.php";
require"coupures/menu.php";

require"script/publicite_script.php";
?>
<div class="container">
....
	<center> <h2> veuillez remplir ce champ</h2></center>
	<?PHP if (isset($error)) {
		echo $error;
	}
	?>
	<form method="POST" enctype="multipart/form-data">
	 <div>
<label>photo_url_name:</label>
<input type="file" name="photo">	

</div>
<div>
<label>entete_pub:</label>
<input type="text" name="entete_pub">	

</div>

<div>
<label>nom_entreprise:</label>
<input type="text" name="nom_entreprise">

</div>
<div>
<label>adresse:</label>
<input type="text" name="adresse">


 </div>
<input type="submit" value="send"name="publicite_btn">
	</form>
</div>

<?php
require"coupures/footer.php";
?>
</body>
</html>