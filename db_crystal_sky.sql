-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2023 at 10:05 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_crystal_sky`
--

-- --------------------------------------------------------

--
-- Table structure for table `biling_invoice`
--

CREATE TABLE `biling_invoice` (
  `id` int(11) NOT NULL,
  `total_room_charge` float DEFAULT NULL,
  `total_food_charge` float DEFAULT NULL,
  `total_add_on` float DEFAULT NULL,
  `downpayment_amount` float DEFAULT NULL,
  `total_amount` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cdm_feedback`
--

CREATE TABLE `cdm_feedback` (
  `id` int(11) NOT NULL,
  `guest_id` int(11) DEFAULT NULL,
  `feedback` varchar(255) DEFAULT NULL,
  `rating` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cdm_guest`
--

CREATE TABLE `cdm_guest` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `tel_num` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `block` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `postal_code` int(11) DEFAULT NULL,
  `role` tinyint(4) DEFAULT 0,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_about_us`
--

CREATE TABLE `cms_about_us` (
  `id` int(11) NOT NULL,
  `credentials_id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `contact_no` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_about_us`
--

INSERT INTO `cms_about_us` (`id`, `credentials_id`, `title`, `image`, `description`, `contact_no`, `email`, `location`, `updated_at`) VALUES
(1, 1, 'test if working', 'about.jpg', 'test to add data', 2323, 'testloginonly@test.com', 'Olongapo City', '2023-03-22 18:42:15');

-- --------------------------------------------------------

--
-- Table structure for table `cms_announcements`
--

CREATE TABLE `cms_announcements` (
  `id` int(11) NOT NULL,
  `credentials_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `media` varchar(255) DEFAULT NULL,
  `is_archived` tinyint(4) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_announcements`
--

INSERT INTO `cms_announcements` (`id`, `credentials_id`, `category_id`, `title`, `description`, `media`, `is_archived`, `created_at`) VALUES
(1, 1, 1, 'test1213', 'test if this will work', '1.png', 0, '2023-03-22 20:50:06');

-- --------------------------------------------------------

--
-- Table structure for table `cms_categories`
--

CREATE TABLE `cms_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_categories`
--

INSERT INTO `cms_categories` (`id`, `name`, `price`, `description`) VALUES
(1, 'double', 0, ''),
(2, 'single', 1000, 'this is a room description');

-- --------------------------------------------------------

--
-- Table structure for table `cms_contents`
--

CREATE TABLE `cms_contents` (
  `id` int(11) NOT NULL,
  `credentials_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `media` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `is_archived` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_contents`
--

INSERT INTO `cms_contents` (`id`, `credentials_id`, `title`, `category`, `description`, `media`, `date`, `time`, `is_archived`, `created_at`) VALUES
(1, 1, 'test if working', 'Announcements', 'test if working', 'SIA  (5).png', '2023-03-22', '04:39:00', 1, '2023-03-22 20:35:12'),
(2, 1, 'test events', 'Events', 'this is just a test events', 'event1.jpg', '2023-03-06', '18:48:00', 0, '2023-03-16 10:44:45'),
(3, 1, 'test announcements2', 'Announcements', 'this is another test announcements', 'test1.jpg', NULL, NULL, 1, '2023-03-22 15:17:45'),
(4, 1, 'This is announcements sample', 'Announcements', 'announcements description', 'SIA  (5).png', NULL, NULL, 1, '2023-03-22 13:08:34'),
(5, 1, 'test again', 'Events', 'teastsafa', 'CMS_ERD (1).png', '2023-02-28', '20:54:00', 1, '2023-03-22 14:32:34'),
(6, 1, 'tesadasd', 'Events', 'asfdasfdas', 'SIA .png', '2023-02-28', '13:31:00', 1, '2023-03-22 14:32:24'),
(7, 1, 'second try', 'Events', 'second ', 'Capture.PNG', '2023-03-30', '23:04:00', 0, '2023-03-22 15:01:53');

-- --------------------------------------------------------

--
-- Table structure for table `cms_content_categ`
--

CREATE TABLE `cms_content_categ` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_content_categ`
--

INSERT INTO `cms_content_categ` (`id`, `name`) VALUES
(1, 'Event'),
(2, 'Announcement');

-- --------------------------------------------------------

--
-- Table structure for table `cms_events`
--

CREATE TABLE `cms_events` (
  `id` int(11) NOT NULL,
  `credentials_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `media` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `is_archived` tinyint(4) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_events`
--

INSERT INTO `cms_events` (`id`, `credentials_id`, `category_id`, `title`, `description`, `media`, `date`, `time`, `is_archived`, `created_at`) VALUES
(1, 1, 1, 'test', 'i want to test if the database is updating and edit function is working', 'test1.jpg', '2023-03-30', '04:37:00', 0, '2023-03-22 20:36:07'),
(7, 1, 1, 'test another 1', 'this is for archived testing', 'react.jpg', '2023-03-01', '04:18:00', 1, '2023-03-22 20:19:33');

-- --------------------------------------------------------

--
-- Table structure for table `cms_gallery`
--

CREATE TABLE `cms_gallery` (
  `id` int(255) NOT NULL,
  `credentials_id` int(255) NOT NULL,
  `media` varchar(255) DEFAULT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_published` tinyint(4) NOT NULL DEFAULT 0,
  `is_archived` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_gallery`
--

INSERT INTO `cms_gallery` (`id`, `credentials_id`, `media`, `uploaded_at`, `is_published`, `is_archived`) VALUES
(1, 1, 'SIA  (5).png', '2023-03-22 15:25:11', 0, 1),
(2, 1, 'SIA  (4).png', '2023-03-22 19:18:25', 1, 0),
(3, 1, 'room1.jpg', '2023-03-22 15:48:36', 0, 0),
(4, 1, 'room1.jpg', '2023-03-22 15:23:58', 0, 1),
(5, 1, 'room1.jpg', '2023-03-22 15:45:11', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_rooms`
--

CREATE TABLE `cms_rooms` (
  `id` int(11) NOT NULL,
  `room_number` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'Available',
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_rooms`
--

INSERT INTO `cms_rooms` (`id`, `room_number`, `status`, `category_id`, `created_at`) VALUES
(1, 4110, 'available', 1, '2023-03-22 17:29:58'),
(2, 1312321, 'available', 1, '2023-03-22 17:34:13'),
(3, 1222, 'reserved', 2, '2023-03-22 17:35:08');

-- --------------------------------------------------------

--
-- Table structure for table `cms_room_images`
--

CREATE TABLE `cms_room_images` (
  `id` int(11) NOT NULL,
  `room_id` int(11) DEFAULT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_room_images`
--

INSERT INTO `cms_room_images` (`id`, `room_id`, `image`) VALUES
(1, 1, 'room_641b3b16914de.jpg'),
(2, 2, 'room_641b3c159d29d.jpg'),
(3, 3, 'room_641b3c4c98cc8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ems_credentials`
--

CREATE TABLE `ems_credentials` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT 'password123',
  `token` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ems_credentials`
--

INSERT INTO `ems_credentials` (`id`, `employee_id`, `username`, `password`, `token`, `created_at`) VALUES
(1, NULL, 'admin', 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ems_departments`
--

CREATE TABLE `ems_departments` (
  `id` int(11) NOT NULL,
  `department_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ems_employees`
--

CREATE TABLE `ems_employees` (
  `id` int(11) NOT NULL,
  `employee_number` int(11) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `house_number` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `barangay` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `contact_number` int(11) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `salary` float DEFAULT NULL,
  `hourly_rate` float DEFAULT NULL,
  `shift_in` time DEFAULT NULL,
  `shift_out` time DEFAULT NULL,
  `status` varchar(255) DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ems_holidays`
--

CREATE TABLE `ems_holidays` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `holiday_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ems_leavebalances`
--

CREATE TABLE `ems_leavebalances` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `sick_leave` int(11) DEFAULT NULL,
  `vacation_leave` int(11) DEFAULT NULL,
  `personal_leave` int(11) DEFAULT NULL,
  `maternity_leave` int(11) DEFAULT NULL,
  `paternity_leave` int(11) DEFAULT NULL,
  `solo_parent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ems_leavefiles`
--

CREATE TABLE `ems_leavefiles` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `dates` date DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ems_payhistory`
--

CREATE TABLE `ems_payhistory` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `period` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `reg_basic` float DEFAULT NULL,
  `bonus` float DEFAULT NULL,
  `leave_pay` float DEFAULT NULL,
  `reg_nd` float DEFAULT NULL,
  `rh_basic` float DEFAULT NULL,
  `rh_nd` float DEFAULT NULL,
  `sh_basic` float DEFAULT NULL,
  `sh_nd` float DEFAULT NULL,
  `hdmf_deduction` float DEFAULT NULL,
  `sss_deduction` float DEFAULT NULL,
  `pagibig_deduction` float DEFAULT NULL,
  `total_deductions` float DEFAULT NULL,
  `gross_earning` float DEFAULT NULL,
  `net_pay` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ems_timelogs`
--

CREATE TABLE `ems_timelogs` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `timelog` time DEFAULT NULL,
  `date_filed` date DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ems_timerecords`
--

CREATE TABLE `ems_timerecords` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `dates` date DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `time_in` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `timeout` time DEFAULT NULL,
  `hours` float DEFAULT NULL,
  `overtime` float DEFAULT NULL,
  `tardy` float DEFAULT NULL,
  `undertime` float DEFAULT NULL,
  `night_dif` float DEFAULT NULL,
  `is_holiday` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_edit_history`
--

CREATE TABLE `inventory_edit_history` (
  `id` int(11) NOT NULL,
  `credentials_id` int(11) DEFAULT NULL,
  `prod_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_orders`
--

CREATE TABLE `inventory_orders` (
  `id` int(11) NOT NULL,
  `supp_id` int(11) DEFAULT NULL,
  `prod_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_products`
--

CREATE TABLE `inventory_products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_purchase`
--

CREATE TABLE `inventory_purchase` (
  `id` int(11) NOT NULL,
  `prod_id` int(11) DEFAULT NULL,
  `supp_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_suppliers`
--

CREATE TABLE `inventory_suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_transactions`
--

CREATE TABLE `inventory_transactions` (
  `id` int(11) NOT NULL,
  `prod_id` int(11) DEFAULT NULL,
  `purch_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pos_cart`
--

CREATE TABLE `pos_cart` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `item_quantity` varchar(255) DEFAULT NULL,
  `item_total` varchar(255) DEFAULT NULL,
  `grand_total` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pos_orders`
--

CREATE TABLE `pos_orders` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `time` time DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `is_paid` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservation_appointments`
--

CREATE TABLE `reservation_appointments` (
  `id` int(11) NOT NULL,
  `guest_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `facility_id` int(11) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `check_in` date DEFAULT NULL,
  `check_out` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservation_facilities`
--

CREATE TABLE `reservation_facilities` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biling_invoice`
--
ALTER TABLE `biling_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cdm_feedback`
--
ALTER TABLE `cdm_feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guest_id` (`guest_id`);

--
-- Indexes for table `cdm_guest`
--
ALTER TABLE `cdm_guest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_about_us`
--
ALTER TABLE `cms_about_us`
  ADD PRIMARY KEY (`id`),
  ADD KEY `credentials_id` (`credentials_id`);

--
-- Indexes for table `cms_announcements`
--
ALTER TABLE `cms_announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `credentials_id` (`credentials_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `cms_categories`
--
ALTER TABLE `cms_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_contents`
--
ALTER TABLE `cms_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `credentials_id` (`credentials_id`);

--
-- Indexes for table `cms_content_categ`
--
ALTER TABLE `cms_content_categ`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_events`
--
ALTER TABLE `cms_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `credentials_id` (`credentials_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `cms_gallery`
--
ALTER TABLE `cms_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `credentials_id` (`credentials_id`);

--
-- Indexes for table `cms_rooms`
--
ALTER TABLE `cms_rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `cms_room_images`
--
ALTER TABLE `cms_room_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `ems_credentials`
--
ALTER TABLE `ems_credentials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `ems_departments`
--
ALTER TABLE `ems_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ems_employees`
--
ALTER TABLE `ems_employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_number` (`employee_number`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `ems_holidays`
--
ALTER TABLE `ems_holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ems_leavebalances`
--
ALTER TABLE `ems_leavebalances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `ems_leavefiles`
--
ALTER TABLE `ems_leavefiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `ems_payhistory`
--
ALTER TABLE `ems_payhistory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `ems_timelogs`
--
ALTER TABLE `ems_timelogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `ems_timerecords`
--
ALTER TABLE `ems_timerecords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `is_holiday` (`is_holiday`);

--
-- Indexes for table `inventory_edit_history`
--
ALTER TABLE `inventory_edit_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `credentials_id` (`credentials_id`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Indexes for table `inventory_orders`
--
ALTER TABLE `inventory_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supp_id` (`supp_id`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Indexes for table `inventory_products`
--
ALTER TABLE `inventory_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_purchase`
--
ALTER TABLE `inventory_purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prod_id` (`prod_id`),
  ADD KEY `supp_id` (`supp_id`);

--
-- Indexes for table `inventory_suppliers`
--
ALTER TABLE `inventory_suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_transactions`
--
ALTER TABLE `inventory_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prod_id` (`prod_id`),
  ADD KEY `purch_id` (`purch_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `pos_cart`
--
ALTER TABLE `pos_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `pos_orders`
--
ALTER TABLE `pos_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `reservation_appointments`
--
ALTER TABLE `reservation_appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `facility_id` (`facility_id`),
  ADD KEY `guest_id` (`guest_id`);

--
-- Indexes for table `reservation_facilities`
--
ALTER TABLE `reservation_facilities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biling_invoice`
--
ALTER TABLE `biling_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cdm_feedback`
--
ALTER TABLE `cdm_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cdm_guest`
--
ALTER TABLE `cdm_guest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_about_us`
--
ALTER TABLE `cms_about_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_announcements`
--
ALTER TABLE `cms_announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_categories`
--
ALTER TABLE `cms_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_contents`
--
ALTER TABLE `cms_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cms_content_categ`
--
ALTER TABLE `cms_content_categ`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cms_events`
--
ALTER TABLE `cms_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cms_gallery`
--
ALTER TABLE `cms_gallery`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cms_rooms`
--
ALTER TABLE `cms_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cms_room_images`
--
ALTER TABLE `cms_room_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ems_credentials`
--
ALTER TABLE `ems_credentials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ems_departments`
--
ALTER TABLE `ems_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ems_employees`
--
ALTER TABLE `ems_employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ems_holidays`
--
ALTER TABLE `ems_holidays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ems_leavebalances`
--
ALTER TABLE `ems_leavebalances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ems_leavefiles`
--
ALTER TABLE `ems_leavefiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ems_payhistory`
--
ALTER TABLE `ems_payhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ems_timelogs`
--
ALTER TABLE `ems_timelogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ems_timerecords`
--
ALTER TABLE `ems_timerecords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory_edit_history`
--
ALTER TABLE `inventory_edit_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory_orders`
--
ALTER TABLE `inventory_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory_products`
--
ALTER TABLE `inventory_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory_purchase`
--
ALTER TABLE `inventory_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory_suppliers`
--
ALTER TABLE `inventory_suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory_transactions`
--
ALTER TABLE `inventory_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_cart`
--
ALTER TABLE `pos_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_orders`
--
ALTER TABLE `pos_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservation_appointments`
--
ALTER TABLE `reservation_appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservation_facilities`
--
ALTER TABLE `reservation_facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cdm_feedback`
--
ALTER TABLE `cdm_feedback`
  ADD CONSTRAINT `cdm_feedback_ibfk_1` FOREIGN KEY (`guest_id`) REFERENCES `cdm_guest` (`id`);

--
-- Constraints for table `cms_about_us`
--
ALTER TABLE `cms_about_us`
  ADD CONSTRAINT `cms_about_us_ibfk_1` FOREIGN KEY (`credentials_id`) REFERENCES `ems_credentials` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cms_announcements`
--
ALTER TABLE `cms_announcements`
  ADD CONSTRAINT `cms_announcements_ibfk_1` FOREIGN KEY (`credentials_id`) REFERENCES `ems_credentials` (`id`),
  ADD CONSTRAINT `cms_announcements_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `cms_content_categ` (`id`);

--
-- Constraints for table `cms_contents`
--
ALTER TABLE `cms_contents`
  ADD CONSTRAINT `cms_contents_ibfk_1` FOREIGN KEY (`credentials_id`) REFERENCES `ems_credentials` (`id`);

--
-- Constraints for table `cms_events`
--
ALTER TABLE `cms_events`
  ADD CONSTRAINT `cms_events_ibfk_1` FOREIGN KEY (`credentials_id`) REFERENCES `ems_credentials` (`id`),
  ADD CONSTRAINT `cms_events_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `cms_content_categ` (`id`);

--
-- Constraints for table `cms_gallery`
--
ALTER TABLE `cms_gallery`
  ADD CONSTRAINT `cms_gallery_ibfk_1` FOREIGN KEY (`credentials_id`) REFERENCES `ems_credentials` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cms_rooms`
--
ALTER TABLE `cms_rooms`
  ADD CONSTRAINT `cms_rooms_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `cms_categories` (`id`);

--
-- Constraints for table `cms_room_images`
--
ALTER TABLE `cms_room_images`
  ADD CONSTRAINT `cms_room_images_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `cms_rooms` (`id`);

--
-- Constraints for table `ems_credentials`
--
ALTER TABLE `ems_credentials`
  ADD CONSTRAINT `ems_credentials_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `ems_employees` (`id`);

--
-- Constraints for table `ems_employees`
--
ALTER TABLE `ems_employees`
  ADD CONSTRAINT `ems_employees_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `ems_departments` (`id`);

--
-- Constraints for table `ems_leavebalances`
--
ALTER TABLE `ems_leavebalances`
  ADD CONSTRAINT `ems_leavebalances_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `ems_employees` (`id`);

--
-- Constraints for table `ems_leavefiles`
--
ALTER TABLE `ems_leavefiles`
  ADD CONSTRAINT `ems_leavefiles_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `ems_employees` (`id`);

--
-- Constraints for table `ems_payhistory`
--
ALTER TABLE `ems_payhistory`
  ADD CONSTRAINT `ems_payhistory_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `ems_employees` (`id`);

--
-- Constraints for table `ems_timelogs`
--
ALTER TABLE `ems_timelogs`
  ADD CONSTRAINT `ems_timelogs_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `ems_employees` (`id`);

--
-- Constraints for table `ems_timerecords`
--
ALTER TABLE `ems_timerecords`
  ADD CONSTRAINT `ems_timerecords_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `ems_employees` (`id`),
  ADD CONSTRAINT `ems_timerecords_ibfk_2` FOREIGN KEY (`is_holiday`) REFERENCES `ems_holidays` (`id`);

--
-- Constraints for table `inventory_edit_history`
--
ALTER TABLE `inventory_edit_history`
  ADD CONSTRAINT `inventory_edit_history_ibfk_1` FOREIGN KEY (`credentials_id`) REFERENCES `ems_credentials` (`id`),
  ADD CONSTRAINT `inventory_edit_history_ibfk_2` FOREIGN KEY (`prod_id`) REFERENCES `inventory_products` (`id`);

--
-- Constraints for table `inventory_orders`
--
ALTER TABLE `inventory_orders`
  ADD CONSTRAINT `inventory_orders_ibfk_1` FOREIGN KEY (`supp_id`) REFERENCES `inventory_suppliers` (`id`),
  ADD CONSTRAINT `inventory_orders_ibfk_2` FOREIGN KEY (`prod_id`) REFERENCES `inventory_products` (`id`);

--
-- Constraints for table `inventory_purchase`
--
ALTER TABLE `inventory_purchase`
  ADD CONSTRAINT `inventory_purchase_ibfk_1` FOREIGN KEY (`prod_id`) REFERENCES `inventory_products` (`id`),
  ADD CONSTRAINT `inventory_purchase_ibfk_2` FOREIGN KEY (`supp_id`) REFERENCES `inventory_suppliers` (`id`);

--
-- Constraints for table `inventory_transactions`
--
ALTER TABLE `inventory_transactions`
  ADD CONSTRAINT `inventory_transactions_ibfk_1` FOREIGN KEY (`prod_id`) REFERENCES `inventory_products` (`id`),
  ADD CONSTRAINT `inventory_transactions_ibfk_2` FOREIGN KEY (`purch_id`) REFERENCES `inventory_purchase` (`id`),
  ADD CONSTRAINT `inventory_transactions_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `inventory_orders` (`id`);

--
-- Constraints for table `pos_cart`
--
ALTER TABLE `pos_cart`
  ADD CONSTRAINT `pos_cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `inventory_products` (`id`),
  ADD CONSTRAINT `pos_cart_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `pos_orders` (`id`);

--
-- Constraints for table `pos_orders`
--
ALTER TABLE `pos_orders`
  ADD CONSTRAINT `pos_orders_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `biling_invoice` (`id`),
  ADD CONSTRAINT `pos_orders_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `ems_credentials` (`id`);

--
-- Constraints for table `reservation_appointments`
--
ALTER TABLE `reservation_appointments`
  ADD CONSTRAINT `reservation_appointments_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `biling_invoice` (`id`),
  ADD CONSTRAINT `reservation_appointments_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `cms_rooms` (`id`),
  ADD CONSTRAINT `reservation_appointments_ibfk_3` FOREIGN KEY (`facility_id`) REFERENCES `reservation_facilities` (`id`),
  ADD CONSTRAINT `reservation_appointments_ibfk_4` FOREIGN KEY (`guest_id`) REFERENCES `cdm_guest` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
