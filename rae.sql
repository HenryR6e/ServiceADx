-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2017 at 04:03 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rae`
--

-- --------------------------------------------------------

--
-- Table structure for table `cliub_services`
--

CREATE TABLE IF NOT EXISTS `cliub_services` (
  `ID` int(11) NOT NULL,
  `SERVICE DETAILS` varchar(45) DEFAULT NULL,
  `CLUB_LOCATION_ID` int(11) NOT NULL,
  `CLUB_DEATAILS_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_CLIUB_SERVICES_CLUB_LOCATION_idx` (`CLUB_LOCATION_ID`),
  KEY `fk_CLIUB_SERVICES_CLUB_DEATAILS1_idx` (`CLUB_DEATAILS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `club_deatails`
--

CREATE TABLE IF NOT EXISTS `club_deatails` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `club_location`
--

CREATE TABLE IF NOT EXISTS `club_location` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DISTRICT` varchar(45) NOT NULL,
  `EXACT_LOCATION` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hotel_details`
--

CREATE TABLE IF NOT EXISTS `hotel_details` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `hotel_details`
--

INSERT INTO `hotel_details` (`ID`, `NAME`) VALUES
(1, 'Lake view'),
(2, 'Rwekishokye'),
(3, 'Igongo'),
(4, 'Hotel serene');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DISTRICT` varchar(45) NOT NULL,
  `EXACT_LOCATION` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`ID`, `DISTRICT`, `EXACT_LOCATION`) VALUES
(1, 'Mbarara', 'Ruharo'),
(2, 'Rwekishokye', 'Ruti'),
(3, 'Igongo', 'Biharwe'),
(4, 'Hotel serene', 'Kakoba');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `ID` int(11) NOT NULL,
  `SERVICE_DETAILS` varchar(45) DEFAULT NULL,
  `LOCATION_ID` int(11) NOT NULL,
  `Hotel_details_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_SERVICES_LOCATION1_idx` (`LOCATION_ID`),
  KEY `fk_SERVICES_Hotel_details1_idx` (`Hotel_details_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`ID`, `SERVICE_DETAILS`, `LOCATION_ID`, `Hotel_details_ID`) VALUES
(0, 'Buffet, sauna,accomodation', 1, 1),
(2, 'Buffet, sauna,accomodation,swimming,gym', 2, 2),
(3, ' sauna,accomodation,swimming,gym', 3, 3),
(4, ' sauna,accomodation,swimming,gym', 4, 4);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cliub_services`
--
ALTER TABLE `cliub_services`
  ADD CONSTRAINT `fk_CLIUB_SERVICES_CLUB_DEATAILS1` FOREIGN KEY (`CLUB_DEATAILS_ID`) REFERENCES `club_deatails` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_CLIUB_SERVICES_CLUB_LOCATION` FOREIGN KEY (`CLUB_LOCATION_ID`) REFERENCES `club_location` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `fk_SERVICES_Hotel_details1` FOREIGN KEY (`Hotel_details_ID`) REFERENCES `hotel_details` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_SERVICES_LOCATION1` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
