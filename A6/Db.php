<!--
  Fernando Juarez
  CIS444
  Date: 11/25/2019
  http://
--> 

<?php
  // set up connection
  $servername = "localhost";
  $username = "juare066";
  $password = "juare066";
  $database = "juare066";
  $conn = mysqli_connect($servername, $username, $password, $database);
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <title> Fernando Juarez </title>
  <meta charset="utf-8" />
  <link rel="stylesheet" href="styles6.css">
</head>

<body>
  <h1> NFL Football Teams </h1>
  <table>
    <caption>Statistics</caption>
    <tr>
      <th scope="col">teamID</th>
      <th scope="col">teamName</th>
      <th scope="col">startYear</th>
      <th scope="col">ownerName</th>
      <th scope="col">GMName</th>
      <th scope="col">coachName</th>
      <th scope="col">startQB</th>
      <th scope="col">officeAddress</th>
      <th scope="col">city</th>
      <th scope="col">state</th>
      <th scope="col">zipCode</th>
      <th scope="col">phone</th>
      <th scope="col">overallRecord</th>
      <th scope="col">confRecord</th>
    </tr>
    <?php
      // make query
      $team = $_POST['ID'];
      $result = mysqli_query($conn, "SELECT * FROM juare066.Teams WHERE teamID = '$team'"); 
      
      // display results
      while ($row = mysqli_fetch_assoc($result)) {
        echo "<tr>";
        foreach ($row as $column)
          echo "<td>$column</td>";
        echo "</tr>";
      }
      // display number of rows returned
      $rowcount=mysqli_num_rows($result);
      echo "Returned Results: $rowcount";
      mysqli_close($conn);
    ?>
  </table>
</body>

</html>
