-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 05, 2019 at 10:30 AM
-- Server version: 5.6.34-log
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `BookId` int(10) NOT NULL,
  `Author` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`BookId`, `Author`) VALUES
(3, 'Jay Prakash'),
(4, 'Jay Prakash'),
(5, 'x'),
(6, 'a1'),
(7, 'Bogart'),
(7, 'Kenneth'),
(8, 'Auer'),
(8, 'Davil J.'),
(9, 'Rob'),
(9, 'Williams'),
(10, 'Deiteil'),
(11, 'Sharma'),
(12, 'Barney Stinson'),
(13, 'Puri'),
(14, 'Manna'),
(15, 'Jindal U.C'),
(16, 'Prasad'),
(17, 'Aravind Alex'),
(17, 'Haldar Sibsankar'),
(18, 'Sandhu'),
(18, 'Singh');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `BookId` int(10) NOT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Publisher` varchar(50) DEFAULT NULL,
  `Year` varchar(50) DEFAULT NULL,
  `Availability` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`BookId`, `Title`, `Publisher`, `Year`, `Availability`) VALUES
(1, 'OS', 'PEARSON', '2006', 10),
(2, 'DBMS', 'TARGET67', '2010', 10),
(3, 'TOC', 'NITC', '2018', 4),
(4, 'TOC', 'NITC', '2018', 1),
(5, 'DAA', 'y', '2014', 18),
(6, 'DSA', 'X', '2010', 10),
(7, 'Discrete Structures', 'Pearson', '2010', 10),
(8, 'Database Processing', 'Prentice Hall', '2013', 12),
(9, 'Computer System Architecture', 'Prentice Hall', '2015', 4),
(10, 'C: How to program', 'Prentice Hall', '2009', 3),
(11, 'Atomic and Nuclear Systems', 'Pearson India ', '2017', 13),
(12, 'The PlayBook', 'Stinson', '2010', 12),
(13, 'General Theory of Relativity', 'Pearson India ', '2012', 5),
(14, 'Heat and Thermodynamics', 'Pearson', '2013', 9),
(15, 'Machine Design', 'Pearson India ', '2012', 5),
(16, 'Nuclear Physics', 'Pearson India ', '1998', 7),
(17, 'Operating System', 'Pearson India ', '1990', 7),
(18, 'Theory of Machines', 'Pearson', '1992', 12);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `M_Id` int(10) NOT NULL,
  `RollNo` varchar(50) DEFAULT NULL,
  `Msg` varchar(255) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recommendations`
--

CREATE TABLE `recommendations` (
  `R_ID` int(10) NOT NULL,
  `Book_Name` varchar(50) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `RollNo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `RollNo` varchar(50) NOT NULL,
  `BookId` int(10) NOT NULL,
  `Date_of_Issue` date DEFAULT NULL,
  `Due_Date` date DEFAULT NULL,
  `Date_of_Return` date DEFAULT NULL,
  `Dues` int(10) DEFAULT NULL,
  `Renewals_left` int(10) DEFAULT NULL,
  `Time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `renew`
--

CREATE TABLE `renew` (
  `RollNo` varchar(50) NOT NULL,
  `BookId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `return`
--

CREATE TABLE `return` (
  `RollNo` varchar(50) NOT NULL,
  `BookId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `RollNo` varchar(50) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `EmailId` varchar(50) DEFAULT NULL,
  `MobNo` bigint(11) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`RollNo`, `Name`, `Type`, `Category`, `EmailId`, `MobNo`, `Password`) VALUES
('17114001', 'Aaryan Jain', 'Student', 'GEN', 'aaryanjain@gmail.com', 9898713243, '483332c5e4351028d11dff15be1f5234'),
('17114002', 'Abhijeet Shakya', 'Student', 'GEN', 'abhijeet@gmail.com', 9898713243, '57701f4c796f3f81a49bb5f5f0e957b6'),
('17114003', 'Abhik', 'Student', 'GEN', 'abhik@gmail.com', 9898313243, '97dce9d30b138fc66d43d2145b986f1b'),
('17114004', 'Anshuman', 'Student', 'GEN', 'anshuman@gmail.com', 9898713243, 'aabde52194f82228521f6f6ccb48fe67'),
('17114005', 'Aman', 'Student', 'GEN', 'aman@gmail.com', 9895513243, 'ccda1683d8c97f8f2dff2ea7d649b42c'),
('17114010', 'Aniket', 'Student', 'GEN', 'aniket@gmail.com', 9898710243, '9dbbae8b0159030ac238af0985c3ad65'),
('17114033', 'Siddharth Ghetia', 'Student', 'GEN', 'siddhughetia@gmail.com', 8347654412, 'b8c1a3069167247e3503f0daba6c5723'),
('17114066', 'Roodram Paneri', 'Student', 'GEN', 'roodram@gmail.com', 8873498349, '1a54c9f7d35aaeae5d92d1f56ea9767d'),
('ADMIN', 'admin', 'Admin', 'GEN', 'admin@iitr.ac.in', 123456789, '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`BookId`,`Author`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`BookId`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`M_Id`),
  ADD KEY `RollNo` (`RollNo`);

--
-- Indexes for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD PRIMARY KEY (`R_ID`),
  ADD KEY `RollNo` (`RollNo`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`RollNo`,`BookId`),
  ADD KEY `BookId` (`BookId`);

--
-- Indexes for table `renew`
--
ALTER TABLE `renew`
  ADD PRIMARY KEY (`RollNo`,`BookId`),
  ADD KEY `BookId` (`BookId`);

--
-- Indexes for table `return`
--
ALTER TABLE `return`
  ADD PRIMARY KEY (`RollNo`,`BookId`),
  ADD KEY `BookId` (`BookId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`RollNo`),
  ADD UNIQUE KEY `EmailId` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `BookId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `M_Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `recommendations`
--
ALTER TABLE `recommendations`
  MODIFY `R_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `author`
--
ALTER TABLE `author`
  ADD CONSTRAINT `author_ibfk_1` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`);

--
-- Constraints for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD CONSTRAINT `recommendations_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`);

--
-- Constraints for table `record`
--
ALTER TABLE `record`
  ADD CONSTRAINT `record_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`),
  ADD CONSTRAINT `record_ibfk_2` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`);

--
-- Constraints for table `renew`
--
ALTER TABLE `renew`
  ADD CONSTRAINT `renew_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`),
  ADD CONSTRAINT `renew_ibfk_2` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`);

--
-- Constraints for table `return`
--
ALTER TABLE `return`
  ADD CONSTRAINT `return_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`),
  ADD CONSTRAINT `return_ibfk_2` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
