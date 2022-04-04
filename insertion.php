<?php
	session_start();
	if(isset($_POST['nom']) && isset($_POST['prenom']) && isset($_POST['username']) && isset($_POST['password']))
	{
	    // connexion à la base de données
	    $db_username = 'root';
	    $db_password = 'KnaKna@2003';
	    $db_name     = 'web_serv';
	    $db_host     = 'localhost';
	    $db = mysqli_connect($db_host, $db_username, $db_password,$db_name)
	           or die('Echec de la connexion database');
	    
	    // on applique les deux fonctions mysqli_real_escape_string et htmlspecialchars
	    // pour éliminer toute attaque de type injection SQL et XSS
	    $nom = mysqli_real_escape_string($db,htmlspecialchars($_POST['nom'])); 
	    $prenom = mysqli_real_escape_string($db,htmlspecialchars($_POST['prenom']));
	    $username = mysqli_real_escape_string($db,htmlspecialchars($_POST['username'])); 
	    $password = mysqli_real_escape_string($db,htmlspecialchars($_POST['password']));
	    
	    if($nom !== "" && $prenom !== "" && $username !== "" && $password !== "")
	    {
	        $exec_request = mysqli_query($db, "INSERT INTO web_co(CO_nom, CO_Prenom, CO_Username, CO_Password) VALUES('{$nom}','{$prenom}', '{$username}',sha2('{$password}', 512))");
	        header("Location:login.php");
	        
	    }
	    else
	    {
	    	echo "Erreur dans la saisie d'un des champs !";
	    }
	}
	else
	{
	   header('Location: register.php');
	}
	mysqli_close($db); // fermer la 

?>