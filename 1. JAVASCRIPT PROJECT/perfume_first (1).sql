-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2021 at 06:20 AM
-- Server version: 5.5.62
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perfume_first`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `contact` int(11) NOT NULL,
  `profile` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`, `gender`, `contact`, `profile`, `status`) VALUES
(12, 'Hardik patel', 'hardikpatel@gmail.com', 'vperfume@2020', 'male', 0, '17009.jpg', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `name`, `image`, `status`) VALUES
(9, 's,cbskc', '18211ffdbb85a039a5c3ac2ad6092a4a.jpg', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `cart_total` varchar(255) NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL,
  `image` varchar(255) NOT NULL,
  `txn_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `order_id`, `product_id`, `name`, `quantity`, `price`, `total_amount`, `cart_total`, `ip`, `status`, `image`, `txn_id`) VALUES
(124, 88, 82, 73, 'ROSE', '3', 160, 480, '', '::1', 'active', 'mahadev.jpg', ''),
(126, 89, NULL, 78, 'asjx', '1', 2, 2, '0', '::1', 'active', 'image1.jpg', NULL),
(128, 89, 84, 73, 'ROSE', '1', 160, 160, '0', '::1', 'active', 'image1.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `name`, `image`, `status`) VALUES
(6, 'AIR FRESHNER', '18211ffdbb85a039a5c3ac2ad6092a4a.jpg', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `state_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `city_name`, `state_id`) VALUES
(1, 'Kolhapur', 4),
(2, 'Port Blair', 5),
(3, 'Adilabad', 6),
(4, 'Adoni', 6),
(5, 'Amadalavalasa', 6),
(6, 'Amalapuram', 6),
(7, 'Anakapalle', 6),
(8, 'Anantapur', 6),
(9, 'Badepalle', 6),
(10, 'Banganapalle', 6),
(11, 'Bapatla', 6),
(12, 'Bellampalle', 6),
(13, 'Bethamcherla', 6),
(14, 'Bhadrachalam', 6),
(15, 'Bhainsa', 6),
(16, 'Bheemunipatnam', 6),
(17, 'Bhimavaram', 6),
(18, 'Bhongir', 6),
(19, 'Bobbili', 6),
(20, 'Bodhan', 6),
(21, 'Chilakaluripet', 6),
(22, 'Chirala', 6),
(23, 'Chittoor', 6),
(24, 'Cuddapah', 6),
(25, 'Devarakonda', 6),
(26, 'Dharmavaram', 6),
(27, 'Eluru', 6),
(28, 'Farooqnagar', 6),
(29, 'Gadwal', 6),
(30, 'Gooty', 6),
(31, 'Gudivada', 6),
(32, 'Gudur', 6),
(33, 'Guntakal', 6),
(34, 'Guntur', 6),
(35, 'Hanuman Junction', 6),
(36, 'Hindupur', 6),
(37, 'Hyderabad', 6),
(38, 'Ichchapuram', 6),
(39, 'Jaggaiahpet', 6),
(40, 'Jagtial', 6),
(41, 'Jammalamadugu', 6),
(42, 'Jangaon', 6),
(43, 'Kadapa', 6),
(44, 'Kadiri', 6),
(45, 'Kagaznagar', 6),
(46, 'Kakinada', 6),
(47, 'Kalyandurg', 6),
(48, 'Kamareddy', 6),
(49, 'Kandukur', 6),
(50, 'Karimnagar', 6),
(51, 'Kavali', 6),
(52, 'Khammam', 6),
(53, 'Koratla', 6),
(54, 'Kothagudem', 6),
(55, 'Kothapeta', 6),
(56, 'Kovvur', 6),
(57, 'Kurnool', 6),
(58, 'Kyathampalle', 6),
(59, 'Macherla', 6),
(60, 'Machilipatnam', 6),
(61, 'Madanapalle', 6),
(62, 'Mahbubnagar', 6),
(63, 'Mancherial', 6),
(64, 'Mandamarri', 6),
(65, 'Mandapeta', 6),
(66, 'Manuguru', 6),
(67, 'Markapur', 6),
(68, 'Medak', 6),
(69, 'Miryalaguda', 6),
(70, 'Mogalthur', 6),
(71, 'Nagari', 6),
(72, 'Nagarkurnool', 6),
(73, 'Nandyal', 6),
(74, 'Narasapur', 6),
(75, 'Narasaraopet', 6),
(76, 'Narayanpet', 6),
(77, 'Narsipatnam', 6),
(78, 'Nellore', 6),
(79, 'Nidadavole', 6),
(80, 'Nirmal', 6),
(81, 'Nizamabad', 6),
(82, 'Nuzvid', 6),
(83, 'Ongole', 6),
(84, 'Palacole', 6),
(85, 'Palasa Kasibugga', 6),
(86, 'Palwancha', 6),
(87, 'Parvathipuram', 6),
(88, 'Pedana', 6),
(89, 'Peddapuram', 6),
(90, 'Pithapuram', 6),
(91, 'Pondur', 6),
(92, 'Ponnur', 6),
(93, 'Proddatur', 6),
(94, 'Punganur', 6),
(95, 'Puttur', 6),
(96, 'Rajahmundry', 6),
(97, 'Rajam', 6),
(98, 'Ramachandrapuram', 6),
(99, 'Ramagundam', 6),
(100, 'Rayachoti', 6),
(101, 'Rayadurg', 6),
(102, 'Renigunta', 6),
(103, 'Repalle', 6),
(104, 'Sadasivpet', 6),
(105, 'Salur', 6),
(106, 'Samalkot', 6),
(107, 'Sangareddy', 6),
(108, 'Sattenapalle', 6),
(109, 'Siddipet', 6),
(110, 'Singapur', 6),
(111, 'Sircilla', 6),
(112, 'Srikakulam', 6),
(113, 'Srikalahasti', 6),
(115, 'Suryapet', 6),
(116, 'Tadepalligudem', 6),
(117, 'Tadpatri', 6),
(118, 'Tandur', 6),
(119, 'Tanuku', 6),
(120, 'Tenali', 6),
(121, 'Tirupati', 6),
(122, 'Tuni', 6),
(123, 'Uravakonda', 6),
(124, 'Venkatagiri', 6),
(125, 'Vicarabad', 6),
(126, 'Vijayawada', 6),
(127, 'Vinukonda', 6),
(128, 'Visakhapatnam', 6),
(129, 'Vizianagaram', 6),
(130, 'Wanaparthy', 6),
(131, 'Warangal', 6),
(132, 'Yellandu', 6),
(133, 'Yemmiganur', 6),
(134, 'Yerraguntla', 6),
(135, 'Zahirabad', 6),
(136, 'Rajampet', 6),
(137, 'Along', 7),
(138, 'Bomdila', 7),
(139, 'Itanagar', 7),
(140, 'Naharlagun', 7),
(141, 'Pasighat', 7),
(142, 'Abhayapuri', 8),
(143, 'Amguri', 8),
(144, 'Anandnagaar', 8),
(145, 'Barpeta', 8),
(146, 'Barpeta Road', 8),
(147, 'Bilasipara', 8),
(148, 'Bongaigaon', 8),
(149, 'Dhekiajuli', 8),
(150, 'Dhubri', 8),
(151, 'Dibrugarh', 8),
(152, 'Digboi', 8),
(153, 'Diphu', 8),
(154, 'Dispur', 8),
(156, 'Gauripur', 8),
(157, 'Goalpara', 8),
(158, 'Golaghat', 8),
(159, 'Guwahati', 8),
(160, 'Haflong', 8),
(161, 'Hailakandi', 8),
(162, 'Hojai', 8),
(163, 'Jorhat', 8),
(164, 'Karimganj', 8),
(165, 'Kokrajhar', 8),
(166, 'Lanka', 8),
(167, 'Lumding', 8),
(168, 'Mangaldoi', 8),
(169, 'Mankachar', 8),
(170, 'Margherita', 8),
(171, 'Mariani', 8),
(172, 'Marigaon', 8),
(173, 'Nagaon', 8),
(174, 'Nalbari', 8),
(175, 'North Lakhimpur', 8),
(176, 'Rangia', 8),
(177, 'Sibsagar', 8),
(178, 'Silapathar', 8),
(179, 'Silchar', 8),
(180, 'Tezpur', 8),
(181, 'Tinsukia', 8),
(182, 'Amarpur', 9),
(183, 'Araria', 9),
(184, 'Areraj', 9),
(185, 'Arrah', 9),
(186, 'Asarganj', 9),
(187, 'Aurangabad', 9),
(188, 'Bagaha', 9),
(189, 'Bahadurganj', 9),
(190, 'Bairgania', 9),
(191, 'Bakhtiarpur', 9),
(192, 'Banka', 9),
(193, 'Banmankhi Bazar', 9),
(194, 'Barahiya', 9),
(195, 'Barauli', 9),
(196, 'Barbigha', 9),
(197, 'Barh', 9),
(198, 'Begusarai', 9),
(199, 'Behea', 9),
(200, 'Bettiah', 9),
(201, 'Bhabua', 9),
(202, 'Bhagalpur', 9),
(203, 'Bihar Sharif', 9),
(204, 'Bikramganj', 9),
(205, 'Bodh Gaya', 9),
(206, 'Buxar', 9),
(207, 'Chandan Bara', 9),
(208, 'Chanpatia', 9),
(209, 'Chhapra', 9),
(210, 'Colgong', 9),
(211, 'Dalsinghsarai', 9),
(212, 'Darbhanga', 9),
(213, 'Daudnagar', 9),
(214, 'Dehri-on-Sone', 9),
(215, 'Dhaka', 9),
(216, 'Dighwara', 9),
(217, 'Dumraon', 9),
(218, 'Fatwah', 9),
(219, 'Forbesganj', 9),
(220, 'Gaya', 9),
(221, 'Gogri Jamalpur', 9),
(222, 'Gopalganj', 9),
(223, 'Hajipur', 9),
(224, 'Hilsa', 9),
(225, 'Hisua', 9),
(226, 'Islampur', 9),
(227, 'Jagdispur', 9),
(228, 'Jamalpur', 9),
(229, 'Jamui', 9),
(230, 'Jehanabad', 9),
(231, 'Jhajha', 9),
(232, 'Jhanjharpur', 9),
(233, 'Jogabani', 9),
(234, 'Kanti', 9),
(235, 'Katihar', 9),
(236, 'Khagaria', 9),
(237, 'Kharagpur', 9),
(238, 'Kishanganj', 9),
(239, 'Lakhisarai', 9),
(240, 'Lalganj', 9),
(241, 'Madhepura', 9),
(242, 'Madhubani', 9),
(243, 'Maharajganj', 9),
(244, 'Mahnar Bazar', 9),
(245, 'Makhdumpur', 9),
(246, 'Maner', 9),
(247, 'Manihari', 9),
(248, 'Marhaura', 9),
(249, 'Masaurhi', 9),
(250, 'Mirganj', 9),
(251, 'Mokameh', 9),
(252, 'Motihari', 9),
(253, 'Motipur', 9),
(254, 'Munger', 9),
(255, 'Murliganj', 9),
(256, 'Muzaffarpur', 9),
(257, 'Narkatiaganj', 9),
(258, 'Naugachhia', 9),
(259, 'Nawada', 9),
(260, 'Nokha', 9),
(261, 'Patna', 9),
(262, 'Piro', 9),
(263, 'Purnia', 9),
(264, 'Rafiganj', 9),
(265, 'Rajgir', 9),
(266, 'Ramnagar', 9),
(267, 'Raxaul Bazar', 9),
(268, 'Revelganj', 9),
(269, 'Rosera', 9),
(270, 'Saharsa', 9),
(271, 'Samastipur', 9),
(272, 'Sasaram', 9),
(273, 'Sheikhpura', 9),
(274, 'Sheohar', 9),
(275, 'Sherghati', 9),
(276, 'Silao', 9),
(277, 'Sitamarhi', 9),
(278, 'Siwan', 9),
(279, 'Sonepur', 9),
(280, 'Sugauli', 9),
(281, 'Sultanganj', 9),
(282, 'Supaul', 9),
(283, 'Warisaliganj', 9),
(284, 'Ahiwara', 10),
(285, 'Akaltara', 10),
(286, 'Ambagarh Chowki', 10),
(287, 'Ambikapur', 10),
(288, 'Arang', 10),
(289, 'Bade Bacheli', 10),
(290, 'Balod', 10),
(291, 'Baloda Bazar', 10),
(292, 'Bemetra', 10),
(293, 'Bhatapara', 10),
(294, 'Bilaspur', 10),
(295, 'Birgaon', 10),
(296, 'Champa', 10),
(297, 'Chirmiri', 10),
(298, 'Dalli-Rajhara', 10),
(299, 'Dhamtari', 10),
(300, 'Dipka', 10),
(301, 'Dongargarh', 10),
(302, 'Durg-Bhilai Nagar', 10),
(303, 'Gobranawapara', 10),
(304, 'Jagdalpur', 10),
(305, 'Janjgir', 10),
(306, 'Jashpurnagar', 10),
(307, 'Kanker', 10),
(308, 'Kawardha', 10),
(309, 'Kondagaon', 10),
(310, 'Korba', 10),
(311, 'Mahasamund', 10),
(312, 'Mahendragarh', 10),
(313, 'Mungeli', 10),
(314, 'Naila Janjgir', 10),
(315, 'Raigarh', 10),
(316, 'Raipur', 10),
(317, 'Rajnandgaon', 10),
(318, 'Sakti', 10),
(319, 'Tilda Newra', 10),
(320, 'Amli', 11),
(321, 'Silvassa', 11),
(322, 'Daman and Diu', 12),
(323, 'Daman and Diu', 12),
(324, 'Asola', 13),
(325, 'Delhi', 13),
(326, 'Aldona', 14),
(327, 'Curchorem Cacora', 14),
(328, 'Madgaon', 14),
(329, 'Mapusa', 14),
(330, 'Margao', 14),
(331, 'Marmagao', 14),
(332, 'Panaji', 14),
(333, 'Ahmedabad', 15),
(334, 'Amreli', 15),
(335, 'Anand', 15),
(336, 'Ankleshwar', 15),
(337, 'Bharuch', 15),
(338, 'Bhavnagar', 15),
(339, 'Bhuj', 15),
(340, 'Cambay', 15),
(341, 'Dahod', 15),
(342, 'Deesa', 15),
(343, 'Dharampur', 16),
(344, 'Dholka', 15),
(345, 'Gandhinagar', 15),
(346, 'Godhra', 15),
(347, 'Himatnagar', 15),
(348, 'Idar', 15),
(349, 'Jamnagar', 15),
(350, 'Junagadh', 15),
(351, 'Kadi', 15),
(352, 'Kalavad', 15),
(353, 'Kalol', 15),
(354, 'Kapadvanj', 15),
(355, 'Karjan', 15),
(356, 'Keshod', 15),
(357, 'Khambhalia', 15),
(358, 'Khambhat', 15),
(359, 'Kheda', 15),
(360, 'Khedbrahma', 15),
(361, 'Kheralu', 15),
(362, 'Kodinar', 15),
(363, 'Lathi', 15),
(364, 'Limbdi', 15),
(365, 'Lunawada', 15),
(366, 'Mahesana', 15),
(367, 'Mahuva', 15),
(368, 'Manavadar', 15),
(369, 'Mandvi', 15),
(370, 'Mangrol', 15),
(371, 'Mansa', 15),
(372, 'Mehmedabad', 15),
(373, 'Modasa', 15),
(374, 'Morvi', 15),
(375, 'Nadiad', 15),
(376, 'Navsari', 15),
(377, 'Padra', 15),
(378, 'Palanpur', 15),
(379, 'Palitana', 15),
(380, 'Pardi', 15),
(381, 'Patan', 15),
(382, 'Petlad', 15),
(383, 'Porbandar', 15),
(384, 'Radhanpur', 15),
(385, 'Rajkot', 15),
(386, 'Rajpipla', 15),
(387, 'Rajula', 15),
(388, 'Ranavav', 15),
(389, 'Rapar', 15),
(390, 'Salaya', 15),
(391, 'Sanand', 15),
(392, 'Savarkundla', 15),
(393, 'Sidhpur', 15),
(394, 'Sihor', 15),
(395, 'Songadh', 15),
(396, 'Surat', 15),
(397, 'Talaja', 15),
(398, 'Thangadh', 15),
(399, 'Tharad', 15),
(400, 'Umbergaon', 15),
(401, 'Umreth', 15),
(402, 'Una', 15),
(403, 'Unjha', 15),
(404, 'Upleta', 15),
(405, 'Vadnagar', 15),
(406, 'Vadodara', 15),
(407, 'Valsad', 15),
(408, 'Vapi', 15),
(409, 'Vapi', 15),
(410, 'Veraval', 15),
(411, 'Vijapur', 15),
(412, 'Viramgam', 15),
(413, 'Visnagar', 15),
(414, 'Vyara', 15),
(415, 'Wadhwan', 15),
(416, 'Wankaner', 15),
(417, 'Adalaj', 17),
(418, 'Adityana', 17),
(419, 'Alang', 17),
(420, 'Ambaji', 17),
(421, 'Ambaliyasan', 17),
(422, 'Andada', 17),
(423, 'Anjar', 17),
(424, 'Anklav', 17),
(425, 'Antaliya', 17),
(426, 'Arambhada', 17),
(427, 'Atul', 17),
(428, 'Ballabhgarh', 18),
(429, 'Ambala', 19),
(430, 'Ambala', 19),
(431, 'Asankhurd', 19),
(432, 'Assandh', 19),
(433, 'Ateli', 19),
(434, 'Babiyal', 19),
(435, 'Bahadurgarh', 19),
(436, 'Barwala', 19),
(437, 'Bhiwani', 19),
(438, 'Charkhi Dadri', 19),
(439, 'Cheeka', 19),
(440, 'Ellenabad 2', 19),
(441, 'Faridabad', 19),
(442, 'Fatehabad', 19),
(443, 'Ganaur', 19),
(444, 'Gharaunda', 19),
(445, 'Gohana', 19),
(446, 'Gurgaon', 19),
(447, 'Haibat(Yamuna Nagar)', 19),
(448, 'Hansi', 19),
(449, 'Hisar', 19),
(450, 'Hodal', 19),
(451, 'Jhajjar', 19),
(452, 'Jind', 19),
(453, 'Kaithal', 19),
(454, 'Kalan Wali', 19),
(455, 'Kalka', 19),
(456, 'Karnal', 19),
(457, 'Ladwa', 19),
(458, 'Mahendragarh', 19),
(459, 'Mandi Dabwali', 19),
(460, 'Narnaul', 19),
(461, 'Narwana', 19),
(462, 'Palwal', 19),
(463, 'Panchkula', 19),
(464, 'Panipat', 19),
(465, 'Pehowa', 19),
(466, 'Pinjore', 19),
(467, 'Rania', 19),
(468, 'Ratia', 19),
(469, 'Rewari', 19),
(470, 'Rohtak', 19),
(471, 'Safidon', 19),
(472, 'Samalkha', 19),
(473, 'Shahbad', 19),
(474, 'Sirsa', 19),
(475, 'Sohna', 19),
(476, 'Sonipat', 19),
(477, 'Taraori', 19),
(478, 'Thanesar', 19),
(479, 'Tohana', 19),
(480, 'Yamunanagar', 19),
(481, 'Arki', 20),
(482, 'Baddi', 20),
(483, 'Bilaspur', 20),
(484, 'Chamba', 20),
(485, 'Dalhousie', 20),
(486, 'Dharamsala', 20),
(487, 'Hamirpur', 20),
(488, 'Mandi', 20),
(489, 'Nahan', 20),
(490, 'Shimla', 20),
(491, 'Solan', 20),
(492, 'Sundarnagar', 20),
(493, 'Jammu', 21),
(494, 'Achabbal', 21),
(495, 'Akhnoor', 21),
(496, 'Anantnag', 21),
(497, 'Arnia', 21),
(498, 'Awantipora', 21),
(499, 'Bandipore', 21),
(500, 'Baramula', 21),
(501, 'Kathua', 21),
(502, 'Leh', 21),
(503, 'Punch', 21),
(504, 'Rajauri', 21),
(505, 'Sopore', 21),
(506, 'Srinagar', 21),
(507, 'Udhampur', 21),
(508, 'Amlabad', 22),
(509, 'Ara', 22),
(510, 'Barughutu', 22),
(511, 'Bokaro Steel City', 22),
(512, 'Chaibasa', 22),
(513, 'Chakradharpur', 22),
(514, 'Chandrapura', 22),
(515, 'Chatra', 22),
(516, 'Chirkunda', 22),
(517, 'Churi', 22),
(518, 'Daltonganj', 22),
(519, 'Deoghar', 22),
(520, 'Dhanbad', 22),
(521, 'Dumka', 22),
(522, 'Garhwa', 22),
(523, 'Ghatshila', 22),
(524, 'Giridih', 22),
(525, 'Godda', 22),
(526, 'Gomoh', 22),
(527, 'Gumia', 22),
(528, 'Gumla', 22),
(529, 'Hazaribag', 22),
(530, 'Hussainabad', 22),
(531, 'Jamshedpur', 22),
(532, 'Jamtara', 22),
(533, 'Jhumri Tilaiya', 22),
(534, 'Khunti', 22),
(535, 'Lohardaga', 22),
(536, 'Madhupur', 22),
(537, 'Mihijam', 22),
(538, 'Musabani', 22),
(539, 'Pakaur', 22),
(540, 'Patratu', 22),
(541, 'Phusro', 22),
(542, 'Ramngarh', 22),
(543, 'Ranchi', 22),
(544, 'Sahibganj', 22),
(545, 'Saunda', 22),
(546, 'Simdega', 22),
(547, 'Tenu Dam-cum- Kathhara', 22),
(548, 'Arasikere', 23),
(549, 'Bangalore', 23),
(550, 'Belgaum', 23),
(551, 'Bellary', 23),
(552, 'Chamrajnagar', 23),
(553, 'Chikkaballapur', 23),
(554, 'Chintamani', 23),
(555, 'Chitradurga', 23),
(556, 'Gulbarga', 23),
(557, 'Gundlupet', 23),
(558, 'Hassan', 23),
(559, 'Hospet', 23),
(560, 'Hubli', 23),
(561, 'Karkala', 23),
(562, 'Karwar', 23),
(563, 'Kolar', 23),
(564, 'Kota', 23),
(565, 'Lakshmeshwar', 23),
(566, 'Lingsugur', 23),
(567, 'Maddur', 23),
(568, 'Madhugiri', 23),
(569, 'Madikeri', 23),
(570, 'Magadi', 23),
(571, 'Mahalingpur', 23),
(572, 'Malavalli', 23),
(573, 'Malur', 23),
(574, 'Mandya', 23),
(575, 'Mangalore', 23),
(576, 'Manvi', 23),
(577, 'Mudalgi', 23),
(578, 'Mudbidri', 23),
(579, 'Muddebihal', 23),
(580, 'Mudhol', 23),
(581, 'Mulbagal', 23),
(582, 'Mundargi', 23),
(583, 'Mysore', 23),
(584, 'Nanjangud', 23),
(585, 'Pavagada', 23),
(586, 'Puttur', 23),
(587, 'Rabkavi Banhatti', 23),
(588, 'Raichur', 23),
(589, 'Ramanagaram', 23),
(590, 'Ramdurg', 23),
(591, 'Ranibennur', 23),
(592, 'Robertson Pet', 23),
(593, 'Ron', 23),
(594, 'Sadalgi', 23),
(595, 'Sagar', 23),
(596, 'Sakleshpur', 23),
(597, 'Sandur', 23),
(598, 'Sankeshwar', 23),
(599, 'Saundatti-Yellamma', 23),
(600, 'Savanur', 23),
(601, 'Sedam', 23),
(602, 'Shahabad', 23),
(603, 'Shahpur', 23),
(604, 'Shiggaon', 23),
(605, 'Shikapur', 23),
(606, 'Shimoga', 23),
(607, 'Shorapur', 23),
(608, 'Shrirangapattana', 23),
(609, 'Sidlaghatta', 23),
(610, 'Sindgi', 23),
(611, 'Sindhnur', 23),
(612, 'Sira', 23),
(613, 'Sirsi', 23),
(614, 'Siruguppa', 23),
(615, 'Srinivaspur', 23),
(616, 'Talikota', 23),
(617, 'Tarikere', 23),
(618, 'Tekkalakota', 23),
(619, 'Terdal', 23),
(620, 'Tiptur', 23),
(621, 'Tumkur', 23),
(622, 'Udupi', 23),
(623, 'Vijayapura', 23),
(624, 'Wadi', 23),
(625, 'Yadgir', 23),
(626, 'Adoor', 24),
(627, 'Akathiyoor', 24),
(628, 'Alappuzha', 24),
(629, 'Ancharakandy', 24),
(630, 'Aroor', 24),
(631, 'Ashtamichira', 24),
(632, 'Attingal', 24),
(633, 'Avinissery', 24),
(634, 'Chalakudy', 24),
(635, 'Changanassery', 24),
(636, 'Chendamangalam', 24),
(637, 'Chengannur', 24),
(638, 'Cherthala', 24),
(639, 'Cheruthazham', 24),
(640, 'Chittur-Thathamangalam', 24),
(641, 'Chockli', 24),
(642, 'Erattupetta', 24),
(643, 'Guruvayoor', 24),
(644, 'Irinjalakuda', 24),
(645, 'Kadirur', 24),
(646, 'Kalliasseri', 24),
(647, 'Kalpetta', 24),
(648, 'Kanhangad', 24),
(649, 'Kanjikkuzhi', 24),
(650, 'Kannur', 24),
(651, 'Kasaragod', 24),
(652, 'Kayamkulam', 24),
(653, 'Kochi', 24),
(654, 'Kodungallur', 24),
(655, 'Kollam', 24),
(656, 'Koothuparamba', 24),
(657, 'Kothamangalam', 24),
(658, 'Kottayam', 24),
(659, 'Kozhikode', 24),
(660, 'Kunnamkulam', 24),
(661, 'Malappuram', 24),
(662, 'Mattannur', 24),
(663, 'Mavelikkara', 24),
(664, 'Mavoor', 24),
(665, 'Muvattupuzha', 24),
(666, 'Nedumangad', 24),
(667, 'Neyyattinkara', 24),
(668, 'Ottappalam', 24),
(669, 'Palai', 24),
(670, 'Palakkad', 24),
(671, 'Panniyannur', 24),
(672, 'Pappinisseri', 24),
(673, 'Paravoor', 24),
(674, 'Pathanamthitta', 24),
(675, 'Payyannur', 24),
(676, 'Peringathur', 24),
(677, 'Perinthalmanna', 24),
(678, 'Perumbavoor', 24),
(679, 'Ponnani', 24),
(680, 'Punalur', 24),
(681, 'Quilandy', 24),
(682, 'Shoranur', 24),
(683, 'Taliparamba', 24),
(684, 'Thiruvalla', 24),
(685, 'Thiruvananthapuram', 24),
(686, 'Thodupuzha', 24),
(687, 'Thrissur', 24),
(688, 'Tirur', 24),
(689, 'Vadakara', 24),
(690, 'Vaikom', 24),
(691, 'Varkala', 24),
(692, 'Kavaratti', 25),
(693, 'Ashok Nagar', 26),
(694, 'Balaghat', 26),
(695, 'Betul', 26),
(696, 'Bhopal', 26),
(697, 'Burhanpur', 26),
(698, 'Chhatarpur', 26),
(699, 'Dabra', 26),
(700, 'Datia', 26),
(701, 'Dewas', 26),
(702, 'Dhar', 26),
(703, 'Fatehabad', 26),
(704, 'Gwalior', 26),
(705, 'Indore', 26),
(706, 'Itarsi', 26),
(707, 'Jabalpur', 26),
(708, 'Katni', 26),
(709, 'Kotma', 26),
(710, 'Lahar', 26),
(711, 'Lundi', 26),
(712, 'Maharajpur', 26),
(713, 'Mahidpur', 26),
(714, 'Maihar', 26),
(715, 'Malajkhand', 26),
(716, 'Manasa', 26),
(717, 'Manawar', 26),
(718, 'Mandideep', 26),
(719, 'Mandla', 26),
(720, 'Mandsaur', 26),
(721, 'Mauganj', 26),
(722, 'Mhow Cantonment', 26),
(723, 'Mhowgaon', 26),
(724, 'Morena', 26),
(725, 'Multai', 26),
(726, 'Murwara', 26),
(727, 'Nagda', 26),
(728, 'Nainpur', 26),
(729, 'Narsinghgarh', 26),
(730, 'Narsinghgarh', 26),
(731, 'Neemuch', 26),
(732, 'Nepanagar', 26),
(733, 'Niwari', 26),
(734, 'Nowgong', 26),
(735, 'Nowrozabad', 26),
(736, 'Pachore', 26),
(737, 'Pali', 26),
(738, 'Panagar', 26),
(739, 'Pandhurna', 26),
(740, 'Panna', 26),
(741, 'Pasan', 26),
(742, 'Pipariya', 26),
(743, 'Pithampur', 26),
(744, 'Porsa', 26),
(745, 'Prithvipur', 26),
(746, 'Raghogarh-Vijaypur', 26),
(747, 'Rahatgarh', 26),
(748, 'Raisen', 26),
(749, 'Rajgarh', 26),
(750, 'Ratlam', 26),
(751, 'Rau', 26),
(752, 'Rehli', 26),
(753, 'Rewa', 26),
(754, 'Sabalgarh', 26),
(755, 'Sagar', 26),
(756, 'Sanawad', 26),
(757, 'Sarangpur', 26),
(758, 'Sarni', 26),
(759, 'Satna', 26),
(760, 'Sausar', 26),
(761, 'Sehore', 26),
(762, 'Sendhwa', 26),
(763, 'Seoni', 26),
(764, 'Seoni-Malwa', 26),
(765, 'Shahdol', 26),
(766, 'Shajapur', 26),
(767, 'Shamgarh', 26),
(768, 'Sheopur', 26),
(769, 'Shivpuri', 26),
(770, 'Shujalpur', 26),
(771, 'Sidhi', 26),
(772, 'Sihora', 26),
(773, 'Singrauli', 26),
(774, 'Sironj', 26),
(775, 'Sohagpur', 26),
(776, 'Tarana', 26),
(777, 'Tikamgarh', 26),
(778, 'Ujhani', 26),
(779, 'Ujjain', 26),
(780, 'Umaria', 26),
(781, 'Vidisha', 26),
(782, 'Wara Seoni', 26),
(783, 'Ahmednagar', 4),
(784, 'Akola', 4),
(785, 'Amravati', 4),
(786, 'Aurangabad', 4),
(787, 'Baramati', 4),
(788, 'Chalisgaon', 4),
(789, 'Chinchani', 4),
(790, 'Devgarh', 4),
(791, 'Dhule', 4),
(792, 'Dombivli', 4),
(793, 'Durgapur', 4),
(794, 'Ichalkaranji', 4),
(795, 'Jalna', 4),
(796, 'Kalyan', 4),
(797, 'Latur', 4),
(798, 'Loha', 4),
(799, 'Lonar', 4),
(800, 'Lonavla', 4),
(801, 'Mahad', 4),
(802, 'Mahuli', 4),
(803, 'Malegaon', 4),
(804, 'Malkapur', 4),
(805, 'Manchar', 4),
(806, 'Mangalvedhe', 4),
(807, 'Mangrulpir', 4),
(808, 'Manjlegaon', 4),
(809, 'Manmad', 4),
(810, 'Manwath', 4),
(811, 'Mehkar', 4),
(812, 'Mhaswad', 4),
(813, 'Miraj', 4),
(814, 'Morshi', 4),
(815, 'Mukhed', 4),
(816, 'Mul', 4),
(817, 'Mumbai', 4),
(818, 'Murtijapur', 4),
(819, 'Nagpur', 4),
(820, 'Nalasopara', 4),
(821, 'Nanded-Waghala', 4),
(822, 'Nandgaon', 4),
(823, 'Nandura', 4),
(824, 'Nandurbar', 4),
(825, 'Narkhed', 4),
(826, 'Nashik', 4),
(827, 'Navi Mumbai', 4),
(828, 'Nawapur', 4),
(829, 'Nilanga', 4),
(830, 'Osmanabad', 4),
(831, 'Ozar', 4),
(832, 'Pachora', 4),
(833, 'Paithan', 4),
(834, 'Palghar', 4),
(835, 'Pandharkaoda', 4),
(836, 'Pandharpur', 4),
(837, 'Panvel', 4),
(838, 'Parbhani', 4),
(839, 'Parli', 4),
(840, 'Parola', 4),
(841, 'Partur', 4),
(842, 'Pathardi', 4),
(843, 'Pathri', 4),
(844, 'Patur', 4),
(845, 'Pauni', 4),
(846, 'Pen', 4),
(847, 'Phaltan', 4),
(848, 'Pulgaon', 4),
(849, 'Pune', 4),
(850, 'Purna', 4),
(851, 'Pusad', 4),
(852, 'Rahuri', 4),
(853, 'Rajura', 4),
(854, 'Ramtek', 4),
(855, 'Ratnagiri', 4),
(856, 'Raver', 4),
(857, 'Risod', 4),
(858, 'Sailu', 4),
(859, 'Sangamner', 4),
(860, 'Sangli', 4),
(861, 'Sangole', 4),
(862, 'Sasvad', 4),
(863, 'Satana', 4),
(864, 'Satara', 4),
(865, 'Savner', 4),
(866, 'Sawantwadi', 4),
(867, 'Shahade', 4),
(868, 'Shegaon', 4),
(869, 'Shendurjana', 4),
(870, 'Shirdi', 4),
(871, 'Shirpur-Warwade', 4),
(872, 'Shirur', 4),
(873, 'Shrigonda', 4),
(874, 'Shrirampur', 4),
(875, 'Sillod', 4),
(876, 'Sinnar', 4),
(877, 'Solapur', 4),
(878, 'Soyagaon', 4),
(879, 'Talegaon Dabhade', 4),
(880, 'Talode', 4),
(881, 'Tasgaon', 4),
(882, 'Tirora', 4),
(883, 'Tuljapur', 4),
(884, 'Tumsar', 4),
(885, 'Uran', 4),
(886, 'Uran Islampur', 4),
(887, 'Wadgaon Road', 4),
(888, 'Wai', 4),
(889, 'Wani', 4),
(890, 'Wardha', 4),
(891, 'Warora', 4),
(892, 'Warud', 4),
(893, 'Washim', 4),
(894, 'Yevla', 4),
(895, 'Uchgaon', 4),
(896, 'Udgir', 4),
(897, 'Umarga', 27),
(898, 'Umarkhed', 27),
(899, 'Umred', 27),
(900, 'Vadgaon Kasba', 27),
(901, 'Vaijapur', 27),
(902, 'Vasai', 27),
(903, 'Virar', 27),
(904, 'Vita', 27),
(905, 'Yavatmal', 27),
(906, 'Yawal', 27),
(907, 'Imphal', 28),
(908, 'Kakching', 28),
(909, 'Lilong', 28),
(910, 'Mayang Imphal', 28),
(911, 'Thoubal', 28),
(912, 'Jowai', 29),
(913, 'Nongstoin', 29),
(914, 'Shillong', 29),
(915, 'Tura', 29),
(916, 'Aizawl', 30),
(917, 'Champhai', 30),
(918, 'Lunglei', 30),
(919, 'Saiha', 30),
(920, 'Dimapur', 31),
(921, 'Kohima', 31),
(922, 'Mokokchung', 31),
(923, 'Tuensang', 31),
(924, 'Wokha', 31),
(925, 'Zunheboto', 31),
(950, 'Anandapur', 32),
(951, 'Anugul', 32),
(952, 'Asika', 32),
(953, 'Balangir', 32),
(954, 'Balasore', 32),
(955, 'Baleshwar', 32),
(956, 'Bamra', 32),
(957, 'Barbil', 32),
(958, 'Bargarh', 32),
(959, 'Bargarh', 32),
(960, 'Baripada', 32),
(961, 'Basudebpur', 32),
(962, 'Belpahar', 32),
(963, 'Bhadrak', 32),
(964, 'Bhawanipatna', 32),
(965, 'Bhuban', 32),
(966, 'Bhubaneswar', 32),
(967, 'Biramitrapur', 32),
(968, 'Brahmapur', 32),
(969, 'Brajrajnagar', 32),
(970, 'Byasanagar', 32),
(971, 'Cuttack', 32),
(972, 'Debagarh', 32),
(973, 'Dhenkanal', 32),
(974, 'Gunupur', 32),
(975, 'Hinjilicut', 32),
(976, 'Jagatsinghapur', 32),
(977, 'Jajapur', 32),
(978, 'Jaleswar', 32),
(979, 'Jatani', 32),
(980, 'Jeypur', 32),
(981, 'Jharsuguda', 32),
(982, 'Joda', 32),
(983, 'Kantabanji', 32),
(984, 'Karanjia', 32),
(985, 'Kendrapara', 32),
(986, 'Kendujhar', 32),
(987, 'Khordha', 32),
(988, 'Koraput', 32),
(989, 'Malkangiri', 32),
(990, 'Nabarangapur', 32),
(991, 'Paradip', 32),
(992, 'Parlakhemundi', 32),
(993, 'Pattamundai', 32),
(994, 'Phulabani', 32),
(995, 'Puri', 32),
(996, 'Rairangpur', 32),
(997, 'Rajagangapur', 32),
(998, 'Raurkela', 32),
(999, 'Rayagada', 32),
(1000, 'Sambalpur', 32),
(1001, 'Soro', 32),
(1002, 'Sunabeda', 32),
(1003, 'Sundargarh', 32),
(1004, 'Talcher', 32),
(1005, 'Titlagarh', 32),
(1006, 'Umarkote', 32),
(1007, 'Karaikal', 33),
(1008, 'Mahe', 33),
(1009, 'Pondicherry', 33),
(1010, 'Yanam', 33),
(1011, 'Ahmedgarh', 34),
(1012, 'Amritsar', 34),
(1013, 'Barnala', 34),
(1014, 'Batala', 34),
(1015, 'Bathinda', 34),
(1016, 'Bhagha Purana', 34),
(1017, 'Budhlada', 34),
(1018, 'Chandigarh', 34),
(1019, 'Dasua', 34),
(1020, 'Dhuri', 34),
(1021, 'Dinanagar', 34),
(1022, 'Faridkot', 34),
(1023, 'Fazilka', 34),
(1024, 'Firozpur', 34),
(1025, 'Firozpur Cantt.', 34),
(1026, 'Giddarbaha', 34),
(1027, 'Gobindgarh', 34),
(1028, 'Gurdaspur', 34),
(1029, 'Hoshiarpur', 34),
(1030, 'Jagraon', 34),
(1031, 'Jaitu', 34),
(1032, 'Jalalabad', 34),
(1033, 'Jalandhar', 34),
(1034, 'Jalandhar Cantt.', 34),
(1035, 'Jandiala', 34),
(1036, 'Kapurthala', 34),
(1037, 'Karoran', 34),
(1038, 'Kartarpur', 34),
(1039, 'Khanna', 34),
(1040, 'Kharar', 34),
(1041, 'Kot Kapura', 34),
(1042, 'Kurali', 34),
(1043, 'Longowal', 34),
(1044, 'Ludhiana', 34),
(1045, 'Malerkotla', 34),
(1046, 'Malout', 34),
(1047, 'Mansa', 34),
(1048, 'Maur', 34),
(1049, 'Moga', 34),
(1050, 'Mohali', 34),
(1051, 'Morinda', 34),
(1052, 'Mukerian', 34),
(1053, 'Muktsar', 34),
(1054, 'Nabha', 34),
(1055, 'Nakodar', 34),
(1056, 'Nangal', 34),
(1057, 'Nawanshahr', 34),
(1058, 'Pathankot', 34),
(1059, 'Patiala', 34),
(1060, 'Patran', 34),
(1061, 'Patti', 34),
(1062, 'Phagwara', 34),
(1063, 'Phillaur', 34),
(1064, 'Qadian', 34),
(1065, 'Raikot', 34),
(1066, 'Rajpura', 34),
(1067, 'Rampura Phul', 34),
(1068, 'Rupnagar', 34),
(1069, 'Samana', 34),
(1070, 'Sangrur', 34),
(1071, 'Sirhind Fatehgarh Sahib', 34),
(1072, 'Sujanpur', 34),
(1073, 'Sunam', 34),
(1074, 'Talwara', 34),
(1075, 'Tarn Taran', 34),
(1076, 'Urmar Tanda', 34),
(1077, 'Zira', 34),
(1078, 'Zirakpur', 34),
(1079, 'Bali', 35),
(1080, 'Banswara', 36),
(1081, 'Ajmer', 35),
(1082, 'Alwar', 35),
(1083, 'Bandikui', 35),
(1084, 'Baran', 35),
(1085, 'Barmer', 35),
(1086, 'Bikaner', 35),
(1087, 'Fatehpur', 35),
(1088, 'Jaipur', 35),
(1089, 'Jaisalmer', 35),
(1090, 'Jodhpur', 35),
(1091, 'Kota', 35),
(1092, 'Lachhmangarh', 35),
(1093, 'Ladnu', 35),
(1094, 'Lakheri', 35),
(1095, 'Lalsot', 35),
(1096, 'Losal', 35),
(1097, 'Makrana', 35),
(1098, 'Malpura', 35),
(1099, 'Mandalgarh', 35),
(1100, 'Mandawa', 35),
(1101, 'Mangrol', 35),
(1102, 'Merta City', 35),
(1103, 'Mount Abu', 35),
(1104, 'Nadbai', 35),
(1105, 'Nagar', 35),
(1106, 'Nagaur', 35),
(1107, 'Nargund', 35),
(1108, 'Nasirabad', 35),
(1109, 'Nathdwara', 35),
(1110, 'Navalgund', 35),
(1111, 'Nawalgarh', 35),
(1112, 'Neem-Ka-Thana', 35),
(1113, 'Nelamangala', 35),
(1114, 'Nimbahera', 35),
(1115, 'Nipani', 35),
(1116, 'Niwai', 35),
(1117, 'Nohar', 35),
(1118, 'Nokha', 35),
(1119, 'Pali', 35),
(1120, 'Phalodi', 35),
(1121, 'Phulera', 35),
(1122, 'Pilani', 35),
(1123, 'Pilibanga', 35),
(1124, 'Pindwara', 35),
(1125, 'Pipar City', 35),
(1126, 'Prantij', 35),
(1127, 'Pratapgarh', 35),
(1128, 'Raisinghnagar', 35),
(1129, 'Rajakhera', 35),
(1130, 'Rajaldesar', 35),
(1131, 'Rajgarh (Alwar)', 35),
(1132, 'Rajgarh (Churu', 35),
(1133, 'Rajsamand', 35),
(1134, 'Ramganj Mandi', 35),
(1135, 'Ramngarh', 35),
(1136, 'Ratangarh', 35),
(1137, 'Rawatbhata', 35),
(1138, 'Rawatsar', 35),
(1139, 'Reengus', 35),
(1140, 'Sadri', 35),
(1141, 'Sadulshahar', 35),
(1142, 'Sagwara', 35),
(1143, 'Sambhar', 35),
(1144, 'Sanchore', 35),
(1145, 'Sangaria', 35),
(1146, 'Sardarshahar', 35),
(1147, 'Sawai Madhopur', 35),
(1148, 'Shahpura', 35),
(1149, 'Shahpura', 35),
(1150, 'Sheoganj', 35),
(1151, 'Sikar', 35),
(1152, 'Sirohi', 35),
(1153, 'Sojat', 35),
(1154, 'Sri Madhopur', 35),
(1155, 'Sujangarh', 35),
(1156, 'Sumerpur', 35),
(1157, 'Suratgarh', 35),
(1158, 'Taranagar', 35),
(1159, 'Todabhim', 35),
(1160, 'Todaraisingh', 35),
(1161, 'Tonk', 35),
(1162, 'Udaipur', 35),
(1163, 'Udaipurwati', 35),
(1164, 'Vijainagar', 35),
(1165, 'Gangtok', 37),
(1166, 'Calcutta', 38),
(1167, 'Arakkonam', 39),
(1168, 'Arcot', 39),
(1169, 'Aruppukkottai', 39),
(1170, 'Bhavani', 39),
(1171, 'Chengalpattu', 39),
(1172, 'Chennai', 39),
(1173, 'Chinna salem', 39),
(1174, 'Coimbatore', 39),
(1175, 'Coonoor', 39),
(1176, 'Cuddalore', 39),
(1177, 'Dharmapuri', 39),
(1178, 'Dindigul', 39),
(1179, 'Erode', 39),
(1180, 'Gudalur', 39),
(1181, 'Gudalur', 39),
(1182, 'Gudalur', 39),
(1183, 'Kanchipuram', 39),
(1184, 'Karaikudi', 39),
(1185, 'Karungal', 39),
(1186, 'Karur', 39),
(1187, 'Kollankodu', 39),
(1188, 'Lalgudi', 39),
(1189, 'Madurai', 39),
(1190, 'Nagapattinam', 39),
(1191, 'Nagercoil', 39),
(1192, 'Namagiripettai', 39),
(1193, 'Namakkal', 39),
(1194, 'Nandivaram-Guduvancheri', 39),
(1195, 'Nanjikottai', 39),
(1196, 'Natham', 39),
(1197, 'Nellikuppam', 39),
(1198, 'Neyveli', 39),
(1200, 'Oddanchatram', 39),
(1201, 'P.N.Patti', 39),
(1202, 'Pacode', 39),
(1203, 'Padmanabhapuram', 39),
(1204, 'Palani', 39),
(1205, 'Palladam', 39),
(1206, 'Pallapatti', 39),
(1207, 'Pallikonda', 39),
(1208, 'Panagudi', 39),
(1209, 'Panruti', 39),
(1210, 'Paramakudi', 39),
(1211, 'Parangipettai', 39),
(1212, 'Pattukkottai', 39),
(1213, 'Perambalur', 39),
(1214, 'Peravurani', 39),
(1215, 'Periyakulam', 39),
(1216, 'Periyasemur', 39),
(1217, 'Pernampattu', 39),
(1218, 'Pollachi', 39),
(1219, 'Polur', 39),
(1220, 'Ponneri', 39),
(1221, 'Pudukkottai', 39),
(1222, 'Pudupattinam', 39),
(1223, 'Puliyankudi', 39),
(1224, 'Punjaipugalur', 39),
(1225, 'Rajapalayam', 39),
(1226, 'Ramanathapuram', 39),
(1227, 'Rameshwaram', 39),
(1228, 'Rasipuram', 39),
(1229, 'Salem', 39),
(1230, 'Sankarankoil', 39),
(1231, 'Sankari', 39),
(1232, 'Sathyamangalam', 39),
(1233, 'Sattur', 39),
(1234, 'Shenkottai', 39),
(1235, 'Sholavandan', 39),
(1236, 'Sholingur', 39),
(1237, 'Sirkali', 39),
(1238, 'Sivaganga', 39),
(1239, 'Sivagiri', 39),
(1240, 'Sivakasi', 39),
(1241, 'Srivilliputhur', 39),
(1242, 'Surandai', 39),
(1243, 'Suriyampalayam', 39),
(1244, 'Tenkasi', 39),
(1245, 'Thammampatti', 39),
(1246, 'Thanjavur', 39),
(1247, 'Tharamangalam', 39),
(1248, 'Tharangambadi', 39),
(1249, 'Theni Allinagaram', 39),
(1250, 'Thirumangalam', 39),
(1251, 'Thirunindravur', 39),
(1252, 'Thiruparappu', 39),
(1253, 'Thirupuvanam', 39),
(1254, 'Thiruthuraipoondi', 39),
(1255, 'Thiruvallur', 39),
(1256, 'Thiruvarur', 39),
(1257, 'Thoothukudi', 39),
(1258, 'Thuraiyur', 39),
(1259, 'Tindivanam', 39),
(1260, 'Tiruchendur', 39),
(1261, 'Tiruchengode', 39),
(1262, 'Tiruchirappalli', 39),
(1263, 'Tirukalukundram', 39),
(1264, 'Tirukkoyilur', 39),
(1265, 'Tirunelveli', 39),
(1266, 'Tirupathur', 39),
(1267, 'Tirupathur', 39),
(1268, 'Tiruppur', 39),
(1269, 'Tiruttani', 39),
(1270, 'Tiruvannamalai', 39),
(1271, 'Tiruvethipuram', 39),
(1272, 'Tittakudi', 39),
(1273, 'Udhagamandalam', 39),
(1274, 'Udumalaipettai', 39),
(1275, 'Unnamalaikadai', 39),
(1276, 'Usilampatti', 39),
(1277, 'Uthamapalayam', 39),
(1278, 'Uthiramerur', 39),
(1279, 'Vadakkuvalliyur', 39),
(1280, 'Vadalur', 39),
(1281, 'Vadipatti', 39),
(1282, 'Valparai', 39),
(1283, 'Vandavasi', 39),
(1284, 'Vaniyambadi', 39),
(1285, 'Vedaranyam', 39),
(1286, 'Vellakoil', 39),
(1287, 'Vellore', 39),
(1288, 'Vikramasingapuram', 39),
(1289, 'Viluppuram', 39),
(1290, 'Virudhachalam', 39),
(1291, 'Virudhunagar', 39),
(1292, 'Viswanatham', 39),
(1293, 'Agartala', 40),
(1294, 'Badharghat', 40),
(1295, 'Dharmanagar', 40),
(1296, 'Indranagar', 40),
(1297, 'Jogendranagar', 40),
(1298, 'Kailasahar', 40),
(1299, 'Khowai', 40),
(1300, 'Pratapgarh', 40),
(1301, 'Udaipur', 40),
(1302, 'Achhnera', 41),
(1303, 'Adari', 41),
(1304, 'Agra', 41),
(1305, 'Aligarh', 41),
(1306, 'Allahabad', 41),
(1307, 'Amroha', 41),
(1308, 'Azamgarh', 41),
(1309, 'Bahraich', 41),
(1310, 'Ballia', 41),
(1311, 'Balrampur', 41),
(1312, 'Banda', 41),
(1313, 'Bareilly', 41),
(1314, 'Chandausi', 41),
(1315, 'Dadri', 41),
(1316, 'Deoria', 41),
(1317, 'Etawah', 41),
(1318, 'Fatehabad', 41),
(1319, 'Fatehpur', 41),
(1320, 'Fatehpur', 41),
(1321, 'Greater Noida', 41),
(1322, 'Hamirpur', 41),
(1323, 'Hardoi', 41),
(1324, 'Jajmau', 41),
(1325, 'Jaunpur', 41),
(1326, 'Jhansi', 41),
(1327, 'Kalpi', 41),
(1328, 'Kanpur', 41),
(1329, 'Kota', 41),
(1330, 'Laharpur', 41),
(1331, 'Lakhimpur', 41),
(1332, 'Lal Gopalganj Nindaura', 41),
(1333, 'Lalganj', 41),
(1334, 'Lalitpur', 41),
(1335, 'Lar', 41),
(1336, 'Loni', 41),
(1337, 'Lucknow', 41),
(1338, 'Mathura', 41),
(1339, 'Meerut', 41),
(1340, 'Modinagar', 41),
(1341, 'Muradnagar', 41),
(1342, 'Nagina', 41),
(1343, 'Najibabad', 41),
(1344, 'Nakur', 41),
(1345, 'Nanpara', 41),
(1346, 'Naraura', 41),
(1347, 'Naugawan Sadat', 41),
(1348, 'Nautanwa', 41),
(1349, 'Nawabganj', 41),
(1350, 'Nehtaur', 41),
(1351, 'NOIDA', 41),
(1352, 'Noorpur', 41),
(1353, 'Obra', 41),
(1354, 'Orai', 41),
(1355, 'Padrauna', 41),
(1356, 'Palia Kalan', 41),
(1357, 'Parasi', 41),
(1358, 'Phulpur', 41),
(1359, 'Pihani', 41),
(1360, 'Pilibhit', 41),
(1361, 'Pilkhuwa', 41),
(1362, 'Powayan', 41),
(1363, 'Pukhrayan', 41),
(1364, 'Puranpur', 41),
(1365, 'Purquazi', 41),
(1366, 'Purwa', 41),
(1367, 'Rae Bareli', 41),
(1368, 'Rampur', 41),
(1369, 'Rampur Maniharan', 41),
(1370, 'Rasra', 41),
(1371, 'Rath', 41),
(1372, 'Renukoot', 41),
(1373, 'Reoti', 41),
(1374, 'Robertsganj', 41),
(1375, 'Rudauli', 41),
(1376, 'Rudrapur', 41),
(1377, 'Sadabad', 41),
(1378, 'Safipur', 41),
(1379, 'Saharanpur', 41),
(1380, 'Sahaspur', 41),
(1381, 'Sahaswan', 41),
(1382, 'Sahawar', 41),
(1383, 'Sahjanwa', 41),
(1384, 'Saidpur', 42),
(1385, 'Sambhal', 41),
(1386, 'Samdhan', 41),
(1387, 'Samthar', 41),
(1388, 'Sandi', 41),
(1389, 'Sandila', 41),
(1390, 'Sardhana', 41),
(1391, 'Seohara', 41),
(1392, 'Shahabad', 43),
(1393, 'Shahabad', 44),
(1394, 'Shahganj', 41),
(1395, 'Shahjahanpur', 41),
(1396, 'Shamli', 41),
(1397, 'Shamsabad', 45),
(1398, 'Shamsabad', 46),
(1399, 'Sherkot', 41),
(1400, 'Shikarpur', 47),
(1401, 'Shikohabad', 41),
(1402, 'Shishgarh', 41),
(1403, 'Siana', 41),
(1404, 'Sikanderpur', 41),
(1405, 'Sikandra Rao', 41),
(1406, 'Sikandrabad', 41),
(1407, 'Sirsaganj', 41),
(1408, 'Sirsi', 41),
(1409, 'Sitapur', 41),
(1410, 'Soron', 41),
(1411, 'Suar', 41),
(1412, 'Sultanpur', 41),
(1413, 'Sumerpur', 41),
(1414, 'Tanda', 41),
(1415, 'Tanda', 41),
(1416, 'Tetri Bazar', 41),
(1417, 'Thakurdwara', 41),
(1418, 'Thana Bhawan', 41),
(1419, 'Tilhar', 41),
(1420, 'Tirwaganj', 41),
(1421, 'Tulsipur', 41),
(1422, 'Tundla', 41),
(1423, 'Unnao', 41),
(1424, 'Utraula', 41),
(1425, 'Varanasi', 41),
(1426, 'Vrindavan', 41),
(1427, 'Warhapur', 41),
(1428, 'Zaidpur', 41),
(1429, 'Zamania', 41),
(1430, 'Almora', 48),
(1431, 'Bazpur', 48),
(1432, 'Chamba', 48),
(1433, 'Dehradun', 48),
(1434, 'Haldwani', 48),
(1435, 'Haridwar', 48),
(1436, 'Jaspur', 48),
(1437, 'Kashipur', 48),
(1438, 'kichha', 48),
(1439, 'Kotdwara', 48),
(1440, 'Manglaur', 48),
(1441, 'Mussoorie', 48),
(1442, 'Nagla', 48),
(1443, 'Nainital', 48),
(1444, 'Pauri', 48),
(1445, 'Pithoragarh', 48),
(1446, 'Ramnagar', 48),
(1447, 'Rishikesh', 48),
(1448, 'Roorkee', 48),
(1449, 'Rudrapur', 48),
(1450, 'Sitarganj', 48),
(1451, 'Tehri', 48),
(1452, 'Muzaffarnagar', 41),
(1453, 'Adra', 49),
(1454, 'Alipurduar', 38),
(1455, 'Arambagh', 38),
(1456, 'Asansol', 38),
(1457, 'Baharampur', 38),
(1458, 'Bally', 38),
(1459, 'Balurghat', 38),
(1460, 'Bankura', 38),
(1461, 'Barakar', 38),
(1462, 'Barasat', 38),
(1463, 'Bardhaman', 38),
(1464, 'Bidhan Nagar', 38),
(1465, 'Chinsura', 38),
(1466, 'Contai', 38),
(1467, 'Cooch Behar', 38),
(1468, 'Darjeeling', 38),
(1469, 'Durgapur', 38),
(1470, 'Haldia', 38),
(1471, 'Howrah', 38),
(1472, 'Islampur', 38),
(1473, 'Jhargram', 38),
(1474, 'Kharagpur', 38),
(1475, 'Kolkata', 38),
(1476, 'Mainaguri', 38),
(1477, 'Mal', 38),
(1478, 'Mathabhanga', 38),
(1479, 'Medinipur', 38),
(1480, 'Memari', 38),
(1481, 'Monoharpur', 38),
(1482, 'Murshidabad', 38),
(1483, 'Nabadwip', 38),
(1484, 'Naihati', 38),
(1485, 'Panchla', 38),
(1486, 'Pandua', 38),
(1487, 'Paschim Punropara', 38),
(1488, 'Purulia', 38),
(1489, 'Raghunathpur', 38),
(1490, 'Raiganj', 38),
(1491, 'Rampurhat', 38),
(1492, 'Ranaghat', 38),
(1493, 'Sainthia', 38),
(1494, 'Santipur', 38),
(1495, 'Siliguri', 38),
(1496, 'Sonamukhi', 38),
(1497, 'Srirampore', 38),
(1498, 'Suri', 38),
(1499, 'Taki', 38),
(1500, 'Tamluk', 38),
(1501, 'Tarakeswar', 38),
(1502, 'Chikmagalur', 23),
(1503, 'Davanagere', 23),
(1504, 'Dharwad', 23),
(1505, 'Gadag', 23),
(1506, 'Chennai', 39),
(1507, 'Coimbatore', 39);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `gallery_id` int(11) NOT NULL,
  `img_name` varchar(255) NOT NULL,
  `img_link` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

CREATE TABLE `offer` (
  `offer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `amount` int(11) NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `cart_id` varchar(255) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `total_amount` int(11) NOT NULL,
  `status` enum('pendding','dispatch','cancel') NOT NULL,
  `txn_id` varchar(255) DEFAULT NULL,
  `shipping_id` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `user_id`, `product_id`, `cart_id`, `price`, `total_amount`, `status`, `txn_id`, `shipping_id`, `date`, `total`) VALUES
(80, 88, 0, '122,', 0, 160, 'pendding', '', 0, '2020-10-27 10:47:12', 160),
(81, 88, 0, '123,', 0, 160, 'pendding', '', 0, '2020-10-27 10:48:46', 160),
(82, 88, 0, '124,', 0, 480, 'pendding', '', 0, '2020-10-27 11:12:03', 480),
(83, 89, NULL, '127,127', 4, 4, 'pendding', NULL, NULL, '2021-01-19 06:15:24', 4),
(84, 89, NULL, '128', 162, 162, 'pendding', NULL, NULL, '2021-01-19 06:17:20', 162);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `txt_id` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `weight` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `product_detail` varchar(255) NOT NULL,
  `Build_material` varchar(255) NOT NULL,
  `product_weight` varchar(255) DEFAULT NULL,
  `total_weight` varchar(255) DEFAULT NULL,
  `camera` varchar(255) DEFAULT NULL,
  `display` varchar(255) DEFAULT NULL,
  `product_code` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `OS` varchar(255) DEFAULT NULL,
  `SIM_slot` varchar(255) DEFAULT NULL,
  `internal_memory` varchar(255) DEFAULT NULL,
  `product_value` varchar(255) NOT NULL,
  `gst` varchar(255) NOT NULL,
  `processer` varchar(255) DEFAULT NULL,
  `RAM` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `category_id`, `sub_category_id`, `name`, `quantity`, `weight`, `price`, `stock`, `product_image`, `status`, `product_detail`, `Build_material`, `product_weight`, `total_weight`, `camera`, `display`, `product_code`, `color`, `OS`, `SIM_slot`, `internal_memory`, `product_value`, `gst`, `processer`, `RAM`) VALUES
(72, 5, 18, 'royal spray', '', 100, 220, '', '5041.jpg', 'active', 'white london', '', '', '', '', '', 'GH2494', '', '', '', '', '', '', '', ''),
(73, 6, 20, 'ROSE', '', 230, 160, '', 'image1.jpg', 'active', 'Rose(230gm)', '', '', '', '', '', 'GH8810', '', '', '', '', '', '', '', ''),
(78, 6, NULL, 'asjx', NULL, 23, 2, '42', 'image1.jpg', 'active', 'iryi4', 'whdsuiw', 'ihduiwg', NULL, 'idh', 'ishi', 'GH8994', 'idhiwu', 'iugdi', 'ugsuiguidg', 'gduig', 'gdui', 'iudg', 'gqdgi', 'ugdui');

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `shipping_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `mobile_number` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pincode` int(6) NOT NULL,
  `email` varchar(255) NOT NULL,
  `donation_amount` int(255) DEFAULT NULL,
  `txn_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`shipping_id`, `order_id`, `user_id`, `first_name`, `mobile_number`, `state_id`, `city_id`, `address`, `pincode`, `email`, `donation_amount`, `txn_id`) VALUES
(140, 80, 88, 'dushyant j khoda', 2147483647, 15, 350, 'tomboli dela godava pati girnar road junagadh', 362001, 'dk9054254800@gmail.com', 0, ''),
(141, 81, 88, 'dushyant j khoda', 2147483647, 15, 350, 'tomboli dela godava pati girnar road junagadh', 362001, 'dk9054254800@gmail.com', 0, ''),
(142, 82, 88, 'dushyant j khoda', 2147483647, 15, 350, 'tomboli dela godava pati girnar road junagadh', 362001, 'dk9054254800@gmail.com', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `name` varchar(512) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `name`) VALUES
(4, 'Maharashtra'),
(5, 'Andaman & Nicobar Islands'),
(6, 'Andhra Pradesh'),
(7, 'Arunachal Pradesh'),
(8, 'Assam'),
(9, 'Bihar'),
(10, 'Chhattisgarh'),
(11, 'Dadra & Nagar Haveli'),
(12, 'Daman & Diu'),
(13, 'Delhi'),
(14, 'Goa'),
(15, 'Gujarat'),
(19, 'Haryana'),
(20, 'Himachal Pradesh'),
(21, 'Jammu & Kashmir'),
(22, 'Jharkhand'),
(23, 'Karnataka'),
(24, 'Kerala'),
(25, 'Lakshadweep'),
(26, 'Madhya Pradesh'),
(27, 'Maharastra'),
(28, 'Manipur'),
(29, 'Meghalaya'),
(30, 'Mizoram'),
(31, 'Nagaland'),
(32, 'Orissa'),
(33, 'Pondicherry'),
(34, 'Punjab'),
(36, 'Rajastan'),
(37, 'Sikkim'),
(38, 'West Bengal'),
(39, 'Tamil Nadu'),
(40, 'Tripura'),
(41, 'Uttar Pradesh'),
(42, ' Ghazipur'),
(43, ' Hardoi'),
(44, ' Rampur'),
(45, ' Agra'),
(46, ' Farrukhabad'),
(47, ' Bulandshahr'),
(48, 'Uttarakhand'),
(49, ' Purulia');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `sub_category_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `stock` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`sub_category_id`, `category_id`, `name`, `image`, `status`, `stock`) VALUES
(20, 6, 'AIR FRESHNER FLAVOUR', 'shiva.jpg', 'active', '');

-- --------------------------------------------------------

--
-- Table structure for table `upload product`
--

CREATE TABLE `upload product` (
  `up_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_details` varchar(255) NOT NULL,
  `product_damage_details` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_sale_price` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `visitor_address` varchar(255) NOT NULL,
  `contact_no` int(11) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `gender` enum('male','female','','') NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `pincode` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirm_password` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `telephone_number` int(11) NOT NULL,
  `mobile_number` int(11) NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `pincode` int(6) NOT NULL,
  `profile_image` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Error reading data for table perfume_first.user: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM `perfume_first`.`user`' at line 1

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_relates_to_state` (`state_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`offer_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`sub_category_id`);

--
-- Indexes for table `upload product`
--
ALTER TABLE `upload product`
  ADD PRIMARY KEY (`up_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1508;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offer`
--
ALTER TABLE `offer`
  MODIFY `offer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `sub_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `upload product`
--
ALTER TABLE `upload product`
  MODIFY `up_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
