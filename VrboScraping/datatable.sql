-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 08, 2021 at 08:37 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Scrapping`
--

-- --------------------------------------------------------

--
-- Table structure for table `datatable`
--

CREATE TABLE `datatable` (
  `title` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `sleep` varchar(100) NOT NULL,
  `bedroom` varchar(100) NOT NULL,
  `bathroom` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `image_one` varchar(255) NOT NULL,
  `image_two` varchar(255) NOT NULL,
  `image_three` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datatable`
--

INSERT INTO `datatable` (`title`, `location`, `sleep`, `bedroom`, `bathroom`, `price`, `image_one`, `image_two`, `image_three`) VALUES
('Hawaii Life Presents Updated 2BR/2BA 6th Floor Unbeatable Oceanfront Location', 'hawaii', '6', '2', '2', '$444', '\"https://media.vrbo.com/lodging/31000000/30330000/30326500/30326427/dc90cb73.c6.jpg\"', '\"https://media.vrbo.com/lodging/31000000/30330000/30326500/30326427/326ff9e6.c6.jpg\"', '\"https://media.vrbo.com/lodging/31000000/30330000/30326500/30326427/01bbefa2.c6.jpg\"'),
('Hilo Shangrila - OCEANFRONT, Pool and Hot Tub Private Vacation Rental', 'hawaii', '6', '2', '2', '$359', '\"https://media.vrbo.com/lodging/54000000/53860000/53858100/53858067/eb967c3e.c6.jpg\"', '\"https://media.vrbo.com/lodging/54000000/53860000/53858100/53858067/22eb61e5.c6.jpg\"', '\"https://media.vrbo.com/lodging/54000000/53860000/53858100/53858067/a4c96266.c6.jpg\"'),
('Oceanfront! Sunsets at its Best at Hale Ono Loa 308', 'hawaii', '2', '1', '1', '$249', '\"https://media.vrbo.com/lodging/73000000/72120000/72110400/72110309/3164af1c.c6.jpg\"', '\"https://media.vrbo.com/lodging/73000000/72120000/72110400/72110309/d84fafe6.c6.jpg\"', '\"https://media.vrbo.com/lodging/73000000/72120000/72110400/72110309/3a3bfb80.c6.jpg\"'),
('POIPU OCEAN-FRONT CONDO, CAR avail, SUN, SURF, FISH, SNORKEL, COLD A/C!', 'hawaii', '4', '1', '1', '$295', '\"https://media.vrbo.com/lodging/23000000/22630000/22626600/22626575/1e950594.c6.jpg\"', '\"https://media.vrbo.com/lodging/23000000/22630000/22626600/22626575/6974fedf.c6.jpg\"', '\"https://media.vrbo.com/lodging/23000000/22630000/22626600/22626575/70192009.c6.jpg\"'),
('Romantic Oceanview Guesthouse.  Steps from the Beach!', 'hawaii', '2', 'Studio', '1', '$185', '\"https://media.vrbo.com/lodging/34000000/33500000/33490200/33490189/8b0128a4.c6.jpg\"', '\"https://media.vrbo.com/lodging/34000000/33500000/33490200/33490189/aa699655.c6.jpg\"', '\"https://media.vrbo.com/lodging/34000000/33500000/33490200/33490189/6a287b53.c6.jpg\"'),
('Take a Cruise Without Leaving Port - Beautiful Oceanfront Studio', 'hawaii', '3', 'Studio', '1', '$250', '\"https://media.vrbo.com/lodging/34000000/33490000/33486300/33486226/2f6213de.c6.jpg\"', '\"https://media.vrbo.com/lodging/34000000/33490000/33486300/33486226/11c61259.c6.jpg\"', '\"https://media.vrbo.com/lodging/34000000/33490000/33486300/33486226/232d9b4c.c6.jpg\"');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datatable`
--
ALTER TABLE `datatable`
  ADD PRIMARY KEY (`title`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
