-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:3306
-- 產生時間： 2019 年 03 月 24 日 18:34
-- 伺服器版本： 10.3.13-MariaDB
-- PHP 版本： 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `id8483798_i_culture`
--

-- --------------------------------------------------------

--
-- 資料表結構 `account`
--

CREATE TABLE `account` (
  `ID` int(11) NOT NULL,
  `Username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Password` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Headshot` varchar(9999) CHARACTER SET utf8 NOT NULL,
  `Usertype` varchar(3) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `account`
--

INSERT INTO `account` (`ID`, `Username`, `Password`, `Email`, `Headshot`, `Usertype`) VALUES
(1, 'Mark9090', '123456', 'l90906250@gmail.com', 'http://tcnr1091601.000webhostapp.com/I_culture/image/headshot/a01h01.jpg', 'n');

-- --------------------------------------------------------

--
-- 資料表結構 `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `create_time` datetime NOT NULL DEFAULT current_timestamp(),
  `last_login` datetime DEFAULT NULL,
  `type` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'a(最高權限) m(管理者) s(店家)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `create_time`, `last_login`, `type`) VALUES
(1, 'Mark', 'l90906250@test.com', '$2y$10$28GbFRfhPl3gdm1.48xt1.TaKTD9ry4ty3WaZk7B.TdXeUp4VNArW', '2019-03-14 00:00:00', '2019-03-25 01:58:33', 'a'),
(2, 'asdf', 'asdf@asdf.com', '$2y$10$Ig8od29qSjNertvb.ihFgeYmEPQGNgxjPluKvLaO9Q/.NysLH4BH6', '2019-03-14 00:00:00', NULL, 'm'),
(3, 'tester', 'asdfsadf@aaa.css', '$2y$10$Ig8od29qSjNertvb.ihFgeYmEPQGNgxjPluKvLaO9Q/.NysLH4BH6', '2019-03-21 00:00:00', NULL, 's');

-- --------------------------------------------------------

--
-- 資料表結構 `code`
--

CREATE TABLE `code` (
  `ID` int(11) NOT NULL,
  `Usertype` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '帳號類型',
  `Shoptype` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '商店類型',
  `Sex` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '性別'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `code`
--

INSERT INTO `code` (`ID`, `Usertype`, `Shoptype`, `Sex`) VALUES
(1, 's (shop)', 'f (food)', 'f (female)'),
(2, 'a (admin)', 'c (culture)', 'm (male)'),
(3, 'n (normaluser)', '', '');

-- --------------------------------------------------------

--
-- 資料表結構 `content`
--

CREATE TABLE `content` (
  `ID` int(3) NOT NULL,
  `Content_ID` int(2) NOT NULL,
  `Slider_Image` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Content_date` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Content_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Content_content` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '一個中文佔3個字節',
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '圖片來源'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- 傾印資料表的資料 `content`
--

INSERT INTO `content` (`ID`, `Content_ID`, `Slider_Image`, `Content_date`, `Content_title`, `Content_content`, `image_url`) VALUES
(1, 1, 'slider1_1.jpg', '2019.01.01~2019.02.02', '審計新村', '鄰近馬路卻獨出一格的審計新村，便是在這片將近半世紀歷史的老宿舍，審計新村是臺中市第三批臺灣省政府宿舍群之一，省府時期審計處的員工眷舍，凍省之後成了閒置空間荒廢多年，面積雖然只有0.52公頃，但所處地點就在臺中勤美綠園道附近，因此更是顯示出審計新村的獨特性，老舊的建築充滿了時代痕跡，如今經由政府再規劃，成功轉型為青年創業基地，透過青年活力與創造力，激盪出令人目不暇給的空間韻味與獨特氛圍。', 'https://tcnr1091601.000webhostapp.com//I_culture/image/image_event/m_slider1.jpg'),
(2, 1, 'slider1_2.jpg', '', '', '', 'https://tcnr1091601.000webhostapp.com//I_culture/image/image_event/m_slider2.jpg'),
(3, 1, 'slider1_3.jpg', '', '', '', 'https://tcnr1091601.000webhostapp.com//I_culture/image/image_event/m_slider3.jpg'),
(4, 1, 'slider1_4.jpg', '', '', '', 'https://tcnr1091601.000webhostapp.com//I_culture/image/image_event/m_slider4.jpg'),
(5, 1, 'slider1_5.jpg', '', '', '', 'https://tcnr1091601.000webhostapp.com//I_culture/image/image_event/m_slider5.jpg'),
(6, 2, 'slider2_1.jpg', '2019.01.01~2019.02.02', '旅禾泡芙之家', '店內除了主打泡芙產品外，大部份是丹麥可頌麵包。桌上的泡芙安全帽可供顧客戴上拍照，店內不僅有泡芙，還有各式麵包、蛋糕、手工餅乾禮盒。\r\n\r\n先是被草莓可頌給吸引，現場可頌口味還有黃金丹麥、起司、檸檬、楓糖、咖啡核桃。造型麵包有烏龜、黑貓(龍貓)、Mr.熊(拉拉熊)、鬆獅，每個麵包都有清楚標示食材、價格。\r\n\r\n有質感、可重覆使用的環保袋加購只要5元，很值得加購，帶出去用很美觀。', 'https://tcnr1091601.000webhostapp.com//I_culture/image/image_event/m_slider6.jpg'),
(7, 2, 'slider2_2.jpg', '', '', '', 'https://tcnr1091601.000webhostapp.com//I_culture/image/image_event/m_slider7.jpg'),
(8, 2, 'slider2_3.jpg', '', '', '', 'https://tcnr1091601.000webhostapp.com//I_culture/image/image_event/m_slider8.jpg'),
(9, 2, 'slider2_4.jpg', '', '', '', ''),
(10, 3, 'slider3_1.jpg', '2019.01.01~2019.02.02', '日至rizhi工作室', '金工藝術家廖建清長期以植物為創作靈感來源。在生活環境中尋找創作的元素，將那些被忽略的微小植物在收集觀察之後，以金工創作仿造植物結構的方式再現，並改變尺度創造出不同空間的感受，接著加入個人想像，結合金屬摺形技法(foldforming)創作不同單元件，透過不同的排列組合將重複性的單元構築出模擬的想像空間。首飾由不同植物為靈感，以手工鍛敲方式複製單元件，再一一構築成不同姿態的首飾系列。', ''),
(11, 3, 'slider3_2.jpg', '', '', '', ''),
(12, 3, 'slider3_3.jpg', '', '', '', ''),
(13, 3, 'slider3_4.jpg', '', '', '', ''),
(14, 3, 'slider3_5.jpg', '', '', '', ''),
(15, 4, 'slider4_1.jpg', '2019.01.01~2019.02.02', '森小姐的茶店', '品牌創辦人之一早期在國外進行推廣農產品的工作，走過異國大大小小城市，體驗過許多不同的文化故事，當我們更深入了解百年製茶工藝並且潛心學習時，我們開始思考賣茶這件事，不僅僅是茶與茶香的銷售過程，我們重新定義了茶品。從挑選最好的茶開始到送到每一個人手中的每個細節。充滿香氣的美味茶湯、可重複使用的包裝概念、賦予每款設計專屬心情、與台灣本土插畫家合作、能自由選擇搭配喜歡的故事與茶。所有的一切是為了分享一種生活的態度，其實每個人心中都有一個森小姐，那是對美好生活的一種方式而不是想像，所以我們開始了「森小姐的茶店」，把我們所知的美好送給進入森小姐世界的每個人。', ''),
(16, 4, 'slider4_2.jpg', '', '', '', ''),
(17, 4, 'slider4_3.jpg', '', '', '', ''),
(18, 4, 'slider4_4.jpg', '', '', '', ''),
(19, 4, 'slider4_5.jpg', '', '', '', ''),
(20, 5, 'slider5_1.jpg', '', '', '', ''),
(21, 5, 'slider5_2.jpg', '2019.01.01~2019.02.02', '艸水木堂', '主要是販售 panini sandwich.& Burger 套餐類型\r\n店內主題以旋轉木馬為概念\r\n點餐後可入內拍照等待餐點 \r\n因空間不大 所以會限制入店人數', ''),
(22, 5, 'slider5_3.jpg', '', '', '', ''),
(23, 5, 'slider5_4.jpg', '', '', '', ''),
(24, 5, 'slider5_5.jpg', '', '', '', ''),
(25, 6, 'slider6_1.jpg', '2019.01.01~2019.02.02', '暮暮市集找好物', '文創市集風潮正夯！每逢假日，台中的文創市集總是吸引滿滿人潮聚集，為了讓市集更日常，讓審計更具生活感，審計新村特別規劃在平日也舉辦常態性的市集，暮暮市集就這麼誕生了！\r\n\r\n　很多人會問，為什麼要把市集辦在平日？專員透露，起初是因為有來自服務業的朋友，在閒談時提及像是市集等週末的快閃活動，都因無法週休二日而無法參與，覺得相當可惜。\r\n\r\n　一句「市集應該是很平常的事情」，讓他萌生了一個想法，要讓市集在審計368新創聚落，成為民眾生活的一部份。\r\n\r\n　為了暮暮市集的舉辦，團隊也相當用心的佈置，讓夜間的審計更具有溫度。在充滿時代感的紅磚牆，加上文創大道上妝點的燈泡，審計368新創聚落除了白天的朝氣蓬勃，在夜晚也有豐富姿態。a', ''),
(26, 6, 'slider6_2.jpg', '', '', '', ''),
(27, 6, 'slider6_3.jpg', '', '', '', ''),
(28, 6, 'slider6_4.jpg', '', '', '', ''),
(29, 6, 'slider6_5.jpg', '', '', '', ''),
(34, 7, 'slider7_1.jpg', '2019.01.01~2019.02.02', '三時福利社', '開店至今仍堅持著一樣的味道，每位踏進店裡的客人，不論是想嘗試或是喜愛三時杏仁，我們都希望能把這古早味的傳統甜品分享給大家，也希望大家喜歡。\r\n如果你也跟我們一樣喜歡三時杏仁，能細心又有耐心的把認同的產品分享給客人，且認真負責、開朗、有活力，歡迎你/妳的加入，和我們一起揮灑歡樂與汗水 : )', ''),
(35, 7, 'slider7_2.jpg', '', '', '', ''),
(36, 7, 'slider7_3.jpg', '', '', '', ''),
(37, 7, 'slider7_4.jpg', '', '', '', ''),
(38, 7, 'slider7_5.jpg', '', '', '', ''),
(39, 8, 'slider8_1.jpg', '2019.01.01~2019.02.02', '甜月亮義大利手作冰淇淋', '眾多新口味及經典口味的配合～你還要待在家裡等著下大雨嗎？繽紛又天然的冰淇淋配色～令人直想按下快門 留下美麗的瞬間！還不快約三五好友一起來吃冰走走！', ''),
(40, 8, 'slider8_2.jpg', '', '', '', ''),
(41, 8, 'slider8_3.jpg', '', '', '', ''),
(42, 8, 'slider8_4.jpg', '', '', '', ''),
(43, 8, 'slider8_5.jpg', '', '', '', ''),
(44, 2, 'slider2_5.jpg', '', '', '', '');

-- --------------------------------------------------------

--
-- 資料表結構 `event`
--

CREATE TABLE `event` (
  `ID` int(3) NOT NULL,
  `Event_Image` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Event_Date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Date_start` date NOT NULL,
  `Date_end` date NOT NULL,
  `Event_Title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Event_Content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- 傾印資料表的資料 `event`
--

INSERT INTO `event` (`ID`, `Event_Image`, `Event_Date`, `Date_start`, `Date_end`, `Event_Title`, `image_url`, `Event_Content`) VALUES
(1, 'image01.jpg', '2019-03-01~2019-04-01', '2019-03-01', '2019-04-01', '審計新村', 'https://tcnr1091601.000webhostapp.com//I_culture/image/image_event/image01.jpg', '鄰近馬路卻獨出一格的審計新村，便是在這片將近半世紀歷史的老宿舍，審計新村是臺中市第三批臺灣省政府宿舍群之一。\r\n省府時期審計處的員工眷舍，凍省之後成了閒置空間荒廢多年，面積雖然只有0.52公頃，但所處地點就在臺中勤美綠園道附近，因此更是顯示出審計新村的獨特性，老舊的建築充滿了時代痕跡，如今經由政府再規劃，成功轉型為青年創業基地，透過青年活力與創造力，激盪出令人目不暇給的空間韻味與獨特氛圍。'),
(2, 'image02.jpg', '2019-06-01~2019-06-30', '2019-06-01', '2019-06-30', '旅禾泡芙之家', 'https://tcnr1091601.000webhostapp.com//I_culture/image/image_event/image02.jpg', '店內除了主打泡芙產品外，大部份是丹麥可頌麵包。桌上的泡芙安全帽可供顧客戴上拍照，店內不僅有泡芙，還有各式麵包、蛋糕、手工餅乾禮盒。\r\n\r\n有質感、可重覆使用的環保袋加購只要5元，很值得加購，帶出去用很美觀。'),
(3, 'image03.jpg', '2019-01-01~2019-01-15', '2019-01-01', '2019-01-15', '日至rizhi工作室', 'https://tcnr1091601.000webhostapp.com//I_culture/image/image_event/image03.jpg', '金工藝術家廖建清長期以植物為創作靈感來源。在生活環境中尋找創作的元素，將那些被忽略的微小植物在收集觀察之後，以金工創作仿造植物結構的方式再現，並改變尺度創造出不同空間的感受。\r\n\r\n透過不同的排列組合將重複性的單元構築出模擬的想像空間。首飾由不同植物為靈感，以手工鍛敲方式複製單元件，再一一構築成不同姿態的首飾系列。'),
(4, 'image04.jpg', '2019-12-01~2019-12-31', '2019-12-01', '2019-12-31', '森小姐的茶店', 'https://tcnr1091601.000webhostapp.com//I_culture/image/image_event/image04.jpg', '品牌創辦人之一早期在國外進行推廣農產品的工作，走過異國大大小小城市，體驗過許多不同的文化故事，當我們更深入了解百年製茶工藝並且潛心學習時，我們開始思考賣茶這件事，不僅僅是茶與茶香的銷售過程，我們重新定義了茶品。從挑選最好的茶開始到送到每一個人手中的每個細節。\r\n\r\n充滿香氣的美味茶湯、可重複使用的包裝概念、賦予每款設計專屬心情、與台灣本土插畫家合作、能自由選擇搭配喜歡的故事與茶。所有的一切是為了分享一種生活的態度，其實每個人心中都有一個森小姐，那是對美好生活的一種方式而不是想像，所以我們開始了「森小姐的茶店」，把我們所知的美好送給進入森小姐世界的每個人。'),
(5, 'image05.jpg', '2019-02-01~2019-02-14', '2019-02-01', '2019-02-14', '艸水木堂', 'https://tcnr1091601.000webhostapp.com//I_culture/image/image_event/image05.jpg', '主要是販售 panini sandwich.& Burger 套餐類型，店內主題以旋轉木馬為概念。\r\n\r\n點餐後可入內拍照等待餐點,因空間不大 所以會限制入店人數。'),
(6, 'image06.jpg', '2019-04-18~2019-04-18', '2019-04-18', '2019-04-18', '暮暮市集找好物', 'https://tcnr1091601.000webhostapp.com//I_culture/image/image_event/image06.jpg', '文創市集風潮正夯！每逢假日，台中的文創市集總是吸引滿滿人潮聚集，為了讓市集更日常，讓審計更具生活感，審計新村特別規劃在平日也舉辦常態性的市集，暮暮市集就這麼誕生了！\r\n\r\n　很多人會問，為什麼要把市集辦在平日？專員透露，起初是因為有來自服務業的朋友，在閒談時提及像是市集等週末的快閃活動，都因無法週休二日而無法參與，覺得相當可惜。\r\n\r\n　一句「市集應該是很平常的事情」，讓他萌生了一個想法，要讓市集在審計368新創聚落，成為民眾生活的一部份。\r\n'),
(7, 'image07.jpg', '2019-10-01~2019-10-10', '2019-10-01', '2019-10-10', '三時福利社', 'https://tcnr1091601.000webhostapp.com//I_culture/image/image_event/image07.jpg', '開店至今仍堅持著一樣的味道，每位踏進店裡的客人，不論是想嘗試或是喜愛三時杏仁，我們都希望能把這古早味的傳統甜品分享給大家，也希望大家喜歡。\r\n\r\n如果你也跟我們一樣喜歡三時杏仁，能細心又有耐心的把認同的產品分享給客人，且認真負責、開朗、有活力，歡迎你/妳的加入，和我們一起揮灑歡樂與汗水 : )');

-- --------------------------------------------------------

--
-- 資料表結構 `member_test`
--

CREATE TABLE `member_test` (
  `id` int(11) NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 NOT NULL,
  `usertype` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT 'n' COMMENT 'n(normaluser) a(admin)',
  `email` text CHARACTER SET utf8 NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `member_test`
--

INSERT INTO `member_test` (`id`, `username`, `password`, `usertype`, `email`, `create_time`) VALUES
(17, '123456a', '1234567890a', 'n', '516516151dfasaaaa', '2019-02-23 15:30:09'),
(44, '00000000', '123456789', 'n', '0000000000000000000', '2019-02-23 16:24:21'),
(16, 'owner2002', '1234567890', 'n', '11111111111111111111', '2019-02-23 14:41:05'),
(21, 'wwwww', 'wwwwwwwwww', 'n', 'wwwwwwwwww', '2019-02-23 16:02:38'),
(22, 'sam960505', '0123456789', 'n', '1234567890', '2019-02-23 16:02:39'),
(23, 'ElvisChiu', 'qwerty', 'a', '123456789@gmail.com', '2019-02-23 16:02:41'),
(24, 'qwertyu', '1234567891', 'n', 'asd@gmail.com', '2019-02-23 16:02:41'),
(25, 'owner01', '1234567890', 'n', 'aaa2019@gmail.com', '2019-02-23 16:02:41'),
(26, 'dian00', '1234567890', 'n', 'a@test.com', '2019-02-23 16:02:45'),
(27, '1234567899', '1234567899', 'n', 'qwerty@gmail.com', '2019-02-23 16:02:54'),
(28, 'n877313', 'm781394222', 'n', 'boostrap@gmail.com', '2019-02-23 16:02:54'),
(29, 'sssss', 'ssssssssss', 'n', 'ssssssssss', '2019-02-23 16:03:00'),
(31, 'qazwsx', '1234567890', 'n', 'abc@cba.com', '2019-02-23 16:03:10'),
(33, 'rrrrrrrrrr', 'rrrrrrrrrr', 'n', 'rrrrrrrrrr@gmail.com', '2019-02-23 16:03:33'),
(35, 'james01', '1234567890', 'a', 'james@gmail.com', '2019-02-23 16:03:53'),
(36, 'qqqqq', '1234567890', 'n', 'qqqqqqqqqqqqqqqqqqqqqq', '2019-02-23 16:04:24'),
(38, '987654321', '1234567899', 'n', ' dfbgbasgag', '2019-02-23 16:05:20'),
(39, 'qwertyui', '1234567891', 'n', '1234@gmail.com', '2019-02-23 16:05:21'),
(45, '12345', '1234567890', 'n', '45645645@gmail.com', '2019-02-26 08:24:08'),
(43, 'admin', '1234567890', 'a', '111111111111111122222222222222', '2019-02-23 16:20:33'),
(48, 'abcdefg', 'asdfasdfasdfzxcv', 'n', 'asdfasdfasdfzxcv', '2019-02-26 07:17:14'),
(47, 'Admin', 'asdfasdfasdf', 'n', 'asdfasdfasdf', '2019-02-26 11:41:44');

-- --------------------------------------------------------

--
-- 資料表結構 `shop`
--

CREATE TABLE `shop` (
  `Shop_ID` int(11) NOT NULL,
  `Kind` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Introduce` varchar(50) NOT NULL,
  `Image` varchar(20) NOT NULL,
  `URL` varchar(90) NOT NULL,
  `Tel` varchar(15) NOT NULL,
  `Addr` varchar(100) NOT NULL,
  `Deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0(未被排除) 1(已排除)'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `shop`
--

INSERT INTO `shop` (`Shop_ID`, `Kind`, `Name`, `Introduce`, `Image`, `URL`, `Tel`, `Addr`, `Deleted`) VALUES
(1, 'f', '旅禾泡芙之家', '泡芙之家給你戀愛中的口感，讓你徜徉在甜蜜美味的世界裡', 'shop01.jpg', 'https://tcnr1621.000webhostapp.com/I_culture/shop/image/p1.jpg', '', '', 0),
(2, 'f', '成真咖啡 Come True', '成真咖啡不只有咖啡，還有沙拉，輕食和甜點，還有熱門的舒芙蕾鬆餅', 'shop02.jpg', 'https://tcnr1621.000webhostapp.com/I_culture/shop/image/p1.jpg', '', '', 0),
(3, 'f', 'AirMilk', '一台超酷炫的牛奶快餐車', 'shop03.jpg', 'https://tcnr1621.000webhostapp.com/I_culture/shop/image/p1.jpg', '', '', 0),
(4, 'f', '序曲Overture', '北屯的人氣老宅甜點店序曲', 'shop04.jpg', 'https://tcnr1621.000webhostapp.com/I_culture/shop/image/p1.jpg', '', '', 0),
(5, 'f', '三時福利社', '三時福利社也推出了季節限定的外帶式杏仁豆腐冰！', 'shop05.jpg', 'https://tcnr1621.000webhostapp.com/I_culture/shop/image/p1.jpg', '', '', 0),
(6, 'f', '時沐 Smooth Eatery', '時沐位在之前的給孤獨著書店旁', 'shop06.jpg', 'https://tcnr1621.000webhostapp.com/I_culture/shop/image/p1.jpg', '', '', 0),
(7, 'c', '靜覓時光', '是一間文具店，有很多鋼筆、筆記本。', 'shop07.jpg', 'https://tcnr1621.000webhostapp.com/I_culture/shop/image/p1.jpg', '', '', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `shop_message`
--

CREATE TABLE `shop_message` (
  `Shop_ID` int(11) NOT NULL,
  `Messahe_date` varchar(20) NOT NULL,
  `Message_time` varchar(30) NOT NULL,
  `User_account` varchar(20) NOT NULL,
  `User_name` varchar(15) NOT NULL,
  `Message` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `shop_message`
--

INSERT INTO `shop_message` (`Shop_ID`, `Messahe_date`, `Message_time`, `User_account`, `User_name`, `Message`) VALUES
(1, '20190124', '23:45:18', 'sars55688', '張阿硯', '泡芙好好吃!'),
(2, '20190125', '09:34:15', 's28225252', '王披薩', '咖啡好好喝,氣氛很棒,下次還想再來!'),
(1, '20190124', '23:49:35', 'a28225252', '林美國', '這泡芙，堪比法國米淇林'),
(3, '20190125', '15:45:32', 'g1995995', '廖添丁', '給我來杯好喝的牛奶吧!');

-- --------------------------------------------------------

--
-- 資料表結構 `shop_product`
--

CREATE TABLE `shop_product` (
  `Shop_ID` int(10) NOT NULL,
  `Product_ID` varchar(10) NOT NULL,
  `Product_image` varchar(20) NOT NULL,
  `Product_name` varchar(20) NOT NULL,
  `Product_msg` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `shop_product`
--

INSERT INTO `shop_product` (`Shop_ID`, `Product_ID`, `Product_image`, `Product_name`, `Product_msg`) VALUES
(1, 's1p01', 's1p01.jpg', '牛奶泡芙', '牛奶內餡的泡芙'),
(1, 's1p02', 's1p02.jpg', '巧克力泡芙', '巧克力內餡的泡芙'),
(1, 's1p03', 's1p03.jpg', '法國長棍麵包', '口感紮實的法國長棍麵包');

-- --------------------------------------------------------

--
-- 資料表結構 `test`
--

CREATE TABLE `test` (
  `ID` int(11) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `imgURL` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `test`
--

INSERT INTO `test` (`ID`, `name`, `imgURL`) VALUES
(1, 'aaa', 'https://tcnr1091601.000webhostapp.com/I_culture/image/headshot/a01h01.jpg'),
(2, 'bbb', 'https://tcnr1091601.000webhostapp.com/I_culture/image/headshot/a02h01.jpg'),
(3, 'ccc', 'https://tcnr1091601.000webhostapp.com/I_culture/image/headshot/a03h01.jpg'),
(4, 'ddd', 'https://tcnr1091601.000webhostapp.com/I_culture/image/headshot/a04h01.jpg'),
(5, 'eee', 'https://tcnr1091601.000webhostapp.com/I_culture/image/headshot/a05h01.jpg');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- 資料表索引 `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `code`
--
ALTER TABLE `code`
  ADD PRIMARY KEY (`ID`);

--
-- 資料表索引 `member_test`
--
ALTER TABLE `member_test`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`Shop_ID`);

--
-- 資料表索引 `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`ID`);

--
-- 在傾印的資料表使用自動增長(AUTO_INCREMENT)
--

--
-- 使用資料表自動增長(AUTO_INCREMENT) `account`
--
ALTER TABLE `account`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `code`
--
ALTER TABLE `code`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `member_test`
--
ALTER TABLE `member_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `test`
--
ALTER TABLE `test`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
