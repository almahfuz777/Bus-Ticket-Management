-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2023 at 03:05 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `busticketmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `bus_no` int(11) NOT NULL,
  `route_no` int(11) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `model` varchar(25) DEFAULT NULL,
  `conditions` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`bus_no`, `route_no`, `capacity`, `model`, `conditions`) VALUES
(1, 1, 50, 'Model A', 'Good');

-- --------------------------------------------------------

--
-- Table structure for table `businessman`
--

CREATE TABLE `businessman` (
  `reg_no` int(11) NOT NULL,
  `business_type` varchar(25) DEFAULT NULL,
  `monthly_profit` decimal(10,0) DEFAULT NULL,
  `total_trips` int(11) DEFAULT NULL,
  `account_status` varchar(25) DEFAULT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `businessman`
--

INSERT INTO `businessman` (`reg_no`, `business_type`, `monthly_profit`, `total_trips`, `account_status`, `customer_id`) VALUES
(101, 'Retail', 50000, 10, 'Active', 2);

-- --------------------------------------------------------

--
-- Table structure for table `bus_amenities`
--

CREATE TABLE `bus_amenities` (
  `amenity_id` int(11) NOT NULL,
  `bus_no` int(11) NOT NULL,
  `amenity_type` varchar(25) DEFAULT NULL,
  `feature` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus_amenities`
--

INSERT INTO `bus_amenities` (`amenity_id`, `bus_no`, `amenity_type`, `feature`) VALUES
(1, 1, 'Wi-Fi', 'High speed internet'),
(2, 1, 'Air Conditioning', 'Temperature Control');

-- --------------------------------------------------------

--
-- Table structure for table `bus_routes`
--

CREATE TABLE `bus_routes` (
  `route_no` int(11) NOT NULL,
  `starting_point` varchar(25) DEFAULT NULL,
  `destination_point` varchar(25) DEFAULT NULL,
  `distance_covered` decimal(10,0) DEFAULT NULL,
  `pricing` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus_routes`
--

INSERT INTO `bus_routes` (`route_no`, `starting_point`, `destination_point`, `distance_covered`, `pricing`) VALUES
(1, 'Bashundhara', 'Mohammadpur', 17, 40);

-- --------------------------------------------------------

--
-- Table structure for table `bus_staff`
--

CREATE TABLE `bus_staff` (
  `staff_id` int(11) NOT NULL,
  `bus_no` int(11) NOT NULL,
  `staff_name` varchar(25) DEFAULT NULL,
  `staff_type` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus_staff`
--

INSERT INTO `bus_staff` (`staff_id`, `bus_no`, `staff_name`, `staff_type`) VALUES
(1, 1, 'Staff 1', 'Conductor');

-- --------------------------------------------------------

--
-- Table structure for table `bus_stops`
--

CREATE TABLE `bus_stops` (
  `stop_id` int(11) NOT NULL,
  `stopage_name` varchar(25) DEFAULT NULL,
  `location` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus_stops`
--

INSERT INTO `bus_stops` (`stop_id`, `stopage_name`, `location`) VALUES
(1, 'Tokyo Square', 'Mohammadpur');

-- --------------------------------------------------------

--
-- Table structure for table `connects`
--

CREATE TABLE `connects` (
  `route_no` int(11) NOT NULL,
  `stop_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `connects`
--

INSERT INTO `connects` (`route_no`, `stop_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_profile`
--

CREATE TABLE `customer_profile` (
  `customer_id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `total_trips` int(11) DEFAULT NULL,
  `account_type` varchar(25) DEFAULT NULL,
  `account_status` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_profile`
--

INSERT INTO `customer_profile` (`customer_id`, `passenger_id`, `total_trips`, `account_type`, `account_status`) VALUES
(1, 1, 10, 'student', 'active'),
(2, 2, 10, 'businessman', 'active'),
(3, 3, 10, 'service holder', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `license_no` int(11) NOT NULL,
  `driver_name` varchar(25) DEFAULT NULL,
  `contact` int(11) DEFAULT NULL,
  `working_shift` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`license_no`, `driver_name`, `contact`, `working_shift`) VALUES
(101, 'Driver 1', 1765432100, 'Morning');

-- --------------------------------------------------------

--
-- Table structure for table `drives`
--

CREATE TABLE `drives` (
  `license_no` int(11) NOT NULL,
  `bus_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drives`
--

INSERT INTO `drives` (`license_no`, `bus_no`) VALUES
(101, 1);

-- --------------------------------------------------------

--
-- Table structure for table `found_record`
--

CREATE TABLE `found_record` (
  `found_id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `item_description` varchar(25) DEFAULT NULL,
  `date_found` date DEFAULT NULL,
  `contact_no` int(11) DEFAULT NULL,
  `item_status` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `found_record`
--

INSERT INTO `found_record` (`found_id`, `passenger_id`, `item_description`, `date_found`, `contact_no`, `item_status`) VALUES
(1, 1, 'Smartphone', '2023-10-07', 555555555, 'claimed');

-- --------------------------------------------------------

--
-- Table structure for table `journey_history`
--

CREATE TABLE `journey_history` (
  `ticket_no` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `past_trip` varchar(25) DEFAULT NULL,
  `journey_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `journey_history`
--

INSERT INTO `journey_history` (`ticket_no`, `passenger_id`, `past_trip`, `journey_date`) VALUES
(1, 1, 'Past Trip 1', '2023-10-05');

-- --------------------------------------------------------

--
-- Table structure for table `lost_record`
--

CREATE TABLE `lost_record` (
  `lost_id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `item_description` varchar(25) DEFAULT NULL,
  `location_lost` varchar(25) DEFAULT NULL,
  `contact_no` int(11) DEFAULT NULL,
  `item_status` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lost_record`
--

INSERT INTO `lost_record` (`lost_id`, `passenger_id`, `item_description`, `location_lost`, `contact_no`, `item_status`) VALUES
(1, 1, 'Laptop', 'bus stop', 1234567890, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

CREATE TABLE `passengers` (
  `passenger_id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `contact` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passengers`
--

INSERT INTO `passengers` (`passenger_id`, `name`, `age`, `contact`) VALUES
(1, 'mahfuz', 22, 1234567890),
(2, 'Saif', 30, 1000111222),
(3, 'dummy', 18, 1111333222);

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `method_id` int(11) NOT NULL,
  `method_name` varchar(25) DEFAULT NULL,
  `discount_offer` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`method_id`, `method_name`, `discount_offer`) VALUES
(1, 'bkash', 10);

-- --------------------------------------------------------

--
-- Table structure for table `refunds`
--

CREATE TABLE `refunds` (
  `refund_id` int(11) NOT NULL,
  `ticket_no` int(11) NOT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `reason` varchar(25) DEFAULT NULL,
  `refund_status` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `refunds`
--

INSERT INTO `refunds` (`refund_id`, `ticket_no`, `amount`, `reason`, `refund_status`) VALUES
(1, 1, 40, 'wrong destination', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE `seat` (
  `ticket_no` int(11) NOT NULL,
  `bus_no` int(11) NOT NULL,
  `seat_no` int(11) NOT NULL,
  `seat_class` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seat`
--

INSERT INTO `seat` (`ticket_no`, `bus_no`, `seat_no`, `seat_class`) VALUES
(1, 1, 1, 'Economy');

-- --------------------------------------------------------

--
-- Table structure for table `service_holder`
--

CREATE TABLE `service_holder` (
  `employee_id` int(11) NOT NULL,
  `designation` varchar(25) DEFAULT NULL,
  `monthly_income` decimal(10,0) DEFAULT NULL,
  `total_trips` int(11) DEFAULT NULL,
  `account_status` varchar(25) DEFAULT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_holder`
--

INSERT INTO `service_holder` (`employee_id`, `designation`, `monthly_income`, `total_trips`, `account_status`, `customer_id`) VALUES
(1, 'Manager', 50000, 10, 'Active', 3);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `institute` varchar(25) DEFAULT NULL,
  `qualification` varchar(25) DEFAULT NULL,
  `total_trips` int(11) DEFAULT NULL,
  `account_status` varchar(25) DEFAULT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `institute`, `qualification`, `total_trips`, `account_status`, `customer_id`) VALUES
(1, 'NSU', 'Bachelor', 10, 'Active', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticket_no` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `method_id` int(11) DEFAULT NULL,
  `fare` decimal(10,0) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `journey_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`ticket_no`, `passenger_id`, `type_id`, `method_id`, `fare`, `issue_date`, `journey_date`) VALUES
(1, 1, 1, 1, 10, '2023-10-07', '2023-10-10');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_types`
--

CREATE TABLE `ticket_types` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(25) DEFAULT NULL,
  `feature` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticket_types`
--

INSERT INTO `ticket_types` (`type_id`, `type_name`, `feature`) VALUES
(1, 'Single Trip', 'One-time journey'),
(2, 'Monthly Pass', 'Unlimited rides for a month');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`bus_no`),
  ADD KEY `route_no` (`route_no`);

--
-- Indexes for table `businessman`
--
ALTER TABLE `businessman`
  ADD PRIMARY KEY (`reg_no`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `bus_amenities`
--
ALTER TABLE `bus_amenities`
  ADD PRIMARY KEY (`amenity_id`),
  ADD KEY `bus_no` (`bus_no`);

--
-- Indexes for table `bus_routes`
--
ALTER TABLE `bus_routes`
  ADD PRIMARY KEY (`route_no`);

--
-- Indexes for table `bus_staff`
--
ALTER TABLE `bus_staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `bus_stops`
--
ALTER TABLE `bus_stops`
  ADD PRIMARY KEY (`stop_id`);

--
-- Indexes for table `connects`
--
ALTER TABLE `connects`
  ADD PRIMARY KEY (`route_no`,`stop_id`),
  ADD KEY `stop_id` (`stop_id`);

--
-- Indexes for table `customer_profile`
--
ALTER TABLE `customer_profile`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `passenger_id` (`passenger_id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`license_no`);

--
-- Indexes for table `drives`
--
ALTER TABLE `drives`
  ADD PRIMARY KEY (`license_no`,`bus_no`),
  ADD KEY `bus_no` (`bus_no`);

--
-- Indexes for table `found_record`
--
ALTER TABLE `found_record`
  ADD PRIMARY KEY (`found_id`),
  ADD KEY `passenger_id` (`passenger_id`);

--
-- Indexes for table `journey_history`
--
ALTER TABLE `journey_history`
  ADD PRIMARY KEY (`ticket_no`),
  ADD KEY `passenger_id` (`passenger_id`);

--
-- Indexes for table `lost_record`
--
ALTER TABLE `lost_record`
  ADD PRIMARY KEY (`lost_id`),
  ADD KEY `passenger_id` (`passenger_id`);

--
-- Indexes for table `passengers`
--
ALTER TABLE `passengers`
  ADD PRIMARY KEY (`passenger_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`method_id`);

--
-- Indexes for table `refunds`
--
ALTER TABLE `refunds`
  ADD PRIMARY KEY (`refund_id`),
  ADD KEY `ticket_no` (`ticket_no`);

--
-- Indexes for table `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`ticket_no`,`bus_no`,`seat_no`),
  ADD KEY `bus_no` (`bus_no`);

--
-- Indexes for table `service_holder`
--
ALTER TABLE `service_holder`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticket_no`),
  ADD KEY `passenger_id` (`passenger_id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `method_id` (`method_id`);

--
-- Indexes for table `ticket_types`
--
ALTER TABLE `ticket_types`
  ADD PRIMARY KEY (`type_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buses`
--
ALTER TABLE `buses`
  ADD CONSTRAINT `buses_ibfk_1` FOREIGN KEY (`route_no`) REFERENCES `bus_routes` (`route_no`);

--
-- Constraints for table `businessman`
--
ALTER TABLE `businessman`
  ADD CONSTRAINT `businessman_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer_profile` (`customer_id`);

--
-- Constraints for table `bus_amenities`
--
ALTER TABLE `bus_amenities`
  ADD CONSTRAINT `bus_amenities_ibfk_1` FOREIGN KEY (`bus_no`) REFERENCES `buses` (`bus_no`);

--
-- Constraints for table `connects`
--
ALTER TABLE `connects`
  ADD CONSTRAINT `connects_ibfk_1` FOREIGN KEY (`route_no`) REFERENCES `bus_routes` (`route_no`),
  ADD CONSTRAINT `connects_ibfk_2` FOREIGN KEY (`stop_id`) REFERENCES `bus_stops` (`stop_id`);

--
-- Constraints for table `customer_profile`
--
ALTER TABLE `customer_profile`
  ADD CONSTRAINT `customer_profile_ibfk_1` FOREIGN KEY (`passenger_id`) REFERENCES `passengers` (`passenger_id`);

--
-- Constraints for table `drives`
--
ALTER TABLE `drives`
  ADD CONSTRAINT `drives_ibfk_1` FOREIGN KEY (`license_no`) REFERENCES `drivers` (`license_no`),
  ADD CONSTRAINT `drives_ibfk_2` FOREIGN KEY (`bus_no`) REFERENCES `buses` (`bus_no`);

--
-- Constraints for table `found_record`
--
ALTER TABLE `found_record`
  ADD CONSTRAINT `found_record_ibfk_1` FOREIGN KEY (`passenger_id`) REFERENCES `passengers` (`passenger_id`);

--
-- Constraints for table `journey_history`
--
ALTER TABLE `journey_history`
  ADD CONSTRAINT `journey_history_ibfk_1` FOREIGN KEY (`passenger_id`) REFERENCES `passengers` (`passenger_id`);

--
-- Constraints for table `lost_record`
--
ALTER TABLE `lost_record`
  ADD CONSTRAINT `lost_record_ibfk_1` FOREIGN KEY (`passenger_id`) REFERENCES `passengers` (`passenger_id`);

--
-- Constraints for table `refunds`
--
ALTER TABLE `refunds`
  ADD CONSTRAINT `refunds_ibfk_1` FOREIGN KEY (`ticket_no`) REFERENCES `tickets` (`ticket_no`);

--
-- Constraints for table `seat`
--
ALTER TABLE `seat`
  ADD CONSTRAINT `seat_ibfk_1` FOREIGN KEY (`ticket_no`) REFERENCES `tickets` (`ticket_no`),
  ADD CONSTRAINT `seat_ibfk_2` FOREIGN KEY (`bus_no`) REFERENCES `buses` (`bus_no`);

--
-- Constraints for table `service_holder`
--
ALTER TABLE `service_holder`
  ADD CONSTRAINT `service_holder_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer_profile` (`customer_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer_profile` (`customer_id`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`passenger_id`) REFERENCES `passengers` (`passenger_id`),
  ADD CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `ticket_types` (`type_id`),
  ADD CONSTRAINT `tickets_ibfk_3` FOREIGN KEY (`method_id`) REFERENCES `payment_methods` (`method_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
