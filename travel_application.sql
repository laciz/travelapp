-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 30, 2019 at 12:53 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel_application`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` text NOT NULL,
  `hash` varchar(32) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `hash`, `active`) VALUES
(1, 'dsadasdasdsa', 'dsadsadsadas', '21321312', '123123', 'valcso@gmail.com', 'c058f544c737782deacefa532d9add4c', 0),
(2, 'dsadasdasdsa', 'dsadsadsadas', '21321312', '123123', 'valcso@gmail.com', 'c058f544c737782deacefa532d9add4c', 0),
(3, 'valika', 'valika', 'valikahehe', '123123', 'valcsocfc@yahoo.com', 'a67f096809415ca1c9f112d96d27689b', 0),
(4, 'valika', 'valika', 'valikahehe', '123123', 'valcsocfc@yahoo.com', 'a67f096809415ca1c9f112d96d27689b', 0),
(5, 'valika', 'valika', 'valikahehe', '123123', 'valcsocfc@yahoo.com', '01386bd6d8e091c2ab4c7c7de644d37b', 0),
(6, 'valika', 'valika', 'valikahehe', '123123', 'valcsocfc@yahoo.com', '01386bd6d8e091c2ab4c7c7de644d37b', 0),
(7, 'valika', 'valika', 'valikahehe', '123123', 'valcsocfc@yahoo.com', 'b2eeb7362ef83deff5c7813a67e14f0a', 0),
(8, 'valika', 'valika', 'valikahehe', '123123', 'valcsocfc@yahoo.com', 'b2eeb7362ef83deff5c7813a67e14f0a', 0),
(9, 'valika', 'valika', 'valikahehe', '123123', 'valcsocfc@yahoo.com', 'a3f390d88e4c41f2747bfa2f1b5f87db', 0),
(10, 'valika', 'valika', 'valikahehe', '123123', 'valcsocfc@yahoo.com', 'a3f390d88e4c41f2747bfa2f1b5f87db', 0),
(11, 'dsadasdasdsa', 'dsadsadsadas', 'dsaas122121', '123123', 'valcso@gmail.com', 'ec8956637a99787bd197eacd77acce5e', 0),
(12, 'dsadasdasdsa', 'dsadsadsadas', 'dsaas122121', '123123', 'valcso@gmail.com', 'ec8956637a99787bd197eacd77acce5e', 0),
(13, 'dsadasdasdsa', 'dsadsadsadas', 'dsaas122121', '123123', 'valcso@gmail.com', '93db85ed909c13838ff95ccfa94cebd9', 0),
(14, 'dsadasdasdsa', 'dsadsadsadas', 'dsaas122121', '123123', 'valcso@gmail.com', '93db85ed909c13838ff95ccfa94cebd9', 0),
(15, 'dsadasdasdsa', 'dsadsadsadas', 'dsaas122121', '123123', 'valcso@gmail.com', 'f5f8590cd58a54e94377e6ae2eded4d9', 0),
(16, 'dsadasdasdsa', 'dsadsadsadas', 'dsaas122121', '123123', 'valcso@gmail.com', 'f5f8590cd58a54e94377e6ae2eded4d9', 0),
(17, 'dsadasdasdsa', 'dsadsadsadas', 'dasdsadsa', '123123', 'valcso@gmail.com', '49ae49a23f67c759bf4fc791ba842aa2', 0),
(18, 'dsadasdasdsa', 'dsadsadsadas', 'dasdsadsa', '123123', 'valcso@gmail.com', '49ae49a23f67c759bf4fc791ba842aa2', 0),
(19, 'dsadasdasdsa', 'dsadsadsadas', 'dasdsadsa', '123123', 'valcso@gmail.com', '1ce927f875864094e3906a4a0b5ece68', 0),
(20, 'dsadasdasdsa', 'dsadsadsadas', 'dasdsadsa', '123123', 'valcso@gmail.com', '1ce927f875864094e3906a4a0b5ece68', 0),
(21, 'first', 'first', 'first11', '123123', 'retko@gmail.com', '8a0e1141fd37fa5b98d5bb769ba1a7cc', 0),
(22, 'first', 'first', 'first11', '123123', 'retko@gmail.com', '8a0e1141fd37fa5b98d5bb769ba1a7cc', 0),
(23, 'first', 'first', 'first11', '123123', 'retko@gmail.com', '51ef186e18dc00c2d31982567235c559', 0),
(24, 'first', 'first', 'first11', '123123', 'retko@gmail.com', '51ef186e18dc00c2d31982567235c559', 0),
(25, 'first', 'first', 'first11', '123123', 'retko@gmail.com', '013a006f03dbc5392effeb8f18fda755', 0),
(26, 'first', 'first', 'first11', '123123', 'retko@gmail.com', '013a006f03dbc5392effeb8f18fda755', 0),
(27, 'first', 'first', 'first11', '123123', 'retko@gmail.com', 'b5dc4e5d9b495d0196f61d45b26ef33e', 1),
(28, 'first', 'first', 'first11', '123123', 'retko@gmail.com', 'b5dc4e5d9b495d0196f61d45b26ef33e', 1),
(29, 'name', 'lastname', 'username', 'password_one', 'email', '36660e59856b4de58a219bcf4e27eba3', 0),
(30, 'name', 'lastname', 'username', 'password_one', 'email', '36660e59856b4de58a219bcf4e27eba3', 0),
(31, '\'name\'', '\'lastname\'', '\'username\'', '\'password_one\'', '\'email\'', 'e0cf1f47118daebc5b16269099ad7347', 0),
(32, '\'name\'', '\'lastname\'', '\'username\'', '\'password_one\'', '\'email\'', 'e0cf1f47118daebc5b16269099ad7347', 0),
(33, 'myname', 'myname', 'mynasem1321', '123123', 'valcso@gmail.com', 'a3c65c2974270fd093ee8a9bf8ae7d0b', 0),
(34, 'myname', 'myname', 'mynasem1321', '123123', 'valcso@gmail.com', 'a3c65c2974270fd093ee8a9bf8ae7d0b', 0),
(35, 'dsadasdasdsa', 'dsadsadsadas', 'dasdsadsa', '123123', 'valcso@gmail.com', '71a3cb155f8dc89bf3d0365288219936', 0),
(36, 'dsadasdasdsa', 'dsadsadsadas', 'dasdsadsa', '123123', 'valcso@gmail.com', '71a3cb155f8dc89bf3d0365288219936', 0),
(37, 'dsadasdasdsa', 'dsadsadsadas', 'dasdsadsa', '123123', 'valcso@gmail.com', '502e4a16930e414107ee22b6198c578f', 0),
(38, 'dsadasdasdsa', 'dsadsadsadas', 'dasdsadsa', '123123', 'valcso@gmail.com', '502e4a16930e414107ee22b6198c578f', 0),
(39, 'dsadasdasdsa', 'dsadsadsadas', 'dasdsadsa', '123123', 'valcso@gmail.com', 'df6d2338b2b8fce1ec2f6dda0a630eb0', 0),
(40, 'dsadasdasdsa', 'dsadsadsadas', 'dasdsadsa', '123123', 'valcso@gmail.com', 'df6d2338b2b8fce1ec2f6dda0a630eb0', 0),
(41, 'dsadasdasdsa', 'dsadsadsadas', 'dasdsadsa', '123123', 'valcso@gmail.com', '5705e1164a8394aace6018e27d20d237', 0),
(42, 'dsadasdasdsa', 'dsadsadsadas', 'dasdsadsa', '123123', 'valcso@gmail.com', '5705e1164a8394aace6018e27d20d237', 0),
(43, 'dsadasdasdsa', 'dsadsadsadas', 'dasdsadsa', '123123', 'valcso@gmail.com', '26dd0dbc6e3f4c8043749885523d6a25', 0),
(44, 'dsadasdasdsa', 'dsadsadsadas', 'dasdsadsa', '123123', 'valcso@gmail.com', '26dd0dbc6e3f4c8043749885523d6a25', 0),
(45, '', '', '', '', '', 'e205ee2a5de471a70c1fd1b46033a75f', 0),
(46, '', '', '', '', '', 'e205ee2a5de471a70c1fd1b46033a75f', 0),
(47, 'dsadasdasdsa', 'dsadsadsadas', 'dasdas2121212', '123456', 'valcsocfc@yahoo.com', '13f320e7b5ead1024ac95c3b208610db', 0),
(48, 'dsadasdasdsa', 'dsadsadsadas', 'dasdas2121212', '123456', 'valcsocfc@yahoo.com', '13f320e7b5ead1024ac95c3b208610db', 0),
(49, 'Im', 'TheFirst', 'thefirst193', '123123', 'valcso@gmail.com', 'e744f91c29ec99f0e662c9177946c627', 1),
(50, 'Im', 'TheFirst', 'thefirst193', '123123', 'valcso@gmail.com', 'e744f91c29ec99f0e662c9177946c627', 1),
(51, 'dsadasdasdsa', 'dsadsadsadas', 'dasdsadsa1', '123123', 'valcso@gmail.com', '9c01802ddb981e6bcfbec0f0516b8e35', 0),
(52, 'dsadasdasdsa', 'dsadsadsadas', 'dasdsadsa1', '123123', 'valcso@gmail.com', '9c01802ddb981e6bcfbec0f0516b8e35', 0),
(53, 'dsadasdasdsa', 'dsadsadsadas', 'dasdsadsa222', '123123', 'valcso@gmail.com', 'b73ce398c39f506af761d2277d853a92', 0),
(54, 'dsadasdasdsa', 'dsadsadsadas', 'dasdsadsa222', '123123', 'valcso@gmail.com', 'b73ce398c39f506af761d2277d853a92', 0),
(55, 'dsaas', 'dsadasdasdas', 'dsadas231321', '231231', 'valcso@gmail.com1', 'b83aac23b9528732c23cc7352950e880', 0),
(56, 'dsaas', 'dsadasdasdas', 'dsadas231321', '231231', 'valcso@gmail.com1', 'b83aac23b9528732c23cc7352950e880', 0),
(57, 'dsadasdasdsa', 'dsadsadsadas', 'dasdsadsa11', '123123', 'valcso@gmail.com', '4c27cea8526af8cfee3be5e183ac9605', 0),
(58, 'dsadasdasdsa', 'dsadsadsadas', 'dasdsadsa11', '123123', 'valcso@gmail.com', '4c27cea8526af8cfee3be5e183ac9605', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
