-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2018 at 03:02 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `videocollection`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(114) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `FirstName`, `LastName`, `Username`, `Password`) VALUES
(1, 'dddd', 'ss', 'ss', 'dd'),
(2, '1111', '111', '11', '1'),
(3, 'asf', 'dsg', 'dfh', 'gf'),
(47, '235', '316', 'sdf', '5'),
(48, '234', '6236', '61', '7'),
(49, 'dfg', 'j6', 'k8', '9'),
(50, 'fg', '6', '432667', '8'),
(51, 'asdasf', '4356', 'dfg65', '54'),
(52, '×©×“×’×›', '×“×’×¢', '654', '×¢×›×™'),
(53, 'asf', 'frwse', 'ss', 'fda'),
(54, 'asfasf', 'sdfgdfg', 'ssfasfa', 'asf'),
(55, 'asfasf', 'sdfgdfg', 'ssfasfaer', 'asf'),
(56, 'sd', 'sd', 'sd', 'sd'),
(57, 'asf', 'gre', '54', 'gfy'),
(58, '53', '35', '3', '5'),
(59, '53', '35', '3456', '5'),
(60, '53', '35', '34vg56', '5'),
(61, '53', '35', '5552', '5'),
(88, 'asdf', 'dfg', '45', '45'),
(89, 'asf', 'asf', 'ff', 'ff'),
(90, 'asf', '4325', '44', '44'),
(91, '34', 'dsa', '7777', '0e01b9e0479185020cbefe126d66d065ba8135f8'),
(92, 'asf', 'dsad', 'afe4f', 'bdd9bd4a50ae267f14f845a7d1f6b364904c4845'),
(93, 'dfa', 'asdg', 'sss', 'cf5002678cad9782d4e478bfec4add1f543383df'),
(94, 'asfsa', 'reg', 'sdf455', '4ba449942c18c0d71869c85f4fe8fa6ab7d1460a'),
(95, 'fgtyj', 'fygjt', '88', 'dc3fc7adb13e9290463b8b8e902d51f1030b7810');

-- --------------------------------------------------------

--
-- Table structure for table `youtube`
--

CREATE TABLE `youtube` (
  `ID` int(11) NOT NULL,
  `userID` int(50) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `youtube`
--

INSERT INTO `youtube` (`ID`, `userID`, `Category`, `Title`, `Description`, `Link`) VALUES
(2, 1, 'Football', 'Comedy Football & Funniest Moments 2018 ● HD #3', 'A compilation of some of the funniest moments in football in 2018', 'Y4RKXNhYpeo'),
(3, 1, 'Standup', 'FUNNY MONDAY With Shahar Hason - Suddenly English', 'Shachar Hason performing his hilarious show in English', 's9BPl1iV8w4'),
(4, 1, 'Music', 'Disturbed - The Sound Of Silence [Official Music Video]', 'A cover of \"Sound of Silence\" by Disturbed', 'u9Dg-g7t2l4'),
(5, 1, 'Music', 'DJ Khaled - No Brainer (Official Video) ft. Justin Bieber, Chance the Rapper, Quavo', 'A new song by DJ Khaled called \"No Brainer\" featuring Justin Bieber, Chance the Rapper & Quavo', 'kxloC1MKTpg'),
(6, 1, 'Standup', 'Israeli Standup - Yohay Sponder\r\n', 'Yohay Sponder is performing in America in English', 'EB_IWZ7JmXo'),
(8, 1, 'Web Development', 'Angular Tutorial for Beginners: Learn Angular from Scratch | Mosh', 'A 2 hour Angular crash course by \'Programming with Mosh\'', 'k5E2AVpwsko'),
(9, 1, 'Web Development', 'Learn React - React Crash Course 2018 - React Tutorial with Examples | Mosh', 'A 2 hour crash course for using React, by \'Programming with Mosh\'', 'Ke90Tje7VS0&t'),
(10, 60, 'Web Development', 'Learn React - React Crash Course 2018 - React Tutorial with Examples | Mosh', 'A 2 hour crash course for using React, by \'Programming with Mosh\'', 'https://www.youtube.com/watch?v=Ke90Tje7VS0&t=2934s'),
(11, 60, 'Web Development', 'Angular Tutorial for Beginners: Learn Angular from Scratch | Mosh', 'A 2 hour Angular crash course by \'Programming with Mosh\'', 'https://www.youtube.com/watch?v=k5E2AVpwsko'),
(12, 60, 'Football', 'Football Respect & Most Beautiful Moments 2018 #2 HD', 'Football Respect & Beautiful, Emotional Moments 2018 HD 2018: Neymar, Salah, Ronaldo', 'COqTVbh3_xs'),
(13, 60, 'Football', 'Comedy Football & Funniest Moments 2018 ● HD #3', 'A compilation of some of the funniest moments in football in 2018', 'https://www.youtube.com/watch?v=Y4RKXNhYpeo'),
(14, 60, 'Standup', 'Israeli Standup - Yohay Sponder\r\n', 'Yohay Sponder is performing in America in English', 'https://www.youtube.com/watch?v=EB_IWZ7JmXo'),
(15, 60, 'Standup', 'FUNNY MONDAY With Shahar Hason - Suddenly English', 'Shachar Hason performing his hilarious show in English', 'https://www.youtube.com/watch?v=s9BPl1iV8w4'),
(16, 60, 'Music', 'Disturbed - The Sound Of Silence [Official Music Video]', 'A cover of \"Sound of Silence\" by Disturbed', 'https://www.youtube.com/watch?v=u9Dg-g7t2l4'),
(17, 60, 'Music', 'DJ Khaled - No Brainer (Official Video) ft. Justin Bieber, Chance the Rapper, Quavo', 'A new song by DJ Khaled called \"No Brainer\" featuring Justin Bieber, Chance the Rapper & Quavo', 'https://www.youtube.com/watch?v=kxloC1MKTpg'),
(18, 61, 'Web Development', 'Learn React - React Crash Course 2018 - React Tutorial with Examples | Mosh', 'A 2 hour crash course for using React, by \'Programming with Mosh\'', 'https://www.youtube.com/watch?v=Ke90Tje7VS0&t=2934s'),
(19, 61, 'Web Development', 'Angular Tutorial for Beginners: Learn Angular from Scratch | Mosh', 'A 2 hour Angular crash course by \'Programming with Mosh\'', 'https://www.youtube.com/watch?v=k5E2AVpwsko'),
(20, 61, 'Football', 'Football Respect & Most Beautiful Moments 2018 #2 HD', 'Football Respect & Beautiful, Emotional Moments 2018 HD 2018: Neymar, Salah, Ronaldo', 'COqTVbh3_xs'),
(21, 61, 'Football', 'Comedy Football & Funniest Moments 2018 â— HD #3', 'A compilation of some of the funniest moments in football in 2018', 'https://www.youtube.com/watch?v=Y4RKXNhYpeo'),
(22, 61, 'Standup', 'Israeli Standup - Yohay Sponder\r\n', 'Yohay Sponder is performing in America in English', 'https://www.youtube.com/watch?v=EB_IWZ7JmXo'),
(23, 61, 'Standup', 'FUNNY MONDAY With Shahar Hason - Suddenly English', 'Shachar Hason performing his hilarious show in English', 'https://www.youtube.com/watch?v=s9BPl1iV8w4'),
(24, 61, 'Music', 'Disturbed - The Sound Of Silence [Official Music Video]', 'A cover of \"Sound of Silence\" by Disturbed', 'https://www.youtube.com/watch?v=u9Dg-g7t2l4'),
(25, 61, 'Music', 'DJ Khaled - No Brainer (Official Video) ft. Justin Bieber, Chance the Rapper, Quavo', 'A new song by DJ Khaled called \"No Brainer\" featuring Justin Bieber, Chance the Rapper & Quavo', 'https://www.youtube.com/watch?v=kxloC1MKTpg'),
(26, 61, 'Web Development', 'Learn React - React Crash Course 2018 - React Tutorial with Examples | Mosh', 'A 2 hour crash course for using React, by \'Programming with Mosh\'', 'Ke90Tje7VS0'),
(27, 61, 'Web Development', 'Angular Tutorial for Beginners: Learn Angular from Scratch | Mosh', 'A 2 hour Angular crash course by \'Programming with Mosh\'', 'k5E2AVpwsko'),
(28, 61, 'Football', 'Football Respect & Most Beautiful Moments 2018 #2 HD', 'Football Respect & Beautiful, Emotional Moments 2018 HD 2018: Neymar, Salah, Ronaldo', 'COqTVbh3_xs'),
(29, 61, 'Football', 'Comedy Football & Funniest Moments 2018 â— HD #3', 'A compilation of some of the funniest moments in football in 2018', 'Y4RKXNhYpeo'),
(30, 61, 'Standup', 'Israeli Standup - Yohay Sponder\r\n', 'Yohay Sponder is performing in America in English', 'EB_IWZ7JmXo'),
(31, 61, 'Standup', 'FUNNY MONDAY With Shahar Hason - Suddenly English', 'Shachar Hason performing his hilarious show in English', 's9BPl1iV8w4'),
(32, 61, 'Music', 'Disturbed - The Sound Of Silence [Official Music Video]', 'A cover of \"Sound of Silence\" by Disturbed', 'u9Dg-g7t2l4'),
(33, 61, 'Music', 'DJ Khaled - No Brainer (Official Video) ft. Justin Bieber, Chance the Rapper, Quavo', 'A new song by DJ Khaled called \"No Brainer\" featuring Justin Bieber, Chance the Rapper & Quavo', 'kxloC1MKTpg'),
(34, 61, 'Web Development', 'Learn React - React Crash Course 2018 - React Tutorial with Examples | Mosh', 'A 2 hour crash course for using React, by \'Programming with Mosh\'', 'Ke90Tje7VS0'),
(35, 61, 'Web Development', 'Angular Tutorial for Beginners: Learn Angular from Scratch | Mosh', 'A 2 hour Angular crash course by \'Programming with Mosh\'', 'k5E2AVpwsko'),
(36, 61, 'Football', 'Football Respect & Most Beautiful Moments 2018 #2 HD', 'Football Respect & Beautiful, Emotional Moments 2018 HD 2018: Neymar, Salah, Ronaldo', 'COqTVbh3_xs'),
(37, 61, 'Football', 'Comedy Football & Funniest Moments 2018 â— HD #3', 'A compilation of some of the funniest moments in football in 2018', 'Y4RKXNhYpeo'),
(38, 61, 'Standup', 'Israeli Standup - Yohay Sponder\r\n', 'Yohay Sponder is performing in America in English', 'EB_IWZ7JmXo'),
(39, 61, 'Standup', 'FUNNY MONDAY With Shahar Hason - Suddenly English', 'Shachar Hason performing his hilarious show in English', 's9BPl1iV8w4'),
(40, 61, 'Music', 'Disturbed - The Sound Of Silence [Official Music Video]', 'A cover of \"Sound of Silence\" by Disturbed', 'u9Dg-g7t2l4'),
(41, 61, 'Music', 'DJ Khaled - No Brainer (Official Video) ft. Justin Bieber, Chance the Rapper, Quavo', 'A new song by DJ Khaled called \"No Brainer\" featuring Justin Bieber, Chance the Rapper & Quavo', 'kxloC1MKTpg'),
(42, 61, 'Web Development', 'Learn React - React Crash Course 2018 - React Tutorial with Examples | Mosh', 'A 2 hour crash course for using React, by \'Programming with Mosh\'', 'Ke90Tje7VS0'),
(43, 61, 'Web Development', 'Angular Tutorial for Beginners: Learn Angular from Scratch | Mosh', 'A 2 hour Angular crash course by \'Programming with Mosh\'', 'k5E2AVpwsko'),
(44, 61, 'Football', 'Football Respect & Most Beautiful Moments 2018 #2 HD', 'Football Respect & Beautiful, Emotional Moments 2018 HD 2018: Neymar, Salah, Ronaldo', 'COqTVbh3_xs'),
(45, 61, 'Football', 'Comedy Football & Funniest Moments 2018 â— HD #3', 'A compilation of some of the funniest moments in football in 2018', 'Y4RKXNhYpeo'),
(46, 61, 'Standup', 'Israeli Standup - Yohay Sponder\r\n', 'Yohay Sponder is performing in America in English', 'EB_IWZ7JmXo'),
(47, 61, 'Standup', 'FUNNY MONDAY With Shahar Hason - Suddenly English', 'Shachar Hason performing his hilarious show in English', 's9BPl1iV8w4'),
(48, 61, 'Music', 'Disturbed - The Sound Of Silence [Official Music Video]', 'A cover of \"Sound of Silence\" by Disturbed', 'u9Dg-g7t2l4'),
(49, 61, 'Music', 'DJ Khaled - No Brainer (Official Video) ft. Justin Bieber, Chance the Rapper, Quavo', 'A new song by DJ Khaled called \"No Brainer\" featuring Justin Bieber, Chance the Rapper & Quavo', 'kxloC1MKTpg'),
(50, 61, 'Web Development', 'Learn React - React Crash Course 2018 - React Tutorial with Examples | Mosh', 'A 2 hour crash course for using React, by \'Programming with Mosh\'', 'Ke90Tje7VS0'),
(51, 61, 'Web Development', 'Angular Tutorial for Beginners: Learn Angular from Scratch | Mosh', 'A 2 hour Angular crash course by \'Programming with Mosh\'', 'k5E2AVpwsko'),
(52, 61, 'Football', 'Football Respect & Most Beautiful Moments 2018 #2 HD', 'Football Respect & Beautiful, Emotional Moments 2018 HD 2018: Neymar, Salah, Ronaldo', 'COqTVbh3_xs'),
(53, 61, 'Football', 'Comedy Football & Funniest Moments 2018 â— HD #3', 'A compilation of some of the funniest moments in football in 2018', 'Y4RKXNhYpeo'),
(54, 61, 'Standup', 'Israeli Standup - Yohay Sponder\r\n', 'Yohay Sponder is performing in America in English', 'EB_IWZ7JmXo'),
(55, 61, 'Standup', 'FUNNY MONDAY With Shahar Hason - Suddenly English', 'Shachar Hason performing his hilarious show in English', 's9BPl1iV8w4'),
(56, 61, 'Music', 'Disturbed - The Sound Of Silence [Official Music Video]', 'A cover of \"Sound of Silence\" by Disturbed', 'u9Dg-g7t2l4'),
(57, 61, 'Music', 'DJ Khaled - No Brainer (Official Video) ft. Justin Bieber, Chance the Rapper, Quavo', 'A new song by DJ Khaled called \"No Brainer\" featuring Justin Bieber, Chance the Rapper & Quavo', 'kxloC1MKTpg'),
(58, 90, '58', '58', '58', 'Ke90Tje7VS0'),
(59, 90, 'Web Develop3', 'Angular Tutorial for Beginners: Learn Angular from Scratch | Mosh', 'A 2 hour Angular crash course by \'Programming with Mosh\'', 'k5E2AVpwsko'),
(60, 90, 'Football', 'Football Respect & Most Beautiful Moments 2018 #2 HD', 'Football Respect & Beautiful, Emotional Moments 2018 HD 2018: Neymar, Salah, Ronaldo', 'COqTVbh3_xs'),
(61, 90, 'Football', 'Comedy Football & Funniest Moments 2018 â— HD #3', 'A compilation of some of the funniest moments in football in 2018', 'Y4RKXNhYpeo'),
(62, 90, 'Standup', 'Israeli Standup - Yohay Sponder\r\n', 'Yohay Sponder is performing in America in English', 'EB_IWZ7JmXo'),
(63, 90, 'Standup', 'FUNNY MONDAY With Shahar Hason - Suddenly English', 'Shachar Hason performing his hilarious show in English', 's9BPl1iV8w4'),
(64, 90, 'Music', 'Disturbed - The Sound Of Silence [Official Music Video]', 'A cover of \"Sound of Silence\" by Disturbed', 'u9Dg-g7t2l4'),
(65, 90, 'Music', 'DJ Khaled - No Brainer (Official Video) ft. Justin Bieber, Chance the Rapper, Quavo', 'A new song by DJ Khaled called \"No Brainer\" featuring Justin Bieber, Chance the Rapper & Quavo', 'kxloC1MKTpg'),
(66, 91, 'Web Development', 'Learn React - React Crash Course 2018 - React Tutorial with Examples | Mosh', 'A 2 hour crash course for using React, by \'Programming with Mosh\'', 'Ke90Tje7VS0'),
(67, 91, 'Web Development', 'Angular Tutorial for Beginners: Learn Angular from Scratch | Mosh', 'A 2 hour Angular crash course by \'Programming with Mosh\'', 'k5E2AVpwsko'),
(68, 91, 'Football', 'Lionel Messi - Top 10 Impossible Goals', 'Ten goals of the legendary one-man show by Leo Messi', 'XJ3Z0wHPzSw'),
(69, 91, 'Football', 'Comedy Football & Funniest Moments 2018 â— HD #3', 'A compilation of some of the funniest moments in football in 2018', 'Y4RKXNhYpeo'),
(70, 91, 'Standup', 'Israeli Standup - Yohay Sponder\r\n', 'Yohay Sponder is performing in America in English', 'EB_IWZ7JmXo'),
(71, 91, 'Standup', 'FUNNY MONDAY With Shahar Hason - Suddenly English', 'Shachar Hason performing his hilarious show in English', 's9BPl1iV8w4'),
(72, 91, 'Music', 'Disturbed - The Sound Of Silence [Official Music Video]', 'A cover of \"Sound of Silence\" by Disturbed', 'u9Dg-g7t2l4'),
(73, 91, 'Music', 'DJ Khaled - No Brainer (Official Video) ft. Justin Bieber, Chance the Rapper, Quavo', 'A new song by DJ Khaled called \"No Brainer\" featuring Justin Bieber, Chance the Rapper & Quavo', 'kxloC1MKTpg'),
(74, 92, 'Web Development', 'Learn React - React Crash Course 2018 - React Tutorial with Examples | Mosh', 'A 2 hour crash course for using React, by \'Programming with Mosh\'', 'Ke90Tje7VS0'),
(75, 92, 'Web Development', 'Angular Tutorial for Beginners: Learn Angular from Scratch | Mosh', 'A 2 hour Angular crash course by \'Programming with Mosh\'', 'k5E2AVpwsko'),
(76, 92, 'Football', 'Lionel Messi - Top 10 Impossible Goals', 'Ten goals of the legendary one-man show by Leo Messi', 'XJ3Z0wHPzSw'),
(77, 92, 'Football', 'Comedy Football & Funniest Moments 2018 â— HD #3', 'A compilation of some of the funniest moments in football in 2018', 'Y4RKXNhYpeo'),
(78, 92, 'Standup', 'Israeli Standup - Yohay Sponder\r\n', 'Yohay Sponder is performing in America in English', 'EB_IWZ7JmXo'),
(79, 92, 'Standup', 'FUNNY MONDAY With Shahar Hason - Suddenly English', 'Shachar Hason performing his hilarious show in English', 's9BPl1iV8w4'),
(80, 92, 'Music', 'Disturbed - The Sound Of Silence [Official Music Video]', 'A cover of \"Sound of Silence\" by Disturbed', 'u9Dg-g7t2l4'),
(81, 92, 'Music', 'DJ Khaled - No Brainer (Official Video) ft. Justin Bieber, Chance the Rapper, Quavo', 'A new song by DJ Khaled called \"No Brainer\" featuring Justin Bieber, Chance the Rapper & Quavo', 'kxloC1MKTpg'),
(83, 93, 'Web Development', 'Angular Tutorial for Beginners: Learn Angular from Scratch | Mosh', 'A 2 hour Angular crash course by \'Programming with Mosh\'', 'k5E2AVpwsko'),
(84, 93, 'Football', 'Lionel Messi - Top 10 Impossible Goals', 'Ten goals of the legendary one-man show by Leo Messi', 'XJ3Z0wHPzSw'),
(85, 93, 'Football', 'Comedy Football & Funniest Moments 2018 â— HD #3', 'A compilation of some of the funniest moments in football in 2018', 'Y4RKXNhYpeo'),
(86, 93, 'Standup', 'Israeli Standup - Yohay Sponder\r\n', 'Yohay Sponder is performing in America in English', 'EB_IWZ7JmXo'),
(87, 93, 'Standup', 'FUNNY MONDAY With Shahar Hason - Suddenly English', 'Shachar Hason performing his hilarious show in English', 's9BPl1iV8w4'),
(88, 93, 'Music', 'Disturbed - The Sound Of Silence [Official Music Video]', 'A cover of \"Sound of Silence\" by Disturbed', 'u9Dg-g7t2l4'),
(89, 93, 'Music', 'DJ Khaled - No Brainer (Official Video) ft. Justin Bieber, Chance the Rapper, Quavo', 'A new song by DJ Khaled called \"No Brainer\" featuring Justin Bieber, Chance the Rapper & Quavo', 'kxloC1MKTpg'),
(90, 93, '43', 'gasf', 'asfasf', '4'),
(91, 93, 'sd', 'dba', 'f', '08MzxMvF32c'),
(92, 94, 'Web Development', 'Learn React - React Crash Course 2018 - React Tutorial with Examples | Mosh', 'A 2 hour crash course for using React, by \'Programming with Mosh\'', 'Ke90Tje7VS0'),
(93, 94, 'Web Development', 'Angular Tutorial for Beginners: Learn Angular from Scratch | Mosh', 'A 2 hour Angular crash course by \'Programming with Mosh\'', 'k5E2AVpwsko'),
(94, 94, 'Football', 'Lionel Messi - Top 10 Impossible Goals', 'Ten goals of the legendary one-man show by Leo Messi', 'XJ3Z0wHPzSw'),
(95, 94, 'Football', 'Comedy Football & Funniest Moments 2018 â— HD #3', 'A compilation of some of the funniest moments in football in 2018', 'Y4RKXNhYpeo'),
(96, 94, 'Standup', 'Israeli Standup - Yohay Sponder\r\n', 'Yohay Sponder is performing in America in English', 'EB_IWZ7JmXo'),
(97, 94, 'Standup', 'FUNNY MONDAY With Shahar Hason - Suddenly English', 'Shachar Hason performing his hilarious show in English', 's9BPl1iV8w4'),
(98, 94, 'Music', 'Disturbed - The Sound Of Silence [Official Music Video]', 'A cover of \"Sound of Silence\" by Disturbed', 'u9Dg-g7t2l4'),
(99, 94, 'Music', 'DJ Khaled - No Brainer (Official Video) ft. Justin Bieber, Chance the Rapper, Quavo', 'A new song by DJ Khaled called \"No Brainer\" featuring Justin Bieber, Chance the Rapper & Quavo', 'kxloC1MKTpg'),
(100, 95, 'Web Development', 'Learn React - React Crash Course 2018 - React Tutorial with Examples | Mosh', 'A 2 hour crash course for using React, by \'Programming with Mosh\'', 'Ke90Tje7VS0'),
(101, 95, 'Web Development', 'Angular Tutorial for Beginners: Learn Angular from Scratch | Mosh', 'A 2 hour Angular crash course by \'Programming with Mosh\'', 'k5E2AVpwsko'),
(102, 95, 'Football', 'Lionel Messi - Top 10 Impossible Goals', 'Ten goals of the legendary one-man show by Leo Messi', 'XJ3Z0wHPzSw'),
(103, 95, 'Football', 'Comedy Football & Funniest Moments 2018 â— HD #3', 'A compilation of some of the funniest moments in football in 2018', 'Y4RKXNhYpeo'),
(105, 95, 'Standup', 'FUNNY MONDAY With Shahar Hason - Suddenly English', 'Shachar Hason performing his hilarious show in English', 's9BPl1iV8w4'),
(106, 95, 'Music', 'Disturbed - The Sound Of Silence [Official Music Video]', 'A cover of \"Sound of Silence\" by Disturbed', 'u9Dg-g7t2l4'),
(107, 95, 'Music', 'DJ Khaled - No Brainer (Official Video) ft. Justin Bieber, Chance the Rapper, Quavo', 'A new song by DJ Khaled called \"No Brainer\" featuring Justin Bieber, Chance the Rapper & Quavo', 'kxloC1MKTpg'),
(108, 95, 'ert', 'wear', 'aert', '3425');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `youtube`
--
ALTER TABLE `youtube`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `userID` (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(114) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `youtube`
--
ALTER TABLE `youtube`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `youtube`
--
ALTER TABLE `youtube`
  ADD CONSTRAINT `youtube_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
