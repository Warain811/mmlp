-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2021 at 02:48 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mmlp`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` text DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `Points` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `food_id` int(30) NOT NULL,
  `ticket_id` int(30) NOT NULL,
  `fries_price` int(11) DEFAULT NULL,
  `num_fries` int(11) DEFAULT NULL,
  `popcorn_price` int(11) DEFAULT NULL,
  `num_popcorn` int(11) DEFAULT NULL,
  `nachos_price` int(11) DEFAULT NULL,
  `num_nachos` int(11) DEFAULT NULL,
  `softdrinks_price` int(11) DEFAULT NULL,
  `num_softdrinks` int(11) DEFAULT NULL,
  `water_price` int(11) DEFAULT NULL,
  `num_water` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `food_menu`
--

CREATE TABLE `food_menu` (
  `id` int(11) NOT NULL,
  `fries_menu_price` int(11) NOT NULL,
  `popcorn_menu_price` int(11) NOT NULL,
  `nachos_menu_price` int(11) NOT NULL,
  `softdrinks_menu_price` int(11) NOT NULL,
  `water_menu_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food_menu`
--

INSERT INTO `food_menu` (`id`, `fries_menu_price`, `popcorn_menu_price`, `nachos_menu_price`, `softdrinks_menu_price`, `water_menu_price`) VALUES
(1, 50, 40, 80, 40, 20);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `cover_img` text NOT NULL,
  `description` text NOT NULL,
  `duration` float NOT NULL,
  `date_showing` date NOT NULL,
  `end_date` date NOT NULL,
  `price` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `cover_img`, `description`, `duration`, `date_showing`, `end_date`, `price`) VALUES
(10, 'Malcolm & Marie', 'malcolm.jpg', 'A filmmaker on the brink of Hollywood glory and his girlfriend, whose story made his career, find themselves pushed towards a reckoning as a single tumultuous night decides the fate of their relationship.\r\nRated +18', 1.9, '2021-06-25', '2021-07-25', 400),
(11, 'Raya and the Last Dragon', 'Raya.webp', 'Raya, a warrior, sets out to track down Sisu, a dragon, who transferred all her powers into a magical gem which is now scattered all over the kingdom of Kumandra, dividing its people.', 2, '2021-06-19', '2021-07-25', 500),
(12, 'The Mitchells vs. the Machines', 'mitchell.jpg', 'Young Katie Mitchell embarks on a road trip with her proud parents, younger brother and beloved dog to start her first year at film school. But their plans to bond as a family soon get interrupted when the world\'s electronic devices come to life to stage an uprising. With help from two friendly robots, the Mitchells must now come together to save one another -- and the planet -- from the new technological revolution.', 2, '2021-06-19', '2021-07-25', 600),
(14, 'Outside the Wire', 'out_wire.jpg', 'In the near future, a drone pilot sent into a war zone finds himself paired up with a top-secret android officer on a mission to stop a nuclear attack.', 1.9, '2021-06-19', '2021-07-25', 500),
(16, 'The Little Things', 'little.jpg', 'Deputy Sheriff Joe \"Deke\" Deacon joins forces with Sgt. Jim Baxter to search for a serial killer who\'s terrorizing Los Angeles. As they track the culprit, Baxter is unaware that the investigation is dredging up echoes of Deke\'s past, uncovering disturbing secrets that could threaten more than his case.', 2.2, '2021-06-19', '2021-07-25', 600),
(19, 'Mortal Kombat 11', 'MK11.jpg', 'Hunted by the fearsome warrior Sub-Zero, MMA fighter Cole Young finds sanctuary at the temple of Lord Raiden. Training with experienced fighters Liu Kang, Kung Lao and the rogue mercenary Kano, Cole prepares to stand with Earth\'s greatest champions to take on the enemies from Outworld in a high-stakes battle for the universe. <be>', 1.83, '2021-06-25', '2021-07-25', 400);

-- --------------------------------------------------------

--
-- Table structure for table `movies_showtime`
--

CREATE TABLE `movies_showtime` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `ts_id` int(11) NOT NULL,
  `showdate` date NOT NULL,
  `showtime` time NOT NULL,
  `available_seats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies_showtime`
--

INSERT INTO `movies_showtime` (`id`, `movie_id`, `ts_id`, `showdate`, `showtime`, `available_seats`) VALUES
(8, 10, 2, '2021-07-08', '14:00:00', 12),
(9, 10, 3, '2021-07-08', '14:00:00', 30),
(12, 10, 4, '2021-07-01', '15:00:00', 30),
(13, 10, 4, '2021-07-03', '12:00:00', 30),
(14, 10, 5, '2021-07-03', '12:00:00', 30),
(15, 10, 5, '2021-07-01', '15:00:00', 30),
(16, 11, 4, '2021-07-02', '19:00:00', 30),
(17, 11, 5, '2021-07-02', '19:00:00', 28),
(18, 11, 4, '2021-07-03', '19:00:00', 30),
(19, 11, 5, '2021-07-03', '19:00:00', 30),
(20, 11, 2, '2021-07-08', '16:00:00', 20),
(21, 11, 3, '2021-07-08', '16:00:00', 30),
(22, 14, 4, '2021-07-10', '19:00:00', 30),
(23, 14, 5, '2021-07-10', '19:00:00', 30),
(24, 14, 2, '2021-07-11', '17:00:00', 20),
(25, 14, 3, '2021-07-11', '17:00:00', 30),
(26, 14, 4, '2021-07-13', '16:00:00', 30),
(27, 14, 5, '2021-07-13', '16:00:00', 30),
(28, 12, 2, '2021-07-09', '19:00:00', 20),
(29, 12, 3, '2021-07-09', '19:00:00', 30),
(30, 12, 4, '2021-07-10', '15:00:00', 30),
(31, 12, 5, '2021-07-10', '15:00:00', 30),
(32, 12, 2, '2021-07-13', '19:00:00', 20),
(33, 12, 3, '2021-07-13', '19:00:00', 30),
(34, 16, 4, '2021-07-14', '19:00:00', 30),
(35, 16, 5, '2021-07-14', '19:00:00', 30),
(36, 16, 2, '2021-07-11', '10:00:00', 20),
(37, 16, 3, '2021-07-11', '10:00:00', 30),
(38, 16, 4, '2021-07-14', '15:00:00', 30),
(39, 16, 5, '2021-07-14', '15:00:00', 30),
(40, 19, 4, '2021-07-06', '15:00:00', 30),
(41, 19, 5, '2021-07-06', '15:00:00', 30),
(42, 19, 2, '2021-07-04', '10:00:00', 20),
(43, 19, 3, '2021-07-04', '10:00:00', 30),
(44, 19, 2, '2021-07-05', '17:00:00', 20),
(45, 19, 3, '2021-07-05', '17:00:00', 30);

-- --------------------------------------------------------

--
-- Table structure for table `theater`
--

CREATE TABLE `theater` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theater`
--

INSERT INTO `theater` (`id`, `name`) VALUES
(1, '3D'),
(2, 'Theater 1');

-- --------------------------------------------------------

--
-- Table structure for table `theater_settings`
--

CREATE TABLE `theater_settings` (
  `id` int(30) NOT NULL,
  `theater_id` int(30) NOT NULL,
  `seat_group` varchar(250) NOT NULL,
  `seat_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theater_settings`
--

INSERT INTO `theater_settings` (`id`, `theater_id`, `seat_group`, `seat_count`) VALUES
(2, 1, 'Box 1', 20),
(3, 1, 'Box 2', 30),
(4, 2, 'Box 1', 30),
(5, 2, 'Box 2', 30);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticket_id` int(30) NOT NULL,
  `movie_id` int(30) NOT NULL,
  `ts_id` int(30) NOT NULL,
  `qty` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `id` int(11) NOT NULL,
  `price` int(255) NOT NULL,
  `food_price` int(11) DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL,
  `form_of_payment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`food_id`),
  ADD KEY `tickets->ticket-id_1` (`ticket_id`);

--
-- Indexes for table `food_menu`
--
ALTER TABLE `food_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies_showtime`
--
ALTER TABLE `movies_showtime`
  ADD PRIMARY KEY (`id`),
  ADD KEY `theater_settings and id` (`ts_id`),
  ADD KEY `movie_id and movie_name` (`movie_id`);

--
-- Indexes for table `theater`
--
ALTER TABLE `theater`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theater_settings`
--
ALTER TABLE `theater_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `theater->ticket-id` (`theater_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `connect to 'customers'` (`id`),
  ADD KEY `connect to movies` (`movie_id`),
  ADD KEY `connect to theater settings` (`ts_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `food_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `food_menu`
--
ALTER TABLE `food_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `movies_showtime`
--
ALTER TABLE `movies_showtime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `theater`
--
ALTER TABLE `theater`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticket_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `tickets->ticket-id` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`ticket_id`);

--
-- Constraints for table `movies_showtime`
--
ALTER TABLE `movies_showtime`
  ADD CONSTRAINT `movie_id and movie_name` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `theater_settings and id` FOREIGN KEY (`ts_id`) REFERENCES `theater_settings` (`id`);

--
-- Constraints for table `theater_settings`
--
ALTER TABLE `theater_settings`
  ADD CONSTRAINT `theater->ticket-id` FOREIGN KEY (`theater_id`) REFERENCES `theater` (`id`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `connect to movies` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `connect to theater settings` FOREIGN KEY (`ts_id`) REFERENCES `theater_settings` (`id`),
  ADD CONSTRAINT `customers->id` FOREIGN KEY (`id`) REFERENCES `customers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
