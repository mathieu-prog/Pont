<?php 
if(isset($_POST['comment_btn'])) {
	$id_actu=$foundactu['id_actu'];
	$id_commenter=$_SESSION['id_user'];
	$comment=htmlentities($_POST['commentaire']);
	if(!empty($comment)){
	$commentquerry=$pdo->prepare("INSERT INTO commentaires(id_actualite, id_user,text_commentaire,date_commentaire) VALUES (?,?,?,NOW())");
	$commentquerry->execute(array($id_actu,$id_commenter,$comment));

	$comment="";
}
}
?>