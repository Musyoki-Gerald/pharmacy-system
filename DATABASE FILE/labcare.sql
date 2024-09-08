-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2024 at 07:27 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `labcare`
--

-- --------------------------------------------------------

--
-- Table structure for table `on_hold`
--

CREATE TABLE `on_hold` (
  `id` int(11) NOT NULL,
  `invoice_number` varchar(13) NOT NULL,
  `medicine_name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `expire_date` date NOT NULL,
  `qty` bigint(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `cost` bigint(11) NOT NULL,
  `amount` bigint(11) NOT NULL,
  `profit_amount` bigint(11) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `on_hold`
--

INSERT INTO `on_hold` (`id`, `invoice_number`, `medicine_name`, `category`, `expire_date`, `qty`, `type`, `cost`, `amount`, `profit_amount`, `date`) VALUES
(97, 'CA-0092093', 'Lisinopril ', 'ACE Inhibitor', '2026-09-14', 10, 'Tab', 40, 400, 100, '09/07/2024');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `invoice_number` varchar(13) NOT NULL,
  `medicines` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `total_amount` bigint(11) NOT NULL,
  `total_profit` bigint(11) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(100) NOT NULL,
  `bar_code` varchar(255) NOT NULL,
  `medicine_name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `used_quantity` int(100) NOT NULL,
  `remain_quantity` int(100) NOT NULL,
  `act_remain_quantity` int(10) NOT NULL,
  `register_date` date NOT NULL,
  `expire_date` date NOT NULL,
  `company` varchar(100) NOT NULL,
  `sell_type` varchar(100) NOT NULL,
  `actual_price` int(100) NOT NULL,
  `selling_price` int(100) NOT NULL,
  `profit_price` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `bar_code`, `medicine_name`, `category`, `quantity`, `used_quantity`, `remain_quantity`, `act_remain_quantity`, `register_date`, `expire_date`, `company`, `sell_type`, `actual_price`, `selling_price`, `profit_price`, `status`) VALUES
(21, '101', 'Deprex', 'Atypical Antipsychotics', 200, 0, 200, 200, '2024-09-01', '2024-10-07', 'none', 'Tab', 10, 20, '10(100%)', 'Available'),
(23, '102', 'Amitriptyline', 'Tricyclic Antidepressants', 500, 0, 500, 500, '2024-09-01', '2024-10-06', 'none', 'Tab', 20, 30, '10(50%)', 'Available'),
(24, '103', 'Benazepril ', 'ACE Inhibitor', 1250, 0, 1250, 1250, '2024-09-01', '2026-07-04', 'none', 'Tab', 10, 20, '10(100%)', 'Available'),
(25, '104', 'Captopril', 'ACE Inhibitor', 301, 0, 301, 301, '2024-09-01', '2025-08-09', 'none', 'Tab', 20, 40, '20(100%)', 'Available'),
(26, '105', 'Ramipril ', 'ACE Inhibitor', 300, 0, 300, 300, '2024-09-01', '2026-08-03', 'none', 'Tab', 10, 20, '10(100%)', 'Available'),
(27, '106', 'Lisinopril ', 'ACE Inhibitor', 921, 10, 911, 921, '2024-09-01', '2026-09-14', 'none', 'Tab', 30, 40, '10(33%)', 'Available'),
(28, '107', 'Enalapril ', 'ACE Inhibitor', 882, 0, 882, 882, '2024-09-01', '2026-11-10', 'none', 'Tab', 10, 20, '10(100%)', 'Available'),
(29, '108', 'Concor 5', 'Beta Blockers', 771, 0, 771, 771, '2024-09-01', '2026-08-12', 'none', 'Bot', 30, 40, '10(33%)', 'Available'),
(30, '109', 'Carvedilol', 'Beta Blockers', 741, 0, 741, 741, '2024-09-01', '2027-11-17', 'none', 'Tab', 20, 25, '5(25%)', 'Available'),
(31, '110', 'Bisoprolol', ' Beta Blockers', 551, 0, 551, 551, '2024-09-01', '2026-08-13', 'none', 'Tab', 20, 30, '10(50%)', 'Available'),
(32, '111', 'Propranolol', 'Beta Blockers', 901, 0, 901, 901, '2024-09-01', '2026-08-25', 'none', 'Tab', 20, 30, '10(50%)', 'Available'),
(33, '112', 'Metoprolol', ' Beta Blockers', 664, 0, 664, 654, '2024-09-01', '2026-08-26', 'none', 'Tab', 40, 50, '10(25%)', 'Available'),
(34, '113', 'Atenolol', ' Beta Blockers', 659, 0, 659, 659, '2024-09-01', '2026-10-06', 'none', 'Tab', 15, 20, '5(33%)', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `password`) VALUES
(1, 'gerald', '1234567');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `on_hold`
--
ALTER TABLE `on_hold`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `on_hold`
--
ALTER TABLE `on_hold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
