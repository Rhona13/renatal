-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2024 at 03:17 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `renatal`
--

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `h_id` int(20) NOT NULL,
  `h_number` varchar(50) NOT NULL,
  `h_status` varchar(50) NOT NULL,
  `h_price` varchar(50) NOT NULL,
  `h_date` varchar(50) NOT NULL,
  `h_electricity` varchar(50) NOT NULL,
  `h_water` varchar(50) NOT NULL,
  `h_maintencance` varchar(50) NOT NULL,
  `h_security` varchar(50) NOT NULL,
  `h_total` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`h_id`, `h_number`, `h_status`, `h_price`, `h_date`, `h_electricity`, `h_water`, `h_maintencance`, `h_security`, `h_total`) VALUES
(9, '1', 'AVAILABLE', '100.0', '2024-12-12', '100.0', '100.0', '100.0', '100.0', '500.0');

-- --------------------------------------------------------

--
-- Table structure for table `occupant`
--

CREATE TABLE `occupant` (
  `o_id` int(100) NOT NULL,
  `o_firstname` varchar(59) NOT NULL,
  `o_lastname` varchar(59) NOT NULL,
  `o_contact` varchar(59) NOT NULL,
  `o_members` varchar(59) NOT NULL,
  `o_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `occupant`
--

INSERT INTO `occupant` (`o_id`, `o_firstname`, `o_lastname`, `o_contact`, `o_members`, `o_date`) VALUES
(1, 'rhon', 'llanto', '09166764802', '4', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `rent`
--

CREATE TABLE `rent` (
  `t_id` int(20) NOT NULL,
  `t_fn` varchar(50) NOT NULL,
  `t_ln` varchar(50) NOT NULL,
  `t_email` varchar(50) NOT NULL,
  `t_username` varchar(50) NOT NULL,
  `t_pass` varchar(150) NOT NULL,
  `t_contact` varchar(50) NOT NULL,
  `t_type` varchar(50) NOT NULL,
  `t_status` varchar(50) NOT NULL,
  `t_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rent`
--

INSERT INTO `rent` (`t_id`, `t_fn`, `t_ln`, `t_email`, `t_username`, `t_pass`, `t_contact`, `t_type`, `t_status`, `t_image`) VALUES
(37, 'taehyung', 'kim', 'kimtae', 'tae', 'apPCbAHbnQTs6k+AgFofhTeWZjvUfkJAQR9MWeAJMnE=', '095331235678', 'Admin', 'Active', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`h_id`);

--
-- Indexes for table `occupant`
--
ALTER TABLE `occupant`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `rent`
--
ALTER TABLE `rent`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `h_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rent`
--
ALTER TABLE `rent`
  MODIFY `t_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
