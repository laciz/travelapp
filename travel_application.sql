-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1:3306
-- Létrehozás ideje: 2020. Feb 19. 18:29
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `post_image`, `post_date`, `postal_code`, `post_city`) VALUES
(8, 77, '14370210_1405694159445572_6809030812220020712_n.jpg', '2020-02-12', 23330, 'Нови Кнежевац'),
(16, 77, '83306435_623385751568350_2728923573069545472_n-tile.jpg', '2020-02-12', 23330, 'Нови Кнежевац'),
(18, 80, '27836253_2043548235661742_538509754_o.jpg', '2020-02-16', 24300, 'Ð‘Ð°Ñ‡ÐºÐ° Ð¢Ð¾Ð¿Ð¾Ð»Ð°');

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
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `username`, `password`, `email`, `hash`, `active`, `current_postal_code`, `current_city`) VALUES
(76, 'Valentin', 'Horváth', 'codemaster', '0254908940f7594fd63ee69fc4de7d6f', 'valcso@gmail.com', 'd64a340bcb633f536d56e51874281454', 1, 1, ''),
(77, 'Admin', 'Admin', 'valcso', '4297f44b13955235245b2497399d7a93', 'valen@gmail.com', '0b8aff0438617c055eb55f0ba5d226fa', 1, 23330, 'Нови Кнежевац'),
(3, 'Fake', 'User', 'fkuser', '123123', 'ggggggg', '', 0, 23330, 'Novi knezevac'),
(78, 'Admintwo', 'admintwo', 'admintwo', '0192023a7bbd73250516f069df18b500', 'admin@gmail.com', '2dace78f80bc92e6d7493423d729448e', 1, 23330, 'Нови Кнежевац'),
(79, 'admin', 'admin', 'admin4', '4297f44b13955235245b2497399d7a93', 'admin4@gmail.com', 'a3c65c2974270fd093ee8a9bf8ae7d0b', 1, 23330, 'Нови Кнежевац'),
(80, 'Zoltan', 'Laci', 'zolika', 'e10adc3949ba59abbe56e057f20f883e', 'mc.laca@hotmail.com', '757b505cfd34c64c85ca5b5690ee5293', 1, 24300, 'Ð‘Ð°Ñ‡ÐºÐ° Ð¢Ð¾Ð¿Ð¾Ð»Ð°');

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
