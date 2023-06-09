-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 31 2023 г., 09:51
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `lebedev`
--

-- --------------------------------------------------------

--
-- Структура таблицы `accessory`
--

CREATE TABLE `accessory` (
  `name_of_accessory` varchar(45) NOT NULL,
  `quantity_of_accessory` int(11) DEFAULT NULL,
  `type_of_accessory` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `backup`
--

CREATE TABLE `backup` (
  `date_of_backup` date NOT NULL,
  `content_of_backup` varchar(255) DEFAULT NULL,
  `size_of_backup` int(11) DEFAULT NULL,
  `users_login_responsible_of_backup` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `client`
--

CREATE TABLE `client` (
  `name_of_client` varchar(40) NOT NULL,
  `surname_of_client` varchar(45) DEFAULT NULL,
  `address_of_client` varchar(45) DEFAULT NULL,
  `number_phone_of_client` int(11) DEFAULT NULL,
  `type_of_appeals` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `dealer`
--

CREATE TABLE `dealer` (
  `name_of_dealer` varchar(45) NOT NULL,
  `address_of_dealer` varchar(45) DEFAULT NULL,
  `type_of_services_from_dealer` varchar(45) DEFAULT NULL,
  `payment_to_the_dealer` int(11) DEFAULT NULL,
  `date_of_contract_with_dealer` date DEFAULT NULL,
  `number_of_dealer` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `delivery`
--

CREATE TABLE `delivery` (
  `name_of_courier` varchar(45) NOT NULL,
  `surname_of_courier` varchar(45) DEFAULT NULL,
  `name_of_product` varchar(45) DEFAULT NULL,
  `price_with_delivery` int(11) DEFAULT NULL,
  `from_Stock_address_of_stock` varchar(100) NOT NULL,
  `to_Client_address_of_client` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `departure`
--

CREATE TABLE `departure` (
  `type_of_service` varchar(45) NOT NULL,
  `price_of_service` varchar(45) DEFAULT NULL,
  `result` varchar(45) DEFAULT NULL,
  `status_of_departure` varchar(45) DEFAULT NULL,
  `To_Client_address_of_client` varchar(45) NOT NULL,
  `responsible` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `installation_and_deployment`
--

CREATE TABLE `installation_and_deployment` (
  `date_of_installation` date NOT NULL,
  `type_of_installation` varchar(250) DEFAULT NULL,
  `status_of_installation` varchar(45) DEFAULT NULL,
  `duration_time` float DEFAULT NULL,
  `result` varchar(45) DEFAULT NULL,
  `Users_login_responsible_of_installation` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `order_in_the_hall`
--

CREATE TABLE `order_in_the_hall` (
  `date_of_order` date NOT NULL,
  `price_for_technique` int(11) DEFAULT NULL,
  `quantity_of_technique` int(11) DEFAULT NULL,
  `Client_name_of_client` varchar(40) NOT NULL,
  `Technique_type_of_technique` varchar(45) NOT NULL,
  `Users_loginresponsible_for_order` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `purchase`
--

CREATE TABLE `purchase` (
  `name_of_product` varchar(50) NOT NULL,
  `quantity_of_product` int(11) DEFAULT NULL,
  `description_of_product` varchar(150) DEFAULT NULL,
  `factory_number` int(11) DEFAULT NULL,
  `serial_number` int(11) DEFAULT NULL,
  `purchase_amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `report_for_tax`
--

CREATE TABLE `report_for_tax` (
  `date_of_formation_report` date NOT NULL,
  `date_of_sendig_report` date DEFAULT NULL,
  `signature` varchar(45) DEFAULT NULL,
  `to_tax` varchar(45) DEFAULT NULL,
  `from_company` varchar(45) DEFAULT NULL,
  `content_of_report` varchar(255) DEFAULT NULL,
  `type_of_delivery_report` varchar(45) DEFAULT NULL,
  `Users_login_responsible_for_the_report` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `service_department`
--

CREATE TABLE `service_department` (
  `address_of_service_department` varchar(45) NOT NULL,
  `quantity_stuff_in_service_department` int(11) DEFAULT NULL,
  `number_phone_of_service_department` int(11) DEFAULT NULL,
  `post_code_of_service_department` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `stock`
--

CREATE TABLE `stock` (
  `address_of_stock` varchar(100) NOT NULL,
  `quantity_of_stuff` int(11) DEFAULT NULL,
  `type_of_stock` varchar(45) DEFAULT NULL,
  `number_phone_of_stock` int(11) DEFAULT NULL,
  `Users_login_responsible_of_stock` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `technique`
--

CREATE TABLE `technique` (
  `name_of_technique` varchar(45) NOT NULL,
  `type_of_technique` varchar(45) DEFAULT NULL,
  `serial_number` int(11) DEFAULT NULL,
  `factory_number` int(11) DEFAULT NULL,
  `quantity_of_technique` int(11) DEFAULT NULL,
  `Users_login_responsible_for_the_technique` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `login` varchar(40) NOT NULL,
  `password` varchar(24) DEFAULT NULL,
  `authentication` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `accessory`
--
ALTER TABLE `accessory`
  ADD PRIMARY KEY (`name_of_accessory`);

--
-- Индексы таблицы `backup`
--
ALTER TABLE `backup`
  ADD PRIMARY KEY (`date_of_backup`);

--
-- Индексы таблицы `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`name_of_client`);

--
-- Индексы таблицы `dealer`
--
ALTER TABLE `dealer`
  ADD PRIMARY KEY (`name_of_dealer`);

--
-- Индексы таблицы `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`name_of_courier`);

--
-- Индексы таблицы `departure`
--
ALTER TABLE `departure`
  ADD PRIMARY KEY (`type_of_service`);

--
-- Индексы таблицы `installation_and_deployment`
--
ALTER TABLE `installation_and_deployment`
  ADD PRIMARY KEY (`date_of_installation`);

--
-- Индексы таблицы `order_in_the_hall`
--
ALTER TABLE `order_in_the_hall`
  ADD PRIMARY KEY (`date_of_order`);

--
-- Индексы таблицы `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`name_of_product`);

--
-- Индексы таблицы `report_for_tax`
--
ALTER TABLE `report_for_tax`
  ADD PRIMARY KEY (`date_of_formation_report`);

--
-- Индексы таблицы `service_department`
--
ALTER TABLE `service_department`
  ADD PRIMARY KEY (`address_of_service_department`);

--
-- Индексы таблицы `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`address_of_stock`);

--
-- Индексы таблицы `technique`
--
ALTER TABLE `technique`
  ADD PRIMARY KEY (`name_of_technique`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`login`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
