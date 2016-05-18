<?php
include ('Header.php') ?>
<main>
	
	
	<?php

$mysqli = new mysqli("localhost","root","","SeanDB");

if(mysqli_connect_errno()){
	
	echo "I cannot connect";
	
	
}else{
	
	$query = "SELECT * FROM pages WHERE id ={$_GET['id']}";
	
	$results = mysqli_query($mysqli, $query);
	
	while($array = mysqli_fetch_array($results)){
		
		echo "<h2>{$array['page_content']}</h2>";
		
	}
	
}


?>

	
	
</main>
<?php include ('Footer.php') ?>