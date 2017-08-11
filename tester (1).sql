-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2017 at 10:23 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tester`
--

-- --------------------------------------------------------

--
-- Table structure for table `benefits`
--

CREATE TABLE `benefits` (
  `MemberID` int(5) NOT NULL,
  `Shares` int(15) NOT NULL,
  `BenefitAmount` int(15) NOT NULL,
  `BenefitID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `benefits`
--

INSERT INTO `benefits` (`MemberID`, `Shares`, `BenefitAmount`, `BenefitID`) VALUES
(124, 10000, 15000, 456),
(90000111, 20000, 10000, 234);

-- --------------------------------------------------------

--
-- Table structure for table `contributions`
--

CREATE TABLE `contributions` (
  `FirstName` char(20) DEFAULT NULL,
  `LastName` char(20) DEFAULT NULL,
  `Amount` int(15) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `RecieptNumber` int(10) NOT NULL,
  `MemberID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contributions`
--

INSERT INTO `contributions` (`FirstName`, `LastName`, `Amount`, `Date`, `RecieptNumber`, `MemberID`) VALUES
('timothy', 'masiko', 100000, '2017-03-07', 9880200, 100),
('Jackson', 'Magumba', 250000, '2017-08-06', 9880400, 124),
('Moses', 'Kintu', 225000, '2017-08-01', 9880500, 123),
('Jackson', 'Magumba', 200000, '2017-08-01', 9880600, 124),
('Moses', 'Kintu', 205000, '2017-08-01', 9880700, 123),
('timothy', 'masiko', 200000, '2017-08-08', 9880900, 100);

-- --------------------------------------------------------

--
-- Table structure for table `deniedtable`
--

CREATE TABLE `deniedtable` (
  `PersonName` varchar(40) NOT NULL,
  `Amount` int(15) NOT NULL,
  `Date` date NOT NULL,
  `ReceiptNumber` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `investment`
--

CREATE TABLE `investment` (
  `InvestID` int(10) NOT NULL,
  `InvestName` char(20) DEFAULT NULL,
  `InvestDate` date DEFAULT NULL,
  `FinalPrice` float DEFAULT NULL,
  `IdeaID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `investmentidea`
--

CREATE TABLE `investmentidea` (
  `IdeaID` int(10) NOT NULL,
  `InitialPrice` float DEFAULT NULL,
  `IdeaName` char(30) DEFAULT NULL,
  `MemberID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `investmentidea`
--

INSERT INTO `investmentidea` (`IdeaID`, `InitialPrice`, `IdeaName`, `MemberID`) VALUES
(1, 800000, 'books', 100);

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `LoanID` int(10) NOT NULL,
  `LoanAmount` int(15) NOT NULL,
  `LoanDate` date NOT NULL,
  `MemberID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`LoanID`, `LoanAmount`, `LoanDate`, `MemberID`) VALUES
(12335, 250000, '2017-08-02', 122),
(12345, 250000, '2017-08-07', 123);

-- --------------------------------------------------------

--
-- Table structure for table `loanrequest`
--

CREATE TABLE `loanrequest` (
  `LoanID` int(10) NOT NULL,
  `LoanAmount` float DEFAULT NULL,
  `MemberID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `MemberID` int(10) NOT NULL,
  `FirstName` varchar(25) DEFAULT NULL,
  `LastName` varchar(25) DEFAULT NULL,
  `UserName` varchar(25) DEFAULT NULL,
  `Password` varchar(25) DEFAULT NULL,
  `contribution` int(15) DEFAULT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`MemberID`, `FirstName`, `LastName`, `UserName`, `Password`, `contribution`, `Date`) VALUES
(100, 'timothy', 'masiko', 'timo', 'timo', 100000, '2017-07-03 21:00:00'),
(120, 'Liberty', 'Muhereza', 'lib', 'lib', 400000, '2017-08-10 23:23:12'),
(123, 'Moses', 'Kintu', 'moses', 'moses', 175000, '2017-08-06 21:00:00'),
(124, 'Jackson', 'Magumba', 'jackson', 'jackson', 250000, '2017-07-31 21:00:00'),
(129, 'Peter', 'Kaganda', 'peter', 'peter', 1000000, '2017-08-11 05:46:00'),
(144, 'murgy', 'nasiwa', 'murgy', 'murgy', 1200000, '2017-08-11 07:44:28'),
(166, 'Admin', 'Administrator', 'administrator', 'admin', 1200000, '2017-08-11 07:23:15'),
(199, 'ethan', 'sempa', 'ethan', 'ethan', 1200000, '2017-08-11 07:14:25');

-- --------------------------------------------------------

--
-- Table structure for table `pendingtable`
--

CREATE TABLE `pendingtable` (
  `PersonName` varchar(40) NOT NULL,
  `Amount` int(15) NOT NULL,
  `Date` date NOT NULL,
  `ReceiptNumber` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendingtable`
--

INSERT INTO `pendingtable` (`PersonName`, `Amount`, `Date`, `ReceiptNumber`) VALUES
('timo', 3000, '2017-08-08', 7),
('MBONA', 1000000, '2017-09-21', 89);

-- --------------------------------------------------------

--
-- Table structure for table `repay`
--

CREATE TABLE `repay` (
  `RepayID` int(10) NOT NULL,
  `RepayAmount` int(15) DEFAULT NULL,
  `Interest` int(10) DEFAULT NULL,
  `LoanID` int(10) DEFAULT NULL,
  `MemberID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contributions`
--
ALTER TABLE `contributions`
  ADD PRIMARY KEY (`RecieptNumber`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `deniedtable`
--
ALTER TABLE `deniedtable`
  ADD PRIMARY KEY (`ReceiptNumber`);

--
-- Indexes for table `investment`
--
ALTER TABLE `investment`
  ADD PRIMARY KEY (`InvestID`),
  ADD KEY `IdeaID` (`IdeaID`);

--
-- Indexes for table `investmentidea`
--
ALTER TABLE `investmentidea`
  ADD PRIMARY KEY (`IdeaID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`LoanID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `loanrequest`
--
ALTER TABLE `loanrequest`
  ADD PRIMARY KEY (`LoanID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`MemberID`);

--
-- Indexes for table `pendingtable`
--
ALTER TABLE `pendingtable`
  ADD PRIMARY KEY (`ReceiptNumber`);

--
-- Indexes for table `repay`
--
ALTER TABLE `repay`
  ADD PRIMARY KEY (`RepayID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `repay`
--
ALTER TABLE `repay`
  MODIFY `RepayID` int(10) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `contributions`
--
ALTER TABLE `contributions`
  ADD CONSTRAINT `CONTRIBUTIONS_ibfk_1` FOREIGN KEY (`MemberID`) REFERENCES `member` (`MemberID`);

--
-- Constraints for table `investment`
--
ALTER TABLE `investment`
  ADD CONSTRAINT `Investment_ibfk_1` FOREIGN KEY (`IdeaID`) REFERENCES `investmentidea` (`IdeaID`);

--
-- Constraints for table `investmentidea`
--
ALTER TABLE `investmentidea`
  ADD CONSTRAINT `InvestmentIdea_ibfk_1` FOREIGN KEY (`MemberID`) REFERENCES `member` (`MemberID`);

--
-- Constraints for table `loanrequest`
--
ALTER TABLE `loanrequest`
  ADD CONSTRAINT `LoanRequest_ibfk_1` FOREIGN KEY (`MemberID`) REFERENCES `member` (`MemberID`);

--
-- Constraints for table `repay`
--
ALTER TABLE `repay`
  ADD CONSTRAINT `Repay_ibfk_1` FOREIGN KEY (`MemberID`) REFERENCES `member` (`MemberID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
