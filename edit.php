<?php include('Backendheader.php');?>

<body>
<header>
<div class="container">
<h2>Edit page</h2>
</div>
</header>



<main>
<div class="container">

<?php if($_POST){
	
$mysqli = new mysqli("localhost","root","","SeanDB");

if(mysqli_connect_errno()){
	
	echo "I cannot connect";
	
	
}else{
	
	$query = "UPDATE pages SET page_title='{$_POST['title']}', page_content='{$_POST['contents']}' WHERE id = {$_POST['id']}";
	
	$results = mysqli_query($mysqli, $query);
	
	if($results == 1)
	{echo "Page Updated!";}
else{ echo "failed";}
	
}

}


?>

<?php

$mysqli = new mysqli("localhost","root","","SeanDB");

if(mysqli_connect_errno()){
	
	echo "I cannot connect";
	
	
}else{
	
	$query = "SELECT * FROM pages WHERE id ={$_GET['id']}";
	
	$results = mysqli_query($mysqli, $query);
	
	while($array = mysqli_fetch_array($results)){
		
		$id = $array['id'];
		$title = $array['page_title'];
		$contents = $array['page_content'];
		
	}
	
}


?>

<form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>?id=<?php echo $id;?>">
 <input type="text" name="id" value="<?php echo $id;?>" hidden>
<br>
<input type="text" name="title" value="<?php echo $title;?>">
<br>
<label>Page Content</label><br>
<textarea name="contents">
<?php echo $contents;?>
</textarea>
<br>

<input type="submit" value="Submit!">

</div>
</main>