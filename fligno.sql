-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2019 at 12:25 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fligno`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_06_23_120312_create_profile_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profileimage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactnum` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `userid`, `address`, `profileimage`, `contactnum`, `created_at`, `updated_at`) VALUES
(1, '1', '67571 Trantow Dam\nPort Candidaberg, GA 58813-3551', 'profile.jpg', '+1402900542642', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(2, '2', '5806 Kuphal Shore\nLake Myra, WY 58530', '1561328271.png', '+6110955060477', '2019-06-23 13:49:23', '2019-06-23 14:17:51'),
(3, '3', '8303 Audrey Spurs Suite 425\nHicklemouth, OR 07672', 'profile.jpg', '+9339736384143', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(4, '4', '8047 Daniel Isle Suite 324\nKaitlintown, TN 73148-7711', 'profile.jpg', '+9762759050128', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(5, '5', '1547 Turcotte Views Apt. 828\nNew Herbertborough, FL 54583', 'profile.jpg', '+4078174861378', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(6, '6', '3144 Margret Oval\nRandallhaven, ME 52195-5808', 'profile.jpg', '+7424449375994', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(7, '7', '5855 Nettie Drive Suite 743\nLake Zita, NY 71034-1973', 'profile.jpg', '+8025461153755', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(8, '8', '789 Ryan Drive\nWildermanfort, MD 49713-1532', 'profile.jpg', '+2143191504590', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(9, '9', '3727 Durgan Stream\nSouth Ernestoburgh, KY 11110-2171', 'profile.jpg', '+2919104936692', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(10, '10', '607 Streich Station Apt. 936\nKaelafurt, IA 28696-8130', 'profile.jpg', '+8450806421771', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(11, '11', '6831 Bayer Rapids\nPort Laila, FL 72636', 'profile.jpg', '+9172940377172', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(12, '12', '643 Gleason Path Suite 614\nEast Loisfort, DC 51730-0648', 'profile.jpg', '+7706770826048', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(13, '13', '13508 Gudrun Forks Apt. 263\nCassietown, KY 79553', 'profile.jpg', '+8126176049323', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(14, '14', '749 Abel Dam\nNorth Alexzandermouth, NE 73034', 'profile.jpg', '+8108743465075', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(15, '15', '8115 Maryse Freeway\nHowemouth, RI 93720', 'profile.jpg', '+4839889966395', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(16, '16', '304 Reichert Canyon\nPort Ottisberg, NC 05938', 'profile.jpg', '+8411414320483', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(17, '17', '663 Guy Manors\nKathlynport, IN 09334-1106', 'profile.jpg', '+4202611957048', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(18, '18', '823 Christopher Meadow\nIsaiahland, WA 02899', 'profile.jpg', '+6141291648226', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(19, '19', '84601 Rod Motorway Apt. 699\nMargarettatown, AZ 95062', 'profile.jpg', '+1017815981595', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(20, '20', '28016 Paucek Glens\nUbaldoburgh, MT 67104', 'profile.jpg', '+7049467013384', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(21, '21', '32019 Cassandra Squares\nSouth Halton, WV 70010-9533', 'profile.jpg', '+7810271865854', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(22, '22', '2475 Fadel Drive\nTaniahaven, ID 41671', 'profile.jpg', '+8289428660672', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(23, '23', '53381 Brisa Station\nBrennanshire, NY 27788-4981', 'profile.jpg', '+2272787609572', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(24, '24', '85348 Hettinger Islands\nNataliemouth, OK 06040', 'profile.jpg', '+4686932936904', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(25, '25', '7552 Effertz Court\nKuphalview, KS 39010', 'profile.jpg', '+7558333894764', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(26, '26', '51410 Schaefer Mountain\nWest Dallas, IN 53237', 'profile.jpg', '+8457452203906', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(27, '27', '2480 Watsica River\nZulaufton, WY 60714', 'profile.jpg', '+6962026461727', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(28, '28', '9046 Mark Knolls\nWardberg, IN 64284-1268', 'profile.jpg', '+9640985824062', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(29, '29', '7437 Lonzo Light\nMcDermottstad, RI 93150-6682', 'profile.jpg', '+2273728208565', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(30, '30', '20486 Alf Squares Suite 794\nKimberlytown, MD 99650-4966', 'profile.jpg', '+1091395013959', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(31, '31', '79897 Klein Bypass Apt. 061\nEast Yasmine, NY 21501', 'profile.jpg', '+6797187388132', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(32, '32', '6868 Graham Ways\nSouth Florenciotown, DE 41148', 'profile.jpg', '+4210736735074', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(33, '33', '45863 Kris Locks Apt. 263\nWaylonhaven, SC 74897-4341', 'profile.jpg', '+4922449843461', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(34, '34', '42507 Mraz Lodge Suite 489\nLake Kurtisborough, VT 90874', 'profile.jpg', '+9080687417380', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(35, '35', '6550 Boyer Bypass Suite 022\nWymanland, AL 93076-7198', 'profile.jpg', '+1140045487579', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(36, '36', '415 Wilfrid Junctions\nNew Ignaciofort, MD 91219-4426', 'profile.jpg', '+7582296796994', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(37, '37', '27548 Kemmer Point Apt. 281\nHandport, LA 80491-2924', 'profile.jpg', '+1246786189154', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(38, '38', '529 Mann Shore Suite 940\nNew Sydnie, WV 55325-9561', 'profile.jpg', '+9450835647785', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(39, '39', '9682 Runolfsson Ferry\nNew Deontown, AL 69298', 'profile.jpg', '+1802908746771', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(40, '40', '23683 Jocelyn Track\nRyanshire, SC 83157-7760', 'profile.jpg', '+7739471126154', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(41, '41', '753 Alexane Square\nNew Dorthyside, TN 52691-4800', 'profile.jpg', '+3163815176295', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(42, '42', '57939 Kilback Falls Suite 382\nHeidenreichmouth, AR 17997-9423', 'profile.jpg', '+4747845535410', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(43, '43', '642 Kshlerin Cove Apt. 753\nNew Reyside, CT 00327-2963', 'profile.jpg', '+1821885829701', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(44, '44', '6427 Ruthe Throughway Suite 612\nHillstad, OR 56312-7493', 'profile.jpg', '+4739755051671', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(45, '45', '280 Skyla Summit\nLake Orphahaven, CT 25693', 'profile.jpg', '+6254513318484', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(46, '46', '5087 Buckridge Pines Suite 830\nWillmstown, VA 87490-7175', 'profile.jpg', '+1458477928829', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(47, '47', '78919 Scotty Streets\nLake Citlalliton, HI 09483', 'profile.jpg', '+4405980203624', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(48, '48', '44157 Torphy Gateway Apt. 299\nBradtkebury, MS 14525', 'profile.jpg', '+5393794773660', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(49, '49', '98703 Elza Springs\nCamillaburgh, MT 49668', 'profile.jpg', '+8230785991736', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(50, '50', '1248 Easton Prairie\nLehnerport, ME 49463', 'profile.jpg', '+4062366661757', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(51, '52', 'Aurora', '1561327497.png', '0909', '2019-06-23 13:58:30', '2019-06-23 14:04:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `usertype`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Marcella Barrows', 'piper.kunze@example.org', 'corrine.heathcote', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(2, 'Lupe Koss MD', 'jazlyn.ferry@example.com', 'skylar65', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(3, 'Prof. Edwin Jenkins', 'alejandrin.price@example.net', 'sigmund.turcotte', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(4, 'Roman Legros', 'amckenzie@example.com', 'mohr.rosamond', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(5, 'Jany Stanton', 'franecki.keegan@example.org', 'morton.denesik', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(6, 'Rachelle Blick', 'dena.dubuque@example.net', 'moen.enrique', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(7, 'Grady Stokes', 'wilderman.jerrell@example.net', 'abelardo91', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(8, 'Miss Jody Keeling', 'sdenesik@example.org', 'efahey', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(9, 'Jamil Hintz DDS', 'ismael.rempel@example.net', 'javon.mraz', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(10, 'Ms. Margot Hermiston', 'nkutch@example.com', 'jones.aurelie', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(11, 'Hattie Turner', 'julie.hahn@example.org', 'cmann', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(12, 'Laisha Ward', 'xander71@example.com', 'amcglynn', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(13, 'Prof. Easter Cole', 'cecilia.block@example.com', 'tabernathy', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(14, 'Prof. Maurice Hermiston', 'luna.breitenberg@example.net', 'drake56', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(15, 'Troy Hand', 'mara22@example.org', 'janiya78', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(16, 'Sammy Christiansen', 'ashields@example.org', 'jyundt', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(17, 'Troy Rosenbaum', 'eliezer04@example.com', 'ygibson', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(18, 'Cruz Leuschke', 'nnienow@example.org', 'watsica.edison', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(19, 'Melody Bashirian', 'cummings.esmeralda@example.net', 'bradtke.michaela', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(20, 'Boris Heaney', 'roscoe44@example.org', 'josue.lehner', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(21, 'Mr. Berta Donnelly', 'rgerhold@example.net', 'sshields', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(22, 'Esther Klocko', 'kautzer.norris@example.org', 'hermann.velma', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(23, 'Prof. Hugh Sipes', 'stoltenberg.daron@example.org', 'homenick.toy', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(24, 'Mr. Russel Zboncak I', 'feest.diana@example.com', 'misty.trantow', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(25, 'Shanny Becker', 'fwaters@example.net', 'jwisozk', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(26, 'Mr. Bradley Dach I', 'monica83@example.org', 'brakus.linda', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(27, 'Mrs. Dorothea Kemmer I', 'alysa.boyle@example.net', 'kwest', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(28, 'Wilson Turner', 'alivia60@example.com', 'jon48', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(29, 'Lavina Wehner', 'ressie.ernser@example.org', 'horace.larkin', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(30, 'Raymundo Pagac', 'dach.newton@example.com', 'ycronin', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(31, 'Dr. Raquel Cummings II', 'anya05@example.org', 'dawn.wehner', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(32, 'Miss Dulce Daugherty', 'aquigley@example.net', 'considine.virgil', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(33, 'Germaine Bergstrom PhD', 'bashirian.amalia@example.com', 'ashlynn.auer', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(34, 'Bonnie Glover', 'hodkiewicz.angel@example.net', 'aaliyah01', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(35, 'Troy Feil', 'xschmidt@example.org', 'tristin82', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(36, 'Janae Labadie', 'blanda.cristobal@example.net', 'ikutch', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(37, 'Ms. Maymie Bartell', 'thomenick@example.com', 'vgreen', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(38, 'Trent Rice', 'ellen.mann@example.net', 'bjakubowski', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(39, 'Dr. Icie Feil', 'buford99@example.com', 'dock58', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(40, 'Iva Runolfsdottir', 'kemmer.naomi@example.net', 'heber.will', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(41, 'Anastacio Robel', 'hcasper@example.net', 'janis63', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(42, 'Hallie Tremblay DVM', 'iquitzon@example.com', 'qhowell', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(43, 'Ms. Malika Langworth V', 'bauch.abner@example.net', 'lora.dach', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(44, 'Demond Gerlach', 'mabbott@example.com', 'electa.vonrueden', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(45, 'Dr. Jerome Ondricka', 'gus38@example.org', 'ahmed51', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(46, 'Mr. Demond Moen', 'larkin.baron@example.com', 'olson.domenico', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(47, 'Shanel Batz', 'constantin48@example.com', 'pmcclure', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(48, 'Liana Jakubowski', 'vernice.becker@example.net', 'lcummings', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(49, 'Denis Muller I', 'shanny.christiansen@example.com', 'hudson.lempi', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(50, 'Kailyn Collier', 'gbashirian@example.net', 'rutherford.ernestina', 'member', '2019-06-23 13:49:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-23 21:49:23', '2019-06-23 13:49:23', '2019-06-23 13:49:23'),
(52, 'Gegejosper Ceniza', 'admin@gmail.com', 'admin', 'member', NULL, '$2y$10$gKsVHvSckzMu5bU91M9ELuuTym5i0hkazKPHF70oK9A5Wr3vtbIfu', NULL, '2019-06-23 13:58:30', '2019-06-23 13:58:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
