-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2021 at 11:57 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ticket32145`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(14, 'System'),
(15, 'Localhost');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) NOT NULL,
  `firstname` varchar(30) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `groupId` mediumint(9) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventlog`
--

CREATE TABLE `eventlog` (
  `id` bigint(20) NOT NULL,
  `ticketid` bigint(20) NOT NULL,
  `eventdate` datetime NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `clientid` bigint(20) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `categoryid` bigint(20) DEFAULT NULL,
  `subcategoryid` bigint(20) DEFAULT NULL,
  `assigneduser` varchar(30) DEFAULT NULL,
  `parentticketid` bigint(20) DEFAULT NULL,
  `groupid` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventlog`
--

INSERT INTO `eventlog` (`id`, `ticketid`, `eventdate`, `status`, `clientid`, `subject`, `categoryid`, `subcategoryid`, `assigneduser`, `parentticketid`, `groupid`) VALUES
(1, 94, '2020-09-04 21:45:25', 'Open', 1007, 'test ticket', 14, 39, 'dineshkummarc ', 0, 2),
(2, 94, '2020-09-04 23:03:46', 'Open', 1007, 'test ticket', 14, 39, 'dineshkummarc  ', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) NOT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`) VALUES
(1, 'accounting'),
(2, 'IT'),
(3, 'Marketing');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `categoryid` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `categoryid`) VALUES
(39, 'Subsystem', 14),
(40, 'Rocket', 15),
(41, 'RHSApp', 15);

-- --------------------------------------------------------

--
-- Table structure for table `system`
--

CREATE TABLE `system` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system`
--

INSERT INTO `system` (`id`, `name`, `value`) VALUES
(1, 'version', '0.3'),
(2, 'Authentication', 'Native'),
(3, 'system email', 'notice@ticketdesk.com'),
(4, 'language', 'English'),
(5, 'siteurl', 'http://local.rocket.co.in:8081/test/ticket-desk/'),
(6, 'brand', 'Ticket Desk');

-- --------------------------------------------------------

--
-- Table structure for table `systemlanguage`
--

CREATE TABLE `systemlanguage` (
  `id` mediumint(9) NOT NULL,
  `language` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `systemlanguage`
--

INSERT INTO `systemlanguage` (`id`, `language`, `keyword`, `value`) VALUES
(1, 'english', 'save', 'save'),
(2, 'english', 'ticket', 'ticket'),
(3, 'english', 'client', 'client'),
(4, 'english', 'subject', 'subject'),
(5, 'english', 'details', 'details'),
(6, 'english', 'create', 'create'),
(7, 'english', 'close', 'close'),
(8, 'english', 'category', 'category'),
(9, 'english', 'subcategory', 'sub category'),
(10, 'english', 'assigned', 'assigned'),
(11, 'english', 'status', 'status'),
(12, 'english', 'reset', 'reset'),
(13, 'english', 'New Ticket', 'New Ticket'),
(14, 'english', 'Recent Ticket', 'Recent Ticket'),
(15, 'english', 'Search', 'Search'),
(16, 'english', 'Submit', 'Submit'),
(17, 'english', 'Open', 'Open'),
(18, 'english', 'Closed', 'Closed'),
(19, 'english', 'Ticket Desk', 'Ticket Desk'),
(20, 'english', 'Tickets', 'Tickets'),
(21, 'english', 'Reports', 'Reports'),
(22, 'english', 'System', 'System'),
(23, 'english', 'My Tickets', 'My Tickets'),
(24, 'english', 'All', 'All'),
(25, 'english', 'Waiting On Client', 'Waiting On Client'),
(26, 'english', 'Waiting On Agent', 'Waiting On Agent'),
(27, 'english', 'Waiting On Other', 'Waiting On Other'),
(28, 'english', 'Report Name', 'Report Name'),
(29, 'english', 'Start Date', 'Start Date'),
(30, 'english', 'End Date', 'End Date'),
(31, 'english', 'Created by', 'Created by'),
(32, 'english', 'Categories', 'Categories'),
(33, 'english', 'Users', 'Users'),
(34, 'english', 'Groups', 'Groups'),
(35, 'english', 'Log Out', 'Log Out'),
(36, 'english', 'Log In', 'Log In'),
(37, 'english', 'Forgot?', 'Forgot?'),
(38, 'english', 'Register', 'Register'),
(39, 'english', 'Username', 'Username'),
(40, 'english', 'Password', 'Password'),
(41, 'english', 'Add', 'Add'),
(42, 'english', 'Delete', 'Delete'),
(43, 'english', 'Save', 'Save');

-- --------------------------------------------------------

--
-- Table structure for table `ticketattachments`
--

CREATE TABLE `ticketattachments` (
  `ticketid` bigint(20) NOT NULL,
  `filepath` varchar(200) DEFAULT NULL,
  `filetype` varchar(50) DEFAULT NULL,
  `filename` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ticketnotes`
--

CREATE TABLE `ticketnotes` (
  `id` bigint(20) NOT NULL,
  `ticketid` bigint(20) NOT NULL,
  `note` varchar(8000) NOT NULL,
  `user` varchar(30) NOT NULL,
  `notedate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticketnotes`
--

INSERT INTO `ticketnotes` (`id`, `ticketid`, `note`, `user`, `notedate`) VALUES
(112, 94, 'test ticket test ticket test ticket test ticket', 'dineshkummarc', '2020-09-04 21:45:23');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) NOT NULL,
  `clientid` bigint(20) DEFAULT NULL,
  `user` varchar(30) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `categoryid` bigint(20) NOT NULL,
  `subcategoryid` bigint(20) DEFAULT NULL,
  `comments` varchar(8000) DEFAULT NULL,
  `transferyn` tinyint(1) DEFAULT NULL,
  `groupid` mediumint(9) DEFAULT NULL,
  `opendate` datetime NOT NULL,
  `parentticketid` bigint(20) DEFAULT 0,
  `assigneduser` varchar(30) DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `clientid`, `user`, `subject`, `categoryid`, `subcategoryid`, `comments`, `transferyn`, `groupid`, `opendate`, `parentticketid`, `assigneduser`, `lastupdate`) VALUES
(94, 10, 'dineshkummarc', 'test ticket', 14, 39, 'test tickettest tickettest tickettest tickettest tickettest ticket  ', NULL, NULL, '2020-09-04 21:44:10', 0, 'dineshkummarc  ', NULL),
(95, 10, 'dineshkummarc', 'Test for the creation of ticket', 14, NULL, 'Test for the creation of ticket, Test for the creation of ticket, Test for the creation of ticket', NULL, NULL, '2020-09-05 11:27:19', 0, 'dineshkummarc', NULL),
(96, 10, 'dineshkummarc', 'Test for the creation of ticket', 14, NULL, 'Test for the creation of ticket, Test for the creation of ticket, Test for the creation of ticket', NULL, NULL, '2020-09-05 11:30:01', 0, 'dineshkummarc', NULL),
(97, 11, 'admin', 'My Newletter List', 14, 39, 'My Newletter List', NULL, NULL, '2021-02-03 13:51:51', 0, 'admin', NULL),
(98, 11, 'admin', 'New Ticket', 14, 0, 'My Newletter ListMy Newletter List', NULL, NULL, '2021-02-03 13:53:25', 0, 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ticketstatus`
--

CREATE TABLE `ticketstatus` (
  `id` bigint(20) NOT NULL,
  `ticketid` bigint(20) NOT NULL,
  `status` varchar(50) NOT NULL,
  `statusdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticketstatus`
--

INSERT INTO `ticketstatus` (`id`, `ticketid`, `status`, `statusdate`) VALUES
(333, 94, 'Open', '2020-09-04 21:44:10'),
(334, 94, 'Open', '2020-09-04 21:45:25'),
(335, 94, 'Open', '2020-09-04 23:03:46'),
(336, 95, 'Closed', '2020-09-05 11:27:19'),
(337, 96, 'Closed', '2020-09-05 11:30:01'),
(338, 97, 'Open', '2021-02-03 13:51:51'),
(339, 98, 'Open', '2021-02-03 13:53:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` char(128) NOT NULL,
  `salt` char(128) NOT NULL,
  `email` varchar(255) NOT NULL,
  `groupid` mediumint(9) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `salt`, `email`, `groupid`) VALUES
(10, 'dineshkummarc', '6aa1ee5d8df030f3d3ccfb26e01d4e67ac2dd05a6edc88386a46520d98186c714a3a94f20bd6aef668a8b9b0028d4501fa7aa772d8e18fa41409916d0dda2a7b', 'a61268c69e4bdd09d74546b0ca9c6f6e167bc4710e5264380fe3fb73a3e0c82b7dc506a794aa30685a80ab807edfb9a65a011e95eae3c0e31eb6779b5fb5245e', 'dineshkummarc@yahoo.com', NULL),
(11, 'admin', 'ddee7764d200ee3fdc6895d3fae0da653c33708cd093ab13de7dd794fbd53497ae4d9142931999978fd072744b1878471e4844f5135568bcda047d98a647881c', '7b1264cd46c6474f50fdb8deacb7ea613c348afa030041597816d03271775c95bc056287e26aafb6bd93da3297cd8fd7d89d16e3449f5dfd93ff00fb8798e74c', 'admin@admin.com', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eventlog`
--
ALTER TABLE `eventlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system`
--
ALTER TABLE `system`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `systemlanguage`
--
ALTER TABLE `systemlanguage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticketnotes`
--
ALTER TABLE `ticketnotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `ticketstatus`
--
ALTER TABLE `ticketstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eventlog`
--
ALTER TABLE `eventlog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `system`
--
ALTER TABLE `system`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `systemlanguage`
--
ALTER TABLE `systemlanguage`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `ticketnotes`
--
ALTER TABLE `ticketnotes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `ticketstatus`
--
ALTER TABLE `ticketstatus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
