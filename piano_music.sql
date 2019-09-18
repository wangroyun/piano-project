-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2019-09-18 04:06:43
-- 伺服器版本: 10.1.35-MariaDB
-- PHP 版本： 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `piano_music`
--

-- --------------------------------------------------------

--
-- 資料表結構 `player`
--

CREATE TABLE `player` (
  `pid` int(11) NOT NULL,
  `nickname` varchar(15) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `account` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 資料表結構 `play_stage`
--

CREATE TABLE `play_stage` (
  `serno` int(11) NOT NULL,
  `pid` int(20) DEFAULT NULL,
  `sid` int(20) DEFAULT NULL,
  `finish` tinyint(1) NOT NULL DEFAULT '0',
  `right_note` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 資料表結構 `stage`
--

CREATE TABLE `stage` (
  `sid` int(11) NOT NULL,
  `s_name` int(20) NOT NULL,
  `piano_can` tinyint(1) NOT NULL,
  `note_num` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`pid`);

--
-- 資料表索引 `play_stage`
--
ALTER TABLE `play_stage`
  ADD PRIMARY KEY (`serno`);

--
-- 資料表索引 `stage`
--
ALTER TABLE `stage`
  ADD PRIMARY KEY (`sid`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `player`
--
ALTER TABLE `player`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `play_stage`
--
ALTER TABLE `play_stage`
  MODIFY `serno` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `stage`
--
ALTER TABLE `stage`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
