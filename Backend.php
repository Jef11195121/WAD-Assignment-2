<?php include('Backendheader.php');?>

</main>

<h2>Pages</h2>
<ul>
<?php

$mysqli = new mysqli("localhost","root","","SeanDB");

if(mysqli_connect_errno()){
	
	echo "I cannot connect";
	
	
}else{
	
	$query = "SELECT * FROM pages";
	
	$results = mysqli_query($mysqli, $query);
	
	while($array = mysqli_fetch_array($results)){
		
		echo "<li>{$array['page_title']}  <a href='edit.php?id={$array['id']}'>Edit</a>  <a href='delete.php?id={$array['id']}'>Delete</a></li>";
		
	}
	
}


?>
</ul>
</html>