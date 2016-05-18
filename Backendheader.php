<?php

	session_start();
	
	if(!isset($_SESSION['Username'])){
		
		header('Location:Loginscript.php');
		
	}
	
	

?>

<!doctype html>
<html>
<head>
<style>
body{background:#f5cf8a;}
</style>

<header>
<a href="add_page.php">Add new page</a>
<a href="add_user.php">Add user</a>

<a href="Logout.php">Logout</a>
</header>
</head>

<main>

