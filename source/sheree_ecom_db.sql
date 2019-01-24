-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 21, 2019 at 04:36 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sheree_ecom_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Shoulder Bags'),
(2, 'Backpack'),
(3, 'Hand Bags');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(18,2) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `price`, `image_path`, `category_id`) VALUES
(1, '', '', '1500.00', '../assets/images/s1.jpg', 1),
(2, '', '', '2300.00', '../assets/images/s2.jpg', 1),
(3, '', '', '1000.00', '../assets/images/b1.jpg', 2),
(4, '', '', '1900.00', '../assets/images/b2.jpg', 2),
(5, 'handbag', 'asd', '1800.00', '../assets/images/h1.jpg', 3),
(6, 'handbag2', 'asd', '3100.00', '../assets/images/h2.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `transaction_code` varchar(255) NOT NULL,
  `purchase_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status_id` int(11) NOT NULL,
  `payment_mode_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `transaction_code`, `purchase_date`, `status_id`, `payment_mode_id`) VALUES
(11, 4, 'transaction_number', '2019-01-21 02:42:44', 2, 1),
(12, 4, 'C9169A4E1560A961-1547603020', '2019-01-21 02:42:44', 3, 1),
(13, 4, '77BBA3569B92A3BD-1547603149', '2019-01-21 02:42:44', 1, 1),
(14, 4, 'BB024F75189ABDF9-1547605429', '2019-01-21 02:42:44', 1, 1),
(15, 4, '728D6174CC0D821A-1547605453', '2019-01-21 02:42:44', 1, 1),
(16, 4, '14DE042CAEF16350-1547605503', '2019-01-21 02:42:44', 1, 1),
(17, 4, '087D6C366529CF72-1547605585', '2019-01-21 02:42:44', 1, 1),
(18, 4, '6C385AB38BCB77C7-1547605654', '2019-01-21 02:42:44', 1, 1),
(19, 4, '1B717D95926E6F40-1547605656', '2019-01-21 02:42:44', 1, 1),
(20, 4, '619D38DE549E94E0-1547605824', '2019-01-21 02:42:44', 1, 1),
(21, 4, 'C447CB8B31961A77-1547605831', '2019-01-21 02:42:44', 1, 1),
(22, 4, 'D4B35C128204823C-1547606199', '2019-01-21 02:42:44', 1, 1),
(23, 4, '5B40A2E686689F25-1547606538', '2019-01-21 02:42:44', 1, 1),
(24, 4, 'F79089710BA229A3-1547606999', '2019-01-21 02:42:44', 1, 1),
(25, 4, 'B176F9D4DB4860D4-1547607026', '2019-01-21 02:42:44', 1, 1),
(26, 4, 'A919AA0E0F4CF65D-1547607029', '2019-01-21 02:42:44', 1, 1),
(27, 4, 'E5980812AF58398E-1547607032', '2019-01-21 02:42:44', 1, 1),
(28, 4, '7D3C13CADAF97564-1547607035', '2019-01-21 02:42:44', 1, 1),
(29, 4, 'B72434EC8B7ED972-1547607211', '2019-01-21 02:42:44', 1, 1),
(30, 4, '00180BB020C1C8F2-1547615395', '2019-01-21 02:42:44', 1, 1),
(31, 4, '830E4D152E1948D3-1547615722', '2019-01-21 02:42:44', 1, 1),
(32, 4, 'D7EEE35AF29F9E32-1547615916', '2019-01-21 02:42:44', 1, 1),
(33, 4, 'E2189B46E69EABED-1547615979', '2019-01-21 02:42:44', 1, 1),
(34, 4, '042194632CE8B6A7-1547616057', '2019-01-21 02:42:44', 1, 1),
(35, 4, 'B062DEF521DD0DE5-1547617684', '2019-01-21 02:42:44', 1, 1),
(36, 4, 'F15F21BAE80C0F81-1547617733', '2019-01-21 02:42:44', 1, 1),
(37, 4, '4FA6D4ABA3B626F9-1547617749', '2019-01-21 02:42:44', 1, 1),
(38, 4, '1DB2CD4C8C78EB82-1547618456', '2019-01-21 02:42:44', 1, 1),
(39, 4, '2608C8383F874580-1547618559', '2019-01-21 02:42:44', 1, 1),
(40, 4, '5E747D452CE1C370-1547618632', '2019-01-21 02:42:44', 1, 1),
(41, 4, '35E7B15F7F71E6C1-1547618682', '2019-01-21 02:42:44', 1, 1),
(42, 4, '1E2D4E8293D68739-1547622681', '2019-01-21 02:42:44', 1, 1),
(43, 4, 'C724ADBE4CACA1BB-1547622699', '2019-01-21 02:42:44', 1, 1),
(44, 5, '12D35F38FA9F9903-1547702275', '2019-01-21 02:42:44', 1, 1),
(45, 5, '76208B7D41D5FE85-1547702291', '2019-01-21 02:42:44', 1, 1),
(46, 5, 'FC1324506525B0FA-1547792405', '2019-01-21 02:42:44', 1, 1),
(47, 5, 'Qstore_5c41703512b79', '2019-01-21 02:42:44', 1, 2),
(48, 5, '60C77D26289F46EC-1547793062', '2019-01-21 02:42:44', 1, 1),
(49, 5, 'Qstore_5c4172c498125', '2019-01-21 02:42:44', 1, 2),
(50, 5, 'store_5c41737b5d275', '2019-01-21 02:42:44', 1, 2),
(51, 5, 'store_5c4175871e7bb', '2019-01-21 02:42:44', 1, 2),
(52, 5, 'store_5c41808e7db9b', '2019-01-21 02:42:44', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `price` decimal(18,2) DEFAULT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `item_id`, `price`, `quantity`) VALUES
(1, 11, 1, '65.50', 2),
(2, 11, 2, '45.00', 2),
(3, 12, 1, '65.50', 1),
(4, 14, 2, '45.00', 1),
(5, 16, 2, '45.00', 2),
(6, 17, 3, '120.00', 2),
(7, 18, 2, '45.00', 5),
(8, 21, 2, '45.00', 2),
(9, 22, 1, '65.50', 4),
(10, 23, 1, '65.50', 4),
(11, 24, 3, '120.00', 2),
(12, 24, 4, '42.50', 1),
(13, 25, 3, '120.00', 2),
(14, 29, 2, '45.00', 2),
(15, 29, 4, '42.50', 2),
(16, 30, 2, '45.00', 2),
(17, 31, 2, '45.00', 2),
(18, 32, 4, '42.50', 2),
(19, 33, 2, '45.00', 3),
(20, 34, 4, '42.50', 1),
(21, 34, 2, '45.00', 1),
(22, 35, 2, '45.00', 2),
(23, 36, 1, '65.50', 1),
(24, 38, 2, '45.00', 4),
(25, 39, 2, '45.00', 2),
(26, 40, 2, '45.00', 1),
(27, 41, 4, '42.50', 4),
(28, 42, 4, '42.50', 2147483647),
(29, 43, 2, '45.00', -44),
(30, 44, 2, '50.00', 1),
(31, 46, 1, '80.00', 1),
(32, 46, 2, '50.00', 1),
(33, 48, 2, '50.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_modes`
--

CREATE TABLE `payment_modes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_modes`
--

INSERT INTO `payment_modes` (`id`, `name`) VALUES
(1, 'COD'),
(2, 'Paypal');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`) VALUES
(1, 'pending'),
(2, 'completed'),
(3, 'cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `roles_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `address`, `password`, `roles_id`) VALUES
(4, 'Sheree', 'Datario', 'adminshe', 'shedatario@gmail.com', 'Binan, Laguna', '$2y$10$pg7lAqkQ2091KwWcaqxyFeJQfWYGIrtmpioBaTpAITQB.BWK2kSUG', 1),
(5, 'She', 'Datario', 'shedatario', 'shedatario@yahoo.com', 'juana 1 binan, laguna', '$2y$10$xb6/ee7dM1ARAgZKCp.uM.kYE0TRoXUYCuZQ/ySqH4qPNmyH9u7m.', 2),
(6, 'She', 'Datario', 'usersusers', 'shedatario@yahoo.com', 'juana1', '$2y$10$c.VmMZZF.Yp0Ga5D44UqIumYkbDOPJ6zTLzcabuqCemizRZvdSx3i', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `payment_mode_id` (`payment_mode_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `payment_modes`
--
ALTER TABLE `payment_modes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_id` (`roles_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `payment_modes`
--
ALTER TABLE `payment_modes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`payment_mode_id`) REFERENCES `payment_modes` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
