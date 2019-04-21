-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2018 at 01:26 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loanbanking`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_info`
--

CREATE TABLE `bank_info` (
  `bank_name` varchar(30) NOT NULL,
  `home` varchar(20) NOT NULL,
  `car` varchar(20) NOT NULL,
  `corrporate` varchar(20) NOT NULL,
  `eduction` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_info`
--

INSERT INTO `bank_info` (`bank_name`, `home`, `car`, `corrporate`, `eduction`) VALUES
('SBI', '8.45', '7.3', '6.5', '9.4'),
('HDFC', '8.65', '7.5', '11.2', '8.2'),
('ICICI', '8.60', '9.4', '8.2', '9.4'),
('PNB', '.12.2', '7.3', '9.3', '6.5');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `full_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `ph_no` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `profession` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`full_name`, `email`, `ph_no`, `password`, `profession`) VALUES
('dffds', 'dikshantmahant@gmail.com', '9039124864', '1234', 'Employed'),
('koshiki', 'laad23@gmail.com', '12356789', '12345', 'Employed'),
('nishi', 'nishjn23@gmail.com', '5678902678', '12456', 'Employed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`full_name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
