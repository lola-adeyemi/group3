-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2020 at 01:08 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gymdata`
--
CREATE DATABASE IF NOT EXISTS `gymdata` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gymdata`;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `CLASSID` int(11) NOT NULL,
  `GYMID` int(11) NOT NULL,
  `CLASSTYPE` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `DURATION` int(11) NOT NULL,
  `TIME` varchar(50) NOT NULL,
  `FITNESSLEVEL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`CLASSID`, `GYMID`, `CLASSTYPE`, `NAME`, `DURATION`, `TIME`, `FITNESSLEVEL`) VALUES
(1, 1, 'Cardio', 'Cycle', 50, '09:00, 12:00, 18:00', 1),
(2, 2, 'Cardio', 'Cycle', 50, '09:00, 12:00, 18:00', 1),
(3, 3, 'Cardio', 'Cycle', 50, '09:00, 12:00, 18:00', 1),
(4, 4, 'Cardio', 'Burn it', 50, '08:00, 11:00, 17:00, 20:00', 2),
(5, 5, 'Cardio', 'Burn it', 50, '08:00, 11:00, 17:00, 20:00', 2),
(6, 6, 'Cardio', 'Burn it', 50, '08:00, 11:00, 17:00, 20:00', 2),
(7, 7, 'Weights', 'Abs', 20, '07:00, 12:00, 18:00', 2),
(8, 8, 'Weights', 'Abs', 20, '07:00, 12:00, 18:00', 2),
(9, 9, 'Weights', 'Abs', 20, '07:00, 12:00, 18:00', 2),
(10, 10, 'Weights', 'Legs, bums and tums', 50, '09:00, 14:00, 19:00', 3),
(11, 1, 'Weights', 'Legs, bums and tums', 50, '09:00, 14:00, 19:00', 3),
(12, 2, 'Weights', 'Legs, bums and tums', 50, '09:00, 14:00, 19:00', 3),
(13, 3, 'Wellbeing', 'Yoga', 30, '09:00, 11:00, 14:00, 18:00', 1),
(14, 4, 'Wellbeing', 'Yoga', 30, '09:00, 11:00, 14:00, 18:00', 1),
(15, 5, 'Wellbeing', 'Yoga', 30, '09:00, 11:00, 14:00, 18:00', 1),
(16, 6, 'Wellbeing', 'Pilates', 60, '17:00, 21:00', 1),
(17, 7, 'Mix', 'Sweat', 60, '09:00, 12:00, 14:00', 2),
(18, 8, 'Mix', 'Strength and Tony', 60, '14:00, 18:00, 20:00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `DISCOUNTID` int(11) NOT NULL,
  `GYMID` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `PERCENTAGE` int(11) NOT NULL,
  `EXPIRATION` decimal(3,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`DISCOUNTID`, `GYMID`, `NAME`, `PERCENTAGE`, `EXPIRATION`) VALUES
(1, 1, 'Student Discount', 30, '0.999'),
(2, 2, 'Student Discount', 30, '0.999'),
(3, 3, 'Student Discount', 30, '0.999'),
(4, 2, 'Advance Payment', 10, '0.999'),
(5, 4, 'Advance Payment', 10, '0.999'),
(6, 5, 'Advance Payment', 10, '0.999'),
(7, 6, 'Advance Payment', 10, '0.999'),
(8, 7, 'Advance Payment', 10, '0.999'),
(9, 8, 'March joining discount', 20, '0.999'),
(10, 9, 'March joining discount', 20, '0.999'),
(11, 10, 'March joining discount', 20, '0.999'),
(12, 1, 'Free trial', 100, '0.100'),
(13, 2, 'Free trial', 100, '0.100'),
(14, 3, 'Free trial', 100, '0.100'),
(15, 4, 'Free trial', 100, '0.100'),
(16, 5, 'Free trial', 100, '0.100'),
(17, 6, 'Free trial', 100, '0.100'),
(18, 7, 'Free trial', 100, '0.100'),
(19, 8, 'Free trial', 100, '0.100'),
(20, 9, 'Free trial', 100, '0.100'),
(21, 10, 'Free trial', 100, '0.100');

-- --------------------------------------------------------

--
-- Table structure for table `drinksandfood`
--

CREATE TABLE `drinksandfood` (
  `DRINKSANDFOODID` int(11) NOT NULL,
  `FACILITYID` int(11) NOT NULL,
  `VENDINGMACHINESNACKS` tinyint(1) NOT NULL,
  `VENDINGMACHINEDRINKS` tinyint(1) NOT NULL,
  `ONSITECAFE` tinyint(1) NOT NULL,
  `ONSITECLOTHING` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drinksandfood`
--

INSERT INTO `drinksandfood` (`DRINKSANDFOODID`, `FACILITYID`, `VENDINGMACHINESNACKS`, `VENDINGMACHINEDRINKS`, `ONSITECAFE`, `ONSITECLOTHING`) VALUES
(2, 1, 1, 1, 0, 0),
(3, 2, 1, 1, 1, 1),
(4, 3, 1, 1, 0, 0),
(5, 4, 1, 1, 1, 1),
(6, 5, 0, 0, 0, 0),
(7, 6, 1, 1, 0, 0),
(8, 7, 1, 1, 1, 1),
(9, 8, 0, 0, 0, 0),
(10, 9, 1, 1, 1, 1),
(11, 10, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `facility`
--

CREATE TABLE `facility` (
  `FACILITYID` int(11) NOT NULL,
  `GYMID` int(11) NOT NULL,
  `WEIGHTROOM` tinyint(1) NOT NULL,
  `CARDIOROOM` tinyint(1) NOT NULL,
  `SWIMMINGPOOL` tinyint(1) NOT NULL,
  `SAUNA` tinyint(1) NOT NULL,
  `STEAMROOM` tinyint(1) NOT NULL,
  `ONSITECRECHE` tinyint(1) NOT NULL,
  `DRINKSANDFO0OD` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facility`
--

INSERT INTO `facility` (`FACILITYID`, `GYMID`, `WEIGHTROOM`, `CARDIOROOM`, `SWIMMINGPOOL`, `SAUNA`, `STEAMROOM`, `ONSITECRECHE`, `DRINKSANDFO0OD`) VALUES
(1, 1, 1, 1, 1, 0, 0, 0, 0),
(2, 2, 1, 1, 1, 1, 1, 1, 1),
(3, 3, 1, 1, 0, 1, 0, 0, 0),
(4, 4, 1, 1, 1, 1, 1, 0, 0),
(5, 5, 1, 1, 0, 0, 1, 0, 0),
(6, 6, 1, 1, 0, 1, 1, 0, 0),
(7, 7, 1, 1, 1, 0, 0, 0, 0),
(8, 8, 1, 1, 0, 1, 0, 0, 0),
(9, 9, 1, 1, 1, 0, 0, 0, 0),
(10, 10, 1, 1, 0, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gym`
--

CREATE TABLE `gym` (
  `GYMID` int(11) NOT NULL,
  `GYMNAME` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `PostCode` varchar(50) NOT NULL,
  `Address` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gym`
--

INSERT INTO `gym` (`GYMID`, `GYMNAME`, `City`, `PostCode`, `Address`) VALUES
(1, 'Pauls', 'Oxford', 'OX1 1PT', 'LittleGate House, 16-17 St Ebbes St, Oxford'),
(2, 'Best', 'London Piccadilly', 'SW14 4PE', '4-12, Rex House Regent Street London'),
(3, 'Strong', 'Leeds', 'LS1 2HD', '4 Cloth Hall, Leeds'),
(4, 'Climb', 'Manchester', 'M1 1PD', '90-100 Market St, Manchester'),
(5, 'Top', 'Liverpool', 'L1 1QE', 'Lewis\'s, 40 Ranelagh St, Liverpool'),
(6, 'All together', 'Edinburgh', 'EH3 8RA', '1-7 W Approach Rd, Conference Square, Edinburgh'),
(7, 'Best', 'Cambridge', 'CB1 1PS', '2nd Floor, Grafton Centre, Cambridge'),
(8, 'Yip', 'Plymouth', 'PL4 7EF', 'Endeavour House, Alexandra Rd, Mutley, Plymouth'),
(9, 'Exo', 'York', 'YO30 4TU', 'Stirling Rd, York'),
(10, 'Step', 'Newcastle', 'NE1 7RA', 'Eldon Garden Shopping Centre, Percy St, Newcastle upon Tyne');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `SUBSCRIPTIONID` int(11) NOT NULL,
  `GYMID` int(11) NOT NULL,
  `SUBSCRIPTIONTYPE` varchar(50) NOT NULL,
  `Access` varchar(50) NOT NULL,
  `MultiGym` varchar(50) NOT NULL,
  `AccessToClass` varchar(50) NOT NULL,
  `PriceMonth` decimal(4,4) NOT NULL,
  `PriceYear` decimal(4,4) NOT NULL,
  `SubscriptionLength` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`SUBSCRIPTIONID`, `GYMID`, `SUBSCRIPTIONTYPE`, `Access`, `MultiGym`, `AccessToClass`, `PriceMonth`, `PriceYear`, `SubscriptionLength`) VALUES
(1, 1, 'Off Peak', 'Off Peak hours Only', 'No', '8 classes a week', '0.9999', '0.9999', '6 months, 1 year, 3 years'),
(2, 2, 'Off Peak', 'Off Peak hours Only', 'No', '8 classes a week', '0.9999', '0.9999', '6 months, 1 year, 3 years'),
(3, 3, 'Off Peak', 'Off Peak hours Only', 'No', '8 classes a week', '0.9999', '0.9999', '6 months, 1 year, 3 years'),
(4, 4, 'Core', 'Unlimited Access', 'Yes, for added fee of £2', '8 classes a week', '0.9999', '0.9999', '6 months, 1 year'),
(5, 5, 'Core', 'Unlimited Access', 'Yes, for added fee of £2', '8 classes a week', '0.9999', '0.9999', '6 months, 1 year'),
(6, 6, 'Core', 'Unlimited Access', 'Yes, for added fee of £2', '8 classes a week', '0.9999', '0.9999', '6 months, 1 year'),
(7, 7, 'Plus', 'Unlimited Access', 'Yes', '12 classes a week', '0.9999', '0.9999', '6 months, 1 year'),
(8, 8, 'Plus', 'Unlimited Access', 'Yes', '12 classes a week', '0.9999', '0.9999', '6 months, 1 year'),
(9, 9, 'Plus', 'Unlimited Access', 'Yes', '12 classes a week', '0.9999', '0.9999', '6 months, 1 year'),
(10, 10, 'Plus', 'Unlimited Access', 'Yes', '12 classes a week', '0.9999', '0.9999', '6 months, 1 year');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `GYMID` int(11) NOT NULL,
  `FORENAME` varchar(50) DEFAULT NULL,
  `SURNAME` varchar(50) NOT NULL,
  `AGE` int(11) NOT NULL,
  `EMAILID` varchar(50) NOT NULL,
  `MOBILE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`GYMID`, `FORENAME`, `SURNAME`, `AGE`, `EMAILID`, `MOBILE`) VALUES
(5, 'Billie', 'Eilish', 20, 'billeilish@hmrc.gov.uk', 7888),
(2, 'Edward ', 'Sheeran', 31, 'esheeran@hotmail.com', 7849),
(5, 'Hannah', 'Montana', 18, 'hannahbanana@aol.com', 7783),
(2, 'Emma', 'Watson', 28, 'hermoineg@hmrc.gov.uk', 7892),
(4, 'James', 'Blunt', 21, 'jblunt@hotmail.co.uk', 7903),
(5, 'Joe', 'Jonas', 26, 'jj_101@yahoo.com', 7029),
(2, 'Khloe', 'Kardashian', 35, 'kkardashian@yahoo.com', 7890),
(3, 'Kanye', 'West', 40, 'lyricalgenius@aol.com', 7113),
(5, 'Morgan', 'Freeman', 58, 'mfreeman@yahoo.co.uk', 7363),
(2, 'Beyonce', 'Knowles', 38, 'queenb@gmail.com', 7563);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`CLASSID`),
  ADD KEY `GYMID` (`GYMID`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`DISCOUNTID`),
  ADD KEY `GYMID` (`GYMID`);

--
-- Indexes for table `drinksandfood`
--
ALTER TABLE `drinksandfood`
  ADD PRIMARY KEY (`DRINKSANDFOODID`),
  ADD KEY `FACILITYID` (`FACILITYID`);

--
-- Indexes for table `facility`
--
ALTER TABLE `facility`
  ADD PRIMARY KEY (`FACILITYID`),
  ADD KEY `GYMID` (`GYMID`);

--
-- Indexes for table `gym`
--
ALTER TABLE `gym`
  ADD PRIMARY KEY (`GYMID`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`SUBSCRIPTIONID`),
  ADD KEY `GYMID` (`GYMID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`EMAILID`),
  ADD KEY `GYMID` (`GYMID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `CLASSID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `DISCOUNTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `drinksandfood`
--
ALTER TABLE `drinksandfood`
  MODIFY `DRINKSANDFOODID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `facility`
--
ALTER TABLE `facility`
  MODIFY `FACILITYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `gym`
--
ALTER TABLE `gym`
  MODIFY `GYMID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `SUBSCRIPTIONID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`GYMID`) REFERENCES `gym` (`GYMID`);

--
-- Constraints for table `discount`
--
ALTER TABLE `discount`
  ADD CONSTRAINT `discount_ibfk_1` FOREIGN KEY (`GYMID`) REFERENCES `gym` (`GYMID`);

--
-- Constraints for table `drinksandfood`
--
ALTER TABLE `drinksandfood`
  ADD CONSTRAINT `drinksandfood_ibfk_1` FOREIGN KEY (`FACILITYID`) REFERENCES `facility` (`FACILITYID`);

--
-- Constraints for table `facility`
--
ALTER TABLE `facility`
  ADD CONSTRAINT `facility_ibfk_1` FOREIGN KEY (`GYMID`) REFERENCES `gym` (`GYMID`);

--
-- Constraints for table `subscription`
--
ALTER TABLE `subscription`
  ADD CONSTRAINT `subscription_ibfk_1` FOREIGN KEY (`GYMID`) REFERENCES `gym` (`GYMID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`GYMID`) REFERENCES `gym` (`GYMID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

# Privileges for `admin`@`%`

GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' IDENTIFIED BY PASSWORD '*81E3A24C52D0D753C426BFB4C8F0CEA5C48ABC7D' WITH GRANT OPTION;

GRANT ALL PRIVILEGES ON `gymdata`.* TO 'admin'@'%';


# Privileges for `web`@`%`

GRANT SELECT ON *.* TO 'web'@'%' IDENTIFIED BY PASSWORD '*8D7E48E92DB5DDA859BD73947C0DA63CD955E575';

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `searchGyms`(IN `CityIN` VARCHAR(50))
    NO SQL
BEGIN
select * from gym where City = CityIN;
END$$
DELIMITER ;
