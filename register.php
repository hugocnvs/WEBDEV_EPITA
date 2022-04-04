<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="register.css" media="screen" type="text/css" />
	<title>INSCRIPTION</title>
</head>
<body>
	<div id="container">
            <!-- zone de isncription -->
            
            <form action="insertion.php" method="POST">
                <h1>INSCRIPTION</h1>
          
                <label><b>Votre nom</b></label>
                <input type="text" placeholder="Entrer le nom d'utilisateur" name="nom" required>

                <label><b>Votre prenom</b></label>
                <input type="text" placeholder="Entrer le nom d'utilisateur" name="prenom" required>

                <label><b>Votre username</b></label>
                <input type="text" placeholder="Entrer le nom d'utilisateur" name="username" required>

                <label><b>Votre Mot de passe</b></label>
                <input type="password" placeholder="Entrer le mot de passe" name="password" required>

                <input type="submit" id='submit' value='ENREGISTRER' >

                
                
            </form>
    </div>


</body>
</html>