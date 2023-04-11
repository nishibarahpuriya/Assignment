-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2023 at 01:00 AM
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
-- Database: `assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `city_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city_name`) VALUES
(1, 'Gaya'),
(2, 'Patna'),
(3, 'Delhi'),
(4, 'Mumbai'),
(5, 'Ranchi'),
(6, 'Kolkata'),
(7, 'Pune'),
(8, 'Shimla');

-- --------------------------------------------------------

--
-- Table structure for table `city_travel_histories`
--

CREATE TABLE `city_travel_histories` (
  `id` int(11) NOT NULL,
  `traveler_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `from_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `to_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city_travel_histories`
--

INSERT INTO `city_travel_histories` (`id`, `traveler_id`, `city_id`, `from_date`, `to_date`) VALUES
(1, 2, 3, '2023-04-03 13:39:16', '2023-04-07 13:39:16'),
(2, 3, 5, '2023-04-11 13:56:56', '2022-10-04 13:39:16'),
(3, 2, 7, '2023-04-11 13:43:40', '2023-04-11 13:39:16'),
(4, 3, 5, '2023-04-11 13:56:23', '2022-10-07 13:53:35'),
(5, 9, 4, '2023-03-08 13:39:16', '2023-03-10 13:39:16'),
(6, 7, 7, '2023-03-05 13:39:16', '2023-04-08 13:39:16'),
(7, 5, 2, '2023-04-11 13:42:37', '2023-04-05 13:39:16'),
(8, 6, 7, '2023-04-11 13:42:42', '2023-04-10 13:39:16'),
(9, 3, 5, '2023-04-11 13:54:15', '2022-10-21 13:39:16'),
(10, 3, 7, '2022-10-20 13:52:47', '2022-10-22 13:53:35'),
(11, 3, 7, '2022-10-27 13:54:15', '2022-10-29 13:39:16'),
(12, 3, 4, '2022-10-05 13:54:15', '2022-10-07 13:39:16');

-- --------------------------------------------------------

--
-- Table structure for table `travelers`
--

CREATE TABLE `travelers` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `travelers`
--

INSERT INTO `travelers` (`id`, `name`) VALUES
(1, 'Nishi'),
(2, 'Princy'),
(3, 'Ayush'),
(4, 'Aditya'),
(5, 'Gaurav'),
(6, 'Krishna'),
(7, 'Varun'),
(8, 'Mohit'),
(9, 'Abhishek'),
(10, 'Om'),
(11, 'Munmun'),
(12, 'Deepak'),
(13, 'Aarti'),
(14, 'Abhinav'),
(15, 'Miraj');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city_travel_histories`
--
ALTER TABLE `city_travel_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travelers`
--
ALTER TABLE `travelers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `city_travel_histories`
--
ALTER TABLE `city_travel_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `travelers`
--
ALTER TABLE `travelers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
