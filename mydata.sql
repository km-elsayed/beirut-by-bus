-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2023 at 11:14 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydata`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `start_time` time NOT NULL,
  `stop_time` time NOT NULL,
  `url` text NOT NULL,
  `stops` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id`, `price`, `start_time`, `stop_time`, `url`, `stops`) VALUES
(12, 50000, '05:00:00', '19:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `email` text NOT NULL,
  `id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mydata`
--

CREATE TABLE `mydata` (
  `id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `url` text NOT NULL,
  `keywords` text NOT NULL,
  `sum` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mydata`
--

INSERT INTO `mydata` (`id`, `price`, `url`, `keywords`, `sum`) VALUES
(2, 60000, 'buses.php#bus2', 'Bechara El-Khoury Nasra Sassine Square Basta Tahtah Karakoul Druze Tallet Druze Mar Mitir Sanayeh Jdeideh Mar Youssef Dora Roundabout Wardieh Hamra Nahr ElMott Sadat Zalka Jal El-Dib Antelas Square', 'Hamra-Antelias'),
(6, 51000, 'buses.php#bus6', 'cola barbir museum fiat bridge corniche mazraa adlieh corniche el-nahr dora roundabout quarantina city mall nahr elmott zalka highway jal eldib canadian embassy spinneys dbayeh le mall jounieh jbeil', 'Nahr Elmott-Ghobeiry'),
(9, 40000, 'buses.php#bus24', 'cola barbir museum hamra', 'Nahr Elmott-Barbir'),
(12, 50000, 'buses.php#bus12\r\n', 'Burj Barajne Hareit Hreik Ghobeire Mucharafieh Ared Jaloul Chatila Roundabout Malaab El Baladi Sabra Sabraa Coop Malaab Baladi Cola Mar Elias Unesco Tallet Khayate Sakanit Helo Hoss house(Beit el Hoss) Tallet Druze police station Bristol Concorde Center MUBS University Wardieh', 'Hamra-Burj El Barajneh'),
(15, 70000, 'buses.php#bus15', 'cola unesco nahr elmot dawra albohr bohr bor biyal pier ein mraisseh raouche corniche mazraa barbir museum adliyeh sunday souq sin elfil dakwaneh salome jdide', 'Colar-Nahr ElMott'),
(16, 150000, 'buses.php#bus16', 'roundabout Aley LibanPost Araya Police Station Melkaret School Hypermarket Abou Khalil City Center Chevrolet Fahed Super Market cola qornayel', 'Cola-Qornayel'),
(22, 69000, 'buses.php#bus22', 'antounieh street hadath square Hadath Clock point hamra streetGallery semaan- Galaxy Center ain elremani Statue Lead azmiyeh alfa building alfa building chevrolet Horsh tabet Habtoor Grand hotel habtoor grand hotel Metropolitan saint rita librarie antoine Youssef el-hayik el-hayek bridge Alba univeristy Sin elfil roundabout freeway center Mirna Chalouhi Junction fridge Greek bourj hamoud bridge toward ashrafieh Mirna chalouhi intersection nahwa bourj hamoud Artin Station Dora Roundabout', 'Burj Hamoud-Baabda');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING HASH;

--
-- Indexes for table `mydata`
--
ALTER TABLE `mydata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `price` (`price`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
