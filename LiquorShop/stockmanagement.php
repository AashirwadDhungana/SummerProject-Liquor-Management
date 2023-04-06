<?php
	include('connection.php');//get db connection from connection.php
	/*session_start();
	if(isset($_SESSION['userid'])){
		$id=$_SESSION['userid'];
	}*/
	
	//$product_Id=$_GET['product_Id'];
	
	
?>

<!DOCTYPE html>
<html>
<head>
    <title>to veiw the details of individual</title>
    
</head>
<body>
<?php

//$oid=$_GET['id'];
$id=$_GET['product_id'];
$qty=$_GET['order_quantity'];

$sql="UPDATE product SET product_quantity=product_quantity-'$qty' WHERE product_id='$id'";

//$sql1="UPDATE order SET status='Ship' WHERE id=$order_id";
//mysqli_query($sql_connection,$sql);
if(mysqli_query($sql_connection,$sql)){
    echo '<script>alert(" Order delivered");
                        window.location.href="admin_orders.php";
                                </script>';
}
else {
        echo "error updating record:".mysqli_error($sql_connection);
    }
?>

</body>
</html>