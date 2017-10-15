<?php
/**
 * Created by PhpStorm.
 * User: paulo.lamim
 * Date: 17/08/2017
 * Time: 13:25
 */

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "angling_direct_mage";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM clickcollect_stores";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        $data[] = array('title' => $row["title"], 'postcode' => $row["postcode"], 'latitude' => $row["latitude"], 'longitude' => $row["longitude"], 'distance' => 0);
    }
} else {
    echo "0 results";
}
// Obtain a list of columns
foreach ($data as $key => $row) {
    $title[$key]  = $row['title'];
    $postcode[$key] = $row['postcode'];
    $latitude[$key] = $row['latitude'];
    $longitude[$key] = $row['longitude'];
    $distance[$key] = $row['distance'];
}

$conn->close();
?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Coordinates</title>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCS4sN7TpvFAwM5P4OFETBR37xdBJ4hdSQ&libraries=places"></script>
    <script>
        var js_a = <?php echo json_encode($data); ?>;
    </script>
    <script type="text/javascript" src="closeAddress.js"></script>
</head>
<body onload="initialize()">
<input type="search" id="address">
<input type="button" value="Submit" onclick="codeAddress()">
<div id="container">

</div>
</body>
</html>