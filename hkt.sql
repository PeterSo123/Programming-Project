-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2019 at 09:45 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hkt`
--

-- --------------------------------------------------------

--
-- Table structure for table `atg`
--

CREATE TABLE `atg` (
  `ABC` varchar(3) DEFAULT NULL,
  `Work_Item` varchar(8) DEFAULT NULL,
  `Description_Of_Works` varchar(132) DEFAULT NULL,
  `Unit` varchar(16) DEFAULT NULL,
  `New_Price` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atg`
--

INSERT INTO `atg` (`ABC`, `Work_Item`, `Description_Of_Works`, `Unit`, `New_Price`) VALUES
('ATG', 'G1-1', 'Run & install optical fibre, 2/4 cores, horizontal with associated components/outlets within 60 metres upon service subscription', 'Each job', '400.0'),
('ATG', 'G1-2', 'Run & install optical fibre, 2/4 cores, horizontal with associated components/outlets within 100 metres upon service subscription', 'Each job', '500.0'),
('ATG', 'G2-22', 'Mechanical splicing of no polish connector (NPC) with single fibre with assembly tools', 'Per connector', '30.1'),
('ATG', 'G2-54', 'Fix PVC Pipe up to 56mm Internal Diameter including Bracket and Saddle', 'Metre', '15.6'),
('ATG', 'G2-55', 'Fix PVC Pipe 107mm Internal Diameter including Bracket and Saddle', 'Metre', '18.8'),
('ATG', 'G2-56', 'Run and Fix Flexible Plastic Tube for Wiring Protection', 'Metre', '5.7'),
('ATG', 'G2-57', 'Supply and On-site install Galvanized Iron Trunking (1.2mm thickness) 50mm x 50mm (including easy bends/adaptors/ accessories etc.)', 'Metre', '224.8'),
('ATG', 'G2-58', 'Supply and On-site install Galvanized Iron Trunking (1.2mm thickness) 75mm x 75mm (including easy bends/adaptors/ accessories etc.)', 'Metre', '239.1'),
('ATG', 'G2-59', 'Supply and On-site Install Galvanized Iron Trunking (1.2mm Thickness) 100mm x 100mm (including easy bends/adaptors/accessories etc.)', 'Metre', '262.2'),
('ATG', 'G2-60', 'Supply and On-site Install Galvanized Iron Trunking (1.2mm Thickness) 150mm x 150mm (including easy bends/adaptors/accessories etc.)', 'Metre', '385.2'),
('ATG', 'G2-69', 'Install PVC Trunking up to 100mm x 100 mm', 'Per metre', '49.1'),
('ATG', 'G2-72', 'Cut Access Panel at Gypsum/Wooden Board Type False Ceiling and Make Good (400mm x 400mm)', 'Each', '1119.1'),
('ATG', 'G2-73', 'Cut Access Panel at Gypsum/Wooden Board Type False Ceiling and Make Good (600mm x 600mm)', 'Each', '1171.9'),
('ATG', 'G2-74', 'Cut Access Panel at Aluminium Type False Ceiling and Make Good (400mm x 400mm) ', 'Each', '1130.4'),
('ATG', 'G2-75', 'Cut Access Panel at Aluminium Type False Ceiling and Make Good (600mm x 600mm) ', 'Each', '1246.3'),
('ATG', 'G2-76', 'Dismantle and Reinstate Fragile/Complicated False Ceiling', 'Square', '61.4'),
('ATG', 'G2-77', 'Cut and Make Good Hole on Dis-case up to 50mm Diameter', 'Each', '43.9'),
('ATG', 'G2-78', 'Cut Hole on Metal Trunk up to 50mm Diameter/Square and Cushion with Rubber Grommet/Brushing', 'Each ', '51.1'),
('ATG', 'G2-79', 'Cut and Reinstate Hole Through Wall/Floor up to 30mm Diameter/Square', 'Each', '77.5'),
('ATG', 'G2-80', 'Cut and Reinstate Hole Through Wall/Floor up to 40mm Diameter/Square', 'Each', '93.6'),
('ATG', 'G2-81', 'Cut & Reinstate Hole through Wall/Floor up to 80mm diameter/square ', 'Each', '187.3'),
('ATG', 'G2-82', 'Cut & Reinstate Hole through Wall/Floor up to 120mm diameter/square ', 'Each', '299.0'),
('ATG', 'G2-83', 'Cut and Reinstate Hole Through Wall/Floor up to 150mm Diameter/Square', 'Each', '356.9'),
('ATG', 'G2-84', 'Supply and Install 20mm Diameter Galvanized Iron Conduit to BS4568', 'Per metre', '81.3'),
('ATG', 'G2-85', 'Supply and Install 25mm Diameter Galvanized Iron Conduit to BS4568', 'Per metre', '108.8'),
('ATG', 'G2-86', 'Supply and Install 32mm Diameter Galvanized Iron Conduit to BS4568', 'Per metre', '103.9'),
('ATG', 'G2-87', 'Supply and Install up to 32mm Diameter PVC Coated Flexible Metal Conduit/Flexible Metal Conduit', 'Per metre', '126.4'),
('ATG', 'G2-88', 'Supply and Install 50mm Diameter PVC Coated Flexible Metal Conduit/Flexible Metal Conduit', 'Per metre', '145.0'),
('ATG', 'G2-116', 'Paint Conduit (All Types) ', 'Per metre', '15.5'),
('ATG', 'G2-117', 'Paint Metal Trunking 50-75mm to Match Surrounding', 'Metre', '24.3'),
('ATG', 'G2-118', 'Paint Metal Trunking 100-150mm to Match Surrounding', 'Metre', '27.5'),
('ATG', 'G2-121', 'Paint False Ceiling/Wall/Promat', 'Per square metre', '78.6'),
('ATG', 'G2-143', 'Supply and Install 2 Hours Fire Rating \'Promat Brand Board\' with Company Approved Materials for Fire Resisting Construction.', 'Square Metre', '971.4'),
('ATG', 'G2-144', 'Supply and Install 4 Hours Fire Rating \'Promat Brand Board\' with Company Approved Materials for Fire Resisting Construction.', 'Square Metre', '1092.2'),
('ATG', 'G2-145', 'Dismantle & Reinstate \"Promat\" Board ', 'Square Metre', '65.6'),
('ATG', 'G2-146', 'Supply of Skilled Planning Labour', 'Manhour', '94.2'),
('ATG', 'G2-147', 'Supply of Skilled Labour', '-', '-'),
('ATG', 'a.1', 'Additional Site Check (Fast PON, PON Replenishment, Project ...)', 'Man-hour', '65.2'),
('ATG', 'a.2', 'Additional Site Check ', 'Man-hour', '65.2'),
('ATG', 'b', 'BMO Permit Application ', 'Man-hour', '65.2'),
('ATG', 'c', 'Outlets (socket)', 'Man-hour', '32.6'),
('ATG', 'd', '<blank>', 'Man-hour', '65.2'),
('ATG', 'MIS.1', 'Third Party Charges (eg BMO, Nom-Contractor...)', 'Man-hour', '65.2'),
('ATG', 'MIS.2', '<blank>', 'Man-hour', '65.2'),
('ATG', 'D1(J)   ', 'Provide service by orders after normal working hours (Per Job)', 'Per Job', '0.1'),
('ATG', 'D1(H)   ', 'Provide service by orders after normal working hours (Per Hour)', 'Man-hour', '71.72'),
('ATG', 'H7.1', 'High Working Platform  Up to 5M height, 2 days per job ', 'Each  ', '2000.0'),
('ATG', 'H7.2', 'High Working Platform  Up to 5M height, 1 week per job', 'Each  ', '3000.0'),
('ATG', 'H7.3', 'High Working Platform  Up to 9M height, 2 days per job ', 'Each  ', '4000.0'),
('ATG', 'H7.4', 'High Working Platform  Up to 9M height, 1 week per job', 'Each  ', '5000.0');

-- --------------------------------------------------------

--
-- Table structure for table `engineeringteams`
--

CREATE TABLE `engineeringteams` (
  `team_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `person_in_charge_name` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `tel` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `engineeringteams`
--

INSERT INTO `engineeringteams` (`team_id`, `username`, `person_in_charge_name`, `email`, `tel`) VALUES
(123, 'user2', 'pic1', 'pic1@gmail.com', 87654321);

-- --------------------------------------------------------

--
-- Table structure for table `hktcontrolstaffs`
--

CREATE TABLE `hktcontrolstaffs` (
  `staff_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `staff_name` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `tel` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hktcontrolstaffs`
--

INSERT INTO `hktcontrolstaffs` (`staff_id`, `username`, `staff_name`, `email`, `tel`) VALUES
(1, 'user1', 'staff1', 'staff1@gmail.com', 12345678),
(2, 'user3', 'staff3', 'staff3@gmail.com', 98745112);

-- --------------------------------------------------------

--
-- Table structure for table `holiday2019`
--

CREATE TABLE `holiday2019` (
  `holiday` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `holiday2019`
--

INSERT INTO `holiday2019` (`holiday`) VALUES
('2019-01-01'),
('2019-02-05'),
('2019-02-06'),
('2019-02-07'),
('2019-04-05'),
('2019-04-19'),
('2019-04-20'),
('2019-04-22'),
('2019-05-01'),
('2019-05-13'),
('2019-06-07'),
('2019-07-01'),
('2019-09-14'),
('2019-10-01'),
('2019-10-07'),
('2019-12-25'),
('2019-12-26');

-- --------------------------------------------------------

--
-- Table structure for table `ibi`
--

CREATE TABLE `ibi` (
  `XYZ` varchar(3) DEFAULT NULL,
  `Work_Item` varchar(5) DEFAULT NULL,
  `Description_Of_Works` varchar(152) DEFAULT NULL,
  `Unit` varchar(16) DEFAULT NULL,
  `Usage` varchar(14) DEFAULT NULL,
  `New_Price` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ibi`
--

INSERT INTO `ibi` (`XYZ`, `Work_Item`, `Description_Of_Works`, `Unit`, `Usage`, `New_Price`) VALUES
('IBI', '34.0', 'Run & install Horziontal optical fibre, up to 4 cores, with associated components/outlets within 60 metres upon service subscription, Single-cable Run.', 'Each job', 'Fibre Drop', '301.1'),
('IBI', '36.0', 'Run & install Horziontal optical fibre, up to 4 cores, with associated components/outlets within 100 metres upon service subscription, Single-cable Run.', 'Each job', 'Fibre Drop', '421.3'),
('IBI', '42.0', 'Mechanical splicing of no polish connector (NPC) for single fibre with assembly tools', 'Per connector', 'Fibre  ', '39.4'),
('IBI', '94.0', 'Fix PVC Pipe up to 56mm Internal Diameter including Bracket and Saddle', 'Each job', 'Pipe/Trunking', '21.9'),
('IBI', '96.0', 'Run and Fix Flexible Plastic Tube for Wiring Protection', 'Per metre', 'Pipe/Trunking', '5.7'),
('IBI', '113.0', 'Cut Access Panel at Gypsum/Wooden Board Type False Ceiling and Make Good (400mm X 400mm)', 'Each ', 'Cutting', '1077.7'),
('IBI', '114.0', 'Cut Access Panel at Gypsum/Wooden Board Type False Ceiling and Make Good (600mm X 600mm)', 'Each ', 'Cutting', '1171.4'),
('IBI', '115.0', 'Cut Access Panel at Aluminum Type False Ceiling and ake Good (400mm X 400mm)', 'Each ', 'Cutting', '1089.5'),
('IBI', '116.0', 'Cut Access Panel at Aluminum Type False Ceiling and Make Good (600mm X 600mm)', 'Each ', 'Cutting', '1197.3'),
('IBI', '117.0', 'Dismantle and Reinstate Fragile/Complicated False Ceiling', 'Per Square metre', 'Cutting', '72.4'),
('IBI', '120.0', 'Cut and Reinstate Hole Through Wall/Floor up to 30mm Diameter/Square', 'Each', 'Cutting', '99.0'),
('IBI', '122.0', 'Cut and Reinstate Hole Through Wall/Floor up to 80mm Diameter/Square', 'Each', 'Cutting', '251.4'),
('IBI', '123.0', 'Cut and Reinstate Hole Through Wall/Floor up to 120mm Diameter/Square', 'Each', 'Cutting', '288.6'),
('IBI', '124.0', 'Cut and Reinstate Hole Through Wall/Floor up to 150mm Diameter/Square', 'Each', 'Cutting', '359.9'),
('IBI', '125.0', 'Supply and Install 20mm Diameter Galvanized Iron Conduit to BS4568', 'Per meter', 'Electrical', '95.6'),
('IBI', '126.0', 'Supply and Install 25mm Diameter Galvanized Iron Conduit to BS4568', 'Per metre', 'Electrical', '103.8'),
('IBI', '127.0', 'Supply and Install 32mm Diameter Galvanized Iron Conduit to BS4568', 'Per metre', 'Electrical', '77.8'),
('IBI', '128.0', 'Supply and install  up to 32mm Diameter PVC Coated Flexible Metal Conduit/ Flexible Metal Conduit', 'Per metre', 'Electrical', '69.6'),
('IBI', '129.0', 'Supply and install 50mm Diameter PVC Coated Flexible Metal Conduit/ Flexible Metal Conduit', 'Per metre', 'Electrical', '90.3'),
('IBI', '224.0', 'Dismantle & Reinstate \"Promat\" Board', 'Per Square metre', 'Fire Resistant', '88.4'),
('IBI', '225.0', 'Supply of Skilled Planning Labour', 'Per Man-hour', 'Labour', '124.2'),
('IBI', '226.0', 'Supply of Skilled Labour', '-', '-', '-'),
('IBI', 'a.1', 'Additional Site Check (Fast PON, PON Replenishment, Project ...)', 'Per Man-hour', 'Labour', '62.7'),
('IBI', 'a.2', 'Additional Site Check ', 'Per Man-hour', 'Labour', '62.7'),
('IBI', 'b', 'BMO Permit Application ', 'Per Man-hour', 'Labour', '62.7'),
('IBI', 'c', 'Provide service by orders after normal working hours ', 'Per Man-hour', 'Labour', '62.7'),
('IBI', 'd', 'Outlets (socket)', 'Each', NULL, '31.35'),
('IBI', 'e', '<blank>', 'Per Man-hour', 'Labour', '62.7'),
('IBI', 'MIS.1', 'High Working Platform ', 'Per Man-hour', 'Labour', '62.7'),
('IBI', 'MIS.2', 'Third Party Charges (eg BMO, Nom-Contractor...)', 'Per Man-hour', 'Labour', '62.7'),
('IBI', 'MIS.3', '<blank>', 'Per Man-hour', 'Labour', '62.7');

-- --------------------------------------------------------

--
-- Table structure for table `itemcases`
--

CREATE TABLE `itemcases` (
  `item_case_id` int(20) NOT NULL,
  `quotation_id` int(20) NOT NULL,
  `work_item_id` varchar(20) NOT NULL,
  `item_amount` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_number` int(11) NOT NULL,
  `BSN` varchar(20) NOT NULL,
  `order_status` varchar(20) NOT NULL,
  `assigning_date` varchar(20) NOT NULL,
  `pre_visit_date` varchar(20) NOT NULL,
  `wiring_date` varchar(20) NOT NULL,
  `team_id` int(11) NOT NULL,
  `pending_reason_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_number`, `BSN`, `order_status`, `assigning_date`, `pre_visit_date`, `wiring_date`, `team_id`, `pending_reason_id`) VALUES
(123, 'BSN123', 'Pending', '2019-03-12', '2019-03-19', '2019-03-21', 321, 16),
(222, 'BSN222', 'Pending', '2019-03-25', '2019-03-26', '', 123, 15),
(333, 'BSN333', 'Pending', '2019-04-03', '2019-04-04', '', 123, 0),
(444, 'BSN444', 'Pending', '2019-03-11', '2019-03-14', '', 123, 23),
(545, 'BSN545', 'Assigned', '2019-03-16', '2019-03-18', '', 123, 0),
(654, 'BSN654', 'Pending', '2019-03-17', '2019-03-19', '2019-03-24', 884, 3);

-- --------------------------------------------------------

--
-- Table structure for table `pendingcases`
--

CREATE TABLE `pendingcases` (
  `case_id` int(20) NOT NULL,
  `order_number` int(20) NOT NULL,
  `pending_reason_id` int(20) NOT NULL,
  `delay_date` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pendingreasons`
--

CREATE TABLE `pendingreasons` (
  `reason_id` int(20) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `delay_date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pendingreasons`
--

INSERT INTO `pendingreasons` (`reason_id`, `description`, `delay_date`) VALUES
(0, '-', 0),
(1, 'Customer reject Pre Visit', 0),
(2, 'Re-schedule wiring date', 0),
(3, 'Re-schedule Pre Visit date', 0),
(4, 'Await quotation approval', 0),
(5, 'Await nom-con quotation to Customer', 0),
(6, 'Customer reject extra field work', 0),
(7, 'BMO reject extra work', 0),
(8, 'Third party issue', 0),
(9, 'Blockage case', 0),
(10, 'Customer reject extra cost', 0),
(11, 'Order information issue', 0),
(12, 'Await provide cross-connect', 0),
(13, 'Customer request cancel', 0),
(14, 'Await Pre Visit schedule', 7),
(15, 'Await wiring schedule', 7),
(16, 'Await 2N/BMO Pre Visit schedule', 7),
(17, 'Await 2N/BMO wiring schedule', 7),
(18, 'Site not ready', 7),
(19, 'Await customer facility', 14),
(20, 'Await quotation', 2),
(21, 'Await nom-con quotation to CPN', 14),
(22, 'Await BMO permit', 7),
(23, 'Await splitter issue ', 14),
(24, 'Cannot contact customer', 0);

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `quotation_id` int(20) NOT NULL,
  `order_number` int(20) NOT NULL,
  `remarks` varchar(2000) NOT NULL,
  `photo_uploaded` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `user_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `user_type`) VALUES
('user1', 'pw1', 'hktcs'),
('user2', 'pw2', 'et'),
('user3', 'pw3', 'HKTCS');

-- --------------------------------------------------------

--
-- Table structure for table `workitems`
--

CREATE TABLE `workitems` (
  `work_item_id` varchar(20) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `unit_rate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `workitems`
--

INSERT INTO `workitems` (`work_item_id`, `description`, `unit`, `unit_rate`) VALUES
('a.1', 'Additional Site Check (Fast PON, PON Replenishment, Project ...)', 'Man-hour', 65.2),
('a.2', 'Additional Site Check ', 'Man-hour', 65.2),
('b', 'BMO Permit Application', 'Man-hour', 65.2),
('c', 'Outlets (socket)', 'Man-hour', 0),
('d', '', 'Man-hour', 65.2),
('D1(H)   ', 'Provide service by orders after normal working hours (Per Hour)', 'Man-hour', 0),
('D1(J)   ', 'Provide service by orders after normal working hours (Per Job)', 'Per Job', 0.1),
('G1-1', 'Run & install optical fibre, 2/4 cores, horizontal with associated components/outlets within 60 metres upon service subscription', 'Each job', 400),
('G1-2', 'Run & install optical fibre, 2/4 cores, horizontal with associated components/outlets within 100 metres upon service subscription\r\n', 'Each job', 500),
('G2-116', 'Paint Conduit (All Types) ', 'Per metre', 15.5),
('G2-117', 'Paint Metal Trunking 50-75mm to Match Surrounding', 'Metre', 24.3),
('G2-118', 'Paint Metal Trunking 100-150mm to Match Surrounding', 'Metre', 27.5),
('G2-121', 'Paint False Ceiling/Wall/Promat', 'Per square metre', 78.6),
('G2-143', 'Supply and Install 2 Hours Fire Rating \'Promat Brand Board\' with Company Approved Materials for Fire Resisting Construction.', 'Square Metre', 971.4),
('G2-144', 'Supply and Install 4 Hours Fire Rating \'Promat Brand Board\' with Company Approved Materials for Fire Resisting Construction.', 'Square Metre', 1092.2),
('G2-145', 'Dismantle & Reinstate \"Promat\" Board ', 'Square Metre', 65.6),
('G2-146', 'Supply of Skilled Planning Labour', 'Manhour', 94.2),
('G2-147', 'Supply of Skilled Labour', '-', 0),
('G2-22', 'Mechanical splicing of no polish connector (NPC) with single fibre with assembly tools\r\n', 'Per connector', 30.1),
('G2-54', 'Fix PVC Pipe up to 56mm Internal Diameter including Bracket and Saddle\r\n', 'Metre', 15.6),
('G2-55', 'Fix PVC Pipe 107mm Internal Diameter including Bracket and Saddle\r\n', 'Metre', 18.8),
('G2-56', 'Run and Fix Flexible Plastic Tube for Wiring Protection\r\n', 'Metre', 5.7),
('G2-57', 'Supply and On-site install Galvanized Iron Trunking (1.2mm thickness) 50mm x 50mm (including easy bends/adaptors/ accessories etc.)\r\n', 'Metre', 224.8),
('G2-58', 'Supply and On-site install Galvanized Iron Trunking (1.2mm thickness) 75mm x 75mm (including easy bends/adaptors/ accessories etc.)\r\n', 'Metre', 239.1),
('G2-59', 'Supply and On-site Install Galvanized Iron Trunking (1.2mm Thickness) 100mm x 100mm (including easy bends/adaptors/accessories etc.)\r\n', 'Metre', 262.2),
('G2-60', 'Supply and On-site Install Galvanized Iron Trunking (1.2mm Thickness) 150mm x 150mm (including easy bends/adaptors/accessories etc.)', 'Metre', 385.2),
('G2-69', 'Install PVC Trunking up to 100mm x 100 mm\r\n', 'Per metre', 49.1),
('G2-72', 'Cut Access Panel at Gypsum/Wooden Board Type False Ceiling and Make Good (400mm x 400mm)\r\n', 'Each', 1119.1),
('G2-73', 'Cut Access Panel at Gypsum/Wooden Board Type False Ceiling and Make Good (600mm x 600mm)\r\n', 'Each', 1171.9),
('G2-74', 'Cut Access Panel at Aluminium Type False Ceiling and Make Good (400mm x 400mm) \r\n', 'Each', 1130.4),
('G2-75', 'Cut Access Panel at Aluminium Type False Ceiling and Make Good (600mm x 600mm) \r\n', 'Each', 1246.3),
('G2-76', 'Dismantle and Reinstate Fragile/Complicated False Ceiling\r\n', 'Square', 61.4),
('G2-77', 'Cut and Make Good Hole on Dis-case up to 50mm Diameter\r\n', 'Each', 43.9),
('G2-78', 'Cut Hole on Metal Trunk up to 50mm Diameter/Square and Cushion with Rubber Grommet/Brushing', 'Each', 51.1),
('G2-79', 'Cut and Reinstate Hole Through Wall/Floor up to 30mm Diameter/Square', 'Each', 77.5),
('G2-80', 'Cut and Reinstate Hole Through Wall/Floor up to 40mm Diameter/Square', 'Each', 93.6),
('G2-81', 'Cut & Reinstate Hole through Wall/Floor up to 80mm diameter/square ', 'Each', 187.3),
('G2-82', 'Cut & Reinstate Hole through Wall/Floor up to 120mm diameter/square ', 'Each', 299),
('G2-83', 'Cut and Reinstate Hole Through Wall/Floor up to 150mm Diameter/Square', 'Each', 356.9),
('G2-84', 'Supply and Install 20mm Diameter Galvanized Iron Conduit to BS4568', 'Per metre', 81.3),
('G2-85', 'Supply and Install 25mm Diameter Galvanized Iron Conduit to BS4568', 'Per metre', 108.8),
('G2-86', 'Supply and Install 32mm Diameter Galvanized Iron Conduit to BS4568', 'Per metre', 103.9),
('G2-87', 'Supply and Install up to 32mm Diameter PVC Coated Flexible Metal Conduit/Flexible Metal Conduit', 'Per metre', 126.4),
('G2-88', 'Supply and Install 50mm Diameter PVC Coated Flexible Metal Conduit/Flexible Metal Conduit', 'Per metre', 145),
('H7.1', 'High Working Platform  Up to 5M height, 2 days per job ', 'Each ', 2000),
('H7.2', 'High Working Platform  Up to 5M height, 1 week per job', 'Each ', 3000),
('H7.3', 'High Working Platform  Up to 9M height, 2 days per job ', 'Each ', 4000),
('H7.4', 'High Working Platform  Up to 9M height, 1 week per job', 'Each ', 5000),
('MIS.1', 'Third Party Charges (eg BMO, Nom-Contractor...)', 'Man-hour', 65.2),
('MIS.2', '', 'Man-hour', 65.2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `engineeringteams`
--
ALTER TABLE `engineeringteams`
  ADD PRIMARY KEY (`team_id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `hktcontrolstaffs`
--
ALTER TABLE `hktcontrolstaffs`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `itemcases`
--
ALTER TABLE `itemcases`
  ADD PRIMARY KEY (`item_case_id`),
  ADD KEY `quotation_id` (`quotation_id`),
  ADD KEY `work_item_id` (`work_item_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_number`);

--
-- Indexes for table `pendingcases`
--
ALTER TABLE `pendingcases`
  ADD PRIMARY KEY (`case_id`),
  ADD KEY `order_number` (`order_number`),
  ADD KEY `pending_reason_id` (`pending_reason_id`);

--
-- Indexes for table `pendingreasons`
--
ALTER TABLE `pendingreasons`
  ADD PRIMARY KEY (`reason_id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`quotation_id`),
  ADD KEY `order_number` (`order_number`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `workitems`
--
ALTER TABLE `workitems`
  ADD PRIMARY KEY (`work_item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `engineeringteams`
--
ALTER TABLE `engineeringteams`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `hktcontrolstaffs`
--
ALTER TABLE `hktcontrolstaffs`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `itemcases`
--
ALTER TABLE `itemcases`
  MODIFY `item_case_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pendingcases`
--
ALTER TABLE `pendingcases`
  MODIFY `case_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pendingreasons`
--
ALTER TABLE `pendingreasons`
  MODIFY `reason_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `quotation_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `engineeringteams`
--
ALTER TABLE `engineeringteams`
  ADD CONSTRAINT `engineeringteams_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `hktcontrolstaffs`
--
ALTER TABLE `hktcontrolstaffs`
  ADD CONSTRAINT `hktcontrolstaffs_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `itemcases`
--
ALTER TABLE `itemcases`
  ADD CONSTRAINT `itemcases_ibfk_1` FOREIGN KEY (`quotation_id`) REFERENCES `quotations` (`quotation_id`),
  ADD CONSTRAINT `itemcases_ibfk_2` FOREIGN KEY (`work_item_id`) REFERENCES `workitems` (`work_item_id`);

--
-- Constraints for table `pendingcases`
--
ALTER TABLE `pendingcases`
  ADD CONSTRAINT `pendingcases_ibfk_1` FOREIGN KEY (`order_number`) REFERENCES `orders` (`order_number`),
  ADD CONSTRAINT `pendingcases_ibfk_2` FOREIGN KEY (`pending_reason_id`) REFERENCES `pendingreasons` (`reason_id`);

--
-- Constraints for table `quotations`
--
ALTER TABLE `quotations`
  ADD CONSTRAINT `quotations_ibfk_1` FOREIGN KEY (`order_number`) REFERENCES `orders` (`order_number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
