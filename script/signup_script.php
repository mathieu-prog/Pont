		<?php 
		if (isset($_POST['btn'])) {
			// on affiche un message
			if(!empty($_POST['nom']) AND 
				!empty($_POST['prenom']) and 
				!empty($_POST['email']) and 
				!empty($_POST['telephone']) and 
				!empty($_POST['password']) and 
				!empty($_POST['adresse']) and 
				!empty($_FILES['photo'])){

			$nom= htmlentities($_POST['nom']);
			$prenom= htmlentities($_POST['prenom']);
			$email= htmlentities($_POST['email']);
			$telephone= htmlentities($_POST['telephone']);
			$password=SHA1($_POST['password']);
			$adresse= htmlentities($_POST['adresse']);

			$file_name =$_FILES['photo']['name'];
			$file_ext= strrchr($file_name, ".");
			$file_temp_name= $_FILES['photo']['tmp_name'];
			$file_dest= 'photos/'.$file_name;
			$extension_auto= array('.png','.jpg','.jpeg','.PNG','.JPEG','.gif','.ico');
			$verifyName= preg_match("/^[A-Za-z]+$/", $nom);
			$verifyNameSpace= preg_match("/\\s/", $nom);
			$verifyNameNumber= preg_match("/^[0-9]+$/", $nom);
			$phonelength=strlen($telephone);
			$verifyPhone= preg_match("/^[0-9]+$/",$telephone);
			if($verifyPhone){
			if($phonelength>=8 and $phonelength<=13){

			if((!$verifyNameNumber)){
			if(in_array($file_ext,$extension_auto)){
				if(move_uploaded_file($file_temp_name, $file_dest)){
					if(filter_var($email,FILTER_VALIDATE_EMAIL)){
						$verif=$pdo->prepare("select * from users where email=? and telephone=?");
						$verif->execute(array($email,$telephone));
						$result=$verif->rowCount();
						if($result==0){
						$q=$pdo->prepare("INSERT INTO `users`(`nom`, `prenom`, `email`,`telephone`, `password`,  `adresse`, `photo_name`, `photo_url`, `type_user`)values(?,?,?,?,?,?,?,?,1)");
						$q->execute(array($nom,$prenom,$email,$telephone,$password,$adresse,$file_name,$file_dest));
						if($q){
							$error="Felicitation! ".$nom.", vous avez reussi a s'inscrire sur notre site web.";
						}
					}else{
						$error="Attention!!! (".$telephone." et ".$email.") Existe deja";
					}
					}else{
						$error="L'email (".$email.") n'est pas valide, ex: toto@gmail.com";
					}
				}else{
					$error="Erreur de chargement de l'image";
				}
			
			}else{
				$error="Veuillez verifier l'extension de votre photo SVP...";
			}
			}else{
				$error="votre nom ".$nom." n'est pas conforme";
			}
		}else{
			$error="votre telephone est invalide";
		}
	}else{
		$error="Votre telephone ".$telephone." n'est pas valide. Ex: 679273938";
	}
			}else{
				$error="Veuillez saisir tous les champs SVP...";
			}

		}

		 ?>

