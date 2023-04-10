-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2023 at 08:58 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_music`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id_cate` int(11) NOT NULL,
  `name_cate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id_cate`, `name_cate`) VALUES
(1, 'Nhạc Trẻ'),
(2, 'Remix'),
(3, 'Ballad'),
(4, 'Rap'),
(5, 'Null'),
(6, 'Nguyễn Minh Phúc'),
(7, 'Pop'),
(8, 'Electronic');

-- --------------------------------------------------------

--
-- Table structure for table `composer`
--

CREATE TABLE `composer` (
  `id_composer` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `country` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `composer`
--

INSERT INTO `composer` (`id_composer`, `name`, `country`) VALUES
(1, 'Hương Ly', 1),
(2, 'Hà Duy Thái', 1),
(3, 'Thái Học', 1),
(4, 'No name', 1),
(5, 'Orange', 1),
(6, 'Du Uyên', 1),
(7, 'Yan Nguyễn', 1),
(8, 'Diệu Kiên', 1),
(9, 'Tiên Cookie', 1),
(10, 'Trang Thiên', 1),
(11, 'H-Kray', 1),
(12, 'Huy Vạc', 1),
(13, 'Katy Trần', 1),
(14, 'Sơn Tùng Mtp', 1),
(15, 'Đoàn Thúy Trang', 1),
(16, 'Bích Phương', 1),
(17, 'Nguyễn Vĩ', 1),
(18, 'Gia Huy', 1),
(19, 'Nguyễn Zoe', 1),
(20, 'Lee Phú Quý', 1),
(21, 'Noo Phước Thịnh', 1),
(22, 'Trịnh Công Sơn', 1),
(23, 'Trịnh Thiên Ân', 1),
(24, 'Nguyễn Phúc Thiện', 1),
(25, 'Thúy Nga', 1),
(26, 'Yling', 2),
(27, 'T-Ara', 2),
(28, 'Alan Walker', 2),
(29, 'Rick Price', 2),
(30, 'Hoàng Thùy Linh', 1),
(31, 'Minh Vương M4U', 1),
(32, 'H2K', 1),
(33, 'Sezen Aksu', 2),
(34, 'Mariah Carey', 2),
(35, 'Charlie Puth', 2),
(36, 'Ed Sheeran', 2),
(37, 'Alec Benjamin', 2),
(38, 'Maroon 5', 2),
(39, 'Meghan Trainor', 2),
(40, 'Shawn Mendes', 2),
(41, 'Camila Cabello', 2),
(42, 'Justin Bieber', 2),
(43, 'Ellie Goulding', 2),
(44, 'Luis Fonsi', 2),
(45, 'Jaymes Young', 2),
(46, 'Pink Sweat', 2),
(47, 'Aaron Smith', 2),
(48, 'Shaun', 2),
(49, 'Mitchell Tenpenny', 2),
(50, 'Armnhrm', 2),
(51, 'Seven Lions', 2),
(52, 'Thanh Hưng', 1),
(53, 'Bùi Anh Tuấn', 1),
(54, 'Ngọc Quyền Sang', 1),
(55, 'Trà My Idol', 1),
(56, 'Lady Mây', 1),
(57, 'Cao Nam Thành', 1),
(58, 'Phùng Thanh Độ', 1),
(59, 'Czee', 1),
(60, 'Sơn Tùng M-Tp', 1),
(61, 'Rhymatic', 1),
(62, 'Huyr', 1),
(63, 'Tùng Viu', 1),
(64, 'Da Lab', 1),
(65, 'Masew', 1),
(66, 'Masiu', 1),
(67, 'B Ray', 1),
(68, 'Tap', 1),
(69, 'Hoà Minzy', 1),
(70, 'Độ Mixi', 1),
(71, 'Jack 97', 1),
(72, 'Hà Anh Tuấn', 1),
(73, 'Buitruonglinh', 1),
(74, 'Duy Tuyên', 1),
(75, 'Phúcxp', 1),
(76, 'Freakd', 1),
(77, 'Mỹ Tâm', 1),
(78, 'Hà Nhi', 1),
(79, 'Kym', 1),
(80, 'Cầm', 1),
(81, 'Umie', 1),
(82, 'Freaky', 1),
(83, 'Hổ', 1),
(84, 'Choco', 1),
(85, 'Phúc Du', 1),
(86, 'Hoàng Duyên', 1),
(87, 'Hứa Kim Tuyền', 1),
(88, 'Quanvro', 1),
(89, 'Min', 1),
(90, 'Bùi Trường Linh', 1),
(91, 'O.Lew', 1),
(92, 'Vũ', 1),
(93, 'Long Phạm', 1),
(94, 'Lã.', 1),
(95, 'Log', 1),
(96, 'Tib', 1),
(97, 'Kygo', 1),
(98, 'Dean Lewis', 1),
(99, 'Lauv', 1),
(100, 'Carys', 1),
(101, 'The Chainsmokers', 1),
(102, 'Haley', 1),
(103, 'Justine Skye', 1),
(104, 'Tyga', 1),
(105, 'Tone And I', 1),
(106, 'Air Supply', 1),
(107, 'Chi Dân', 1),
(108, 'Soobin Hoàng Sơn', 1),
(109, 'Only C Ft Lou Hoàng', 1),
(110, 'Doãn Hiếu', 1),
(111, 'Đức Phúc', 1),
(112, 'Hiền Hồ', 1),
(113, 'Nal', 1),
(114, 'Jin Tuấn Nam', 1),
(115, 'Võ Lê Mi', 1),
(116, 'Phát Hồ', 1),
(117, 'Kay Trần', 1),
(118, 'Nguyễn Khoa', 1),
(119, 'Binz', 1),
(120, 'Nguyễn Đình Vũ', 1),
(121, 'Tăng Phúc', 1),
(122, 'Yuno Bigboy', 1),
(123, 'Dino', 1),
(124, 'Thảo Nhi', 1),
(125, 'Uông Tô Lang', 3),
(126, 'Tôn Ngữ Trại', 3),
(127, 'Tiêu Doãn', 3),
(128, 'Kimsa', 3),
(129, 'Tfboys', 3),
(130, 'Green', 1),
(131, 'Erik', 1);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id_country` int(11) NOT NULL,
  `countryname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id_country`, `countryname`) VALUES
(1, 'Viet Nam'),
(2, 'US-UK'),
(3, 'China'),
(4, 'Thailand'),
(5, 'Korean');

-- --------------------------------------------------------

--
-- Table structure for table `historyplays`
--

CREATE TABLE `historyplays` (
  `id` int(11) NOT NULL,
  `iuser` int(11) DEFAULT NULL,
  `music` int(11) DEFAULT NULL,
  `date_listen` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `historyplays`
--

INSERT INTO `historyplays` (`id`, `iuser`, `music`, `date_listen`) VALUES
(58, 2, 19, '2023-04-06');

-- --------------------------------------------------------

--
-- Table structure for table `music`
--

CREATE TABLE `music` (
  `id_music` int(11) NOT NULL,
  `poster` int(11) DEFAULT NULL,
  `singer_name` varchar(50) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `date_add` datetime(3) DEFAULT NULL,
  `duration` time(6) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `src` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `music`
--

INSERT INTO `music` (`id_music`, `poster`, `singer_name`, `name`, `date_add`, `duration`, `image`, `src`) VALUES
(2, 1, 'Green', 'Anh Đã Lạc Vào', '2023-04-06 10:42:26.000', '04:37:00.000000', '0.jpg', '0.mp3'),
(12, 1, 'Đinh Tùng Huy', 'Ai Chung Tình Được Mãi', '2023-04-06 10:46:10.000', '05:41:00.000000', '10.jpg', '10.mp3'),
(16, 5, 'Hương ly', 'Là Ai Từ Bỏ Là Ai Vô Tình', '2023-04-06 10:46:10.000', '04:57:00.000000', '14.jpg', '14.mp3'),
(17, 5, 'Ngô Lan Hương', 'Yêu đừng sợ đau', '2023-04-06 10:46:10.000', '03:53:00.000000', '15.jpg', '15.mp3'),
(18, 4, 'Mr.siro', 'Một Bước Yêu Vạn Dặm Đau', '2023-04-06 10:46:10.000', '02:22:00.000000', '16.jpg', '16.mp3'),
(19, 5, 'Hà Duy Thái', 'Quên Người Đã Quá Yêu', '2023-04-06 10:46:10.000', '04:24:00.000000', '17.jpg', '17.mp3'),
(3341, 1, 'Sơn Tùng', 'there\'s no one at all', '2023-04-14 00:00:00.000', '04:30:00.000000', '8.jpg', '9.mp3'),
(3342, 1, 'Sơn Tùng', 'đừng về trễ', '2023-04-21 00:00:00.000', '04:30:00.000000', '7.jpg', '7.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `musicalgenres`
--

CREATE TABLE `musicalgenres` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `musicalgenres`
--

INSERT INTO `musicalgenres` (`id`, `name`) VALUES
(1, 'EDM'),
(2, 'Trữ tình & Bolero'),
(3, 'Remix'),
(4, 'R&B'),
(5, 'Nhạc Phim'),
(6, 'Nhạc Không Lời'),
(7, 'Nhạc Việt Bất Hủ'),
(8, 'Jazz'),
(9, 'Indie'),
(10, 'Latin'),
(11, 'Acoustic'),
(12, 'Rock');

-- --------------------------------------------------------

--
-- Table structure for table `musiccards`
--

CREATE TABLE `musiccards` (
  `id` int(11) NOT NULL,
  `bg` text NOT NULL,
  `title` text NOT NULL,
  `des` text NOT NULL,
  `id_genre` int(11) NOT NULL,
  `des1` text NOT NULL,
  `des2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `musiccards`
--

INSERT INTO `musiccards` (`id`, `bg`, `title`, `des`, `id_genre`, `des1`, `des2`) VALUES
(2, 'edm.png', 'EDM Now', 'Alan Walker, ', 1, 'Lost Frequency, ', 'twocolors...'),
(3, 'edm_hits.png', 'Today\'s EDM Hits', 'Alan Walker, ', 1, 'Alesso, ', 'R3hab...'),
(4, 'dance_rewind.png', 'Dance Rewind', 'Avicii, ', 1, 'The Chainsmokers, ', 'Calvin Harris...'),
(5, 'acoustic_edm.png', 'Acoustic EDM', 'Rita Ora, ', 1, 'Hasley, ', 'Dermot Kennedy...'),
(6, 'bolero_hay.png', 'Bolero Hay Nhất', 'Phi Nhung, ', 2, 'Mạnh Quỳnh, ', 'Như Quỳnh...'),
(7, 'bolero_trutinh.png', 'Bolero Trữ Tình', 'Hồng Phượng, ', 2, 'Minh Luân, ', 'Khưu Huy Vũ...'),
(8, 'acoustic_edm.png', 'The Best Of Bolero', 'Chế Linh, ', 1, 'Sơn Tuyền, ', 'Giao Linh...'),
(9, 'nhac_que_huong.png', 'Nhạc Quê Hương', 'Tố My, ', 2, 'Khưu Huy Vũ, ', 'Lưu Ánh Loan...');

-- --------------------------------------------------------

--
-- Table structure for table `musiccategories`
--

CREATE TABLE `musiccategories` (
  `id` int(11) NOT NULL,
  `category` int(11) DEFAULT NULL,
  `music` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `musiccategories`
--

INSERT INTO `musiccategories` (`id`, `category`, `music`) VALUES
(186, 1, 16),
(187, 1, 17),
(188, 1, 18),
(189, 2, 19),
(190, 3, 20),
(191, 2, 21),
(192, 1, 22),
(194, 1, 24),
(195, 1, 25),
(196, 2, 26),
(197, 1, 27),
(198, 2, 28),
(199, 1, 29),
(200, 1, 30),
(201, 4, 31),
(202, 1, 32),
(203, 1, 33),
(204, 1, 34),
(205, 1, 35),
(206, 2, 36),
(208, 1, 38),
(209, 2, 39),
(210, 5, 40),
(211, 1, 41),
(212, 2, 42),
(213, 3, 43),
(214, 1, 44),
(216, 3, 46),
(217, 2, 47),
(218, 6, 48),
(219, 2, 49),
(220, 2, 50),
(221, 2, 51),
(222, 7, 52),
(223, 1, 53),
(224, 2, 54),
(225, 8, 55),
(226, 7, 56),
(227, 2, 57),
(228, 1, 58),
(229, 1, 59),
(230, 1, 60),
(231, 1, 61),
(232, 2, 62),
(233, 2, 63),
(234, 2, 64),
(235, 7, 65),
(236, 7, 66),
(237, 7, 67),
(238, 7, 68),
(239, 7, 69),
(240, 8, 70),
(241, 7, 71),
(242, 7, 72),
(243, 7, 73),
(244, 7, 74),
(245, 7, 75),
(246, 7, 76),
(247, 7, 77),
(249, 8, 79),
(250, 8, 80),
(251, 7, 81),
(252, 8, 82),
(253, 7, 83),
(254, 7, 84),
(255, 7, 85),
(256, 8, 86),
(257, 7, 87),
(258, 7, 88),
(259, 7, 89),
(260, 7, 90),
(261, 1, 91),
(262, 1, 92),
(263, 1, 93),
(264, 1, 94),
(265, 1, 95),
(266, 1, 96),
(267, 1, 97),
(268, 1, 98),
(269, 1, 99),
(270, 7, 100),
(271, 7, 101),
(272, 7, 102),
(273, 7, 103),
(274, 7, 104),
(275, 7, 105),
(276, 7, 106),
(277, 7, 107),
(278, 7, 108),
(279, 7, 109),
(280, 7, 110),
(281, 7, 111),
(282, 7, 112),
(283, 7, 113),
(284, 7, 114),
(285, 7, 115),
(286, 7, 116),
(287, 7, 117),
(288, 7, 118),
(289, 7, 119),
(290, 7, 120),
(291, 7, 121),
(292, 7, 122),
(293, 7, 123),
(294, 7, 124),
(295, 7, 125),
(296, 7, 126),
(297, 1, 127),
(298, 1, 128),
(299, 1, 129),
(300, 5, 130),
(301, 5, 131),
(302, 5, 132),
(303, 1, 133),
(304, 1, 134),
(305, 1, 135),
(306, 5, 136),
(307, 1, 137),
(308, 1, 138),
(309, 7, 139),
(310, 7, 140),
(311, 7, 141),
(312, 7, 142),
(313, 7, 143),
(314, 7, 144),
(315, 7, 145),
(316, 7, 146),
(317, 7, 147),
(318, 7, 148),
(319, 7, 149),
(320, 7, 150),
(321, 7, 151),
(322, 7, 152),
(323, 7, 153),
(324, 7, 154),
(325, 7, 155),
(326, 7, 156),
(327, 7, 157),
(328, 7, 158),
(329, 7, 159),
(330, 7, 160),
(331, 7, 161),
(332, 7, 162),
(333, 7, 163),
(334, 7, 164),
(335, 7, 165),
(336, 7, 166),
(337, 7, 167),
(338, 7, 168),
(339, 7, 169),
(340, 7, 170),
(341, 7, 171),
(342, 7, 172),
(343, 7, 173),
(344, 7, 174),
(345, 7, 175),
(346, 7, 176),
(347, 7, 177),
(348, 7, 178),
(349, 7, 179),
(350, 7, 180),
(351, 7, 181),
(352, 7, 182),
(353, 7, 183),
(354, 7, 184),
(355, 7, 185),
(356, 7, 186),
(357, 7, 187),
(358, 7, 188),
(359, 2, 189),
(360, 7, 190),
(361, 7, 191),
(362, 7, 192),
(363, 7, 193),
(364, 7, 194),
(365, 7, 195),
(366, 7, 196),
(370, 7, 200);

-- --------------------------------------------------------

--
-- Table structure for table `musiccomposers`
--

CREATE TABLE `musiccomposers` (
  `id` int(11) NOT NULL,
  `composer` int(11) DEFAULT NULL,
  `music` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `musiccomposers`
--

INSERT INTO `musiccomposers` (`id`, `composer`, `music`) VALUES
(562, 1, 12),
(563, 1, 16),
(564, 2, 17),
(565, 3, 18),
(566, 4, 19),
(569, 1, 12),
(570, 1, 16),
(571, 2, 17),
(572, 3, 18),
(573, 4, 19);

-- --------------------------------------------------------

--
-- Table structure for table `musicfavourites`
--

CREATE TABLE `musicfavourites` (
  `id_musicfavorite` int(11) NOT NULL,
  `iuser` int(11) DEFAULT NULL,
  `music` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `musicfavourites`
--

INSERT INTO `musicfavourites` (`id_musicfavorite`, `iuser`, `music`) VALUES
(51, 5, 17),
(59, 3, 17),
(85, 4, 17),
(95, 5, 18);

-- --------------------------------------------------------

--
-- Table structure for table `musicsinger`
--

CREATE TABLE `musicsinger` (
  `id_musicsinger` int(11) NOT NULL,
  `singer` int(11) DEFAULT NULL,
  `music` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `musicsinger`
--

INSERT INTO `musicsinger` (`id_musicsinger`, `singer`, `music`) VALUES
(217, 1, 16),
(218, 2, 17),
(219, 3, 18),
(220, 4, 19),
(221, 5, 20),
(222, 4, 21),
(223, 6, 22),
(224, 7, 23),
(225, 8, 24),
(226, 9, 25),
(227, 4, 26),
(228, 10, 27),
(229, 4, 28),
(230, 11, 29),
(231, 12, 30),
(232, 13, 31),
(233, 14, 32),
(234, 15, 33),
(235, 16, 34),
(236, 17, 35),
(237, 4, 36),
(238, 18, 37),
(239, 19, 38),
(240, 4, 39),
(241, 20, 40),
(242, 21, 41),
(243, 4, 42),
(244, 22, 43),
(245, 23, 44),
(246, 24, 45),
(247, 25, 46),
(248, 4, 47),
(249, 26, 48),
(250, 4, 49),
(251, 4, 50),
(252, 4, 51),
(253, 27, 52),
(254, 14, 53),
(255, 4, 54),
(256, 28, 55),
(257, 29, 56),
(258, 4, 57),
(259, 30, 58),
(260, 31, 59),
(261, 18, 60),
(262, 32, 61),
(263, 4, 62),
(264, 4, 63),
(265, 4, 64),
(266, 33, 65),
(267, 34, 66),
(268, 35, 67),
(269, 36, 68),
(270, 37, 69),
(271, 28, 70),
(272, 35, 71),
(273, 35, 72),
(274, 38, 73),
(275, 39, 74),
(276, 40, 75),
(277, 41, 76),
(278, 42, 77),
(279, 43, 78),
(280, 28, 79),
(281, 28, 80),
(282, 44, 81),
(283, 28, 82),
(284, 45, 83),
(285, 46, 84),
(286, 47, 85),
(287, 28, 86),
(288, 48, 87),
(289, 49, 88),
(290, 50, 89),
(291, 51, 90),
(292, 52, 91),
(293, 52, 92),
(294, 53, 93),
(295, 54, 94),
(296, 55, 95),
(297, 56, 96),
(298, 57, 97),
(299, 58, 98),
(300, 4, 99),
(301, 59, 100),
(302, 60, 101),
(303, 60, 102),
(304, 60, 103),
(305, 61, 104),
(306, 62, 105),
(307, 63, 105),
(308, 64, 106),
(309, 65, 107),
(310, 66, 107),
(311, 67, 107),
(312, 68, 107),
(313, 69, 108),
(314, 62, 109),
(315, 70, 109),
(316, 60, 110),
(317, 60, 111),
(318, 60, 112),
(319, 21, 113),
(320, 21, 114),
(321, 71, 115),
(322, 21, 116),
(323, 72, 117),
(324, 73, 118),
(325, 72, 119),
(326, 74, 120),
(327, 75, 121),
(328, 76, 121),
(329, 77, 122),
(330, 53, 123),
(331, 78, 124),
(332, 79, 125),
(333, 80, 126),
(334, 81, 127),
(335, 82, 127),
(336, 83, 127),
(337, 84, 128),
(338, 30, 129),
(339, 4, 130),
(340, 85, 131),
(341, 4, 132),
(342, 86, 133),
(343, 87, 134),
(344, 88, 135),
(345, 4, 136),
(346, 89, 137),
(347, 90, 138),
(348, 91, 139),
(349, 92, 140),
(350, 93, 141),
(351, 94, 142),
(352, 95, 142),
(353, 96, 142),
(354, 38, 143),
(355, 97, 144),
(356, 98, 145),
(357, 99, 146),
(358, 100, 147),
(359, 38, 148),
(360, 36, 149),
(361, 101, 150),
(362, 102, 150),
(363, 103, 151),
(364, 104, 151),
(365, 105, 152),
(366, 106, 153),
(367, 107, 154),
(368, 9, 155),
(369, 108, 156),
(370, 109, 157),
(371, 110, 158),
(372, 111, 159),
(373, 112, 160),
(374, 53, 160),
(375, 113, 161),
(376, 114, 162),
(377, 115, 162),
(378, 116, 163),
(379, 117, 164),
(380, 118, 164),
(381, 117, 165),
(382, 119, 165),
(383, 120, 166),
(384, 121, 166),
(385, 122, 166),
(386, 123, 166),
(387, 121, 167),
(388, 124, 167),
(389, 125, 168),
(390, 126, 169),
(391, 127, 169),
(392, 128, 170),
(393, 129, 171),
(394, 130, 172),
(395, 131, 173),
(396, 125, 174),
(397, 132, 175),
(398, 133, 176),
(399, 134, 177),
(400, 135, 178),
(401, 125, 178),
(402, 136, 179),
(403, 137, 180),
(404, 138, 181),
(405, 139, 182),
(406, 140, 183),
(407, 141, 184),
(408, 142, 185),
(409, 143, 186),
(410, 144, 186),
(411, 145, 187),
(412, 146, 188),
(413, 147, 189),
(414, 148, 189),
(415, 149, 190),
(416, 76, 190),
(417, 150, 191),
(418, 76, 191),
(419, 75, 192),
(420, 76, 192),
(421, 150, 193),
(422, 76, 193),
(423, 151, 194),
(424, 152, 195),
(425, 153, 195),
(426, 154, 196),
(427, 155, 197),
(428, 156, 197),
(429, 108, 198),
(430, 157, 199),
(431, 158, 200),
(432, 159, 200);

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id_list` int(11) NOT NULL,
  `iuser` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id_list`, `iuser`) VALUES
(11, 1),
(15, 1),
(19, 1),
(14, 2),
(20, 2),
(13, 3),
(12, 4),
(16, 5),
(17, 5),
(18, 5);

-- --------------------------------------------------------

--
-- Table structure for table `playlistdetail`
--

CREATE TABLE `playlistdetail` (
  `id` int(11) NOT NULL,
  `playlist` int(11) DEFAULT NULL,
  `music` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `singer`
--

CREATE TABLE `singer` (
  `id_singer` int(11) NOT NULL,
  `country` int(11) DEFAULT NULL,
  `name_singer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `singer`
--

INSERT INTO `singer` (`id_singer`, `country`, `name_singer`, `description`) VALUES
(1, 1, 'Hương Ly', NULL),
(2, 1, 'Hà Duy Thái', NULL),
(3, 1, 'Thái Học', NULL),
(4, 1, 'Null', NULL),
(5, 1, 'Orange', NULL),
(6, 1, 'Du Uyên', NULL),
(7, 1, 'Yan Nguyễn', NULL),
(8, 1, 'Diệu Kiên', NULL),
(9, 1, 'Tiên Cookie', NULL),
(10, 1, 'Trang Thiên', NULL),
(11, 1, 'H-Kray', NULL),
(12, 1, 'Huy Vạc', NULL),
(13, 1, 'Katy Trần', NULL),
(14, 1, 'Sơn Tùng Mtp', NULL),
(15, 1, 'Đoàn Thúy Trang', NULL),
(16, 1, 'Bích Phương', NULL),
(17, 1, 'Nguyễn Vĩ', NULL),
(18, 1, 'Gia Huy', NULL),
(19, 1, 'Nguyễn Zoe', NULL),
(20, 1, 'Lee Phú Quý', NULL),
(21, 1, 'Noo Phước Thịnh', NULL),
(22, 1, 'Trịnh Công Sơn', NULL),
(23, 1, 'Trịnh Thiên Ân', NULL),
(24, 1, 'Nguyễn Phúc Thiện', NULL),
(25, 1, 'Thúy Nga', NULL),
(26, 1, 'Yling', NULL),
(27, 5, 'T-Ara', NULL),
(28, 2, 'Alan Walker', NULL),
(29, 1, 'Rick Price', NULL),
(30, 1, 'Hoàng Thùy Linh', NULL),
(31, 1, 'Minh Vương M4U', NULL),
(32, 1, 'H2K', NULL),
(33, 2, 'Sezen Aksu', NULL),
(34, 2, 'Mariah Carey', NULL),
(35, 2, 'Charlie Puth', NULL),
(36, 2, 'Ed Sheeran', NULL),
(37, 2, 'Alec Benjamin', NULL),
(38, 2, 'Maroon 5', NULL),
(39, 2, 'Meghan Trainor', NULL),
(40, 2, 'Shawn Mendes', NULL),
(41, 2, 'Camila Cabello', NULL),
(42, 2, 'Justin Bieber', NULL),
(43, 2, 'Ellie Goulding', NULL),
(44, 2, 'Luis Fonsi', NULL),
(45, 2, 'Jaymes Young', NULL),
(46, 2, 'Pink Sweat', NULL),
(47, 2, 'Aaron Smith', NULL),
(48, 2, 'Shaun', NULL),
(49, 2, 'Mitchell Tenpenny', NULL),
(50, 2, 'Armnhrm', NULL),
(51, 2, 'Seven Lions', NULL),
(52, 1, 'Thanh Hưng', NULL),
(53, 1, 'Bùi Anh Tuấn', NULL),
(54, 1, 'Ngọc Quyền Sang', NULL),
(55, 1, 'Trà My Idol', NULL),
(56, 1, 'Lady Mây', NULL),
(57, 1, 'Cao Nam Thành', NULL),
(58, 1, 'Phùng Thanh Độ', NULL),
(59, 1, 'Czee', NULL),
(60, 1, 'Sơn Tùng M-Tp', NULL),
(61, 1, 'Rhymatic', NULL),
(62, 1, 'Huyr', NULL),
(63, 1, 'Tùng Viu', NULL),
(64, 1, 'Da Lab', NULL),
(65, 1, 'Masew', NULL),
(66, 1, 'Masiu', NULL),
(67, 1, 'B Ray', NULL),
(68, 1, 'Tap', NULL),
(69, 1, 'Hoà Minzy', NULL),
(70, 1, 'Độ Mixi', NULL),
(71, 1, 'Jack 97', NULL),
(72, 1, 'Hà Anh Tuấn', NULL),
(73, 1, 'Buitruonglinh', NULL),
(74, 1, 'Duy Tuyên', NULL),
(75, 1, 'Phúcxp', NULL),
(76, 1, 'Freakd', NULL),
(77, 1, 'Mỹ Tâm', NULL),
(78, 1, 'Hà Nhi', NULL),
(79, 1, 'Kym', NULL),
(80, 1, 'Cầm', NULL),
(81, 1, 'Umie', NULL),
(82, 1, 'Freaky', NULL),
(83, 1, 'Hổ', NULL),
(84, 1, 'Choco', NULL),
(85, 1, 'Phúc Du', NULL),
(86, 1, 'Hoàng Duyên', NULL),
(87, 1, 'Hứa Kim Tuyền', NULL),
(88, 1, 'Quanvro', NULL),
(89, 1, 'Min', NULL),
(90, 1, 'Bùi Trường Linh', NULL),
(91, 1, 'O.Lew', NULL),
(92, 1, 'Vũ', NULL),
(93, 1, 'Long Phạm', NULL),
(94, 1, 'Lã.', NULL),
(95, 1, 'Log', NULL),
(96, 2, 'Tib', NULL),
(97, 2, 'Kygo', NULL),
(98, 2, 'Dean Lewis', NULL),
(99, 2, 'Lauv', NULL),
(100, 2, 'Carys', NULL),
(101, 2, 'The Chainsmokers', NULL),
(102, 2, 'Haley', NULL),
(103, 2, 'Justine Skye', NULL),
(104, 2, 'Tyga', NULL),
(105, 2, 'Tone And I', NULL),
(106, 2, 'Air Supply', NULL),
(107, 1, 'Chi Dân', NULL),
(108, 1, 'Soobin Hoàng Sơn', NULL),
(109, 1, 'Only C Ft Lou Hoàng', NULL),
(110, 1, 'Doãn Hiếu', NULL),
(111, 1, 'Đức Phúc', NULL),
(112, 1, 'Hiền Hồ', NULL),
(113, 1, 'Nal', NULL),
(114, 1, 'Jin Tuấn Nam', NULL),
(115, 1, 'Võ Lê Mi', NULL),
(116, 1, 'Phát Hồ', NULL),
(117, 1, 'Kay Trần', NULL),
(118, 1, 'Nguyễn Khoa', NULL),
(119, 1, 'Binz', NULL),
(120, 1, 'Nguyễn Đình Vũ', NULL),
(121, 1, 'Tăng Phúc', NULL),
(122, 1, 'Yuno Bigboy', NULL),
(123, 1, 'Dino', NULL),
(124, 1, 'Thảo Nhi', NULL),
(125, 3, 'Uông Tô Lang', NULL),
(126, 3, 'Tôn Ngữ Trại', NULL),
(127, 3, 'Tiêu Doãn', NULL),
(128, 3, 'Kimsa', NULL),
(129, 3, 'Tfboys', NULL),
(130, 3, 'Bất Thị Hoa Hoả Nha', NULL),
(131, 3, 'Kim Chí Văn', NULL),
(132, 3, 'Dương Dương', NULL),
(133, 3, 'Hồ Ngạn Bân', NULL),
(134, 3, 'Tô Thi Đinh', NULL),
(135, 3, 'Địch Lệ Nhiệt Ba', NULL),
(136, 3, 'Lê Lâm Thiêm Kiều', NULL),
(137, 3, '喬凡三', NULL),
(138, 3, '星空秘语', NULL),
(139, 5, 'Black Pink', NULL),
(140, 5, 'Big Bang', NULL),
(141, 2, 'Davichi', NULL),
(142, 2, 'Gummy', NULL),
(143, 2, 'Walk Off The Earth', NULL),
(144, 2, 'Luminati Suns', NULL),
(145, 2, 'Rauf & Faik', NULL),
(146, 2, 'Sakarin', NULL),
(147, 1, 'Song Luân', NULL),
(148, 1, 'Curak', NULL),
(149, 1, 'Thành Đạt', NULL),
(150, 1, 'Andiez', NULL),
(151, 1, 'Lập Nguyên', NULL),
(152, 1, 'Nguyen', NULL),
(153, 1, 'Aric', NULL),
(154, 1, 'Quang Đăng Trần', NULL),
(155, 1, 'Emcee L', NULL),
(156, 1, 'Muội', NULL),
(157, 1, 'Green', NULL),
(158, 1, 'Y Ling', NULL),
(159, 1, 'Nguyễn Minh Phúc', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `top100card`
--

CREATE TABLE `top100card` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `bg` text NOT NULL,
  `des` text NOT NULL,
  `des1` text NOT NULL,
  `des2` text NOT NULL,
  `id_top100genre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `top100card`
--

INSERT INTO `top100card` (`id`, `title`, `bg`, `des`, `des1`, `des2`, `id_top100genre`) VALUES
(1, 'Top 100 Bài Hát Nhạc Trẻ Hay Nhất', 'top100_nhactre.png', 'MONO, ', 'Vương Anh Tú, ', 'Keyo...', 1),
(2, 'Top 100 Nhạc Pop Âu Mỹ Hay Nhất', 'top100_pop_au_my.png', 'Adele, ', 'Kid Laroi, ', 'Justin Bieber...', 1),
(3, 'Top 100 Nhạc Hàn Quốc Hay Nhất', 'top100_hq.png', 'TWICE, ', 'Big Bang, ', 'BTS...', 1),
(4, 'Top 100 Nhạc Rap Việt Nam hay nhất', 'top100_rap_viet.png', 'WEAN & NAOMI, ', 'HIEUTHUHAI, ', 'Phúc Du...', 1),
(5, 'Top 100 Nhạc Electronic/Dance Âu Mỹ Hay Nhất', 'top100_edm.png', 'Alan Walker, ', 'K-391, ', 'Emelie Hollow...', 1),
(6, 'Top 100 Nhạc EDM Việt Hay Nhấ', 'top100_edm_viet.png', 'Masew, ', 'Pháo, ', 'CM1X...', 1);

-- --------------------------------------------------------

--
-- Table structure for table `top100genres`
--

CREATE TABLE `top100genres` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `top100genres`
--

INSERT INTO `top100genres` (`id`, `name`) VALUES
(1, 'Nổi Bật'),
(2, 'Nhạc Việt Nam'),
(3, 'Nhạc Âu Mĩ'),
(4, 'Nhạc Hòa Tấu'),
(5, 'Nhạc Châu Á');

-- --------------------------------------------------------

--
-- Table structure for table `trangtheodois`
--

CREATE TABLE `trangtheodois` (
  `id` int(11) NOT NULL,
  `bg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trangtheodois`
--

INSERT INTO `trangtheodois` (`id`, `bg`) VALUES
(1, 'chi-dan.png'),
(2, 'duc-phuc.png'),
(3, 'erik.png'),
(4, 'hoa-minzy.png'),
(5, 'huong-ly.png'),
(6, 'jack.png'),
(7, 'justatee.png'),
(8, 'karik.png'),
(9, 'mr-siro.png'),
(13, 'onlyc.png'),
(14, 'trinh-thanh-binh.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `country` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `name`, `phone`, `email`, `password`, `country`) VALUES
(1, 'admin', '090909090', 'admin@gmail.com', 'asd123123', 1),
(2, 'user_1', '321', 'admin_1@gmail.com', 'asd123123', 1),
(3, 'userlocal2', '123', 'admin2@gmail.com', 'asd123123', 1),
(4, 'user_3', '123', 'admin3@gmail.com', '1', 1),
(5, 'userlocal_sua', '123213213123123123', 'user123@gmail.com', 'asd123123', 1),
(9, 'bui duc cuong', '0123012032', 'cuong2@gmail.com', 'asd123123', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_cate`);

--
-- Indexes for table `composer`
--
ALTER TABLE `composer`
  ADD PRIMARY KEY (`id_composer`),
  ADD KEY `country` (`country`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id_country`);

--
-- Indexes for table `historyplays`
--
ALTER TABLE `historyplays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iuser` (`iuser`),
  ADD KEY `music` (`music`);

--
-- Indexes for table `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`id_music`),
  ADD KEY `poster` (`poster`);

--
-- Indexes for table `musicalgenres`
--
ALTER TABLE `musicalgenres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `musiccards`
--
ALTER TABLE `musiccards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_genre_id` (`id_genre`);

--
-- Indexes for table `musiccategories`
--
ALTER TABLE `musiccategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`),
  ADD KEY `music` (`music`);

--
-- Indexes for table `musiccomposers`
--
ALTER TABLE `musiccomposers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `composer` (`composer`),
  ADD KEY `music` (`music`);

--
-- Indexes for table `musicfavourites`
--
ALTER TABLE `musicfavourites`
  ADD PRIMARY KEY (`id_musicfavorite`),
  ADD KEY `iuser` (`iuser`),
  ADD KEY `music` (`music`);

--
-- Indexes for table `musicsinger`
--
ALTER TABLE `musicsinger`
  ADD PRIMARY KEY (`id_musicsinger`),
  ADD KEY `singer` (`singer`),
  ADD KEY `music` (`music`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id_list`),
  ADD KEY `iuser` (`iuser`);

--
-- Indexes for table `playlistdetail`
--
ALTER TABLE `playlistdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist` (`playlist`),
  ADD KEY `music` (`music`);

--
-- Indexes for table `singer`
--
ALTER TABLE `singer`
  ADD PRIMARY KEY (`id_singer`),
  ADD KEY `country` (`country`);

--
-- Indexes for table `top100card`
--
ALTER TABLE `top100card`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_top100genre_id` (`id_top100genre`);

--
-- Indexes for table `top100genres`
--
ALTER TABLE `top100genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trangtheodois`
--
ALTER TABLE `trangtheodois`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `country` (`country`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_cate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `composer`
--
ALTER TABLE `composer`
  MODIFY `id_composer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id_country` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `historyplays`
--
ALTER TABLE `historyplays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `music`
--
ALTER TABLE `music`
  MODIFY `id_music` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3343;

--
-- AUTO_INCREMENT for table `musicalgenres`
--
ALTER TABLE `musicalgenres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `musiccards`
--
ALTER TABLE `musiccards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `musiccategories`
--
ALTER TABLE `musiccategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=371;

--
-- AUTO_INCREMENT for table `musiccomposers`
--
ALTER TABLE `musiccomposers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=576;

--
-- AUTO_INCREMENT for table `musicfavourites`
--
ALTER TABLE `musicfavourites`
  MODIFY `id_musicfavorite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `musicsinger`
--
ALTER TABLE `musicsinger`
  MODIFY `id_musicsinger` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=433;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id_list` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `playlistdetail`
--
ALTER TABLE `playlistdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `singer`
--
ALTER TABLE `singer`
  MODIFY `id_singer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `top100card`
--
ALTER TABLE `top100card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `top100genres`
--
ALTER TABLE `top100genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `trangtheodois`
--
ALTER TABLE `trangtheodois`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `composer`
--
ALTER TABLE `composer`
  ADD CONSTRAINT `composer_ibfk_1` FOREIGN KEY (`country`) REFERENCES `country` (`id_country`);

--
-- Constraints for table `historyplays`
--
ALTER TABLE `historyplays`
  ADD CONSTRAINT `historyplays_ibfk_1` FOREIGN KEY (`iuser`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `historyplays_ibfk_2` FOREIGN KEY (`music`) REFERENCES `music` (`id_music`);

--
-- Constraints for table `music`
--
ALTER TABLE `music`
  ADD CONSTRAINT `music_ibfk_1` FOREIGN KEY (`poster`) REFERENCES `users` (`id_user`);

--
-- Constraints for table `musiccards`
--
ALTER TABLE `musiccards`
  ADD CONSTRAINT `FK_genre_id` FOREIGN KEY (`id_genre`) REFERENCES `musicalgenres` (`id`);

--
-- Constraints for table `musiccategories`
--
ALTER TABLE `musiccategories`
  ADD CONSTRAINT `musiccategories_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`id_cate`);

--
-- Constraints for table `musiccomposers`
--
ALTER TABLE `musiccomposers`
  ADD CONSTRAINT `musiccomposers_ibfk_1` FOREIGN KEY (`composer`) REFERENCES `composer` (`id_composer`),
  ADD CONSTRAINT `musiccomposers_ibfk_2` FOREIGN KEY (`music`) REFERENCES `music` (`id_music`);

--
-- Constraints for table `musicfavourites`
--
ALTER TABLE `musicfavourites`
  ADD CONSTRAINT `musicfavourites_ibfk_1` FOREIGN KEY (`iuser`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `musicfavourites_ibfk_2` FOREIGN KEY (`music`) REFERENCES `music` (`id_music`);

--
-- Constraints for table `musicsinger`
--
ALTER TABLE `musicsinger`
  ADD CONSTRAINT `musicsinger_ibfk_1` FOREIGN KEY (`singer`) REFERENCES `singer` (`id_singer`);

--
-- Constraints for table `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`iuser`) REFERENCES `users` (`id_user`);

--
-- Constraints for table `playlistdetail`
--
ALTER TABLE `playlistdetail`
  ADD CONSTRAINT `playlistdetail_ibfk_1` FOREIGN KEY (`playlist`) REFERENCES `playlist` (`id_list`),
  ADD CONSTRAINT `playlistdetail_ibfk_2` FOREIGN KEY (`music`) REFERENCES `music` (`id_music`);

--
-- Constraints for table `singer`
--
ALTER TABLE `singer`
  ADD CONSTRAINT `singer_ibfk_1` FOREIGN KEY (`country`) REFERENCES `country` (`id_country`);

--
-- Constraints for table `top100card`
--
ALTER TABLE `top100card`
  ADD CONSTRAINT `FK_top100genre_id` FOREIGN KEY (`id_top100genre`) REFERENCES `top100genres` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`country`) REFERENCES `country` (`id_country`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
