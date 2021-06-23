-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 08 Haz 2021, 17:29:46
-- Sunucu sürümü: 10.4.19-MariaDB
-- PHP Sürümü: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `projectdb`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admins`
--

CREATE TABLE `admins` (
  `user_id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `lastname` varchar(15) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Tablo döküm verisi `admins`
--

INSERT INTO `admins` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES
(1, 'gizem', 'kurnaz', 'gizemkurnaz2539@gmail.com', '$2y$10$ECQfQFFzGSvgBRw1eUF/X.ve1pmmvjkXYBiPekEVbXWNxzHC6Qs.a');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'paintings'),
(2, 'printmaking'),
(3, 'photography'),
(4, 'drawing'),
(5, 'digital art');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `customers`
--

CREATE TABLE `customers` (
  `user_id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `lastname` varchar(15) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Tablo döküm verisi `customers`
--

INSERT INTO `customers` (`user_id`, `name`, `lastname`, `email`, `password`) VALUES
(1, 'Jake', 'Peralta', 'jakeperalta@example.com', '$2y$10$CTj/xva6IZPkVrz9lDzDnO1xrIMPLQ22238ooiHak8ngUqm9MDYye'),
(2, 'gizem', 'kurnaz', 'gizemkurnaz25399@gmail.com', '$2y$10$EUQeL3FUJzcMGDy90eDijOXUfvmZNS3SFKWY.2OSSFCIoLE5nWBc6');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `cat_id` tinyint(4) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(50) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`id`, `cat_id`, `name`, `description`, `image`, `price`) VALUES
(4, 2, 'Interior No. 127', 'Etching / Engraving by Jaco Putker', 'interior_no.127.png', 350),
(5, 2, '2020', 'Linocut by Amy Cundall', '2020.png', 67),
(6, 2, 'Bird of Paradise ', 'Linocut by Amy Cundall', 'bird_of_paradise.png', 72.13),
(7, 2, 'Heron', 'Linocut by Steve Manning', 'heron.png', 75.62),
(8, 3, 'Lion\'s Stare', 'Photograph\r\nby Paul Coghlin', 'lions_stare.png', 1745),
(9, 3, 'Bird House', 'Photograph by Nikolina Petolas', 'bird_house.png', 745),
(10, 3, 'The girl with the Goldfish ', 'Photograph by Anna Sidi-Yacoub', 'the_girl_with_the_gold_fish.png', 600),
(11, 3, 'Dog With Landrover', 'Photograph by Rennie Pilgrem', 'dog _with_landrover.png', 79.11),
(12, 4, 'Bird', 'Pastel drawing by Mikhail Vedernikov', 'bird.png', 49.23),
(13, 4, 'Friends', 'Pastel drawing by Natalia Leonova', 'friends.png', 400),
(14, 4, 'Clair obscur', 'Pastel drawing by Milie Lairie', 'clair_obscur.png', 330),
(15, 4, 'Flight 9', 'Ink drawing by Shabs Beigh', 'flight_9.png', 250),
(16, 5, 'Pandas', 'Digital Art (Giclée) by Forty Winks Art', 'pandas.png', 23.27),
(17, 5, 'King of the Arctic', 'Digital Art (Giclée) by Jane Wilson', 'king_of_the_arctic.png', 87.25),
(18, 5, 'Pink Elephant', 'Digital Art (Giclée) by Carl Moore', 'pink_elephant.png', 290.85),
(36, 1, 'Bowie the First', 'Acrylic painting by Gwen Duda', 'bowie_the_first.png', 165.06),
(37, 1, 'Sphynx in Jar', 'Watercolor by REME Jr.', 'sphynx_in_jar.png', 225),
(38, 1, 'Waiting for the New Season', 'Mixed-media painting by Josephine Blackman', 'waiting_for_the_new_season.png', 247),
(39, 1, 'Serval Portrait ', 'Mixed-media painting by Jane Wilson', 'serval_portrait.png', 380),
(40, 5, 'Refuge', 'Digital Art (Giclée) by Sophie Roy', 'refuge.png', 288);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`user_id`);

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`user_id`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admins`
--
ALTER TABLE `admins`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `customers`
--
ALTER TABLE `customers`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
