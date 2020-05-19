-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 19 Maj 2020, 15:35
-- Wersja serwera: 10.4.8-MariaDB
-- Wersja PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `kornas`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dzial`
--

CREATE TABLE `dzial` (
  `id` int(3) NOT NULL,
  `dzial` varchar(3) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `dzial`
--

INSERT INTO `dzial` (`id`, `dzial`) VALUES
(1, 'it'),
(2, 'spe'),
(3, 'gas');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prac`
--

CREATE TABLE `prac` (
  `id` int(10) NOT NULL,
  `imie` varchar(10) COLLATE utf8mb4_polish_ci NOT NULL,
  `id_dzial` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `prac`
--

INSERT INTO `prac` (`id`, `imie`, `id_dzial`) VALUES
(1, 'adam', 1),
(2, 'franek', 3),
(3, 'daria', 2),
(4, 'kamil', 1),
(5, 'kacper', 2),
(6, 'hania', 1),
(7, 'tomasz', 3),
(8, 'ania', 2),
(9, 'gerwazy', 3),
(10, 'teresa', 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
