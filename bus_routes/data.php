<?php

// session_start();
// initializing variables
$from = "";
$to = "";
$distance = "";
$price="";
$errors = array();

// connect to the database
$db = mysqli_connect('localhost', 'root', '', 'busticketmanagement');

if(isset($_POST['add_route_btn'])){
    // receive all input values from the form
    $from = mysqli_real_escape_string($db, $_POST['from']);
    $to = mysqli_real_escape_string($db, $_POST['to']);
    $distance = mysqli_real_escape_string($db, $_POST['distance']);
    $price = mysqli_real_escape_string($db, $_POST['price']);

    // validate form inputs
    if (empty($from)) { array_push($errors, "Initial address is required"); }
    if (empty($to)) { array_push($errors, "Destination name is required"); }
    if (empty($distance)) { array_push($errors, "Distance is required"); }
    if (empty($price)) { array_push($errors, "Pricing is required"); }

    // Check if the route already exists
    $route_check_query = "SELECT * FROM bus_routes WHERE starting_point='$from' AND destination_point='$to' LIMIT 1";
    $result = mysqli_query($db, $route_check_query);
    $route = mysqli_fetch_assoc($result);
    
    if ($route) { // if route exists
        array_push($errors, "Route already exists");
        echo "Route already exists";
    }

    
    // Finally
    if (count($errors) == 0) {
        // Count the total existing rows in the bus_routes table
        $route_countQuery = "SELECT COUNT(*) as total FROM bus_routes";
        $res = mysqli_query($db, $route_countQuery);
        if($res){
            $row = mysqli_fetch_assoc($res);
            $route_cnt = $row['total'];
            $route_no = $route_cnt + 1;

            // insert query
            $query1 = "INSERT INTO bus_routes(route_no, starting_point, destination_point, distance_covered, pricing) 
                VALUES('$route_no', '$from', '$to','$distance','$price')";
            if(mysqli_query($db, $query1)){
                echo "Route added successfully!";
            }
            else{
                echo "Error: " . mysqli_error($db);
            }
        }   
    }

}
?>

