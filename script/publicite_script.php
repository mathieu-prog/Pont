    <?php
    if (isset($_POST['publicite_btn'])) {
        if (!empty($_POST['entete_pub']) and !empty($_FILES['photo'])) {
            //CREATION DES VARIABLES
            $entete = htmlentities($_POST['entete_pub']);
            $entreprise = htmlentities($_POST['nom_entreprise']);
             $adresse = htmlentities($_POST['adresse']);
            $file_name = $_FILES['photo']['name'];
            $file_ext = strrchr($file_name, ".");
            $file_temp_name = $_FILES['photo']['tmp_name'];
            $file_dest = 'photos/' . $file_name;
            $extension_auto = array('.png', '.jpg', '.jpeg', '.PNG', '.JPEG', '.gif', '.ico');
   
        if (in_array($file_ext, $extension_auto)) {
            if (move_uploaded_file($file_temp_name, $file_dest)) {
                //uMISE A JOUR DU STATUT
              $acquery=$pdo->prepare("INSERT INTO `publicite`( `entete_pub`, `photo_url_name`, `nom_entreprise`, `adresse`) VALUES (?,?,?,?)");
               $acquery->execute(array( $entete, $file_dest,  $entreprise,$adresse));
            }
        }

    }else{
        $error="veuillez remplir tous les champs";
   }
   }

    ?>