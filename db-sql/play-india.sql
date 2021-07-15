-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 15, 2021 at 02:55 PM
-- Server version: 8.0.25-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `play-india`
--

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `coins` int NOT NULL COMMENT '1 coin = 10 paisa',
  `price` float NOT NULL COMMENT '10 paisa = 1 coin',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `package_id` bigint NOT NULL,
  `transaction_id` text COLLATE utf8_unicode_ci NOT NULL,
  `checksum` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment` float DEFAULT NULL,
  `payment_mode` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `bank_transaction` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pools`
--

CREATE TABLE `pools` (
  `id` bigint NOT NULL,
  `category_id` bigint NOT NULL DEFAULT '0',
  `name` varchar(233) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `cover_image` text NOT NULL,
  `pool_limit` int NOT NULL,
  `coins` int NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pools`
--

INSERT INTO `pools` (`id`, `category_id`, `name`, `description`, `image`, `cover_image`, `pool_limit`, `coins`, `start_time`, `end_time`, `is_active`, `created_at`) VALUES
(1, 0, 'Aradhya Lottery', 'gfhgfh', '1.jpg', '', 10, 10, '2020-08-02 18:53:28', '2020-08-03 18:53:28', 1, '2020-08-02 13:24:37'),
(2, 0, 'Radhe Loots', 'rtytrytrytr', '3.jpg', '', 100, 20, '2020-08-03 18:53:28', '2020-08-03 18:53:28', 1, '2020-08-02 13:24:37'),
(3, 0, 'Ramji Loots', 'rtytrytrytr', '2.jpg', '', 50, 20, '2020-08-03 18:53:28', '2020-08-03 18:53:28', 1, '2020-08-02 13:24:37'),
(4, 0, 'Babu Loots pools', 'rtytrytrytr', '5.jpg', '', 50, 20, '2020-08-03 18:53:28', '2020-08-03 18:53:28', 1, '2020-08-02 13:24:37');

-- --------------------------------------------------------

--
-- Table structure for table `pool_category`
--

CREATE TABLE `pool_category` (
  `id` bigint NOT NULL,
  `name` varchar(233) NOT NULL,
  `image` text,
  `cover_image` text,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_ar` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `mobile_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `social_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `login_type` tinyint(1) DEFAULT NULL COMMENT '(1:Google, 2:Facebook, 3:normal)',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `user_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '(1:actual , 2:dummy)',
  `coins` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `mobile_number`, `password`, `social_id`, `login_type`, `status`, `user_type`, `coins`, `created_at`) VALUES
(1, 'Harish Meshram', NULL, 'harish@gmail.com', NULL, '$2y$10$h/pygn8pKxxCxE4D0JOtJehC0dvq6cYmlnOh3PFxDWloJPxJNAVXO', NULL, NULL, 1, 1, 0, '2021-06-27 00:56:07'),
(2, 'Harish Meshram', NULL, 'harishmeshram0294@gmail.com', NULL, 'eyJpdiI6ImFDY2ZwRHZMTDVmN3ZJZDE4NEdUSEE9PSIsInZhbHVlIjoiUUdSU0tcL1YxTHI0OVRGQWtwXC9tOGZvbDJGWnBma05naHBPTGNISW1TNVFRPSIsIm1hYyI6ImJlMzYyMmM4MDM1M2I5ZjlkYmJmNDIzZjFmZWY4Zjg0ZjU5NmNjYmZkMWUzNmM5N2ViYWYxZGFhNjUyNDc0MDUifQ==', '103362798786021449876', NULL, 1, 1, 0, '2021-06-27 02:28:04'),
(3, 'Harish Meshram', NULL, 'harishmeshram0294@gmail.com', NULL, 'eyJpdiI6IjJNWGNCNkg3aXRqVEszWkQ1c0hCekE9PSIsInZhbHVlIjoiY1hEeWJUOE9pUGhzVVI2aHU5T25Ydz09IiwibWFjIjoiOTA3M2NhN2MyZjEwZjBlYTM2NjRmYzQ3ZjhkOTg4ZTA3YWIyYWVjY2JmNWJiMWI2MzRlYjAyZjJiNGI2ZWE5YiJ9', '103362798786021449876', 1, 1, 1, 0, '2021-06-28 11:37:21'),
(4, 'Harish Meshram', NULL, 'harishmeshram0294@gmail.com', NULL, 'eyJpdiI6IlFtNGYrcmtZUTFVb056UkE4WWVhMkE9PSIsInZhbHVlIjoiUnNPQVAyelVuYXkwS283bFVlcGgxZz09IiwibWFjIjoiNmRkYTgxMGUwZjYyODBkZTdjZWUwMjcwNTU0NjMzZDE4MTg2M2Y1MGRhNzY2ODg1YmQ4MmFmMTE1ZWI3NmE2ZSJ9', '103362798786021449876', 1, 1, 1, 0, '2021-07-15 00:39:05');

-- --------------------------------------------------------

--
-- Table structure for table `users_to_pools`
--

CREATE TABLE `users_to_pools` (
  `id` bigint NOT NULL,
  `pool_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `pool_position` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users_to_pools`
--

INSERT INTO `users_to_pools` (`id`, `pool_id`, `user_id`, `pool_position`, `created_at`) VALUES
(1, 1, 2, NULL, '2020-08-02 13:34:35'),
(2, 1, 3, NULL, '2020-08-02 13:34:35'),
(3, 1, 5, NULL, '2020-08-02 13:35:02'),
(4, 1, 7, NULL, '2020-08-02 13:35:02'),
(5, 2, 5, NULL, '2020-08-02 13:35:02'),
(6, 2, 7, NULL, '2020-08-02 13:35:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pools`
--
ALTER TABLE `pools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pool_category`
--
ALTER TABLE `pool_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_to_pools`
--
ALTER TABLE `users_to_pools`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pools`
--
ALTER TABLE `pools`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pool_category`
--
ALTER TABLE `pool_category`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users_to_pools`
--
ALTER TABLE `users_to_pools`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
