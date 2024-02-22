 <?php

if (isset($_POST['login_btn'])){
	if(!empty($_POST['email']) AND
		!empty($_POST['password'])){

		$email=$_POST['email'];
		$pass=SHA1($_POST['password']);
		$query=$pdo->prepare("select * from users, type_user where users. type_user=type_user.id_type_user and email=? and password=?");
		$query->execute(array($email,$pass));
		$trouv=$query->rowCount();
		if ($trouv>=1) {
		$user=$query->fetch();
		$_SESSION['id_user']=$user['id_user'];
		$_SESSION['nom']=$user['nom'];
		$_SESSION['prenom']=$user['prenom'];	
		$_SESSION['id_type_user']=$user['id_type_user'];
		$_SESSION['photo_name']=$user['photo_name'];
		$_SESSION['photo_url']=$user['photo_url'];
		header("Location:index.php?user=".$_SESSION['id_user']);
		}else{
			$error="Email ou mot de passe incorrect...";
		}
		}else{
			$error="Veuillez saisir tous les champs";
		} 
	}
?>