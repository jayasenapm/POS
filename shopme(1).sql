-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2019 at 10:46 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopme`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_no` int(100) NOT NULL,
  `book_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_no`, `book_name`) VALUES
(1, 'jayaa');

-- --------------------------------------------------------

--
-- Table structure for table `buil`
--

CREATE TABLE `buil` (
  `BilNo` varchar(255) NOT NULL,
  `SUID` int(10) NOT NULL,
  `Date` date NOT NULL,
  `Amount` int(10) NOT NULL,
  `Discount` int(10) NOT NULL,
  `No` varchar(500) NOT NULL,
  `method` varchar(100) NOT NULL,
  `Payid` int(10) NOT NULL,
  `tax` int(11) NOT NULL,
  `catagrize` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buil`
--

INSERT INTO `buil` (`BilNo`, `SUID`, `Date`, `Amount`, `Discount`, `No`, `method`, `Payid`, `tax`, `catagrize`) VALUES
('4563', 0, '2019-01-21', 35000, 0, '0', 'Cash', 35000, 0, ''),
('4566666', 0, '2019-01-20', 35000, 0, '0', 'Cash', 35000, 0, ''),
('456999', 0, '2019-01-21', 10000, 0, '0', 'Cash', 10000, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `bulk`
--

CREATE TABLE `bulk` (
  `bulkid` int(100) NOT NULL,
  `billno` varchar(100) NOT NULL,
  `qun` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bulk`
--

INSERT INTO `bulk` (`bulkid`, `billno`, `qun`) VALUES
(1, '4566666', 500),
(2, '456999', 100),
(3, '4563', 20),
(4, '4563', 20),
(5, '4563', 20),
(6, '4563', 20),
(7, '4563', 5),
(8, '4563', 15);

-- --------------------------------------------------------

--
-- Table structure for table `buy`
--

CREATE TABLE `buy` (
  `BtransactioId` int(15) NOT NULL,
  `prid` varchar(500) NOT NULL,
  `billNo` varchar(255) NOT NULL,
  `Quan` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Total` int(10) NOT NULL,
  `catagrize` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buy`
--

INSERT INTO `buy` (`BtransactioId`, `prid`, `billNo`, `Quan`, `Price`, `Total`, `catagrize`) VALUES
(1, 'Rice', '4566666', 500, 70, 35000, 'Yes'),
(2, 'Rice', '456999', 100, 100, 10000, 'Yes'),
(3, 'Milk powder', '4563', 100, 350, 35000, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `cashbook`
--

CREATE TABLE `cashbook` (
  `ID` int(10) NOT NULL,
  `Date` date NOT NULL,
  `AccountTitle` varchar(200) NOT NULL,
  `Invoic` varchar(100) NOT NULL,
  `Bank` varchar(100) DEFAULT NULL,
  `Type` varchar(100) NOT NULL,
  `Debit` int(10) NOT NULL,
  `Credit` int(10) NOT NULL,
  `states` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cashbook`
--

INSERT INTO `cashbook` (`ID`, `Date`, `AccountTitle`, `Invoic`, `Bank`, `Type`, `Debit`, `Credit`, `states`) VALUES
(1, '2019-01-19', '0', '', NULL, 'Cash', 0, 35000, ''),
(2, '2019-01-21', '0', '', NULL, 'Cash', 0, 10000, ''),
(3, '2019-01-21', '0', '', NULL, 'Cash', 0, 35000, ''),
(4, '2019-01-22', '0', '#0001', '-', 'Cash', 55, 0, ''),
(5, '2019-01-22', '0', '#0001', '-', 'Cash', 1300, 0, ''),
(6, '2019-01-22', '0', '#0001', '-', 'Cash', 0, 0, ''),
(7, '2019-01-22', '0', '#0002', '-', 'Cash', 130, 0, ''),
(8, '2019-01-22', '0', '#0002', '-', 'Cash', 0, 0, ''),
(9, '2019-01-22', '0', '#0003', '-', 'Cash', 200, 0, ''),
(10, '2019-01-22', '0', '#0004', '-', 'Cash', 130, 0, ''),
(11, '2019-01-22', '0', '#0004', '-', 'Cash', 400, 0, ''),
(12, '2019-01-22', '0', '#0004', '-', 'Cash', 400, 0, ''),
(13, '2019-01-22', '0', '#0004', '-', 'Cash', 0, 0, ''),
(14, '2019-01-22', '0', '#0005', '-', 'Cash', 400, 0, ''),
(15, '2019-01-24', '0', '#0006', '-', 'Cash', 150, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `costumer`
--

CREATE TABLE `costumer` (
  `COID` int(10) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Address` text NOT NULL,
  `phone1` varchar(15) NOT NULL,
  `phone2` varchar(15) NOT NULL,
  `person` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `costumer`
--

INSERT INTO `costumer` (`COID`, `Name`, `Address`, `phone1`, `phone2`, `person`) VALUES
(1, 'jayasena palihakoon', 'watagamuwa,Bandarawela', '71', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `InvoiceNo` varchar(100) NOT NULL,
  `CustmerID` int(10) NOT NULL,
  `Date` date NOT NULL,
  `Amount` int(10) NOT NULL,
  `Method` varchar(100) NOT NULL,
  `No` varchar(100) NOT NULL,
  `Discount` int(10) NOT NULL,
  `Payid` int(10) NOT NULL,
  `tax` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`InvoiceNo`, `CustmerID`, `Date`, `Amount`, `Method`, `No`, `Discount`, `Payid`, `tax`) VALUES
('#0001', 0, '2019-01-22', 550, 'Cash', '0', 0, 0, 0),
('#0002', 0, '2019-01-22', 130, 'Cash', '0', 0, 130, 0),
('#0003', 0, '2019-01-22', 260, 'Cash', '0', 0, 200, 0),
('#0004', 0, '2019-01-22', 400, 'Cash', '0', 0, 400, 0),
('#0005', 0, '2019-01-22', 400, 'Cash', '0', 0, 400, 0),
('#0006', 0, '2019-01-24', 150, 'Cash', '0', 0, 150, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prid` varchar(100) NOT NULL,
  `Product_Name` varchar(255) NOT NULL,
  `Quanaty` int(10) NOT NULL,
  `discount` int(5) NOT NULL,
  `Price` int(10) NOT NULL,
  `CaId` int(10) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `scale` varchar(100) NOT NULL,
  `MinQun` int(11) NOT NULL,
  `BookName` varchar(200) NOT NULL,
  `PageNo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prid`, `Product_Name`, `Quanaty`, `discount`, `Price`, `CaId`, `Image`, `scale`, `MinQun`, `BookName`, `PageNo`) VALUES
('121212', 'hjhjhj', 150, 0, 100, 1, '', 'unit', 0, 'jayaa', 5),
('21212', 'sdfsdfd', 25, 0, 130, 1, '', 'unit', 0, 'jayaa', 5),
('445789', 'water botal', 9, 0, 150, 3, '', 'unit', 0, '', 0),
('4556', 'gahgsa', 10, 0, 100, 3, '', 'unit', 0, '2', 2),
('4564', 'sdhsdk', 10, 0, 100, 1, '', 'unit', 0, 'jayaa', 2),
('45678900', 'sunlight soap', 0, 0, 55, 1, 'Sri-lanka-Sunlight-Y-281016_tcm1313-495261_w400.jpg', 'unit', 0, '', 0),
('45789', 'Nipuna keeri samba', 617, 0, 130, 2, '60330.jpg', 'unit', 0, '', 0),
('4578966', 'Ratthi milk', 76, 0, 200, 0, '', 'Unit', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_cat`
--

CREATE TABLE `product_cat` (
  `CaId` int(10) NOT NULL,
  `Cat_Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_cat`
--

INSERT INTO `product_cat` (`CaId`, `Cat_Name`) VALUES
(1, 'Soap'),
(2, 'Rice'),
(3, 'Milk powder');

-- --------------------------------------------------------

--
-- Table structure for table `quatation`
--

CREATE TABLE `quatation` (
  `QID` int(10) NOT NULL,
  `Date` date NOT NULL,
  `CID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quitems`
--

CREATE TABLE `quitems` (
  `QIID` int(10) NOT NULL,
  `Name` varchar(500) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Quan` decimal(10,2) NOT NULL,
  `QID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quitems`
--

INSERT INTO `quitems` (`QIID`, `Name`, `Price`, `Quan`, `QID`) VALUES
(1, 'Nipuna keeri samba', '130.00', '5.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `TransactioId` int(10) NOT NULL,
  `prid` text NOT NULL,
  `InvoiceNo` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `quanaty` int(10) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `total` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`TransactioId`, `prid`, `InvoiceNo`, `Date`, `quanaty`, `price`, `total`) VALUES
(5, 'sunlight soap', '#0001', '2019-01-22', 10, '55', 550),
(6, 'Nipuna keeri samba', '#0002', '2019-01-22', 1, '130', 130),
(7, 'Nipuna keeri samba', '#0003', '2019-01-22', 2, '130', 260),
(10, 'Ratthi milk', '#0004', '2019-01-22', 2, '200', 400),
(11, 'Ratthi milk', '#0005', '2019-01-22', 2, '200', 400),
(12, 'water botal', '#0006', '2019-01-24', 1, '150', 150);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SUID` int(10) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Address` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone1` varchar(15) NOT NULL,
  `phone2` varchar(15) NOT NULL,
  `Contact` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `password` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`password`, `name`, `position`) VALUES
('123', 'jaya', 'admin'),
('345', 'jayasena', 'cashier'),
('admin', 'admin', 'admin'),
('magwin', 'Ajith', 'Cashier ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_no`);

--
-- Indexes for table `buil`
--
ALTER TABLE `buil`
  ADD PRIMARY KEY (`BilNo`);

--
-- Indexes for table `bulk`
--
ALTER TABLE `bulk`
  ADD PRIMARY KEY (`bulkid`);

--
-- Indexes for table `buy`
--
ALTER TABLE `buy`
  ADD PRIMARY KEY (`BtransactioId`);

--
-- Indexes for table `cashbook`
--
ALTER TABLE `cashbook`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `costumer`
--
ALTER TABLE `costumer`
  ADD PRIMARY KEY (`COID`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`InvoiceNo`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prid`);

--
-- Indexes for table `product_cat`
--
ALTER TABLE `product_cat`
  ADD PRIMARY KEY (`CaId`);

--
-- Indexes for table `quatation`
--
ALTER TABLE `quatation`
  ADD PRIMARY KEY (`QID`);

--
-- Indexes for table `quitems`
--
ALTER TABLE `quitems`
  ADD PRIMARY KEY (`QIID`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`TransactioId`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SUID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`password`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bulk`
--
ALTER TABLE `bulk`
  MODIFY `bulkid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `buy`
--
ALTER TABLE `buy`
  MODIFY `BtransactioId` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cashbook`
--
ALTER TABLE `cashbook`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `costumer`
--
ALTER TABLE `costumer`
  MODIFY `COID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_cat`
--
ALTER TABLE `product_cat`
  MODIFY `CaId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quatation`
--
ALTER TABLE `quatation`
  MODIFY `QID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quitems`
--
ALTER TABLE `quitems`
  MODIFY `QIID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `TransactioId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SUID` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
