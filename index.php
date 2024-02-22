<?php
session_start();
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/menu.css">
	
		<link rel="stylesheet" type="text/css" href="css/footer.css">

	<title>HOME</title>
</head>
<body>
	<?php 
	require"coupures/db.php";
	require"coupures/menu.php";

	?>
	<?php
if(isset($_GET['info'])){
		$type=$_GET['info'] ;
		$findallactu=$pdo->prepare("SELECT * from actualite, users,type_actualite where actualite.type_actu=type_actualite.id_type_actu and type_actualite.type_actualite=? and actualite.source_actu=users.id_user");
		$findallactu->execute(array($type));
	}else{
		$findallactu=$pdo->prepare("SELECT * from actualite, users where actualite.source_actu=users.id_user");
		$findallactu->execute();
	}  



	?>

	<div class="container">
		
		<div class="infobody">
			<div class="a_la_une">
				A LA UNE
				<?php 
				$actualite_utile=$pdo->prepare("select id_actualite, count(id_actualite) as value_occurrence from number_likes group by id_actualite  order by value_occurrence DESC LIMIT 1");
				$actualite_utile->execute();
				$actualite_found=$actualite_utile->fetch(); 	
				$actualite_utile=$pdo->prepare("SELECT * from actualite, users where id_actu=?");
				$actualite_utile->execute(array($actualite_found['id_actualite']));
				$actualite_found=$actualite_utile->fetch() ?> 
				<div class="infos">
					<a href="actualite.php?actu=<?php echo $actualite_found['id_actu']  ?>">
						<div class="infocompte">

							<div class="infophoto">
								<img src="<?php echo $actualite_found['photo_url_actu'] ?>">
							</div>
							<div class="infotexte">
								<h3><?php echo $actualite_found['entete_actu'] ?></h3>
								<h4><?php echo $actualite_found['source_actu'] ?></h4>
								<p><?php echo $actualite_found['texte_actu'] ?></p>
							</div>
							</div>  <?php  ?>

						</div>
						
					</a>
					
				</div>

				<div class="infos">

					<?php   while($foundactu=$findallactu->fetch()){ ?>

						<a href="actualite.php?actu=<?php echo $foundactu['id_actu']  ?>">
							<div class="infocompte">
								
								<div class="infophoto">
									<img src="<?php echo $foundactu['photo_url_actu']  ?>"alt="photoinfo">
									
								</div>
								<div class="infotexte">
									<h3> <?php echo $foundactu['entete_actu']  ?></h3>
									<h4>PAR <?php echo $foundactu['nom'] ." ".$foundactu['prenom']  ?></h4>

									<p> <?php echo $foundactu['texte_actu']  ?></p>
								</div>
							</div>
						</a>
					<?php	} ?> 
				</div>
				<div class="publicite">
					<h1>publicite</h1> 
					<?php 
					$publicite_utile=$pdo->prepare("select* from publicite");
					$publicite_utile->execute();
					while($publicite_found=$publicite_utile->fetch()){ ?>
						<div class="publicite_carte">
							<label1><?php echo $publicite_found['entete_pub'] ?></label1>
							<img src="<?php echo $publicite_found['photo_url_name'] ?>">
							<label2><?php echo $publicite_found['nom_entreprise'] ?></label2>
							<label3>Adresse: <?php echo $publicite_found['adresse'] ?></label3>
						</div>
					<?php }?>


				</div>
			</div>
		</div>
	</body>
	<?php
	require"coupures/footer.php";
	?>
	</html>