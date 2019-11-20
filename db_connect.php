<?php
	$servername = "localhost";
	$username = "root";
	$password = "";
    $dbname = "cr10_clemens_sauer_biglibrary";
	// Create connection
    $conn = mysqli_connect($servername, $username, $password, $dbname);
    // Check connection
    if (!$conn) {
        die("Connection failed: "  . mysqli_connect_error());
    } else {
        echo "Successfully connected!";
    }
?>