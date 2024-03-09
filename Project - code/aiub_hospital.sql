-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2021 at 11:26 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aiub hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `Id` int(20) NOT NULL,
  `Appointment Date` date NOT NULL,
  `Appointment Time` text NOT NULL,
  `Patient Id` int(20) NOT NULL,
  `Doctor Id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`Id`, `Appointment Date`, `Appointment Time`, `Patient Id`, `Doctor Id`) VALUES
(1, '2021-08-18', '(12:00 - 12:30)', 1, 1),
(3, '2021-08-31', '(12:00 - 12:30)', 1, 1),
(4, '2021-08-28', '14:20', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `Id` int(20) NOT NULL,
  `Name` text NOT NULL,
  `Password` text NOT NULL,
  `Email` text NOT NULL,
  `Mobile Number` text NOT NULL,
  `Type` text NOT NULL,
  `Shift` text NOT NULL,
  `Doctor Fee` text NOT NULL,
  `Gender` text NOT NULL,
  `Image` text NOT NULL,
  `Address` text NOT NULL,
  `Category` text NOT NULL,
  `Date of Birth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`Id`, `Name`, `Password`, `Email`, `Mobile Number`, `Type`, `Shift`, `Doctor Fee`, `Gender`, `Image`, `Address`, `Category`, `Date of Birth`) VALUES
(1, 'Dr. 1', 'dr1\'spass', 'dr1@gmail.com', '012345678950', 'MBBS', 'none', '600Tk', 'Male', '', 'DrHouse road', 'Doctor', '2011-08-01'),
(2, 'Dr. 2', 'dr2\'spass', 'dr2@gmail.com', '013345678950', 'MBBS', 'none', '600Tk', 'Female', '', 'DrHouse road', 'Doctor', '2011-08-01'),
(3, 'Dr. 3', 'dr3\'spass', 'dr3@gmail.com', '015345678950', 'FRCPS', 'none', '1000Tk', 'Male', '', 'DrHouse road 3A', 'Doctor', '2011-08-03');

-- --------------------------------------------------------

--
-- Table structure for table `doctor info`
--

CREATE TABLE `doctor info` (
  `ID` int(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Contact` varchar(13) NOT NULL,
  `Field` varchar(50) NOT NULL,
  `Schedule` text NOT NULL,
  `Display` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor info`
--

INSERT INTO `doctor info` (`ID`, `Name`, `Contact`, `Field`, `Schedule`, `Display`) VALUES
(1, 'Dr. Floki', '+77 015645 54', 'Pulmonologist', 'Sun/Mon/Tue:(11:00-14:00)', 'YES'),
(2, 'Dr. Kakashi', '+02 5641 67 6', 'Ophthalmologist', 'Sun/Fri:(19:00-23:59)', 'YES'),
(3, 'Dr. Ford', '?? ??--876t76', 'Psychologist', 'Fri:(16:00-20:00)', 'NO'),
(4, 'Dr. White	', '+651 545 5654', 'Oncologist', 'Sat-Fri:(14:00-20:00)', 'YES'),
(5, 'Dr. Escobar', '+40 4206585 6', 'Cardiologist', 'Tue/Wed:(18:00-22:00)', 'YES'),
(6, '', '', '', '', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `Id` int(20) NOT NULL,
  `Name` text NOT NULL,
  `Password` text NOT NULL,
  `Email` text NOT NULL,
  `Mobile Number` text NOT NULL,
  `Address` text NOT NULL,
  `Category` text NOT NULL,
  `Gender` text NOT NULL,
  `Date of Birth` date NOT NULL,
  `Image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`Id`, `Name`, `Password`, `Email`, `Mobile Number`, `Address`, `Category`, `Gender`, `Date of Birth`, `Image`) VALUES
(1, 'Eliot Ed.', 'Aa123456!', 'elioted@gmail.com', '01845678910', 'XYZ Map', 'Patient', 'Male', '2009-04-14', ''),
(2, 'Darlean Jk', 'A123456a#', 'darjk@gmail.com', '01745678910', 'ASD Road', 'Patient', 'Female', '2021-08-01', ''),
(3, 'Itachi Uchiha', 'narutoMF4#', 'itachi@gmail.com', '012345678902', 'Land of leaf', 'Patient', 'Male', '2021-08-06', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Id` int(100) NOT NULL,
  `Payment Amount` text NOT NULL,
  `Payment Date` date NOT NULL,
  `Payment Time` text NOT NULL,
  `Appointment Serial` int(50) NOT NULL,
  `Patient Id` int(50) NOT NULL,
  `Doctor Id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Id`, `Payment Amount`, `Payment Date`, `Payment Time`, `Appointment Serial`, `Patient Id`, `Doctor Id`) VALUES
(1, '500tk', '2021-08-03', '4:20PM', 1, 1, 1),
(2, '300tk', '2021-08-01', '5:30PM', 2, 1, 2),
(3, '250tk', '2021-07-16', '6:55am', 3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE `receptionist` (
  `Id` int(20) NOT NULL,
  `Name` text NOT NULL,
  `Email` text NOT NULL,
  `Password` text NOT NULL,
  `Mobile Number` text NOT NULL,
  `Shift` text NOT NULL,
  `Address` text NOT NULL,
  `Category` text NOT NULL,
  `Gender` text NOT NULL,
  `Date of Birth` date NOT NULL,
  `Image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`Id`, `Name`, `Email`, `Password`, `Mobile Number`, `Shift`, `Address`, `Category`, `Gender`, `Date of Birth`, `Image`) VALUES
(1, 'Afique Sadique', 'afiquesadique420@gmail.com', '$2y$10$jtaWrHQLN6/L5Ie5TN5bye7EcWQ0Cg3IW.u4TKbHmyfQbUtIM6ise', '01696969699', 'Night (4PM -12PM)', 'Abc Road C', 'Receptionist', 'Male', '1996-01-01', '0f59c70661eeb41b7f0d672a7466ae32.png'),
(4, 'Emp 2', 'Emp2@gmail.com', '$2y$10$.kSLn98HJpof2lyVLEZxTO.b2sCseSzLBcdqAPNb4sXaaKycz6DsO', '01696969699', 'none', 'Abc Road', 'Receptionist', 'Male', '1996-01-01', ''),
(5, 'Emp 3', 'Emp3@gmail.com', '$2y$10$o9MOpyRSPWuSGxTlw2IkEeZNAZ7X7u8WB/wBQPFvYmzgvClOr0yG2', '01696969699', 'none', 'Abc Road', 'Receptionist', 'Male', '1996-01-01', ''),
(6, 'Emp 4', 'Emp4@gmail.com', '$2y$10$WAaiKu3qbLiKpSOAvb4DkOWQ35Vjsay6PHGwMz1KN9Dg9QlJcOEji', '01696969699', 'none', 'Abc Road', 'Receptionist', 'Male', '1996-01-01', '');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `ID` int(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(80) NOT NULL,
  `Date of birth` int(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`ID`, `Name`, `Email`, `Password`, `Date of birth`, `Gender`, `Image`) VALUES
(1, 'Afique Sadique', 'afiquesadique420@gmail.com', '12345678@p', 2021, 'other', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Patient Id` (`Patient Id`),
  ADD KEY `Doctor Id` (`Doctor Id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `doctor info`
--
ALTER TABLE `doctor info`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id` (`Appointment Serial`),
  ADD KEY `Patient Id` (`Patient Id`),
  ADD KEY `Doctor Id` (`Doctor Id`);

--
-- Indexes for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `doctor info`
--
ALTER TABLE `doctor info`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `receptionist`
--
ALTER TABLE `receptionist`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
