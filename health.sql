/*
SQLyog Community Edition- MySQL GUI v7.02 
MySQL - 5.1.26-rc-community : Database - healthcare
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`healthcare` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `healthcare`;

/*Table structure for table `appointment` */

DROP TABLE IF EXISTS `appointment`;

CREATE TABLE `appointment` (
  `patientname` text,
  `patientemail` text,
  `doctorname` text,
  `doctoremail` text,
  `doctorphone` text,
  `doctorage` text,
  `appointmentdate` text,
  `appointmenttime` text,
  `hospitaladdress` text,
  `appointmentstatus` text,
  `patienthealthstatus` text,
  `disease` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `cardio` */

DROP TABLE IF EXISTS `cardio`;

CREATE TABLE `cardio` (
  `name` text,
  `email` text,
  `age` text,
  `doctorname` text,
  `disease` text,
  `location` text,
  `bodytemp` float DEFAULT NULL,
  `pulse` int(11) DEFAULT NULL,
  `systolic` int(11) DEFAULT NULL,
  `diastolic` int(11) DEFAULT NULL,
  `bp` text,
  `cholesterol` text,
  `cholesterolvalue` int(11) DEFAULT NULL,
  `glucose` text,
  `glucosevalue` int(11) DEFAULT NULL,
  `status` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `diabetics` */

DROP TABLE IF EXISTS `diabetics`;

CREATE TABLE `diabetics` (
  `name` text,
  `email` text,
  `age` text,
  `doctorname` text,
  `disease` text,
  `location` text,
  `bodytemp` float DEFAULT NULL,
  `pulse` int(11) DEFAULT NULL,
  `systolic` int(11) DEFAULT NULL,
  `diastolic` int(11) DEFAULT NULL,
  `bp` text,
  `A1c` int(11) DEFAULT NULL,
  `A1cstatus` text,
  `OGT` int(11) DEFAULT NULL,
  `OGTstatus` text,
  `FPG` int(11) DEFAULT NULL,
  `FPGstatus` text,
  `status` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `doctor` */

DROP TABLE IF EXISTS `doctor`;

CREATE TABLE `doctor` (
  `doctorname` varchar(25) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` text,
  `phonenumber` text,
  `password` text,
  `specalization` text,
  `location` text,
  `address` text,
  `dob` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `patient` */

DROP TABLE IF EXISTS `patient`;

CREATE TABLE `patient` (
  `name` text,
  `email` text,
  `location` text,
  `password` text,
  `disease` text,
  `doctor` text,
  `age` text,
  `gender` text,
  `dob` text,
  `phonenumber` text,
  `diseasedescription` text,
  `guardianname` text,
  `status` text,
  `appointment` text,
  `address` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `pd` */

DROP TABLE IF EXISTS `pd`;

CREATE TABLE `pd` (
  `name` text,
  `email` text,
  `age` int(11) DEFAULT NULL,
  `doctorname` text,
  `disease` text,
  `location` text,
  `CPT` text,
  `RBP` text,
  `choles` text,
  `upsloping` text,
  `riskpercent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `pd1` */

DROP TABLE IF EXISTS `pd1`;

CREATE TABLE `pd1` (
  `name` text,
  `email` text,
  `doctorname` text,
  `disease` text,
  `admin` text,
  `location` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
