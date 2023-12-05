-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2023 at 11:22 PM
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
-- Database: `fortnitequiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `odpowiedzi`
--

CREATE TABLE `odpowiedzi` (
  `id` int(11) NOT NULL,
  `odpowiedz1` text DEFAULT NULL,
  `odpowiedz2` text DEFAULT NULL,
  `odpowiedz3` text DEFAULT NULL,
  `odpowiedz4` text DEFAULT NULL,
  `odpowiedz_p` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `odpowiedzi`
--

INSERT INTO `odpowiedzi` (`id`, `odpowiedz1`, `odpowiedz2`, `odpowiedz3`, `odpowiedz4`, `odpowiedz_p`) VALUES
(1, 'Tak', 'Nie', '', '', 1),
(2, 'Tak', 'Nie', '', '', 1),
(3, 'Tak', 'Nie', '', '', 1),
(4, 'Tak', 'Nie', '', '', 1),
(5, 'Tak', 'Nie', '', '', 2),
(6, 'Trzecia', 'Pierwsza', 'Druga', 'Czwarta', 4),
(7, 'Cztery', 'Pięć', 'Trzy', 'Dwie', 3),
(8, '25', '30', '34', '20', 1),
(9, '25', '24', '23', '20', 2),
(10, '36', '30', '33', '35', 1),
(11, '7', '5', '4', '3', 3),
(12, '300', '999', '750', '500', 4);

-- --------------------------------------------------------

--
-- Table structure for table `pytania`
--

CREATE TABLE `pytania` (
  `id` int(11) NOT NULL,
  `pytanie` text NOT NULL,
  `ilosc_odpowiedzi` int(11) NOT NULL,
  `odpowiedzi_id` int(11) NOT NULL,
  `zalacznik_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pytania`
--

INSERT INTO `pytania` (`id`, `pytanie`, `ilosc_odpowiedzi`, `odpowiedzi_id`, `zalacznik_id`) VALUES
(1, 'Czy w Fortnite możemy poruszać się samochodami?', 2, 1, 1),
(2, 'Czy apteczka daje równe 100 HP?', 2, 2, 2),
(3, 'Czy duża mikstura osłony daje 50 punktów osłony?', 2, 3, 3),
(4, 'Czy podziękujesz kierowcy busa?', 2, 4, 4),
(5, 'Czy bandaże dają 25 HP?', 2, 5, 5),
(6, 'Która strefa zaczyna zadawać po 2 obrażenia na sekundę?', 4, 6, 6),
(7, 'Ile stref burzy zadaje po 1 obrażeniu na sekundę?', 4, 7, 7),
(8, 'Ile punktów osłony dostarcza mała mikstura osłony po wypiciu?', 4, 8, 8),
(9, 'Ile obrażeń zadaje pojedynczy strzał z szarego pistoletu?', 4, 9, 9),
(10, 'Ile obrażeń zadaje pojedynczy strzał z legendarnego karabinu szturmowego (SCAR)?', 4, 10, 10),
(11, 'Ile typów budowli istnieje do postawienia w Fortnite: Battle Royale?', 4, 11, 11),
(12, 'Jaka jest maksymalna ilość zebranych materiałów budowlanych jednego rodzaju, którą możemy posiadać przy sobie?', 4, 12, 12);

-- --------------------------------------------------------

--
-- Table structure for table `zalacznik`
--

CREATE TABLE `zalacznik` (
  `id` int(11) NOT NULL,
  `rodzaj_zalacznika` text NOT NULL,
  `sciezka_zalacznika` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `odpowiedzi`
--
ALTER TABLE `odpowiedzi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pytania`
--
ALTER TABLE `pytania`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zalacznik`
--
ALTER TABLE `zalacznik`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `odpowiedzi`
--
ALTER TABLE `odpowiedzi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pytania`
--
ALTER TABLE `pytania`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `zalacznik`
--
ALTER TABLE `zalacznik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
