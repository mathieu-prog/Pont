<?php
require"coupures/db.php";

session_start();
if(empty($_SESSION['id_user'])){
	header("Location:login.php");
}


$type=$_GET['actu']  ;
$findallactu=$pdo->prepare("SELECT * from actualite, users,type_actualite where actualite.source_actu=users.id_user and actualite.id_actu=?");
$findallactu->execute(array($type));
$findlikes=$pdo->prepare("SELECT COUNT(id_user) AS likes FROM number_likes where id_actualite=?;");
$findlikes->execute(array($type));
$found_likes=$findlikes->fetch();

$finddislikes=$pdo->prepare("SELECT COUNT(id_user) AS dislikes FROM number_dislike where id_actualite=?;");
$finddislikes->execute(array($type));
$found_dislikes=$finddislikes->fetch();
?>


<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/actualite.css">
	<link rel="stylesheet" type="text/css" href="css/menu.css">
	<link rel="stylesheet" type="text/css" href="css/publish.css">
		<link rel="stylesheet" type="text/css" href="css/footer.css">
	<title>actualite</title>
</head>
<body>
	<?php 
	require"coupures/menu.php";
	?>

	<div class="container">


		<div class="infobody">
			<div class="a_la_une">
				<h1>a la une</h1>

			</div>
			<div class="infos">

				<?php $foundactu=$findallactu->fetch() ?>


				<div class="infocompte">

					<div class="infophoto">
						<h1><?php echo $foundactu['entete_actu']  ?>"</h1>
						<img src="<?php echo $foundactu['photo_url_actu']  ?>"alt="photoinfo">

					</div>
					<div class="infotexte">
						<h2> <?php echo $foundactu['entete_actu']  ?></h2>
						<h4>PAR <?php echo $foundactu['nom'] ." ".$foundactu['prenom']  ?></h4>

						<p> <?php echo $foundactu['texte_actu']  ?></p>
					</div>
					<form method="POST">
					<div class="reactions">

						<div class="like_dislike">
							<div class="likedis">
								<button	type="submit" name="like">
									<img src="images/like.png">
									<label>(<?php echo $found_likes['likes']  ?>)
									</label>
								</button>
							</div>
							
							<div class="likedis">
								<button type="submit" name ="dislike">
									<img src="images/dislike.png">
									<label>(<?php echo $found_dislikes['dislikes']  ?>)</label>
								</button>
							</div>
						</div>
						<div class="comment">
							<label>commenter</label>
							<img src="images/comment.png">
							
								<textarea  cols="100" rows="2" name="commentaire"></textarea>

								<input type="submit" value="Commenter" name="comment_btn">
								<?php require"script/comment_script.php"; ?>
							</form>
						</div>	

					</div>
				</div>
				<div class="comments">
					<?php
					$findcommentsquery=$pdo->prepare("SELECT * FROM commentaires,users where commentaires.id_user=users.id_user and commentaires.id_actualite=".$type);
					$findcommentsquery->execute();
					while ($foundcomments=$findcommentsquery->fetch()) {
						?>
						<div class="card_comment">
						
								<div class="name"><?php echo $foundcomments['nom']." ".$foundcomments['prenom'] ?></div>
							<div class="comment"><?php echo $foundcomments['text_commentaire'] ?></div>
							<label><?php echo $foundcomments['date_commentaire'] ?></label>
						</div>
					<?php } ?>
				</div>

			</div>
			<div class="publicite">
				<h2>PUBLICITE</h2> 
			<?php 
$publicite_utile=$pdo->prepare("select* from publicite");
$publicite_utile->execute();
while($publicite_found=$publicite_utile->fetch()){ ?>
	<div class="publicite_carte">
<label1><?php echo $publicite_found['entete_pub'] ?></label1>
<img src="<?php echo $publicite_found['photo_url_name'] ?>">
<label2><?php echo $publicite_found['nom_entreprise'] ?></label2>
<label3><?php echo $publicite_found['adresse'] ?></label3>
</div>
<?php }?>


			</div>
		</div>
	</div>
</body>
<?php
require"coupures/footer.php";
require "script/like_dislike_script.php"
?>

</html>