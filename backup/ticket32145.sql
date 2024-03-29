-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2021 at 12:49 PM
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
(26, 'High'),
(25, 'Blocker'),
(24, 'General'),
(23, 'Critical'),
(27, 'Medium'),
(28, 'Low');

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
(12, 115, '2021-02-04 12:21:27', 'Rejected', NULL, 'My First Ticket for user admin', 16, 42, 'admin     ', 0, 0),
(11, 115, '2021-02-04 12:21:10', 'Not Applicable', NULL, 'My First Ticket for user admin', 16, 42, 'admin    ', 0, 0),
(10, 115, '2021-02-04 12:20:18', 'In Progress', NULL, 'My First Ticket for user admin', 16, 42, 'admin   ', 0, 0),
(9, 115, '2021-02-04 07:00:25', 'Waiting on Agent', NULL, 'My First Ticket for user admin', 16, 42, 'admin  ', 0, 0),
(8, 115, '2021-02-04 06:55:31', 'Waiting on Client', NULL, 'My First Ticket for user admin', 16, 42, 'admin ', 0, 5),
(13, 118, '2021-02-04 14:27:29', 'In Progress', NULL, 'My ticket with Status in progress', 16, 42, 'admin ', 0, 0),
(14, 119, '2021-02-04 14:31:58', 'Waiting on Agent', NULL, 'My ticket with Status WOA', 0, NULL, 'admin ', 0, 0),
(15, 120, '2021-02-04 14:33:16', 'Waiting on Client', NULL, 'My ticket with Status WOC', 0, NULL, 'admin ', 0, 0),
(16, 121, '2021-02-04 14:34:32', 'Waiting on 3rd Party', NULL, 'My ticket with Status WO3P', 0, NULL, 'admin ', 0, 0),
(17, 122, '2021-02-04 14:36:31', 'Not Applicable', NULL, 'My ticket with Status NA', 0, NULL, 'admin ', 0, 0);

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
(1, 'Accounting'),
(2, 'IT'),
(3, 'Marketing'),
(4, 'QA'),
(5, 'Testing'),
(6, 'Management'),
(7, 'Finance');

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
(43, 'Rocket', 24),
(42, 'Rocket', 16);

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
(43, 'english', 'Save', 'Save'),
(44, 'english', 'In Progress', 'In Progress'),
(45, 'english', 'Not Applicable', 'Not Applicable'),
(46, 'english', 'Rejected', 'Rejected');

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
(122, NULL, 'admin', 'My ticket with Status NA', 0, NULL, 'My ticket with Status NA ', NULL, NULL, '2021-02-04 14:36:17', 0, 'admin ', NULL),
(121, NULL, 'admin', 'My ticket with Status WO3P', 0, NULL, 'My ticket with Status WO3P ', NULL, NULL, '2021-02-04 14:34:22', 0, 'admin ', NULL),
(120, NULL, 'admin', 'My ticket with Status WOC', 0, NULL, 'My ticket with Status WOC ', NULL, NULL, '2021-02-04 14:33:06', 0, 'admin ', NULL),
(119, NULL, 'admin', 'My ticket with Status WOA', 0, NULL, 'My ticket with Status WOA ', NULL, NULL, '2021-02-04 14:31:46', 0, 'admin ', NULL),
(118, NULL, 'admin', 'My ticket with Status in progress', 16, 42, 'My ticket with Status in progress ', NULL, NULL, '2021-02-04 14:27:17', 0, 'admin ', NULL),
(117, NULL, 'admin', 'My ticket with Status Closed', 0, NULL, 'My ticket with Status Closed', NULL, NULL, '2021-02-04 14:23:02', 0, 'admin', NULL),
(116, NULL, 'admin', 'My ticket with Status Open', 16, 42, 'My ticket with Status Open', NULL, NULL, '2021-02-04 14:22:37', 0, 'admin', NULL),
(115, NULL, 'admin', 'My First Ticket for user admin', 16, 42, 'My First Ticket for user admin     ', NULL, NULL, '2021-02-04 06:54:58', 0, 'admin     ', NULL);

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
(357, 118, 'In Progress', '2021-02-04 14:27:29'),
(356, 118, 'Open', '2021-02-04 14:27:17'),
(355, 117, 'Closed', '2021-02-04 14:23:02'),
(354, 116, 'Open', '2021-02-04 14:22:37'),
(353, 115, 'Rejected', '2021-02-04 12:21:27'),
(352, 115, 'Not Applicable', '2021-02-04 12:21:10'),
(351, 115, 'In Progress', '2021-02-04 12:20:18'),
(350, 115, 'Waiting on Agent', '2021-02-04 07:00:25'),
(349, 115, 'Waiting on Client', '2021-02-04 06:55:31'),
(348, 115, 'Open', '2021-02-04 06:54:58'),
(358, 119, 'Open', '2021-02-04 14:31:46'),
(359, 119, 'Waiting on Agent', '2021-02-04 14:31:58'),
(360, 120, 'Open', '2021-02-04 14:33:06'),
(361, 120, 'Waiting on Client', '2021-02-04 14:33:16'),
(362, 121, 'Open', '2021-02-04 14:34:22'),
(363, 121, 'Waiting on 3rd Party', '2021-02-04 14:34:32'),
(364, 122, 'Open', '2021-02-04 14:36:17'),
(365, 122, 'Not Applicable', '2021-02-04 14:36:31');

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eventlog`
--
ALTER TABLE `eventlog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `system`
--
ALTER TABLE `system`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `systemlanguage`
--
ALTER TABLE `systemlanguage`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `ticketnotes`
--
ALTER TABLE `ticketnotes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `ticketstatus`
--
ALTER TABLE `ticketstatus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=366;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
