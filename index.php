<html lang='en'>

<head>
    <meta name="XXXXX" content="Codefactory">
    <meta charset='utf-8'>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!-- Own CSS -->
    <link rel='stylesheet' type='text/css' href='XXXXX.css'>
    <!-- Jquery -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <!-- Popper -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <!-- JSON -->
    <script type="text/javascript" src="list_of_new_products.json"></script>
    <title>My libary</title>
    <style type="text/css" media="screen">
    .jumbotron {
        background-image: url("https://www.onb.ac.at/fileadmin/user_upload/1_Sitemap/Foerdern_und_Mieten/Raumvermietungen/Augustinerlesesaal/cont_augustinerlesesaal2.jpg");
        padding-top: 6%;
        padding-bottom: 6%;
        -webkit-background-size: cover;
        -moz-background-size: cover;
        background-size: cover;
        -o-background-size: cover;
    }
    .pictures{
        height: 100%;
        width: 100%;
        border-style: solid;
        border-color: red;
    }
    </style>
</head>

<body>
    <header>
        <div class="jumbotron">
            <h1 class="text-white">Clemens Library</h1>
        </div>
    </header>
<a href="create.php"><button type='button' class='btn btn-primary'>Create New Item</button></a>
<br>
<br>
<!-- Connection to database -->
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
    <!-- retrieving data -->
	<div>
        <?php 
        $sql = "SELECT * FROM library";
        $result = mysqli_query($conn, $sql);
        // fetch the next row (as long as there are any) into $row
        if ($result->num_rows > 0) {
        // output data of each row
        echo "<table class='table'>";
        echo "<thead>";
        echo "<tr>";
        echo "<th scope='col'>ID</th> <th scope='col'>Title</th> <th scope='col'>Picture</th> <th scope='col'>First Name</th> <th scope='col'>Last Name</th> <th scope='col'>ISBN</th> <th scope='col'>Book/CD</th> <th scope='col'>Short Description</th> <th scope='col'>Publish Date</th> <th scope='col'>Publisher</th> <th scope='col'>Adress 1</th> <th scope='col'>Adress 2</th> <th scope='col'>Size</th> <th scope='col'>Status</th>";
        echo "</tr>";
        echo "</thead>";
        echo "<tbody>";
        while($row = $result->fetch_assoc()) {
        echo "<tr><th scope='row'>". $row["pk_libraby_id"] ."</th><td>". $row["title"] ."</td><td><div class='pictures'><img src=". $row["img"] ."width='100'></div></td><td>". $row["surname_author"] ."</td><td>". $row["lastname_author"] ."</td><td>". $row["ISBN"] ."</td><td>". $row["type"] ."</td><td>". $row["short_description"] ."</td><td>". $row["publish_date"] ."</td><td>". $row["publisher_name"] ."</td><td>". $row["publisher_adress"] ."</td><td>". $row["publisher_city"] ."</td><td>". $row["publisher_size"] ."</td><td>". $row["status"] ."</td><td><a href='delete.php?id=" .$row['pk_libraby_id']. "'><button type='button' class='btn btn-danger'>delete</button></a>" . "<a href='edit.php?id=" .$row['pk_libraby_id']. "'>" . "<button type='button' class='btn btn-primary'>update</button></a>";
        }
        } else {
         echo "0 results";
        }
        // Close connection
        mysqli_close($conn);
        ?>	
	</div>

    <!-- Own JS -->
    <script type="text/javascript" src="empty_file.js"></script>
</body>

<img src="" alt="">

</html>