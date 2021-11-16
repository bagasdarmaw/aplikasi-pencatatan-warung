-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Nov 2021 pada 09.37
-- Versi server: 10.4.16-MariaDB
-- Versi PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_warung`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(115) NOT NULL,
  `nama_barang` varchar(115) NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `harga_beli` varchar(115) NOT NULL,
  `harga_jual` varchar(1115) NOT NULL,
  `harga_jual_satuan` varchar(115) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `id_jenis`, `harga_beli`, `harga_jual`, `harga_jual_satuan`) VALUES
(9, 'Tropical 1lt', 1, '220.000', '230.000', '20.000'),
(10, 'tropikal 2 liter', 1, '212.000', '', '37.000'),
(13, 'Sania 1lt', 1, '', '', '19.000'),
(19, 'Rose Brand Minya Cup 220ml', 1, '190.000', '', '4.500'),
(21, 'Sania 2lt', 1, '', '', '37.000'),
(22, 'Kapal Api 65gr', 3, '228.000', '', '5.000'),
(23, 'Kapal Api 165gr', 3, '217.500', '', '13.000'),
(24, 'Torabika Cappucino', 3, '162.500', '', '2.000'),
(25, 'Kopi liong 1ons', 3, '52.000', '', '6.000'),
(26, 'Kopi liong 40gr', 3, '26.500', '', '3.000'),
(27, 'Good Day Freeze', 3, '18.000', '', '2.000'),
(28, 'Good Day Moccacino', 3, '10.500', '', '1.250'),
(29, 'Teh Gelas', 5, '18.000', '', '1.000'),
(30, 'Larutan Cap Kaki 3 200ml (kecil)', 5, '280.000', '', '3.500'),
(31, 'Sprite Botol pet 390ml', 5, '45.600', '48.000', '5.000'),
(32, 'larutan kaki 3 besar', 5, '128.000', '', '65.000'),
(33, 'gooday botol', 5, '105.000', '115.000', '5.500'),
(34, 'kratidaeng', 5, '', '', '5.000'),
(35, 'susu ultra 125ml', 5, '96.000', '105.000', '3.000'),
(36, 'susu ultra 200ml', 5, '91.000', '100.000', '5.000'),
(37, 'susu ultra 250ml', 5, '114.500', '120.000', '6.000'),
(38, 'ultra mimi 125ml', 5, '96.000', '105.000', '3.000'),
(39, 'Ultra milo', 5, '85.000', '95.000', '3.000'),
(40, 'Indomild kotak 125ml', 5, '', '', '3.000'),
(41, 'indomilk botol', 5, '', '', '4.000'),
(42, 'teh sosro botol', 5, '38.500', '', '4.500'),
(43, 'ultra kacang hijau 125 ml', 5, '', '', '3.000'),
(44, 'ultra kcg hijau 250ml', 5, '79.500', '', '5.000'),
(45, 'buavita', 5, '133.500', '', '6.500'),
(46, 'mogu mogu', 5, '', '', '8.500'),
(47, 'nui grentea', 5, '104.500', '', '5.000'),
(48, 'nata de coco kara', 5, '72.000', '', '3.500'),
(49, 'teh pucuk', 5, '53.000', '60.000', '3.000'),
(50, 'hydrococo 250ml', 5, '116.000', '', '5.500'),
(51, 'kop[ko botol', 5, '47.500', '', '5.000'),
(52, 'nutryboost', 5, '60.000', '', '6.500'),
(53, 'milku 200ml', 5, '28.500', '31.000', '3.000'),
(54, 'oky jely 150ml', 5, '18.000', '20.000', '1.000'),
(55, 'okky jely jumbo', 5, '33.000', '38.000', '2.000'),
(57, 'ale ale', 5, '18.250', '20.000', '1.000'),
(58, 'aqua gelas', 5, '28.500', '30.000', ''),
(59, 'aqua 330ml', 5, '34.500', '40.000', '2.000'),
(60, 'aqua 600ml', 5, '50.000', '55.000', '2.500'),
(61, 'aqua 1500ml', 5, '49.800', '55.000', '5.000'),
(62, 'vit gelas', 5, '17.500', '20.000', ''),
(65, 'mizoon', 5, '31.000', '', '4.500'),
(66, 'yasmin gelas', 5, '13.500', '17.000', '500'),
(67, 'sania 2 liter', 1, '', '', '37.000'),
(68, 'fortune 1 liter', 1, '203.000', '', '18.500'),
(69, ' fortune 2 liter', 1, '', '', '37.000'),
(70, 'resto bantal kecil (360ml', 1, '151.000', '', '7.500'),
(71, 'Resto bantal besar (720ml)', 1, '150.000', '', '14.000'),
(72, 'minyak curah 1 dligen 16 kg', 1, '283.000', '', '20.000'),
(73, 'Danhil putih 16', 10, '', '', '25.000'),
(74, 'Dunhil putih 20', 10, '', '', '32.000'),
(75, 'Dunhil hitam 16', 10, '', '', '23.000'),
(76, 'Lucky Strik merah', 10, '253.500', '', '27.000'),
(77, 'sampurna milk 12', 10, '166.000', '', '18.000'),
(78, 'Sampurna mild 16', 10, '235.750', '', '25.000'),
(79, 'Sampurna kretek', 10, '117.000', '', '13.500'),
(80, 'Sampurna 234 (Marun)', 10, '106.000', '', '12.000'),
(82, 'Jarum coklat', 10, '128.500', '', '14.000'),
(83, 'jarum extra', 10, '', '', '14.000'),
(84, 'Mustang', 10, '134.500', '', '14.500'),
(85, 'Evo', 10, '152.000', '', '17.000'),
(86, 'Samsu 234', 10, '159.500', '', '17.500'),
(87, 'Samsu refil', 10, '183.500', '', '20.000'),
(88, 'Magnum hitam', 10, '166.990', '', '18.000'),
(89, 'Magnum blue', 10, '198.250', '', '22.000'),
(90, 'Ovolution mentol', 10, '294.500', '', '31.000'),
(91, 'Ovolution merah', 10, '294.000', '', '31.000'),
(92, 'Malboro filter 12', 10, '159.500', '', '17.500'),
(93, 'Malboro filter20', 10, '280.500', '', '30.000'),
(94, 'Malboro merah', 10, '296.500', '', '31.500'),
(95, 'Malboro putih', 10, '296.500', '', '31.500'),
(96, 'Malboro ice burst', 10, '296.500', '31.500', ''),
(97, 'Neslete', 10, '146.500', '16.000', ''),
(98, 'LA bold 12', 10, '', '', '18.000'),
(99, 'LA BOLD 20', 10, '247.500', '', '26.500'),
(100, 'GG Filter', 10, '364.500', '20.000', '2.000'),
(101, 'GG Signatur', 10, '', '', '18.000'),
(102, 'GG merah', 10, '', '', '14.000'),
(103, 'GG Surya 16', 10, '233.000', '', '25.000'),
(104, 'GG Pro', 10, '200.500', '', '22.000'),
(105, 'Mld putih', 10, '', '', '28.000'),
(106, 'MLD Blac', 10, '226.500', '', '24.000'),
(107, 'Wismilak slim', 10, '141.250', '', '14.500'),
(108, 'Aroma bold 12', 10, '109.500', '', '12.000'),
(109, 'Ultra mild', 10, '203.500', '', '22.000'),
(110, 'lasmild', 10, '216.000', '', '23.500'),
(111, 'Envio', 10, '', '', '9.500'),
(112, 'Ziga', 10, '106.750', '', '12.000'),
(113, 'Camel 12', 10, '', '', '12.000'),
(114, 'amel 16', 10, '', '', '25.000'),
(115, 'Apace', 10, '', '', '9.000'),
(116, 'ladang kopi', 10, '', '', '7.000'),
(117, 'Rinso saset bubuk', 2, '', '', '1.000'),
(118, 'Rinso bubuk 400 gr', 2, '', '', '10.000'),
(119, 'Rinso bubuk 900 gr', 2, '', '', '19.000'),
(120, 'Rinso cair saset', 2, '', '', '1.000'),
(121, 'Rinso cair 800ml', 2, '', '', '17.000'),
(122, 'Soklin saset bubuk', 2, '', '', '1.000'),
(123, 'Soklin bubuk 800 gr', 2, '', '', '19.000'),
(124, 'Soklin cair saset', 2, '', '', '1.000'),
(125, 'Soklin cair 800 ml', 2, '', '', '18.000'),
(126, 'Daia bubuk saset', 2, '', '', '1.000'),
(127, 'Daia bubuk 800 9r', 2, '', '', '18.000'),
(128, 'Attack Jaz I bubuk saset (144)', 2, '107.000', '', '1.000'),
(129, 'Attack jaz I 800 gr (12)', 2, '160.000', '', '16.000'),
(130, 'Boom deterjen', 2, '', '', '5.000'),
(131, 'Ekonomi  EP 350 K', 2, '', '', '1.000'),
(132, 'Ekonomi EP 500 K', 2, '', '', '2.000'),
(133, 'Ekonomi EP 900 K', 2, '', '', '5.000'),
(134, 'Sunligh 115 ml', 2, '111.500', '120.000', '2.000'),
(135, 'Sunligh 210 ml', 2, '', '', '5.000'),
(136, 'Sunligh 400 ml', 2, '', '', '8.500'),
(137, 'Sunligh 755ml', 2, '', '', '15.000'),
(138, 'mama lemon 115 ml', 2, '', '', '2.000'),
(139, 'Mama lemon 230 ml', 2, '76.500', '', '4.000'),
(140, 'Mama lemon 400 ml', 2, '', '', '9.000'),
(141, 'Lifeboy cair 250 ml', 2, '', '', '16.000'),
(142, 'Lux refil 250 ml', 2, '', '', '16.000'),
(143, 'nuvo refil 60 ml', 2, '', '', '3.000'),
(144, 'Detol refil 250 ml', 2, '', '', '21.000'),
(145, 'lifeboy batangan', 2, '', '', '3.000'),
(146, 'Lux batangan', 2, '', '', '3.500'),
(147, 'Shinzui batangan', 2, '', '', '4.000'),
(148, 'Detol kecil batangan', 2, '', '', '4.000'),
(149, 'May beby batangan ', 2, '', '', '3.500'),
(150, 'Nuvo batangan', 2, '', '', '2.500'),
(151, 'Give batangan', 2, '', '', '2.500'),
(152, 'Citra batangan', 2, '', '', '2.500'),
(153, 'Asepso batangan', 2, '', '', '7.000'),
(154, 'Soklin pewangi 800ml', 2, '121.000', '', '12.000'),
(155, 'Soklin Softoner 800 ml', 2, '', '', '13.000'),
(156, 'Molto pewangi 800 ml', 2, '', '', '12.000'),
(157, 'Indomi goreng', 6, '96.525', '100.000', '3.000'),
(158, 'Indomi kari ayam', 6, '97.400', '100.000', '3.000'),
(159, 'Indomi special', 6, '', '', '2.750'),
(160, 'Indomi BW/soto', 6, '91.275', '95.000', '2.500'),
(161, 'Indomi jumbo', 6, '72.275', '75.000', '4.000'),
(162, 'Mie sedap goreng', 6, '96.000', '97.000', '2.750'),
(163, 'Mie sedap kuah', 6, '90.000', '95.000', '2.500'),
(164, 'lemonilo GR/BW', 6, '97.000', '100.000', '6.000'),
(165, 'Sarimi bw', 6, '', '', '2.500'),
(166, 'Super bihun gr/bw', 6, '', '', '3.500'),
(167, 'Sarimi 2 bw/soto', 6, '', '', '3.500'),
(168, 'Sarimi 2 gr', 6, '', '', '4.000'),
(169, 'mie telor 3 ayam', 6, '', '', '4.500'),
(170, 'Mie atom bulan', 6, '', '', '5.000'),
(173, 'Kapal api mix', 3, '118.000', '125.000', '1.500'),
(174, 'Kopi abc susu', 3, '118.000', '', '1.250'),
(175, 'TORABIKA SUSU', 3, '', '', '1.500'),
(176, 'Charm nigh 35cm isi 12', 15, '14.500', '', '17.000'),
(177, 'Kacang Ijo', 12, '19.400', '25.000', '7.000'),
(178, 'Bumbu Indofod', 12, '4.750', '6.000', '6.000'),
(179, 'Makaroni HNG Kotak', 12, '4.650', '6.000', '6.000'),
(180, 'Jahe merah AMH', 3, '7.000', '9.000', '1.000'),
(181, 'Pronas saset', 12, '59.500', '65.000', '6.000'),
(182, 'Neslete B merah/ K.ijo', 3, '11.500', '13.000', '2.000'),
(183, '1 lbr Dancow Coklat/putih', 3, '28.500', '30.000', '3.500'),
(184, '1 pak abc saos sambal stick 8 gr', 12, '6.250', '7.500', '500'),
(185, '1pak saos tomat abc stick 8 gr', 12, '', '6.500', '500'),
(186, '1pak saos tomat abc stick 8 gr', 12, '5.400', '6.500', '500'),
(187, '1 lbr tp. kobe kentaki chrispy', 9, '15.000', '17.500', '2.000'),
(188, '1 Lbr tepung sasa', 9, '19.750', '22.000', '2.500'),
(189, 'Garam k', 12, '47.000', '52.000', '2.000'),
(190, 'Garam B', 12, '47.000', '52.000', '4.000'),
(191, '1Lbr keju prochis isi 2', 12, '14.500', '17.000', '2.000'),
(192, 'Vit Botol 550 ml', 5, '30.000', '35.000', '2.000'),
(193, 'Mayzon', 5, '40.000', '45.000', '4.000'),
(194, 'chiki kentang 2000', 14, '53.500', '58.000', '2.000'),
(195, 'Kopi cup jumbo', 5, '26.000', '30.000', '2.000'),
(196, 'Hidrococo', 5, '114.000', '120.000', '5.500'),
(197, 'Pulpy orange gelas', 5, '35.500', '40.000', '2.000'),
(198, 'Le mineral 330 ml', 5, '31.500', '35.000', '2.000'),
(199, 'saos tiram saset', 12, '240.000', '', '2.500'),
(200, 'Cincau panda', 5, '90.000', '', '5.000'),
(201, 'Soklin lantai 60 ml {48}', 16, '37.500', '', '1.000'),
(202, 'Wafelo kecil 10 pcs', 7, '8.500', '10.000', '1.000'),
(203, 'Wafelo besar 10 pcs', 7, '18.000', '20.000', '2.000'),
(204, 'susu Diamont 200 ml', 5, '85.000', '95.000', '4.500'),
(205, 'golda', 5, '28.900', '33.000', '3.000'),
(206, 'Wipol 240ml {24)', 16, '99.100', '110.000', '5.000'),
(207, 'Tolak angin {12}', 11, '33.000', '36.000', '3.500'),
(208, '1Dus  ABC Kopi susu  (12 Lbr}', 3, '117.000', '12.500', '1.250'),
(209, 'Ripik hijau {12 pcs}', 7, '21.000', '23.000', '2.000'),
(210, 'Agar inaco isi 25', 7, '10.000', '12.000', '500'),
(211, 'Roma kelapa 30 gr {4x7)', 7, '185.000', '', '8.000'),
(212, 'MR Nata 5x10', 5, '85.000', '', '2.000'),
(213, 'Kispray Gold saset', 2, '10.000', '11.000', '1.000'),
(214, 'Batu baterai abc A2  (24)', 12, '46.000', '', '2.500'),
(215, 'Korek tokai (50)', 12, '80.000', '', '2.000'),
(216, 'Bolpen standar AE7 (12)', 12, '16.500', '', '2.000'),
(217, 'Bolpen faster C 600 (12)', 12, '20.000', '', '2.500'),
(218, 'Zink sampo (1Lbr)', 2, '5.000', '', '500'),
(219, 'Ultra mild', 10, '212.000', '', '23.000'),
(220, 'Rexona saset (12)', 11, '25.000', '', '2.500'),
(221, 'Antangin cair anak (5)', 11, '8.750', '10.000', '2.000'),
(222, 'Insto tetes mata (12)', 11, '140.000', '', '14.000'),
(223, 'Asam jawa panjang (20)', 8, '33.500', '', '2.500'),
(224, 'Teh sosro celup kotak (10)', 3, '44.000', '', '5.500'),
(225, 'Gooday capucino saset (12x10)', 3, '171.000', '18.000', '2.000'),
(226, 'sun kara 200ml (12)', 1, '80.000', '', '8.000'),
(227, 'Mie sedap goreng', 6, '92.500', '98.000', '2.750'),
(228, 'Bumbu racik indofod (1lbr)', 12, '15.000', '17.500', '2.000'),
(229, 'Jarum super', 10, '180.500', '20.000', '2.000'),
(230, 'Liong bulan 1/4 (2)', 3, '26.500', '30.000', '15.000'),
(231, 'Roma gandum coklat 115 gr', 7, '5.350', '6.000', '6.000'),
(232, 'Nabati pocket 1000 (20)', 7, '17.000', '19.000', '1.000'),
(233, 'Mie gelas 1000  (10)', 6, '8.500', '9.500', '1.000'),
(234, 'Gula merah batok (10)', 12, '136.000', '17.000', ''),
(235, 'Gula merah 1/4', 12, '', '5.000', ''),
(236, 'Soklin bubuk 770 gr (12)', 2, '212.000', '', '19.000'),
(237, 'Soklin Liquit 45 ml (120)', 2, '93.000', '', '1.000'),
(238, 'Energen vnl/ckl (16x10)', 3, '215.000', '16.000', '2.000'),
(239, 'Top kopi gula aren (120)', 3, '89.650', '9.000', '1.000'),
(240, 'Kara santan 200ml (10)', 1, '72.000', '', '9.000'),
(241, 'Tictack pilus 1000 (10)', 7, '8.500', '9.500', '1.000'),
(242, 'Taro', 14, '50.000', '55.000', '1.000'),
(243, 'Bendera coklat saset (120)', 3, '136.000', '145.000', '1.500'),
(244, 'Bendera putih saset (120)', 3, '136.000', '145.000', '1.500'),
(245, 'Soklin pewangi 800ml (12)', 2, '122.600', '', '12.000'),
(246, 'Kertas nasi (5 PAK)', 8, '27.500', '30.000', '1.000'),
(247, 'Saos sambal abc botol mini 135 ml (135)', 12, '215.000', '', '6.000'),
(248, 'Sirup ABC orange (12)', 5, '117.000', '125.000', '12.000'),
(249, 'Mie shor', 7, '55.000', '60.000', '500'),
(250, 'Yupi permen (24)', 4, '10.000', '11.500', '500'),
(251, 'Dancow instant saset (160)', 3, '430.000', '', '3.500'),
(252, 'Bawang bombay (1 kg)', 12, '12.000', '', '15.000'),
(253, 'Chitato', 14, '99.000', '105.000', '2.000'),
(254, 'Chitato lite', 14, '99.000', '105.000', '2.000'),
(255, 'Milkwat botol besar 130 ml (32)', 5, '75.000', '', '3.000'),
(256, 'Milkwat botol kecil  65 ml (60)', 5, '', '', '2.000'),
(257, 'Emping super (5kg)', 13, '257.000', '300.000', '17.005'),
(258, 'Roma malkis manis 1000 (12x10)', 7, '97.000', '11.000', '1.000'),
(259, 'Kopiko 78 btl late', 5, '47.000', '', '5.000'),
(260, 'Super bubur (40)', 6, '97.000', '', '3.000'),
(261, 'Tisu paseo 250 shet (48)', 15, '407.000', '', '11.000'),
(262, 'Mie sedap ayam bakar limau (40)', 6, '85.000', '90.000', '2.500'),
(263, 'Give sabun batangan (72)', 2, '126.000', '', '2.500'),
(264, 'pasta pandan kupu2 (6)', 8, '27.500', '', '5.500'),
(265, 'Mayones lewis 1 kg', 1, '20.000', '', '23.000'),
(266, 'keju kraf 35 gr (8)', 8, '32.000', '', '5.000'),
(267, 'Nabati Ahg 500(10)', 7, '8.750', '9.500', '500'),
(268, 'Promag tablet (12 Lbr)', 11, '78.000', '8.000', '1.000'),
(269, 'kispray pouch gold refil', 2, '5.750', '', '7.000'),
(270, 'Kispray botol 31ml ', 2, '14.000', '', '17.500'),
(271, 'Kispray refil 300ml  biasa (12)', 2, '54.000', '', '6.000'),
(272, 'Adem sari saset (24)', 11, '43.000', '', '2.500'),
(273, 'Pixy deo stick', 11, '10.000', '', '12.000'),
(274, 'Jarum jahit', 11, '9.000', '', '11.000'),
(275, 'Ovaltin cookies (12)', 7, '21.500', '23.000', '2.000'),
(276, 'Nextar 2000 (10)', 7, '17.500', '19.000', '2.000'),
(277, 'Sagu keju 500 (20)', 7, '8.750', '9.500', '500'),
(278, 'Teh sosro botol 350 ml (12)', 5, '38.500', '', '4.500'),
(279, 'Sari gandum coklat 2000 (12)', 7, '21.000', '23.000', '2.000'),
(280, 'mie gemes enak (60)', 7, '50.000', '55.000', '1.000'),
(281, 'Nabati wafer 2000 (60)', 7, '98.000', '', '2.000'),
(282, 'Gasby minyak rambut (24)', 15, '19.500', '', '500'),
(283, 'Sukro 2000(20)', 7, '36.500', '', '2.000'),
(284, 'Goodtime 16 gr 10x12)', 7, '99.000', '22.500', '2.000'),
(285, 'Rinbie (4x20)', 14, '63.000', '', '2.000'),
(286, 'Kalpa beng (12)', 7, '20.000', '22.000', '2.000'),
(287, 'Oreo mini (20)', 7, '17.000', '19.000', '2.000'),
(288, 'Oreo bolu (12)', 7, '20.000', '22.000', '2.000'),
(289, 'Wfello 2000 (12x5)', 7, '102.000', '9.500', '2.000'),
(290, 'Sakura mie (40)', 6, '53.275', '57.500', '1.700'),
(291, 'Ssarimi 2 goreng (24)', 6, '72.000', '78.000', '4.000'),
(292, 'Swallow sandal jepit (6)', 12, '61.000', '', '12.000'),
(293, 'Oreo Biskwit (12)', 7, '20.000', '22.000', '2.000'),
(294, 'Liong kopi 80 gr (10)', 3, '52.500', '58.000', '6.000'),
(295, 'Selection kapas kecil 100 gr (12)', 15, '40.000', '', '4.000'),
(296, 'Le Minerale Botol 600ml (24)', 5, '39.000', '45.000', '2.500'),
(297, 'Kacang ijo ultra (24)', 5, '80.200', '90.000', '5.000'),
(298, 'Coca cola botol 390ml (12)', 5, '44.850', '50.000', '5.000'),
(299, 'Frisian Flag putih kaleng', 3, '9.640', '11.500', '11.500'),
(300, 'Sagu gunung kemasan 1/2 kg (20)', 9, '83.500', '', '5.000'),
(301, 'Kecap bango 60 ml (48)', 1, '112.000', '', '3.000'),
(302, 'Kecap bango 220ml (24)', 1, '233.500', '', '11.000'),
(303, 'Makaroni usus 1 kg (10 bks)', 12, '146.000', '17.000', '17.000'),
(304, 'Soun kaca 60 gr (90)', 12, '85.000', '', '1.500'),
(305, 'Sosos Nice 1000 (25)', 7, '18.500', '22.000', '1.000'),
(306, 'sosis otak2 gaga 1000 (24)', 7, '18.500', '22.000', '1.000'),
(307, 'Viva air mawar (6)', 11, '54.000', '', '6.000'),
(308, 'Teh kotak sosro 200 ml (24)', 5, '64.750', '75.000', '3.500'),
(309, 'Larutan K 3 Botol kecil (48)', 5, '125.800', '', '3.500'),
(310, 'Pocari botol 500 ml (24)', 5, '137.500', '', '7.000'),
(311, 'Indomi BW/soto', 6, '91.000', '97.000', '25.000'),
(312, 'Meet lampu 7 watt', 8, '15.000', '17.500', '17.500'),
(313, 'Meet lampu 9 Watt', 8, '16.500', '20.000', '20.000'),
(314, 'Meet 12 Watt', 8, '21.000', '24.000', '24.000'),
(315, 'Optima lampu', 8, '8.000', '10.000', '10.000'),
(316, 'Popmi mini', 6, '2.650', '4.000', '4.000'),
(317, 'Popmi gledek', 6, '4.500', '5.500', '5.500'),
(318, 'Popmi ayam', 6, '3.800', '5.000', '5.000'),
(319, 'Susu botol indomild', 5, '3.250', '4.000', '4.000'),
(320, 'Chiki ball (60)', 14, '49.000', '55.000', '1.000'),
(321, 'Aqua Botol 1500ml', 5, '49.500', '55.000', '5.000'),
(322, 'Vit botol 200 ml (24)', 5, '17.500', '20.000', '1.500'),
(323, 'Slay olay (12)', 7, '10.000', '11.500', '1.000'),
(324, 'Okky jelly kecil (24)', 5, '18.900', '20.000', '1.000'),
(325, 'sosis so nice ayam/sapi 21 gr (24)', 7, '18.700', '21.000', '1.000'),
(326, 'Floredina florida botol 0ranye (12)', 5, '20.850', '32.000', '3.000'),
(327, 'Head & Shoulder Renceng 10ml (12Lbr)', 2, '9.800', '11.000', '1.000'),
(328, 'Pulpy orange btl 300 ml (12)', 5, '38.900', '45.000', '4.500'),
(334, 'tropikal 3lt', 1, '500.000', '520.000', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_barang`
--

CREATE TABLE `jenis_barang` (
  `id_jenis` int(11) NOT NULL,
  `jenis_barang` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jenis_barang`
--

INSERT INTO `jenis_barang` (`id_jenis`, `jenis_barang`) VALUES
(1, 'minyak'),
(2, 'sabun'),
(3, 'kopi'),
(4, 'permen'),
(5, 'minuman'),
(6, 'mie instan'),
(7, 'jajanan'),
(8, 'plastik'),
(9, 'tepung'),
(10, 'rokok'),
(11, 'Obat'),
(12, 'campuran'),
(13, 'krupuk'),
(14, 'chiki'),
(15, 'pampers'),
(16, 'Pembersih'),
(17, 'buku & alat tul'),
(18, 'kosmetik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `alamat`) VALUES
(1, 'bagas', 'blok G'),
(2, 'dora', 'blok G'),
(3, 'yoyo', 'blok G'),
(4, 'wayan', 'blok F'),
(5, 'nana', 'bawah'),
(23, 'yoyo', 'g'),
(25, 'wayan', 'F');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_pelanggan` int(11) NOT NULL,
  `id_hutang` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` text NOT NULL,
  `hutang` varchar(50) NOT NULL,
  `bayar` varchar(50) NOT NULL,
  `total` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_pelanggan`, `id_hutang`, `tanggal`, `keterangan`, `hutang`, `bayar`, `total`) VALUES
(1, 14, '2021-09-15', 'KURANGAN', '50000', '', '50000'),
(2, 15, '2021-09-15', 'ROKOK SAMSU', '20000', '', '20000'),
(2, 16, '2021-09-15', 'kurang banyak', '1000', '', '21000'),
(2, 17, '2021-09-15', 'kurang lagi', '2000', '', '23000'),
(2, 25, '2021-09-15', 'kurang', '10000', '', '33000'),
(1, 26, '2021-09-15', 'belanja banyak HUTANG BANYAK', '500000', '', '550000'),
(1, 28, '2021-09-16', 'bayar setengah', '', '225000', '325000'),
(2, 29, '2021-09-16', 'kurangan rokok', '5000', '', '38000'),
(1, 30, '2021-09-20', 'kurangan', '10000', '', '335000'),
(1, 31, '2021-09-20', '', '', '33500', '301500'),
(1, 32, '2021-09-21', 'kurangan', '10000', '', '311500'),
(1, 33, '2021-09-21', '', '', '311500', '0'),
(23, 34, '2021-10-17', 'susu', '12000', '', '12000'),
(1, 35, '2021-10-17', 'rokok', '25000', '', '25000'),
(1, 36, '2021-10-17', 'setangah', '', '12500', '12500'),
(1, 38, '2021-10-25', '12500', '', '', '12500'),
(1, 39, '2021-10-25', 'bayar', '', '12500', '0');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `id_jenis` (`id_jenis`);

--
-- Indeks untuk tabel `jenis_barang`
--
ALTER TABLE `jenis_barang`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_hutang`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(115) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;

--
-- AUTO_INCREMENT untuk tabel `jenis_barang`
--
ALTER TABLE `jenis_barang`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_hutang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`id_jenis`) REFERENCES `jenis_barang` (`id_jenis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
