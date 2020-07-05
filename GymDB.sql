-- phpMyAdmin SQL Dump
-- version 4.0.10.20
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 05, 2020 at 01:30 PM
-- Server version: 5.1.73
-- PHP Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hmcdon24A3`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `Active_Members_View`
--
CREATE TABLE IF NOT EXISTS `Active_Members_View` (
`ClubCode` char(4)
,`ClubName` varchar(20)
,`Status` varchar(8)
,`TotalActive` bigint(21)
);
-- --------------------------------------------------------

--
-- Table structure for table `ALL_ACCESS_MEMBER`
--

CREATE TABLE IF NOT EXISTS `ALL_ACCESS_MEMBER` (
  `MemberID` varchar(6) NOT NULL,
  `AllAccessPassID` int(11) NOT NULL AUTO_INCREMENT,
  `FitnessGoal` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MemberID`),
  UNIQUE KEY `AllAccessPassID` (`AllAccessPassID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4568051 ;

--
-- Dumping data for table `ALL_ACCESS_MEMBER`
--

INSERT INTO `ALL_ACCESS_MEMBER` (`MemberID`, `AllAccessPassID`, `FitnessGoal`) VALUES
('AC0004', 4568048, 'Body building'),
('AC0006', 4568050, 'Improve cardiovascular health'),
('AC0013', 4568028, 'Improve cardiovascular health'),
('AC0033', 4568029, 'N/A'),
('E0008', 4568039, 'Weight loss'),
('K0015', 4568001, 'Weight loss'),
('MG0030', 4568031, 'Tone and sculpt'),
('MG0031', 4568032, 'Tone and sculpt'),
('MG0032', 4568033, 'Weight loss'),
('P0017', 4568034, 'N/A'),
('P0018', 4568035, 'Weight loss'),
('P0019', 4568036, 'Weight loss'),
('P0021', 4568038, 'Weight loss'),
('P0022', 4568040, 'Weight loss'),
('P0023', 4568041, 'Body building'),
('P0025', 4568043, 'Body building'),
('P0026', 4568044, 'Tone and sculpt'),
('R0005', 4568045, 'Improve cardiovascular health'),
('R0006', 4568046, 'Body building'),
('R0009', 4568047, 'Improve cardiovascular health');

-- --------------------------------------------------------

--
-- Stand-in structure for view `All_Classes_View`
--
CREATE TABLE IF NOT EXISTS `All_Classes_View` (
`ClubCode` char(4)
,`Day` varchar(9)
,`Time` char(13)
,`ClassName` varchar(20)
,`Instructor` varchar(61)
);
-- --------------------------------------------------------

--
-- Table structure for table `CLASS_OFFERING`
--

CREATE TABLE IF NOT EXISTS `CLASS_OFFERING` (
  `ClassID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassCode` char(4) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `Day` varchar(9) NOT NULL,
  `Time` char(13) DEFAULT NULL,
  `ClubCode` char(4) NOT NULL,
  PRIMARY KEY (`ClassID`),
  KEY `ClassCode` (`ClassCode`),
  KEY `EmployeeID` (`EmployeeID`),
  KEY `ClubCode` (`ClubCode`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=88954161 ;

--
-- Dumping data for table `CLASS_OFFERING`
--

INSERT INTO `CLASS_OFFERING` (`ClassID`, `ClassCode`, `EmployeeID`, `Day`, `Time`, `ClubCode`) VALUES
(20661701, 'BXNG', 29, 'Tuesday', '16.00 - 17.00', 'ACTY'),
(88954001, 'AQUA', 57, 'Monday', '05.30 - 06.30', 'RDMR'),
(88954062, 'AQUA', 58, 'Wednesday', '09.00 - 10.00', 'RDMR'),
(88954063, 'BXNG', 27, 'Thursday', '07.00 - 08.00', 'RDMR'),
(88954064, 'BXNG', 33, 'Monday', '05.30 - 06.30', 'RDMR'),
(88954065, 'BXNG', 30, 'Wednesday', '09.00 - 10.00', 'RDMR'),
(88954066, 'BXNG', 49, 'Friday', '07.00 - 08.00', 'RDMR'),
(88954067, 'CORE', 47, 'Tuesday', '06.00 - 07.00', 'RDMR'),
(88954068, 'CORE', 37, 'Wednesday', '07.00 - 08.00', 'RDMR'),
(88954069, 'CORE', 46, 'Friday', '09.00 - 10.00', 'RDMR'),
(88954070, 'CORE', 30, 'Wednesday', '16.00 - 17.00', 'RDMR'),
(88954071, 'HIIT', 31, 'Monday', '17.00 - 18.00', 'RDMR'),
(88954072, 'HIIT', 31, 'Friday', '07.00 - 08.00', 'RDMR'),
(88954073, 'HIIT', 32, 'Thursday', '16.00 - 17.00', 'RDMR'),
(88954074, 'HIIT', 32, 'Tuesday', '07.00 - 08.00', 'RDMR'),
(88954075, 'YOGA', 33, 'Monday', '09.00 - 10.00', 'RDMR'),
(88954076, 'KIDS', 33, 'Friday', '06.00 - 07.00', 'RDMR'),
(88954077, 'KIDS', 28, 'Friday', '09.00 - 10.00', 'RDMR'),
(88954078, 'PLTS', 29, 'Thursday', '07.00 - 08.00', 'RDMR'),
(88954079, 'PLTS', 2, 'Thursday', '09.00 - 10.00', 'RDMR'),
(88954080, 'PLTS', 1, 'Tuesday', '16.00 - 17.00', 'RDMR'),
(88954142, 'CORE', 34, 'Friday', '16.00 - 17.00', 'ACTY'),
(88954143, 'HIIT', 37, 'Tuesday', '09.00 - 10.00', 'ACTY'),
(88954144, 'KIDS', 36, 'Thursday', '09.00 - 10.00', 'ACTY'),
(88954145, 'BXNG', 33, 'Monday', '09.00 - 10.00', 'ACTY'),
(88954146, 'AQUA', 37, 'Friday', '16.00 - 17.00', 'ESDN'),
(88954147, 'CORE', 45, 'Friday', '16.00 - 17.00', 'ESDN'),
(88954148, 'HIIT', 57, 'Wednesday', '05.30 - 06.30', 'ESDN'),
(88954149, 'KIDS', 46, 'Wednesday', '16.00 - 17.00', 'ESDN'),
(88954150, 'PLTS', 35, 'Friday', '09.00 - 10.00', 'RBNA'),
(88954151, 'YOGA', 33, 'Thursday', '16.00 - 17.00', 'ESDN'),
(88954152, 'AQUA', 28, 'Tuesday', '09.00 - 10.00', 'KGSN'),
(88954153, 'BXNG', 57, 'Monday', '07.00 - 08.00', 'KGSN'),
(88954154, 'CORE', 50, 'Friday', '07.00 - 08.00', 'KGSN'),
(88954155, 'KIDS', 37, 'Thursday', '07.00 - 08.00', 'MTGT'),
(88954156, 'HIIT', 45, 'Friday', '05.30 - 06.30', 'MTGT'),
(88954157, 'PLTS', 48, 'Friday', '16.00 - 17.00', 'MTGT'),
(88954158, 'AQUA', 27, 'Wednesday', '16.00 - 17.00', 'PARA'),
(88954159, 'BXNG', 1, 'Tuesday', '07.00 - 08.00', 'PARA'),
(88954160, 'HIIT', 37, 'Monday', '05.30 - 06.30', 'RBNA');

-- --------------------------------------------------------

--
-- Table structure for table `CLASS_ONLY_MEMBER`
--

CREATE TABLE IF NOT EXISTS `CLASS_ONLY_MEMBER` (
  `MemberID` varchar(6) NOT NULL,
  `ClassesInterestedIn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CLASS_ONLY_MEMBER`
--

INSERT INTO `CLASS_ONLY_MEMBER` (`MemberID`, `ClassesInterestedIn`) VALUES
('AC0002', 'Yoga'),
('AC0005', 'Active Adults'),
('AC0012', 'Yoga'),
('AC0035', 'Yoga'),
('E00027', 'HIIT'),
('E00029', 'Boxing, Yoga, Active Adults'),
('E0008', 'HIIT'),
('E0009', 'HIIT, Boxing'),
('K0014', 'Hot Yoga'),
('K0015', 'N/A'),
('K0035', 'HIIT'),
('K0038', 'Hot Yoga, Pilates'),
('K0039', 'Hot Yoga'),
('K0040', 'Pilates'),
('P0017', 'Hot Yoga'),
('P0020', 'Hot Yoga'),
('P0024', 'Pilates, Yoga'),
('P0025', 'HIIT, Pilates, Yoga'),
('R0006', 'Pilates'),
('R0041', 'Hot Yoga, Yoga'),
('R0042', 'Hot Yoga'),
('R0043', 'Pilates'),
('R0044', 'Hot Yoga, Yoga');

-- --------------------------------------------------------

--
-- Table structure for table `CLUB`
--

CREATE TABLE IF NOT EXISTS `CLUB` (
  `ClubCode` char(4) NOT NULL,
  `ClubName` varchar(20) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `State` varchar(3) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Postcode` char(4) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `ManagerID` int(11) NOT NULL,
  PRIMARY KEY (`ClubCode`),
  KEY `ManagerID` (`ManagerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CLUB`
--

INSERT INTO `CLUB` (`ClubCode`, `ClubName`, `Address`, `State`, `City`, `Postcode`, `Phone`, `ManagerID`) VALUES
('ACTY', 'Adelaide City', '28 Begley Street', 'SA', 'Adelaide', '5000', '(02) 9728 2259', 74511003),
('ESDN', 'Essendon', '7 Creedon Street', 'VIC', 'Melbourne', '3040', '(02) 9060 5217', 74511007),
('KGSN', 'Kingston', '68 Yarra Street', 'TAS', 'Chaston', '3364', '(03) 9660 9673', 74511006),
('KGWY', 'Kingsway', '40 Foreshore Road', 'WA', 'Perth', '6065', '(03) 5350 9880', 74511009),
('MTGT', 'Mt Gravatt', '37 Kintyre Street', 'QLD', 'Brisbane', '4122', '(07) 3073 6573', 74511004),
('PARA', 'Parramatta', '29 Woodlands Avenue', 'NSW', 'Sydney', '2150', '(07) 5695 9771', 74511002),
('RBNA', 'Robina', '60 Treasure Island Avenue', 'QLD', 'Gold Coast', '4226', '(08) 8202 6233', 74511010),
('RDMR', 'Rydalmere', '19 Cecil Street', 'NSW', 'Sydney', '2116', '(08) 8202 6233', 74511001);

-- --------------------------------------------------------

--
-- Table structure for table `EMPLOYEE`
--

CREATE TABLE IF NOT EXISTS `EMPLOYEE` (
  `EmployeeID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `ClubCode` char(4) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Phone` varchar(15) NOT NULL,
  `Status` varchar(8) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(3) NOT NULL,
  `Postcode` char(4) NOT NULL,
  `EmploymentDate` date NOT NULL,
  `isTrainerYN` tinyint(1) NOT NULL,
  `isManagerYN` tinyint(1) NOT NULL,
  PRIMARY KEY (`EmployeeID`),
  KEY `ClubCode` (`ClubCode`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `EMPLOYEE`
--

INSERT INTO `EMPLOYEE` (`EmployeeID`, `FirstName`, `LastName`, `ClubCode`, `Email`, `Phone`, `Status`, `Address`, `City`, `State`, `Postcode`, `EmploymentDate`, `isTrainerYN`, `isManagerYN`) VALUES
(1, 'David', 'Burrell', 'RDMR', 'david.burrell@mail.com', '0451 413 230', 'Active', '16 Cecil Street', 'MELROSE PARK', 'NSW', '2114', '2014-12-14', 1, 1),
(2, 'Kai', 'Hogarth', 'PARA', 'kai.hogarth@mail.com', '0439 586 907', 'Active', '89 Village Drive', 'Cabramatta', 'NSW', '2166', '2015-06-18', 1, 1),
(27, 'Eliza', 'Oride', 'ACTY', 'eliza.oride@mail.com', '0483 828 965', 'Active', '92 Begley Street', 'ADELAIDE', 'SA', '5000', '2013-06-14', 1, 1),
(28, 'Maddison', 'Beak', 'ACTY', 'maddison.beak@fitclub.com', '0493 246 635', 'Inactive', '13 Ross Street', 'MERMAID BEACH', 'QLD', '4218', '2013-06-13', 0, 1),
(29, 'Bianca', 'Bekey', 'MTGT', 'bianca.wekey@mail.com', '0493 246 635', 'Active', '58 Savages Road', 'EIGHT MILE PLAINS', 'QLD', '4113', '2012-02-20', 0, 1),
(30, 'Jonathan', 'Mullay', 'KGSN', 'jonathan.mullaly@mail.com', '0459 292 559', 'Active', '36 Bayfield Street', 'RHEBAN', 'TAS', '7190', '2016-09-15', 1, 1),
(31, 'Eden', 'Smyth', 'ESDN', 'eden.smythe@mail.com', '0486 168 444', 'Active', '54 Creedon Street', 'BRUNSWICK NORTH', 'VIC', '3056', '2017-02-19', 0, 1),
(32, 'Elizabeth', 'McNamara', 'MTGT', 'elizabeth.mcnamara@mail.com', '0426 275 511', 'Inactive', '23 Foreshore Road', 'JOONDANNA', 'WA', '6060', '2015-06-03', 0, 1),
(33, 'Caitlyn', 'Moyes', 'KGWY', 'caitlin.moyes@mail.com', '0445 138 399', 'Active', '44 Jacolite Street', 'CULLACABARDEE', 'WA', '6067', '2014-02-22', 1, 1),
(34, 'Bethany', 'George', 'RBNA', 'bethany.george@mail.com', '0445 138 399', 'Active', '65 Treasure Island Avenue', 'VARSITY LAKES', 'QLD', '4227', '2016-08-11', 0, 1),
(35, 'Susan', 'Toga', 'KGSN', 'rowie.roundtree@mail.com', '0415 175 638', 'Active', '292-1554 Tempor Road', 'WAGGA', 'SA', '7435', '2017-09-01', 1, 0),
(36, 'Tommy', 'Tanny', 'ACTY', 'tommy.tanny@mail.com', '0415 328 722', 'Inactive', '3459 Orci Avenue', 'KONIN', 'NSW', '5212', '2016-01-30', 1, 0),
(37, 'Innes', 'Indy', 'RBNA', 'innes.indy@mail.com', '0415 243 270', 'Active', '241-8201 Eu Street', 'LISMORE', 'NSW', '2000', '2016-02-01', 1, 0),
(38, 'Jammin', 'Tony', 'ESDN', NULL, '0415 184 363', 'Active', '254-7049 Pede. Street', 'GOONELLABAH', 'NSW', '2480', '2016-02-15', 1, 0),
(39, 'Therese', 'Helen', 'PARA', 'therese.tong@mail.com', '0415 781 343', 'Active', '3672 Augue, Street', 'BURLEIGH', 'QLD', '4220', '2017-03-12', 1, 0),
(45, 'Saint', 'Singh', 'ESDN', 'saint.helen@mail.com', '0415 986 775', 'Active', '295 A Rd.', 'RAUCO', 'VIC', '6003', '2017-07-29', 1, 0),
(46, 'John', 'Bermy', 'ACTY', 'jonathan.singh@mail.com', '0415 783 240', 'Active', '177-1765 Nunc Av.', 'PUNE', 'QLD', '4204', '2017-08-02', 1, 0),
(47, 'Bill', 'Kenyan', 'MTGT', 'boogy.bermy@mail.com', '0415 581 322', 'Active', '454-180 Ridiculus Avenue', 'EVANS HEAD', 'NSW', '2493', '2017-08-10', 1, 0),
(48, 'Nelly', 'Yang', 'ESDN', 'bill.brown@mail.com', '0415 163 940', 'Inactive', '485-4275 Donec Rd.', 'BALLINA', 'TAS', '2477', '2017-08-10', 1, 0),
(49, 'Trina', 'Man', 'ACTY', 'island.man@mail.com', '0415 027 992', 'Active', '271-5702 Consequat, Rd.', 'NEW ENGLAND', 'SA', '3420', '2018-02-03', 1, 0),
(50, 'Rowie', 'Brown', 'KGSN', 'suth.stevens@mail.com', '0415 330 183', 'Active', '3025 Luctus Road', 'BIGGERA WATERS', 'QLD', '4889', '2019-04-16', 1, 0),
(51, 'Boogy', 'Scotty', 'PARA', 'benjamin.yang@mail.com', '0415 003 922', 'Active', '4816 Mauris St.', 'HARVEY BAY', 'NSW', '2745', '2019-04-20', 1, 0),
(54, 'Cool', 'Sera', 'ESDN', 'peter.parker@mail.com', '0415 742 477', 'Inactive', '2380 Ut St.', 'BUNDABERG', 'NT', '5753', '2019-05-12', 1, 0),
(55, 'Peter', 'McDonald', 'ACTY', 'peter.parker@mail.com', '0415 993 093', 'Active', '263-5742 Enim. St.', 'LAKE CONCH', 'SA', '3211', '2019-06-03', 1, 0),
(56, 'Susan', 'Newzie', 'MTGT', NULL, '0415 676 292', 'Active', '1875 Nec Road', 'WHOVILLE', 'TAS', '1335', '2020-01-17', 1, 0),
(57, 'Thomas', 'Scott', 'ACTY', 'tommy.taboggin@mail.com', '0415 165 402', 'Inactive', '2037 Risus Road', 'ROUS', 'NSW', '2331', '2020-03-23', 1, 0),
(58, 'Leonie', 'North', 'PARA', 'leonie.sera@mail.com', '0415 778 660', 'On Leave', '378-7271 Amet Rd.', 'BEIGUM', 'WA', '3345', '2020-04-15', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `FACILITY_CLUB`
--

CREATE TABLE IF NOT EXISTS `FACILITY_CLUB` (
  `FacilityID` int(11) NOT NULL AUTO_INCREMENT,
  `FacilityCode` varchar(4) NOT NULL,
  `ClubCode` varchar(4) NOT NULL,
  `24HrAccessYN` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`FacilityID`),
  KEY `ClubCode` (`ClubCode`),
  KEY `FacilityCode` (`FacilityCode`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1222250 ;

--
-- Dumping data for table `FACILITY_CLUB`
--

INSERT INTO `FACILITY_CLUB` (`FacilityID`, `FacilityCode`, `ClubCode`, `24HrAccessYN`) VALUES
(1222201, '24A', 'RDMR', 1),
(1222202, 'POOL', 'RDMR', 0),
(1222203, 'SWNA', 'RDMR', 0),
(1222204, 'KIDS', 'RDMR', 0),
(1222205, 'PARK', 'RDMR', 0),
(1222206, 'CYCL', 'RDMR', 1),
(1222213, '24A', 'PARA', 1),
(1222214, 'POOL', 'PARA', 1),
(1222215, 'SWNA', 'PARA', 0),
(1222216, 'KIDS', 'PARA', 0),
(1222217, 'CYCL', 'PARA', 0),
(1222218, '24A', 'ESDN', 1),
(1222219, 'POOL', 'ESDN', 1),
(1222220, 'PARK', 'ESDN', 0),
(1222221, '24A', 'KGSN', 1),
(1222222, 'POOL', 'KGSN', 0),
(1222223, 'SWNA', 'KGSN', 1),
(1222224, 'KIDS', 'KGSN', 0),
(1222225, 'PARK', 'KGSN', 0),
(1222226, '24A', 'MTGT', 1),
(1222227, 'POOL', 'MTGT', 0),
(1222228, '24A', 'RBNA', 1),
(1222229, 'POOL', 'RBNA', 1),
(1222230, 'CYCL', 'RBNA', 1),
(1222241, '24A', 'ACTY', 1),
(1222242, 'POOL', 'ACTY', 0),
(1222243, 'SWNA', 'ACTY', 0),
(1222244, 'KIDS', 'ACTY', 0),
(1222245, '24A', 'KGWY', 1),
(1222246, 'CYCL', 'KGWY', 1),
(1222247, 'POOL', 'KGWY', 0),
(1222248, 'PARK', 'KGWY', 0),
(1222249, 'KIDS', 'KGWY', 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Inactive_Members_View`
--
CREATE TABLE IF NOT EXISTS `Inactive_Members_View` (
`ClubCode` char(4)
,`ClubName` varchar(20)
,`Status` varchar(8)
,`TotalInactive` bigint(21)
);
-- --------------------------------------------------------

--
-- Table structure for table `lstCLASS`
--

CREATE TABLE IF NOT EXISTS `lstCLASS` (
  `ClassCode` char(4) NOT NULL,
  `ClassName` varchar(20) NOT NULL,
  `AgeRequirement` int(2) DEFAULT NULL,
  PRIMARY KEY (`ClassCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lstCLASS`
--

INSERT INTO `lstCLASS` (`ClassCode`, `ClassName`, `AgeRequirement`) VALUES
('AQUA', 'Aqua', 16),
('BXNG', 'Boxing', 16),
('CORE', 'Active Core', 14),
('HIIT', 'High-Intensity Inter', 18),
('KIDS', 'Active Kids', 6),
('PLTS', 'Pilates', 16),
('YOGA', 'Yoga', 16);

-- --------------------------------------------------------

--
-- Table structure for table `lstFACILITY`
--

CREATE TABLE IF NOT EXISTS `lstFACILITY` (
  `FacilityCode` char(4) NOT NULL,
  `FacilityName` varchar(20) NOT NULL,
  `AgeRequirement` int(2) DEFAULT NULL,
  PRIMARY KEY (`FacilityCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lstFACILITY`
--

INSERT INTO `lstFACILITY` (`FacilityCode`, `FacilityName`, `AgeRequirement`) VALUES
('24A', '24 Hour Gym', 18),
('CYCL', 'Cycle Studio', 16),
('KIDS', 'Kids Playroom', NULL),
('PARK', 'Outdoor Training Par', 12),
('POOL', 'Swimming Pool', 12),
('SWNA', 'Sauna', 18);

-- --------------------------------------------------------

--
-- Table structure for table `lstSPECIALISATION`
--

CREATE TABLE IF NOT EXISTS `lstSPECIALISATION` (
  `SpecialisationCode` char(4) NOT NULL,
  `SpecialisationName` varchar(25) NOT NULL,
  PRIMARY KEY (`SpecialisationCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lstSPECIALISATION`
--

INSERT INTO `lstSPECIALISATION` (`SpecialisationCode`, `SpecialisationName`) VALUES
('BODY', 'Body Building'),
('COND', 'Conditioning'),
('CTVE', 'Corrective Exercise'),
('NTRN', 'Nutrition'),
('PFME', 'Performance Enhancement'),
('SENR', 'Senior Fitness'),
('WMAN', 'Woman Fitness'),
('WTLS', 'Weight Loss');

-- --------------------------------------------------------

--
-- Table structure for table `MANAGER`
--

CREATE TABLE IF NOT EXISTS `MANAGER` (
  `EmployeeID` int(11) NOT NULL,
  `ManagerID` int(11) NOT NULL,
  PRIMARY KEY (`EmployeeID`),
  KEY `ManagerID` (`ManagerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `MANAGER`
--

INSERT INTO `MANAGER` (`EmployeeID`, `ManagerID`) VALUES
(1, 74511001),
(2, 74511002),
(27, 74511003),
(28, 74511004),
(29, 74511005),
(30, 74511006),
(31, 74511007),
(32, 74511008),
(33, 74511009),
(34, 74511010);

-- --------------------------------------------------------

--
-- Table structure for table `MEMBER`
--

CREATE TABLE IF NOT EXISTS `MEMBER` (
  `MemberID` varchar(6) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(3) NOT NULL,
  `Postcode` char(4) NOT NULL,
  `ClubCode` char(4) NOT NULL,
  `RegistrationDate` date NOT NULL,
  `Status` varchar(8) NOT NULL,
  `ClassOnlyYN` tinyint(1) NOT NULL,
  PRIMARY KEY (`MemberID`),
  UNIQUE KEY `Phone` (`Phone`),
  UNIQUE KEY `Email` (`Email`),
  KEY `ClubCode` (`ClubCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `MEMBER`
--

INSERT INTO `MEMBER` (`MemberID`, `FirstName`, `LastName`, `Email`, `Phone`, `DOB`, `Address`, `City`, `State`, `Postcode`, `ClubCode`, `RegistrationDate`, `Status`, `ClassOnlyYN`) VALUES
('AC0001', 'Ella', 'Cook', 'ella.cook@mail.com', '0415 088 044', '2000-02-12', '673-4905 Donec Road', 'GOLD COAST', 'QLD', '4221', 'ACTY', '2020-08-09', 'Active', 0),
('AC0002', 'Indi', 'Innes', 'indi.innes@mail.com', '0415 234 573', '1995-03-12', '831 Non Avenue', 'AURACO', 'TAS', '8894', 'ESDN', '2020-07-05', 'Active', 1),
('AC0003', 'Collette', 'Dudley', 'collette.dudley@mail.com', '0415 265 800', '1965-11-22', '6176 Nec Rd.', 'BEERSE', 'TAS', '8897', 'RDMR', '2020-08-20', 'Inactive', 1),
('AC0004', 'Hannah', 'Roy', 'bronte.connor@mail.com', '0415 496 955', '1953-05-12', '5515 Rutrum Street', 'LISMORE', 'NSW', '2470', 'ACTY', '2020-06-16', 'On Leave', 1),
('AC0005', 'Hu', 'Thompson', 'hannah.roy@mail.com', '0415 775 765', '1993-12-18', '7531 Hymenaeos. Rd.', 'STAG', 'VIC', '8776', 'KGSN', '2020-10-08', 'Inactive', 1),
('AC0006', 'Peggy', 'Thompson', 'hu.thompson@mail.com', '0415 131 096', '1994-10-02', '7566 At, Av.', 'HONOLULU', 'WA', '6877', 'KGWY', '2020-11-14', 'Active', 0),
('AC0012', 'Bronte', 'Connor', 'peggy.stanley@mail.com', '0415 714 286', '1991-02-13', 'Ap #489-5714 Purus. St.', 'NELSON', 'WA', '6114', 'PARA', '2020-06-23', 'Active', 1),
('AC0013', 'Rebeckah', 'Riley', 'rebekah.riley@mail.com', '0415 067 644', NULL, 'Ap #618-7162 Id, St.', 'LISMORE', 'NSW', '2478', 'ACTY', '2020-07-19', 'Active', 1),
('AC0033', 'Colina', 'Cannes', 'colina.cannes@mail.com', '0415 723 190', '1981-01-20', 'P.O. Box 120, 3134 At Avenue', 'SAN RAFEAL', 'QLD', '4553', 'ESDN', '2020-03-18', 'Active', 0),
('AC0035', 'Bob', 'Brittney', 'bob.brittany@mail.com', '0415 579 026', '1992-09-13', '613-3725 Natoque St.', 'STENDAL', 'TAS', '7884', 'PARA', '2020-04-01', 'Active', 1),
('E00027', 'Lauren', 'Carlin', 'lauren.carlin@mail.com', '0415 482 199', '1975-08-10', '9120 Ut Ave', 'MIAMI', 'QLD', '4221', 'RDMR', '2020-07-25', 'Active', 0),
('E00029', 'Lucas', 'Morse', 'lucas.morse@mail.com', '0415 394 622', '1970-08-14', 'Ap #814-3340 Risus. Ave', 'MIAMI', 'QLD', '4221', 'ACTY', '2020-10-16', 'Active', 0),
('E0008', 'Justine', 'Jetty', 'justine.jetty@mail.com', '0415 609 075', '1994-02-11', 'Ap #668-384 Arcu. St.', 'LISMORE', 'NSW', '4220', 'ESDN', '2018-03-16', 'Active', 1),
('E0009', 'Kimberly', 'Kerr', 'kimberley.kerr@mail.com', '0415 861 965', '1985-12-01', 'Ap #110-3658 Sit Av.', 'NEW YORK', 'WA', '5222', 'KGSN', '2020-08-21', 'Active', 0),
('K0014', 'Cat', 'Chinchilla', 'cat.cinchilla@mail.com', '0415 329 570', '1999-01-30', '585-4400 Libero. Rd.', 'RIHRA', 'NSW', '4224', 'ACTY', '2020-04-14', 'On Leave', 0),
('K0015', 'Bliss', 'Brown', 'bliss.brown@mail.com', '0415 133 547', '2000-10-30', '4892 Commodo Road', 'RIHHRA', 'TAS', '7252', 'KGWY', '2020-09-17', 'Active', 0),
('K0016', 'Georgia', 'Quigley', 'georgia.quigley@mail.com', '0415 442 456', '2001-02-01', '7517 Euismod St.', 'GOLD COAST', 'QLD', '4221', 'KGSN', '2020-07-02', 'Active', 0),
('K0035', 'Ronnie', 'Wand', 'ronnie.wand@mail.com', '0415 493 139', '2001-06-15', '983-9568 Quisque St.', 'LUBLIN', 'SA', '2542', 'ACTY', '2020-02-03', 'Active', 0),
('K0036', 'Sally', 'Sandwand', 'sally.sandman@mail.com', '0415 240 109', '1992-04-23', '938-1116 Primis Street', 'AURACO', 'TAS', '4725', 'ESDN', '2020-10-03', 'Active', 1),
('K0037', 'Sandy', 'Landy', 'sandy.landy@mail.com', '0415 076 091', '1990-05-20', '958-9958 Et St.', 'ALMARO', 'NSW', '8367', 'MTGT', '2020-08-21', 'Active', 0),
('K0038', 'Serra', 'Land', 'serra.land@mail.com', '0415 439 261', '1982-03-25', 'P.O. Box 100, 1262 Lectus. Avenue', 'BRISBANE', 'QLD', '4587', 'RDMR', '2020-05-04', 'Active', 0),
('K0039', 'Singing', 'Sue', NULL, '0415 189 210', '1979-08-09', 'Ap #642-628 Felis. Rd.', 'HUNTLEY', 'VIC', '6844', 'PARA', '2020-11-01', 'Active', 0),
('K0040', 'Special', 'Harmon', 'special.harmon@mail.com', '0415 386 823', '1997-04-12', 'Ap #726-3521 Montes, St.', 'STORTHUP', 'QLD', '4777', 'RDMR', '2020-02-25', 'Active', 1),
('MG0030', 'Maddy', 'Smith', 'maddy.smith@mail.com', '0415 996 347', '1992-04-30', 'Ap #310-3654 Vel St.', 'HUNTLEY', 'SA', '5770', 'PARA', '2020-08-12', 'Active', 0),
('MG0031', 'Mannie', 'Mink', 'mannie.minx@mail.com', '0415 230 233', '1990-12-01', 'Ap #454-980 Quam Road', 'BEERSE', 'WA', '6115', 'MTGT', '2020-08-22', 'Active', 0),
('MG0032', 'Natalie', 'North', 'natalie.north@mail.com', '0415 827 188', '1991-11-27', 'Ap #673-3582 Litora Road', 'SYDNEY', 'NSW', '2000', 'RDMR', '2020-05-12', 'Active', 1),
('P0017', 'Bob', 'Brown', 'bob.brown@mail.com', '0415 696 122', '1997-01-16', '4974 Ullamcorper. St.', 'SYDNEY', 'NSW', '2444', 'ACTY', '2020-06-04', 'Active', 0),
('P0018', 'India', 'Woods', 'india.woods@mail.com', '0415 727 415', '2001-05-03', '8464 Eu, Avenue', 'SYCMORE', 'SA', '2542', 'PARA', '2020-03-18', 'Active', 0),
('P0019', 'Cate', 'Crown', 'cate.crown@mail.com', '0415 336 747', '2001-07-17', '5950 Vestibulum St.', 'GOLD COAST', 'QLD', '4299', 'ESDN', '2020-12-12', 'Active', 1),
('P0020', 'Emma', 'Patterson', 'emma.patterson@mail.com', '0415 117 691', '1963-02-21', '7266 Mauris Ave', 'SABINA', 'TAS', '6454', 'KGWY', '2020-11-05', 'Active', 1),
('P0021', 'Betina', 'Black', 'betina.black@mail.com', '0415 291 024', '1969-02-10', '9225 Libero. Rd.', 'KORTUM', 'NSW', '2456', 'ACTY', '2020-11-01', 'Active', 0),
('P0022', 'Jenny', 'Jubes', 'jenny.jubes@mail.com', '0415 639 716', '1981-04-23', '8786 Maecenas Avenue', 'RANDWEIL', 'VIC', '6852', 'KGSN', '2020-02-17', 'Active', 1),
('P0023', 'Franseca', 'Hill', 'francesca.hill@mail.com', '0415 361 193', NULL, '7348 Sed St.', 'PRICE', 'QLD', '4247', 'RDMR', '2020-09-25', 'Active', 0),
('P0024', 'Dane', 'Potter', 'dane.potter@mail.com', '0415 218 972', '1993-02-12', '6335 Metus. Street', 'ROBINA', 'QLD', '4223', 'RBNA', '2020-10-02', 'Active', 1),
('P0025', 'Kathy', 'Kenny', 'kathy.kenny@mail.com', '0415 697 935', '1986-09-17', 'Ap #748-5967 Non, Rd.', 'SANTA BARB', 'WA', '8545', 'RDMR', '2020-09-13', 'Active', 0),
('P0026', 'Ken', 'Stewart', 'ken.stuart@mail.com', '0415 035 497', '1972-03-05', '976-9856 Et Street', 'NEW WEST', 'VIC', '6845', 'MTGT', '2021-01-19', 'Active', 0),
('R0005', 'Betty', 'Blue', 'betty.blue@mail.com', '0423 777 555', '1995-05-16', '12 Potter Avenue', 'BALLINA', 'NSW', '2477', 'RBNA', '2020-04-10', 'Active', 0),
('R0006', 'Jazmin', 'Slater', NULL, '0415 956 858', '1978-06-12', '8770 Pharetra Road', 'ALSTONVILLE', 'NSW', '2599', 'ACTY', '2020-04-24', 'Active', 0),
('R0009', 'Emily', 'Davies', 'emily.davies@mail.com', '0415 573 236', '2002-02-18', '7096 Malesuada Rd.', 'GOLD COAST', 'QLD', '4255', 'KGWY', '2020-09-11', 'Active', 1),
('R0010', 'Jenny', 'Myles', 'jenny.myles@mail.com', '0415 904 871', '1999-07-30', '908-8505 Facilisis Avenue', 'BEERSE', 'VIC', '6997', 'RBNA', '2020-09-12', 'Active', 0),
('R0011', 'Brittany', 'Barratt', 'brittany.barratt@mail.com', '0415 488 077', '1994-02-15', 'Ap #226-7354 Porttitor Rd.', 'WANZELE', 'NSW', '2971', 'KGSN', '2020-11-29', 'Active', 0),
('R0041', 'Sue', 'Simpson', 'sue.simpson@mail.com', '0415 937 104', '1989-03-19', 'Ap #958-523 Vitae Street', 'MIAMI', 'QLD', '4225', 'ACTY', '2020-09-05', 'Active', 0),
('R0042', 'Tony', 'Ratcliffe', 'tony.ratcliffe@mail.com', '0415 729 127', '1962-10-04', '13 Camelot Rd', 'PALM COAST', 'QLD', '2366', 'KGWY', '2019-12-15', 'Active', 0),
('R0043', 'Zorita', 'Kim', 'zorita.kim@mail.com', '0415 257 351', '2000-05-18', 'Ap #690-9016 Lectus. Road', 'BRISBANE', 'QLD', '4563', 'MTGT', '2020-06-11', 'Active', 0),
('R0044', 'Barry', 'White', NULL, '0415 233 351', '1970-06-12', 'Ap #203-955 Sagittis Rd.', 'BRISBANE', 'QLD', '4564', 'KGWY', '2020-08-07', 'Active', 1);

-- --------------------------------------------------------

--
-- Table structure for table `MEMBER_CLASS`
--

CREATE TABLE IF NOT EXISTS `MEMBER_CLASS` (
  `MemberClassID` int(11) NOT NULL AUTO_INCREMENT,
  `MemberID` varchar(6) NOT NULL,
  `ClassID` int(11) NOT NULL,
  PRIMARY KEY (`MemberClassID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassID` (`ClassID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46643051 ;

--
-- Dumping data for table `MEMBER_CLASS`
--

INSERT INTO `MEMBER_CLASS` (`MemberClassID`, `MemberID`, `ClassID`) VALUES
(46643001, 'AC0001', 20661701),
(46643002, 'AC0002', 20661701),
(46643003, 'AC0003', 20661701),
(46643004, 'AC0004', 20661701),
(46643005, 'AC0013', 20661701),
(46643006, 'AC0033', 20661701),
(46643007, 'AC0035', 20661701),
(46643008, 'E00027', 20661701),
(46643009, 'E00029', 20661701),
(46643021, 'AC0004', 88954069),
(46643022, 'P0021', 88954069),
(46643023, 'K0039', 88954069),
(46643024, 'K0035', 88954069),
(46643025, 'E00027', 88954069),
(46643026, 'R0044', 88954069),
(46643027, 'E0009', 88954069),
(46643028, 'AC0013', 88954069),
(46643029, 'AC0005', 88954069),
(46643030, 'AC0002', 88954079),
(46643041, 'R0044', 20661701),
(46643042, 'R0043', 20661701),
(46643043, 'R0041', 20661701),
(46643044, 'R0011', 20661701),
(46643045, 'R0010', 20661701),
(46643046, 'P0026', 20661701),
(46643047, 'R0009', 20661701),
(46643048, 'P0023', 20661701),
(46643049, 'R0006', 20661701),
(46643050, 'R0042', 20661701);

-- --------------------------------------------------------

--
-- Stand-in structure for view `OnLeave_Members_View`
--
CREATE TABLE IF NOT EXISTS `OnLeave_Members_View` (
`ClubCode` char(4)
,`ClubName` varchar(20)
,`Status` varchar(8)
,`TotalOnLeave` bigint(21)
);
-- --------------------------------------------------------

--
-- Table structure for table `PERSONAL_TRAINING`
--

CREATE TABLE IF NOT EXISTS `PERSONAL_TRAINING` (
  `PTID` int(11) NOT NULL AUTO_INCREMENT,
  `MemberID` varchar(6) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `SessionsPerWeek` int(2) NOT NULL,
  PRIMARY KEY (`PTID`),
  KEY `MemberID` (`MemberID`),
  KEY `EmployeeID` (`EmployeeID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3251218 ;

--
-- Dumping data for table `PERSONAL_TRAINING`
--

INSERT INTO `PERSONAL_TRAINING` (`PTID`, `MemberID`, `EmployeeID`, `SessionsPerWeek`) VALUES
(3251001, 'AC0001', 1, 3),
(3251188, 'AC0002', 1, 2),
(3251189, 'AC0003', 57, 5),
(3251190, 'AC0004', 28, 4),
(3251191, 'AC0012', 33, 5),
(3251192, 'AC0035', 55, 3),
(3251193, 'E00027', 36, 5),
(3251194, 'E00029', 28, 1),
(3251195, 'E0008', 35, 2),
(3251196, 'E0009', 32, 4),
(3251197, 'K0014', 34, 1),
(3251198, 'K0016', 33, 2),
(3251199, 'K0035', 31, 6),
(3251200, 'K0037', 39, 5),
(3251201, 'K0036', 54, 5),
(3251202, 'K0038', 57, 3),
(3251203, 'K0040', 27, 3),
(3251204, 'MG0030', 1, 2),
(3251205, 'MG0031', 47, 4),
(3251206, 'P0025', 36, 3),
(3251207, 'MG0032', 45, 5),
(3251208, 'R0042', 27, 2),
(3251209, 'P0017', 35, 1),
(3251210, 'R0044', 31, 2),
(3251211, 'P0018', 46, 1),
(3251212, 'P0019', 58, 4),
(3251213, 'P0021', 54, 3),
(3251214, 'R0005', 34, 4),
(3251215, 'AC0035', 34, 2),
(3251216, 'P0022', 54, 1),
(3251217, 'P0026', 57, 3);

-- --------------------------------------------------------

--
-- Table structure for table `TRAINER`
--

CREATE TABLE IF NOT EXISTS `TRAINER` (
  `EmployeeID` int(11) NOT NULL,
  `WeeklyFee` decimal(9,2) NOT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TRAINER`
--

INSERT INTO `TRAINER` (`EmployeeID`, `WeeklyFee`) VALUES
(1, '170.00'),
(2, '145.50'),
(27, '170.00'),
(30, '50.00'),
(33, '75.00'),
(35, '170.00'),
(36, '95.00'),
(37, '80.00'),
(38, '100.00'),
(39, '145.50'),
(45, '85.00'),
(46, '145.50'),
(47, '170.00'),
(48, '85.00'),
(49, '85.00'),
(50, '100.00'),
(51, '85.00'),
(54, '85.00'),
(55, '100.00'),
(56, '50.00'),
(57, '50.00'),
(58, '100.00');

-- --------------------------------------------------------

--
-- Table structure for table `TRAINER_SPECIALISATION`
--

CREATE TABLE IF NOT EXISTS `TRAINER_SPECIALISATION` (
  `SpecialisationNum` int(11) NOT NULL AUTO_INCREMENT,
  `EmployeeID` int(11) NOT NULL,
  `SpecialisationCode` char(4) NOT NULL,
  PRIMARY KEY (`SpecialisationNum`),
  KEY `EmployeeID` (`EmployeeID`),
  KEY `SpecialisationCode` (`SpecialisationCode`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=94 ;

--
-- Dumping data for table `TRAINER_SPECIALISATION`
--

INSERT INTO `TRAINER_SPECIALISATION` (`SpecialisationNum`, `EmployeeID`, `SpecialisationCode`) VALUES
(39, 1, 'BODY'),
(40, 2, 'BODY'),
(41, 30, 'BODY'),
(42, 38, 'BODY'),
(43, 48, 'BODY'),
(44, 1, 'COND'),
(45, 58, 'COND'),
(46, 57, 'COND'),
(47, 56, 'COND'),
(48, 29, 'COND'),
(49, 49, 'COND'),
(50, 55, 'COND'),
(51, 30, 'CTVE'),
(52, 38, 'CTVE'),
(53, 29, 'NTRN'),
(54, 32, 'NTRN'),
(55, 36, 'NTRN'),
(56, 56, 'NTRN'),
(57, 29, 'PFME'),
(58, 32, 'PFME'),
(59, 39, 'PFME'),
(60, 47, 'PFME'),
(61, 48, 'PFME'),
(62, 46, 'PFME'),
(63, 1, 'SENR'),
(64, 33, 'SENR'),
(65, 34, 'SENR'),
(66, 37, 'SENR'),
(67, 39, 'SENR'),
(68, 50, 'SENR'),
(69, 27, 'WMAN'),
(70, 1, 'WMAN'),
(71, 34, 'WMAN'),
(72, 56, 'WMAN'),
(73, 54, 'WMAN'),
(74, 51, 'WMAN'),
(75, 50, 'WMAN'),
(76, 1, 'WTLS'),
(77, 27, 'WTLS'),
(78, 29, 'WTLS'),
(79, 31, 'WTLS'),
(80, 33, 'WTLS'),
(81, 34, 'WTLS'),
(82, 35, 'WTLS'),
(83, 36, 'WTLS'),
(84, 37, 'WTLS'),
(85, 38, 'WTLS'),
(86, 39, 'WTLS'),
(87, 45, 'WTLS'),
(88, 48, 'WTLS'),
(89, 54, 'WTLS'),
(90, 55, 'WTLS'),
(91, 56, 'WTLS'),
(92, 57, 'WTLS'),
(93, 58, 'WTLS');

-- --------------------------------------------------------

--
-- Stand-in structure for view `Trainer_Weightloss_View`
--
CREATE TABLE IF NOT EXISTS `Trainer_Weightloss_View` (
`Trainer` varchar(61)
,`ClubName` varchar(20)
,`Email` varchar(255)
,`Phone` varchar(15)
,`Address` varchar(255)
,`City` varchar(50)
,`State` varchar(3)
,`Postcode` char(4)
);
-- --------------------------------------------------------

--
-- Structure for view `Active_Members_View`
--
DROP TABLE IF EXISTS `Active_Members_View`;

CREATE ALGORITHM=UNDEFINED DEFINER=`hmcdon24`@`%` SQL SECURITY DEFINER VIEW `Active_Members_View` AS select `CLUB`.`ClubCode` AS `ClubCode`,`CLUB`.`ClubName` AS `ClubName`,`MEMBER`.`Status` AS `Status`,count(`MEMBER`.`MemberID`) AS `TotalActive` from (`MEMBER` left join `CLUB` on((`MEMBER`.`ClubCode` = `CLUB`.`ClubCode`))) where (`MEMBER`.`Status` = 'Active') group by `CLUB`.`ClubName`;

-- --------------------------------------------------------

--
-- Structure for view `All_Classes_View`
--
DROP TABLE IF EXISTS `All_Classes_View`;

CREATE ALGORITHM=UNDEFINED DEFINER=`hmcdon24`@`%` SQL SECURITY DEFINER VIEW `All_Classes_View` AS select `CLASS_OFFERING`.`ClubCode` AS `ClubCode`,`CLASS_OFFERING`.`Day` AS `Day`,`CLASS_OFFERING`.`Time` AS `Time`,`lstCLASS`.`ClassName` AS `ClassName`,concat(`EMPLOYEE`.`FirstName`,' ',`EMPLOYEE`.`LastName`) AS `Instructor` from ((`CLASS_OFFERING` join `EMPLOYEE` on((`CLASS_OFFERING`.`EmployeeID` = `EMPLOYEE`.`EmployeeID`))) join `lstCLASS` on((`CLASS_OFFERING`.`ClassCode` = `lstCLASS`.`ClassCode`)));

-- --------------------------------------------------------

--
-- Structure for view `Inactive_Members_View`
--
DROP TABLE IF EXISTS `Inactive_Members_View`;

CREATE ALGORITHM=UNDEFINED DEFINER=`hmcdon24`@`%` SQL SECURITY DEFINER VIEW `Inactive_Members_View` AS select `CLUB`.`ClubCode` AS `ClubCode`,`CLUB`.`ClubName` AS `ClubName`,`MEMBER`.`Status` AS `Status`,count(`MEMBER`.`MemberID`) AS `TotalInactive` from (`MEMBER` left join `CLUB` on((`MEMBER`.`ClubCode` = `CLUB`.`ClubCode`))) where (`MEMBER`.`Status` = 'Inactive') group by `CLUB`.`ClubName`;

-- --------------------------------------------------------

--
-- Structure for view `OnLeave_Members_View`
--
DROP TABLE IF EXISTS `OnLeave_Members_View`;

CREATE ALGORITHM=UNDEFINED DEFINER=`hmcdon24`@`%` SQL SECURITY DEFINER VIEW `OnLeave_Members_View` AS select `CLUB`.`ClubCode` AS `ClubCode`,`CLUB`.`ClubName` AS `ClubName`,`MEMBER`.`Status` AS `Status`,count(`MEMBER`.`MemberID`) AS `TotalOnLeave` from (`MEMBER` left join `CLUB` on((`MEMBER`.`ClubCode` = `CLUB`.`ClubCode`))) where (`MEMBER`.`Status` = 'On Leave') group by `CLUB`.`ClubName`;

-- --------------------------------------------------------

--
-- Structure for view `Trainer_Weightloss_View`
--
DROP TABLE IF EXISTS `Trainer_Weightloss_View`;

CREATE ALGORITHM=UNDEFINED DEFINER=`hmcdon24`@`%` SQL SECURITY DEFINER VIEW `Trainer_Weightloss_View` AS select concat(`EMPLOYEE`.`FirstName`,' ',`EMPLOYEE`.`LastName`) AS `Trainer`,`CLUB`.`ClubName` AS `ClubName`,`EMPLOYEE`.`Email` AS `Email`,`EMPLOYEE`.`Phone` AS `Phone`,`EMPLOYEE`.`Address` AS `Address`,`EMPLOYEE`.`City` AS `City`,`EMPLOYEE`.`State` AS `State`,`EMPLOYEE`.`Postcode` AS `Postcode` from ((`TRAINER_SPECIALISATION` left join `EMPLOYEE` on((`TRAINER_SPECIALISATION`.`EmployeeID` = `EMPLOYEE`.`EmployeeID`))) left join `CLUB` on((`EMPLOYEE`.`ClubCode` = `CLUB`.`ClubCode`))) where ((`EMPLOYEE`.`Status` = 'Active') and (`TRAINER_SPECIALISATION`.`SpecialisationCode` = 'WTLS')) order by `EMPLOYEE`.`LastName`;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ALL_ACCESS_MEMBER`
--
ALTER TABLE `ALL_ACCESS_MEMBER`
  ADD CONSTRAINT `ACSS_MEMB_FK` FOREIGN KEY (`MemberID`) REFERENCES `MEMBER` (`MemberID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `CLASS_OFFERING`
--
ALTER TABLE `CLASS_OFFERING`
  ADD CONSTRAINT `CLSS_CLUB_FK` FOREIGN KEY (`ClubCode`) REFERENCES `CLUB` (`ClubCode`) ON UPDATE CASCADE,
  ADD CONSTRAINT `CLSS_TNNR_FK` FOREIGN KEY (`EmployeeID`) REFERENCES `EMPLOYEE` (`EmployeeID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `CLSS_TYPE_FK` FOREIGN KEY (`ClassCode`) REFERENCES `lstCLASS` (`ClassCode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `CLASS_ONLY_MEMBER`
--
ALTER TABLE `CLASS_ONLY_MEMBER`
  ADD CONSTRAINT `CLSS_MEMB_FK` FOREIGN KEY (`MemberID`) REFERENCES `MEMBER` (`MemberID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `CLUB`
--
ALTER TABLE `CLUB`
  ADD CONSTRAINT `CLUB_MANG_FK` FOREIGN KEY (`ManagerID`) REFERENCES `MANAGER` (`ManagerID`) ON UPDATE CASCADE;

--
-- Constraints for table `EMPLOYEE`
--
ALTER TABLE `EMPLOYEE`
  ADD CONSTRAINT `EMPL_CLUB_FK` FOREIGN KEY (`ClubCode`) REFERENCES `CLUB` (`ClubCode`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `FACILITY_CLUB`
--
ALTER TABLE `FACILITY_CLUB`
  ADD CONSTRAINT `FACL_CLUB_FK` FOREIGN KEY (`ClubCode`) REFERENCES `CLUB` (`ClubCode`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FACL_FACL_FL` FOREIGN KEY (`FacilityCode`) REFERENCES `lstFACILITY` (`FacilityCode`) ON UPDATE CASCADE;

--
-- Constraints for table `MANAGER`
--
ALTER TABLE `MANAGER`
  ADD CONSTRAINT `MANG_EMPL_FK` FOREIGN KEY (`EmployeeID`) REFERENCES `EMPLOYEE` (`EmployeeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `MEMBER`
--
ALTER TABLE `MEMBER`
  ADD CONSTRAINT `MEMB_CLUB_FK` FOREIGN KEY (`ClubCode`) REFERENCES `CLUB` (`ClubCode`) ON UPDATE CASCADE;

--
-- Constraints for table `MEMBER_CLASS`
--
ALTER TABLE `MEMBER_CLASS`
  ADD CONSTRAINT `MBCL_CLASS_FK` FOREIGN KEY (`ClassID`) REFERENCES `CLASS_OFFERING` (`ClassID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `MBCL_MEMB_FK` FOREIGN KEY (`MemberID`) REFERENCES `MEMBER` (`MemberID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `PERSONAL_TRAINING`
--
ALTER TABLE `PERSONAL_TRAINING`
  ADD CONSTRAINT `PT_MEMB_FK` FOREIGN KEY (`MemberID`) REFERENCES `MEMBER` (`MemberID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `PT_TRNR_FK` FOREIGN KEY (`EmployeeID`) REFERENCES `EMPLOYEE` (`EmployeeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `TRAINER`
--
ALTER TABLE `TRAINER`
  ADD CONSTRAINT `TRNR_EMPL_FK` FOREIGN KEY (`EmployeeID`) REFERENCES `EMPLOYEE` (`EmployeeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `TRAINER_SPECIALISATION`
--
ALTER TABLE `TRAINER_SPECIALISATION`
  ADD CONSTRAINT `TRSZ_EMPL_FK` FOREIGN KEY (`EmployeeID`) REFERENCES `EMPLOYEE` (`EmployeeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `TRSZ_SPCL_FK` FOREIGN KEY (`SpecialisationCode`) REFERENCES `lstSPECIALISATION` (`SpecialisationCode`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
