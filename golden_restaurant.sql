-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2025 at 04:40 PM
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
-- Database: `golden_restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_replies`
--

CREATE TABLE `admin_replies` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `reply_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `message_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_replies`
--

INSERT INTO `admin_replies` (`id`, `email`, `reply_text`, `created_at`, `message_id`) VALUES
(0, 'amaalferas00@gmai.com', 'www', '2025-05-23 17:41:34', 2),
(0, 'amaalferas00@gmail.com', 'نعم يوجد', '2025-05-24 12:35:13', 4);

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `cart_items_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`cart_items_id`, `user_id`, `product_id`, `quantity`) VALUES
(81, 33, 5, 1),
(82, 33, 4, 1),
(83, 33, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `user_id`, `name`, `email`, `phone`, `message`, `created_at`) VALUES
(1, 33, 'afnan', 'afnansalameh@gmail.com', '0597377341', 'afnan salameh', '2025-05-23 18:18:28'),
(2, 34, 'amaal1', 'amaalferas00@gmai.com', '0599124302', 'هل يوجد شاغل وظيفي', '2025-05-23 19:37:47'),
(3, 36, 'rawan', 'rawan@gmail.com', '0599124302', 'هل يوجدمكان لتوظيف', '2025-05-24 14:15:36'),
(4, 35, 'amaal', 'amaalferas00@gmail.com', '0599124302', 'هل يوجد مكان للموظفين', '2025-05-24 14:27:33');

-- --------------------------------------------------------

--
-- Table structure for table `discount_coupons`
--

CREATE TABLE `discount_coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `discount_percent` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `used` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `discount_coupons`
--

INSERT INTO `discount_coupons` (`id`, `code`, `discount_percent`, `user_email`, `used`, `created_at`) VALUES
(1, 'MATCH4361', 10, 'razan1@gmail.com', 0, '2025-05-21 19:33:18'),
(2, 'MATCH9326', 15, 'amaalferas00@gmail.com', 0, '2025-05-24 12:20:58');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_email`, `message`, `is_read`, `created_at`) VALUES
(16, 'razan1@gmail.com', 'Your reservation has been made for 2 guest(s) on 2025-05-23 at 11:30:00.', 0, '2025-05-21 15:50:20'),
(17, 'razan1@gmail.com', 'Your reservation has been made for 11 guest(s) on 2025-08-22 at 23:30:00.', 0, '2025-05-21 15:51:15'),
(18, 'razan1@gmail.com', 'Your reservation has been made for 5 guest(s) on 2025-05-29 at 12:00:00.', 0, '2025-05-21 22:31:47'),
(19, 'razan1@gmail.com', 'Your reservation has been made for 5 guest(s) on 2025-05-29 at 12:00:00.', 0, '2025-05-21 22:31:49'),
(20, 'razan1@gmail.com', 'Your reservation has been made for 5 guest(s) on 2025-05-29 at 12:00:00.', 0, '2025-05-21 22:31:53'),
(21, 'razan1@gmail.com', 'Your reservation has been made for 5 guest(s) on 2025-05-29 at 12:00:00.', 0, '2025-05-21 22:31:55'),
(22, 'razan1@gmail.com', 'Your reservation has been made for 5 guest(s) on 2025-05-29 at 12:00:00.', 0, '2025-05-21 22:31:59'),
(23, 'amaalfwwwweras0099@gmail.com', 'Your reservation has been made for 3 guest(s) on 2025-05-30 at 12:00:00.', 0, '2025-05-22 01:03:30'),
(24, 'amaalfwwwweras0099@gmail.com', 'Your reservation has been made for 3 guest(s) on 2025-05-30 at 12:00:00.', 0, '2025-05-22 01:03:33'),
(25, 'afnansalameh609@gmail.com', 'Your reservation has been made for 2 guest(s) on 2025-05-29 at 11:30:00.', 0, '2025-05-23 15:06:31'),
(26, 'afnansalameh609@gmail.com', 'Your reservation has been made for 2 guest(s) on 2025-05-29 at 11:30:00.', 0, '2025-05-23 15:06:34'),
(27, 'afnansalameh609@gmail.com', 'Your reservation has been made for 2 guest(s) on 2025-05-29 at 11:30:00.', 0, '2025-05-23 15:06:38'),
(28, 'afnansalameh609@gmail.com', 'Your reservation has been made for 2 guest(s) on 2025-05-29 at 11:30:00.', 0, '2025-05-23 15:06:42'),
(29, 'afnansalameh609@gmail.com', 'Your reservation has been made for 2 guest(s) on 2025-05-29 at 11:30:00.', 0, '2025-05-23 15:06:45'),
(30, 'afnansalameh609@gmail.com', 'Your reservation has been made for 2 guest(s) on 2025-05-29 at 11:30:00.', 0, '2025-05-23 15:06:48'),
(31, 'afnansalameh609@gmail.com', 'Your reservation has been made for 1 guest(s) on 2025-05-28 at 11:00:00.', 0, '2025-05-23 15:07:48'),
(32, 'afnansalameh609@gmail.com', 'Your reservation has been made for 1 guest(s) on 2025-05-28 at 11:00:00.', 0, '2025-05-23 15:07:51'),
(33, 'afnansalameh609@gmail.com', 'Your reservation has been made for 1 guest(s) on 2025-05-28 at 11:00:00.', 0, '2025-05-23 15:07:54'),
(34, 'afnansalameh609@gmail.com', 'Your reservation has been made for 1 guest(s) on 2025-05-28 at 11:00:00.', 0, '2025-05-23 15:07:59'),
(35, 'afnansalameh609@gmail.com', 'Your reservation has been made for 1 guest(s) on 2025-05-28 at 11:00:00.', 0, '2025-05-23 15:08:01'),
(36, 'afnansalameh609@gmail.com', 'Your reservation has been made for 1 guest(s) on 2025-05-28 at 11:00:00.', 0, '2025-05-23 15:08:05'),
(37, 'amaalferas00@gmai.com', 'Your reservation has been made for 3 guest(s) on 2025-05-29 at 11:30:00.', 0, '2025-05-23 17:34:51'),
(38, 'amaalferas00@gmail.com', 'Your reservation has been made for 11 guest(s) on 2025-05-30 at 14:30:00.', 0, '2025-05-24 12:14:52'),
(39, 'amaalferas00@gmail.com', 'Your reservation has been made for 11 guest(s) on 2025-05-30 at 18:00:00.', 0, '2025-05-24 12:27:03');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `first_name`, `last_name`, `phone_number`, `address`, `city`, `order_date`) VALUES
(16, 33, 'afnan', 'salameh', '0597377341', 'inside abu-obida mosqe', 'Salfit', '2025-05-23 10:25:07'),
(17, 33, 'afnan', 'salameh', '0597377341', 'inside abu-obida mosqe', 'Salfit', '2025-05-23 10:28:51'),
(18, 33, 'afnan', 'salameh', '0597377341', 'inside abu-obida mosqe', 'Salfit', '2025-05-23 10:29:27'),
(19, 33, 'afnan', 'salameh', '0597377341', 'inside abu-obida mosqe', 'Salfit', '2025-05-23 10:29:51'),
(20, 33, 'afnan', 'salameh', '0597377341', 'inside abu-obida mosqe', 'Salfit', '2025-05-23 10:30:16'),
(21, 33, 'afnan', 'salameh', '0597377341', 'inside abu-obida mosqe', 'Salfit', '2025-05-23 10:30:41'),
(22, 33, 'afnan', 'salameh', '0597377341', 'inside abu-obida mosqe', 'Salfit', '2025-05-23 14:42:54'),
(23, 33, 'afnan', 'salameh', '0597377341', 'inside abu-obida mosqe', 'Salfit', '2025-05-23 16:19:44'),
(27, 35, 'amaal', 'feras', '0599124302', 'على الدوار', 'Qalqilya', '2025-05-24 12:25:55');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `discount` int(11) NOT NULL,
  `popularity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `price`, `image_url`, `category`, `discount`, `popularity`) VALUES
(1, 'Smoky BBQ Chicken Wings', 10.00, '../image2/shopImage/imgMainCourse/m2.jpg', 'MainCourses', 10, 0),
(2, 'cheescake with blubarry', 30.00, '../image2/shopImage/imgDessert/d7.jpeg', 'Desserts', 15, 0),
(3, 'Orange Juice', 12.00, '../image2/shopImage/imgdrink/dr3.jpeg', 'Drinks', 10, 0),
(4, 'Berry Cream Cheese Dessert with Mascarpone Mousse', 20.00, '../image2/shopImage/imgDessert/d1.jpg', 'Desserts', 10, 0),
(5, 'Grilled Octopus', 60.00, '../image2/shopImage/imgMainCourse/m4.jpg', 'MainCourses', 15, 0),
(6, 'Blueberry Cheesecake with Blueberry Compote', 35.00, '../image2/shopImage/imgDessert/d3.jpg', 'Desserts', 15, 0),
(7, 'Individual Berry Cheesecakes', 50.00, '../image2/shopImage/imgDessert/d8.jpg', 'Desserts', 15, 1),
(8, 'Pure Mango Juice', 15.00, '../image2/shopImage/imgdrink/dr2.jpeg', 'Drinks', 5, 0),
(9, 'Mini Lobster Tails with Black Truffle Purée', 70.00, '../image2/shopImage/imgMainCourse/m5.jpg', 'MainCourses', 30, 0),
(10, 'Sparkling Cranberry Mocktails', 15.00, '../image2/shopImage/imgdrink/dr5.jpg', 'Drinks', 5, 1),
(11, 'Herb-Grilled Lamb Chops', 25.00, '../image2/shopImage/imgMainCourse/m3.jpg', 'MainCourses', 30, 1),
(12, 'Hot Cocoa with Caramel Whipped Cream', 7.00, '../image2/shopImage/imgdrink/dr6.jpeg', 'Drinks', 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` varchar(10) NOT NULL,
  `time` time NOT NULL,
  `guests` int(11) NOT NULL,
  `special_request` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `email`, `date`, `time`, `guests`, `special_request`, `created_at`, `name`) VALUES
(98, 'razan1@gmail.com', '2025-05-29', '05:05:00', 5, '', '2025-05-21 22:31:55', 'razan'),
(107, 'afnansalameh609@gmail.com', '2025-05-28', '11:00:00', 1, '', '2025-05-23 15:07:44', 'afnan'),
(108, 'afnansalameh609@gmail.com', '2025-05-28', '11:00:00', 1, '', '2025-05-23 15:07:48', 'afnan'),
(109, 'afnansalameh609@gmail.com', '2025-05-28', '11:00:00', 1, '', '2025-05-23 15:07:51', 'afnan'),
(110, 'afnansalameh609@gmail.com', '2025-05-28', '11:00:00', 1, '', '2025-05-23 15:07:54', 'afnan'),
(111, 'afnansalameh609@gmail.com', '2025-05-28', '11:00:00', 1, '', '2025-05-23 15:07:59', 'afnan'),
(112, 'afnansalameh609@gmail.com', '2025-05-28', '11:00:00', 1, '', '2025-05-23 15:08:02', 'afnan'),
(115, 'amaalferas00@gmail.com', '2025-05-30', '18:33:00', 11, 'ppppppp', '2025-05-24 12:27:00', 'amaalferas');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` varchar(10) DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `role`) VALUES
(28, 'Admin', 'admin@goldenbite.com', '$2y$10$/Hlz.hRtQL3YqpAC5gQpwO4/6k1lx9BovCDDHQxeB.3N4enfmovjW', '2025-05-21 18:26:34', 'admin'),
(33, 'afnan', 'afnansalameh@gmail.com', '$2y$10$LUxRmqmfQyjvZodNmvK13uodGuvgjvgY1tLAKHy/DBIhD2HUf.GIG', '2025-05-23 00:38:41', 'user'),
(35, 'amaalferas', 'amaalferas00@gmail.com', '$2y$10$I/m3RlCWzKrCNTP7oW2Dt.0PYIq2gb/Ml5//IAYdR9lpU.IpINFEK', '2025-05-24 09:03:55', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`cart_items_id`),
  ADD KEY `cart_items_ibfk_1` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_coupons`
--
ALTER TABLE `discount_coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `cart_items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `discount_coupons`
--
ALTER TABLE `discount_coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
