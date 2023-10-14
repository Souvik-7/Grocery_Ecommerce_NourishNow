-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2023 at 07:22 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `role`, `email`, `mobile`, `status`) VALUES
(1, 'admin', 'admin', 0, '', '', 1),
(6, 'kingsoumitrahalder97@gmail.com', '123', 1, 'kingsoumitrahalder97@gmail.com', '8116739131', 1),
(10, 'souvikchattopadhyay', '768845', 1, 'www.scarysouvik7@gmail.com', '8016825701', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `productid` int(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `productid`, `qty`, `added_on`) VALUES
(66, 475958263, 20, 2, '2023-06-17 18:26:27'),
(67, 475958263, 26, 1, '2023-06-18 13:34:15'),
(68, 475958263, 36, 1, '2023-06-18 13:35:54'),
(71, 475958263, 32, 1, '2023-06-20 10:24:03');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(8, 'Rice', 1),
(10, 'Oil', 1),
(11, 'Veggies', 1),
(12, 'Atta', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(5, 'vfchyjbn', 'ufrcjvhfcbmg@gmail.com', '8116739131', 'kjbhg jdhnbdh,vgj', '0000-00-00 00:00:00'),
(6, 'vjyvrtvyvg', 'jhhg@gmail.com', '8116739131', 'htrdfghuh7t6rtf', '0000-00-00 00:00:00'),
(7, 'htrdcvhuyfg', 'hgfhg@gmail.com', '8529637410', 'kjuytfdcvjuytfgvb', '2023-04-21 21:06:13');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `user_id`, `order_id`, `product_id`, `qty`, `price`, `added_on`) VALUES
(23, 475958263, 937337062, 22, 3, 375, '2023-06-17 11:04:26'),
(24, 475958263, 1344930597, 25, 1, 27, '2023-06-17 11:32:52'),
(25, 904895891, 220351473, 94, 1, 799, '2023-06-21 00:02:00'),
(26, 904895891, 220351473, 120, 1, 17, '2023-06-21 00:02:00'),
(27, 904895891, 855426233, 16, 1, 840, '2023-06-21 12:50:25'),
(28, 904895891, 855426233, 23, 4, 600, '2023-06-21 12:50:25'),
(29, 904895891, 1258734566, 15, 1, 679, '2023-06-24 23:08:31'),
(30, 904895891, 1258734566, 16, 1, 840, '2023-06-24 23:08:31'),
(31, 904895891, 183701239, 15, 1, 679, '2023-06-24 23:27:30'),
(32, 904895891, 183701239, 16, 1, 840, '2023-06-24 23:27:30'),
(33, 904895891, 212673482, 15, 1, 679, '2023-06-24 23:46:04'),
(34, 904895891, 212673482, 16, 1, 840, '2023-06-24 23:46:04'),
(35, 904895891, 604923289, 15, 1, 679, '2023-06-24 23:55:27'),
(36, 904895891, 604923289, 16, 1, 840, '2023-06-24 23:55:27'),
(37, 904895891, 1277845715, 16, 1, 840, '2023-06-26 23:42:58'),
(38, 904895891, 1277845715, 17, 1, 970, '2023-06-26 23:42:58'),
(39, 904895891, 477896143, 15, 1, 679, '2023-06-27 00:00:40'),
(40, 904895891, 477896143, 16, 1, 840, '2023-06-27 00:00:40'),
(41, 904895891, 119887874, 15, 1, 679, '2023-06-27 00:08:06'),
(42, 904895891, 119887874, 23, 1, 150, '2023-06-27 00:08:06'),
(43, 904895891, 1457398701, 15, 13, 8827, '2023-06-27 00:24:27'),
(44, 904895891, 1457398701, 16, 1, 840, '2023-06-27 00:24:27'),
(45, 904895891, 1463397255, 15, 1, 679, '2023-06-27 22:30:18'),
(46, 904895891, 1463397255, 16, 6, 5040, '2023-06-27 22:30:18'),
(47, 904895891, 920953107, 16, 2, 1680, '2023-06-27 22:49:07'),
(48, 904895891, 920953107, 23, 3, 450, '2023-06-27 22:49:07');

-- --------------------------------------------------------

--
-- Table structure for table `order_document`
--

CREATE TABLE `order_document` (
  `id` int(11) NOT NULL,
  `user_id` int(255) NOT NULL,
  `address` varchar(250) NOT NULL,
  `state` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `total_price` float NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `order_status` varchar(11) NOT NULL,
  `ship_order_id` int(11) NOT NULL,
  `added_on` datetime NOT NULL,
  `order_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order_document`
--

INSERT INTO `order_document` (`id`, `user_id`, `address`, `state`, `pincode`, `payment_type`, `total_price`, `payment_status`, `order_status`, `ship_order_id`, `added_on`, `order_id`) VALUES
(3, 475958263, 'kalna', 'west bengal', 741404, 'COD', 742, 'pending', '1', 0, '2023-06-14 05:00:13', 0),
(0, 904895891, 'jirat', 'west ', 712501, 'COD', 1810, 'pending', 'pending', 639999251, '2023-06-26 23:43:01', 1277845715),
(0, 904895891, 'kalna', 'west ', 712501, 'COD', 1519, 'pending', 'pending', 189639224, '2023-06-27 00:00:47', 477896143),
(0, 904895891, 'nbdgvhdjf', 'west ', 712501, 'COD', 829, 'pending', 'pending', 539011235, '2023-06-27 00:08:14', 119887874),
(0, 904895891, 'jirat', 'west ', 712501, 'COD', 9667, 'pending', 'pending', 796685251, '2023-06-27 00:24:33', 1457398701),
(0, 904895891, 'ggujgyu ii', 'west ', 712501, 'COD', 5719, 'pending', 'pending', 1630745372, '2023-06-27 22:30:25', 1463397255),
(0, 904895891, 'kalna', 'west ', 712501, 'COD', 2130, 'pending', 'pending', 449334784, '2023-06-27 22:49:18', 920953107);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(255) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`, `order_id`, `user_id`, `added_on`) VALUES
(24, 'Processing', 1344930597, 475958263, '2023-06-17 11:32:52'),
(23, 'Processing', 937337062, 475958263, '2023-06-17 11:04:26'),
(25, 'Processing', 220351473, 904895891, '2023-06-21 00:02:00'),
(26, 'Processing', 220351473, 904895891, '2023-06-21 00:02:00'),
(27, 'Processing', 855426233, 904895891, '2023-06-21 12:50:25'),
(28, 'Processing', 855426233, 904895891, '2023-06-21 12:50:25'),
(29, 'Processing', 1258734566, 904895891, '2023-06-24 23:08:31'),
(30, 'Processing', 1258734566, 904895891, '2023-06-24 23:08:31'),
(31, 'Processing', 183701239, 904895891, '2023-06-24 23:27:30'),
(32, 'Processing', 183701239, 904895891, '2023-06-24 23:27:30'),
(33, 'Processing', 212673482, 904895891, '2023-06-24 23:46:04'),
(34, 'Processing', 212673482, 904895891, '2023-06-24 23:46:04'),
(35, 'Processing', 604923289, 904895891, '2023-06-24 23:55:27'),
(36, 'Processing', 604923289, 904895891, '2023-06-24 23:55:27'),
(37, 'Processing', 1277845715, 904895891, '2023-06-26 23:42:58'),
(38, 'Processing', 1277845715, 904895891, '2023-06-26 23:42:58'),
(39, 'Processing', 477896143, 904895891, '2023-06-27 00:00:40'),
(40, 'Processing', 477896143, 904895891, '2023-06-27 00:00:40'),
(41, 'Processing', 119887874, 904895891, '2023-06-27 00:08:06'),
(42, 'Processing', 119887874, 904895891, '2023-06-27 00:08:06'),
(43, 'Processing', 1457398701, 904895891, '2023-06-27 00:24:27'),
(44, 'Processing', 1457398701, 904895891, '2023-06-27 00:24:27'),
(45, 'Processing', 1463397255, 904895891, '2023-06-27 22:30:18'),
(46, 'Processing', 1463397255, 904895891, '2023-06-27 22:30:18'),
(47, 'Processing', 920953107, 904895891, '2023-06-27 22:49:07'),
(48, 'Processing', 920953107, 904895891, '2023-06-27 22:49:07');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `categories_name` varchar(255) NOT NULL,
  `sub_categories_id` int(11) NOT NULL,
  `sub_categories` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `best_seller` int(11) NOT NULL,
  `meta_title` varchar(2000) NOT NULL,
  `meta_desc` varchar(2000) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `added_by` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `categories_name`, `sub_categories_id`, `sub_categories`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `best_seller`, `meta_title`, `meta_desc`, `meta_keyword`, `added_by`, `status`) VALUES
(15, 8, '', 5, '', 'India Gate Basmati Rice Super 5kg', 1080, 679, 0, '605022890_WhatsApp Image 2023-04-14 at 8.09.04 PM.jpeg', 'India Gate\r\n90% positive ratings from 50K+ customers\r\n50K+ recent orders from this brand\r\n7+ years on Amazon', 'Brand	India Gate\r\nDiet Type	Vegetarian\r\nUnits	5000.0 gram\r\nWeight	5000 Grams\r\nVariety	Basmati Rice', 1, 'Basmati Rice 5kg', 'Basmati Rice 5kg', 'Basmati Rice 5kg', 1, 1),
(16, 8, '', 5, '', 'India Gate Basmati Rice Everyday 5 kg', 1100, 840, 4, '256426447_71W1XCVDlML._SL1500_.jpg', 'India Gate\\r\\n90% positive ratings from 50K+ customers\\r\\n50K+ recent orders from this brand\\r\\n7+ years on Amazon', 'Brand	India Gate\r\nDiet Type	Vegetarian\r\nUnits	5000.0 gram\r\nWeight	5000 Grams\r\nVariety	Basmati Rice', 1, 'India Gate Basmati Rice Everyday 5 kg', 'India Gate Basmati Rice Everyday 5 kg', 'India Gate Basmati Rice Everyday 5 kg', 1, 1),
(17, 8, '', 5, '', 'India Gate Basmati Rice Daily Premium 5 kg', 1049, 970, 19, '310809884_71Wpn-DmYVL._SL1500_.jpg', '90% positive ratings from 50K+ customers\r\n50K+ recent orders from this brand\r\n7+ years on Amazon', 'Brand	India Gate\r\nDiet Type	Vegetarian\r\nUnits	5000.0 gram\r\nWeight	5000 Grams\r\nVariety	Basmati Rice', 1, 'India Gate Basmati Rice Daily Premium 5 kg', 'India Gate Basmati Rice Daily Premium 5 kg', 'India Gate Basmati Rice Daily Premium 5 kg', 1, 1),
(18, 8, 'Rice', 5, 'Basmati Rice', 'Daawat Rozana Super Basmati Rice 5 Kg', 486, 359, 20, '636574461_810jp1zceeL._SL1500_.jpg', 'Rozana is above medium length product\r\nOriginal basmati nourished by snow fed rivers of great Himalayas\r\nCountry of Origin: India\r\nMaterial Features: Vegetarian; Item Form: Grain', 'Brand	DAAWAT\r\nNumber of Items	1\r\nUnits	5000.0 gram\r\nWeight	5000 Grams\r\nPackage Information	Bag', 1, 'Daawat Rozana Super Basmati Rice 5 Kg', 'Daawat  Super Basmati Rice 5 Kg', 'Daawat Rozana Super Basmati Rice 5 Kg', 1, 1),
(20, 12, '', 24, '', 'Aashirvaad Atta 5 kg', 342, 304, 20, '333127781_91SWDnldaaL._SL1500_.jpg', 'Brand	Aashirvaad\r\nWeight	5 Kilograms\r\nSpecialty	Vegetarian\r\nDiet Type	Vegetarian\r\nPackage Weight	5.05 Kilograms\r\nForm	Raw\r\nNumber of Items	1\r\nUnits	5000 gram', 'Aashirvaad Atta with Multigrains is high in fibre which aids in digestion\r\n3 rotis made from Multigrain Atta fulfill 35% of your daily fibre requirement\r\nRotis made from Aashirvaad Atta with Multigrains taste just like your regular atta\r\nAashirvaad Atta with Multigrains is a blend of 6 natural grains – wheat, maize, soya, channa, oats, psyllium husk\r\nFrom India’s No. 1 Atta brand, Aashirvaad Atta with Multigrains is made with love in India with the grains sourced from the fields across the country', 1, 'Aashirvaad Atta 5 kg', 'Aashirvaad Atta 5 kg', 'Aashirvaad Atta 5 kg', 1, 1),
(21, 12, '', 25, '', 'Fortune Chakki Fresh Atta 5kg', 250, 245, 20, '162990101_61AOiVfvtBL.jpg', 'Brand	FORTUNE\r\nWeight	230 Grams\r\nAllergen Information	Fat-Free\r\nSpecialty	Vegetarian\r\nDiet Type	Vegetarian\r\nPackage Weight	5.2 Kilograms\r\nForm	Raw\r\nNumber of Items	1\r\nUnits	5000.0 gram', 'Made with superior wheat blend\r\nTraditional Chakki Process\r\nAbsorbs water more efficiently to make your rotis soft and fluffy\r\nIntensive wheat cleaning process and hygienic packaging\r\nHigh perfection in granulation\r\nAbsolutely pristine and untouched by hand\r\nNo preservatives added\r\nAssurance of consistent quality\r\nMade with superior wheat blend\r\nTraditional Chakki Process\r\nAbsorbs water more efficiently to make your rotis soft and fluffy\r\nIntensive wheat cleaning process and hygienic packaging\r\nHigh perfection in granulation\r\nAbsolutely pristine and untouched by hand\r\nNo preservatives added\r\nAssurance of consistent quality\r\nShow Less', 1, 'Fortune Chakki Fresh Atta 5kg', 'Fortune Chakki Fresh Atta 5kg', 'Fortune Chakki Fresh Atta 5kg', 1, 1),
(22, 10, '', 12, '', 'Fortune Soyabean Oil 1L', 150, 125, 20, '150448753_51GyUUKe-0L.jpg', 'Brand	FORTUNE\r\nFlavour	Soybean\r\nNet Content Volume	1 Litres, 1000 Millilitres\r\nItem Package Quantity	1\r\nForm	Liquid\r\nSpecialty	Vegetarian\r\nRecommended Uses For Product	Skin Care\r\nVolume	1 Litres\r\nWeight	910 Grams\r\nMaterial Feature	Vegetarian', 'Light, odourless and healthy oil\r\nCountry of Origin: India\r\nMaterial Features: Vegetarian;Item Form: Liquid;Flavor Name: Soybean\r\nform_factor:liquid | material_features:vegetarian\r\nallergen_information:allergen_free | ingredients:Soybean, Rich in Omega 3\r\nitem_form:liquid | flavor_name:soybean', 1, 'Fortune Soyabean Oil 1L', 'Fortune Soyabean Oil 1L', 'Fortune Soyabean Oil 1L', 1, 1),
(23, 10, 'Oil', 13, 'Mustard Oil', 'Fortune Premium Kachi Ghani Pure Mustard Oil 1L', 150, 150, 12, '994638898_41lBuao0+bL.jpg', 'Brand	FORTUNE\r\nFlavour	Mustard - Bottle\r\nNet Content Volume	1 Litres, 1000 Millilitres\r\nSpecial Feature	Cold Pressed\r\nItem Package Quantity	1\r\nForm	Oil\r\nSpecialty	Suitable for vegeterians\r\nRecommended Uses For Product	Cooking\r\nVolume	1 Litres\r\nWeight	910 Grams', 'Made from Cold Pressed (Kachi Ghani) Technology using Finest Mustard Seeds - Rich in Omega 3 & 6 that boost Immunity\r\nRich in Vitamins A,E and Beta Carotene\r\nNaturally Cholesterol Free\r\nHigh in PUFA (Poly Unsaturated Fatty Acids)\r\nHigh Pungency and Strong Aroma - Mustard Oil with Long Shelf Life', 1, 'Fortune Premium Kachi Ghani Pure Mustard Oil 1L', 'NA', 'NA', 1, 1),
(24, 10, '', 14, '', 'Jivo Olive Oil 1L', 749, 399, 20, '806031253_61WeDb2C0tL._SL1500_.jpg', 'Brand	JIVO\r\nDiet Type	Vegetarian\r\nFlavour	Neutral\r\nNet Content Volume	1 Litres, 1000 Millilitres\r\nMelting Temperature	100 Degrees Celsius\r\nLiquid Volume	1 Litres\r\nItem Package Quantity	1\r\nForm	Daily Consumables\r\nSpecialty	Preservatives Free\r\nRecommended Uses For Product', 'Gluten-Free\r\nLow-Cholesterol Content\r\nGood for Scalp Treatment\r\nPomace Oil keeps its nutrients when it heats, keeping food healthy and ideal for Cooking\r\nUsing pomace oil as massaging oil can gives a healthy and smooth skin\r\nHas light flavour & aroma, ensures minimal change in the taste of preparation.\r\nVitamin K in Pomace improves bone density and strength\r\nImproves bone density and strength\r\nHelps in faster healing\r\nStorage Instruction: Store in a cool, dry & hygienic place, away from direct heat & light.', 1, 'Jivo Olive Oil 1L', 'Jivo Olive Oil 1L', 'Jivo Olive Oil 1L', 1, 1),
(25, 11, '', 15, '', 'Chandramukhi Potato 1Kg', 34, 27, 20, '916626487_chandramukhi aloo.jpg', 'Fresh Product\r\nDirect from field\r\nNatural Product', 'Fresh Product\r\nDirect from field\r\nNatural Product', 1, 'Chandramukhi Potato 1 kg', 'NA', 'NA', 1, 1),
(26, 11, '', 15, '', 'Jyoti Potato 1Kg', 25, 22, 20, '674585129_Jyoti Aaloo.jpg', 'Direct from field\r\nNature Fresh', 'Direct from field\r\nNature Fresh', 1, 'Jyoti Potato', 'NA', 'NA', 1, 1),
(27, 11, '', 15, '', 'Baby Potato 500gm', 15, 13, 20, '738267076_baby aaloo.jpg', 'Nature Fresh', 'Nature Fresh', 1, 'Baby Potato 500gm', 'NA', 'NA', 1, 1),
(28, 11, '', 16, '', 'Tomato 500gm', 24, 21, 20, '687662056_tomato.jpg', 'Tomatoes are a significant source of umami flavor.The tomato is consumed in diverse ways, raw or cooked, in many dishes, sauces, salads, and drinks. While tomatoes are fruits—botanically classified as berries—they are commonly used culinarily as a vegetable ingredient or side dish.', 'Fresh Tomato', 1, 'Tomato 500gm', 'NA', 'NA', 1, 1),
(29, 11, '', 17, '', 'Onion 1kg', 36, 30, 20, '439196534_Onion.jpg', 'Onion is a staple in India and are commonly chopped and used as an ingredient in various hearty warm dishes. They are versatile and can be baked, boiled, braised, grilled, fried, roasted, sautéed, or eaten raw in salads.', 'Fresh Product', 1, 'Onion 1Kg', 'NA', 'NA', 1, 1),
(30, 11, '', 18, '', 'Green Chilli 100G', 16, 13, 20, '518801400_Green Chili.jpg', 'Nature Fresh', 'Is Green Chilli Good for Health? Yes, Green chillies contain fewer calories, speed up your metabolism and help maintain a healthy digestive system. The antioxidants and vitamins in green chilli also provide multiple health benefits. They protect your body against free radicals and strengthen your immune system.', 1, 'Green Chilli 100G', 'NA', 'NA', 1, 1),
(31, 11, '', 19, '', 'Ginger 250gm', 54, 47, 20, '774083340_GINGER.jpg', 'Ginger is loaded with antioxidants, compounds that prevent stress and damage to your body\'s DNA. They may help your body fight off chronic diseases like high blood pressure, heart disease, and diseases of the lungs, plus promote healthy aging.', 'Nature Fresh Product', 1, 'Ginger 250gm', 'NA', 'NA', 1, 1),
(32, 11, '', 20, '', 'Cucumber 700-500gm', 42, 36, 20, '551150063_Cucumber.jpg', 'Cucumbers are crisp and refreshing, due to their high percentage of water. Cucumbers are eaten raw or cooked, or they can be pickled, providing a nutritional food source.', 'Fresh Nature Food', 1, 'Cucumber 700gm - 500 gm', 'NA', 'NA', 1, 1),
(33, 11, '', 21, '', 'Garlic 200gm', 40, 36, 20, '368415224_Garlic.jpg', 'Garlic is a herb, best known for flavouring and seasoning of food and is widely used in various cuisines ranging from desi cuisines like Tadka Dal to dishes such as Garlic Bread. Garlic seems to be used in virtually all cuisines as a strong flavoring agent.', 'Fresh Productt', 1, 'Garlic 200gm', 'NA', 'NA', 1, 1),
(34, 11, '', 22, '', 'Brinjal 700 - 500gm', 84, 70, 20, '453759907_Brinjal.jpg', 'Black Brinjal has a glossy and smooth blackish-purple skin with soft pulpy flesh. When cooked, it becomes tender and develops a rich and complex flavour. They can be cooked in various ways such as baking, barbecuing, frying or pickling..', 'Fresh Nature Product', 1, 'Brinjal 700 - 500 gm', 'NA', 'NA', 1, 1),
(35, 11, '', 23, '', 'Pumpkin 500gm', 17, 15, 20, '967916389_pumpkin.jpg', 'Green Pumpkin has a sweet taste and becomes tender and pulpy when cooked. It is most commonly used in making vegetable preparations, curries and chutneys due to its unique and subtly sweet taste.', 'Fresh Nature Product', 1, 'Pumpkin 500gm', 'NA', 'NA', 1, 1),
(36, 8, '', 6, '', 'Daawat Brown Rice 5kg', 750, 720, 20, '220406358_61pBqRtsNGS._SL1000_.jpg', 'Brand	DAAWAT\r\nNumber of Items	1\r\nUnits	5000.0 gram\r\nWeight	5000 Grams\r\nPackage Information	Bagv', 'Country of Origin: India\r\nWhole grain (Lower carbohydrates): Helps in overall health\r\nLower GI: Diabetic friendly\r\nZero cholesterol: Good for your heart and cardio vascular functioning\r\nHET processed and enriched with vitamins and minerals: For stronger immunity\r\nmaterial features:vegetarian', 1, 'Daawat Brown Rice 5kg', 'NA', 'NA', 1, 1),
(37, 8, '', 5, '', 'India Gate Brown Basmati Rice 1kg', 349, 299, 20, '605902125_brown rice.jpg', 'Brand	India Gate\r\nUnits	1000.0 gram\r\nWeight	1000 Grams\r\nPackage Information	Jar\r\nItem Package Quantity	1', 'Country of Origin: India\r\nGate special\r\nDelicious and Tasty\r\nCountry of Origin: India', 1, 'India Gate Brown Basmati Rice 1kg', 'NA', 'NA', 1, 1),
(38, 13, '', 27, '', 'Sunrise Pure Chicken Curry Masala Spice Powder Pouch, 50 g', 43, 36, 24, '121689387_chicken curry masla.jpg', 'Brand	Sunrise Pure\r\nVariety	Cinnamon,Garlic,Cumin,Ginger,Cardamom\r\nForm	Powder\r\nUnits	50.0 gram\r\nDiet Type	Vegetarian', 'For Sunrise Pure, quality is god. And god, they say, is in the details\r\nThe very first quality check takes place at the time of procuring raw materials, the next when the materials enter our plants\r\nThe raw materials then undergo cleaning, sorting, grading, low temperature grinding and state-of- the-art packaging, all of which are preceded and followed by stringent quality checks\r\nIt is this no-compromise attitude towards quality that gives us the confidence to promise you the best and bring you the purest', 1, 'Chicken Curry Masala', 'NA', 'NA', 1, 1),
(39, 13, '', 27, '', 'Sunrise Pure Cumin Spice Powder Pouch, 100 g', 69, 40, 20, '708946330_cumin zeera powder.jpg', 'Brand	Sunrise Pure\r\nVariety	Cumin\r\nForm	Powder\r\nUnits	100.0 gram\r\nDiet Type	Vegetarian', 'For Sunrise Pure, quality is god. And god, they say, is in the details\r\nThe very first quality check takes place at the time of procuring raw materials, the next when the materials enter our plants\r\nThe raw materials then undergo cleaning, sorting, grading, low temperature grinding and state-of- the-art packaging, all of which are preceded and followed by stringent quality checks\r\nIt is this no-compromise attitude towards quality that gives us the confidence to promise you the best and bring you the purest\r\nCountry string: India', 1, 'Cumin Zeera Powder', 'NA', 'NA', 1, 1),
(40, 13, '', 27, '', 'Tata Sampann Coriander Powder With Natural Oils, 200g', 90, 80, 25, '526416636_Coriander Powder.jpg', 'Brand	Tata Sampann\r\nVariety	Turmeric,Cilantro\r\nForm	Powder\r\nUnits	200.0 gram\r\nDiet Type	Vegetarian', 'Top Quality Coriander: Enjoy the rich taste of Tata Sampann Coriander Powder in all your favourite dishes\r\nHealthy Choice: Coriander gets its properties and taste from its naturally occuring volatile oils\r\nSampann Goodness: These spices have the natural oils in the spices intact thus offering you sampann goodness\r\nQuality Guaranteed: Tata Sampann Spices contain no added preservatives\r\nAlso Try: Try Tata Sampann Red Chilli Powder, Tata Sampann Turmeric Powder and Tata Sampann Kasuri Methi\r\nCommonly Searched Topics: haldi, turmeric powder, haldi powder, spices, haldi powder in pantry, tata sampan pantry, turmeric, spices & masalas, turmeric powder in pantry 200gm, turmeric powder in pantry', 1, 'Coriander Powder', 'NA', 'NA', 1, 1),
(41, 13, '', 27, '', 'Everest Powder - Compounded Yellow Hing, 50g Bottle', 105, 105, 20, '199430896_Hing Powder.jpg', 'Brand	Everest\r\nVariety	Hing\r\nForm	Powder\r\nUnits	50.0 gram\r\nDiet Type	Vegetarian', 'Strong pungent aroma\r\nAvailable in compounded forms\r\nCountry of Origin: India\r\nmaterial_features:vegetarian\r\nallergen_information:allergen_free\r\ningredients:Rice Flour 55% approx, Gum Arabic, Asafoetida, Turmeric\r\nmaterial_features:vegetarian', 1, 'Hing Powder', 'NA', 'NA', 1, 1),
(42, 13, '', 27, '', 'Catch Masala Amchur Powder, 100g', 90, 72, 25, '441263398_Aamchur Powder.jpg', 'NA', 'Amchur Powder\r\nCountry of Origin: India\r\nAmchur powder\r\nAmchur Powder\r\nCountry of Origin: India\r\nAmchur powder\r\nmaterial_features:vegetarian', 1, 'Aamchur Powder', 'NA', 'NA', 1, 1),
(43, 13, '', 28, '', 'Sunrise Pure, Shahi Garam Masala Powder - 50 grams (Pouch)', 110, 110, 20, '326279069_Shahi Garam masala.jpg', 'Brand	Sunrise Pure\r\nVariety	Cottage Cheese,Cinnamon,Nutmeg,Bay,Cardamom\r\nForm	Powder\r\nUnits	50.0 gram\r\nDiet Type	Vegetarian', 'For Sunrise Pure, quality is god. And god, they say, is in the details\r\nThe very first quality check takes place at the time of procuring raw materials, the next when the materials enter our plants\r\nThe raw materials then undergo cleaning, sorting, grading, low temperature grinding and state-of- the-art packaging, all of which are preceded and followed by stringent quality checks\r\nIt is this no-compromise attitude towards quality that gives us the confidence to promise you the best and bring you the purest', 1, 'Pure Shahi Garam Masala', 'NA', 'NA', 1, 1),
(44, 13, '', 28, '', 'Tata Sampann Garam Masala with Natural Oils, Crafted by Chef Sanjeev Kapoor, 100g', 90, 80, 22, '140022347_Tata Garam Masala.jpg', 'Brand	Tata Sampann\r\nForm	Powder\r\nDiet Type	Vegetarian\r\nUnits	100.0 gram\r\nNumber of Items	1\r\nSpecialty	Natural\r\nPackage Information	Box\r\nFlavour	Garam Masala\r\nWeight	285 Grams\r\nPackage Weight	0.12 Kilograms', 'Crafted by Chef Sanjeev Kapoor: Tata Sampann Garam Masala is specially crafted by Chef Sanjeev Kapoor that lets you cook like a master chef\r\nRICH AROMA & FLAVOR: Treat yourself to an aromatic & flavorful delight with every bite\r\nEXCLUSIVE CHEF TIP: Now make every meal even more exciting with exclusive signature tips\r\nNATURAL OILS INTACT: Carefully made to ensure spices retain their natural oils\r\nSOURCED FROM THE BEST FARMS: Sourced from the best of farms, the spices contain naturally rich flavors\r\nAlso Try: Pav Bhaji masala, Chicken masala, Paneer masala, Chhole masala, Dal Tadka masala, Meat masala and Kitchen King masala\r\nCommonly Searched Topics: tata, tatasampann, tatagaram masala, tatagaram masala powder, tatagaram masala powder in prime, masala, garam masala, masala in pantry, aromatic powder for cooking', 1, 'TATA SAMPANN GARAM MASALA', 'NA', 'NA', 1, 1),
(45, 13, '', 28, '', 'Catch Super Garam Masala Powder, 200g', 95, 76, 22, '733376689_Catch Super Garam Masala.jpg', 'Brand	catch\r\nForm	Powder\r\nUnits	200.0 gram\r\nDiet Type	Vegetarian\r\nSpecialty	suitable for vegeterians', 'ADD TASTE TO FOOD: Catch Super Garam Masala is a perfect blend of Indian spices for all the food lovers with knack for spicy and zesty dishes.\r\nTANGY IN TASTE: Super Garam Masala can be used for preparing curries, gravies and marination.\r\nThis Indian masala is extensively used across multiple cuisines to add flavours, colour, aroma and an impeccable restaurant-touch any vegetable or meat dish.\r\nHIGH IN QUALITY: The Catch Spices are ground to perfection with no fillers\r\nALSO TRY: You can try other spices from our Kitchen Range including Catch Kitchen King Masala, Catch Sabzi Masala Powder, Catch Shahi Paneer Masala Powder, Catch Raita Masala Powder, and Catch Chhole Masala Powder.', 1, 'CATCH SUPER GARAM MASALA', 'NA', 'NA', 1, 1),
(46, 13, '', 28, '', 'Everest Garam Masala, 100g Carton', 88, 86, 22, '422066472_EVEREST garam masala.jpg', 'Brand	Everest\r\nForm	Powder\r\nDiet Type	Vegetarian\r\nUnits	100.0 gram\r\nNumber of Items	1\r\nSpecialty	Suitable for Vegetarians\r\nPackage Information	Bottle\r\nAllergen Information	Allergen-Free\r\nWeight	100 Grams\r\nNumber of Pieces	1', 'This all-purpose seasoning adds sweet flavour\r\nRich aromatic blend of spices\r\nNo cholesterol\r\nNo trans fat\r\nmaterial_features:vegetarian | allergen_information:allergen_free\r\nitem_form:flakes | item_form:powders | | variety:fennel | ingredients:coriander, black pepper, cumin, dry ginger, cinnamon, fennel, clove, cardamom, nutmeg, salt\r\nmaterial_features:vegetarian\r\nvariety:fennel\r\nitem_form:powders; ingredients:coriander, black pepper, cumin, dry ginger, cinnamon, fennel, clove, cardamom, nutmeg, salt', 1, 'EVEREST Garam Masala', 'NA', 'NA', 1, 1),
(47, 13, '', 28, '', 'Catch Garam Masala, Carton, 100g', 90, 87, 25, '133618744_Catch Garam Masala.jpg', 'NA', 'This is a Vegetarian product.\r\nADD TASTE TO FOOD: Catch Garam Masala is used extensively in Indian cuisine to add colour, flavourful aroma and an earthy-spiciness to vegetables, meats, curries and gravies.\r\nTANGY IN TASTE: Garam masala is a staple Indian masala found in all kitchens.\r\nGaram masala can be combined with any other Indian spices for a stronger taste.\r\nHIGH IN QUALITY: The Catch Spices are ground to perfection with no fillers\r\nALSO TRY: You can try other spices from our Kitchen Range including Catch Kitchen King Masala, Catch Sabzi Masala Powder, Catch Shahi Paneer Masala Powder, Catch Raita Masala Powder, and Catch Chhole Masala Powder.', 1, 'Catch Garam Masala', 'NA', 'NA', 1, 1),
(48, 12, '', 24, '', 'Aashirvaad Atta with Multigrains, 10kg pack, The High Fibre Atta', 1052, 1039, 25, '502150203_AASHIRVAAD Atta with Multigrains.jpg', 'Brand	Aashirvaad\r\nWeight	10 Kilograms\r\nSpecialty	Vegetarian\r\nDiet Type	Vegetarian\r\nPackage Weight	10.08 Kilograms\r\nForm	Raw\r\nNumber of Items	1\r\nUnits	10000 gram', 'Aashirvaad Atta with Multigrains is high in fibre which aids in digestion\r\n3 rotis made from Multigrain Atta fulfill 35% of your daily fibre requirement\r\nRotis made from Aashirvaad Atta with Multigrains taste just like your regular atta\r\nAashirvaad Atta with Multigrains is a blend of 6 natural grains – wheat, maize, soya, channa, oats, psyllium husk\r\nFrom India’s No. 1 Atta brand, Aashirvaad Atta with Multigrains is made with love in India with the grains sourced from the fields across the country', 1, 'AASHIRVAAD Multigrain Atta', 'NA', 'NA', 1, 1),
(49, 12, '', 24, '', 'Aashirvaad Atta with Multigrains, 5kg pack, The High Fibre Atta', 352, 348, 22, '651030507_Aashirvaad Atta with Multigrains, 5kg pack.jpg', 'Brand	Aashirvaad\r\nWeight	5 Kilograms\r\nSpecialty	Vegetarian\r\nDiet Type	Vegetarian\r\nPackage Weight	5.05 Kilograms\r\nForm	Raw\r\nNumber of Items	1\r\nUnits	5000 gram', 'Aashirvaad Atta with Multigrains is high in fibre which aids in digestion\r\n3 rotis made from Multigrain Atta fulfill 35% of your daily fibre requirement\r\nRotis made from Aashirvaad Atta with Multigrains taste just like your regular atta\r\nAashirvaad Atta with Multigrains is a blend of 6 natural grains – wheat, maize, soya, channa, oats, psyllium husk\r\nFrom India’s No. 1 Atta brand, Aashirvaad Atta with Multigrains is made with love in India with the grains sourced from the fields across the country', 1, 'Aashirvaad Multigrain Atta, 5 kg', 'NA', 'NA', 1, 1),
(50, 12, 'Atta', 24, 'Multigrain Atta', 'Unique Aashirvaad Atta With Multigrains 1Kg Unique', 72, 71, 24, '978080700_Unique Aashirvaad Atta With Multigrains 1Kg.jpg', 'Brand	Generic\r\nDiet Type	Vegetarian\r\nNumber of Items	1\r\nUnits	1000.0 gram', 'Aashirvaad Atta with Multigrains is high in fibre which aids in digestion\r\n3 rotis made from Multigrain Atta fulfill 35% of your daily fibre requirement\r\nRotis made from Aashirvaad Atta with Multigrains taste just like your regular atta\r\nAashirvaad Atta with Multigrains is a blend of 6 natural grains – wheat, maize, soya, channa, oats, psyllium husk\r\nFrom India’s No. 1 Atta brand, Aashirvaad Atta with Multigrains is made with love in India with the grains sourced from the fields across the country\r\nMake delicious rotis, pooris and paranthas with this atta and ensure that you never miss your daily dose of fibre', 1, 'Unique Aashirvaad Atta 1Kg', 'NA', 'NA', 1, 1),
(51, 12, '', 24, '', 'Nourish Multi Grain Atta 5kg | Fibre Rich Flour', 400, 392, 23, '951606517_Nourish Multi Grain Atta 5kg.jpg', 'Brand	Nourish\r\nDiet Type	Vegetarian\r\nNumber of Items	1\r\nUnits	5000.0 gram', 'Nourish Multi Grain Atta contains an adequate quantity of complex carbs. That helps boost the energy levels in your body without affecting your blood sugar levels.\r\nMore Nutrients: Multigrain flour contains a higher amount of nutrients like vitamins, minerals, and dietary fiber compared to refined flour. It can help you meet your daily requirements of essential nutrients such as iron, zinc, and magnesium.\r\nNourish Multi Grain Atta includes the benefits of wheat, barley, ragi, corn, chana, and soya bean.\r\nNourish Multi Grain Atta is the best flour for weight loss as it contains a high amount of dietary fibre that gives you a feeling of fullness and lowers your extra calorie intake.', 1, 'Multigrain Atta 5 kg', 'NA', 'NA', 1, 1),
(52, 12, '', 24, '', 'Foodio.fit Multigrain Atta Brand: Foodio.fit', 450, 450, 24, '196405632_Foodio.fit Multigrain Atta.jpg', 'Brand	Foodio.fit\r\nSpecialty	Vegetarian\r\nUnits	1000.0 gram', 'Multigrain\r\nHealthy Flour\r\nNo Soy Flour', 1, 'Foodio.fit Multigrain Atta', 'NA', 'NA', 1, 1),
(53, 12, 'Atta', 25, 'Wholewheat Atta', 'Sugarlif Low GI ( Glycemic Index) whole wheat Atta ( Flour)/ Diabetic friendly/Slower Glucose Apsorbtion/Lower Insulin demand/ Same Taste/ Same Flavour - 1kg x 3 Packet', 150, 450, 25, '966047638_Sugarlif Low GI ( Glycemic Index) whole wheat Atta  1kg x 3 Packet.jpg', 'Brand	Sugarlif\r\nPackage Weight	3.06 Kilograms\r\nNumber of Items	3\r\nUnits	3.00 count', 'Sugarlif Low GI Atta (Flour) is 100% whole wheat grain enriched with botanical extracts to make it LOW Glycemic Index. The grain is then pulverized to give you a healthier alternative to the digestion and may help in reducing the risk of diseases.\r\nSugarlif Whole Wheat Flour (Atta) is made with the choicest grains which provides you and your family wholesome nutrition\r\nSugarlif Whole Wheat Flour Atta is made of high - Quality wheat locally sourced from India’s finest wheat fields and does not contain maida.\r\nContains a superior wheat blend Traditional Chakki Process absorbs water more efficiently, resulting in soft, fluffy rotis.', 1, 'Sugarlif Low GI Atta', 'NA', 'NA', 1, 1),
(54, 12, 'Atta', 25, 'Wholewheat Atta', '24 Mantra Organic – Whole Wheat Atta Premium, 1Kg', 72, 72, 22, '347445632_24 Mantra Organic – Whole Wheat Atta Premium, 1Kg.jpg', 'Brand	24 Mantra Organic\r\nNumber of Items	1\r\nUnits	1000.0 gram\r\nWeight	1000 Grams\r\nPackage Information	Pouch', 'Brand	24 Mantra Organic\r\nNumber of Items	1\r\nUnits	1000.0 gram\r\nWeight	1000 Grams\r\nPackage Information	Pouch', 1, '24 Mantra Atta Premium, 1Kg', 'NA', 'NA', 1, 1),
(55, 12, 'Atta', 25, 'Wholewheat Atta', '24 Mantra Organic Wholewheat Atta Premium 2 kg', 180, 178, 21, '664265399_24 Mantra Organic Wholewheat Atta Premium 2 kg.jpg', 'Brand	24 Mantra Organic\r\nWeight	2000 Grams\r\nSpecialty	Organic\r\nDiet Type	Vegetarian\r\nPackage Weight	2.02 Kilograms\r\nUnits	2000.0 gram', 'Low-cal wheat derivative\r\nHighly nutritious\r\nCountry of Origin: India\r\nGood for digestion', 1, '24 Mantra Atta Premium 2 kg', 'NA', 'NA', 1, 1),
(56, 12, 'Atta', 25, 'Wholewheat Atta', 'Aashirvaad Organic Atta, 1 kg, 100% Organic Whole Wheat Atta', 75, 75, 21, '719801815_Aashirvaad Organic Atta, 1 kg, 100% Organic Whole Wheat Atta.jpg', 'Brand	Aashirvaad\r\nWeight	1 Kilograms\r\nSpecialty	Vegetarian\r\nPackage Weight	1.01 Kilograms\r\nForm	Raw\r\nNumber of Items	1\r\nUnits	1 count', 'Enjoy your favourite meals with Aashirvaad\'s organic range of products\r\nAashirvaad Nature’s Superfoods Organic Atta is a certified organic product. It adheres to stringent quality checks and organic product norms\r\nIt has been expertly sourced and hygienically packed to give you both, taste and nutrition\r\nThe organic atta has dietary fibres and nutrients that help in easy digestion and supporting immunity\r\nEnjoy soft and tasty rotis made from Aashirvaad Organic Atta', 1, 'Aashirvaad Organic Atta, 1 kg', 'NA', 'NA', 1, 1),
(57, 12, 'Atta', 25, 'Wholewheat Atta', 'Aashirvaad Superior MP Atta, 2kg Pack, 100 % Whole Wheat Atta, 0% Maida', 119, 119, 22, '900179965_Aashirvaad Superior MP Atta, 2kg Pack, 100 % Whole Wheat Atta, 0% Maida.jpg', 'Brand	Aashirvaad\r\nWeight	2 Grams\r\nSpecialty	Vegetarian\r\nDiet Type	Vegetarian\r\nPackage Weight	2.02 Kilograms\r\nForm	Raw\r\nNumber of Items	1\r\nUnits	2000 gram', 'Aashirvaad Superior MP Atta is made using the 4-step advantage process which ensures 100% pure and natural whole wheat atta and retention of its natural dietary fibres and nutrients\r\nSourced directly from the farmers, Aashirvaad Superior MP Atta ensures that the flour is not tampered thereby maintaining the high quality\r\nThe essential nutrition remains locked in the whole wheat atta which helps in easy digestion and supporting immunity\r\nThe revolutionary mechanised packaging ensures that the atta remains untouched by hands, thereby making it safe\r\nThe dough made from Aashirvaad Superior MP Atta absorbs more water making the rotis soft, fluffy and delicious which helps you power through the day\r\nIndia’s No.1 Atta, Aashirvaad Superior MP Atta is Made with Love in India', 1, 'Aashirvaad Superior MP Atta, 2kg Pack', 'NA', 'NA', 1, 1),
(58, 12, '', 0, '', 'Shree Gulab Roasted Gram Flour Sattu 1Kg (500Gms*2)', 300, 269, 25, '591069178_Shree Gulaab Roasted Gram Flour Sattu 1gm.jpg', 'Brand	Shree Gulab\\\\r\\\\nWeight	1 Kilograms\\\\r\\\\nAllergen Information	Gelatine Free\\\\r\\\\nSpecialty	High in Protein\\\\r\\\\nDiet Type	Vegetarian\\\\r\\\\nPackage Weight	1.76 Pounds\\\\r\\\\nForm	Fresh\\\\r\\\\nRegion Produced In	BIHAR\\\\r\\\\nNumber of Items	1\\\\r\\\\nUnits	1000 gram', 'Contains Added Cumin Seeds\\\\r\\\\nGluten Free; 100% Quality Guarantee\\\\r\\\\nGram(98%), Cumin Seeds(2%)\\\\r\\\\nA 100% Natural Protein Supplement\\\\r\\\\nFSSAI Regd. Product', 1, 'Shree Gulab Roasted Gram Flour Sattu 1Kg', 'NA', 'NA', 1, 1),
(59, 12, 'Atta', 24, 'Multigrain Atta', 'Swastik Roasted Gram Flour | Tasty Refined Fibrous - Sattu 1kg (500gms*2)', 300, 269, 22, '708500886_Swastik Roasted Gram Flour Tasty Refined Fibrous Sattu 1kg.jpg', 'Brand	SWASTIK\r\nWeight	1 Kilograms\r\nAllergen Information	Gluten Free\r\nSpecialty	Vegetarian\r\nDiet Type	Vegetarian\r\nPackage Weight	1.98 Pounds\r\nForm	Roasted\r\nNumber of Items	2\r\nUnits	950 gram', '<br>Contains Added Cumin Seeds pOWDER<br>\r\n<br>No Artificial Colours. No Added Flavours.<br>\r\n<br>A Natural Protein Supplement<br>\r\n<br>Gram(98%), Cumin Seeds(2%)<br>\r\n<br>FSSAI Regd. Product<br>\r\n<br>allergen_information:gluten_free<br>', 1, 'Swastik Roasted Gram Flour Sattu 1 kg', 'NA', 'NA', 1, 1),
(60, 12, '', 29, '', 'Radha Govind Organic Jau Sattu Flour Fiber-Rich Sattu, 500 Gram', 399, 230, 20, '462727806_Radha Govind Organic Jau Sattu Flour Fiber-Rich Sattu, 500 Gram.jpg', 'NA', 'About this item\r\nSortex Cleaned and Superior Quality Consistency in taste, aroma and quality across the year Hygienic packing and best quality control processes Packed in transparent covers to display product quality\r\nMilled from whole kernel\r\nOrganic certified\r\nLight texture', 1, 'Radha Govind Organic Jau Sattu 500 g', 'NA', 'NA', 1, 1),
(61, 12, 'Atta', 29, 'Sattu', 'Amwel Organic Chana Sattu | 450g x 3pc | Roasted Bengal Gram Flour | Gluten Free Low GI Diabetic Friendly Roasted Black ChickPea Atta for Weight Loss and Sugar Control | High Protein Diet Food & Drink', 525, 392, 23, '626700820_Amwel Organic Chana Sattu.jpg', 'Brand	Amwel\r\nWeight	1350 Grams\r\nSpecialty	Sugar Free\r\nDiet Type	Vegetarian\r\nPackage Weight	1400 Grams\r\nForm	Pouch\r\nNumber of Items	3\r\nUnits	1350.0 gram', 'KEEP YOUR SUGAR LEVEL UNDER CONTROL : The Chana Sattu has low GI value, which means it releases sugar in body slowly & steadily, preventing rapid rise in blood sugar level, benefiting diabetic people\r\nADOPT GLUTEN FREE LIFESTYLE : Chana Sattu is gluten free in nature, and hence can be consumed by those who are allergic to gluten or are adopting gluten-free lifestyle.\r\nPOWERHOUSE OF IRON & PROTEIN : Chana Satuu is an excellent source of Iron & Protein and helps build immunity. Roasted Black Chana is the best source of plant protein.\r\nKEEP YOUR INTESTINE HEALTHTY : Sattu Drink is rich in Dietary fiber taking good care of your gut health. Black Chana helps in keeping your digestive system intact.\r\nMAKE DELICIOUSLY HEALTHY RECIPIES : Make recipes that make your taste buds tempting without compromising your health. Make black sattu Cookies, chana sattu Dosa, chana satuu Laddo , and much more\r\nDIRECT FROM MANUFACTURER : We ship freshly manufactured , traditionally stone grounded Roasted Bengal gram making sure that all the essential nutrients remain intact.\r\n100% ORGANIC : We use organic Roasted Black Chana whole grain to manufacture the best quality sattu\r\nPACK OF THREE : 500g x 3 units\r\nScroll Down for a wide variety of super healthy flours, millets, seeds, and gluten free pasta\r\nJust Go Ahead and start a guilt-free diet now. ADD TO CART', 1, 'Amwel Organic Chana Sattu ,450g', 'NA', 'NA', 1, 1),
(62, 12, '', 29, '', 'Manna Sattu Atta 1Kg 100% Channa Sattu Roasted Gram Atta Flour (500 X 2 Packs)', 318, 229, 23, '187937977_Manna Sattu Atta 1Kg 100% Channa Sattu Roasted Gram Atta Flour (500 X 2 Packs).jpg', 'Brand	Manna\r\nWeight	1000 Grams\r\nSpecialty	Vegetarian\r\nDiet Type	Vegetarian\r\nPackage Weight	1.02 Kilograms\r\nForm	Powder\r\nNumber of Items	2\r\nUnits	1000.0 gram', 'Made from the best quality Chickpeas\r\nIt is rich in Protein, Vitamins, Iron and Dietary Fibre\r\nSattoo is a nutritious indigenous drink and has cooling effect on the body as well\r\n100% Natural. No preservatives or artificial flavours.\r\nCooks within 5 mins. Best for those early morning breakfasts that not only need to be quick but filling and healthy too', 1, 'Manna Sattu Atta 1Kg', 'NA', 'NA', 1, 1),
(63, 10, '', 12, '', 'Emami Healthy & Tasty Ultra Lite Refined Soyabean Oil, 1L Pouch', 205, 115, 25, '328997816_Emami Healthy & Tasty Ultra Lite Refined Soyabean Oil, 1L Pouch.jpg', 'Brand	Emami\r\nDiet Type	Vegetarian\r\nFlavour	Soybean\r\nNet Content Volume	1000 Millilitres\r\nSpecial Feature	Refined\r\nItem Package Quantity	1\r\nSpecialty	refined\r\nRecommended Uses For Product	Cooking, Frying, Roasting, Sauteing, Baking, Food\r\nVolume	1 Litres\r\nMaterial Feature	Vegetarian', 'Ultra Lite, Healthy Delight: Change the way how you cook your everyday meals with Emami Healthy & Tasty Ultra Lite Refined Soyabean Oil. Very light, this cooking oil doesn’t alter the taste of your food while making it even healthier;Not Just Light, It’s Ultra Lite: Emami Healthy & Tasty Ultra Lite Soyabean Oil is one of the lightest oils available. It doesn’t make your meals heavy & greasy and also helps in keeping the ingredients’ natural nutrition intact\r\nEasy to Digest: Now eat to your heart’s delight. Being so light, Healthy & Tasty Ultra Lite gets absorbed less while frying and is also less sticky, making your food light and easy to digest;Balanced Health: Enriched with the right balance of essential fatty acids and antioxidants to help control cholesterol levels and prevent chronic diseases\r\nContains the goodness of soya, Vitamin A, D & E. Not just a cooking oil, it’s a health expert. Vitamin A helps in strengthening immunity. Vitamin D supports strong bones. Vitamin E helps promote skin health;Stay Active All Day: Healthy & Tasty Ultra Lite Oil gets easily digested, thus helping you stay active and energetic even post meals. With zero cholesterol, it’s suitable for everyday use\r\nPerfect for Indian Kitchens: Soyabean oil has a high smoke point and therefore is suitable for high-heat cooking like roasting, baking, frying and sautéing;100% Vegetarian; Emami Healthy & Tasty is a range of healthy & quality products that make your everyday food delicious\r\nFlavor Name: Soybean; Item Form: Liquid', 1, 'Emami Healthy & Tasty Ultra Lite Refined Soyabean Oil 1L Pouch', 'NA', 'NA', 1, 1),
(64, 10, '', 12, '', 'Mahakosh Soyabean Oil (Pouch) 899g', 180, 118, 25, '203818165_Mahakosh Soyabean Oil (Pouch) 899g.jpg', 'Use by: 25 NOV 2023\r\nBrand	Mahakosh\r\nDiet Type	Vegetarian\r\nFlavour	Soybean\r\nNet Content Volume	1 Litres, 1000 Millilitres\r\nSpecial Feature	Transparent\r\nLiquid Volume	1 Litres\r\nItem Package Quantity	1\r\nSpecialty	Vegetarian\r\nRecommended Uses For Product	Cooking\r\nVolume	1 Litres', 'Contains PUFA\r\nPUFA known to aid heart health\r\nContains Vit A & D\r\nHelps strengthen eye and bone health\r\ntransparent and light', 1, 'Mahakosh Soyabean Oil (Pouch) 899g', 'NA', 'NA', 1, 1),
(65, 10, '', 12, '', 'Fortune Oil, 1 L Pouch Soyabean Health', 160, 127, 24, '342926478_Fortune Oil, 1 L Pouch Soyabean Health.jpg', 'Brand	FORTUNE\r\nFlavour	soybean\r\nNet Content Volume	1 Litres, 1000 Millilitres\r\nItem Package Quantity	1\r\nForm	Liquid\r\nSpecialty	Vegetarian\r\nRecommended Uses For Product	Skin Care\r\nVolume	1 Litres\r\nWeight	910 Grams\r\nMaterial Feature	vegetarian', 'Light, odourless and healthy oil\r\nCountry of Origin: India\r\nMaterial Features: Vegetarian;Item Form: Liquid;Flavor Name: Soybean\r\nform_factor:liquid | material_features:vegetarian\r\nallergen_information:allergen_free | ingredients:Soybean, Rich in Omega 3\r\nitem_form:liquid | flavor_name:soybean', 1, 'Fortune Soyabean Oil, 1 L Pouch', 'NA', 'NA', 1, 1),
(66, 10, '', 12, '', 'Saffola Gold Refined Oil', 1400, 1400, 25, '514900325_Saffola Gold Refined Oil.jpg', 'Brand	Saffola\r\nFlavour	Sunflower, Rice Bran\r\nNet Content Volume	5000 Millilitres, 5 Litres\r\nSpecial Feature	Refined\r\nItem Package Quantity	1\r\nSpecialty	anti-oxidant\r\nRecommended Uses For Product	Frying\r\nVolume	5 Litres\r\nWeight	4550 Grams\r\nMaterial Feature	Vegetarian', 'Saffola Gold’s Dual Seed Technology with goodness of 2 oils in 1, rice bran oil and sunflower oil, ensures a good balance of MUFA, PUFA for better heart health in comparison to single seed oils\r\nSaffola Gold multisource edible oil helps manage your cholesterol\r\nWith specially designed anti-oxidant system that helps improve immunity\r\nWith Oryzanol that helps maintain cholesterol levels. Saffola Gold now with 15% increased Oryzanol\r\nWith LOSORB Technology so that food absorbs upto 33% less oil as compared to other commonly used cooking oils, basis frying studies on potato, 2021\r\nThis vegetable oil brings alive the natural flavour of the food cooked & spices used, without altering any flavour', 1, 'Saffola Gold Refined Oil|Blend of Rice Bran Oil & Sunflower Oil|Cooking Oil| Pro Healthy Lifestyle Edible Oil 5 litre Jar', 'NA', 'NA', 1, 1),
(67, 10, '', 12, '', 'Dhara Soyabean Oil, 1L Pouch', 195, 150, 25, '446117255_Dhara Soyabean Oil, 1L Pouch.jpg', 'Brand	Dhara\r\nFlavour	soybean\r\nNet Content Volume	1 Litres, 1000 Millilitres\r\nSpecial Feature	Refined\r\nItem Package Quantity	1\r\nSpecialty	refined\r\nRecommended Uses For Product	Cooking\r\nVolume	1 Litres\r\nWeight	910 Grams\r\nMaterial Feature	Vegetarian', 'About this item\r\nDEL\r\nBring home the Dhara Fit N Fine Refined Soyabean Oil and give your family a complete healthy way of cooking\r\nSoyabean oil\r\nCountry of Origin: India\r\nDEL\r\nBring home the Dhara Fit N Fine Refined Soyabean Oil and give your family a complete healthy way of cooking\r\nSoyabean oil\r\nCountry of Origin: India\r\nItem Form: Liquid; Flavor Name: Soybean; Material Features: Vegetarian', 1, 'Dhara Soyabean Oil, 1L Pouch', 'NA', 'NA', 1, 1),
(68, 10, '', 13, '', 'Sri Sri Tattva Premium Kachi Ghani Mustard Oil Bottle, 500ml (Pack of 2)', 236, 224, 22, '242445265_Sri Sri Tattva Premium Kachi Ghani Mustard Oil Bottle, 500ml (Pack of 2).jpg', 'Brand	Sri Sri TATTVA shuddhta ka naam\r\nDiet Type	Vegetarian\r\nFlavour	Mustard\r\nNet Content Volume	2000 Millilitres\r\nItem Package Quantity	1\r\nForm	Oil\r\nVolume	500 Millilitres\r\nMaterial Feature	Natural\r\nPackage Weight	1000 Grams\r\nPlant or Animal Product Type	mustard oil', 'Edible Vegetable Oil\r\nFree from Argemone Oil\r\nFortified with Vitamin A and D\r\nIngredients: Mustard Oil, Vitamin A, Vitamin D\r\nNet Weight: 2 x 500 ml', 1, 'Sri Sri Tattva Premium Kachi Ghani Mustard Oil Bottle 500ml', 'NA', 'NA', 1, 1),
(69, 10, '', 13, '', 'Fortune Oil, 1 L Pouch Premium Kachi Ghani Pure Mustard', 210, 178, 22, '211197136_Fortune Oil, 1 L Pouch Premium Kachi Ghani Pure Mustard.jpg', 'Brand	FORTUNE\r\nDiet Type	Vegetarian\r\nFlavour	Mustard\r\nNet Content Volume	1 Litres, 1000 Millilitres\r\nSpecial Feature	Cold Pressed\r\nLiquid Volume	1 Litres\r\nItem Package Quantity	1\r\nForm	Liquid\r\nSpecialty	Vegetarian\r\nRecommended Uses For Product	Cooking', 'Made from Cold Pressed (Kachi Ghani) Technology using Finest Mustard Seeds - Rich in Omega 3 & 6 that boost Immunity\r\nRich in Vitamins A, E and Beta Carotene\r\nNaturally Cholesterol Free\r\nHigh in PUFA (Poly Unsaturated Fatty Acids)\r\nHigh Pungency and Strong Aroma - Mustard Oil with Long Shelf Life', 1, 'Fortune Oil, 1 L Pouch Premium Kachi Ghani Pure Mustard', 'NA', 'NA', 1, 1),
(70, 10, '', 13, '', 'Fortune Premium Kachi Ghani Pure Mustard Oil, 1Litre PET Bottle', 150, 150, 23, '536542977_Fortune Premium Kachi Ghani Pure Mustard Oil, 1Litre PET Bottle.jpg', 'Brand	FORTUNE\r\nFlavour	Mustard - Bottle\r\nNet Content Volume	1 Litres, 1000 Millilitres\r\nSpecial Feature	Cold Pressed\r\nItem Package Quantity	1\r\nForm	Oil\r\nSpecialty	suitable for vegeterians\r\nRecommended Uses For Product	Cooking\r\nVolume	1 Litres\r\nWeight	910 Grams', 'Made from Cold Pressed (Kachi Ghani) Technology using Finest Mustard Seeds - Rich in Omega 3 & 6 that boost Immunity\r\nRich in Vitamins A,E and Beta Carotene\r\nNaturally Cholesterol Free\r\nHigh in PUFA (Poly Unsaturated Fatty Acids)\r\nHigh Pungency and Strong Aroma - Mustard Oil with Long Shelf Life', 1, 'Fortune Premium Kachi Ghani Pure Mustard Oil, 1Litre PET Bottle', 'NA', 'NA', 1, 1),
(71, 10, '', 13, '', 'Dhara Kachhi Ghani Mustard Oil Pouch, 1L', 245, 212, 25, '445660233_Dhara Kachhi Ghani Mustard Oil Pouch, 1L.jpg', 'Brand	Dhara\r\nFlavour	mustard\r\nNet Content Volume	1 Litres, 1000 Millilitres\r\nItem Package Quantity	1\r\nForm	Liquid\r\nSpecialty	Vegetarian\r\nRecommended Uses For Product	Body\r\nVolume	1 Litres\r\nWeight	910 Grams\r\nMaterial Feature	Vegetarian', 'SCCA\r\nDhara kachi ghani oil - mustard\r\nIt comes with the unique low absorb technology and vitamin a and d2\r\nAvailable in: 200 Ml, 500 ml and 1 litre pet bottle, 2 litre pet jar, 500 ml and 1 litre poly pouch, 1 litre tetra brick, 5 litre jerry can', 1, 'Dhara Kachhi Ghani Mustard Oil Pouch, 1L', 'NA', 'NA', 1, 1),
(72, 10, '', 13, '', 'Dabur Cold Pressed Mustard Oil 1L', 310, 241, 21, '518086848_Dabur Cold Pressed Mustard Oil 1L.jpg', 'Brand	DABUR\r\nDiet Type	Vegetarian\r\nFlavour	Mustard\r\nNet Content Volume	1000 Millilitres\r\nSpecial Feature	Cold Pressed\r\nLiquid Volume	1 Litres\r\nItem Package Quantity	1\r\nForm	Liquid\r\nSpecialty	Vegetarian\r\nRecommended Uses For Product	Cooking', 'It is cold pressed from finest quality mustards ensuring that the natural properties and health benefits of mustard is intact\r\nIt contains good ratio of Omega 3 and Omega 6 fatty acids\r\nIt is rich in mono saturated fatty acids making it heart friendly and also helps in managing cholesterol; It relieves sinus congestion and invigorates digestion\r\nDaily consumption of Dabur Mustard Oil as a part of healthy balanced diet with regular physical activity can help maintain a healthy lifestyle\r\nContainer Type: Canister\r\nnumber_of_items:1 | allergen_information:allergen_free\r\nproduct_benefit:Cooking | container_type:canister\r\nitem_form:liquid | color_name:golden\r\nflavor_name:whole natural', 1, 'Dabur Cold Pressed Mustard Oil 1L | Healthy Cooking Oil | Goodness of Omega 3 & 6 | Perfect blend of Health, Taste & Aroma', 'NA', 'NA', 1, 1),
(73, 10, '', 14, '', 'Borges Extra Light Olive Oil, 2L', 2600, 1480, 25, '360295640_Borges Extra Light Olive Oil, 2L.jpg', 'Brand	Borges\r\nDiet Type	Vegetarian\r\nFlavour	olive\r\nNet Content Volume	2 Litres\r\nLiquid Volume	2000 Millilitres\r\nItem Package Quantity	1\r\nForm	Liquid\r\nSpecialty	Organic\r\nRecommended Uses For Product	Frying\r\nVolume	2 Litres', 'Soth\r\nIt\'s ideal for frying, roasting and sautéing which are the commonly used methods\r\nMaintains the original flavour of your dishes\r\nItem Form: Liquid; Material Features: Vegetarian\r\nmaterial_features:vegetarian\r\nallergen_information:allergen_free\r\nitem_form:liquid', 1, 'Borges Extra Light Olive Oil, 2L', 'NA', 'NA', 1, 1),
(74, 10, '', 14, '', 'Figaro Olive Oil- Pure Olive Oil- Ideal for Indian Dishes- Imported from Spain- 500ml Tin', 975, 498, 20, '357869765_Figaro Olive Oil.jpg', 'Brand	Figaro\r\nDiet Type	Vegetarian\r\nFlavour	Pure\r\nNet Content Volume	500 Millilitres\r\nMelting Temperature	100 Degrees Celsius\r\nLiquid Volume	500 Millilitres\r\nItem Package Quantity	1\r\nContainer Material	Tin\r\nForm	Pure\r\nSpecialty	Cholesterol Free, 0% Trans Fat, High in MUFA, Enriched with Vitamin E', 'Figaro Pure Olive Oil is an excellent all-purpose cooking olive oil that imparts a delicious flavour to your daily food. Can be used for sauteing, roasting, frying and baking.\r\nIt has zero trans fat, zero cholesterol, rich source of Vitamin E and high in Monounsaturated Fatty Acids(MUFA) - type of dietary fibre with numerous health benefits.\r\nThe tin pack of Figaro prevents the nozzle from attracting dirt/germs keeping the porduct safe and hygenic\r\nCountry of Origin: Spain\r\nAllergen Information: Abalone Free; Form Factor: Palm-Held;', 1, 'Figaro Olive Oil- Pure Olive Oil- Ideal for Indian Dishes- Imported from Spain- 500ml Tin', 'NA', 'NA', 1, 1),
(75, 10, 'Oil', 14, 'Olive Oil', 'Figaro Extra Virgin Olive Oil- Cold Extracted- Perfect for Salad, Paratha, Marinade - Imported from Spain- 250m', 399, 299, 24, '813534159_Figaro Extra Virgin Olive Oil.jpg', 'Brand	Figaro\r\nFlavour	Extra Virgin\r\nNet Content Volume	250 Millilitres\r\nItem Package Quantity	1\r\nForm	Liquid\r\nSpecialty	anti-oxidant\r\nRecommended Uses For Product	Cooking, Food\r\nVolume	250 Millilitres\r\nWeight	230 Grams\r\nMaterial Feature	vegetarian', 'Ideal for Cold Cooking The superior flavour and oil comes from the first pressing of the finest olives. Turn your boring healthy meals into a mouth-watering affair with salad dressings, dips, marinades and chutneys prepared in the goodness of Figaro extra virgin olive oil\r\n100 Years of Trusted Service Figaro as a brand has been celebrating the goodness of olive oil for over a century. You can rest assured that generations of grandparents since 1919 will vouch for the purity of Figaro\r\nHeart-Conscious Super-food Boosts your health with antioxidants, MUFA and PUFA rich diet for lower cholesterol and a happier heart making it a great substitute for plain butter and ghee\r\nExquisite Flavour and Aroma Experience the richness of meticulously, hand-picked olives straight from lovingly cultivated native orchards; Durable Shatterproof Packaging Keeping up with the times, we upgraded so you can enjoy your delicious cooking and not sweat it over broken glass hazards\r\nMaterial Features: Vegetarian; Item Form: Liquid\r\nform_factor:liquid\r\nmaterial_features:vegetarian\r\nallergen_information:allergen_free\r\nitem_form:liquid', 1, 'Figaro Extra Virgin Olive Oil- Imported from Spain- 250ml', 'NA', 'NA', 1, 1),
(76, 10, '', 14, '', 'Borges Extra Virgin Olive Oil -1L Glass', 1400, 860, 25, '673809940_Borges Extra Virgin Olive Oil  1L Glass.jpg', 'Brand	Borges\r\nFlavour	olive\r\nNet Content Volume	1 Litres, 1000 Millilitres\r\nSpecial Feature	Raw\r\nLiquid Volume	1000 Millilitres\r\nItem Package Quantity	1\r\nForm	Liquid\r\nSpecialty	extra virgin\r\nRecommended Uses For Product	Cooking, Food\r\nVolume	1 Litres', 'Captivating flavour of olives, ideal for salads and dressings\r\nSubstitute for butter or ghee.Added Preservatives :No. Organic : No\r\nMade and packed in Spain', 1, 'Borges Extra Virgin Olive Oil -1L Glass', 'NA', 'NA', 1, 1),
(77, 10, 'Oil', 14, 'Olive Oil', 'Sol 100% Spanish Extra Virgin Olive Oil Glass Bottle (1L)', 1695, 939, 25, '843589708_Sol 100% Spanish Extra Virgin Olive Oil Glass Bottle (1L).jpg', 'Zero Cholesterol, Low Saturated Fat\r\nMade in Spain from the highest quality of Spanish olives.', 'Brand	Sol\r\nDiet Type	Vegetarian\r\nFlavour	Olive\r\nNet Content Volume	1000 Millilitres\r\nItem Package Quantity	1\r\nForm	Liquid\r\nSpecialty	Vegetarian\r\nRecommended Uses For Product	Food\r\nVolume	1000 Millilitres\r\nMaterial Feature	Vegetarian', 1, 'Sol 100% Spanish Olive Oil Glass Bottle (1L)', 'NA', 'NA', 1, 1),
(78, 8, 'Rice', 7, 'Boiled RIce', 'Pansari Royal Basmati Rice, Great Taste and Pure Aroma | Long Grain, Naturally Aged(2-Years) with Fortified | Basmati Rice, Biryani Rice, Pulao Rice - 3 Kg', 630, 630, 24, '153884302_Pansari Royal Basmati Rice, Great Taste and Pure Aroma.jpg', 'Brand	Pansari\r\nDiet Type	Vegetarian\r\nNumber of Items	1\r\nUnits	3000.0 gram\r\nWeight	3 Kilograms', 'Ideal to make Biryani and pulav\r\nIdeal for dishes prepared regularly in households like biryani, pulao, steamed rice, khichdi etc\r\nCarefully processed in a world class manufacturing facility for daily consumption\r\nAfter cooking rice elongate over 2 times and become flavorful and taste\r\nCountry of Origin: India, Super quality;, Material features:vegetarian; Commonly searched keywords: Rice, Basmati rice, Biryani, Biryani Rice, Quality Rice, Special Rice, real Basmati, rice 1 kg pantry', 1, 'Pansari Royal Basmati Rice', 'NA', 'NA', 1, 1),
(79, 8, '', 7, '', 'Aazol Unpolished Indrayani Rice - 5kg | Unique Sticky Texture | Aromatic Native Variety | Hand Pounded Rice', 1375, 1099, 25, '711770719_Aazol Unpolished Indrayani Rice - 5kg.jpg', 'Brand	AAZOL\r\nDiet Type	Vegetarian\r\nUnits	5000.0 gram\r\nWeight	5 Kilograms\r\nItem Package Quantity	1', 'Once upon a time, traditional cooking used different types of local rice varieties for making unique recipes.\r\nIn the hurly burly of life people started losing touch with their roots and switched to one rice type. Boring! Right?\r\nTry Aazol\'s highly aromatic and flavourful unpolished Indrayani rice to add a special and different touch to your khichdi and kheer.\r\nThis premium rice is sticky and very aromatic and can be used to make delicious one pot pulaos, as an accompaniment to Thai meals, and for mouth-watering kheers.\r\nIron-rich and has good fats.\r\nShelf life: 6 months; Product Type: Vegetarian.\r\nStorage Instruction: Store in a cool and dry place. After opening keep it in an airtight container.\r\nIngredients: Indrayani Rice.', 1, 'Aazol Unpolished Indrayani Rice - 5kg', 'NA', 'NA', 1, 1),
(80, 8, 'Rice', 7, 'Boiled RIce', 'Aranyaka Traditional Kaikuthal(Hand-Pounded) Red Rice | Poongar Rice (2 Kg) | Diabetic Friendly, Gluten Free | (Medium Grain, Unpolished, Boiled) (2 kg)', 636, 437, 25, '285060828_Aranyaka Traditional Kaikuthal(Hand-Pounded) Red Rice.jpg', 'Brand	Aranyaka\r\nDiet Type	Vegetarian\r\nNumber of Items	1\r\nUnits	2000.0 gram\r\nWeight	1 Kilograms', 'Women\'s Rice\r\nDiabetic Friendly\r\nGluten Free\r\nUnpolished and Unprocessed\r\nImmunity Booster\r\nAbundant In Vitamin B1\r\nWonderful Cure For Women\'s Hormonal Problems\r\nHighly Recommended For Pregnant Women and Lactating mothers\r\nHand Packed With Love', 1, 'Aranyaka Traditional Kaikuthal Red Rice 2 kg', 'NA', 'NA', 1, 1);
INSERT INTO `product` (`id`, `categories_id`, `categories_name`, `sub_categories_id`, `sub_categories`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `best_seller`, `meta_title`, `meta_desc`, `meta_keyword`, `added_by`, `status`) VALUES
(81, 8, '', 7, '', 'More Superior Ponni Boiled Rice Loose, 1 Kg', 200, 128, 20, '539333261_More Superior Ponni Boiled Rice Loose, 1 Kg.jpg', 'Brand	More\r\nDiet Type	Vegetarian\r\nNumber of Items	1\r\nUnits	1000 gram\r\nWeight	1 Kilograms', 'Rich source of carbohydrates, vitamins and minerals\r\nCan be consumed in steamed or boiled form\r\nNo added preservatives', 1, 'Boiled Rice Loose, 1 Kg', 'NA', 'NA', 1, 1),
(82, 8, '', 7, '', 'DHARMARATHINAS Boiled Ponni Rice (5KG)', 700, 470, 25, '732754554_DHARMARATHINAS Boiled Ponni Rice (5KG).jpg', 'Brand	DHARMARATHINA\'S\r\nDiet Type	Vegetarian\r\nUnits	5000 gram\r\nItem Package Quantity	1\r\nSpecialty	Vegetarian', 'PONNI RICE\r\nNo 1, south Indian special\r\nQuality Grains\r\nPure white & sweet aroma\r\nsuitable for vegetarians', 1, 'DHARMARATHINAS Boiled Ponni Rice 5KG', 'NA', 'NA', 1, 1),
(83, 8, 'Rice', 6, 'Brown Rice', 'Daawat Brown, Cooks in 15-minute, Full Bran Intact, Fibre-Rich Basmati Rice, 5 Kg', 750, 712, 25, '488758168_Daawat Brown, Cooks in 15-minute, Full Bran Intact, Fibre-Rich Basmati Rice, 5 Kg.jpg', 'Brand	DAAWAT\r\nNumber of Items	1\r\nUnits	5000.0 gram\r\nWeight	5000 Grams\r\nPackage Information	Bag', 'Country of Origin: India\r\nWhole grain (Lower carbohydrates): Helps in overall health\r\nLower GI: Diabetic friendly\r\nZero cholesterol: Good for your heart and cardio vascular functioning\r\nHET processed and enriched with vitamins and minerals: For stronger immunity\r\nmaterial features:vegetarian', 1, 'Daawat Brown, Fibre-Rich Basmati Rice, 5 Kg', 'NA', 'NA', 1, 1),
(84, 8, '', 6, '', 'Khana Khazana Organic Brown Rice | Organic Rice | Brown Rice | Healthy & Tasty Organic Rice| Fibre-rich | Helps in Weight Loss | Cooks in 15 mins| 100% Natural & Full bran | Unpolished Rice - 1kg', 349, 299, 24, '430615828_Khana Khazana Organic Brown Rice.jpg', 'Brand	DAAWAT\r\nNumber of Items	1\r\nUnits	5000.0 gram\r\nWeight	5000 Grams\r\nPackage Information	Bag', 'Country of Origin: India\r\nWhole grain (Lower carbohydrates): Helps in overall health\r\nLower GI: Diabetic friendly\r\nZero cholesterol: Good for your heart and cardio vascular functioning\r\nHET processed and enriched with vitamins and minerals: For stronger immunity\r\nmaterial features:vegetarian', 1, 'Khana Khazana Organic Brown Rice', 'NA', 'NA', 1, 1),
(85, 8, '', 6, '', 'India Gate Brown Rice 1 kg', 152, 150, 22, '674296288_India Gate Brown Rice 1 kg.jpg', 'Item Display Weight: 1000 Grams\r\nBrand	India Gate\r\nDiet Type	Vegetarian\r\nNumber of Items	10\r\nUnits	1000.0 gram\r\nWeight	1200 Grams', 'Country of Origin: India\r\nMaterial Features: Vegetarian', 1, 'India Gate Brown Rice 1 kg', 'NA', 'NA', 1, 1),
(86, 8, '', 6, '', 'India Gate Brown Rice Weight Watchers Special, 5 Kg', 594, 479, 25, '136163033_India Gate Brown Rice Weight Watchers Special, 5 Kg.jpg', 'Brand	India Gate\r\nDiet Type	Gluten Free\r\nNumber of Items	1\r\nUnits	5000.0 gram\r\nWeight	5000 Grams', 'National brand\r\nUsed finest quality basmati\r\nSuitable for all food\r\nCountry of Origin: India', 1, 'India Gate Brown Rice Weight Watchers Special, 5 Kg', 'NA', 'NA', 1, 1),
(87, 8, '', 6, '', 'More Brown Rice Loose 1 Kg', 200, 140, 25, '184748369_More Brown Rice Loose 1 Kg.jpg', 'Brand	More\r\nNumber of Items	1\r\nUnits	1000 gram\r\nWeight	1 Kilograms\r\nItem Package Quantity	1', 'Enriched with nutrients\r\nInfused with the original taste and aroma of pure basmati\r\nIt is also rich in iron and b vitamins', 1, 'More Brown Rice Loose 1 Kg', 'NA', 'NA', 1, 1),
(88, 8, '', 5, '', 'India Gate Basmati Rice Pouch, Feast Rozzana, 1kg', 115, 104, 25, '262772220_India Gate Basmati Rice Pouch, Feast Rozzana, 1kg.jpg', 'Brand	India Gate\r\nDiet Type	Vegetarian\r\nNumber of Items	1\r\nUnits	1000.0 gram\r\nWeight	1000 Grams', 'About this item\r\nNational brand\r\nUsed finest quality basmati\r\nSuitable for all food\r\nItem Form: Flake;', 1, 'India Gate Basmati Rice Pouch, Feast Rozzana, 1kg', 'NA', 'NA', 1, 1),
(89, 8, 'Rice', 5, 'Basmati Rice', 'Daawat Pulav, Long Grains, Fluffy Basmati for finest Pulav, 5 Kg', 805, 695, 25, '285829689_Daawat Pulav, Long Grains, Fluffy Basmati for finest Pulav, 5 Kg.jpg', 'Brand	DAAWAT\r\nNumber of Items	1\r\nUnits	5000.0 gram\r\nWeight	5000 Grams\r\nPackage Information	Bag', 'Zero cholesterol: Good for your heart and cardio vascular functioning\r\nWhole grain (Lower carbohydrates): Helps in overall health\r\nCountry of Origin: India\r\nLower GI: Diabetic friendly\r\nHET processed and enriched with vitamins and minerals: For stronger immunity\r\ningredients:basmati rice\r\nallergen_information:allergen_free', 1, 'Daawat Pulav, Long Grains, 5 Kg', 'NA', 'NA', 1, 1),
(90, 8, '', 30, '', 'More Choice Minikate Rice Loose, 1 kg', 120, 118, 25, '435916857_More Choice Minikate Rice Loose, 1 kg.jpg', 'This is a Vegetarian product.\r\nAromatic rice and is highly nutritious with an excellent taste\r\nA staple rice for Bengali as it has an irresistible taste and flavour\r\nNo added preservatives\r\nNo added artificial flavours', 'NA', 1, 'More Choice Minikate Rice Loose, 1 kg', 'NA', 'NA', 1, 1),
(91, 8, '', 30, '', 'Dainik Premium Minikit Rice 5 kg', 600, 500, 25, '767677359_Dainik Premium Minikit Rice 5 kg.jpg', 'Brand	Dainik\r\nDiet Type	Vegetarian\r\nUnits	1.00 count\r\nItem Package Quantity	1\r\nVariety	Parboiled Rice', 'Premium quality rice\r\nCarefully chosen and naturally grown\r\nCarefully nurtured, grown, and processed\r\nParboiled Rice (Miniket Rice) (Unpolished) 5 Kg', 1, 'Dainik Premium Minikit Rice 5 kg', 'NA', 'NA', 1, 1),
(92, 8, 'Rice', 30, 'Miniket Rice', 'HUSKING(DHEKI CHATA) MINIKET RICE - 10 KG', 3000, 1299, 25, '791870664_HUSKING(DHEKI CHATA) MINIKET RICE - 10 KG.jpg', 'Brand	Ksetrikagrha\r\nDiet Type	Non Vegetarian, Vegetarian\r\nUnits	1.00 count\r\nItem Package Quantity	1\r\nVariety	Husking,Husking Rice', 'HUSKING RICE\r\nHUSKING MINIKET RICE\r\nDHEKI CHATA RICE\r\nDHEKI CHATA MINIKET RICE', 1, 'HUSKING MINIKET RICE - 10 KG', 'NA', 'NA', 1, 1),
(93, 8, '', 30, '', 'Miniket Rice - 3kg', 550, 499, 25, '160221536_Miniket Rice - 3kg.jpg', 'Brand	bheto bangali\r\nDiet Type	Vegetarian\r\nUnits	3000.0 gram\r\nWeight	3 Kilograms\r\nPackage Information	Pouch', 'Premium, aromatic, pearly white and extra long grain rice. Perfect for daily consumption.\r\nBenefits of Parboiled Rice:-\r\nPrevents cancer – Being rich in antioxidants and phytonutrients, it has a high content of anthocyanins which has been linked to reducing inflammation and preventing cancer.\r\nHelps in Weight Loss - 50% less Carbohydrates than white rice. Its low glycemic index helps in Weight Loss and makes it ideal for diabetics and sugar controlled diet.\r\nProvides essential mineral - vitamins B6, B3, B1 creates neurotransmitters & hormones. Ca, Mn, Fe, K, Zn. Which helps to regulate DNA & improves immunity\r\nReduces risk of heart attacks - Being rich in Manganese it helps lower blood pressure.\r\nSupports rapid body growth - Folate B9 vitamin is essential for rapid growth such as during pregnancy, infancy, and adolescence', 1, 'Miniket Rice - 3kg', 'NA', 'NA', 1, 1),
(94, 8, 'Rice', 30, 'Miniket Rice', 'Ganbak Premium Parboiled MINIKET Rice -(Best for Daily use- Usna Rice/Sidho Rice)-Direct brought from District of West Bengal-5kg', 999, 799, 24, '528705901_Ganbak Premium Parboiled MINIKET Rice.jpg', 'Brand	Ganbak\r\nUnits	4999.0 gram\r\nWeight	4999 Grams\r\nItem Package Quantity	1\r\nForm	Grain', 'Sidho MINIKET Rice from bengal .It is a short white grain used for daily consumption + taste with Sidho rice flavour.\r\nIt is highly non-sticky & best gifted to Sidho rice lovers in your family.\r\nThis rice is from a renowned high quality rice mill in Burdwan . It is cooked by only few boilings ,depends upon prior soaking.\r\nBeing a natural product, there are minor variations in aroma depending on the farm and season\r\nWe guarantee you for taste and its price best given by us .\r\nPeople who gives you this rice in cheaper rates are definately compromising with its quality.', 1, 'Ganbak Premium Parboiled MINIKET Rice -5kg', 'NA', 'NA', 1, 1),
(95, 8, 'Rice', 5, 'Basmati Rice', 'Fortune Biryani Special Basmati Rice, Extra long grain basmati rice, 5 KG', 999, 990, 25, '645600282_Fortune Biryani Special Basmati Rice, Extra long grain basmati rice, 5 KG.jpg', 'Brand	FORTUNE\r\nUnits	5000.0 gram\r\nWeight	5000 Grams\r\nPackage Information	Bag\r\nItem Package Quantity	1', 'Premium basmati rice.\r\nThe extra-long grain and Non-Sticky texture make this rice ideal for all types of Biryani.\r\nAfter cooking rice elongate over 2 times and become flavorful and taste.\r\nPristine white grains.\r\nCommonly searched keywords: Rice, Basmati rice, Biryani, Biryani Rice, Quality Rice, Special Rice, real Basmati, rice 5 kg pantry\r\nPremium basmati rice.\r\nThe extra-long grain and Non-Sticky texture make this rice ideal for all types of Biryani\r\nAfter cooking rice elongate over 2 times and become flavorful and taste\r\nPristine white grains\r\n[Commonly searched keywords: Rice, Basmati rice, Biryani, Biryani Rice, Quality Rice, Special Rice, real Basmati, rice 1 kg pantry]', 1, 'Fortune Biryani , Extra long grain Special Basmati Rice, 5 KG', 'NA', 'NA', 1, 1),
(96, 8, '', 5, '', 'India Gate Basmati Rice Regular Choice, 5kg', 1600, 829, 25, '889448971_India Gate Basmati Rice Regular Choice, 5kg.jpg', 'Brand	India Gate\r\nNumber of Items	1\r\nUnits	5000.0 gram\r\nWeight	5000 Grams\r\nPackage Information	Bag', 'About this item\r\nHygienically packed basmati rice\r\nMaterial Features: Vegetarian', 1, 'India Gate Basmati Rice Regular Choice, 5kg', 'NA', 'NA', 1, 1),
(97, 8, '', 5, '', 'Fortune Everyday Basmati Rice, Full Grain, 5 kg', 740, 599, 25, '592953813_Fortune Everyday Basmati Rice, Full Grain, 5 kg.jpg', 'Brand	FORTUNE\r\nUnits	5000.0 gram\r\nWeight	5000 Grams\r\nPackage Information	Bag\r\nItem Package Quantity	1', 'Best choice for your everyday rice dishes.\r\nPerfect basmati, suitable for all tastes and recipes such as plain rice, fried rice, khichdi, etc.\r\nSpecially aged to help every grain of basmati become long and fluffy.\r\nAfter cooking, the basmati grains do not stick together and become flavorsome.\r\nCommonly Searched Keywords: Rice, Basmati Rice, Quality Rice, Everyday Rice, super value Basamati, rice 5 kg pantry\r\nBest choice for your everyday rice dishes.\r\nPerfect basmati, suitable for all tastes and recipes such as plain rice, fried rice, khichdi, etc\r\nSpecially aged to help every grain of basmati become long and fluffy\r\nAfter cooking, the basmati grains do not stick together and become flavorsome\r\n[Commonly Searched Keywords: Rice, Basmati Rice, Quality Rice, Everyday Rice, super value Basamati, rice 1 kg pantry]', 1, 'Fortune Everyday Basmati Rice, Full Grain, 5 kg', 'NA', 'NA', 1, 1),
(98, 8, '', 31, '', 'Premium Parboiled Baskathi Rice - 5kg', 999, 819, 25, '706548653_Premium Parboiled Baskathi Rice - 5kg.jpg', 'Brand	bheto bangali\r\nDiet Type	Vegetarian\r\nNumber of Items	1\r\nUnits	5000.0 gram\r\nWeight	5 Kilograms', 'Premium quality, aromatic, extra long and extra fine rice from Bengal. Ideal for daily consumption, biryani and pulao.\r\nBenefits of Parboiled Rice:-\r\nPrevents cancer – Being rich in antioxidants and phytonutrients, it has a high content of anthocyanins which has been linked to reducing inflammation and preventing cancer.\r\nHelps in Weight Loss - 50% less Carbohydrates than white rice. Its low glycemic index helps in Weight Loss and makes it ideal for diabetics and sugar controlled diet.\r\nProvides essential mineral - vitamins B6, B3, B1 creates neurotransmitters & hormones. Ca, Mn, Fe, K, Zn. Which helps to regulate DNA & improves immunity\r\nReduces risk of heart attacks - Being rich in Manganese it helps lower blood pressure.\r\nSupports rapid body growth - Folate B9 vitamin is essential for rapid growth such as during pregnancy, infancy, and adolescence', 1, 'Premium Parboiled Baskathi Rice - 5kg', 'NA', 'NA', 1, 1),
(99, 8, 'Rice', 31, 'Banskathi', 'ShrihanMart Premium Special Banskathi Rice - 5KG, Baskati Rice is Used For Regular Usage', 1200, 729, 25, '872600927_ShrihanMart Premium Special Banskathi Rice - 5KG, Baskati Rice is Used For Regular Usage.jpg', 'Brand	SHRIHAN MART\r\nDiet Type	Vegetarian\r\nNumber of Items	1\r\nUnits	5000 gram\r\nWeight	5 Kilograms', 'Pure vegetarian product. Fssai certified premium finest quality bengali staples for your everyday healthy meals\r\nPacked in food grade packets / bags to retain / maintain quality\r\nEvery batch of Banskathi rice is grown in organic environment without use of pesticides\r\nServes the regular usage of bengali kitchen', 1, 'ShrihanMart Premium Special Banskathi Rice - 5KG', 'NA', 'NA', 1, 1),
(100, 8, '', 31, '', 'MonBangla Premium Banskathi Rice - 5KG', 880, 849, 25, '306203033_MonBangla Premium Banskathi Rice - 5KG.jpg', 'Brand	MonBangla\r\nDiet Type	Vegetarian\r\nNumber of Items	1\r\nUnits	5000 gram\r\nWeight	5 Kilograms', 'HYGIENICALLY PACKED WITH ALL EMPLOYEES WEARING MASK AND GLOVES\r\nSOCIAL DISTANCING NORMS AS OUTLINED BY GOI ARE FOLLOWED AT OUR DELIVERY CENTER\r\nPure vegetarian. Fssai certified premium quality bengali staples for your everyday meals\r\nPacked in food graded bags to retain quality\r\nGrown in organic environment without use of pesticides', 1, 'MonBangla Premium Banskathi Rice - 5KG', 'NA', 'NA', 1, 1),
(101, 8, '', 31, '', 'Dainik Premium Banskathi Rice 5 kg', 600, 545, 25, '590135598_Dainik Premium Banskathi Rice 5 kg.jpg', 'Brand	Dainik\r\nDiet Type	Vegetarian\r\nUnits	1.00 count\r\nItem Package Quantity	1\r\nMaterial Feature	Premium quality banskathi rice', 'A premium quality rice for daily consumption\r\nCarefully chosen and naturally grown\r\nBaskathi rice 5 kg\r\nImproves overall skin and cardiovascular health', 1, 'Dainik Premium Banskathi Rice 5 kg', 'NA', 'NA', 1, 1),
(102, 8, '', 31, '', 'Sera Bangla Banskathi Rice - 2KG (Pack of 2)', 360, 330, 25, '533806546_Sera Bangla Banskathi Rice - 2KG (Pack of 2).jpg', 'Brand	Sera Bangla\r\nUnits	2000.0 gram\r\nItem Package Quantity	1\r\nSpecialty	suitable for vegetarians\r\nMaterial Feature	Vegetarian', 'NA', 1, 'Sera Bangla Banskathi Rice - 2KG (Pack of 2)', 'NA', 'NA', 1, 1),
(103, 11, '', 32, '', 'Fresh Lemon, 250 g', 64, 51.2, 25, '158072212_Fresh Lemon, 250 g.jpg', 'Weight	0.2 Kilograms\r\nBrand	Fresh\r\nSpecialty	suitable for vegeterians\r\nPackage Weight	0.25 Kilograms\r\nTemperature Condition	Fresh\r\nForm	Whole\r\nNumber of Items	1\r\nUnits	250.0 gram', 'Fresh and juicy\r\nGood source of Vitamin B6, C, Iron, Potassium and Calcium\r\nCan be used to make to juice, tea, pickle or to add taste to dishes\r\nStore in a cool, dry place away from sunlight\r\ningredients:fresh lemons\r\nitem_form:slices', 1, 'Fresh Lemon, 250 g', 'NA', 'NA', 1, 1),
(104, 11, '', 32, '', 'Fresh Lemon, 250g & Fresh Chilli, Green, 250g & Fresh Coriander - Fresh, 100g', 108, 86, 25, '118986445_Fresh Lemon, 250g & Fresh Chilli, Green, 250g & Fresh Coriander - Fresh, 100g.jpg', 'Brand	Fresh\r\nVariety	Lemon\r\nUnits	1 count\r\nNumber of Items	1\r\nWeight	600 Grams', 'Fresh and juicy\r\nGood source of Vitamin B6, C, Iron, Potassium and Calcium\r\nCan be used to make to juice, tea, pickle or to add taste to dishes\r\nAdds Spice to the dish\r\nGood source of Vitamin B6, C, Iron and Potassium.\r\nUsed in curries, soups, and other dishes and can be used to make pickle\r\nCommonly known as Dhania\r\nGood source of Vitamin C, K, Iron, Manganes and Dietary Fiber.\r\nCan be used to in curries, soups or for garnishing', 1, 'Fresh Lemon, 250g & Fresh Chilli, Green, 250g & Fresh Coriander - Fresh, 100g', 'NA', 'NA', 1, 1),
(105, 11, '', 17, '', 'Fresh Onion, 1kg', 37, 23, 25, '878046566_Fresh Onion, 1kg.jpg', 'Diet Type	Vegetarian\r\nForm	Whole\r\nBrand	Fresh\r\nWeight	1 Kilograms\r\nNumber of Items	1', 'About this item\r\nRich in antioxidants\r\nGood source of manganese, copper, Vitamin B6, Vitamin C and Dietary Fibers\r\nCan be used in curries, snacks and salads\r\nStore at room temperature, away from direct sunlight\r\nmaterial_features:vegetarian\r\nitem_form:whole\r\ningredients:fresh onions', 1, 'Fresh Onion, 1kg', 'NA', 'NA', 1, 1),
(106, 11, '', 17, '', 'Fresh Onions - Sambar, 1kg', 33, 26.4, 25, '880963036_Fresh Onions - Sambar, 1kg.jpg', 'Diet Type	Vegetarian\r\nForm	Whole\r\nBrand	Fresh\r\nWeight	1 Kilograms\r\nNumber of Items	1', 'Rich in antioxidants\r\nSambar Onions contain high measures of fiber and flavonoids\r\nCan be used in curries, snacks and salads\r\nStore at room temperature, away from direct sunlight\r\nmaterial_features:vegetarian', 1, 'Fresh Onions - Sambar, 1kg', 'NA', 'NA', 1, 1),
(107, 11, 'Veggies', 17, 'Onion', 'Mid-day FRESH Small Red Onion | Sambar Onion|, 1kg', 199, 169, 25, '534160109_Mid-day FRESH Small Red Onion  Sambar Onion, 1kg.jpg', 'Diet Type	Vegetarian\r\nForm	Vegetable\r\nBrand	Generic\r\nNumber of Items	1\r\nUnits	1000.0 gram', 'Small Red Onions have lots of vitamins and minerals. They vary slightly in calories, carbs and protein. 100 grams of shallots have 72 calories, 16.8 gr of carbohydrates, 7.9 gr of sugar, and 2.5 grams of protein.\r\n. Shallots are made with very fine layers. This allows them to blend well into sauces and dressings and their flavor is some where between that of garlic and onions.\r\nRich in antioxidants\r\nSambar Onions contain high measures of fiber and flavonoids\r\nCan be used in curries, snacks and salads', 1, 'Mid-day FRESH Small Sambar Onion,1kg', 'NA', 'NA', 1, 1),
(108, 11, 'Veggies', 17, 'Onion', '1Kg - Sambar Onion- Organically Exported|Red small Onion |Fresh Sambhar Onion| Red Shallots Onion-(Corrugated Box Packaging) (1 kg)', 699, 350, 25, '117116335_1Kg - Sambar Onion- Organically Exported Red small Onion Fresh Sambhar Onion Red Shallots Onion-(Corrugated Box Packaging) (1 kg).jpg', 'Diet Type	Vegetarian\r\nForm	Whole\r\nBrand	Generic\r\nUnits	250.0 gram', 'Rich in antioxidants\r\nSambar Onions contain high measures of fiber and flavonoids\r\nCan be used in curries, snacks and salads\r\nStore at room temperature, away from direct sunlight\r\nOnion helps in improving heart health\r\nOnions improves Immunity | Onions can give you good vision', 1, '1Kg - Red small Fresh Sambhar Onion-(Corrugated Box Packaging)', 'NA', 'NA', 1, 1),
(109, 11, 'Veggies', 17, 'Onion', '(2kg - Own Farming-Sambar Onion) Formar Organically Export Quality Small Onion Fresh Sambhar Onion', 999, 525, 25, '141846118_(2kg - Own Farming-Sambar Onion) Formar Organically Export Quality Small Onion Fresh Sambhar Onion.jpg', 'Diet Type	Vegetarian\r\nForm	Dried\r\nBrand	Generic\r\nUnits	1000.0 gram', 'Rich in antioxidants\r\nSambar Onions contain high measures of fiber and flavonoids\r\nCan be used in curries, snacks and salads\r\nStore at room temperature, away from direct sunlight', 1, '(2kg - Own Farming-Sambar Onion) Organically Export Quality Small Onion', 'NA', 'NA', 1, 1),
(110, 11, '', 16, '', 'Fresh Tomato Green, 1Kg', 59, 42.4, 25, '133056281_Fresh Tomato Green, 1Kg.jpg', 'Diet Type	Vegetarian\r\nForm	Whole\r\nBrand	Fresh\r\nWeight	1000 Grams\r\nNumber of Items	1', 'About this item\r\nUltra-fresh\r\n100% natural\r\nGreat in taste\r\nPure and high nutritional value\r\nmaterial_features:vegetarian', 1, 'Fresh Tomato Green, 1Kg', 'NA', 'NA', 1, 1),
(111, 11, '', 16, '', 'Fresh Tomato - Cherry, 250g', 71, 56.8, 25, '598666833_Fresh Tomato - Cherry, 250g.jpg', 'Diet Type	Vegetarian\r\nForm	Halved\r\nBrand	Fresh\r\nWeight	250 Grams\r\nNumber of Items	1', '100% Natural\r\nGood source of Vitamin A, C, K, Iron, Folate and Potassium\r\nHelp to reduce Cholesterol\r\nCan be used salads, soups and curries\r\nStore in refrigerator at a temperature of 0-5 degree celsius\r\nmaterial_features:vegetarian\r\nitem_form:halved', 1, 'Fresh Tomato - Cherry, 250g', 'NA', 'NA', 1, 1),
(112, 11, 'Veggies', 33, 'Cabbage', 'Fresh Red Cabbage, 1 Piece', 54, 43.2, 25, '118042010_Fresh Red Cabbage, 1 Piece.jpg', 'Diet Type	Vegetarian\r\nForm	Trimmed\r\nBrand	Fresh\r\nWeight	450 Grams\r\nNumber of Items	1', '1 pc pack\r\nIt is a good source of Vitamin K, Dietary Fiber, Calicum, Potassium and Phosphorus\r\nIt is also used in the preparation of dry curries, soups, manchurian or salads\r\nStore in cool and dry place, away from direct sunlight.\r\nitem_form:trimmed\r\nmaterial_features:vegetarian', 1, 'Fresh Red Cabbage, 1 Piece', 'NA', 'NA', 1, 1),
(113, 11, 'Veggies', 34, 'Carrot', 'Fresh Carrot - Orange, 500g Pack', 35, 28, 25, '901467199_Fresh Carrot - Orange, 500g Pack.jpg', 'Diet Type	Vegetarian\r\nForm	Peeled\r\nBrand	Fresh\r\nWeight	500 Grams\r\nNumber of Items	1', 'Fresh, hygienic and natural\r\nGood source of Vitamin A,E,K, Potassium and Lycopene\r\nCan be used in curries, salad, soups and juices\r\nStore in cool and dry place, away from direct sunlight.\r\nitem_form:peeled\r\ningredients:fresh carrots\r\nnumber_of_pieces:1\r\nmaterial_features:vegetarian', 1, 'Fresh Carrot , 500g Pack', 'NA', 'NA', 1, 1),
(114, 11, '', 35, '', 'Fresh Tendli, 250g', 18, 14.4, 25, '454293579_Fresh Tendli, 250g.jpg', 'Diet Type	Vegetarian\r\nForm	Whole\r\nBrand	Fresh\r\nWeight	250 Grams\r\nNumber of Items	1', 'About this item\r\nIt is used in various food item and is very useful in Fatigue\r\nMaintains a Healthy Metabolism\r\nQuality product\r\nmaterial_features:vegetarian', 1, 'Fresh Tendli, 250g', 'NA', 'NA', 1, 1),
(115, 11, '', 36, '', 'Fresh Bitter Gourd, 500g', 52, 41.6, 25, '331610965_Fresh Bitter Gourd, 500g.jpg', 'Diet Type	Vegetarian\r\nForm	Whole\r\nBrand	Fresh\r\nWeight	0.6 Kilograms\r\nNumber of Items	1', 'Commonly known as Karela\r\nGood source of Vitamin A, C, B6, Magnesium and Potassium\r\nCan be used to make curries, fried snacks or juice\r\nStore in cool and dry place, away from direct sunlight.\r\nmaterial_features:vegetarian', 1, 'Fresh Bitter Gourd, 500g', 'NA', 'NA', 1, 1),
(116, 11, '', 37, '', 'Fresh Ash Gourd, 1 Piece', 92, 73.6, 25, '490327244_Fresh Ash Gourd, 1 Piece.jpg', 'Diet Type	Vegetarian\r\nForm	Whole\r\nBrand	Fresh\r\nWeight	1000 Grams\r\nNumber of Items	1', 'About this item\r\nFresh, hygienic and natural\r\nGraded, sorted and premium quality fruits and vegetables\r\nFresh Ash Gourd\r\nmaterial_features:vegetarian', 1, 'Fresh Ash Gourd, 1 Piece', 'NA', 'NA', 1, 1),
(117, 11, 'Veggies', 38, 'Sponge Gourd', 'Fresh Sponge Gourd, 500g', 32, 29, 25, '339525846_Fresh Sponge Gourd, 500g.jpg', 'Form	Whole\r\nBrand	Fresh\r\nWeight	500 Grams\r\nNumber of Items	1\r\nUnits	500.0 gram', 'About this item\r\nFresh, hygienic and natural\r\nmaterial_features:vegetarian', 1, 'Fresh Sponge Gourd, 500g', 'NA', 'NA', 1, 1),
(118, 11, '', 39, '', 'Fresh Spinach, 250g', 12, 9.6, 25, '265132933_Fresh Spinach, 250g.jpg', 'Diet Type	Vegetarian\r\nForm	Whole\r\nBrand	Fresh\r\nWeight	250 Grams\r\nNumber of Items	1', 'About this item\r\nIt has low fat and calories\r\nGood source of Vitamin A, C, Protein, Potassium and Calcium\r\nCan be used in curries, soups and salads\r\nStore in refrigerator at a temperature of 0-5 degree celsius', 1, 'Fresh Spinach, 250g', 'NA', 'NA', 1, 1),
(119, 11, 'Veggies', 40, 'Lettuce', 'Fresh Iceberg Lettuce, 1 Piece (Approx.250 gm)', 49, 49, 25, '709018520_Fresh Iceberg Lettuce, 1 Piece (Approx.250 gm).jpg', 'Diet Type	Vegetarian\r\nForm	Trimmed\r\nBrand	Fresh\r\nWeight	0.2 Kilograms\r\nNumber of Items	1', 'Good source of protein\r\nRich in Vitamin A, K and Potassium\r\nCan be used in salads, sandwiches and burgers\r\nStore in refrigerator at a temperature of 0-5 degree celsius', 1, 'Fresh Iceberg Lettuce, 1 Piece (Approx.250 gm)', 'NA', 'NA', 1, 1),
(120, 11, 'Veggies', 41, 'Amaranthus', 'Fresh Amaranthus - Red, 250g', 32, 17, 24, '565499181_Fresh Amaranthus - Red, 250g.jpg', 'Diet Type	Vegetarian\r\nForm	Whole\r\nBrand	Fresh\r\nWeight	0.25 Kilograms\r\nNumber of Items	1', 'About this item\r\nIt is naturally gluten-free\r\nRich in Vitamin A, B6, C, K, Potassium, Calcium and Iron\r\nUse it in daals, curries or soups\r\nStore it under refrigeration at 0 to 4 degree celsius\r\nmaterial_features:vegetarian', 1, 'Fresh Amaranthus - Red, 250g', 'NA', 'NA', 1, 1),
(121, 11, 'Veggies', 42, 'Banana', 'Fresh Banana Raw, 500g', 53, 21, 25, '368876269_Fresh Banana Raw, 500g.jpg', 'Weight	0.5 Kilograms\r\nBrand	Fresh\r\nSpecialty	rich_in_vitamins\r\nPackage Weight	0.5 Kilograms\r\nNumber of Pieces	2\r\nTemperature Condition	Fresh\r\nForm	Whole\r\nNumber of Items	1\r\nUnits	500.0 gram', 'It is rich in Vitamin B6, C, Dietary Fiber and Potassium\r\nRaw Bananas make a good choice in the making of Chips with salt and chilli powder on it\r\nCan be mashed to use as filling in vadas, samosas or cutlets\r\nStore in cool and dry place, away from direct sunlight.', 1, 'Fresh Banana Raw, 500g', 'NA', 'NA', 1, 1),
(122, 11, 'Veggies', 43, 'Ridge Gourd', 'Fresh Ridge Gourd, 500g', 52, 41.6, 25, '941281655_Fresh Ridge Gourd, 500g.jpg', 'Diet Type	Vegetarian\r\nForm	Whole\r\nBrand	Fresh\r\nWeight	500 Grams\r\nNumber of Items	1', 'About this item\r\nIt is mildly sweet in taste\r\nRich in vitamins A, B2, and C\r\nIt also contains calcium, phosphorus and iron in small quantities\r\nStore in a cool, dry place away from sunlight\r\nmaterial_features:vegetarian', 1, 'Fresh Ridge Gourd, 500g', 'NA', 'NA', 1, 1),
(123, 11, 'Veggies', 44, 'Betel Leaf', 'Fresh Betel Leaf Loose, 5 pcs', 20, 8, 25, '331641706_Fresh Betel Leaf Loose, 5 pcs.jpg', 'Diet Type	Vegetarian\r\nForm	Whole\r\nBrand	Fresh\r\nWeight	11 Grams\r\nNumber of Items	1', 'Betel leaf has heart shaped, soft, clean and long-stalk leaves with a pointed apex\r\nIt has vitamins such as vitamin c, riboflavin, niacin, thiamine and carotene\r\nStore in cool and dry place, away from direct sunlight', 1, 'Fresh Betel Leaf Loose, 5 pcs', 'NA', 'NA', 1, 1),
(124, 11, 'Veggies', 45, 'Cauliflower', 'Fresh Cauliflower - Florets, 250 gm', 47, 37.6, 25, '823037325_Fresh Cauliflower - Florets, 250 gm.jpg', 'Diet Type	Vegetarian\r\nForm	With stem\r\nBrand	Fresh\r\nWeight	0.25 Kilograms\r\nNumber of Items	1', 'Cauliflower is low in fat\r\nRich in Vitamin C, K, Potassium and Manganese\r\nCan be used with Potatoes or in soups, manchurian, salad and parathas.\r\nStore in a cool, dry place away from sunlight\r\nitem_form:with stem\r\nmaterial_features:vegetarian', 1, 'Fresh Cauliflower - Florets, 250 gm', 'NA', 'NA', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `sub_categories` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `categories_id`, `sub_categories`, `status`) VALUES
(5, 8, 'Basmati Rice', 1),
(6, 8, 'Brown Rice', 1),
(7, 8, 'Boiled RIce', 1),
(8, 9, 'Multigrain Atta', 1),
(9, 9, 'Whowheat Atta', 1),
(10, 9, 'Organic Atta', 1),
(11, 9, 'Chaki Fresh Atta', 1),
(12, 10, 'Refined Soyabean Oil', 1),
(13, 10, 'Mustard Oil', 1),
(14, 10, 'Olive Oil', 1),
(15, 11, 'Potato', 1),
(16, 11, 'Tomato', 1),
(17, 11, 'Onion', 1),
(18, 11, 'Green Chili', 1),
(19, 11, 'Ginger', 1),
(20, 11, 'Cucumber', 1),
(21, 11, 'Garlic', 1),
(22, 11, 'Brinjal', 1),
(23, 11, 'Pumpkin', 1),
(24, 12, 'Multigrain Atta', 1),
(25, 12, 'Wholewheat Atta', 1),
(26, 11, 'Red Chili', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `added_on` datetime NOT NULL,
  `otp` varchar(11) NOT NULL,
  `status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `password`, `email`, `mobile`, `added_on`, `otp`, `status`) VALUES
(744926538, 'jihfgvghrvt', 'nhegfcvebhjhg', '21232f297a57a5a743894a0e4a801fc3', 'sonai@gmail.com', '8116739132', '0000-00-00 00:00:00', '28258', ''),
(752897876, 'jihfgvghrvt', 'nhegfcvebhjhg', '21232f297a57a5a743894a0e4a801fc3', 'admin213@gmail.com', '8116739131', '0000-00-00 00:00:00', '', ''),
(904895891, 'nbcgsvbdkjh', 'nhgfdcvgsbh', '202cb962ac59075b964b07152d234b70', 'hsoumitra4206@gmail.com', '8526987412', '2023-06-18 14:25:09', '', 'active'),
(1511699739, 'gfdhbgfcvbn', 'iuytfdsz', 'c11e1dea283e48a48987b0f03b69a48b', 'uyfg@gmail.com', '8116739138', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `added_on` datetime NOT NULL,
  `quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`, `added_on`, `quantity`) VALUES
(93, 475958263, 15, '2023-06-18 13:51:36', 0),
(94, 475958263, 16, '2023-06-18 13:53:07', 0),
(95, 904895891, 94, '2023-06-18 14:34:03', 0),
(96, 904895891, 120, '2023-06-18 14:34:19', 0),
(97, 904895891, 25, '2023-06-18 14:37:31', 0),
(98, 904895891, 15, '2023-06-21 12:44:33', 0),
(99, 904895891, 16, '2023-06-21 12:45:23', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1512439517;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
