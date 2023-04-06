<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	    <link rel="stylesheet" type="text/css" href="css/reporttable.css">

</head>
<body>
   
<tr>
                    <td><?php echo $row['order_id'];?></td>
                    <td><?php echo $row['order_user_id'];?></td>
                    <td><?php echo $row['order_product_id'];?></td>
                     <td><?php echo $row['order_quantity'];?></td>
                      <td><?php echo $row['order_total_price'];?></td>
                    <td><?php echo $row['order_date'];?></td>
                     <td><?php echo $row['order_status'];?></td>
                      
                      
                      <td> <b><a href="product.php?id=<?php echo $row['id']; ?>">delete</a></b></td>
                </tr>
</body>
</html>
					