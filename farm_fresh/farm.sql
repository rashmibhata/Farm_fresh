-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2021 at 01:09 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farm`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `bid` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phno` bigint(20) NOT NULL,
  `adhar` bigint(20) NOT NULL,
  `adno` int(11) NOT NULL,
  `hobli` varchar(20) NOT NULL,
  `taluk` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `pincode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`bid`, `name`, `email`, `password`, `phno`, `adhar`, `adno`, `hobli`, `taluk`, `district`, `pincode`) VALUES
('Chutki123', 'Chutki', 'chutki@gmail.com', 'Chutki@123', 78901725113, 890156238712, 56, 'Kavoor', 'Mangaluru', 'Dakshina Kannada', 575151),
('Rashmi123', 'Rashmi Bhat', 'arashmibhat@gmail.co', 'Rash456%', 7907477277, 123456789012, 12, 'Moodambail', 'Manjeshwar', 'Kasargod', 671323),
('Shreya123', 'Shreya', 'sshreya@gmail.com', 'Shreya@123', 95678123092, 209812673409, 90, 'Santhekatte', 'Udupi', 'Udupi', 574151);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `bid` varchar(20) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `odate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `pid`, `bid`, `qty`, `price`, `odate`) VALUES
(100203, 1006, 'Rashmi123', 3, 90, '2021-12-28 00:00:00'),
(100204, 1008, 'Rashmi123', 10, 1000, '2021-12-28 00:00:00'),
(100205, 1004, 'Rashmi123', 1, 75, '2021-12-29 00:00:00'),
(100206, 1003, 'Shreya123', 3, 150, '2021-12-29 00:00:00'),
(100207, 1012, 'Chutki123', 5, 125, '2021-12-29 00:00:00'),
(100208, 1019, 'Rashmi123', 2, 100, '2021-12-29 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `produces`
--

CREATE TABLE `produces` (
  `pid` bigint(20) NOT NULL,
  `sid` varchar(20) DEFAULT NULL,
  `category` varchar(30) DEFAULT NULL,
  `pname` varchar(20) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `unitprice` int(11) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produces`
--

INSERT INTO `produces` (`pid`, `sid`, `category`, `pname`, `qty`, `unitprice`, `description`) VALUES
(1001, 'Krishna234', 'Seeds', 'Paddy Seeds', 20, 100, 'Hybrid high germination paddy seeds which generates nutritional rice . '),
(1002, 'Krishna234', 'Fruits', 'Mango', 30, 100, 'Farm fresh fully grown organic mangoes.\r\nHarvest Date:20-12-2021'),
(1003, 'Krishna234', 'Fruits', 'Papaya', 7, 50, 'Nutitious large papayas with high vitamin content.'),
(1004, 'Krishna234', 'Product', 'turple', 19, 75, 'Height:100ft\r\nwidth:100ft\r\ncolor:blue\r\nNo holes like new\r\n'),
(1005, 'prithvi241', 'Product', 'Pump set', 2, 1500, 'Model:Honda WB20XD 2.9kW High Discharge Pumpset\r\nDual type Air Cleaner\r\nSpeed:-3600 rpm\r\nPump Size:50 X 50 cm'),
(1006, 'prithvi241', 'Crops', 'Rice', 20, 30, 'Can be grown in silts, loams and gravels.\r\nSeason:Kharif(June-July)\r\nType:Basmathi'),
(1007, 'prithvi241', 'Seeds', 'Coffee seeds', 20, 70, 'Grown at temperatures between 15 to 24 degree C.\r\nPesticides used:Endosulfan, Chloropyrifos'),
(1008, 'prithvi241', 'Vegetables', 'tomato', 20, 100, 'Fertilizer used:NPK with ratio of 5-10-10\r\nMostly grown in Summer.'),
(1009, 'prithvi241', 'Vegetables', 'cucumber', 30, 120, 'Fertilizer used:Organic Plant food,moderate nitrogen and high phosporus\r\nGermination time:3 days\r\nSoil: sandy Loam Soil'),
(1010, 'prithvi241', 'Greens', 'Cabbage', 20, 25, 'Rich in Vitamin C.\r\nConsist of 92% of Water,6% 0f Carbohydrates,1% of Protein.\r\nIt will be ready for harvest after 90-120 days after planting.'),
(1011, 'prithvi241', 'Spices', 'Black Pepper', 10, 350, 'These are picked when they  turn red.These Spices are immersed in boiling water for about 10 minutes which causes them to turn brown or black.They are spread out to dry in the sun for three to four days'),
(1012, 'prithvi241', 'Fruits', 'Guava', 3, 25, 'Type;Strawberry Guava\r\nRich in vitamin A,B and C.'),
(1013, 'prithvi241', 'Fruits', 'Guava', 8, 25, 'Type;Strawberry Guava\r\nRich in vitamin A,B and C.'),
(1014, 'prithvi241', 'Fruits', 'Guava', 8, 25, 'Type;Strawberry Guava\r\nRich in vitamin A,B and C.'),
(1015, 'prithvi241', 'Fruits', 'Jackfruit', 20, 100, 'Harvest date:29-12-2021\r\nTuluva jackfruit fully grown and juicy\r\nBest for making papad and sweets'),
(1016, 'prithvi241', 'Fruits', 'Rambutan', 20, 200, '\r\n\r\n\r\nhRed nutrient rich rambutan \r\nIn par with international produce\r\nHarvest date:25-12-2021'),
(1017, 'Krishna234', 'Fruits', 'Chikoo', 30, 70, 'Harvest-date:20-12-2021\r\nSoil-type:alluvial soil\r\nRich in vitamin B2,B3,B5,B6,C,Calcium,Iron '),
(1018, 'Krishna234', 'Fruits', 'Banana', 100, 20, 'Type:Cavandish\r\nHarvest date:27-12-2021\r\nRich in Thyamine,Minerals\r\nGood for glowing skin \r\n'),
(1019, 'Krishna234', 'Fruits', 'Pineapple', 13, 50, 'Rich in nutrients and antioxidants\r\nBoosts immunity\r\nHarvest date:26-12-2021\r\nHelps in digestion\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `sid` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phno` bigint(20) NOT NULL,
  `adhar` bigint(20) NOT NULL,
  `adno` varchar(11) NOT NULL,
  `hobli` varchar(20) NOT NULL,
  `taluk` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `pincode` int(11) NOT NULL,
  `rtc` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`sid`, `name`, `email`, `password`, `phno`, `adhar`, `adno`, `hobli`, `taluk`, `district`, `pincode`, `rtc`) VALUES
('Krishna234', 'Krishna V', 'krishnav@gmail.com', 'Abcd34567', 7890123456, 8901234567, '34', 'Moodambail', 'Manjeshwar', 'Kasargod', 671323, 'UNIT III.pdf'),
('prithvi241', 'prithvi', 'prithvi@gmail.com', 'Prithvi@123', 9743098058, 111122223333, '612', 'gurupura', 'mangalore', 'dk', 574151, 'Transaction Management.pdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `adhar` (`adhar`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `bid` (`bid`);

--
-- Indexes for table `produces`
--
ALTER TABLE `produces`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `adhar` (`adhar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100209;

--
-- AUTO_INCREMENT for table `produces`
--
ALTER TABLE `produces`
  MODIFY `pid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1020;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `produces` (`pid`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`bid`) REFERENCES `buyer` (`bid`);

--
-- Constraints for table `produces`
--
ALTER TABLE `produces`
  ADD CONSTRAINT `produces_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `seller` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
