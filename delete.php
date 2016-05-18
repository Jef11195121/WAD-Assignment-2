<?php include('Header.php');?>
<h2>Delete Record</h2>
<?php 

if ($_GET){

// get the id from the URL

$id = $_GET['id'];

$mysqli = new mysqli("localhost", "root", "", "SeanDB");

if (mysqli_connect_errno()){

    echo "I cannot connect";
	}
else{

	// build our delete query, inputting the ID from the URL
	
    $query = "DELETE FROM pages WHERE id ={$id}";

    // Run the query with the database details above
    
    $results = mysqli_query($mysqli, $query);
    
    // echo should return "1" if sucessful
    echo $results;
    
    echo '<a href="Index.php">Return to Search</a>';

			   
	} 
}
?>

<?php include('Footer.php');?>
