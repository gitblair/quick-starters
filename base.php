<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require "db.php";

$con=mysqli_connect($host, $username, $password, $dbname);
// Check connection
if (mysqli_connect_errno())
{
echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$result = mysqli_query($con,"SELECT * FROM persons");


// mysqli_query($con,"SELECT *
// INTO OUTFILE 'Desktop/temp/file.csv'
// FIELDS TERMINATED BY ',
//  LINES TERMINATED BY '\n'
//  FROM employees"
//  );


echo "<table border='1'>
<tr>
<th>id</th>
<th>Name</th>
<th>Notes</th>
</tr>";

while($row = mysqli_fetch_array($result))
{
echo "<tr>";
echo "<td>" . $row['id'] . "</td>";
echo "<td>" . $row['name'] . "</td>";
echo "<td>" . $row['notes'] . "</td>";
echo "</tr>";
}
echo "</table>";

mysqli_close($con);
?>
