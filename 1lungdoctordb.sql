-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 25, 2025 at 12:15 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `1lungdoctordb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `UserName` varchar(250) NOT NULL,
  `Password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`UserName`, `Password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `apptb`
--

CREATE TABLE `apptb` (
  `id` bigint(250) NOT NULL auto_increment,
  `UserName` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `DoctorName` varchar(250) NOT NULL,
  `Date` date NOT NULL,
  `Specialist` varchar(250) NOT NULL,
  `Disease` varchar(250) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `apptb`
--


-- --------------------------------------------------------

--
-- Table structure for table `doctortb`
--

CREATE TABLE `doctortb` (
  `Name` varchar(250) NOT NULL,
  `Gender` varchar(250) NOT NULL,
  `Age` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `Specialist` varchar(250) NOT NULL,
  `UserName` varchar(250) NOT NULL,
  `Password` varchar(250) NOT NULL,
  `Location` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctortb`
--


-- --------------------------------------------------------

--
-- Table structure for table `drugtb`
--

CREATE TABLE `drugtb` (
  `id` bigint(250) NOT NULL auto_increment,
  `UserName` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `EmailId` varchar(250) NOT NULL,
  `DoctorName` varchar(250) NOT NULL,
  `Medicine` varchar(250) NOT NULL,
  `OtherInfo` varchar(500) NOT NULL,
  `Report` varchar(500) NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `drugtb`
--


-- --------------------------------------------------------

--
-- Table structure for table `regtb`
--

CREATE TABLE `regtb` (
  `Name` varchar(250) NOT NULL,
  `Gender` varchar(250) NOT NULL,
  `Age` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Address` varchar(250) NOT NULL,
  `UserName` varchar(250) NOT NULL,
  `Password` varchar(250) NOT NULL,
  `Location` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regtb`
--

