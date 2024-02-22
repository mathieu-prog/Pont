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
	<div class="container_actualite">
		<div class="liste_moderateurs">
			<label>Selectionner le modelateur:</label>
			<form method="POST">
				<select name="selected_modelateur">
					<option disabled selected>Selectionner le modelteur</option>

					<?php 
					$list_moderateur_query=$pdo->prepare("SELECT * FROM users where type_user=2");
					$list_moderateur_query->execute();
					while ($list_moderateurs=$list_moderateur_query->fetch()) {
						?>
						<option value="<?php echo $list_moderateurs['id_user']?>"><?php echo $list_moderateurs['nom']." ".$list_moderateurs['prenom'];?></option>
					<?php }

					?>
				</select>
				<form method="POST">
					<input type="submit" value="RECHERCHER" name="search_btn">
                     <input type="submit" value="VISUALITE" name="picture_btn">
				</form>
			</div>
			<?php
			if (isset($_POST['picture_btn'])) { 
header("Location:pictures.php");
   } ?>
			<div class="liste_actualites">
				<?php 
				if (isset($_POST['selected_modelateur'])) {
					$selected_modelateur=intval($_POST['selected_modelateur']);
					$liste_info_query=$pdo->prepare("SELECT * FROM actualite where source_actu=?");
					$liste_info_query->execute(array($selected_modelateur));
					while($list_info=$liste_info_query->fetch()){ ?>
						<a href="galerie.php?actu=<?php echo $list_info['id_actu']?>">
							<div class="info">
								<div>
									<img src="<?php echo $list_info['photo_url_actu']?>">
								</div>
								<div>
									<h3><?php echo $list_info['entete_actu']?></h3>	
								</div>
							</div>
						</a>
						<hr>
					<?php } 

				}else{
					echo"Veuillez Selectionner le modelateur";

				} ?>
				


			</div>
			<div class="actualite_infos">
				<?php 
				if (isset($_GET['actu'])) {
				$selected_actu=intval($_GET['actu']);
				$actu_info_query=$pdo->prepare("SELECT * FROM actualite where id_actu=?");
				$actu_info_query->execute(array($selected_actu));
				$actu_info=$actu_info_query->fetch();
				?>
				<form method="POST" enctype="multipart/form-data">	
					
					<div class="image">
						<img src="<?php echo $actu_info['photo_url_actu']?>">
						<input type="file" name="photo">
					</div>
		
                    <input type="submit" name="ajouter_photos" value="addpicture">
                 
				
				</form>
				<?php 
					}else{
						echo "Selectionner une actualite";
					}
				

					
                   if (isset($_POST['ajouter_photos'])) {
					if(isset($_FILES['photo']) and !empty($_FILES['photo'])){
						$file_name =$_FILES['photo']['name'];
						$file_ext= strrchr($file_name, ".");
						$file_temp_name= $_FILES['photo']['tmp_name'];
						$file_dest= 'galerie/'.$file_name;
						$extension_auto= array('.png','.jpg','.jpeg','.PNG','.JPEG','.gif','.ico');
						if(in_array($file_ext,$extension_auto)){
							if(move_uploaded_file($file_temp_name, $file_dest)){

					$ajou_photo_query=$pdo->prepare("INSERT INTO `galerie`( `id_actualite`, `nom_photo`, `photo_url_name`) VALUES (?,?,?)");
					$ajou_photo_query->execute(array($selected_actu,$file_name,$file_dest));
							}else{
								$error="Erreur de chargement de l'image";
							}

						}else{
							$error="Veuillez verifier l'extension de votre photo SVP...";
						}



					}
				}
					?>

				</div>
			</div>


			<?php 
			require"coupures/footer.php";
			?>

		</body>
		</html>