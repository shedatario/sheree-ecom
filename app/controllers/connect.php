<?php
	$host = "db4free.net";
	$username = 'sheree_ecom';
	$password = 'she020695';
	$dbname = 'sheree_ecom_db';


	$conn = mysqli_connect($host, $username, $password, $dbname);

	if(!$conn){
		die('connection failed' . mysqli_error($conn));
	}
	// echo "connected";



?>