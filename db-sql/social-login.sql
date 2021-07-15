-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 15, 2021 at 01:34 PM
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
-- Database: `social-login`
--

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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `mobile_number`, `password`, `social_id`, `login_type`, `status`, `created_at`) VALUES
(1, 'Harish Meshram', NULL, 'harish@gmail.com', NULL, '$2y$10$h/pygn8pKxxCxE4D0JOtJehC0dvq6cYmlnOh3PFxDWloJPxJNAVXO', NULL, NULL, 1, '2021-06-27 00:56:07'),
(2, 'Harish Meshram', NULL, 'harishmeshram0294@gmail.com', NULL, 'eyJpdiI6ImFDY2ZwRHZMTDVmN3ZJZDE4NEdUSEE9PSIsInZhbHVlIjoiUUdSU0tcL1YxTHI0OVRGQWtwXC9tOGZvbDJGWnBma05naHBPTGNISW1TNVFRPSIsIm1hYyI6ImJlMzYyMmM4MDM1M2I5ZjlkYmJmNDIzZjFmZWY4Zjg0ZjU5NmNjYmZkMWUzNmM5N2ViYWYxZGFhNjUyNDc0MDUifQ==', '103362798786021449876', NULL, 1, '2021-06-27 02:28:04'),
(3, 'Harish Meshram', NULL, 'harishmeshram0294@gmail.com', NULL, 'eyJpdiI6IjJNWGNCNkg3aXRqVEszWkQ1c0hCekE9PSIsInZhbHVlIjoiY1hEeWJUOE9pUGhzVVI2aHU5T25Ydz09IiwibWFjIjoiOTA3M2NhN2MyZjEwZjBlYTM2NjRmYzQ3ZjhkOTg4ZTA3YWIyYWVjY2JmNWJiMWI2MzRlYjAyZjJiNGI2ZWE5YiJ9', '103362798786021449876', 1, 1, '2021-06-28 11:37:21'),
(4, 'Harish Meshram', NULL, 'harishmeshram0294@gmail.com', NULL, 'eyJpdiI6IlFtNGYrcmtZUTFVb056UkE4WWVhMkE9PSIsInZhbHVlIjoiUnNPQVAyelVuYXkwS283bFVlcGgxZz09IiwibWFjIjoiNmRkYTgxMGUwZjYyODBkZTdjZWUwMjcwNTU0NjMzZDE4MTg2M2Y1MGRhNzY2ODg1YmQ4MmFmMTE1ZWI3NmE2ZSJ9', '103362798786021449876', 1, 1, '2021-07-15 00:39:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
