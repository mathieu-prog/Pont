<?php 
if (isset($_POST['like'])) {

	$verifydislike=$pdo->prepare("SELECT `id_actualite`, `id_user` FROM `number_dislike` where id_actualite=? and id_user=? ");
	$verifydislike->execute(array($type,$_SESSION['id_user']));
	$verifieddislike=$verifydislike->rowCount();
	if ($verifieddislike==1) {
		$deletedislike=$pdo->prepare("DELETE FROM `number_dislike` WHERE id_user=? and id_actualite=?");
		$deletedislike->execute(array($_SESSION['id_user'],$type));
		$like_query=$pdo->prepare("INSERT INTO `number_likes`(`id_actualite`, `id_user`) VALUES (?,?)");
		$like_query->execute(array($type,$_SESSION['id_user']));	
	}else{

		$verifylike=$pdo->prepare("SELECT `id_actualite`, `id_user` FROM `number_likes` where id_actualite=? and id_user=? ");
		$verifylike->execute(array($type,$_SESSION['id_user']));
		$verifiedlike=$verifylike->rowCount();
		if ($verifiedlike==1) {

		}else{

			$like_query=$pdo->prepare("INSERT INTO `number_likes`(`id_actualite`, `id_user`) VALUES (?,?)");
			$like_query->execute(array($type,$_SESSION['id_user']));	
		}


	}
}

/////////////////////////////////////dislike///////////////////////////////////////////
if (isset($_POST['dislike'])) {

	$verifydislike=$pdo->prepare("SELECT `id_actualite`, `id_user` FROM `number_dislike` where id_actualite=? and id_user=? ");
	$verifydislike->execute(array($type,$_SESSION['id_user']));
	$verifieddislike=$verifydislike->rowCount();
	if ($verifieddislike==1) {

	}else{

		
		$verifylike=$pdo->prepare("SELECT `id_actualite`, `id_user` FROM `number_likes` where id_actualite=? and id_user=? ");
		$verifylike->execute(array($type,$_SESSION['id_user']));
		$verifiedlike=$verifylike->rowCount();
		if ($verifiedlike==1) {
			$deletelike=$pdo->prepare("DELETE FROM `number_likes` WHERE id_user=? and id_actualite=?");
			$deletelike->execute(array($_SESSION['id_user'],$type));

			$dislike_query=$pdo->prepare("INSERT INTO `number_dislike`(`id_actualite`, `id_user`) VALUES (?,?)");
			$dislike_query->execute(array($type,$_SESSION['id_user']));	
		}else{
			$dislike_query=$pdo->prepare("INSERT INTO `number_dislike`(`id_actualite`, `id_user`) VALUES (?,?)");
			$dislike_query->execute(array($type,$_SESSION['id_user']));	
		}
	}	
}




?>