<?php

	if($_POST){
		
		$username = $_POST['username'];
		$password = $_POST['password'];
		
		$mysqli = new mysqli("localhost", "root", "", "SeanDB");
		
		if(mysqli_connect_errno()){
			
			echo "Error connecting to database";
			
		}
			else{
				
				$query = "SELECT * FROM scrumptious_client_information WHERE Username = '{$username}'";
				
				$results = mysqli_query($mysqli, $query);
				
				$numberOfRows = mysqli_num_rows($results);
				
				if($numberOfRows == 1){
					
					while($array = mysqli_fetch_array($results)){
						
						$dbPassword = $array['Password'];
						
						if($dbPassword == $password){
							
							session_start();

								$_SESSION['Username'] = $username;
								
								header('Location: Backend.php');
								
						}
						
					}
					
				}
				
			}
			
		
	}
	?>

<main>


<form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>">
<label>Username:</label>
<input type="text" name="username"><br>
<label>password:</label>
<input type="password" name="password"><br>
<input type="submit" name="login">
</form>

</main>