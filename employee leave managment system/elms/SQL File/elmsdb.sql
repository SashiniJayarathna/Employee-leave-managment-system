

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


--Database: `elmsdb`

-- Table structure for table `admin`


CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- Dumping data for table `admin`


INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2024-09-26 11:42:58');


-- Table structure for table `tbldepartments`


CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) DEFAULT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- Dumping data for table `tbldepartments`


INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(1, 'Human Resource', 'HR', 'HR01', '2024-09-26 14:50:20'),
(2, 'Information Technology', 'IT', 'IT01', '2024-09-26 14:50:56'),
(3, 'Accounts', 'Accounts', 'ACCNT01', '2024-09-26 14:51:26'),
(4, 'ADMIN', 'Admin', 'ADMN01', '2024-09-26 11:35:50');


-- Table structure for table `tblemployees`

CREATE TABLE `tblemployees` (
  `id` int(11) NOT NULL,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(150) DEFAULT NULL,
  `LastName` varchar(150) DEFAULT NULL,
  `EmailId` varchar(200) DEFAULT NULL,
  `Password` varchar(180) DEFAULT NULL,
  `Gender` varchar(100) DEFAULT NULL,
  `Dob` varchar(100) DEFAULT NULL,
  `Department` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(200) DEFAULT NULL,
  `Country` varchar(150) DEFAULT NULL,
  `Phonenumber` char(11) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- Dumping data for table `tblemployees`


INSERT INTO `tblemployees` (`id`, `EmpId`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`) VALUES
(8, '09', 'Sithara', 'Senevirathna', 'ss@gmail.com', '96e79218965eb72c92a549dd5a330112', 'Male', '11 September, 2000', 'Human Resource', 'Anuradhapura', 'Anuradhapura', 'Sri Lanka', '0711111111', 1, '2024-09-29 08:32:42'),
(9, '29', 'Kusal', 'Perera', 'kp@gmail.com', '96e79218965eb72c92a549dd5a330112', 'Male', '18 December, 2000', 'Information Technology', 'Galle', 'Galle', 'Sri Lanka', '0700000000', 1, '2024-09-29 08:34:42'),
(10, '52', 'Himasha', 'Caldera', 'hc@gmail.com', '96e79218965eb72c92a549dd5a330112', 'Female', '19 March, 2000', '', 'Gampaha', 'Gampaha', 'Sri Lanka', '0740000000', 1, '2024-09-29 08:38:20'),
(11, '70', 'Nishan', 'Nissanka', 'nn@gmail.com', '96e79218965eb72c92a549dd5a330112', 'Male', '22 June, 2000', 'Accounts', 'Gampaha', 'Gampaha', 'Sri Lanka', '0772222222', 1, '2024-09-29 08:40:02'),
(12, '91', 'Janaka', 'Jayarathna', 'jj@gmail.com', '96e79218965eb72c92a549dd5a330112', 'Male', '15 August, 2000', 'Information Technology', 'Colombo', 'Colombo', 'Sri Lanka', '0755555555', 1, '2024-09-29 08:42:01'),
(13, '112', 'Wishal', 'Awandya', 'wa@gmail.com', '96e79218965eb72c92a549dd5a330112', 'Male', '21 November, 2000', '', 'Anamaduwa', 'Anamaduwa', 'Sri Lanka', '0762222222', 1, '2024-09-29 08:43:27'),
(14, '129', 'Dinusha', 'Ranasinhe', 'dr@gmail.com', '96e79218965eb72c92a549dd5a330112', 'Male', '18 December, 2000', 'ADMIN', 'Bibile', 'Bibile', 'Sri Lanka', '0710000000', 1, '2024-09-29 08:44:56'),
(15, '150', 'Chinthaka', 'Weerasinhe', 'cw@gmail.com', '96e79218965eb72c92a549dd5a330112', 'Male', '16 February, 2000', '', 'Vaunia', 'Vaunia', 'Sri Lanka', '0745555555', 1, '2024-09-29 08:46:28'),
(16, '169', 'Piyumi', 'Senarathna', 'ps@gmail.com', '96e79218965eb72c92a549dd5a330112', 'Female', '12 June, 2000', 'Accounts', 'Gampaha', 'Gampaha', 'Sri Lanka', '0725555555', 1, '2024-09-29 08:48:00');


-- Table structure for table `tblleaves`


CREATE TABLE `tblleaves` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) DEFAULT NULL,
  `ToDate` varchar(120) DEFAULT NULL,
  `FromDate` varchar(120) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `IsRead` int(1) DEFAULT NULL,
  `empid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- Table structure for table `tblleavetype`


CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- Dumping data for table `tblleavetype`


INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `CreationDate`) VALUES
(5, 'Casual Leaves', 'Casual Leaves', '2024-09-29 08:59:28'),
(6, 'Sick Leaves', 'Sick Leaves', '2024-09-29 08:59:55'),
(7, 'Other Leaves', 'Other Leaves', '2024-09-29 09:00:14');


-- Indexes for dumped tables

-- Indexes for table `admin`

ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);


-- Indexes for table `tbldepartments`

ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);


-- Indexes for table `tblemployees`

ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`id`);


-- Indexes for table `tblleaves`

ALTER TABLE `tblleaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);


-- Indexes for table `tblleavetype`

ALTER TABLE `tblleavetype`
  ADD PRIMARY KEY (`id`);


-- AUTO_INCREMENT for dumped tables



-- AUTO_INCREMENT for table `admin`

ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


-- AUTO_INCREMENT for table `tbldepartments`

ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


-- AUTO_INCREMENT for table `tblemployees`

ALTER TABLE `tblemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;


-- AUTO_INCREMENT for table `tblleaves`

ALTER TABLE `tblleaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;


-- AUTO_INCREMENT for table `tblleavetype`

ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;
