-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2024 at 03:39 AM
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
  `h_payment` varchar(50) NOT NULL,
  `h_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`h_id`, `h_number`, `h_status`, `h_price`, `h_payment`, `h_date`) VALUES
(1, 'Lot.123', 'rented', '1236', 'cash deposit', '5/14/2024');

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
(1, 'rhon', 'llanto', '09166764802', '4', '0000-00-00'),
(2, 'rhon', 'llanto', '09166764802', '4', '5/5/2024'),
(3, 'sd', 'ads', '23223', '3', '242'),
(4, 'katlin', 'repunte', '09166764902', '1', '5/5/2024'),
(5, 'sermike', 'busta', '', '2', '5/5/2024'),
(6, 'asd', 'asd', '', '1', ''),
(7, 'jty', 'tyty', '00001012', '1', '2/3/2024'),
(8, 'uy', '', '56756757', '1', '2/3/2024'),
(9, 'jk', 'jlk', '56786587865', '1', '667887'),
(10, '', '', '', '1', ''),
(11, 'gfdggf', 'ggdfd', '44343', '3', '2222234'),
(12, 'sda', 'asd', '', '1', ''),
(13, 'sda', 'asd', '', '1', ''),
(14, 'sda', 'asd', '', '1', ''),
(15, 'asd', 'asd', '', '1', '');

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
(37, 'taehyung', 'kim', 'kimtae', 'tae', 'apPCbAHbnQTs6k+AgFofhTeWZjvUfkJAQR9MWeAJMnE=', '095331235678', 'Admin', 'Active', ''),
(38, 'bvv', 'vv', 'test', 'bv', 'ipvPHlHoEtCvhGWo28yfdBBkvwrzs9COawJGQ3wZ9/s=', '09123456781', 'User', 'Active', ''),
(39, 'fg', 'fo', 'oo', 'ooo', '47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=', '45465787897', 'User', 'Active', 'src/userImages/Screenshot (12).png'),
(40, 'test', 'test', 'testy', 'tea', 'SxeYEHkaGa87/q+9zwrKJ02ax9XwY7jgt1GJNgwM86M=', '09506774836', 'Admin', 'Active', ''),
(41, 'gfgf', 'fg', 'gf', 'vince', 'u1rS8HwTsbCz9vg9gziY/PAMIXo5X6oqGVPObKfUGp4=', 'gggf', 'Admin', 'Active', '');

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
  MODIFY `h_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rent`
--
ALTER TABLE `rent`
  MODIFY `t_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
