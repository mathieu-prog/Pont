<?php 
require"coupures/db.php";
if(isset($_GET['modelateur']) and !empty($_GET['modelateur']) and is_numeric($_GET['modelateur'])){
	$id=intval($_GET['modelateur']);
	$suppr=$pdo->prepare("delete from users where id_user=?");
	$suppr->execute(array($id));
	header('Location:manage_users.php');
}

 ?>