2-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 12:40 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '32250170a0dca92d53ec9624f336ca24', '2023-05-19 09:50:21');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `BookingNumber` bigint(12) DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `BookingNumber`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`, `LastUpdationDate`) VALUES
(1, 123456789, 'test@gmail.com', 1, '2020-07-07', '2020-07-09', 'What  is the cost?', 1, '2020-07-07 14:03:09', NULL),
(2, 987456321, 'test@gmail.com', 4, '2020-07-19', '2020-07-24', 'hfghg', 1, '2020-07-09 17:49:21', '2020-07-11 12:20:57'),
(3, 332538287, 'manuel@gmail.com', 3, '2023-05-26', '2023-05-27', 'One Day Booking ', 1, '2023-05-19 09:49:15', '2023-05-19 09:52:37'),
(4, 285524514, 'manuel@gmail.com', 1, '2023-05-30', '2023-05-30', 'Just for a day', 1, '2023-05-30 21:27:11', '2023-06-02 11:33:12');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Maruti', '2017-06-18 16:24:34', '2017-06-19 06:42:23'),
(2, 'BMW', '2017-06-18 16:24:50', NULL),
(3, 'Audi', '2017-06-18 16:25:03', NULL),
(4, 'Nissan', '2017-06-18 16:25:13', NULL),
(5, 'Toyota', '2017-06-18 16:25:24', NULL),
(7, 'Volkswagon', '2017-06-19 06:22:13', '2020-07-07 14:14:09'),
(8, 'Mercedes-Benz ', '2023-05-30 17:40:51', NULL),
(9, 'Mazda', '2023-05-30 17:59:07', NULL),
(10, 'Toyota', '2023-06-04 14:56:50', NULL),
(11, 'Innoson', '2023-06-04 16:34:31', NULL),
(12, 'Lexus', '2023-06-05 15:40:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Wellspring University', 'contact@giwacars.com', '08156038366');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Kunal ', 'kunal@gmail.com', '7977779798', 'I want to know you brach in Chandigarh?', '2020-07-07 09:34:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '										<p class=\"MsoNormal\"><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\">Giwa Cars - Terms and Conditions</span></b><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">Please read the following terms and conditions carefully before renting a vehicle from Giwa Cars. By renting a vehicle from us, you acknowledge and agree to abide by these terms and conditions:</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-left:21.2500pt;mso-para-margin-left:0.0000gd;text-indent:-21.2500pt;\r\nmso-char-indent-count:0.0000;mso-list:l7 level1 lfo1;\"><!--[if !supportLists]--><span style=\"font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;font-weight:bold;\r\nfont-size:12.0000pt;\">1.&nbsp;</span><!--[endif]--><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\">Rental Requirements</span></b><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">:</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-left:21.0000pt;mso-para-margin-left:0.0000gd;text-indent:-21.0000pt;\r\nmso-char-indent-count:0.0000;mso-list:l2 level1 lfo2;\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:SimSun;mso-bidi-font-family:\'Times New Roman\';\r\nfont-size:12.0000pt;\">l&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">The renter must be at least 21 years old (age requirements may vary by location) and possess a valid driver\'s license.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left:21.0000pt;mso-para-margin-left:0.0000gd;text-indent:-21.0000pt;\r\nmso-char-indent-count:0.0000;mso-list:l2 level1 lfo2;\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:SimSun;mso-bidi-font-family:\'Times New Roman\';\r\nfont-size:12.0000pt;\">l&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">A valid credit card in the renter\'s name is required for payment and as a security deposit.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left:21.0000pt;mso-para-margin-left:0.0000gd;text-indent:-21.0000pt;\r\nmso-char-indent-count:0.0000;mso-list:l2 level1 lfo2;\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:SimSun;mso-bidi-font-family:\'Times New Roman\';\r\nfont-size:12.0000pt;\">l&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">The renter must provide a government-issued identification document.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-left:21.2500pt;mso-para-margin-left:0.0000gd;text-indent:-21.2500pt;\r\nmso-char-indent-count:0.0000;mso-list:l7 level1 lfo1;\"><!--[if !supportLists]--><span style=\"font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;font-weight:bold;\r\nfont-size:12.0000pt;\">2.&nbsp;</span><!--[endif]--><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\">Booking and Reservations:</span></b><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-left:21.0000pt;mso-para-margin-left:0.0000gd;text-indent:-21.0000pt;\r\nmso-char-indent-count:0.0000;mso-list:l0 level1 lfo3;\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:SimSun;mso-bidi-font-family:\'Times New Roman\';\r\nfont-size:12.0000pt;\">l&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">Reservations can be made through our website, mobile app, or by contacting our customer service team.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left:21.0000pt;mso-para-margin-left:0.0000gd;text-indent:-21.0000pt;\r\nmso-char-indent-count:0.0000;mso-list:l0 level1 lfo3;\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:SimSun;mso-bidi-font-family:\'Times New Roman\';\r\nfont-size:12.0000pt;\">l&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">We recommend booking in advance to ensure vehicle availability, especially during peak travel seasons.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left:21.0000pt;mso-para-margin-left:0.0000gd;text-indent:-21.0000pt;\r\nmso-char-indent-count:0.0000;mso-list:l0 level1 lfo3;\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:SimSun;mso-bidi-font-family:\'Times New Roman\';\r\nfont-size:12.0000pt;\">l&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">The reservation is subject to vehicle availability and confirmation from Giwa Cars.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-left:21.2500pt;mso-para-margin-left:0.0000gd;text-indent:-21.2500pt;\r\nmso-char-indent-count:0.0000;mso-list:l7 level1 lfo1;\"><!--[if !supportLists]--><span style=\"font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;font-weight:bold;\r\nfont-size:12.0000pt;\">3.&nbsp;</span><!--[endif]--><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\">Rental Duration:</span></b><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-left:21.0000pt;mso-para-margin-left:0.0000gd;text-indent:-21.0000pt;\r\nmso-char-indent-count:0.0000;mso-list:l4 level1 lfo4;\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:SimSun;mso-bidi-font-family:\'Times New Roman\';\r\nfont-size:12.0000pt;\">l&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">The rental period begins and ends on the dates and times specified in the rental agreement.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left:21.0000pt;mso-para-margin-left:0.0000gd;text-indent:-21.0000pt;\r\nmso-char-indent-count:0.0000;mso-list:l4 level1 lfo4;\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:SimSun;mso-bidi-font-family:\'Times New Roman\';\r\nfont-size:12.0000pt;\">l&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">Early returns do not entitle the renter to any refund or adjustment in the rental price.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-left:21.2500pt;mso-para-margin-left:0.0000gd;text-indent:-21.2500pt;\r\nmso-char-indent-count:0.0000;mso-list:l7 level1 lfo1;\"><!--[if !supportLists]--><span style=\"font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;font-weight:bold;\r\nfont-size:12.0000pt;\">4.&nbsp;</span><!--[endif]--><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\">Rental Rates and Payments:</span></b><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-left:21.0000pt;mso-para-margin-left:0.0000gd;text-indent:-21.0000pt;\r\nmso-char-indent-count:0.0000;mso-list:l1 level1 lfo5;\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:SimSun;mso-bidi-font-family:\'Times New Roman\';\r\nfont-size:12.0000pt;\">l&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">The rental rates are based on the type of vehicle, rental period, and any additional services or options requested.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left:21.0000pt;mso-para-margin-left:0.0000gd;text-indent:-21.0000pt;\r\nmso-char-indent-count:0.0000;mso-list:l1 level1 lfo5;\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:SimSun;mso-bidi-font-family:\'Times New Roman\';\r\nfont-size:12.0000pt;\">l&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">The renter agrees to pay the rental charges, taxes, and any applicable fees as outlined in the rental agreement.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left:21.0000pt;mso-para-margin-left:0.0000gd;text-indent:-21.0000pt;\r\nmso-char-indent-count:0.0000;mso-list:l1 level1 lfo5;\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:SimSun;mso-bidi-font-family:\'Times New Roman\';\r\nfont-size:12.0000pt;\">l&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">Payment is typically made using a credit card. Cash or alternative payment methods may be accepted in specific cases.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-left:21.2500pt;mso-para-margin-left:0.0000gd;text-indent:-21.2500pt;\r\nmso-char-indent-count:0.0000;mso-list:l7 level1 lfo1;\"><!--[if !supportLists]--><span style=\"font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;font-weight:bold;\r\nfont-size:12.0000pt;\">5.&nbsp;</span><!--[endif]--><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\">Insurance and Liability:</span></b><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-left:21.0000pt;mso-para-margin-left:0.0000gd;text-indent:-21.0000pt;\r\nmso-char-indent-count:0.0000;mso-list:l9 level1 lfo6;\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:SimSun;mso-bidi-font-family:\'Times New Roman\';\r\nfont-size:12.0000pt;\">l&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">Basic insurance coverage is included in the rental price. The details of the coverage and any limitations or deductibles will be provided in the rental agreement.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left:21.0000pt;mso-para-margin-left:0.0000gd;text-indent:-21.0000pt;\r\nmso-char-indent-count:0.0000;mso-list:l9 level1 lfo6;\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:SimSun;mso-bidi-font-family:\'Times New Roman\';\r\nfont-size:12.0000pt;\">l&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">The renter is responsible for any damage, loss, or theft of the vehicle during the rental period, subject to the terms of the insurance coverage and applicable laws.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-left:21.2500pt;mso-para-margin-left:0.0000gd;text-indent:-21.2500pt;\r\nmso-char-indent-count:0.0000;mso-list:l7 level1 lfo1;\"><!--[if !supportLists]--><span style=\"font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;font-weight:bold;\r\nfont-size:12.0000pt;\">6.&nbsp;</span><!--[endif]--><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\">Additional Drivers:</span></b><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-left:21.0000pt;mso-para-margin-left:0.0000gd;text-indent:-21.0000pt;\r\nmso-char-indent-count:0.0000;mso-list:l3 level1 lfo7;\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:SimSun;mso-bidi-font-family:\'Times New Roman\';\r\nfont-size:12.0000pt;\">l&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">Additional drivers can be added to the rental agreement with the renter\'s permission.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left:21.0000pt;mso-para-margin-left:0.0000gd;text-indent:-21.0000pt;\r\nmso-char-indent-count:0.0000;mso-list:l3 level1 lfo7;\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:SimSun;mso-bidi-font-family:\'Times New Roman\';\r\nfont-size:12.0000pt;\">l&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">All additional drivers must meet the age and driver\'s license requirements and provide their information at the time of rental.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left:21.0000pt;mso-para-margin-left:0.0000gd;text-indent:-21.0000pt;\r\nmso-char-indent-count:0.0000;mso-list:l3 level1 lfo7;\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:SimSun;mso-bidi-font-family:\'Times New Roman\';\r\nfont-size:12.0000pt;\">l&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">Additional driver fees may apply.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-left:21.2500pt;mso-para-margin-left:0.0000gd;text-indent:-21.2500pt;\r\nmso-char-indent-count:0.0000;mso-list:l7 level1 lfo1;\"><!--[if !supportLists]--><span style=\"font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;font-weight:bold;\r\nfont-size:12.0000pt;\">7.&nbsp;</span><!--[endif]--><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\">Fuel Policy</span></b><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">:</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-left:21.0000pt;mso-para-margin-left:0.0000gd;text-indent:-21.0000pt;\r\nmso-char-indent-count:0.0000;mso-list:l6 level1 lfo8;\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:SimSun;mso-bidi-font-family:\'Times New Roman\';\r\nfont-size:12.0000pt;\">l&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">The renter is responsible for returning the vehicle with the same fuel level as at the start of the rental.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left:21.0000pt;mso-para-margin-left:0.0000gd;text-indent:-21.0000pt;\r\nmso-char-indent-count:0.0000;mso-list:l6 level1 lfo8;\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:SimSun;mso-bidi-font-family:\'Times New Roman\';\r\nfont-size:12.0000pt;\">l&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">If the vehicle is returned with less fuel, the renter will be charged for the fuel refill at the prevailing market rate, along with an additional refueling service fee.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-left:21.2500pt;mso-para-margin-left:0.0000gd;text-indent:-21.2500pt;\r\nmso-char-indent-count:0.0000;mso-list:l7 level1 lfo1;\"><!--[if !supportLists]--><span style=\"font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;font-weight:bold;\r\nfont-size:12.0000pt;\">8.&nbsp;</span><!--[endif]--><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\">Vehicle Usage and Restrictions:</span></b><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-left:21.0000pt;mso-para-margin-left:0.0000gd;text-indent:-21.0000pt;\r\nmso-char-indent-count:0.0000;mso-list:l8 level1 lfo9;\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:SimSun;mso-bidi-font-family:\'Times New Roman\';\r\nfont-size:12.0000pt;\">l&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">The rented vehicle should be used in a responsible and lawful manner, following all traffic and safety regulations.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left:21.0000pt;mso-para-margin-left:0.0000gd;text-indent:-21.0000pt;\r\nmso-char-indent-count:0.0000;mso-list:l8 level1 lfo9;\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:SimSun;mso-bidi-font-family:\'Times New Roman\';\r\nfont-size:12.0000pt;\">l&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">The renter agrees not to use the vehicle for illegal activities, racing, off-road driving, or transportation of hazardous materials.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left:21.0000pt;mso-para-margin-left:0.0000gd;text-indent:-21.0000pt;\r\nmso-char-indent-count:0.0000;mso-list:l8 level1 lfo9;\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:SimSun;mso-bidi-font-family:\'Times New Roman\';\r\nfont-size:12.0000pt;\">l&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">The vehicle should not be driven by unauthorized persons or taken outside the agreed-upon geographical area without prior approval.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-left:21.2500pt;mso-para-margin-left:0.0000gd;text-indent:-21.2500pt;\r\nmso-char-indent-count:0.0000;mso-list:l7 level1 lfo1;\"><!--[if !supportLists]--><span style=\"font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;font-weight:bold;\r\nfont-size:12.0000pt;\">9.&nbsp;</span><!--[endif]--><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\">Maintenance and Repairs:</span></b><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-left:21.0000pt;mso-para-margin-left:0.0000gd;text-indent:-21.0000pt;\r\nmso-char-indent-count:0.0000;mso-list:l5 level1 lfo10;\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:SimSun;mso-bidi-font-family:\'Times New Roman\';\r\nfont-size:12.0000pt;\">l&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">The renter must notify Giwa Cars immediately in case of any mechanical issues or accidents involving the rented vehicle.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left:21.0000pt;mso-para-margin-left:0.0000gd;text-indent:-21.0000pt;\r\nmso-char-indent-count:0.0000;mso-list:l5 level1 lfo10;\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:SimSun;mso-bidi-font-family:\'Times New Roman\';\r\nfont-size:12.0000pt;\">l&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">Repairs or maintenance should only be carried out with Giwa Cars\' prior consent, unless it is an emergency situation.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-left:21.2500pt;mso-para-margin-left:0.0000gd;text-indent:-21.2500pt;\r\nmso-char-indent-count:0.0000;mso-list:l7 level1 lfo1;\"><!--[if !supportLists]--><span style=\"font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;font-weight:bold;\r\nfont-size:12.0000pt;\">10.&nbsp;</span><!--[endif]--><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\">Cancellation and Modification</span></b><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">:</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-left:21.0000pt;mso-para-margin-left:0.0000gd;text-indent:-21.0000pt;\r\nmso-char-indent-count:0.0000;mso-list:l10 level1 lfo11;\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:SimSun;mso-bidi-font-family:\'Times New Roman\';\r\nfont-size:12.0000pt;\">l&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">Cancellation and modification policies may vary depending on the rental agreement, reservation type, and circumstances.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left:21.0000pt;mso-para-margin-left:0.0000gd;text-indent:-21.0000pt;\r\nmso-char-indent-count:0.0000;mso-list:l10 level1 lfo11;\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:SimSun;mso-bidi-font-family:\'Times New Roman\';\r\nfont-size:12.0000pt;\">l&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">It is advised to contact our customer service team to request any cancellations or modifications to your reservation.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p>\r\n										'),
(2, 'Privacy Policy', 'privacy', '<p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">Giwa Cars - Privacy Policy</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">This Privacy Policy explains how Giwa Cars collects, uses, and protects the personal information you provide to us when using our services. We are committed to respecting your privacy and safeguarding your personal data. By using Giwa Cars\' services, you consent to the practices described in this policy.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">Collection of Personal Information:</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">We may collect personal information from you during the reservation and rental process, including but not limited to your full name, address, contact details (phone number, email address), driver\'s license information, date of birth, payment details (credit card information), geolocation data for location-based services, and any additional information you voluntarily provide to us.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">Use of Personal Information:</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">We use the collected personal information for the following purposes: processing your reservations and rental transactions, verifying your identity and eligibility to rent a vehicle, providing customer support and responding to inquiries or requests, communicating with you regarding your reservations, updates, and promotional offers, conducting market research and analysis to improve our services, complying with legal obligations and enforcing our terms and conditions, and preventing fraud, unauthorized access, or misuse of our services.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">Protection of Personal Information:</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">We implement appropriate security measures to protect your personal information from unauthorized access, disclosure, alteration, or destruction. We restrict access to your personal information to authorized personnel who need it to perform their duties. We regularly review our security practices and update them to ensure the ongoing protection of your personal data.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">Sharing of Personal Information:</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">We may share your personal information with third parties only under the following circumstances: with service providers and business partners who assist us in providing our services, such as payment processors or insurance providers, to comply with legal obligations, enforce our rights, or respond to legal requests from government authorities, or in the event of a merger, acquisition, or sale of assets, where personal information may be transferred to the new entity. We do not sell or rent your personal information to third parties for their marketing purposes.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">Data Retention:</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">We retain your personal information only for as long as necessary to fulfill the purposes for which it was collected unless a longer retention period is required by law.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">Cookies and Tracking Technologies:</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">We may use cookies and similar tracking technologies to enhance your browsing experience, personalize content, and collect information about your interactions with our website or mobile app. You can manage your cookie preferences through your browser settings, but please note that disabling cookies may limit certain features and functionality.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">Third-Party Websites and Links:</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">Our website or mobile app may contain links to third-party websites or services. We are not responsible for the privacy practices or content of those websites. We encourage you to review the privacy policies of such third parties.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">Children\'s Privacy:</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">Our services are not intended for children under the age of 18. We do not knowingly collect personal information from individuals under 18 years of age.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">Updates to the Privacy Policy:</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">We may update this Privacy Policy from time to time. Any changes will be posted on our website, and the revised policy will be effective immediately upon posting.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">Contact Us:</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">If you have any questions, concerns, or requests related to this Privacy Policy or the handling of your personal information, please contact us at the provided contact details.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p>'),
(3, 'About Us ', 'aboutus', '<div><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">Giwa Cars is a leading car rental company dedicated to providing exceptional vehicle rental services to customers across various locations. We pride ourselves on delivering reliable and convenient transportation solutions to meet our customers\' diverse needs.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">At Giwa Cars, we understand that renting a car should be a hassle-free experience. That\'s why we offer a wide range of well-maintained vehicles, from economy cars to luxury sedans and spacious SUVs, ensuring that there\'s a perfect option for every occasion and preference.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">Our commitment to customer satisfaction extends beyond the quality of our vehicles. We strive to deliver exceptional customer service at every touchpoint. Our friendly and knowledgeable staff is always ready to assist you, whether it\'s helping you choose the right vehicle, providing information about local attractions, or addressing any concerns you may have.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">Convenience is a core value at Giwa Cars. With multiple branches located in key cities and airports, we make it easy for you to pick up and drop off your rental vehicle. Our online reservation system allows you to book a car in advance, ensuring that your preferred vehicle is ready and waiting for you upon arrival.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p></div>\r\n										');
INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(11, 'FAQs', 'faqs', '										<p class=\"MsoNormal\"><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\">What is Giwa Cars?</span></b><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">Giwa Cars is a car rental company that provides a wide range of vehicles for rent. Whether you need a car for a day trip, a family vacation, or a business trip, Giwa Cars has you covered.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\">Where is Giwa Cars located?</span></b><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">Giwa Cars operates in multiple locations across the country. You can find our branches in major cities and airports, making it convenient for you to pick up and drop off your rental vehicle.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\">What types of cars does Giwa Cars offer?</span></b><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">We offer a diverse fleet of vehicles to suit various needs and preferences. Our selection includes economy cars, sedans, SUVs, luxury vehicles, and even vans for larger groups. You can choose the car that best fits your requirements.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\">What are the requirements to rent a car from Giwa Cars?</span></b><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">To rent a car from Giwa Cars, you must be at least 21 years old (age requirements may vary by location) and possess a valid driver\'s license. Additionally, you will need a valid credit card for payment and a government-issued identification document.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\">Can I book a car in advance?</span></b><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">Absolutely! We recommend booking your car in advance to ensure availability, especially during peak travel seasons. You can easily make a reservation on our website or by contacting our customer service representatives.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\">What is included in the rental price?</span></b><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">The rental price typically includes the base cost of the vehicle, applicable taxes, and basic insurance coverage. Additional services and options, such as GPS navigation systems or child safety seats, may incur extra charges. Details regarding the pricing and inclusions will be provided during the reservation process.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\">What is the duration of a typical car rental?</span></b><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">At Giwa Cars, you can rent a car for as short as a few hours or as long as several weeks, depending on your needs. We offer flexible rental periods to accommodate various travel plans.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><br></span></p><p class=\"MsoNormal\"><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\">What if I need to cancel or modify my reservation?</span></b><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">If you need to cancel or modify your reservation, please contact our customer service team as soon as possible. Cancellation and modification policies may vary depending on the circumstances and the terms of your reservation.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><b><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\">What happens in case of an accident or breakdown</span></b><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">?</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\">In case of an accident or breakdown, please contact our 24/7 emergency assistance hotline provided to you during the rental process. Our team will guide you through the necessary steps and arrange for necessary support, such as towing or replacement vehicles, as required.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';mso-fareast-font-family:SimSun;\r\nfont-size:12.0000pt;\"><o:p></o:p></span></p>\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(4, 'harish@gmail.com', '2020-07-07 09:26:21'),
(5, 'kunal@gmail.com', '2020-07-07 09:35:07'),
(6, 'manuelukoha@gmail.com', '2023-06-02 11:54:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'test@gmail.com', 'I am satisfied with their service great job', '2020-07-07 14:30:12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(2, 'Emmanuel Kelechi Ukoha', 'manuel@gmail.com', '32250170a0dca92d53ec9624f336ca24', '8071272293', NULL, NULL, NULL, NULL, '2023-05-19 09:48:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, '2014 Mercedes-Benz G-Class', 8, '2014 Mercedes-Benz G-Class\r\n\r\nThe 2014 Mercedes-Benz G-Class is an iconic luxury SUV with a timeless design, luxurious interior, and impressive off-road capabilities. Its robust construction, powerful engines, and advanced features make it a standout choice for those seeking adventure and opulence.', 5000, 'Petrol', 2014, 5, 'Wagon1.jpg', 'wagon2.jpg', 'interior4.jpg', 'interior2.jpg', 'wagon5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 07:04:35', '2023-05-30 17:46:38'),
(2, '2023 Mazda CX-50', 9, 'The 2023 Mazda CX-50 is a new compact crossover that offers a blend of stylish design, dynamic performance, and advanced technology. With its sleek profile, spacious interior, and Mazda\'s renowned driving dynamics, the CX-50 aims to deliver an engaging and comfortable driving experience in a compact package.', 5000, 'Petrol', 2023, 5, 'mazda1.jpg', 'mazda2.jpg', 'MazInterior2.jpg', 'MazInte5.jpg', 'Mazda5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2020-07-07 07:12:02', '2023-05-30 18:04:16'),
(3, '2020 Toyota Camry', 10, 'The 2020 Toyota Camry is a stylish and reliable sedan that offers a comfortable ride, advanced safety features, and impressive fuel efficiency.', 4500, 'Petrol', 2020, 5, 'camry1.jpg', 'camry5.jpg', 'camry4.jpg', 'camry6.jpg', 'camry3.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 07:19:21', '2023-06-04 15:02:32'),
(4, 'INNOSON G80', 11, 'The Innoson G80 is also equipped with dual airbags, features power controlled seat-belts and a sedan style interior. It was designed to provide the highest degree of space and comfort. It is equipped with ergonomic chairs that fit perfectly to the human body. A high performance air conditioning system, more so the interior equipment of the vehicle is easy to use and can be adapted according to the passengers’ needs.', 6000, 'Petrol', 2020, 5, 'noson5.jpg', 'noson2.jpg', 'noson4.jpg', 'noson4.jpg', '', 1, 1, 1, 1, NULL, NULL, NULL, 1, 1, 1, 1, 1, '2020-07-07 07:25:28', '2023-06-04 16:37:15'),
(5, 'Nissan Sentra', 4, '\r\nThe Nissan Sentra is an affordable, reliable compact car known for its fuel efficiency and practicality.', 5000, 'Petrol', 2021, 5, 'nisan1.jpg', 'nisan2.jpg', 'nisan4.jpg', 'nisan3.jpg', 'nisan6.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 07:34:17', '2023-06-04 16:45:16'),
(6, 'Toyota RAV4', 10, 'The Toyota RAV4 is a compact SUV that combines stylish design, versatility, and reliability. Known for its spacious interior, comfortable ride, and advanced safety features, the RAV4 offers an enjoyable driving experience whether you\'re navigating city streets or exploring off-road terrain. With its efficient performance and cutting-edge technology, the Toyota RAV4 is a popular choice for those seeking a practical and adventure-ready vehicle.', 4000, 'Petrol', 2021, 5, 'Toyota Rav4.jpg', 'Toyota Rav4.jpg', 'toyota Rav6.jpg', 'toyota Rav9.jpg', 'toyota Rav7.jpg', 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 09:12:49', '2023-06-05 15:32:15'),
(7, 'Audi Q7', 3, 'The Audi Q7 is a premium midsize SUV that combines sleek aesthetics with impressive performance. With its distinctive design, luxurious interior, and advanced technology, the Q7 offers a refined and comfortable driving experience. Equipped with powerful engines and Audi\'s renowned Quattro all-wheel drive system, the Q7 delivers both agility and stability on the road. It also boasts a spacious cabin, cutting-edge infotainment features, and a range of advanced safety systems. As a symbol of sophistication and versatility, the Audi Q7 is a standout choice in the luxury SUV market.', 4500, 'Petrol', 2014, 5, 'audi1.jpg', 'audi4.jpg', 'audi4.jpg', 'Audi8.jpg', '', 1, 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 09:17:46', '2023-06-05 17:17:49'),
(8, 'Lexus RX', 12, 'The 2021 Lexus RX is a luxury crossover SUV that seamlessly blends elegance with exceptional performance. With its striking design, plush interior, and advanced features, the RX offers a refined and comfortable driving experience. Equipped with a powerful engine and smooth handling, it delivers impressive performance on the road. The Lexus RX also prioritizes safety, offering a range of advanced driver-assistance technologies. As a top choice in the luxury SUV segment, the 2021 Lexus RX embodies sophistication and reliability.', 6000, 'Petrol', 2021, 5, 'lex1.jpg', 'lex2.jpg', 'lex4.jpg', 'lex5.jpg', 'lex6.jpg', 1, 1, 1, 1, 1, NULL, NULL, 1, 1, 1, 1, 1, '2020-07-07 09:23:11', '2023-06-05 16:53:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
