<?php
require 'config.php';
$id=$_GET['id'];
$sql="DELETE FROM product WHERE id='$id'";

if(mysqli_query($link,$sql)){
		header('Location:product.php');
	}
	else {
		echo "error updating record:".mysqli_error($link);
	}

?>