-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2025 年 11 月 17 日 12:44
-- 伺服器版本： 10.4.28-MariaDB
-- PHP 版本： 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `movie_booking`
--

-- --------------------------------------------------------

--
-- 資料表結構 `assistantQuestion`
--

CREATE TABLE `assistantQuestion` (
  `typeID` varchar(10) NOT NULL,
  `typeName` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `cinema`
--

CREATE TABLE `cinema` (
  `cinemaID` varchar(2) NOT NULL,
  `cinemaAddress` varchar(80) NOT NULL,
  `cinemaName` varchar(20) NOT NULL,
  `cinemaTele` varchar(15) NOT NULL,
  `cinemaCity` varchar(50) NOT NULL,
  `cinemaWorkTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `cinemaShowtimes`
--

CREATE TABLE `cinemaShowtimes` (
  `cinemaID` varchar(2) NOT NULL,
  `movieID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `grade`
--

CREATE TABLE `grade` (
  `gradeID` int(11) NOT NULL,
  `gradeName` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `meals`
--

CREATE TABLE `meals` (
  `mealsID` varchar(10) NOT NULL,
  `mealsName` varchar(20) NOT NULL,
  `mealsPrice` int(11) NOT NULL,
  `mealsType` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `mealsType`
--

CREATE TABLE `mealsType` (
  `mealsID` varchar(10) NOT NULL,
  `mealsType` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `memberCashCard`
--

CREATE TABLE `memberCashCard` (
  `memberCardID` varchar(10) NOT NULL,
  `TotalAmount` int(11) NOT NULL,
  `paymentCustmerID` varchar(8) NOT NULL,
  `paymentMethod` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `memberPoint`
--

CREATE TABLE `memberPoint` (
  `memberPointID` int(10) NOT NULL,
  `memberID` varchar(10) NOT NULL,
  `totalPoint` int(10) NOT NULL,
  `updateAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `memberProfile`
--

CREATE TABLE `memberProfile` (
  `memberID` varchar(10) NOT NULL,
  `memberCardID` varchar(10) NOT NULL,
  `memberName` varchar(20) NOT NULL,
  `memberPwd` varchar(50) NOT NULL,
  `memberEmail` varchar(50) NOT NULL,
  `memberBirth` datetime NOT NULL,
  `memberPhone` varchar(10) NOT NULL,
  `IsVIP` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `memberRecharge`
--

CREATE TABLE `memberRecharge` (
  `TranscationID` varchar(10) NOT NULL,
  `memberCardID` varchar(10) NOT NULL,
  `amount` int(11) NOT NULL,
  `paymentMethod` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `commitAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `memberRecord`
--

CREATE TABLE `memberRecord` (
  `orderID` varchar(10) NOT NULL,
  `memberCardID` varchar(10) NOT NULL,
  `showingID` int(11) NOT NULL,
  `orderTime` datetime NOT NULL,
  `ticketNumber` int(11) NOT NULL,
  `totalAmount` int(11) NOT NULL,
  `GetTicketNum` int(11) NOT NULL,
  `orderStatusID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `menuStatus`
--

CREATE TABLE `menuStatus` (
  `orderID` varchar(10) NOT NULL,
  `selectedMeals` varchar(15) NOT NULL,
  `totalAmount` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `movie`
--

CREATE TABLE `movie` (
  `movieID` int(11) NOT NULL,
  `movieName` varchar(35) NOT NULL,
  `movieTime` int(11) NOT NULL,
  `gradeID` int(11) NOT NULL,
  `movieStart` datetime NOT NULL,
  `movieAverageRating` int(11) NOT NULL,
  `movieInfo` varchar(1000) NOT NULL,
  `movieTypeID` int(11) NOT NULL,
  `director` varchar(40) DEFAULT NULL,
  `actors` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `movieRating`
--

CREATE TABLE `movieRating` (
  `ratingID` int(11) NOT NULL,
  `movieID` int(11) NOT NULL,
  `memberID` varchar(10) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `movieType`
--

CREATE TABLE `movieType` (
  `movieTypeID` int(11) NOT NULL,
  `movieTypeName` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `orderStatus`
--

CREATE TABLE `orderStatus` (
  `orderStatusID` varchar(10) NOT NULL,
  `orderStatusName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `playVersion`
--

CREATE TABLE `playVersion` (
  `versionID` int(11) NOT NULL,
  `versionName` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `questionClass`
--

CREATE TABLE `questionClass` (
  `questionID` varchar(10) NOT NULL,
  `titleID` varchar(10) NOT NULL,
  `questionContent` varchar(300) NOT NULL,
  `responseContent` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `redemptionRecord`
--

CREATE TABLE `redemptionRecord` (
  `redemptionID` int(11) NOT NULL,
  `memberID` varchar(10) NOT NULL,
  `voucherID` int(11) NOT NULL,
  `redeemDate` datetime NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `seatCondition`
--

CREATE TABLE `seatCondition` (
  `showingID` int(11) NOT NULL,
  `seatNumber` varchar(10) NOT NULL,
  `seatEmpty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `sessionClass`
--

CREATE TABLE `sessionClass` (
  `sessionToken` varchar(128) NOT NULL,
  `memberID` varchar(10) NOT NULL,
  `createAt` date NOT NULL,
  `experiedAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `showing`
--

CREATE TABLE `showing` (
  `showingID` int(11) NOT NULL,
  `movieID` int(11) NOT NULL,
  `theaterID` varchar(6) NOT NULL,
  `versionID` int(11) NOT NULL,
  `startTime` datetime NOT NULL,
  `showingCinema` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `supervisor`
--

CREATE TABLE `supervisor` (
  `supervisorAcc` varchar(50) NOT NULL,
  `supervisorPwd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `Theater`
--

CREATE TABLE `Theater` (
  `theaterID` varchar(6) NOT NULL,
  `theaterName` varchar(30) NOT NULL,
  `seatNumber` int(11) NOT NULL,
  `cinemaID` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `ticketClass`
--

CREATE TABLE `ticketClass` (
  `ticketID` varchar(10) NOT NULL,
  `ticketTypeName` varchar(10) NOT NULL,
  `ticketValue` int(11) NOT NULL,
  `ticketTypeID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `ticketType`
--

CREATE TABLE `ticketType` (
  `ticketTypeID` varchar(10) NOT NULL,
  `ticketTypeName` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `voucherClass`
--

CREATE TABLE `voucherClass` (
  `voucherID` int(10) NOT NULL,
  `voucherName` varchar(100) NOT NULL,
  `voucherImage` varchar(255) NOT NULL,
  `pricePointsl` int(10) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `assistantQuestion`
--
ALTER TABLE `assistantQuestion`
  ADD PRIMARY KEY (`typeID`);

--
-- 資料表索引 `cinema`
--
ALTER TABLE `cinema`
  ADD PRIMARY KEY (`cinemaID`);

--
-- 資料表索引 `cinemaShowtimes`
--
ALTER TABLE `cinemaShowtimes`
  ADD PRIMARY KEY (`cinemaID`,`movieID`),
  ADD KEY `fk_cshow_movie` (`movieID`);

--
-- 資料表索引 `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`gradeID`);

--
-- 資料表索引 `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`mealsID`),
  ADD KEY `fk_meals_type` (`mealsType`);

--
-- 資料表索引 `mealsType`
--
ALTER TABLE `mealsType`
  ADD PRIMARY KEY (`mealsID`);

--
-- 資料表索引 `memberCashCard`
--
ALTER TABLE `memberCashCard`
  ADD PRIMARY KEY (`memberCardID`);

--
-- 資料表索引 `memberPoint`
--
ALTER TABLE `memberPoint`
  ADD PRIMARY KEY (`memberPointID`),
  ADD KEY `fk_session_member` (`memberID`);

--
-- 資料表索引 `memberProfile`
--
ALTER TABLE `memberProfile`
  ADD PRIMARY KEY (`memberID`),
  ADD UNIQUE KEY `uq_member_card` (`memberCardID`);

--
-- 資料表索引 `memberRecharge`
--
ALTER TABLE `memberRecharge`
  ADD PRIMARY KEY (`TranscationID`),
  ADD KEY `fk_recharge_member` (`memberCardID`);

--
-- 資料表索引 `memberRecord`
--
ALTER TABLE `memberRecord`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `fk_mrecord_member` (`memberCardID`),
  ADD KEY `fk_mrecord_showing` (`showingID`),
  ADD KEY `orderStatusID` (`orderStatusID`) USING BTREE;

--
-- 資料表索引 `menuStatus`
--
ALTER TABLE `menuStatus`
  ADD PRIMARY KEY (`orderID`,`selectedMeals`);

--
-- 資料表索引 `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`movieID`),
  ADD KEY `fk_movie_grade` (`gradeID`),
  ADD KEY `fk_movie_type` (`movieTypeID`);

--
-- 資料表索引 `movieRating`
--
ALTER TABLE `movieRating`
  ADD PRIMARY KEY (`ratingID`),
  ADD UNIQUE KEY `uq_movie_member` (`movieID`,`memberID`),
  ADD KEY `fk_rating_member` (`memberID`);

--
-- 資料表索引 `movieType`
--
ALTER TABLE `movieType`
  ADD PRIMARY KEY (`movieTypeID`);

--
-- 資料表索引 `orderStatus`
--
ALTER TABLE `orderStatus`
  ADD PRIMARY KEY (`orderStatusID`);

--
-- 資料表索引 `playVersion`
--
ALTER TABLE `playVersion`
  ADD PRIMARY KEY (`versionID`);

--
-- 資料表索引 `questionClass`
--
ALTER TABLE `questionClass`
  ADD PRIMARY KEY (`questionID`),
  ADD KEY `fk_question_title` (`titleID`);

--
-- 資料表索引 `redemptionRecord`
--
ALTER TABLE `redemptionRecord`
  ADD PRIMARY KEY (`redemptionID`),
  ADD KEY `fk_redemption_member` (`memberID`),
  ADD KEY `fk_redemption_voucher` (`voucherID`);

--
-- 資料表索引 `seatCondition`
--
ALTER TABLE `seatCondition`
  ADD PRIMARY KEY (`showingID`,`seatNumber`);

--
-- 資料表索引 `sessionClass`
--
ALTER TABLE `sessionClass`
  ADD PRIMARY KEY (`sessionToken`),
  ADD KEY `fk_member_ID` (`memberID`);

--
-- 資料表索引 `showing`
--
ALTER TABLE `showing`
  ADD PRIMARY KEY (`showingID`),
  ADD UNIQUE KEY `fk_showing_cinema` (`showingCinema`),
  ADD KEY `fk_showing_movie` (`movieID`),
  ADD KEY `fk_showing_theater` (`theaterID`),
  ADD KEY `fk_showing_version` (`versionID`);

--
-- 資料表索引 `supervisor`
--
ALTER TABLE `supervisor`
  ADD PRIMARY KEY (`supervisorAcc`);

--
-- 資料表索引 `Theater`
--
ALTER TABLE `Theater`
  ADD PRIMARY KEY (`theaterID`),
  ADD KEY `fk_theater_cinema` (`cinemaID`);

--
-- 資料表索引 `ticketClass`
--
ALTER TABLE `ticketClass`
  ADD PRIMARY KEY (`ticketID`),
  ADD KEY `fk_ticketclass_type` (`ticketTypeID`);

--
-- 資料表索引 `ticketType`
--
ALTER TABLE `ticketType`
  ADD PRIMARY KEY (`ticketTypeID`);

--
-- 資料表索引 `voucherClass`
--
ALTER TABLE `voucherClass`
  ADD PRIMARY KEY (`voucherID`);

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `cinemaShowtimes`
--
ALTER TABLE `cinemaShowtimes`
  ADD CONSTRAINT `fk_cshow_cinema` FOREIGN KEY (`cinemaID`) REFERENCES `cinema` (`cinemaID`),
  ADD CONSTRAINT `fk_cshow_movie` FOREIGN KEY (`movieID`) REFERENCES `movie` (`movieID`);

--
-- 資料表的限制式 `meals`
--
ALTER TABLE `meals`
  ADD CONSTRAINT `fk_meals_type` FOREIGN KEY (`mealsType`) REFERENCES `mealsType` (`mealsID`);

--
-- 資料表的限制式 `memberCashCard`
--
ALTER TABLE `memberCashCard`
  ADD CONSTRAINT `fk_cashcard_member` FOREIGN KEY (`memberCardID`) REFERENCES `memberProfile` (`memberCardID`);

--
-- 資料表的限制式 `memberPoint`
--
ALTER TABLE `memberPoint`
  ADD CONSTRAINT `fk_session_member` FOREIGN KEY (`memberID`) REFERENCES `memberProfile` (`memberID`);

--
-- 資料表的限制式 `memberRecharge`
--
ALTER TABLE `memberRecharge`
  ADD CONSTRAINT `fk_recharge_member` FOREIGN KEY (`memberCardID`) REFERENCES `memberProfile` (`memberCardID`);

--
-- 資料表的限制式 `memberRecord`
--
ALTER TABLE `memberRecord`
  ADD CONSTRAINT `fk_mrecord_member` FOREIGN KEY (`memberCardID`) REFERENCES `memberProfile` (`memberCardID`),
  ADD CONSTRAINT `fk_mrecord_showing` FOREIGN KEY (`showingID`) REFERENCES `showing` (`showingID`);

--
-- 資料表的限制式 `menuStatus`
--
ALTER TABLE `menuStatus`
  ADD CONSTRAINT `fk_menustatus_order` FOREIGN KEY (`orderID`) REFERENCES `memberRecord` (`orderID`);

--
-- 資料表的限制式 `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `fk_movie_grade` FOREIGN KEY (`gradeID`) REFERENCES `grade` (`gradeID`),
  ADD CONSTRAINT `fk_movie_type` FOREIGN KEY (`movieTypeID`) REFERENCES `movieType` (`movieTypeID`);

--
-- 資料表的限制式 `movieRating`
--
ALTER TABLE `movieRating`
  ADD CONSTRAINT `fk_rating_member` FOREIGN KEY (`memberID`) REFERENCES `memberProfile` (`memberID`),
  ADD CONSTRAINT `fk_rating_movie` FOREIGN KEY (`movieID`) REFERENCES `movie` (`movieID`);

--
-- 資料表的限制式 `questionClass`
--
ALTER TABLE `questionClass`
  ADD CONSTRAINT `fk_question_title` FOREIGN KEY (`titleID`) REFERENCES `assistantQuestion` (`typeID`);

--
-- 資料表的限制式 `redemptionRecord`
--
ALTER TABLE `redemptionRecord`
  ADD CONSTRAINT `fk_redemption_member` FOREIGN KEY (`memberID`) REFERENCES `memberProfile` (`memberID`),
  ADD CONSTRAINT `fk_redemption_voucher` FOREIGN KEY (`voucherID`) REFERENCES `voucherClass` (`voucherID`);

--
-- 資料表的限制式 `seatCondition`
--
ALTER TABLE `seatCondition`
  ADD CONSTRAINT `fk_seat_showing` FOREIGN KEY (`showingID`) REFERENCES `showing` (`showingID`);

--
-- 資料表的限制式 `sessionClass`
--
ALTER TABLE `sessionClass`
  ADD CONSTRAINT `fk_member_ID` FOREIGN KEY (`memberID`) REFERENCES `memberProfile` (`memberID`);

--
-- 資料表的限制式 `showing`
--
ALTER TABLE `showing`
  ADD CONSTRAINT `fk_showing_movie` FOREIGN KEY (`movieID`) REFERENCES `movie` (`movieID`),
  ADD CONSTRAINT `fk_showing_theater` FOREIGN KEY (`theaterID`) REFERENCES `Theater` (`theaterID`),
  ADD CONSTRAINT `fk_showing_version` FOREIGN KEY (`versionID`) REFERENCES `playVersion` (`versionID`);

--
-- 資料表的限制式 `Theater`
--
ALTER TABLE `Theater`
  ADD CONSTRAINT `fk_theater_cinema` FOREIGN KEY (`cinemaID`) REFERENCES `cinema` (`cinemaID`);

--
-- 資料表的限制式 `ticketClass`
--
ALTER TABLE `ticketClass`
  ADD CONSTRAINT `fk_ticketclass_type` FOREIGN KEY (`ticketTypeID`) REFERENCES `ticketType` (`ticketTypeID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
