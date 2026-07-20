<?php
$servername = "localhost";
$username = "root";
$password = "aditi007";
$dbname = "bsp";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

 

$sql = " SELECT CSP_RMM, CSWP_DMM, DULKI,ROWGHAT,ACTUAL,PLAN_OPP FROM IRON_MINE_GROUP";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    echo "CSP_RMM: " . $row["CSP_RMM"]. " - CSWP_DMM: " . $row["CSWP_DMM"]. " - DULKI: " . $row["DULKI"]. " . " - ROWGHAT: " . $row["ROWGHAT"]. " " - ACTUAL: " . $row["ACTUAL"]. " " - PLAN_OPP: " . $row["PLAN_OPP"]. "  "<br>";
  }
} else {
  echo "0 results";
}
$conn->close();
?>