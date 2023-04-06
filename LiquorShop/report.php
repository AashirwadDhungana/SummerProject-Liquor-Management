<?php
require 'config.php';
$order_date=$_GET['id'];
include 'tableheading.php';
$sql=" select * from order where DATE_FORMAT(order_date, '%m') = '$order_date'";

$result=$link->query($sql);

while($row = mysqli_fetch_array($result)){
    include 'data.php';
}

?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
</head>
<body>
 <a href="admin.php"><p>BACK</p></a>
</body>
</html>