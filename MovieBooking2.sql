-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2021 at 06:20 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7
create database moviebooking;
use moviebooking;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
## SET AUTOCOMMIT = 0;
-- START TRANSACTION;
SET time_zone = "+00:00";


-- /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
-- /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
-- /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
-- /*!40101 SET NAMES utf8mb4 */; 

--
-- Database: `moviebooking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `password`) VALUES
(3011, '3011');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `bookingid` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `vehicle_type` varchar(50) NOT NULL,
  `vehicle_no` varchar(50) NOT NULL,
  `locationid` int(8) DEFAULT NULL,
  `slotid` varchar(20) NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(20) NOT NULL,
  `duration` varchar(10) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `paid` int(1) NOT NULL DEFAULT 0,
  `location_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings`
--

-- INSERT INTO `bookings` (`bookingid`, `email`, `vehicle_type`, `vehicle_no`, `locationid`, `slotid`, `date`, `time`, `duration`, `cost`, `paid`, `location_name`) VALUES
-- (66, 'karthicbe2405@gmail.com', 'PLATINUM', '', 2, '2 1 9:00 AM', '', '2021-02-28', '5', '1000', 1, ''),
-- (69, 'Karthickkumar@gmail.com', 'GOLD', '', 2, '2 2 12:30 PM', '', '2021-03-01', '2', '300', 1, ''),
-- (70, 'Karthi@gmail.com', 'Elite', '', 2, '2 3 9:30 PM', '', '2021-03-03', '2', '600', 1, ''),
-- (71, 'Karthi@gmail.com', 'Box', '', 37, '37 1 10 : 15 AM', '', '2021-03-06', '2', '1000', 1, ''); 

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `locationid` int(8) UNSIGNED NOT NULL,
  `location_name` varchar(80) NOT NULL,
  `area` varchar(100) NOT NULL,
  `slots` int(8) NOT NULL,
  `cast` varchar(2000) NOT NULL,
  `bannerimage` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`locationid`, `location_name`, `area`, `slots`, `cast`, `bannerimage`) VALUES
(1,"PRINCE","LUXE CINEMAS ",4,"A teacher of social science falls in love with a British woman who teaches English in the same school as him, but all hell breaks loose when they decide to marry.","https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiJFRT65GEPAZDpwiyBcrkN11lZie0e2uE3Rut7pmD0yXa9ExP5pLcL6s-GI_ZbiPrgiQHcqCROREUXdnLlhgrjxivYQLpQAeqwycNLzi7FgyYc9TlzLxgYuasiO5z7eImfbi-PAuAbHPmLs-tpnl2CwRYdZg9nuzuaxN2B8r6Bv-WrIbFRDJJYF4Wsfw/s1600/HDgallery%20Prince%20%20%281%29.jpeg"),
(2, 'KANNUM KANNUM KOLLAYADITHAL', 'FUN CINEMAS', 4, 'A carefree youngster`s life takes an interesting turn after he meets the girl of his dreams.', 'https://images.moviebuff.com/74044d8e-0e02-4ff5-87d3-a939aae57619?w=1000'),
(3, 'REMO', 'SAVEETHA CINEMAS', 4, 'Remo is a Tamil romantic comedy movie directed by Bhagyaraj Kannan. The film stars Sivakarthikeyan and Keerthy Suresh in the leading roles.', 'https://image.songsuno.com/movie-images/original/movie/remo-(tamil)/remo-(tamil)-poster-sivakarthikeyan.jpg'),
(4, 'VARISU','KG CINEMAS',4,'Vijay Rajendran is a happy-go-lucky man, but everything changes after the unexpected death of his foster father. ', 'https://wallpapercave.com/wp/wp11261581.jpg'),
(5,"NAMMA VEETU PILLAI","SANGAMAM CINEMAS",4,"Due to pressure from his family, a young man is forced to marry his sister off to a local thug whom he dislikes. Later, the ruffian uses this relationship for bullying him.","https://wallpapercave.com/wp/wp7718221.jpg "),
(6, 'BRAHMASTRA', 'THE SPI CINEMAS', 4, 'Shiva and Isha, a young couple, learn about the secrets of the Brahmastra. Together, they must stop the forces of evil from destroying the universe.', 'https://stat4.bollywoodhungama.in/wp-content/uploads/2022/09/Brahmastra-%E2%80%93-Part-One-Shiva-9.jpg'),
(7,"DOCTOR","PALAZZO",4,"When a military doctor tracks down his former fiancee's kidnapped niece, he discovers a complex human trafficking ring in Goa. He then weaves an intricate trap to capture the perpetrators.","https://ahseeit.com/tamil/king-include/uploads/2021/10/247162585_567289511240544_8734105909358907075_n.webp-9854369708.jpg"),
(8, 'VAATHI', 'SANGEETHA CINEMAS', 4, 'A young man faces a difficult time as he struggles against the privatization of education.', 'https://www.nowrunning.com/content/movie/2022/vaath-26064/Stills/vaathi_01_20221117.jpg'),
(9,"DON","ROHINI MOVIE PARK",4,"A man reminisces his good old college days and thinks about how he managed to find his purpose and get his life together.","https://moviegalleri.net/wp-content/gallery/don-images/Don-Movie-Images-HD-1875ca9.jpg"),
(10,"MAAN KARATE","AGS CINEMAS",4,"Four friends meet a person during a trip who predicts their future by giving them a newspaper to be printed four months later. They work hard to make the prediction come true.","https://www.tamil2lyrics.com/wp-content/uploads/2017/01/maan-karate.png");


-- --------------------------------------------------------

--
-- Table structure for table `slots`
--

CREATE TABLE `slots` (
  `slotid` varchar(20) NOT NULL,
  `locationid` int(8) NOT NULL,
  `slotno` varchar(20) NOT NULL,
  `status` int(8) NOT NULL,
  `time` varchar(20) NOT NULL,
  `duration` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slots`
--

INSERT INTO `slots` (`slotid`, `locationid`, `slotno`, `status`, `time`, `duration`) VALUES
('SLOT1 10:30AM', 1, '10:30 AM', 0, '2:30 Hrs ', 0),
('SLOT2 2:30 PM', 1, '2:30 PM', 0, '2:30 Hrs', 0),
('SLOT3 6:00 PM', 1, '6:00 PM', 0, '2:30 Hrs', 0),
('SLOT4 9:00 PM',1,'9:00 PM',0,'2:30 Hrs',0),
('SLOT1 9:00 AM', 2, '9:00 AM', 0, '2:30 Hrs', 0),
('SLOT2 12:30 PM', 2, '12:30 PM', 0, '2:30 Hrs', 0),
('SLOT3 2:30 PM', 2, '2:30 PM', 0, '2:30 Hrs', 0),
('SLOT4 9:30 PM', 2, '9:30 PM', 0, '2:30 Hrs', 0),
('SLOT1 10:30AM', 3, '10:30 AM', 0, '2:30 Hrs', 0),
('SLOT2 2:30 PM', 3, '2:30 PM', 0, '2:30 Hrs', 0),
('SLOT3 6:00 PM', 3, '6:00 PM', 0, '2:30 Hrs', 0),
('SLOT4 9:00 PM',3,'9:00 PM',0,'2:30 Hrs',0),
('SLOT1 9:00 AM', 4, '9:00 AM', 0, '2:30 Hrs', 0),
('SLOT2 12:30 PM', 4, '12:30 PM', 0, '2:30 Hrs', 0),
('SLOT3 2:30 PM', 4, '2:30 PM', 0, '2:30 Hrs', 0),
('SLOT4 9:30 PM', 4, '9:30 PM', 0, '2:30 Hrs', 0),
('SLOT1 10:30AM', 5, '10:30 AM', 0, '2:30 Hrs', 0),
('SLOT2 2:30 PM', 5, '2:30 PM', 0, '2:30 Hrs', 0),
('SLOT3 6:00 PM', 5, '6:00 PM', 0, '2:30 Hrs', 0),
('SLOT4 9:00 PM',5,'9:00 PM',0,'2:30 Hrs',0),
('SLOT1 9:00 AM', 6, '9:00 AM', 0, '2:30 Hrs', 0),
('SLOT2 12:30 PM', 6, '12:30 PM', 0, '2:30 Hrs', 0),
('SLOT3 2:30 PM', 6, '2:30 PM', 0, '2:30 Hrs', 0),
('SLOT4 9:30 PM', 6, '9:30 PM', 0, '2:30 Hrs', 0),
('SLOT1 10:30AM', 7, '10:30 AM', 0, '2:30 Hrs', 0),
('SLOT2 2:30 PM', 7, '2:30 PM', 0, '2:30 Hrs', 0),
('SLOT3 6:00 PM', 7, '6:00 PM', 0, '2:30 Hrs', 0),
('SLOT4 9:00 PM',7,'9:00 PM',0,'2:30 Hrs',0),
('SLOT1 9:00 AM', 8, '9:00 AM', 0, '2:30 Hrs', 0),
('SLOT2 12:30 PM', 8, '12:30 PM', 0, '2:30 Hrs', 0),
('SLOT3 2:30 PM', 8, '2:30 PM', 0, '2:30 Hrs', 0),
('SLOT4 9:30 PM', 8, '9:30 PM', 0, '2:30 Hrs', 0),
('SLOT1 10:30AM', 9, '10:30 AM', 0, '2:30 Hrs', 0),
('SLOT2 2:30 PM', 9, '2:30 PM', 0, '2:30 Hrs', 0),
('SLOT3 6:00 PM', 9, '6:00 PM', 0, '2:30 Hrs', 0),
('SLOT4 9:00 PM',9,'9:00 PM',0,'2:30 Hrs',0),
('SLOT1 9:00 AM', 10, '9:00 AM', 0, '2:30 Hrs', 0),
('SLOT2 12:30 PM', 10, '12:30 PM', 0, '2:30 Hrs', 0),
('SLOT3 2:30 PM', 10, '2:30 PM', 0, '2:30 Hrs', 0),
('SLOT4 9:30 PM', 10, '9:30 PM', 0, '2:30 Hrs', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `mobno` varchar(15) NOT NULL,
  `password` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `fullname`, `mobno`, `password`) VALUES
('SK@gmail.com', 'Siva Karthikeyan', '7530079159', '143');


-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vehicleid` int(8) NOT NULL,
  `vehicle_type` varchar(50) NOT NULL,
  `cost` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicleid`, `vehicle_type`, `cost`) VALUES
(4, 'GOLD', '550'),
(5, 'PLATINUM', '700'),
(7, 'Elite', '1000'),
(8, 'Box', '1500'),
(9,'PREMIUM','2000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`bookingid`),
  ADD KEY `fk_email` (`email`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`locationid`);

--
-- Indexes for table `slots`
--
-- ALTER TABLE `slots`
 --  ADD PRIMARY KEY (`slotid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vehicleid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `bookingid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `locationid` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `vehicleid` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `fk_email` FOREIGN KEY (`email`) REFERENCES `users` (`email`);
-- COMMIT;

-- /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
-- /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
-- /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
