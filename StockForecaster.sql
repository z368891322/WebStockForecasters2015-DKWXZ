-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2015-02-28 20:07:12
-- 服务器版本： 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `StockForecaster`
--

-- --------------------------------------------------------

--
-- 表的结构 `StockHistorical`
--

CREATE TABLE IF NOT EXISTS `StockHistorical` (
  `Symbol` varchar(20) NOT NULL,
  `Date` varchar(20) NOT NULL,
  `OpenPrice` double NOT NULL,
  `ClosePrice` double NOT NULL,
  `DaysLow` double NOT NULL,
  `DaysHigh` double NOT NULL,
  `Volume` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `StockInfo`
--

CREATE TABLE IF NOT EXISTS `StockInfo` (
  `Symbol` varchar(20) NOT NULL,
  `StockType` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `StockRealtime`
--

CREATE TABLE IF NOT EXISTS `StockRealtime` (
  `Symbol` varchar(20) NOT NULL,
  `Time` varchar(20) NOT NULL,
  `Price` double NOT NULL,
  `Volume` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `StockHistorical`
--
ALTER TABLE `StockHistorical`
 ADD PRIMARY KEY (`Symbol`,`Date`);

--
-- Indexes for table `StockInfo`
--
ALTER TABLE `StockInfo`
 ADD PRIMARY KEY (`Symbol`), ADD UNIQUE KEY `Symbol` (`Symbol`);

--
-- Indexes for table `StockRealtime`
--
ALTER TABLE `StockRealtime`
 ADD PRIMARY KEY (`Symbol`,`Time`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
