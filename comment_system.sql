-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2017 at 12:24 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `comment_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_comments`
--

INSERT INTO `tbl_comments` (`id`, `name`, `body`, `comment_time`) VALUES
(3, 'Laurie', 'So, what are your plans for this weekend?', '2017-06-18 09:50:19'),
(4, 'Christie', 'I donâ€™t know. Do you want to get together or something?', '2017-06-18 09:51:12'),
(5, 'Sarah', 'How about going to see a movie? Cinemax 26 on Carson Boulevard is showing Enchanted.', '2017-06-18 09:51:33'),
(6, 'Laurie', 'That sounds like a good idea. Maybe we should go out to eat beforehand.', '2017-06-18 09:51:51'),
(7, 'Sarah', 'It is fine with me. Where do you want to meet?', '2017-06-18 09:52:05'),
(8, 'Christie', 'Letâ€™s meet at Summer Pizza House. I have not gone there for a long time.', '2017-06-18 09:52:30'),
(9, 'Laurie', 'Good idea again. I heard they just came up with a new pizza. It should be good because Summer Pizza House always has the best pizza in town.', '2017-06-18 09:52:46'),
(10, 'Sarah', 'When should we meet?', '2017-06-18 09:52:57'),
(11, 'Christie', 'Well, the movie is shown at 2:00PM, 4:00PM, 6:00PM and 8:00PM.', '2017-06-18 09:53:15'),
(12, 'Laurie', 'Why donâ€™t we go to the 2:00PM show? We can meet at Summer Pizza House at noon. That will give us plenty of time to enjoy our pizza.', '2017-06-18 09:53:27'),
(13, 'Sarah', 'My cousin Karen is in town. Can I bring her along? I hate to leave her home alone.', '2017-06-18 09:53:39'),
(14, 'Christie', 'Karen is in town? Yes, bring her along. Laurie, you remember Karen? We met her at Saraâ€™s high school graduation party two years ago.', '2017-06-18 09:53:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
