
<?php 
if (isset($_POST['Update_User_btn'])) {
	// code...

if(isset($_SESSION['id_user']) and !empty($_SESSION['id_user']) and is_numeric($_SESSION['id_user'])){

$id=intval($_SESSION['id_user']);
$query=$pdo->prepare("select * from users where id_user=?");
$query-> execute(array($id));
$info=$query->fetch();
if(isset($_POST['nom']) and !empty($_POST['nom']) and ($info['nom']!= $_POST['nom'])){
	$newNom=htmlentities($_POST['nom']);
	$modNom=$pdo->prepare("update users set nom=? where id_user=?");
	$modNom->execute(array($newNom, $id));
	header("Location:profile.php");

}
if(isset($_POST['prenom']) and !empty($_POST['prenom']) and ($info['prenom']!= $_POST['prenom'])){
	$newpreNom=htmlentities($_POST['prenom']);
	$modpreNom=$pdo->prepare("update users set prenom=? where id_user=?");
	$modpreNom->execute(array($newpreNom, $id));
	header("Location:profile.php");

}
if(isset($_POST['telephone']) and !empty($_POST['telephone']) and ($info['telephone']!= $_POST['telephone'])){
	$newPhone=htmlentities($_POST['phone']);
	$modPhone=$pdo->prepare("update users set telephone=? where id_user=?");
	$modPhone->execute(array($newPhone, $id));
	header("Location:profile.php");

}
if(isset($_POST['email']) and !empty($_POST['email']) and ($info['email']!= $_POST['email'])){
	$newEmail=htmlentities($_POST['email']);
	$modEmail=$pdo->prepare("update users set email=? where id_user=?");
	$modEmail->execute(array($newEmail, $id));
	header("Location:profile.php");

}
if(isset($_POST['password']) and !empty($_POST['password']) and ($info['password']!= sha1($_POST['password']))){
	$newPass=SHA1($_POST['password']);
	$modPass=$pdo->prepare("update users set password=? where id_user=?");
	$modPass->execute(array($newPass, $id));
	header("Location:profile.php");

}
if(isset($_POST['adresse']) and !empty($_POST['adresse']) and ($info['adresse']!= $_POST['adresse'])){
	$newaddresse=htmlentities($_POST['adresse']);
	$newaddresse_query=$pdo->prepare("update users set adresse=? where id_user=?");
	$newaddresse_query->execute(array($newaddresse, $id));
	header("Location:profile.php");

}
if(isset($_FILES['photo']) and !empty($_FILES['photo']) and ($info['photo_name']!= $_FILES['photo'])){
			$file_path=$_FILES['photo']['path'];
			$file_name =$_FILES['photo']['name'];
			$file_ext= strrchr($file_name, ".");
			$file_temp_name= $_FILES['photo']['tmp_name'];
			$file_dest= 'photos/'.$file_name;
			$extension_auto= array('.png','.jpg','.jpeg','.PNG','.JPEG','.gif','.ico');
			if(in_array($file_ext,$extension_auto)){
				if(move_uploaded_file($file_temp_name, $file_dest)){
				//requete
				$modPhoto=$pdo->prepare("update users set photo_name=?, photo_url=? where id_user=?");
				$modPhoto->execute(array($file_name,$file_dest,$id));
				header("Location:profile.php");

			}else{
					$error="Erreur de chargement de l'image";
				}
			
			}else{
				$error="Veuillez verifier l'extension de votre photo SVP...";
			}
	
	
	

}
}
}
 ?>

