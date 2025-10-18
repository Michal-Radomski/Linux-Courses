<!-- <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Simple Index Page</title>
</head>
<body>
    <?php
        echo "<h1>Welcome to the Simple Index Page</h1>";
        echo "<p>This is a basic PHP page that outputs HTML content.</p>";
    ?>
</body>
</html> -->

<?php
	$conn = mysqli_connect('localhost','aanya','Asdf#1234','employee');

	$q = "select * from salary limit 4";

	$result = mysqli_query($conn,$q);

	while ($row = mysqli_fetch_array($result))
		{
			echo $row['eno']." ";
			echo $row['dept']." ";
			echo $row['salary']." ";
			echo "<br />";
		}
?>
