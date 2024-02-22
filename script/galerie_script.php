		<?php 
		if (isset($_POST['ajouter_photos])) {
			
			
			$file_name =$_FILES['photo']['name'];
			$file_ext= strrchr($file_name, ".");
			$file_temp_name= $_FILES['photo']['tmp_name'];
			$file_dest= 'galerie/'.$file_name;
			$extension_auto= array('.png','.jpg','.jpeg','.PNG','.JPEG','.gif','.ico');
			
				if(move_uploaded_file($file_temp_name, $file_dest)){
				
						$q=$pdo->prepare("INSERT INTO galerie(nom_photo,photo_url_name) VALUES (?,?)");
						$q->execute(array($file_name,$file_dest));
					
					}
					
}
		 ?>
