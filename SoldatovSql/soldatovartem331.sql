-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 17, 2023 at 07:24 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soldatovartem331`
--

-- --------------------------------------------------------

--
-- Table structure for table `list_of_owners`
--

CREATE TABLE `list_of_owners` (
  `ID_List_Of_Owners` int(5) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Surname` varchar(100) NOT NULL,
  `Middlename` varchar(100) NOT NULL,
  `Phone_Number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `list_of_owners`
--

INSERT INTO `list_of_owners` (`ID_List_Of_Owners`, `Name`, `Surname`, `Middlename`, `Phone_Number`) VALUES
(1, 'Иван', 'Иванов', 'Иванович', '1234567890'),
(2, 'Петр', 'Петров', 'Петрович', '2345678901'),
(3, 'Сергей', 'Сергеев', 'Сергеевич', '3456789012'),
(4, 'Андрей', 'Андреев', 'Андреевич', '4567890123'),
(5, 'Дмитрий', 'Дмитриев', 'Дмитриевич', '5678901234'),
(6, 'Николай', 'Николаев', 'Николаевич', '6789012345'),
(7, 'Александр', 'Александров', 'Александрович', '7890123456'),
(8, 'Михаил', 'Михайлов', 'Михайлович', '8901234567'),
(9, 'Евгений', 'Евгеньев', 'Евгеньевич', '9012345678'),
(10, 'Владимир', 'Владимиров', 'Владимирович', '0123456789'),
(11, 'Олег', 'Олегов', 'Олегович', '1111111111'),
(12, 'Артем', 'Артемов', 'Артемович', '2222222222'),
(13, 'Игорь', 'Игорев', 'Игоревич', '3333333333'),
(14, 'Константин', 'Константинов', 'Константинович', '4444444444'),
(15, 'Геннадий', 'Геннадьев', 'Геннадьевич', '5555555555');

-- --------------------------------------------------------

--
-- Table structure for table `management_staff`
--

CREATE TABLE `management_staff` (
  `ID_Management_Staff` int(5) NOT NULL,
  `Post` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Surname` varchar(100) NOT NULL,
  `Middlename` varchar(100) NOT NULL,
  `Phone_Number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `management_staff`
--

INSERT INTO `management_staff` (`ID_Management_Staff`, `Post`, `Name`, `Surname`, `Middlename`, `Phone_Number`) VALUES
(1, 'Управляющий', 'Иван', 'Иванов', 'Иванович', '89001234567'),
(2, 'Бухгалтер', 'Елена', 'Петрова', 'Александровна', '89002345678'),
(3, 'Садовник', 'Алексей', 'Сидоров', 'Петрович', '89003456789'),
(4, 'Охранник', 'Дмитрий', 'Кузнецов', 'Игоревич', '89004567890'),
(5, 'Управляющий', 'Андрей', 'Смирнов', 'Владимирович', '89005678901'),
(6, 'Бухгалтер', 'Ольга', 'Иванова', 'Александровна', '89006789012'),
(7, 'Садовник', 'Игорь', 'Петров', 'Сергеевич', '89007890123'),
(8, 'Охранник', 'Александр', 'Сидоров', 'Александрович', '89008901234'),
(9, 'Управляющий', 'Сергей', 'Кузнецов', 'Дмитриевич', '89009012345'),
(10, 'Бухгалтер', 'Татьяна', 'Смирнова', 'Владимировна', '89010123456'),
(11, 'Садовник', 'Михаил', 'Иванов', 'Александрович', '89011234567'),
(12, 'Охранник', 'Николай', 'Петров', 'Сергеевич', '89012345678'),
(13, 'Управляющий', 'Евгений', 'Сидоров', 'Александрович', '89023456789'),
(14, 'Бухгалтер', 'Анна', 'Кузнецова', 'Дмитриевна', '89034567890'),
(15, 'Садовник', 'Владимир', 'Смирнов', 'Владимирович', '89045678901');

-- --------------------------------------------------------

--
-- Table structure for table `payment_registration_log`
--

CREATE TABLE `payment_registration_log` (
  `ID_Payment_Registration_Log` int(5) NOT NULL,
  `ID_Management_Staff` int(5) NOT NULL,
  `ID_List_Of_Owners` int(5) NOT NULL,
  `ID_Types_Of_Services` int(5) NOT NULL,
  `Date` date NOT NULL,
  `Time` time(6) NOT NULL,
  `The_Amount` int(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Surname` varchar(100) NOT NULL,
  `Middlename` varchar(100) NOT NULL,
  `Phone_Number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_registration_log`
--

INSERT INTO `payment_registration_log` (`ID_Payment_Registration_Log`, `ID_Management_Staff`, `ID_List_Of_Owners`, `ID_Types_Of_Services`, `Date`, `Time`, `The_Amount`, `Name`, `Surname`, `Middlename`, `Phone_Number`) VALUES
(1, 1, 1, 1, '2021-01-01', '10:00:00.000000', 500, 'Иван', 'Иванов', 'Иванович', '1234567890'),
(2, 2, 2, 2, '2021-01-01', '10:00:00.000000', 500, 'Иван', 'Иванов', 'Иванович', '1234567890'),
(3, 3, 3, 3, '2021-07-03', '12:00:00.000000', 1500, 'Сергей', 'Сергеев', 'Сергеевич', '3456789012'),
(4, 4, 4, 4, '2021-07-04', '13:00:00.000000', 2000, 'Андрей', 'Андреев', 'Андреевич', '4567890123'),
(5, 5, 5, 5, '2021-07-05', '14:00:00.000000', 2500, 'Дмитрий', 'Дмитриев', 'Дмитриевич', '5678901234'),
(6, 6, 6, 6, '2021-07-06', '15:00:00.000000', 3000, 'Евгений', 'Евгеньев', 'Евгеньевич', '6789012345'),
(7, 7, 7, 7, '2021-07-07', '16:00:00.000000', 3500, 'Александр', 'Александров', 'Александрович', '7890123456'),
(8, 8, 8, 8, '2021-07-08', '17:00:00.000000', 4000, 'Михаил', 'Михайлов', 'Михайлович', '8901234567'),
(9, 9, 9, 9, '2021-07-09', '18:00:00.000000', 4500, 'Николай', 'Николаев', 'Николаевич', '9012345678'),
(10, 10, 10, 10, '2021-07-10', '19:00:00.000000', 5000, 'Олег', 'Олегов', 'Олегович', '0123456789'),
(11, 11, 11, 11, '2021-07-11', '20:00:00.000000', 5500, 'Павел', 'Павлов', 'Павлович', '1234567890'),
(12, 12, 12, 12, '2021-07-12', '21:00:00.000000', 6000, 'Роман', 'Романов', 'Романович', '2345678901'),
(13, 13, 13, 13, '2021-07-13', '22:00:00.000000', 6500, 'Семен', 'Семенов', 'Семенович', '3456789012'),
(14, 14, 14, 14, '2021-07-14', '23:00:00.000000', 7000, 'Тимур', 'Тимуров', 'Тимурович', '4567890123'),
(15, 15, 15, 15, '2021-07-15', '00:00:00.000000', 7500, 'Федор', 'Федоров', 'Федорович', '5678901234');

-- --------------------------------------------------------

--
-- Table structure for table `types_of_services`
--

CREATE TABLE `types_of_services` (
  `ID_Types_Of_Services` int(5) NOT NULL,
  `Service` varchar(100) NOT NULL,
  `Adress` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Price` int(100) NOT NULL,
  `Phone_Number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `types_of_services`
--

INSERT INTO `types_of_services` (`ID_Types_Of_Services`, `Service`, `Adress`, `Name`, `Price`, `Phone_Number`) VALUES
(1, 'Уборка территории', 'ул. Лесная, 16', 'Дачный сервис', 1500, '8 (800) 555-35-35'),
(2, 'Косметический ремонт дома', 'ул. Новая, 10', 'Строймастер', 8000, '8 (812) 555-12-34'),
(3, 'Обработка растений от вредителей', 'ул. Цветочная, 5', 'Агроцентр', 2500, '8 (800) 123-45-67'),
(4, 'Покос травы', 'пр. Солнечный, 1', 'Дачный мастер', 1000, '8 (921) 123-45-67'),
(5, 'Установка охранной сигнализации', 'ул. Парковая, 7', 'Охрана Дач', 6000, '8 (800) 555-55-55'),
(6, 'Постройка беседки', 'ул. Лесная, 11', 'Столярмонтаж', 12000, '8 (812) 555-67-89'),
(7, 'Установка водопровода', 'ул. Ручеек, 2', 'Водопроводный Сервис', 8500, '8 (921) 555-12-34'),
(8, 'Ремонт кровли', 'ул. Надежда, 3', 'Кровельный цех', 5000, '8 (800) 321-23-45'),
(9, 'Уход за газоном', 'ул. Цветочная, 14', 'Дачный уход', 2000, '8 (812) 555-43-21'),
(10, 'Установка ворот', 'пр. Солнечный, 12', 'Роллет-мастер', 15000, '8 (921) 555-23-45'),
(11, 'Оказание фасадных работ', 'пр. Мира, 5', 'Фасад-мастер', 9000, '8 (800) 444-56-78'),
(12, 'Установка душа', 'ул. Морская, 18', 'Сантехник сервис', 7500, '8 (800) 555-88-88'),
(13, 'Окраска забора', 'ул. Полевая, 9', 'Дачный наряд', 4000, '8 (800) 222-34-56'),
(14, 'Строительство бань', 'ул. Речная, 4', 'Банно-мастер', 25000, '8 (800) 777-56-78'),
(15, 'Доставка стройматериалов', 'ул. Строительная, 1', 'Стройтранс', 3000, '8 (812) 555-21-43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `login` varchar(100) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `pass`, `name`, `surname`) VALUES
(1, 'admin', '123', '', ''),
(2, 'Егор', '123', 'Егор', 'Близоруков'),
(3, 'ban', '123', 'Арнольд', 'Шварцкопчик'),
(4, '1', '123', '123', '123'),
(5, 'Redit', '123', 'Егор', 'Близоруков'),
(6, 'Малыш', '123', 'Егор', 'Бан'),
(7, '3', '4', '1', '2'),
(8, 'q', 'w', 'qwe', 'ewq'),
(9, 'e', 'r', 'qwe', 'qwe'),
(10, 'w', 'e', 'werw', 'wer'),
(11, 'c', 'v', 'нгшуц', 'цуе'),
(12, '123', '123', '123', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `list_of_owners`
--
ALTER TABLE `list_of_owners`
  ADD PRIMARY KEY (`ID_List_Of_Owners`);

--
-- Indexes for table `management_staff`
--
ALTER TABLE `management_staff`
  ADD PRIMARY KEY (`ID_Management_Staff`);

--
-- Indexes for table `payment_registration_log`
--
ALTER TABLE `payment_registration_log`
  ADD PRIMARY KEY (`ID_Payment_Registration_Log`),
  ADD KEY `ID_Management_Staff` (`ID_Management_Staff`),
  ADD KEY `ID_List_Of_Owners` (`ID_List_Of_Owners`),
  ADD KEY `ID_Types_Of_Services` (`ID_Types_Of_Services`) USING BTREE;

--
-- Indexes for table `types_of_services`
--
ALTER TABLE `types_of_services`
  ADD PRIMARY KEY (`ID_Types_Of_Services`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `list_of_owners`
--
ALTER TABLE `list_of_owners`
  MODIFY `ID_List_Of_Owners` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `management_staff`
--
ALTER TABLE `management_staff`
  MODIFY `ID_Management_Staff` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `payment_registration_log`
--
ALTER TABLE `payment_registration_log`
  MODIFY `ID_Payment_Registration_Log` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `types_of_services`
--
ALTER TABLE `types_of_services`
  MODIFY `ID_Types_Of_Services` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `payment_registration_log`
--
ALTER TABLE `payment_registration_log`
  ADD CONSTRAINT `payment_registration_log_ibfk_1` FOREIGN KEY (`ID_Management_Staff`) REFERENCES `management_staff` (`ID_Management_Staff`),
  ADD CONSTRAINT `payment_registration_log_ibfk_2` FOREIGN KEY (`ID_List_Of_Owners`) REFERENCES `list_of_owners` (`ID_List_Of_Owners`),
  ADD CONSTRAINT `payment_registration_log_ibfk_3` FOREIGN KEY (`ID_Types_Of_Services`) REFERENCES `types_of_services` (`ID_Types_Of_Services`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
