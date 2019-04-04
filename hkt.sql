-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2019-04-04 11:46:53
-- 伺服器版本： 10.1.38-MariaDB
-- PHP 版本： 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `hkt`
--

-- --------------------------------------------------------

--
-- 資料表結構 `engineeringteams`
--

CREATE TABLE `engineeringteams` (
  `team_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `person_in_charge_name` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `tel` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `engineeringteams`
--

INSERT INTO `engineeringteams` (`team_id`, `username`, `person_in_charge_name`, `email`, `tel`) VALUES
(1, 'user2', 'pic1', 'pic1@gmail.com', 87654321),
(2, 'user4', 'pic2', 'pic2@gmail.com', 12345687);

-- --------------------------------------------------------

--
-- 資料表結構 `hktcontrolstaffs`
--

CREATE TABLE `hktcontrolstaffs` (
  `staff_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `staff_name` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `tel` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `hktcontrolstaffs`
--

INSERT INTO `hktcontrolstaffs` (`staff_id`, `username`, `staff_name`, `email`, `tel`) VALUES
(1, 'user1', 'staff1', 'staff1@gmail.com', 12345678),
(2, 'user3', 'staff3', 'staff3@gmail.com', 98745112);

-- --------------------------------------------------------

--
-- 資料表結構 `holiday2019`
--

CREATE TABLE `holiday2019` (
  `holiday` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `holiday2019`
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
-- 資料表結構 `itemcases`
--

CREATE TABLE `itemcases` (
  `item_case_id` int(20) NOT NULL,
  `quotation_id` int(20) NOT NULL,
  `work_item_id` varchar(20) NOT NULL,
  `item_qty` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `orders`
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
-- 傾印資料表的資料 `orders`
--

INSERT INTO `orders` (`order_number`, `BSN`, `order_status`, `assigning_date`, `pre_visit_date`, `wiring_date`, `team_id`, `pending_reason_id`) VALUES
(111, 'BSN111', 'Completed', '2019-03-12', '2019-03-13', '2019-03-14', 1, 0),
(123, 'BSN123', 'Pending', '2019-03-12', '2019-03-19', '2019-03-21', 1, 16),
(222, 'BSN222', 'Pending', '2019-03-25', '2019-03-26', '', 2, 15),
(333, 'BSN333', 'Pending', '2019-04-03', '2019-04-04', '', 1, 0),
(444, 'BSN444', 'Pending', '2019-03-11', '2019-03-14', '', 1, 23),
(545, 'BSN545', 'Assigned', '2019-03-16', '2019-03-18', '', 2, 0),
(654, 'BSN654', 'Pending', '2019-03-17', '2019-03-19', '2019-03-24', 1, 3),
(777, 'BSN777', 'Completed', '2019-02-17', '2019-02-20', '2019-03-17', 1, 23);

-- --------------------------------------------------------

--
-- 資料表結構 `orderupdatelog`
--

CREATE TABLE `orderupdatelog` (
  `update_id` int(11) NOT NULL,
  `order_number` int(11) NOT NULL,
  `field` varchar(20) NOT NULL,
  `original_data` varchar(20) NOT NULL,
  `modified_data` varchar(20) NOT NULL,
  `editor` varchar(20) NOT NULL,
  `date` datetime NOT NULL,
  `remarks` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `orderupdatelog`
--

INSERT INTO `orderupdatelog` (`update_id`, `order_number`, `field`, `original_data`, `modified_data`, `editor`, `date`, `remarks`) VALUES
(28, 123, 'order_status', 'pending', 'pending', 'user1', '2019-04-03 15:06:56', 'Await 2N/BMO Pre Visit schedule'),
(29, 123, 'order_status', 'pending', 'complete', 'user2', '2019-04-04 01:50:27', '');

-- --------------------------------------------------------

--
-- 資料表結構 `pendingcases`
--

CREATE TABLE `pendingcases` (
  `case_id` int(20) NOT NULL,
  `order_number` int(20) NOT NULL,
  `pending_reason_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `pendingreasons`
--

CREATE TABLE `pendingreasons` (
  `reason_id` int(20) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `delay_date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `pendingreasons`
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
-- 資料表結構 `quotations`
--

CREATE TABLE `quotations` (
  `quotation_id` int(20) NOT NULL,
  `order_number` int(20) NOT NULL,
  `BSN` varchar(20) NOT NULL,
  `remarks` varchar(2000) NOT NULL,
  `photo_uploaded` tinyint(1) NOT NULL,
  `submition_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `user_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`username`, `password`, `user_type`) VALUES
('user1', 'pw1', 'hktcs'),
('user2', 'pw2', 'et'),
('user3', 'pw3', 'admin'),
('user4', 'pw4', 'et');

-- --------------------------------------------------------

--
-- 資料表結構 `workitems`
--

CREATE TABLE `workitems` (
  `work_item_id` varchar(20) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `unit_rate` double NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `workitems`
--

INSERT INTO `workitems` (`work_item_id`, `description`, `unit`, `unit_rate`, `type`) VALUES
('113', 'Cut Access Panel at Gypsum/Wooden Board Type False Ceiling and Make Good (400mm X 400mm)', 'Each', 1077.7, 'IBI'),
('114', 'Cut Access Panel at Gypsum/Wooden Board Type False Ceiling and Make Good (600mm X 600mm)', 'Each', 1171.4, 'IBI'),
('115', 'Cut Access Panel at Aluminum Type False Ceiling and ake Good (400mm X 400mm)', 'Each', 1089.5, 'IBI'),
('116', 'Cut Access Panel at Aluminum Type False Ceiling and Make Good (600mm X 600mm)', 'Each', 1197.3, 'IBI'),
('117', 'Dismantle and Reinstate Fragile/Complicated False Ceiling', 'Per Square metre', 72.4, 'IBI'),
('120', 'Cut and Reinstate Hole Through Wall/Floor up to 30mm Diameter/Square', 'Each', 99, 'IBI'),
('122', 'Cut and Reinstate Hole Through Wall/Floor up to 80mm Diameter/Square', 'Each', 251.4, 'IBI'),
('123', 'Cut and Reinstate Hole Through Wall/Floor up to 120mm Diameter/Square', 'Each', 288.6, 'IBI'),
('124', 'Cut and Reinstate Hole Through Wall/Floor up to 150mm Diameter/Square', 'Each', 359.9, 'IBI'),
('125', 'Supply and Install 20mm Diameter Galvanized Iron Conduit to BS4568', 'Per meter', 95.6, 'IBI'),
('126', 'Supply and Install 25mm Diameter Galvanized Iron Conduit to BS4568', 'Per meter', 103.8, 'IBI'),
('127', 'Supply and Install 32mm Diameter Galvanized Iron Conduit to BS4568', 'Per meter', 77.8, 'IBI'),
('128', 'Supply and install  up to 32mm Diameter PVC Coated Flexible Metal Conduit/ Flexible Metal Conduit', 'Per metre', 69.6, 'IBI'),
('129', 'Supply and install 50mm Diameter PVC Coated Flexible Metal Conduit/ Flexible Metal Conduit', 'Per metre', 90.3, 'ATG'),
('224', 'Dismantle & Reinstate \"Promat\" Board', 'Per Square metre', 88.4, 'IBI'),
('225', 'Supply of Skilled Planning Labour', 'Per Man-hour', 124.2, 'IBI'),
('226', 'Supply of Skilled Labour', '', 0, 'IBI'),
('34', 'Run & install Horziontal optical fibre, up to 4 cores, with associated components/outlets within 60 metres upon service subscription, Single-cable Run.', 'Each job', 301.1, 'IBI'),
('36', 'Run & install Horziontal optical fibre, up to 4 cores, with associated components/outlets within 100 metres upon service subscription, Single-cable Run.', 'Each job', 421.3, 'IBI'),
('42', 'Mechanical splicing of no polish connector (NPC) for single fibre with assembly tools', 'Per connector', 39.4, 'IBI'),
('94', 'Fix PVC Pipe up to 56mm Internal Diameter including Bracket and Saddle', 'Each job', 21.9, 'IBI'),
('96', 'Run and Fix Flexible Plastic Tube for Wiring Protection', 'Per metre', 5.7, 'IBI'),
('a.1', 'Additional Site Check (Fast PON, PON Replenishment, Project ...)', 'Man-hour', 65.2, 'ATG'),
('a.1', 'Additional Site Check (Fast PON, PON Replenishment, Project ...)', 'Per Man-hour', 62.7, 'IBI'),
('a.2', 'Additional Site Check ', 'Man-hour', 65.2, 'ATG'),
('a.2', 'Additional Site Check', 'Per Man-hour', 62.7, 'IBI'),
('b', 'BMO Permit Application', 'Man-hour', 65.2, 'ATG'),
('b', 'BMO Permit Application ', 'Per Man-hour', 62.7, 'IBI'),
('c', 'Outlets (socket)', 'Man-hour', 0, 'ATG'),
('c', 'Provide service by orders after normal working hours ', 'Per Man-hour', 62.7, 'IBI'),
('d', '', 'Man-hour', 65.2, 'ATG'),
('d', 'Outlets (socket)', 'Each', 31.4, 'IBI'),
('D1(H)   ', 'Provide service by orders after normal working hours (Per Hour)', 'Man-hour', 0, 'ATG'),
('D1(J)   ', 'Provide service by orders after normal working hours (Per Job)', 'Per Job', 0.1, 'ATG'),
('e', '<blank>', 'Per Man-hour', 62.7, 'IBI'),
('G1-1', 'Run & install optical fibre, 2/4 cores, horizontal with associated components/outlets within 60 metres upon service subscription', 'Each job', 400, 'ATG'),
('G1-2', 'Run & install optical fibre, 2/4 cores, horizontal with associated components/outlets within 100 metres upon service subscription\r\n', 'Each job', 500, 'ATG'),
('G2-116', 'Paint Conduit (All Types) ', 'Per metre', 15.5, 'ATG'),
('G2-117', 'Paint Metal Trunking 50-75mm to Match Surrounding', 'Metre', 24.3, 'ATG'),
('G2-118', 'Paint Metal Trunking 100-150mm to Match Surrounding', 'Metre', 27.5, 'ATG'),
('G2-121', 'Paint False Ceiling/Wall/Promat', 'Per square metre', 78.6, 'ATG'),
('G2-143', 'Supply and Install 2 Hours Fire Rating \'Promat Brand Board\' with Company Approved Materials for Fire Resisting Construction.', 'Square Metre', 971.4, 'ATG'),
('G2-144', 'Supply and Install 4 Hours Fire Rating \'Promat Brand Board\' with Company Approved Materials for Fire Resisting Construction.', 'Square Metre', 1092.2, 'ATG'),
('G2-145', 'Dismantle & Reinstate \"Promat\" Board ', 'Square Metre', 65.6, 'ATG'),
('G2-146', 'Supply of Skilled Planning Labour', 'Manhour', 94.2, 'ATG'),
('G2-147', 'Supply of Skilled Labour', '-', 0, 'ATG'),
('G2-22', 'Mechanical splicing of no polish connector (NPC) with single fibre with assembly tools\r\n', 'Per connector', 30.1, 'ATG'),
('G2-54', 'Fix PVC Pipe up to 56mm Internal Diameter including Bracket and Saddle\r\n', 'Metre', 15.6, 'ATG'),
('G2-55', 'Fix PVC Pipe 107mm Internal Diameter including Bracket and Saddle\r\n', 'Metre', 18.8, 'ATG'),
('G2-56', 'Run and Fix Flexible Plastic Tube for Wiring Protection\r\n', 'Metre', 5.7, 'ATG'),
('G2-57', 'Supply and On-site install Galvanized Iron Trunking (1.2mm thickness) 50mm x 50mm (including easy bends/adaptors/ accessories etc.)\r\n', 'Metre', 224.8, 'ATG'),
('G2-58', 'Supply and On-site install Galvanized Iron Trunking (1.2mm thickness) 75mm x 75mm (including easy bends/adaptors/ accessories etc.)\r\n', 'Metre', 239.1, 'ATG'),
('G2-59', 'Supply and On-site Install Galvanized Iron Trunking (1.2mm Thickness) 100mm x 100mm (including easy bends/adaptors/accessories etc.)\r\n', 'Metre', 262.2, 'ATG'),
('G2-60', 'Supply and On-site Install Galvanized Iron Trunking (1.2mm Thickness) 150mm x 150mm (including easy bends/adaptors/accessories etc.)', 'Metre', 385.2, 'ATG'),
('G2-69', 'Install PVC Trunking up to 100mm x 100 mm\r\n', 'Per metre', 49.1, 'ATG'),
('G2-72', 'Cut Access Panel at Gypsum/Wooden Board Type False Ceiling and Make Good (400mm x 400mm)\r\n', 'Each', 1119.1, 'ATG'),
('G2-73', 'Cut Access Panel at Gypsum/Wooden Board Type False Ceiling and Make Good (600mm x 600mm)\r\n', 'Each', 1171.9, 'ATG'),
('G2-74', 'Cut Access Panel at Aluminium Type False Ceiling and Make Good (400mm x 400mm) \r\n', 'Each', 1130.4, 'ATG'),
('G2-75', 'Cut Access Panel at Aluminium Type False Ceiling and Make Good (600mm x 600mm) \r\n', 'Each', 1246.3, 'ATG'),
('G2-76', 'Dismantle and Reinstate Fragile/Complicated False Ceiling\r\n', 'Square', 61.4, 'ATG'),
('G2-77', 'Cut and Make Good Hole on Dis-case up to 50mm Diameter\r\n', 'Each', 43.9, 'ATG'),
('G2-78', 'Cut Hole on Metal Trunk up to 50mm Diameter/Square and Cushion with Rubber Grommet/Brushing', 'Each', 51.1, 'ATG'),
('G2-79', 'Cut and Reinstate Hole Through Wall/Floor up to 30mm Diameter/Square', 'Each', 77.5, 'ATG'),
('G2-80', 'Cut and Reinstate Hole Through Wall/Floor up to 40mm Diameter/Square', 'Each', 93.6, 'ATG'),
('G2-81', 'Cut & Reinstate Hole through Wall/Floor up to 80mm diameter/square ', 'Each', 187.3, 'ATG'),
('G2-82', 'Cut & Reinstate Hole through Wall/Floor up to 120mm diameter/square ', 'Each', 299, 'ATG'),
('G2-83', 'Cut and Reinstate Hole Through Wall/Floor up to 150mm Diameter/Square', 'Each', 356.9, 'ATG'),
('G2-84', 'Supply and Install 20mm Diameter Galvanized Iron Conduit to BS4568', 'Per metre', 81.3, 'ATG'),
('G2-85', 'Supply and Install 25mm Diameter Galvanized Iron Conduit to BS4568', 'Per metre', 108.8, 'ATG'),
('G2-86', 'Supply and Install 32mm Diameter Galvanized Iron Conduit to BS4568', 'Per metre', 103.9, 'ATG'),
('G2-87', 'Supply and Install up to 32mm Diameter PVC Coated Flexible Metal Conduit/Flexible Metal Conduit', 'Per metre', 126.4, 'ATG'),
('G2-88', 'Supply and Install 50mm Diameter PVC Coated Flexible Metal Conduit/Flexible Metal Conduit', 'Per metre', 145, 'ATG'),
('H7.1', 'High Working Platform  Up to 5M height, 2 days per job ', 'Each ', 2000, 'ATG'),
('H7.2', 'High Working Platform  Up to 5M height, 1 week per job', 'Each ', 3000, 'ATG'),
('H7.3', 'High Working Platform  Up to 9M height, 2 days per job ', 'Each ', 4000, 'ATG'),
('H7.4', 'High Working Platform  Up to 9M height, 1 week per job', 'Each ', 5000, 'ATG'),
('MIS.1', 'Third Party Charges (eg BMO, Nom-Contractor...)', 'Man-hour', 65.2, 'ATG'),
('MIS.1', 'High Working Platform ', 'Per Man-hour', 62.7, 'IBI'),
('MIS.2', '', 'Man-hour', 65.2, 'ATG'),
('MIS.2', 'Third Party Charges (eg BMO, Nom-Contractor...)', 'Per Man-hour', 62.7, 'IBI');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `engineeringteams`
--
ALTER TABLE `engineeringteams`
  ADD PRIMARY KEY (`team_id`),
  ADD KEY `username` (`username`);

--
-- 資料表索引 `hktcontrolstaffs`
--
ALTER TABLE `hktcontrolstaffs`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `username` (`username`);

--
-- 資料表索引 `itemcases`
--
ALTER TABLE `itemcases`
  ADD PRIMARY KEY (`item_case_id`),
  ADD KEY `quotation_id` (`quotation_id`),
  ADD KEY `work_item_id` (`work_item_id`);

--
-- 資料表索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_number`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `pending_reason_id` (`pending_reason_id`);

--
-- 資料表索引 `orderupdatelog`
--
ALTER TABLE `orderupdatelog`
  ADD PRIMARY KEY (`update_id`);

--
-- 資料表索引 `pendingcases`
--
ALTER TABLE `pendingcases`
  ADD PRIMARY KEY (`case_id`),
  ADD KEY `order_number` (`order_number`),
  ADD KEY `pending_reason_id` (`pending_reason_id`);

--
-- 資料表索引 `pendingreasons`
--
ALTER TABLE `pendingreasons`
  ADD PRIMARY KEY (`reason_id`);

--
-- 資料表索引 `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`quotation_id`),
  ADD KEY `order_number` (`order_number`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- 資料表索引 `workitems`
--
ALTER TABLE `workitems`
  ADD PRIMARY KEY (`work_item_id`,`type`);

--
-- 在傾印的資料表使用自動增長(AUTO_INCREMENT)
--

--
-- 使用資料表自動增長(AUTO_INCREMENT) `engineeringteams`
--
ALTER TABLE `engineeringteams`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `hktcontrolstaffs`
--
ALTER TABLE `hktcontrolstaffs`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `itemcases`
--
ALTER TABLE `itemcases`
  MODIFY `item_case_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `orderupdatelog`
--
ALTER TABLE `orderupdatelog`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `pendingcases`
--
ALTER TABLE `pendingcases`
  MODIFY `case_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `pendingreasons`
--
ALTER TABLE `pendingreasons`
  MODIFY `reason_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `quotations`
--
ALTER TABLE `quotations`
  MODIFY `quotation_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 已傾印資料表的限制(constraint)
--

--
-- 資料表的限制(constraint) `engineeringteams`
--
ALTER TABLE `engineeringteams`
  ADD CONSTRAINT `engineeringteams_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- 資料表的限制(constraint) `hktcontrolstaffs`
--
ALTER TABLE `hktcontrolstaffs`
  ADD CONSTRAINT `hktcontrolstaffs_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- 資料表的限制(constraint) `itemcases`
--
ALTER TABLE `itemcases`
  ADD CONSTRAINT `itemcases_ibfk_1` FOREIGN KEY (`quotation_id`) REFERENCES `quotations` (`quotation_id`),
  ADD CONSTRAINT `itemcases_ibfk_2` FOREIGN KEY (`work_item_id`) REFERENCES `workitems` (`work_item_id`);

--
-- 資料表的限制(constraint) `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `engineeringteams` (`team_id`),
  ADD CONSTRAINT `pending_reason_id` FOREIGN KEY (`pending_reason_id`) REFERENCES `pendingreasons` (`reason_id`);

--
-- 資料表的限制(constraint) `pendingcases`
--
ALTER TABLE `pendingcases`
  ADD CONSTRAINT `pendingcases_ibfk_1` FOREIGN KEY (`order_number`) REFERENCES `orders` (`order_number`),
  ADD CONSTRAINT `pendingcases_ibfk_2` FOREIGN KEY (`pending_reason_id`) REFERENCES `pendingreasons` (`reason_id`);

--
-- 資料表的限制(constraint) `quotations`
--
ALTER TABLE `quotations`
  ADD CONSTRAINT `quotations_ibfk_1` FOREIGN KEY (`order_number`) REFERENCES `orders` (`order_number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
