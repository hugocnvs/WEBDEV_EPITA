<?php
define('DBSERVER', 'localhost'); // Database server
define('DBUSERNAME', 'root'); // Database username
define('DBPASSWORD', 'KnaKna@2003'); // Database password
define('DBNAME', 'web_serv'); // Database name

$db = mysqli_connect(DBSERVER, DBUSERNAME, DBPASSWORD, DBNAME);


if($db === false){

    die("Error: connection error. " . mysqli_connect_error());
}

?>