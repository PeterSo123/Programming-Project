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
    $query = "SELECT * FROM orders INNER JOIN pendingreasons ON orders.pending_reason_id = pendingreasons.reason_id WHERE $sel1 = '$firstSearchq' && $sel2 = '$secondSearchq' && $sel3 = '$thirdSearchq'";
    $search_result = filterTable($query);
}

//order# and date are filled
else if(isset($_POST['attribute']) && isset($_POST['search'])
    && isset($_POST['date']) && isset($_POST["day"])){
    $firstSearchq = $_POST['search'];
    $secondSearchq = $_POST["day"];
    $sel1 = $_POST['attribute'];
    $sel2 = $_POST['date'];
    $query = "SELECT * FROM orders INNER JOIN pendingreasons ON orders.pending_reason_id = pendingreasons.reason_id WHERE $sel1 = '$firstSearchq' && $sel2 = '$secondSearchq'";
    $search_result = filterTable($query);
    }

//order# and status are filled
else if(isset($_POST['attribute']) && isset($_POST['search'])
    && isset($_POST['status'])){
        $firstSearchq = $_POST['search'];
        $thirdSearchq = $_POST['status'];
        $sel1 = $_POST['attribute'];
        $query = "SELECT * FROM orders INNER JOIN pendingreasons ON orders.pending_reason_id = pendingreasons.reason_id WHERE $sel1 = '$firstSearchq' && $sel3 = '$thirdSearchq'";
        $search_result = filterTable($query);
    }

//date and status are filled
else if(isset($_POST['date']) && isset($_POST["day"])
    && isset($_POST['status'])){
        $secondSearchq = $_POST['day'];
        $thirdSearchq = $_POST['status'];
        $sel2 = $_POST['date'];
        $query = "SELECT * FROM orders INNER JOIN pendingreasons ON orders.pending_reason_id = pendingreasons.reason_id WHERE $sel2 = '$secondSearchq' && $sel3 = '$thirdSearchq'";
        $search_result = filterTable($query);
    }

//only attribute is filled
else if(isset($_POST['attribute']) && isset($_POST['search'])){
    $searchq = $_POST['search'];
    $sel1 = $_POST['attribute'];
    $query = "SELECT * FROM orders INNER JOIN pendingreasons ON orders.pending_reason_id = pendingreasons.reason_id WHERE $sel1 = '$searchq'";
    $search_result = filterTable($query);
}

//only date is filled
else if(isset($_POST['date']) && isset($_POST["day"])){
    $searchq2 = $_POST["day"];
    $sel2 = $_POST['date'];
    $query = "SELECT * FROM orders INNER JOIN pendingreasons ON orders.pending_reason_id = pendingreasons.reason_id WHERE $sel2 = '$searchq2'";
    $search_result = filterTable($query);
}

//only status is filled
else if(isset($_POST['status'])){
    $searchq3 = $_POST["status"];
    $query = "SELECT * FROM orders INNER JOIN pendingreasons ON orders.pending_reason_id = pendingreasons.reason_id WHERE $sel3 = '$searchq3'";
    $search_result = filterTable($query);
}

//nothing is filled
else{
   $query = "SELECT * FROM orders INNER JOIN pendingreasons ON orders.pending_reason_id = pendingreasons.reason_id";
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


    
function number_of_working_days($from, $to) {

    $holidayDays = [];
    if(sizeof($holidayDays) == 0){
        $sql = "SELECT holiday FROM holiday2019";
        $searchResult = filterTable($sql);
        while($row = mysqli_fetch_array($searchResult)){  
            array_push($holidayDays, $row['holiday']);
        }
    }

    $workingDays = [1, 2, 3, 4, 5]; # date format = N (1 = Monday, ...)

    $from = new DateTime($from);
    $to = new DateTime($to);
    $to->modify('+1 day');
    $interval = new DateInterval('P1D');
    $periods = new DatePeriod($from, $interval, $to);

    $days = 0;
    foreach ($periods as $period) {
        if (!in_array($period->format('N'), $workingDays)) continue;
        if (in_array($period->format('Y-m-d'), $holidayDays)) continue;
        if (in_array($period->format('*-m-d'), $holidayDays)) continue;
        $days++;
    }
    return $days;
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

<select name = "status" onchange="this.form.submit()">
<option disabled selected value> --select an option--</option>
<option value = "Pending">Pending</option>
<option value = "Assigned">Assigned</option>
<option value = "Completed">Completed</option>
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
  <th>Description</th>
 </tr>


<?php 
while($row=mysqli_fetch_array($search_result)){

    //pink order
    if( (((($row["wiring_date"] == NULL && $row["order_status"] == "Assigned") || $row['reason_id'] == 2) && number_of_working_days($row["pre_visit_date"],date("Y-m-d")) >=2)
        || ($row['reason_id'] == 3 && number_of_working_days($row["wiring_date"],date("Y-m-d")) >=2)) && $row["order_status"] != "Completed"
        ) {
        echo "<tr><td bgcolor='pink'>".$row["order_number"]."</td>"."<td>".$row["BSN"]."</td>"."<td>".$row["order_status"]."</td>"."<td>".$row["assigning_date"]."</td>"."<td>".$row["pre_visit_date"]."</td>"."<td>".$row["wiring_date"]."</td>"."<td>".$row["team_id"]."</td>"."<td>".$row['description']."</td></tr>";
    }

    //grey order
    else if((($row['reason_id'] >= 14 && $row['reason_id'] <=22) && number_of_working_days($row["pre_visit_date"],date("Y-m-d")) >=$row['delay_date']) && $row["order_status"] != "Completed"){
        echo "<tr><td bgcolor='silver'>".$row["order_number"]."</td>"."<td>".$row["BSN"]."</td>"."<td>".$row["order_status"]."</td>"."<td>".$row["assigning_date"]."</td>"."<td>".$row["pre_visit_date"]."</td>"."<td>".$row["wiring_date"]."</td>"."<td>".$row["team_id"]."</td>"."<td>".$row['description']."</td></tr>";
    }

    //light-blue order
    else if(($row['reason_id'] == 23 && number_of_working_days($row["pre_visit_date"],date("Y-m-d")) >=$row['delay_date']) && $row["order_status"] != "Completed"){
        echo "<tr><td bgcolor='#99FFFF'>".$row["order_number"]."</td>"."<td>".$row["BSN"]."</td>"."<td>".$row["order_status"]."</td>"."<td>".$row["assigning_date"]."</td>"."<td>".$row["pre_visit_date"]."</td>"."<td>".$row["wiring_date"]."</td>"."<td>".$row["team_id"]."</td>"."<td>".$row['description']."</td></tr>";
    }

    //no-colour order
    else{
        echo "<tr><td>".$row["order_number"]."</td>"."<td>".$row["BSN"]."</td>"."<td>".$row["order_status"]."</td>"."<td>".$row["assigning_date"]."</td>"."<td>".$row["pre_visit_date"]."</td>"."<td>".$row["wiring_date"]."</td>"."<td>".$row["team_id"]."</td>"."<td>".$row['description']."</td></tr>";
    }
}
?>

</table>
</body>
</html>