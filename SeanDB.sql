-- phpMyAdmin SQL Dump
-- version 4.4.15.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 18, 2016 at 12:59 PM
-- Server version: 5.0.95
-- PHP Version: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `SeanDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL auto_increment,
  `page_title` varchar(250) NOT NULL,
  `page_content` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_title`, `page_content`) VALUES
(1, 'News', '<div class="container2">\r\n	<img src="Cake.png" alt="Picture of cake" />\r\n	<h4>Website is Live!</h4>\r\n	<p>Welcome to Scrumptious! Our new website is now</p>\r\n	<p>live for all our customers to see.</P>\r\n	<h4>celebration Cakes</h4>\r\n	<p>Scrumptious is now serving celebration</p>\r\n	<p>Cakes for different occasions such as wedding,</p>\r\n	<p>anniversary or Birthday etc. we have also started</p>\r\n	<p>doing different themes and designs for our Celebration cakes.</p>\r\n	<h4>Scrumptious now open!</h4>\r\n	<p>Scrumptious is now open for all your bakery needs.\r\n	</p>\r\n	<img src="bread-5.png" class="otherimage" alt="Picture of bread." />\r\n	<img src="sausageroll.png" class="otherimage" alt="picutre of Sausage rolls." />'),
(2, '', ''),
(3, 'About us', 'Lorem Ipsum'),
(5, 'About Us', '	<p>Scrumptious (Hull), was founded in 2015</p>\r\n	<p>as a bakery with the intention of serving</p>\r\n	<p>top quality food to our customers.</p>\r\n\r\n	<img src="bread-5.png" alt="Picture of bread." />\r\n	<img src="sausageroll.png" alt="Picture of Sausage rolls." />\r\n	<img src="pasties-1.png" alt="Picture of pasty." />\r\n	\r\n	<p>Opening times</p>\r\n	<p>Monday|9:00AM - 4:00PM</p>\r\n	<p>Tuesday|9:00AM - 4:00PM</p>\r\n	<p>Wednesday|9:00AM - 4:00PM</p>\r\n	<p>Thursday|9:00AM - 4:00PM</p>\r\n	<p>Friday|9:00AM - 4:00PM</p>\r\n	<p>Saturday|9:00AM - 2:00PM</p>\r\n	<p>Sunday|9:00AM - 12:00PM</p>'),
(9, '', ''),
(7, 'Contact Us', '<p>Call us: (01482)596784958\r\n	</p>\r\n	<p>Email: Scrumptious@fakeemail.co.uk\r\n	</p>'),
(8, 'Services', '<p>Our services consist of your run of the mill sandwiches such as ham or chicken etc. to more interesting foods such as cakes or if you want more simple foods we have pasties, pies, yum yums, sausage rolls plus much more!\r\n</p>\r\n <img src="pasties-1.png" class="image2" alt="Picture of a pasty." />\r\n  <img src="bread2.png" class="image2" alt="Picture of bread." />\r\n	</div>'),
(15, 'Testing', 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `scrumptious_client_information`
--

CREATE TABLE IF NOT EXISTS `scrumptious_client_information` (
  `User_id` int(11) NOT NULL auto_increment,
  `First_Name` varchar(35) NOT NULL,
  `Surname` varchar(35) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Address_Line_1` varchar(50) NOT NULL,
  `Address_Line_2` varchar(50) default NULL,
  `Postcode` varchar(9) NOT NULL,
  `City` varchar(60) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Phone` varchar(20) default NULL,
  `Password` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scrumptious_client_information`
--

INSERT INTO `scrumptious_client_information` (`User_id`, `First_Name`, `Surname`, `Username`, `Address_Line_1`, `Address_Line_2`, `Postcode`, `City`, `Email`, `Phone`, `Password`) VALUES
(1, 'Bob', 'test', 'tested', 'Where I am now', NULL, 'HU1 3DG', 'Hull', 'ME@Me.co.uk', NULL, 'test123'),
(5, '', '', '', '', '', '', '', '', '', ''),
(3, 'Ethan', 'Gibson', 'ethanjim', 'fasdfasdfa', 'sdfasdfasdf', '234234', '23472342', 'dfasdfasdf', 'sadfasdfasd', 'test123'),
(6, '', '', '', '', '', '', '', '', '', ''),
(7, '', '', '', '', '', '', '', '', '', ''),
(8, 'Testing', 'Testy', 'Testy', 'bjhb', 'drgrd', 'rdgrdrbh', 'gr', 'test@test.com', '846516814', 'Testy');

-- --------------------------------------------------------

--
-- Table structure for table `SeanDB`
--

CREATE TABLE IF NOT EXISTS `SeanDB` (
  `id` int(11) NOT NULL auto_increment,
  `page_title` varchar(35) NOT NULL,
  `page_contents` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SeanDB`
--

INSERT INTO `SeanDB` (`id`, `page_title`, `page_contents`) VALUES
(4, '', ''),
(2, 'Stuff', '			\r\nMoney'),
(3, 'Zerg Rush', 'MORE!			\r\n'),
(5, '', ''),
(6, '', ''),
(7, 'jamie', '			\r\n'),
(8, 'ryan', '			\r\n'),
(9, 'sean', '			\r\n'),
(10, 'james', '			\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY  (`id`);

--
-- Indexes for table `scrumptious_client_information`
--
ALTER TABLE `scrumptious_client_information`
  ADD PRIMARY KEY  (`User_id`);

--
-- Indexes for table `SeanDB`
--
ALTER TABLE `SeanDB`
  ADD PRIMARY KEY  (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `scrumptious_client_information`
--
ALTER TABLE `scrumptious_client_information`
AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `SeanDB`
--
ALTER TABLE `SeanDB`
AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
