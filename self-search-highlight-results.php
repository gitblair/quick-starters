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
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Example of PHP POST method</title>
</head>
<body>
<style>
.highlight {
      background-color: #FFFF00;
      font-weight: bold;
   }
</style>


<form method="post" action="<?php echo $_SERVER["PHP_SELF"];?>">
    <label for="inputQuery">Query:</label>
    <input type="text" name="query" id="inputQuery">
    <input type="submit" value="Submit">
    <a href="self-search-highlight-results.php"> Cancel </a>


</form>


<table border='1' style='width:100%;'>
<tr>
<th>id</th>
<th>Name</th>
<th>Notes</th>
</tr>


<?php



if (isset($_POST["query"])) {
          $query = $_POST["query"];
          $result = mysqli_query($con,"SELECT * FROM persons WHERE notes LIKE '%$query%'");
          $num_rows = mysqli_num_rows($result);

          echo "<p>" . $num_rows. " " . $query . " rows<p>";
                  while($row = mysqli_fetch_array($result))
                    {

                    $id = $row['id'];
                    $name = $row['name'];
                    $notes = $row['notes'];
                    $notes = str_ireplace($query, '<span class="highlight">'.$query.'</span>', $notes );

                    echo "<tr>";
                    echo "<td>" . $id . "</td>";
                    echo "<td>" . $name . "</td>";
                    echo "<td>" . $notes . "</td>";
                    echo "</tr>";
                    }






}
else {
$result = mysqli_query($con,"SELECT * FROM persons");
echo "<p><p>";
        while($row = mysqli_fetch_array($result))
          {

          $id = $row['id'];
          $name = $row['name'];
          $notes = $row['notes'];

          echo "<tr>";
          echo "<td>" . $id . "</td>";
          echo "<td>" . $name . "</td>";
          echo "<td>" . $notes . "</td>";
          echo "</tr>";

          }




}





echo "</table>";

mysqli_close($con);
?>
