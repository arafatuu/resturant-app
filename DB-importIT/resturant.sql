-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2021 at 08:03 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resturant`
--

-- --------------------------------------------------------

--
-- Table structure for table `resturants`
--

CREATE TABLE `resturants` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `adress` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resturants`
--

INSERT INTO `resturants` (`id`, `name`, `email`, `adress`, `created_at`, `updated_at`) VALUES
(3, 'Testy Treat', 'tt@test.com', 'House: 12, Road: 08, Sector:6 , Uttara, Dhaka-1230', '2021-09-04 18:00:00', '2021-09-05 18:00:00'),
(4, 'Hot Cake', 'hk@test.com', 'House: 14, Road: 13, Sector:6 , Uttara, Dhaka-1230', '2021-09-05 18:00:00', '2021-09-06 18:00:00'),
(5, 'Kacchikhor', 'Kacchikhor@test.com', 'House: 11, Road: 02, Sector:3 , Uttara, Dhaka-1230', '2021-09-05 18:00:00', '2021-09-06 18:00:00'),
(6, 'Lajij Resturant', 'lajijresto@test.com', 'House: 18, Road: 19, Sector:6 , Uttara, Dhaka-1230', '2021-09-23 07:56:11', '2021-09-23 01:56:11'),
(7, 'Hungryguzz', 'hungrygyzz@gmail.com', '27/2, Nowapara, Dakshinkhan, Dhaka-1230', '2021-09-23 00:32:20', '2021-09-23 00:32:20'),
(10, 'baperhotel', 'bap@gmail.com', 'whole universe', '2021-09-23 00:47:59', '2021-09-23 00:47:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(300) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Arafat', 'arafatbd2012@gmail.com', 'eyJpdiI6InhqNDd4SGYxNzN5ZFcwWnZTNmNuaGc9PSIsInZhbHVlIjoiWjNYbWNQTGxkb2prWnJPNzBKS2hIUT09IiwibWFjIjoiYTM5NTAxNGFlZWYyMDE1NjA1NDU0N2EzZDQ2YzM5ZTdkZTMzMmVjOGYwY2YwZjQyODU1YzJhMzU5NGY1ZmU5ZiIsInRhZyI6IiJ9', '2021-09-23 10:44:05', '2021-09-23 10:44:05'),
(2, 'abc', 'dd@gmail.com', 'eyJpdiI6IkkyMEZ6THh1YUJzcm1SaXFEWUlzZ0E9PSIsInZhbHVlIjoiYm5QaUZBQnQ2U0xKbXFlYlZnZ3hPdz09IiwibWFjIjoiY2Q2ZmY0ODQzZDRiOTIwMmYwOTVjNWE4NjY2YTFlNTE1ZWU3ZDhjMjNkN2IyYjE2YTRhNmExZDI1MmUxOTlmZiIsInRhZyI6IiJ9', '2021-09-23 10:50:59', '2021-09-23 10:50:59'),
(3, 'fdfd', 'hungrygyzz@gmail.com', 'eyJpdiI6InlVblBpTkNCaVQvOWxqZ1BHU20zM3c9PSIsInZhbHVlIjoiM1JLb1ZuMU5Jdk56MEdPdUFlT1l0UT09IiwibWFjIjoiYTI0MzM4YzI2YmQxZTZjY2IyMGQxOWE0N2UyMTRkNTY5MTFiOTJlYjc2YWRmMWQ1YWMwNjdmZGU2MjA2NDgzNiIsInRhZyI6IiJ9', '2021-09-23 11:35:03', '2021-09-23 11:35:03'),
(4, 'fdfd', 'hungrygyzz@gmail.com', 'eyJpdiI6InZ3SmZxYlZFU2QzUzdLejV5VmFkcEE9PSIsInZhbHVlIjoiSzMrV2tHYTM0MzUwZzdEZXBocFRudz09IiwibWFjIjoiYWQ2N2I4NzBlMGExZDgzMjEzN2Q3MjBhODJkMjA2NDBkNTk3NWIwOGNmMjZkYzFhNzQ4ZmRiNjMwMDYwOWE3YSIsInRhZyI6IiJ9', '2021-09-23 11:35:57', '2021-09-23 11:35:57'),
(5, 'fdfd', 'hungrygyzz@gmail.com', 'eyJpdiI6ImJnLzF4NG0wSE4vQjJNT1dJUnBRZ0E9PSIsInZhbHVlIjoiVXpsZVdIUXdiWWhmUnlpWnBEMGZiZz09IiwibWFjIjoiYWNkN2M4OTVkMDViOWYxMThiODQ2MzMwNTA2ODZmM2YzODgyYzdhNzk2NzI5NWFkODExZDFjZjAzNWU1YjY2MiIsInRhZyI6IiJ9', '2021-09-23 11:36:40', '2021-09-23 11:36:40'),
(6, 'xyz', 'khl@gmail.com', 'eyJpdiI6ImtXa2dOczU2cDMrTmlmL09IcnFFVkE9PSIsInZhbHVlIjoidFI1RkRCODVzU1pwTTh6RWxCZTBDQT09IiwibWFjIjoiOGU5ODYwYjU4ZmIxMDBmNWYyMTI2ODEzMDg3OGNlZDFhM2M4Njc1NTA2ODAwNTFjYTc0Njc5NmYwODVlNGQzOSIsInRhZyI6IiJ9', '2021-09-23 11:46:54', '2021-09-23 11:46:54'),
(7, 'bb', 'lajijresto@test.com', 'eyJpdiI6IjRyK2tKRUVidzRNaFRqTndrU3FZcUE9PSIsInZhbHVlIjoiVm00ZGVrUjRqYml4dmNUM0FZV3N2UT09IiwibWFjIjoiZTJhNDExNmE4NGQ4ZDM0NjA5NTE2MmFjMjYyYWQxYjU3YmJhYmFhNjcwOGMxYzUzOTkxZDA2MTRlOTNmOGFhNiIsInRhZyI6IiJ9', '2021-09-23 21:57:53', '2021-09-23 21:57:53'),
(8, 'zz', 'hungrygyzz@gmail.com', 'eyJpdiI6IlBvQXREWjU0NkIvcUNtNFkvNXBDcHc9PSIsInZhbHVlIjoiUGFuTmpXY2hRS0NZaVlaUUFTUVRjZz09IiwibWFjIjoiNWRmNjdjOWEzYTc3Yjc0ZTI2YzBiYjViYjBkYTNmNGNlNjIwNzY4ZjFlNjEzYzgwNGU2MzBlNzY2NmJiYzc3YiIsInRhZyI6IiJ9', '2021-09-23 22:02:28', '2021-09-23 22:02:28'),
(9, 'ok', 'ss@dhdh.com', 'eyJpdiI6IlpmUXllZEpjbXBRenp5Y0VKbTkvTmc9PSIsInZhbHVlIjoibTU2SkxTL1E0cGV0S1lvaWk4N0dSZz09IiwibWFjIjoiMjBjZjRlZmM3YzRmMDdlZjZmY2Q4MjBiNWUxODEyMjA2MDZhODNkZjYwZTU2YTc0MzE1MWM5MGQ0ZjA4YmYxNyIsInRhZyI6IiJ9', '2021-09-23 22:16:04', '2021-09-23 22:16:04'),
(10, 'fdfd', 'ss@dhdh.com', 'eyJpdiI6IndBZ29mS001clNuRm5KanVzakpVRnc9PSIsInZhbHVlIjoiM0hEZkZ4YXIzdnVhTUtTN21pbzkrdz09IiwibWFjIjoiNTMwZTI2OWM5ZTE2NDlmMGEzNmNlYzdlNGNkMGMyZDY2YjM5YzMzYTczYTUyOTEwY2Y4MzUyZDAyYTM3OTc0NCIsInRhZyI6IiJ9', '2021-09-23 22:17:32', '2021-09-23 22:17:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `resturants`
--
ALTER TABLE `resturants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `resturants`
--
ALTER TABLE `resturants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
