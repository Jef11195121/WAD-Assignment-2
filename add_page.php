<?php include('Backendheader.php');?>

<body>
<header>
<div class="container">
<h2>Add page</h2>
</div>
</header>



<main>
<div class="container">

<?php if($_POST){
	
$mysqli = new mysqli("localhost","root","","SeanDB");

if(mysqli_connect_errno()){
	
	echo "I cannot connect";
	
	
}else{
	
	$query = "INSERT INTO pages
	VALUES(null,'{$_POST['title']}','{$_POST['contents']}')";
	
	$results = mysqli_query($mysqli, $query);
	
	if($results == 1)
	{echo "Page added!";}
else{ echo "failed";}
	
}

}


?>

<form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>">
<label>Page Title</label><br>
<input type="text" name="title" required>
<br>
<label>Page Content</label><br>
<textarea name="contents" required>
</textarea>
<br>

<input type="submit" value="Submit!">

</div>
</main>

<?php include('Backend.php');?>