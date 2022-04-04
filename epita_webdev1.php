<?php
	$current_file = basename($_SERVER["SCRIPT_FILENAME"]);
	session_start();
	// Suis je connecté ?
	if($_SESSION['username'])
	{
		$user = $_SESSION['username'];
        // afficher un message
        echo "Bonjour $user, vous êtes connectés"; 
        setcookie("login", time()+(24*60*60));
        setcookie("hash", time() +(24*60*60));
	}
	// Est ce que je me deconnecte?
	if(isset($_GET["deconnexion"]) && $_GET['deconnexion']==true)
    {  
        setcookie("login", NULL, time() - 1);
        setcookie("hash", NULL, time() - 1);
        $_COOKIE["login"] = NULL;
        $_COOKIE["hash"] = NULL;
        header("location:login.php");
        session_unset();
    }
	// Si je ne suis pas connecté, est ce que je me connecte ?
     if(!$_SESSION['username'])
     {
        header("location:login.php");
         session_unset();
     }
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="epita_webdev1.css">
	<title>
	Liste de dossier 
	</title>

</head>
<body>
	
	<a href='epita_webdev1.php?deconnexion=true'><span>Déconnexion</span></a>
	

</body>
</html>