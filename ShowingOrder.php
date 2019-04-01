<?php
 $conn = mysqli_connect("localhost", "root", "", "hkt");
 if($conn-> connect_error) {
     die("Connection failed". $conn-> connect_error);
 }

 $sel1 = "";
 $sel2 = "";

 if(isset($_POST['attribute']) && isset($_POST['search'])
    && isset($_POST['date']) && isset($_POST["day"])){
    $firstSearchq = $_POST['search'];
    $secondSearchq = $_POST["day"];
    if($_POST['attribute']=="order_number"){
        $sel1 = "order_number";}

    else if($_POST['attribute']=="BSN"){
        $sel1 = "BSN";}

    else if($_POST['attribute']=="team_id"){
        $sel1 = "team_id";}

    if($_POST['date']=="AssigningDate"){
        $sel2 = "assigning_date";}

    else if($_POST['date']=="PreDate"){
        $sel2 = "pre_visit_date";
    }

    else if($_POST['date']=="wiring"){
        $sel2 = "wiring_date";}
    
    $query = "SELECT * FROM orders WHERE $sel1 = '$firstSearchq' && $sel2 = '$secondSearchq'";
    $search_result = filterTable($query);
}


else if(isset($_POST['attribute']) && isset($_POST['search'])){
    $searchq = $_POST['search'];
    if($_POST['attribute']=="order_number"){
        $sel1 = "order_number";
        $query = "SELECT * FROM orders WHERE $sel1 = '$searchq'";
        $search_result = filterTable($query);
    }

    else if($_POST['attribute']=="BSN"){
        $sel1 = "BSN";
        $query = "SELECT * FROM orders WHERE $sel1 = '$searchq'";
        $search_result = filterTable($query);
    }

    else if($_POST['attribute']=="team_id"){
        $sel1 = "team_id";
        $query = "SELECT * FROM orders WHERE $sel1 = '$searchq'";
        $search_result = filterTable($query);
    }

}

else if(isset($_POST['date']) && isset($_POST["day"])){
    $searchq2 = $_POST["day"];

    if($_POST['date']=="AssigningDate"){
        $sel2 = "assigning_date";
        $query = "SELECT * FROM orders WHERE $sel2 = '$searchq2'";
        $search_result = filterTable($query);
    }

    else if($_POST['date']=="PreDate"){
        $sel2 = "pre_visit_date";
        $query = "SELECT * FROM orders WHERE $sel2 = '$searchq2'";
        $search_result = filterTable($query);
    }

    else if($_POST['date']=="wiring"){
        $sel2 = "wiring_date";
        $query = "SELECT * FROM orders WHERE $sel2 = '$searchq2'";
        $search_result = filterTable($query);
    }

}

else{
   $query = "SELECT * FROM orders";
   $search_result = filterTable($query);
}



function filterTable($query){
    $conn = mysqli_connect("localhost", "root", "", "hkt");
    if($conn-> connect_error) {
        die("Connection failed". $conn-> connect_error);
    }
    $filter_Result = mysqli_query($conn,$query);
    return $filter_Result;
}
?>

<html>
<head>

<style>
td {
  text-align: center;
}
</style>

<title>Orders</title>
</head>
<body>

<form action="ShowingOrder2.php" method="post">

<select name = "attribute">
<option disabled selected value> --select an option--</option>
<option value = "order_number">Order#</option>
<option value = "BSN">BSN</option>
<option value = "team_id">TeamId</option>
</select>

<select name = "date">
<option disabled selected value> --select an option--</option>
<option value = "AssigningDate">Assigning Date</option>
<option value = "PreDate">Pre-visit Date</option>
<option value = "WiringDate">Wiring Date</option>
</select>

<input type="date" name="day">

<input type="text" name="search" placeholder="Enter">
<input type="submit" value="Search">
</form>

<table width = 700>
 <tr>
  <th>Order#</th>
  <th>BSN</th>
  <th>Status</th>
  <th>Assigning Date</th>
  <th>Pre-visit Date</th>
  <th>Wiring Date</th>
  <th>Team-id</th>
 </tr>

<?php while($row=mysqli_fetch_array($search_result)):?>
<tr>
<td><?php echo $row["order_number"]; ?></td>
<td><?php echo $row["BSN"]; ?></td>
<td><?php echo $row["order_status"]; ?></td>
<td><?php echo $row["assigning_date"]; ?></td>
<td><?php echo $row["pre_visit_date"]; ?></td>
<td><?php echo $row["wiring_date"]; ?></td>
<td><?php echo $row["team_id"]; ?></td>
</tr>
<?php endwhile;?>



</table>
</body>
</html>