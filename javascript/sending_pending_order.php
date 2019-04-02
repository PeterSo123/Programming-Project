<?php
   include "dbconnect.php"
   
   $sql = "SELECT o.order_status,o.team_id,e.team_id  FROM orders o ,engineeringteams e WHERE o.team_id = e.team_id AND o.order_status = pending";
   mysql_select_db('test_db');
   $retval = mysql_query( $sql, $conn );
   
   if(! $retval ) {
   }
   
   while($row = mysql_fetch_array($retval, MYSQL_ASSOC)) {
      echo //what you want to show in engineering teams order table
   }
   
   
   mysql_close($conn);
?>