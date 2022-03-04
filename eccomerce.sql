-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Време на генериране:  4 март 2022 в 15:27
-- Версия на сървъра: 10.4.22-MariaDB
-- Версия на PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данни: `eccomerce`
--

-- --------------------------------------------------------

--
-- Структура на таблица `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Схема на данните от таблица `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `item_id`) VALUES
(15, 1, 6),
(16, 1, 12);

-- --------------------------------------------------------

--
-- Структура на таблица `product`
--

CREATE TABLE `product` (
  `item_id` int(11) NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Схема на данните от таблица `product`
--

INSERT INTO `product` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_register`) VALUES
(1, 'GUCCI', 'Glasses Gucci 1', 152.00, './img/1.webp', '2020-03-28 11:08:57'),
(2, 'GUCCI', 'Glasses Gucci 2', 122.00, './img/2.webp\r\n', '2020-03-28 11:08:57'),
(3, 'GUCCI', 'GUCCI Sunglasses 3', 122.00, './img/3.webp', '2020-03-28 11:08:57'),
(4, 'Diesel', 'Diesel Glasses 1', 122.00, './img/4.webp', '2020-03-28 11:08:57'),
(5, 'Diesel', 'Diesel Glasses 2', 122.00, './img/5.webp', '2020-03-28 11:08:57'),
(6, 'Diesel', 'Diesel Glasses 3', 122.00, './img/6.webp', '2020-03-28 11:08:57'),
(7, 'Ray-Ban', 'Ray-Ban 1', 122.00, './img/7.webp', '2020-03-28 11:08:57'),
(8, 'Ray-Ban', 'Ray-Ban Glasses 2', 122.00, './img/8.webp', '2020-03-28 11:08:57'),
(9, 'Ray-Ban', 'Ray-Ban Glasses 9', 152.00, './img/9.webp', '2020-03-28 11:08:57'),
(10, 'Ray-Ban', 'Ray-Ban Glasses 4', 152.00, './img/10.webp', '2020-03-28 11:08:57'),
(12, 'Hugo', 'Hugo Glasses 1 ', 152.00, './img/11.webp', '2020-03-28 11:08:57'),
(13, 'Hugo', 'Hugo Glasses 2 ', 152.00, './img/12.webp', '2020-03-28 11:08:57');

-- --------------------------------------------------------

--
-- Структура на таблица `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура на таблица `wishlist`
--

CREATE TABLE `wishlist` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Индекси за таблица `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Индекси за таблица `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`item_id`);

--
-- Индекси за таблица `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
