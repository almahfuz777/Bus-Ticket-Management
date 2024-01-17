<?php

// session_start();
// initializing variables
$name = "";
$age = "";
$contact = "";
$occupation="";
$id="";
$p_details="";
$salary="";
$errors = array();

// connect to the database
$db = mysqli_connect('localhost', 'root', '', 'busticketmanagement');

if(isset($_POST['add_route_btn'])){
    echo "submitted<br>";
    // receive all input values from the form
    $name = mysqli_real_escape_string($db, $_POST['name']);
    $age = mysqli_real_escape_string($db, $_POST['age']);
    $contact = mysqli_real_escape_string($db, $_POST['contact']);
    $occupation = mysqli_real_escape_string($db, $_POST['occupation']);
    $id = mysqli_real_escape_string($db, $_POST['id']);
    $p_details = mysqli_real_escape_string($db, $_POST['p_details']);
    $salary = mysqli_real_escape_string($db, $_POST['salary']);


    // validate form inputs
    if (empty($id)) { array_push($errors, "ID is required"); }

    // Check if the customer already exists
    $customer_check_query = "SELECT * FROM customer_profile WHERE customer_id='$id' LIMIT 1";
    $result = mysqli_query($db, $customer_check_query);
    $cust = mysqli_fetch_assoc($result);
    
    if ($cust) { // if route exists
        array_push($errors, "Customer already exists");
        echo "Customer already exists";
    }   
    
    // Finally
    if (count($errors) == 0) {
        // insert query
        // passengers
        $query1 = "INSERT INTO passengers(passenger_id, name, age, contact)
            VALUES('$id', '$name', '$age', '$contact')";
        // customer_profile
        $query2 = "INSERT INTO customer_profile(customer_id, passenger_id, total_trips, account_type, account_status) 
            VALUES('$id', '$id', 0, '$occupation', 'active')";

        // specialization query
        if($occupation=="Student"){
            $specialization_query = "INSERT INTO student(student_id, institute, qualification, total_trips, account_status, customer_id)
                VALUES('$id', '$p_details', '$salary', 0, 'active', '$id')";
        }
        else if($occupation=="Businessman"){
            $specialization_query = "INSERT INTO businessman(reg_no, business_type, monthly_profit, total_trips, account_status, customer_id)
                VALUES('$id', '$p_details', '$salary', 0, 'active', '$id')";
        }
        else if($occupation=="Service Holder"){
            $specialization_query = "INSERT INTO service_holder(employee_id, designation, monthly_income, total_trips, account_status, customer_id)
                VALUES('$id', '$p_details', '$salary', 0, 'active', '$id')";
        }

        if(mysqli_query($db, $query1) && mysqli_query($db, $query2) && mysqli_query($db, $specialization_query)){
            echo "ticket booked successfully!";
        }
        else{
            echo "Error: " . mysqli_error($db);
        }
    }   

}

?>

