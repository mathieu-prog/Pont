<div class="menu">
	<div class="menu_entete">
		<div class="menu_text">
			<h3>MENU</h3>
			

		</div>
		<div class="menu_logo">
			<a href="index.php"><h1>LePont</h1></a>
			
		</div>
		<div class="menu_boutons">	
			<?php
			if(isset($_SESSION['id_user'])) { 
				$useri=$_SESSION['id_user'];
				$useri_query=$pdo->prepare("SELECT * FROM `users` where id_user=?");
				$useri_query->execute(array($useri));
				$user_i=$useri_query->fetch();
				if ($_SESSION['id_type_user']==2) { ?>

					<a href="publication.php"><input type="submit" value ="publier"name ="publish_btn"></a>
					
					<?php 

				}else if($_SESSION['id_type_user']==3){
					?>
					<a href="publication.php"><input type="submit" value ="publier"name ="publish_btn"></a>
					
					<form method="POST">
						<input type="submit" name="manage_btn" value="Gerer">
					</form>

				<?php }?>

				<form method="POST">
					<input type="submit" name="deconnect_btn" value="Deconnexion">
				</form>
				<a href="profile.php">	
					<img src="<?php echo $user_i['photo_url']  ?>" alt="p">
					<label><?php echo $user_i['nom'] ." ". $user_i['prenom'] ?></label>
				</a>

			<?php } else { ?> 
				<a href="signup.php"><input type="submit" value ="S'inscrire"name ="signup_btn"></a>
				<a href="login.php"><input type="submit" value ="S'identifier"name ="login_btn"></a>
			<?php } ?>
		</div>
	</div>

	<div class="menu_liste">
		<?php  
		$selectquery=$pdo->prepare("SELECT * FROM `type_actualite`");
		$selectquery->execute();
		while ($findtype=$selectquery->fetch()){ ?>
			<a href="index.php?info=<?php echo $findtype ['type_actualite'] ?>"><?php echo $findtype ['type_actualite'] ?></a>
		<?php } ?>
		<?php 
		if (isset($_POST['deconnect_btn'])) {
			session_destroy();
			header("Location:login.php");
		}
		if (isset($_POST['manage_btn'])) {
			header("Location:manage.php");

		}
		?>

	</div>
</div>