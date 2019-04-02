<?php
 $conn = mysqli_connect("localhost", "root", "", "hkt");
 if($conn-> connect_error) {
     die("Connection failed". $conn-> connect_error);
 }

 $sel3 = "order_status";

 //all three inputs are filled
 if(isset($_POST['attribute']) && isset($_POST['search'])
    && isset($_POST['date']) && isset($_POST["day"])
    && isset($_POST['status'])){
    $firstSearchq = $_POST['search'];
    $secondSearchq = $_POST['day'];
    $thirdSearchq = $_POST['status'];
    $sel1 = $_POST['attribute'];
    $sel2 = $_POST['date'];
    $query = "SELECT * FROM orders WHERE $sel1 = '$firstSearchq' && $sel2 = '$secondSearchq' && $sel3 = '$thirdSearchq'";
    $search_result = filterTable($query);
}

//order# and date are filled
else if(isset($_POST['attribute']) && isset($_POST['search'])
    && isset($_POST['date']) && isset($_POST["day"])){
    $firstSearchq = $_POST['search'];
    $secondSearchq = $_POST["day"];
    $sel1 = $_POST['attribute'];
    $sel2 = $_POST['date'];
    $query = "SELECT * FROM orders WHERE $sel1 = '$firstSearchq' && $sel2 = '$secondSearchq'";
    $search_result = filterTable($query);
    }

//order# and status are filled
else if(isset($_POST['attribute']) && isset($_POST['search'])
    && isset($_POST['status'])){
        $firstSearchq = $_POST['search'];
        $thirdSearchq = $_POST['status'];
        $sel1 = $_POST['attribute'];
        $query = "SELECT * FROM orders WHERE $sel1 = '$firstSearchq' && $sel3 = '$thirdSearchq'";
        $search_result = filterTable($query);
    }

//date and status are filled
else if(isset($_POST['date']) && isset($_POST["day"])
    && isset($_POST['status'])){
        $secondSearchq = $_POST['day'];
        $thirdSearchq = $_POST['status'];
        $sel2 = $_POST['date'];
        $query = "SELECT * FROM orders WHERE $sel2 = '$secondSearchq' && $sel3 = '$thirdSearchq'";
        $search_result = filterTable($query);
    }

//only attribute is filled
else if(isset($_POST['attribute']) && isset($_POST['search'])){
    $searchq = $_POST['search'];
    $sel1 = $_POST['attribute'];
    $query = "SELECT * FROM orders WHERE $sel1 = '$searchq'";
    $search_result = filterTable($query);
}

//only date is filled
else if(isset($_POST['date']) && isset($_POST["day"])){
    $searchq2 = $_POST["day"];
    $sel2 = $_POST['date'];
    $query = "SELECT * FROM orders WHERE $sel2 = '$searchq2'";
    $search_result = filterTable($query);
}

//only status is filled
else if(isset($_POST['status'])){
    $searchq3 = $_POST["status"];
    $query = "SELECT * FROM orders WHERE $sel3 = '$searchq3'";
    $search_result = filterTable($query);
}

//nothing is filled
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

<form action="ShowingOrder.php" method="post">

<select name = "status">
<option disabled selected value> --select an option--</option>
<option value = "Pending">Pending</option>
<option value = "Assigned">Assigned</option>
</select>

<select name = "attribute">
<option disabled selected value> --select an option--</option>
<option value = "order_number">Order#</option>
<option value = "BSN">BSN</option>
<option value = "team_id">TeamId</option>
</select>

<input type="text" name="search" placeholder="Enter">

<select name = "date">
<option disabled selected value> --select an option--</option>
<option value = "assigning_date">Assigning Date</option>
<option value = "pre_visit_date">Pre-visit Date</option>
<option value = "wiring_date">Wiring Date</option>
</select>

<input type="date" name="day">

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