<?php
include_once("conn.php");
$select = "INSERT INTO table_name VALUES (/*var id*/='".$_GET['']."')";
$query = mysqli_query($conn, $select) or die($select);
header ("Location: notification.php");
?>