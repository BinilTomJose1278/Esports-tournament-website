-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2022 at 03:05 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Database: `db_minorproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(11) NOT NULL,
  `queries` varchar(300) NOT NULL,
  `replies` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatbot`
--

INSERT INTO `chatbot` (`id`, `queries`, `replies`) VALUES
(0, 'hi|hello|hey|hy', 'Hello There !'),
(1, 'goodbye|bye|see you', 'Good Bye!'),
(3, 'how are you|how are you?', 'very well, What about you?'),
(4, 'fine', 'cool!'),
(5, 'tell me about the website', 'competitive platform for organizing as well an conducting tournaments'),
(6, 'how to login', 'user or organization?'),
(7, 'user', 'goto 1.guest 2.user login'),
(8, 'organization', '1.guest 2.organization login'),
(9, 'complaint', 'esportscodex@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_password` varchar(50) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_password`, `admin_email`, `admin_name`) VALUES
(1, 'anagha@123', 'anagha@gmail.com', 'Anagha');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complaint`
--

CREATE TABLE `tbl_complaint` (
  `complaint_id` int(20) NOT NULL,
  `complaint_date` date NOT NULL,
  `user_id` int(50) NOT NULL,
  `org_id` int(50) NOT NULL,
  `complaint_reply` varchar(50) NOT NULL,
  `complaint_status` varchar(50) NOT NULL,
  `complaint_message` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `district_id` int(11) NOT NULL,
  `district_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`district_id`, `district_name`) VALUES
(1, 'Ernakulam'),
(2, 'Idukki'),
(3, 'Wayanad'),
(6, 'Kozhikode'),
(7, 'Kannur'),
(8, 'Thrissur'),
(9, 'Palakkad'),
(10, 'Thiruvananthapuram'),
(11, 'Kollam'),
(12, 'Malappuram'),
(13, 'Kasargod'),
(14, 'Painavu'),
(15, 'Kalpatta'),
(16, 'Kottayam');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `feedback_id` int(20) NOT NULL,
  `feedback_date` date NOT NULL,
  `user_id` int(30) NOT NULL,
  `org_id` int(30) NOT NULL,
  `feedback_details` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_organisationtype`
--

CREATE TABLE `tbl_organisationtype` (
  `organisationtype_id` int(10) NOT NULL,
  `organisationtype_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_organisationtype`
--

INSERT INTO `tbl_organisationtype` (`organisationtype_id`, `organisationtype_name`) VALUES
(4, 'Club'),
(5, 'Educational Institution'),
(6, 'Private Institution'),
(7, 'Community'),
(8, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_organization`
--

CREATE TABLE `tbl_organization` (
  `organization_id` int(11) NOT NULL,
  `organization_name` varchar(100) NOT NULL,
  `organization_contact` varchar(100) NOT NULL,
  `organization_email` varchar(100) NOT NULL,
  `organization_photo` varchar(100) NOT NULL,
  `organization_proof` varchar(100) NOT NULL,
  `type_id` int(11) NOT NULL,
  `organization_password` varchar(100) NOT NULL,
  `organization_vstatus` varchar(100) NOT NULL DEFAULT '0',
  `organization_doj` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_organization`
--

INSERT INTO `tbl_organization` (`organization_id`, `organization_name`, `organization_contact`, `organization_email`, `organization_photo`, `organization_proof`, `type_id`, `organization_password`, `organization_vstatus`, `organization_doj`) VALUES
(1, 'Anagha', '0987654321', 'anagha@gmail.com', 'Anagha.jpg', 'Anagha.jpg', 1, 'anagha@1234', '2', '2022-06-21'),
(2, 'Lions Club', '0987654321', 'anugrahaantoo@gmail.com', 'jhondu (3).jpg', 'jhondu.jpg', 1, 'anugraha', '2', '2022-06-21'),
(3, 'Club', '37873487827', 'binil@gmail.com', 'jhondu.jpg', 'jhondu (3).jpg', 1, 'ajk', '1', '2022-06-23'),
(4, 'lions Club', '74627871', 'lions@gmail.com', '20210628_214000.jpg', 'jhondu (3).jpg', 2, 'lion', '0', '2022-07-02'),
(5, 'C9', '26728791', 'c9@gmail.com', 'jhondu (4).jpg', '20210628_214000.jpg', 4, 'c9', '1', '2022-07-05'),
(6, 'Anagha Abraham', '7356393020', 'anaghaabraham@gmail.com', '20210628_214000.jpg', 'jhondu (4).jpg', 2, 'Anagha', '0', '2022-07-06'),
(7, 'Vikings', '9656232471', 'vikings@gmail.com', '', '', 1, '321', '1', '2022-07-06'),
(8, 'VikingsTeam', '9865432134', 'vikings@gmail.com', 'download.png', '2022_07_06 23_54 Office Lens.pdf', 4, 'vikings', '1', '2022-07-07'),
(9, 'Rajagiri School of Engineering', '7065865432', 'rajagiri@gmail.com', 'rset.png', '2022_07_06 23_54 Office Lens.pdf', 5, 'rajagiri', '1', '2022-07-07'),
(10, 'lions Club', '8765478928', 'lions@gmail.com', 'Lions_Clubs_International_logo.svg.png', '2022_07_06 23_54 Office Lens.pdf', 7, 'lions', '2', '2022-07-07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_place`
--

CREATE TABLE `tbl_place` (
  `place_id` int(11) NOT NULL,
  `place_name` varchar(100) NOT NULL,
  `district_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_place`
--

INSERT INTO `tbl_place` (`place_id`, `place_name`, `district_id`) VALUES
(1, 'Muvattupuzha', 0),
(2, 'Muvattupuzha', 0),
(3, 'Muvattupuzha', 0),
(4, 'Muvattupuzha', 0),
(5, 'kjhb', 0),
(7, 'Muvattupuzha', 1),
(8, 'Angamaly', 1),
(9, 'Kakkanad', 1),
(10, 'Chalakkudy', 8),
(11, 'Guruvayur', 8),
(12, 'Ettumanoor', 16),
(13, 'Samkranthi', 16),
(14, 'Ponnani', 12);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tournamentrequest`
--

CREATE TABLE `tbl_tournamentrequest` (
  `request_id` int(20) NOT NULL,
  `request_date` date NOT NULL,
  `user_id` int(20) NOT NULL,
  `request_status` int(20) NOT NULL,
  `schedule_id` int(20) NOT NULL,
  `request_reply` varchar(50) NOT NULL,
  `request_pstatus` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tournamentrequest`
--

INSERT INTO `tbl_tournamentrequest` (`request_id`, `request_date`, `user_id`, `request_status`, `schedule_id`, `request_reply`, `request_pstatus`) VALUES
(1, '2022-07-02', 0, 0, 5, '', 0),
(2, '2022-07-02', 0, 0, 5, '', 0),
(3, '2022-07-04', 0, 0, 6, '', 0),
(4, '2022-07-04', 0, 0, 5, '', 0),
(5, '2022-07-04', 1, 1, 5, '', 0),
(6, '2022-07-04', 2, 1, 6, '', 0),
(7, '2022-07-05', 2, 1, 5, '', 0),
(8, '2022-07-05', 0, 0, 6, '', 0),
(9, '2022-07-05', 0, 0, 6, '', 0),
(10, '2022-07-05', 3, 2, 7, '', 0),
(11, '2022-07-06', 2, 1, 9, '', 0),
(12, '2022-07-06', 2, 0, 9, '', 0),
(13, '2022-07-06', 2, 2, 9, '', 0),
(14, '2022-07-06', 2, 1, 10, '', 1),
(15, '2022-07-06', 4, 1, 11, '', 1),
(16, '2022-07-06', 4, 0, 12, '', 0),
(17, '2022-07-06', 4, 1, 11, '', 1),
(18, '2022-07-06', 5, 1, 12, '', 0),
(19, '2022-07-06', 5, 1, 12, '', 1),
(20, '2022-07-08', 2, 0, 17, '', 0),
(21, '2022-07-08', 2, 1, 16, 'cdvfcdxs', 1),
(22, '2022-07-08', 6, 1, 17, '', 0),
(23, '2022-07-11', 3, 0, 13, '', 0),
(24, '2022-07-11', 3, 0, 13, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tournamentschedule`
--

CREATE TABLE `tbl_tournamentschedule` (
  `schedule_id` int(50) NOT NULL,
  `tournament_name` varchar(50) NOT NULL,
  `schedule_fordate` date NOT NULL,
  `schedule_todate` date NOT NULL,
  `schedule_fromtime` time NOT NULL,
  `schedule_totime` time NOT NULL,
  `org_id` int(50) NOT NULL,
  `tournamenttype_id` varchar(100) NOT NULL,
  `schedule_rules` varchar(100) NOT NULL,
  `tournament_fees` varchar(50) NOT NULL,
  `winning_price` varchar(50) NOT NULL,
  `schedule_wstatus` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tournamentschedule`
--

INSERT INTO `tbl_tournamentschedule` (`schedule_id`, `tournament_name`, `schedule_fordate`, `schedule_todate`, `schedule_fromtime`, `schedule_totime`, `org_id`, `tournamenttype_id`, `schedule_rules`, `tournament_fees`, `winning_price`, `schedule_wstatus`) VALUES
(1, '', '2022-07-06', '2022-07-14', '17:46:00', '17:47:00', 0, '', 'dvfbgfn', '', '', 0),
(2, '', '2022-06-30', '2022-07-15', '14:56:00', '14:57:00', 0, '', 'nsman', '', '', 0),
(3, '', '2022-06-30', '2022-07-15', '14:56:00', '14:57:00', 0, '', 'nsman', '', '', 0),
(4, '', '2022-07-14', '2022-07-28', '15:59:00', '14:03:00', 0, '', 'nsjN', '', '', 0),
(5, '', '2022-07-14', '2022-07-14', '15:19:00', '15:19:00', 3, '4', 'jhgfdc', '', '', 0),
(6, '', '2022-07-06', '2022-07-09', '17:34:00', '15:35:00', 0, '6', 'age above 20', '', '', 0),
(7, '', '2022-07-08', '2022-07-01', '23:39:00', '01:39:00', 5, '6', 'Have to follow rules and regulations', '', '', 0),
(8, 'Chess competition', '2022-07-01', '2022-07-16', '20:25:00', '20:25:00', 0, '6', 'everyone should folloow', '', '', 0),
(9, 'typing compo', '2022-07-07', '2022-07-08', '18:42:00', '21:39:00', 5, '4', 'Okay bie', '', '', 0),
(10, 'Colouring ', '2022-07-08', '2022-07-08', '21:10:00', '19:13:00', 5, '6', 'The rules should be followed', '1000', '', 0),
(11, 'Valorant Tournament', '2022-07-07', '2022-07-09', '01:16:00', '02:17:00', 7, '6', 'Should not break others ribss', '10', '', 0),
(12, 'Pubg gaming', '2022-07-01', '2022-07-08', '01:18:00', '02:19:00', 7, '4', 'Dont sleep ', '200', '', 0),
(13, 'Chess competition', '2022-07-08', '2022-07-09', '02:25:00', '03:25:00', 8, '10', 'Do not indulge in malpractises', '10', '', 0),
(14, 'Valorant Tournament', '2022-07-13', '2022-07-15', '03:00:00', '04:30:00', 8, '10', 'Minimum 5 players.', '50', '', 0),
(15, 'Pubg gaming', '2022-07-21', '2022-07-22', '02:00:00', '04:00:00', 8, '10', 'Minimum 60FPS is required for gaming', '30', '', 0),
(16, 'Chess competition', '2022-07-07', '2022-07-07', '19:12:00', '18:14:00', 5, '10', 'Shou; fool', '1000', '', 1),
(17, 'combo', '2022-07-07', '2022-07-22', '21:17:00', '18:21:00', 5, '9', 'drfhgfj', '2000', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tournamenttype`
--

CREATE TABLE `tbl_tournamenttype` (
  `tournamenttype_id` int(50) NOT NULL,
  `tournamenttype_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tournamenttype`
--

INSERT INTO `tbl_tournamenttype` (`tournamenttype_id`, `tournamenttype_name`) VALUES
(11, 'Coding competition'),
(10, 'Multiplayer games'),
(9, 'Single player games'),
(12, 'Typing competition');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_contact` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_address` varchar(100) NOT NULL,
  `user_photo` varchar(100) NOT NULL,
  `user_proof` varchar(100) NOT NULL,
  `place_id` int(11) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `tournamenttype_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_contact`, `user_email`, `user_address`, `user_photo`, `user_proof`, `place_id`, `user_password`, `user_name`, `tournamenttype_id`) VALUES
(1, '8129959480', 'surajks28101999@gmail.com', 'Thodupuzha', 'index4.jpg', 'index4.jpg', 7, 'surajks@123', 'Suraj K S', 0),
(2, '93849957321', 'ajk@gmail.com', 'Panampilly', '20210628_214000.jpg', 'jhondu (1).jpg', 0, 'binil', 'Antony J Kolanchery', 0),
(3, '9496594550', 'aarya@gmail.com', 'Kunnathu house pazhamthottam po', 'jhondu (3).jpg', 'jhondu.jpg', 7, 'aarya', 'AARYA', 0),
(4, '9544831496', 'bonil@gmail.com', '123houston', 'jhondu.jpg', 'jhondu (2).jpg', 0, '123', 'bonil', 0),
(5, '8301073050', 'qwe@gmail.com', 'sdfjckxk', '', '', 0, '', 'babes', 0),
(6, '9961777331', 'anugrahaantoo@gmail.com', 'Kanjookaran h', 'WhatsApp Image 2022-07-06 at 11.52.56 PM.jpeg', '2022_07_06 23_54 Office Lens.pdf', 8, 'anugraha', 'Anugraha', 0),
(7, '9544331494', 'biniltomjose@gmail.com', 'Purva Eternity', 'WhatsApp Image 2022-07-06 at 11.58.55 PM.jpeg', '2022_07_06 23_54 Office Lens.pdf', 9, 'binil', 'Binil Tom Jose', 0),
(8, '9876543210', 'antonyj@gmail.com', 'Kolenchery', 'WhatsApp Image 2022-07-07 at 12.02.38 AM.jpeg', '2022_07_06 23_54 Office Lens.pdf', 9, 'antony', 'Antony J Kolenchery', 0),
(9, '9763852627', 'anaghaabraham@gmail.com', 'Kunnathu house pazhamthottam po', 'WhatsApp Image 2022-07-07 at 12.02.57 AM.jpeg', '2022_07_06 23_54 Office Lens.pdf', 7, 'anagha', 'Anagha Abraham', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_winningreport`
--

CREATE TABLE `tbl_winningreport` (
  `report_id` int(20) NOT NULL,
  `report_date` date NOT NULL,
  `schedule_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `second_user` int(11) NOT NULL,
  `third_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_winningreport`
--

INSERT INTO `tbl_winningreport` (`report_id`, `report_date`, `schedule_id`, `user_id`, `second_user`, `third_user`) VALUES
(1, '2022-07-10', 16, 1, 2, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_complaint`
--
ALTER TABLE `tbl_complaint`
  ADD PRIMARY KEY (`complaint_id`),
  ADD UNIQUE KEY `complaint_id` (`complaint_id`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`feedback_id`),
  ADD UNIQUE KEY `feedback_id` (`feedback_id`);

--
-- Indexes for table `tbl_organisationtype`
--
ALTER TABLE `tbl_organisationtype`
  ADD PRIMARY KEY (`organisationtype_id`);

--
-- Indexes for table `tbl_organization`
--
ALTER TABLE `tbl_organization`
  ADD PRIMARY KEY (`organization_id`);

--
-- Indexes for table `tbl_place`
--
ALTER TABLE `tbl_place`
  ADD PRIMARY KEY (`place_id`);

--
-- Indexes for table `tbl_tournamentrequest`
--
ALTER TABLE `tbl_tournamentrequest`
  ADD PRIMARY KEY (`request_id`),
  ADD UNIQUE KEY `request_id` (`request_id`);

--
-- Indexes for table `tbl_tournamentschedule`
--
ALTER TABLE `tbl_tournamentschedule`
  ADD PRIMARY KEY (`schedule_id`),
  ADD UNIQUE KEY `schedule_id` (`schedule_id`);

--
-- Indexes for table `tbl_tournamenttype`
--
ALTER TABLE `tbl_tournamenttype`
  ADD PRIMARY KEY (`tournamenttype_id`),
  ADD UNIQUE KEY `tournamenttype_name` (`tournamenttype_name`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_winningreport`
--
ALTER TABLE `tbl_winningreport`
  ADD PRIMARY KEY (`report_id`),
  ADD UNIQUE KEY `report_id` (`report_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_complaint`
--
ALTER TABLE `tbl_complaint`
  MODIFY `complaint_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `feedback_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_organisationtype`
--
ALTER TABLE `tbl_organisationtype`
  MODIFY `organisationtype_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_organization`
--
ALTER TABLE `tbl_organization`
  MODIFY `organization_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_place`
--
ALTER TABLE `tbl_place`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_tournamentrequest`
--
ALTER TABLE `tbl_tournamentrequest`
  MODIFY `request_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_tournamentschedule`
--
ALTER TABLE `tbl_tournamentschedule`
  MODIFY `schedule_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_tournamenttype`
--
ALTER TABLE `tbl_tournamenttype`
  MODIFY `tournamenttype_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_winningreport`
--
ALTER TABLE `tbl_winningreport`
  MODIFY `report_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

