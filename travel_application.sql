-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1:3306
-- Létrehozás ideje: 2020. Feb 24. 13:04
-- Kiszolgáló verziója: 10.4.10-MariaDB
-- PHP verzió: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `travel_application`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `places`
--

DROP TABLE IF EXISTS `places`;
CREATE TABLE IF NOT EXISTS `places` (
  `postal_code` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `place_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`postal_code`),
  KEY `user_id` (`user_id`,`post_id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `post_image` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `postal_code` int(11) DEFAULT NULL,
  `post_city` varchar(255) NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `user_id` (`user_id`,`postal_code`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `post_image`, `post_date`, `postal_code`, `post_city`) VALUES
(20, 81, 'autumn_leaves_in_black_background_4k-720x1280.jpg', '2020-02-23', 24300, 'Ð‘Ð°Ñ‡ÐºÐ° Ð¢Ð¾Ð¿Ð¾Ð»Ð°'),
(21, 81, 'moon_4k_8k_3-1280x720.jpg', '2020-02-23', 24300, 'Ð‘Ð°Ñ‡ÐºÐ° Ð¢Ð¾Ð¿Ð¾Ð»Ð°'),
(22, 80, 'aston_martin_vantage_roadster_2020_5k-1280x720.jpg', '2020-02-23', 24300, 'Ð‘Ð°Ñ‡ÐºÐ° Ð¢Ð¾Ð¿Ð¾Ð»Ð°'),
(23, 80, 'autumn_leaves_in_black_background_4k-720x1280.jpg', '2020-02-23', 24300, 'Ð‘Ð°Ñ‡ÐºÐ° Ð¢Ð¾Ð¿Ð¾Ð»Ð°'),
(25, 82, 'aston_martin_vantage_roadster_2020_5k-1280x720.jpg', '2020-02-23', 24300, 'Ð‘Ð°Ñ‡ÐºÐ° Ð¢Ð¾Ð¿Ð¾Ð»Ð°'),
(26, 85, 'monaco_winter_sunset_cityscape_4k_8k-1280x720.jpg', '2020-02-24', 24000, 'Ð¡ÑƒÐ±Ð¾Ñ‚Ð¸Ñ†Ð°'),
(27, 85, 'moon_4k_8k_3-1280x720.jpg', '2020-02-24', 24000, 'Ð¡ÑƒÐ±Ð¾Ñ‚Ð¸Ñ†Ð°'),
(29, 86, 'autumn_leaves_in_black_background_4k-720x1280.jpg', '2020-02-24', 24109, 'Ð¡ÑƒÐ±Ð¾Ñ‚Ð¸Ñ†Ð°'),
(30, 86, 'aston_martin_vantage_roadster_2020_5k-1280x720.jpg', '2020-02-24', 24109, 'Ð¡ÑƒÐ±Ð¾Ñ‚Ð¸Ñ†Ð°'),
(31, 85, 'autumn_leaves_in_black_background_4k-720x1280.jpg', '2020-02-24', 24109, 'Ð¡ÑƒÐ±Ð¾Ñ‚Ð¸Ñ†Ð°');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` mediumtext NOT NULL,
  `hash` varchar(32) NOT NULL,
  `active` int(1) NOT NULL DEFAULT 0,
  `current_postal_code` int(11) DEFAULT NULL,
  `current_city` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `username`, `password`, `email`, `hash`, `active`, `current_postal_code`, `current_city`) VALUES
(79, 'admin', 'admin', 'admin4', '4297f44b13955235245b2497399d7a93', 'admin4@gmail.com', 'a3c65c2974270fd093ee8a9bf8ae7d0b', 1, 23330, 'Нови Кнежевац'),
(80, 'Zoltan', 'Laci', 'zoli', 'e10adc3949ba59abbe56e057f20f883e', 'mc.laca@hotmail.com', '496e05e1aea0a9c4655800e8a7b9ea28', 1, 24300, 'Ð‘Ð°Ñ‡ÐºÐ° Ð¢Ð¾Ð¿Ð¾Ð»Ð°'),
(82, 'masodik', 'masodik', 'masodik', 'e10adc3949ba59abbe56e057f20f883e', 'masodik@masodik.com', 'e7f8a7fb0b77bcb3b283af5be021448f', 1, 24300, 'Ð‘Ð°Ñ‡ÐºÐ° Ð¢Ð¾Ð¿Ð¾Ð»Ð°'),
(86, 'negyedik', 'negyedik', 'negyedik', 'e10adc3949ba59abbe56e057f20f883e', 'negyedik@negyedik.com', 'b3e3e393c77e35a4a3f3cbd1e429b5dc', 1, 24109, 'Ð¡ÑƒÐ±Ð¾Ñ‚Ð¸Ñ†Ð°'),
(85, 'harmadik', 'harmadik', 'harmadik', 'e10adc3949ba59abbe56e057f20f883e', 'harmadik@harmadik.com', '698d51a19d8a121ce581499d7b701668', 1, 24109, 'Ð¡ÑƒÐ±Ð¾Ñ‚Ð¸Ñ†Ð°'),
(87, 'otodik', 'otodik', 'otodik', 'e10adc3949ba59abbe56e057f20f883e', 'otodik@otodik.com', '55a7cf9c71f1c9c495413f934dd1a158', 1, NULL, NULL);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `places`
--
ALTER TABLE `places`
  ADD CONSTRAINT `places_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `posts` (`user_id`),
  ADD CONSTRAINT `places_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
