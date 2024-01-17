<?php

// session_start();
// initializing variables
$from = "";
$to = "";
$class = "";
$jdate="";
$ttype="";
$p_id="";
$p_method="";
$errors = array();

// connect to the database
$db = mysqli_connect('localhost', 'root', '', 'busticketmanagement');

if(isset($_POST['add_route_btn'])){
    echo "submitted<br>";
    // receive all input values from the form
    $from = mysqli_real_escape_string($db, $_POST['from']);
    $to = mysqli_real_escape_string($db, $_POST['to']);
    $class = mysqli_real_escape_string($db, $_POST['class']);
    $jdate = mysqli_real_escape_string($db, $_POST['jdate']);
    $ttype = mysqli_real_escape_string($db, $_POST['ttype']);
    $p_id = mysqli_real_escape_string($db, $_POST['p_id']);
    $p_method = mysqli_real_escape_string($db, $_POST['p_method']);


    // validate form inputs
    if (empty($from)) { array_push($errors, "Initial address is required"); }
    if (empty($to)) { array_push($errors, "Destination name is required"); }
    if (empty($class)) { array_push($errors, "class is required"); }
    if (empty($p_id)) { array_push($errors, "Passenger ID is required"); }

    // preparing for database query    
    $type_id=0;
    if($ttype=="Single Trip") $type_id=1;
    else if($ttype=="Weekly Pass") $type_id=2;
    else if($ttype=="Mothly Pass") $type_id=3;
    $method_id=0;
    if($p_method=="bKash") $method_id=1;
    else if($p_method=="Nagad") $method_id=2;
    
    $issue_date = date("Y-m-d");
    $fare = rand(20,500);
    
    // Finally
    if (count($errors) == 0) {
        // Count the total existing rows in the bus_routes table
        $ticket_cnt_Query = "SELECT COUNT(*) as total FROM tickets";
        $res = mysqli_query($db, $ticket_cnt_Query);
        if($res){
            $row = mysqli_fetch_assoc($res);
            $ticket_cnt = $row['total'];
            $ticket_no = $ticket_cnt + 1;

            // insert query
            $query1 = "INSERT INTO tickets(ticket_no, passenger_id, type_id, method_id, fare, issue_date, journey_date) 
                VALUES('$ticket_no', '$p_id', '$type_id','$method_id','$fare', '$issue_date', '$jdate')";
            if(mysqli_query($db, $query1)){
                echo "ticket booked successfully!";
            }
            else{
                echo "Error: " . mysqli_error($db);
            }
        }   
    }

}
?>

