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
					<input type="submit" value="RESEARCH" name="search_btn">
                   
                    
                   
				</form>
				</form>
			</div>
			<div class="liste_actualites">
				<?php 
				if (isset($_POST['selected_modelateur'])) {
					$selected_modelateur=intval($_POST['selected_modelateur']);
					$liste_info_query=$pdo->prepare("SELECT * FROM actualite where source_actu=?");
					$liste_info_query->execute(array($selected_modelateur));
					while($list_info=$liste_info_query->fetch()){ ?>
						<a href="manage_actualite.php?actu=<?php echo $list_info['id_actu']?>">
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
					// code...
				
				$selected_actu=intval($_GET['actu']);
				$actu_info_query=$pdo->prepare("SELECT * FROM actualite where id_actu=?");
				$actu_info_query->execute(array($selected_actu));
				$actu_info=$actu_info_query->fetch();
				?>
				<form method="POST" enctype="multipart/form-data">	
					<div class="entete">
						<input type="text" name="entete" value="<?php echo $actu_info['entete_actu']?>">
					</div>
					<div class="image">
						<img src="<?php echo $actu_info['photo_url_actu']?>">
						<input type="file" name="photo">
					</div>
					<textarea cols="100" rows="10" name="texte_actu"><?php echo $actu_info['texte_actu']?></textarea>


					<input type="submit" name="Modify_actu" value="Modify">
					<input type="submit" name="delete_actu" value="delete">
				</form>

				<?php 
			}
				else{
					echo"Veuiller Selectionner l'actualite";
				}
if (isset($_POST['delete_actu'])) {
	$delete=$pdo->prepare("DELETE FROM `actualite` WHERE id_actu=?");
	$delete->execute(array($selected_actu));
	header("Location:index.php");
}
				if (isset($_POST['Modify_actu'])) {
	// code...
					$enteteU=$_POST['entete'];
					
					$texte_actuU=$_POST['texte_actu'];
					$update_actu_query=$pdo->prepare("UPDATE actualite SET entete_actu=?,texte_actu=? where id_actu=?");
					$update_actu_query->execute(array($enteteU,$texte_actuU,$selected_actu));

					if(isset($_FILES['photo']) and !empty($_FILES['photo'])){
						$file_name =$_FILES['photo']['name'];
						$file_ext= strrchr($file_name, ".");
						$file_temp_name= $_FILES['photo']['tmp_name'];
						$file_dest= 'photos/'.$file_name;
						$extension_auto= array('.png','.jpg','.jpeg','.PNG','.JPEG','.gif','.ico');
						if(in_array($file_ext,$extension_auto)){
							if(move_uploaded_file($file_temp_name, $file_dest)){
								$modPhoto=$pdo->prepare("update actualite set photo_name_actu=?, photo_url_actu=? where id_actu=?");
								$modPhoto->execute(array($file_name,$file_dest,$selected_actu));

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