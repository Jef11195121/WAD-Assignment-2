<?php include('Backendheader.php');?>


<?php

$mysqli = new mysqli("localhost","root","","SeanDB");

if(mysqli_connect_errno()){
	
	echo "I cannot connect";
	
	
}else{
	
	$query = "INSERT INTO scrumptious_client_information
	VALUES(null,'{$_POST['First']}','{$_POST['Surname']}','{$_POST['Username']}','{$_POST['Addressline1']}','{$_POST['Addressline2']}','{$_POST['Postcode']}','{$_POST['City']}','{$_POST['Emailaddress']}','{$_POST['Phonenumber']}','{$_POST['Password']}')";
	
	$results = mysqli_query($mysqli, $query);
	
	if($results == 1)
	{echo "Page added!";}
else{ echo "failed";}
	
}




?>

<form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>">
<label>First Name</label><br>
<input type="text" name="First" required>
<br>
<label>Last Name</label><br>
<input type="text" name="Surname" required>
<br>
<label>Username</label><br>
<input type="text" name="Username" required>
<br>
<label>Email Address</label><br>
<input type="text" name="Emailaddress" required>
<br>
<label>Password</label><br>
<input type="text" name="Password" required>
<br>
<label>Phone Number</label><br>
<input type="text" name="Phonenumber">
<br>
<label>Address line 1</label><br>
<input type="text" name="Addressline1" required>
<br>
<label>Address line 2</label><br>
<input type="text" name="Addressline2">
<br>
<label>City</label><br>
<input type="text" name="City" required>
<br>
<label>Postcode</label><br>
<input type="text" name="Postcode" required>
<br>
<input type="submit" value="Submit!">



<?php include('Backend.php');?>