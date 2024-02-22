    <?php
    if (isset($_POST['publier_btn'])) {
        if (!empty($_POST['contenu_actu']) and !empty($_POST['titre_actu'])) {
            //CREATION DES VARIABLES
            $id = $_SESSION['id_user'];
            $titre = htmlentities($_POST['titre_actu']);
            $contenu = htmlentities($_POST['contenu_actu']);
            $type_actu = htmlentities($_POST['type_actu']);
            $file_name = $_FILES['photo_actu']['name'];
            $file_ext = strrchr($file_name, ".");
            $file_temp_name = $_FILES['photo_actu']['tmp_name'];
            $file_dest = 'photos/' . $file_name;
            $extension_auto = array('.png', '.jpg', '.jpeg', '.PNG', '.JPEG', '.gif', '.ico','webp');
   
        if (in_array($file_ext, $extension_auto)) {
            if (move_uploaded_file($file_temp_name, $file_dest)) {
                //uMISE A JOUR DU STATUT
              $acquery=$pdo->prepare("INSERT INTO `actualite`(`photo_name_actu`, `photo_url_actu`, `entete_actu`, `source_actu`, `texte_actu`,`type_actu`,`date_actu`) VALUES (?,?,?,?,?,?,NOW())");
               $acquery->execute(array( $file_name, $file_dest,  $titre, $id, $contenu, $type_actu));
            }
        }

    }else{
        $error="veuillez remplir tous les champs";
   }
   }

    ?>