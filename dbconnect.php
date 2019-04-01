<?php

       //ENTER YOUR DATABASE CONNECTION INFO BELOW:
         $hostname="127.0.0.1";
         $database="hkt";
         $username="";
         $password="";

   //DO NOT EDIT BELOW THIS LINE
     $link = mysql_connect($hostname, $username, $password);
     mysql_select_db($database) or die('Could not select database');
 ?> 
