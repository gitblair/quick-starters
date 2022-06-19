-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 19, 2022 at 12:04 AM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `example`
--

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `notes` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`id`, `name`, `notes`) VALUES
(1, 'Roy Trenneman', 'IT technician'),
(2, 'Maurice Moss', 'When his ears get hot, he sprays them with a bottle'),
(3, 'Jen Barber', 'Relationship manager'),
(4, 'Douglas Reynholm', 'Confident and privileged'),
(5, 'Denholm Reynholm', 'Denholm is the director of Reynholm Industries at the start of series 1, having started the company with \"two things in my possession: a dream, and six million pounds.\"'),
(6, 'Richmond Avenal', 'Richmond is a mild-mannered, posh-accented goth who resides in the IT department server room.'),
(7, 'Jeff Winger', 'After a successful case in which he defended a stripper named Mysti, the Colorado Bar Association began scrutinizing his background'),
(8, 'Britta Perry', 'Lived in New York City'),
(9, 'Abed Nadir', 'Pop-culture enthusiast'),
(10, 'Shirley Bennett', 'Glinda the Good Witch.'),
(11, 'Annie Edison', 'Had a full nervous breakdown that culminated in her jumping through a plate-glass window yelling, \"Everyone\'s a robot!\"'),
(12, 'Troy Barnes', 'Started a Twitter account \"old-whitemansays\"'),
(13, 'Pierce Hawthorne', 'Moist towelette tycoon'),
(14, 'Ben Chang', 'Starred in a stage adaptation of The Karate Kid and a ham commercial that went viral.'),
(15, 'Craig Pelton', 'A good dean'),
(16, 'Ian Duncan', 'British-born professor of psychology at Greendale. Duncan seems to be a highly qualified professor and therapist, but isn\'t above scheming for personal gain like trying to con Jeff out of his Lexus or exploiting Abed\'s issues to advance his career.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
