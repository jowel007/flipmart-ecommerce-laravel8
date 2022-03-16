-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2022 at 10:11 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flipmart`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2022-01-27 12:21:12', '$2y$10$xz1LI6SYO9okqYzta6jz5OYCMt7kD2amgeWF1AtcRP76DTJOo6Ysq', 'Cfl6OGBL8eb3gdaczv1kO23goQ18jpRfPzSK40owq2vuw8YYntNb9wHMjtQ3', NULL, '202201290322pexels-alex-nasto-582635.jpg', '2022-01-27 12:21:12', '2022-01-28 21:22:39');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_name_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name_en`, `brand_name_hin`, `brand_slug_en`, `brand_slug_hin`, `brand_image`, `created_at`, `updated_at`) VALUES
(1, 'H&M', 'एच एंड एम', 'h&m', 'एच-एंड-एम', 'upload/brand/1723303692912653.png', NULL, NULL),
(2, 'NIKE', 'नाइके', 'nike', 'नाइके', 'upload/brand/1723303736409792.png', NULL, NULL),
(3, 'GUCCI', 'गुच्ची', 'gucci', 'गुच्ची', 'upload/brand/1723303757934528.png', NULL, NULL),
(4, 'Louis Vuitton', 'लुई वुइटन', 'louis-vuitton', 'लुई-वुइटन', 'upload/brand/1723303779536660.png', NULL, NULL),
(5, 'Adidas', 'एडिडास', 'adidas', 'एडिडास', 'upload/brand/1723303814019296.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name_en`, `category_name_hin`, `category_slug_en`, `category_slug_hin`, `category_icon`, `created_at`, `updated_at`) VALUES
(7, 'Fashion', 'पहनावा', 'fashion', 'पहनावा', 'fa fa-shopping-bag', NULL, NULL),
(8, 'Electronic', 'इलेक्ट्रोनिक', 'electronic', 'इलेक्ट्रोनिक', 'fa fa-battery-full', NULL, NULL),
(9, 'Sweet Home', 'प्यारा घर', 'sweet home', 'प्यारा घर', 'fa fa-home', NULL, NULL),
(10, 'Appliances', 'उपकरण', 'appliances', 'उपकरण', 'fa fa-futbol-o', NULL, '2022-02-04 21:01:33'),
(11, 'Beauty', 'सुंदरता', 'beauty', 'सुंदरता', 'fa fa-star', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_discount` int(11) NOT NULL,
  `coupon_validity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `coupon_discount`, `coupon_validity`, `status`, `created_at`, `updated_at`) VALUES
(1, '14ABF222', 25, '2022-03-31', 1, '2022-03-16 00:48:26', '2022-03-16 00:48:26'),
(2, '21ABFEAS', 40, '2022-03-29', 1, '2022-03-16 00:48:35', '2022-03-16 00:48:35'),
(3, 'YEAR22', 15, '2022-04-20', 1, '2022-03-15 21:31:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_01_27_163734_create_sessions_table', 1),
(7, '2022_01_27_180403_create_admins_table', 2),
(8, '2022_01_29_144448_create_brands_table', 3),
(9, '2022_01_31_070917_create_categories_table', 4),
(10, '2022_01_31_084857_create_sub_categories_table', 5),
(11, '2022_02_02_143643_create_sub_sub_categories_table', 6),
(12, '2022_02_04_052035_create_products_table', 7),
(13, '2022_02_04_052817_create_multi_imgs_table', 7),
(14, '2022_02_05_014328_create_sliders_table', 8),
(15, '2022_03_08_033610_create_products_table', 9),
(16, '2022_03_15_122917_create_wishlists_table', 10),
(17, '2022_03_16_025605_create_coupons_table', 11),
(18, '2022_03_16_042244_create_ship_divisions_table', 12),
(19, '2022_03_16_045842_create_ship_districts_table', 13),
(20, '2022_03_16_052213_create_ship_states_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `multi_imgs`
--

CREATE TABLE `multi_imgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `photo_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_imgs`
--

INSERT INTO `multi_imgs` (`id`, `product_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(43, 12, 'upload/products/multi-image/1726447724520734.jpeg', '2022-03-05 02:27:34', NULL),
(44, 12, 'upload/products/multi-image/1726447725415575.jpeg', '2022-03-05 02:27:35', NULL),
(45, 13, 'upload/products/multi-image/1726449061900534.jpeg', '2022-03-05 02:48:49', NULL),
(46, 13, 'upload/products/multi-image/1726449062248865.jpeg', '2022-03-05 02:48:49', NULL),
(47, 13, 'upload/products/multi-image/1726449062503056.jpeg', '2022-03-05 02:48:49', NULL),
(48, 13, 'upload/products/multi-image/1726449062786582.jpeg', '2022-03-05 02:48:50', NULL),
(49, 14, 'upload/products/multi-image/1726449207158218.jpeg', '2022-03-05 02:51:07', NULL),
(50, 14, 'upload/products/multi-image/1726449207447078.jpeg', '2022-03-05 02:51:08', NULL),
(51, 14, 'upload/products/multi-image/1726449207762687.jpeg', '2022-03-05 02:51:08', NULL),
(52, 15, 'upload/products/multi-image/1726449435843840.jpg', '2022-03-05 02:54:45', NULL),
(53, 16, 'upload/products/multi-image/1726449581372944.jpg', '2022-03-05 02:57:04', NULL),
(54, 17, 'upload/products/multi-image/1726449880179401.jpg', '2022-03-05 03:01:49', NULL),
(55, 18, 'upload/products/multi-image/1726528133583343.jpg', '2022-03-05 23:45:37', NULL),
(56, 19, 'upload/products/multi-image/1726528277392431.jpg', '2022-03-05 23:47:55', NULL),
(57, 20, 'upload/products/multi-image/1726528445864451.jpg', '2022-03-05 23:50:35', NULL),
(58, 21, 'upload/products/multi-image/1726528637515607.jpg', '2022-03-05 23:53:38', NULL),
(59, 21, 'upload/products/multi-image/1726528638038292.jpg', '2022-03-05 23:53:39', NULL),
(60, 22, 'upload/products/multi-image/1726528778960593.jpg', '2022-03-05 23:55:53', NULL),
(61, 22, 'upload/products/multi-image/1726528779461769.jpg', '2022-03-05 23:55:54', NULL),
(62, 23, 'upload/products/multi-image/1726529016512138.jpg', '2022-03-05 23:59:39', NULL),
(63, 23, 'upload/products/multi-image/1726529017055888.jpg', '2022-03-05 23:59:40', NULL),
(64, 23, 'upload/products/multi-image/1726529017488750.jpg', '2022-03-05 23:59:40', NULL),
(65, 23, 'upload/products/multi-image/1726529017888930.jpg', '2022-03-05 23:59:41', NULL),
(66, 24, 'upload/products/multi-image/1726529169163317.jpg', '2022-03-06 00:02:05', NULL),
(67, 24, 'upload/products/multi-image/1726529169642869.jpg', '2022-03-06 00:02:06', NULL),
(68, 24, 'upload/products/multi-image/1726529170161742.jpg', '2022-03-06 00:02:06', NULL),
(69, 1, 'upload/products/multi-image/1726701867393952.jpg', '2022-03-07 21:47:03', NULL),
(70, 1, 'upload/products/multi-image/1726701867572005.jpg', '2022-03-07 21:47:03', NULL),
(71, 1, 'upload/products/multi-image/1726701867739046.jpg', '2022-03-07 21:47:03', NULL),
(72, 1, 'upload/products/multi-image/1726701867905961.jpg', '2022-03-07 21:47:03', NULL),
(73, 1, 'upload/products/multi-image/1726701868128255.jpg', '2022-03-07 21:47:03', NULL),
(74, 1, 'upload/products/multi-image/1726701868278510.jpg', '2022-03-07 21:47:04', NULL),
(75, 2, 'upload/products/multi-image/1726702138662587.jpg', '2022-03-07 21:51:21', NULL),
(76, 2, 'upload/products/multi-image/1726702138801860.jpg', '2022-03-07 21:51:22', NULL),
(77, 2, 'upload/products/multi-image/1726702139017164.jpg', '2022-03-07 21:51:22', NULL),
(78, 2, 'upload/products/multi-image/1726702139151713.jpg', '2022-03-07 21:51:22', NULL),
(79, 2, 'upload/products/multi-image/1726702139324067.jpg', '2022-03-07 21:51:22', NULL),
(80, 3, 'upload/products/multi-image/1726702354184230.jpg', '2022-03-07 21:54:47', NULL),
(81, 3, 'upload/products/multi-image/1726702354329225.jpg', '2022-03-07 21:54:47', NULL),
(82, 3, 'upload/products/multi-image/1726702354473965.jpg', '2022-03-07 21:54:47', NULL),
(83, 3, 'upload/products/multi-image/1726702354619128.jpg', '2022-03-07 21:54:47', NULL),
(84, 4, 'upload/products/multi-image/1726702676095488.jpg', '2022-03-07 21:59:54', NULL),
(85, 4, 'upload/products/multi-image/1726702676279037.jpg', '2022-03-07 21:59:54', NULL),
(86, 4, 'upload/products/multi-image/1726702676459280.jpg', '2022-03-07 21:59:54', NULL),
(87, 5, 'upload/products/multi-image/1726702854367315.jpg', '2022-03-07 22:02:44', NULL),
(88, 5, 'upload/products/multi-image/1726702854647074.jpg', '2022-03-07 22:02:44', NULL),
(89, 5, 'upload/products/multi-image/1726702854769800.jpg', '2022-03-07 22:02:44', NULL),
(90, 5, 'upload/products/multi-image/1726702854929215.jpg', '2022-03-07 22:02:44', NULL),
(91, 6, 'upload/products/multi-image/1726702991515145.jpg', '2022-03-07 22:04:55', NULL),
(92, 6, 'upload/products/multi-image/1726702991725978.jpg', '2022-03-07 22:04:55', NULL),
(93, 6, 'upload/products/multi-image/1726702991859338.jpg', '2022-03-07 22:04:55', NULL),
(94, 6, 'upload/products/multi-image/1726702992004444.jpg', '2022-03-07 22:04:55', NULL),
(95, 7, 'upload/products/multi-image/1726703165817562.jpg', '2022-03-07 22:07:41', NULL),
(96, 8, 'upload/products/multi-image/1726711326277804.jpg', '2022-03-08 00:17:23', NULL),
(97, 8, 'upload/products/multi-image/1726711326434118.jpg', '2022-03-08 00:17:24', NULL),
(98, 9, 'upload/products/multi-image/1726711476831214.jpg', '2022-03-08 00:19:47', NULL),
(99, 10, 'upload/products/multi-image/1726711610371078.jpg', '2022-03-08 00:21:54', NULL),
(100, 10, 'upload/products/multi-image/1726711610582205.jpg', '2022-03-08 00:21:55', NULL),
(101, 10, 'upload/products/multi-image/1726711610800051.jpg', '2022-03-08 00:21:55', NULL),
(102, 11, 'upload/products/multi-image/1726711758530329.jpg', '2022-03-08 00:24:16', NULL),
(103, 11, 'upload/products/multi-image/1726711758858910.jpg', '2022-03-08 00:24:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subsubcategory_id` int(11) NOT NULL,
  `product_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_tags_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_tags_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_size_hin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_descp_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_descp_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_descp_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_descp_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_thambnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hot_deals` int(11) DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `special_offer` int(11) DEFAULT NULL,
  `special_deals` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `product_name_en`, `product_name_hin`, `product_slug_en`, `product_slug_hin`, `product_code`, `product_qty`, `product_tags_en`, `product_tags_hin`, `product_size_en`, `product_size_hin`, `product_color_en`, `product_color_hin`, `selling_price`, `discount_price`, `short_descp_en`, `short_descp_hin`, `long_descp_en`, `long_descp_hin`, `product_thambnail`, `hot_deals`, `featured`, `special_offer`, `special_deals`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 7, 10, 13, 'Spike Stylish Formal Shoe For Men', 'पुरुषों के लिए स्पाइक स्टाइलिश औपचारिक जूता', 'spike-stylish-formal-shoe-for-men', 'पुरुषों-के-लिए-स्पाइक-स्टाइलिश-औपचारिक-जूता', '8516507', '14', 'Hush Puppies,Bungee', 'ऊँची एड़ी,महिलाओं', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '1200', NULL, 'This brown super-stylish formal dress shoe with PU upper brings sophisticated shine as a wardrobe-essential & Bata updated it with', 'पीयू अपर के साथ यह ब्राउन सुपर-स्टाइलिश फॉर्मल ड्रेस शू अलमारी-आवश्यक के रूप में परिष्कृत चमक लाता है और बाटा ने इसे एक', '<p>This brown super-stylish formal dress shoe with PU upper brings sophisticated shine as a wardrobe-essential &amp; Bata updated it with a&nbsp;</p>', '<pre>\r\nपीयू अपर के साथ यह ब्राउन सुपर-स्टाइलिश फॉर्मल ड्रेस शू अलमारी-आवश्यक के रूप में परिष्कृत चमक लाता है और बाटा ने इसे एक</pre>', 'upload/products/thambnail/1726701866957641.jpg', NULL, 1, 1, 1, 1, '2022-03-07 21:47:02', NULL),
(2, 4, 7, 10, 12, 'Men\'s Black Loafer Shoe In Suede Leather', 'साबर चमड़े में पुरुषों का काला लोफर जूता', 'men\'s-black-loafer-shoe-in-suede-leather', 'साबर-चमड़े-में-पुरुषों-का-काला-लोफर-जूता', '8546931', '10', 'LONGBIDA ,Stretched', 'स्लिम ,बाइकर', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '1400', '1200', 'There may be a slight color variation in the image from the original product.', 'मूल उत्पाद से छवि में थोड़ा सा रंग भिन्नता हो सकती है।', '<p>&nbsp;Black suede loafers by Bata in an elegant, classic style you will want to wear all summer long. These suede loafers are a must-have for a relaxed, stylish look.&nbsp;</p>', '<pre>\r\nएक सुरुचिपूर्ण, क्लासिक शैली में बाटा द्वारा ब्लैक साबर लोफर्स आप सभी गर्मियों में पहनना चाहेंगे। ये साबर लोफर्स रिलैक्स्ड, स्टाइलिश लुक के लिए जरूरी हैं।</pre>', 'upload/products/thambnail/1726702138479809.jpg', 1, 1, 1, NULL, 1, '2022-03-08 06:09:57', '2022-03-08 06:09:57'),
(3, 2, 7, 10, 11, 'Hush Puppies - The Good Bungee Eco-Friendly Sneaker', 'ऊँची एड़ी के जूते महिलाओं के जूते', 'hush-puppies---the-good-bungee-eco-friendly-sneaker', 'ऊँची-एड़ी-के-जूते-महिलाओं-के-जूते', 'BLHHS1023', '4', 'Hush Puppies,Bungee', 'ऊँची एड़ी,महिलाओं', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '1500', NULL, 'Hush Puppies Bounce ECO footbed provides energy rebound with every step and retains its comfy cushioning.', 'हश पपीज बाउंस ईसीओ फुटबेड हर कदम के साथ एनर्जी रिबाउंड प्रदान करता है और इसकी आरामदायक कुशनिंग को बरकरार रखता है।', '<p>Hush Puppies Bounce ECO footbed provides energy rebound with every step and retains its comfy cushioning.&nbsp;</p>', '<p>&nbsp;</p>\r\n\r\n<p>हश पपीज बाउंस ईसीओ फुटबेड हर कदम के साथ एनर्जी रिबाउंड प्रदान करता है और इसकी आरामदायक कुशनिंग को बरकरार रखता है।</p>', 'upload/products/thambnail/1726702353995162.jpg', 1, 1, NULL, 1, 1, '2022-03-08 23:45:53', '2022-03-08 23:45:53'),
(4, 4, 7, 9, 8, 'LONGBIDA Mens Slim Fit Biker Jeans Stretched Distressed Moto Comfy Denim Pants', 'लोंगबिडा मेन्स स्लिम फिट बाइकर जीन्स स्ट्रेच्ड डिस्ट्रेस्ड मोटो कॉम्फी डेनिम पैंट', 'longbida-mens-slim-fit-biker-jeans-stretched-distressed-moto-comfy-denim-pants', 'लोंगबिडा-मेन्स-स्लिम-फिट-बाइकर-जीन्स-स्ट्रेच्ड-डिस्ट्रेस्ड-मोटो-कॉम्फी-डेनिम-पैंट', 'BLHHS1023', '8', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '300', NULL, 'A great product designed by a great company the cloth was a good as i expected and even the fitting is at par', 'एक महान कंपनी द्वारा डिजाइन किया गया एक अच्छा उत्पाद कपड़ा एक अच्छा था जैसा कि मैंने उम्मीद की थी और यहां तक ​​​​कि फिटिंग भी बराबर है', '<p>A great product designed by a great company the cloth was a good as i expected and even the fitting is at par</p>', '<pre>\r\nएक महान कंपनी द्वारा डिजाइन किया गया एक अच्छा उत्पाद कपड़ा एक अच्छा था जैसा कि मैंने उम्मीद की थी और यहां तक ​​​​कि फिटिंग भी बराबर है</pre>', 'upload/products/thambnail/1726702675764185.jpg', 1, 1, NULL, 1, 1, '2022-03-10 10:53:04', '2022-03-10 10:53:04'),
(5, 1, 7, 9, 9, 'Amazon Essentials Men\'s Classic-fit Wrinkle-Resistant Flat-Front Chino Pant', 'अमेज़ॅन एसेंशियल मेन्स क्लासिक-फिट रिंकल-रेसिस्टेंट फ्लैट-फ्रंट चिनो पैंट', 'amazon-essentials-men\'s-classic-fit-wrinkle-resistant-flat-front-chino-pant', 'अमेज़ॅन-एसेंशियल-मेन्स-क्लासिक-फिट-रिंकल-रेसिस्टेंट-फ्लैट-फ्रंट-चिनो-पैंट', '7712314', '10', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '400', '380', 'Generous classic-fit that sits at waist, roomy through seat and thigh, with a straight leg; zip fly with button closure, side pockets, and button pockets at the back', 'उदार क्लासिक-फिट जो कमर पर बैठता है, सीधे पैर के साथ सीट और जांघ के माध्यम से विशाल; जिप फ्लाई बटन क्लोजर, साइड पॉकेट्स और बैक पर बटन पॉकेट्स के साथ', '<p>Generous classic-fit that sits at waist, roomy through seat and thigh, with a straight leg; zip fly with button closure, side pockets, and button pockets at the back</p>', '<p>&nbsp;</p>\r\n\r\n<p>उदार क्लासिक-फिट जो कमर पर बैठता है, सीधे पैर के साथ सीट और जांघ के माध्यम से विशाल; जिप फ्लाई बटन क्लोजर, साइड पॉकेट्स और बैक पर बटन पॉकेट्स के साथ</p>', 'upload/products/thambnail/1726702854124251.jpg', 1, NULL, 1, 1, 1, '2022-03-08 06:09:38', '2022-03-08 06:09:38'),
(6, 3, 7, 9, 10, 'OUTSON Mens Fashion Joggers Sports Pants Casual Cotton Cargo Pants Gym Sweatpants Trousers Mens Long Pant', 'आउटसन मेन्स फैशन जॉगर्स स्पोर्ट्स पैंट्स कैजुअल कॉटन कार्गो पैंट्स जिम स्वेटपैंट्स ट्राउजर मेन्स लॉन्ग पंत', 'outson-mens-fashion-joggers-sports-pants-casual-cotton-cargo-pants-gym-sweatpants-trousers-mens-long-pant', 'आउटसन-मेन्स-फैशन-जॉगर्स-स्पोर्ट्स-पैंट्स-कैजुअल-कॉटन-कार्गो-पैंट्स-जिम-स्वेटपैंट्स-ट्राउजर-मेन्स-लॉन्ग-पंत', 'HV-MS814', '4', 'Mens Fashion,Sports Pants', 'मेन्स फैशन, जॉगर्स', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '520', '450', 'OUTSON Mens Fashion Joggers Sports Pants Casual Cotton Cargo Pants Gym Sweatpants Trousers Mens Long Pant', 'आउटसन मेन्स फैशन जॉगर्स स्पोर्ट्स पैंट्स कैजुअल कॉटन कार्गो पैंट्स जिम स्वेटपैंट्स ट्राउजर मेन्स लॉन्ग पंत', '<p>OUTSON Mens Fashion Joggers Sports Pants Casual Cotton Cargo Pants Gym Sweatpants Trousers Mens Long PantOUTSON Mens Fashion Joggers Sports Pants Casual Cotton Cargo Pants Gym Sweatpants Trousers Mens Long Pant</p>', '<pre>\r\nआउटसन मेन्स फैशन जॉगर्स स्पोर्ट्स पैंट्स कैजुअल कॉटन कार्गो पैंट्स जिम स्वेटपैंट्स ट्राउजर मेन्स लॉन्ग पंतआउटसन मेन्स फैशन जॉगर्स स्पोर्ट्स पैंट्स कैजुअल कॉटन कार्गो पैंट्स जिम स्वेटपैंट्स ट्राउजर मेन्स लॉन्ग पंत</pre>', 'upload/products/thambnail/1726702991251392.jpg', NULL, 1, 1, 1, 1, '2022-03-08 23:43:17', '2022-03-08 23:43:17'),
(7, 2, 8, 14, 56, 'LG mobile display', 'महिलाओं के लिए कॉम्फिट कैटिन सैंडल', 'lg-mobile-display', 'महिलाओं-के-लिए-कॉम्फिट-कैटिन-सैंडल', 'w55', '4', 'Mens Fashion,Sports Pants', 'मेन्स फैशन, जॉगर्स', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '40', NULL, 'Care Instructions: Clean your shoes with the leather cleaner or leather shampoo, and use a good quality brush to remove loose surface dirt.', 'देखभाल के निर्देश: अपने जूतों को लेदर क्लीनर या लेदर शैम्पू से साफ करें, और ढीली सतह की गंदगी को हटाने के लिए एक अच्छी गुणवत्ता वाले ब्रश का उपयोग करें।', '<p><strong>Care Instructions: Clean your shoes with the leather cleaner or leather shampoo, and use a good quality brush to remove loose surface dirt.</strong></p>', '<p>&nbsp;</p>\r\n\r\n<p>देखभाल के निर्देश: अपने जूतों को लेदर क्लीनर या लेदर शैम्पू से साफ करें, और ढीली सतह की गंदगी को हटाने के लिए एक अच्छी गुणवत्ता वाले ब्रश का उपयोग करें।</p>', 'upload/products/thambnail/1726703165626313.jpg', 1, NULL, 1, 1, 1, '2022-03-07 22:07:41', NULL),
(8, 5, 8, 16, 40, 'SAMSUNG 32” M7 Smart Monitor', 'पुरुषों के लिए हश पिल्ले ओवल स्लिप-ऑन शू', 'samsung-32”-m7-smart-monitor', 'पुरुषों-के-लिए-हश-पिल्ले-ओवल-स्लिप-ऑन-शू', 'LS32AM702UNXZA', '4', 'Mens Fashion,Sports Pants', 'मेन्स फैशन, जॉगर्स', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '2200', NULL, 'Mobile Connectivity: Wireless DeX unlocks a full PC experience, without a computer; Use mobile productivity apps, such as video conferencing, documents and browsers, through just your smart monitor and phone', 'मोबाइल कनेक्टिविटी: वायरलेस डीएक्स कंप्यूटर के बिना एक पूर्ण पीसी अनुभव को अनलॉक करता है; केवल अपने स्मार्ट मॉनिटर और फोन के माध्यम से मोबाइल उत्पादकता ऐप्स, जैसे वीडियो कॉन्फ्रेंसिंग, दस्तावेज़ और ब्राउज़र का उपयोग करें', '<p>Mobile Connectivity: Wireless DeX unlocks a full PC experience, without a computer; Use mobile productivity apps, such as video conferencing, documents and browsers, through just your smart monitor and phone</p>', '<pre>\r\nमोबाइल कनेक्टिविटी: वायरलेस डीएक्स कंप्यूटर के बिना एक पूर्ण पीसी अनुभव को अनलॉक करता है; केवल अपने स्मार्ट मॉनिटर और फोन के माध्यम से मोबाइल उत्पादकता ऐप्स, जैसे वीडियो कॉन्फ्रेंसिंग, दस्तावेज़ और ब्राउज़र का उपयोग करें</pre>', 'upload/products/thambnail/1726711325964391.jpg', NULL, 1, 1, 1, 1, '2022-03-14 23:21:59', '2022-03-14 23:21:59'),
(9, 4, 8, 15, 46, 'Logitech MK270 Wireless Keyboard', 'विंडोज के लिए लॉजिटेक एमके270 वायरलेस कीबोर्ड', 'logitech-mk270-wireless-keyboard', 'विंडोज-के-लिए-लॉजिटेक-एमके270-वायरलेस-कीबोर्ड', 'MK270', '2', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', NULL, NULL, 'Red,Black,White,Blue', 'Red,Black,White,Blue', '1600', NULL, 'Reliable Plug and Play: The USB receiver provides a reliable wireless connection up to 33 ft (1), so you can forget about drop-outs and delays and you can take it wherever you use your computer', 'विश्वसनीय प्लग एंड प्ले: यूएसबी रिसीवर 33 फीट (1) तक एक विश्वसनीय वायरलेस कनेक्शन प्रदान करता है, जिससे आप ड्रॉप-आउट और देरी के बारे में भूल सकते हैं और आप इसे अपने कंप्यूटर का उपयोग करते हुए कहीं भी ले जा सकते हैं।', '<p>Reliable Plug and Play: The USB receiver provides a reliable wireless connection up to 33 ft (1), so you can forget about drop-outs and delays and you can take it wherever you use your computer</p>', '<pre>\r\nविश्वसनीय प्लग एंड प्ले: यूएसबी रिसीवर 33 फीट (1) तक एक विश्वसनीय वायरलेस कनेक्शन प्रदान करता है, जिससे आप ड्रॉप-आउट और देरी के बारे में भूल सकते हैं और आप इसे अपने कंप्यूटर का उपयोग करते हुए कहीं भी ले जा सकते हैं।</pre>', 'upload/products/thambnail/1726711476459264.jpg', 1, 1, 1, NULL, 1, '2022-03-14 23:20:17', '2022-03-14 23:20:17'),
(10, 3, 9, 19, 93, 'Living and More 4 Foot Height Adjustable Fold-in-Half Table', 'लिविंग एंड मोर 4 फुट हाइट एडजस्टेबल फोल्ड-इन-हाफ', 'living-and-more-4-foot-height-adjustable-fold-in-half-table', 'लिविंग-एंड-मोर-4-फुट-हाइट-एडजस्टेबल-फोल्ड-इन-हाफ', '7712314', '5', 'Living ,Height', 'लिविंग ,हाइट', NULL, NULL, 'Red,Black,White,Blue', 'Red,Black,White,Blue', '1800', '1650', 'Living and More 4 Foot Height Adjustable Fold-in-Half Table with Carrying Handle, Easy Folding and Storage, Indoor Outdoor Use, White', 'लिविंग एंड मोर 4 फुट हाइट एडजस्टेबल फोल्ड-इन-हाफ टेबल कैरीइंग हैंडल के साथ, आसान फोल्डिंग और स्टोरेज, इंडोर आउटडोर यूज, व्हाइट', '<p>Living and More 4 Foot Height Adjustable Fold-in-Half Table with Carrying Handle, Easy Folding and Storage, Indoor Outdoor Use, White</p>', '<p>&nbsp;</p>\r\n\r\n<p>लिविंग एंड मोर 4 फुट हाइट एडजस्टेबल फोल्ड-इन-हाफ टेबल कैरीइंग हैंडल के साथ, आसान फोल्डिंग और स्टोरेज, इंडोर आउटडोर यूज, व्हाइट</p>', 'upload/products/thambnail/1726711610107439.jpg', 1, 1, NULL, 1, 1, '2022-03-14 23:58:14', '2022-03-14 23:58:14'),
(11, 2, 10, 21, 77, 'VIVOHOME Electric Portable 2 in 1 Twin Tub Mini Laundry Washer and Spin Dryer Combo Washing Machine', 'VIVOHOME इलेक्ट्रिक पोर्टेबल 2 इन 1 ट्विन टब मिनी लॉन्ड्री वॉशर', 'vivohome-electric-portable-2-in-1-twin-tub-mini-laundry-washer-and-spin-dryer-combo-washing-machine', 'VIVOHOME-इलेक्ट्रिक-पोर्टेबल-2-इन-1-ट्विन-टब-मिनी-लॉन्ड्री-वॉशर', 'LxWxH', '8', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '3200', '3000', 'VIVOHOME Electric Portable 2 in 1 Twin Tub Mini Laundry Washer and Spin Dryer Combo Washing Machine with Built-in Drain Pump and Drain Hose and for Apartments 26lbs Blue Washer(18lbs) & Spinner(8lbs)', 'VIVOHOME इलेक्ट्रिक पोर्टेबल 2 इन 1 ट्विन टब मिनी लॉन्ड्री वॉशर और स्पिन ड्रायर कॉम्बो वॉशिंग मशीन के साथ बिल्ट-इन ड्रेन पंप और ड्रेन होज़ और अपार्टमेंट्स के लिए 26lbs ब्लू वॉशर (18lbs) और स्पिनर (8lbs)', '<p>VIVOHOME Electric Portable 2 in 1 Twin Tub Mini Laundry Washer and Spin Dryer Combo Washing Machine with Built-in Drain Pump and Drain Hose and for Apartments 26lbs Blue Washer(18lbs) &amp; Spinner(8lbs)</p>', '<pre>\r\nVIVOHOME इलेक्ट्रिक पोर्टेबल 2 इन 1 ट्विन टब मिनी लॉन्ड्री वॉशर और स्पिन ड्रायर कॉम्बो वॉशिंग मशीन के साथ बिल्ट-इन ड्रेन पंप और ड्रेन होज़ और अपार्टमेंट्स के लिए 26lbs ब्लू वॉशर (18lbs) और स्पिनर (8lbs)</pre>', 'upload/products/thambnail/1726711758304040.jpg', NULL, 1, NULL, 1, 1, '2022-03-14 23:21:38', '2022-03-14 23:21:38');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1DOMRlwrzh7MmvcQQqoMe5ixQOky89JZiCb5DtDD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNTlIZXo5QldtcEZPSWVLTDZQSmYwZW5lRWtsREkxQ2xCWUdFR0h1NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9teWNhcnQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjQ6ImNhcnQiO2E6MTp7czo3OiJkZWZhdWx0IjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YTowOnt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO319czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1647421815);

-- --------------------------------------------------------

--
-- Table structure for table `ship_districts`
--

CREATE TABLE `ship_districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_districts`
--

INSERT INTO `ship_districts` (`id`, `division_id`, `district_name`, `created_at`, `updated_at`) VALUES
(1, 2, 'feni', '2022-03-15 23:18:44', '2022-03-15 23:18:44'),
(2, 1, 'Gazipur', '2022-03-15 23:08:58', NULL),
(3, 4, 'srimongol', '2022-03-15 23:09:21', NULL),
(5, 2, 'chadpur', '2022-03-15 23:31:25', NULL),
(6, 1, 'Jamalpur', '2022-03-15 23:31:30', NULL),
(7, 1, 'gopalganj', '2022-03-15 23:31:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_divisions`
--

CREATE TABLE `ship_divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_divisions`
--

INSERT INTO `ship_divisions` (`id`, `division_name`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', '2022-03-15 22:40:58', NULL),
(2, 'Cumilla', '2022-03-15 22:47:00', '2022-03-15 22:47:00'),
(4, 'Sylhet', '2022-03-15 22:47:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_states`
--

CREATE TABLE `ship_states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_states`
--

INSERT INTO `ship_states` (`id`, `division_id`, `district_id`, `state_name`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 'Jamalpur Sadar Upazila', '2022-03-15 23:32:17', NULL),
(2, 1, 7, 'Baksiganj Upazila', '2022-03-15 23:32:30', NULL),
(3, 2, 5, 'shaharasti', '2022-03-15 23:32:49', NULL),
(4, 2, 5, 'hajigang', '2022-03-15 23:32:59', NULL),
(5, 4, 3, 'chatok', '2022-03-15 23:39:33', '2022-03-15 23:39:33');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_img`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'upload/slider/1723886265196995.jpg', 'slider one', 'hot sale clothes live show from shell clothing', 1, NULL, '2022-02-04 20:05:08'),
(3, 'upload/slider/1723886692055841.jpg', 'slider three', 'slider three description', 1, NULL, '2022-02-04 20:01:02'),
(4, 'upload/slider/1723886674977916.jpg', 'slider four', 'slider two description11', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_name_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_slug_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `subcategory_name_en`, `subcategory_name_hin`, `subcategory_slug_en`, `subcategory_slug_hin`, `created_at`, `updated_at`) VALUES
(8, 7, 'Mens Top Ware', 'मेन्स टॉप वेयर', 'mens-top-ware', 'मेन्स-टॉप-वेयर', NULL, NULL),
(9, 7, 'Mens Bottom Ware', 'मेन्स बॉटम वेयर', 'mens-bottom-ware', 'मेन्स-बॉटम-वेयर', NULL, NULL),
(10, 7, 'Mens Footware', 'पुरुषों के जूते', 'mens-footware', 'पुरुषों-के-जूते', NULL, NULL),
(11, 7, 'WoMens Footware', 'महिलाओं के जूते', 'womens-footware', 'महिलाओं-के-जूते', NULL, NULL),
(12, 7, 'WoMens Western', 'महिला पश्चिमी', 'womens-western', 'महिला-पश्चिमी', NULL, NULL),
(13, 7, 'WoMens Ethnic', 'महिला जातीय', 'womens-ethnic', 'महिला-जातीय', NULL, NULL),
(14, 8, 'Mobile Accessory', 'मोबाइल एक्सेसरी', 'mobile-accessory', 'मोबाइल-एक्सेसरी', NULL, NULL),
(15, 8, 'Gamming', 'गेमिंग', 'gamming', 'गेमिंग', NULL, NULL),
(16, 8, 'Computer Peripherals', 'कंप्यूटर सहायक उपकरण', 'computer-peripherals', 'कंप्यूटर-सहायक-उपकरण', NULL, NULL),
(17, 9, 'Furniture', 'फर्नीचर', 'furniture', 'फर्नीचर', NULL, NULL),
(18, 9, 'Home Decor', 'गृह सजावट', 'home-decor', 'गृह-सजावट', NULL, NULL),
(19, 9, 'Living Room', 'बैठक कक्ष', 'living-room', 'बैठक-कक्ष', NULL, NULL),
(20, 10, 'Televisions', 'टेलीविजन', 'televisions', 'टेलीविजन', NULL, NULL),
(21, 10, 'Washing Machines', 'वाशिंग मशीन', 'washing-machines', 'वाशिंग-मशीन', NULL, NULL),
(22, 10, 'Refrigerators', 'रेफ्रिजरेटर', 'refrigerators', 'रेफ्रिजरेटर', NULL, NULL),
(23, 11, 'Beauty and personal care', 'सौंदर्य और व्यक्तिगत देखभाल', 'beauty-and-personal-care', 'सौंदर्य-और-व्यक्तिगत-देखभाल', NULL, NULL),
(24, 11, 'Food and Drinks', 'खाना पीना', 'food-and-drinks', 'खाना-पीना', NULL, NULL),
(25, 11, 'Baby Care', 'शिशु के देखभाल', 'baby-care', 'शिशु-के-देखभाल', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_categories`
--

CREATE TABLE `sub_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subsubcategory_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subsubcategory_name_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subsubcategory_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subsubcategory_slug_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_sub_categories`
--

INSERT INTO `sub_sub_categories` (`id`, `category_id`, `subcategory_id`, `subsubcategory_name_en`, `subsubcategory_name_hin`, `subsubcategory_slug_en`, `subsubcategory_slug_hin`, `created_at`, `updated_at`) VALUES
(8, 7, 9, 'Mens Jeans', 'पुरुषों की जींस', 'mens-jeans', 'पुरुषों-की-जींस', NULL, NULL),
(9, 7, 9, 'Mens Trousers', 'पुरुषों की पतलून', 'mens-trousers', 'पुरुषों-की-पतलून', NULL, NULL),
(10, 7, 9, 'Mens Cargos', 'मेन्स कार्गो', 'mens-cargos', 'मेन्स-कार्गो', NULL, NULL),
(11, 7, 10, 'Mens Sports Shoes', 'पुरुषों के खेल के जूते', 'mens-sports-shoes', 'पुरुषों-के-खेल-के-जूते', NULL, NULL),
(12, 7, 10, 'Mens Casual Shoes', 'पुरुषों के आरामदायक जूते', 'mens-casual-shoes', 'पुरुषों-के-आरामदायक-जूते', NULL, NULL),
(13, 7, 10, 'Mens Formal Shoes', 'पुरुषों के औपचारिक जूते', 'mens-formal-shoes', 'पुरुषों-के-औपचारिक-जूते', NULL, NULL),
(14, 7, 8, 'Mens Tshirt', 'पुरुषों की टीशर्ट', 'mens-tshirt', 'पुरुषों-की-टीशर्ट', NULL, NULL),
(15, 7, 8, 'Mens Casual Shirt', 'पुरुषों की आरामदायक शर्ट', 'mens-casual-shirt', 'पुरुषों-की-आरामदायक-शर्ट', NULL, NULL),
(16, 7, 8, 'Mens Formal Shirt', 'पुरुषों की औपचारिक शर्ट', 'mens-formal-shirt', 'पुरुषों-की-औपचारिक-शर्ट', NULL, NULL),
(17, 7, 8, 'Mens Kurtas', 'मेंस कुर्ता', 'mens-kurtas', 'मेंस-कुर्ता', NULL, NULL),
(18, 7, 11, 'WoMens Sports Shoes', 'महिलाओं के खेल के जूते', 'womens-sports-shoes', 'महिलाओं-के-खेल-के-जूते', NULL, NULL),
(19, 7, 11, 'WoMens Casual Shoes', 'महिलाओं के आरामदायक जूते', 'womens-casual-shoes', 'महिलाओं-के-आरामदायक-जूते', NULL, NULL),
(20, 7, 11, 'WoMens Heels', 'महिलाओं की हील्स', 'womens-heels', 'महिलाओं-की-हील्स', NULL, NULL),
(21, 7, 11, 'WoMens Wedges', 'महिला वेजेज', 'womens-wedges', 'महिला-वेजेज', NULL, NULL),
(22, 7, 11, 'WoMens Ethnic Shoes', 'महिलाओं के जातीय जूते', 'womens-ethnic-shoes', 'महिलाओं-के-जातीय-जूते', NULL, NULL),
(23, 7, 11, 'WoMens Ballerinas', 'महिला बैलेरीना', 'womens-ballerinas', 'महिला-बैलेरीना', NULL, NULL),
(24, 7, 13, 'Kurtas & kurti', 'कुर्ता और कुर्ती', 'kurtas-&-kurti', 'कुर्ता-और-कुर्ती', NULL, NULL),
(25, 7, 13, 'Fabric', 'कपड़ा', 'fabric', 'कपड़ा', NULL, NULL),
(26, 7, 13, 'Sarees', 'साड़ियों', 'sarees', 'साड़ियों', NULL, NULL),
(27, 7, 13, 'Gown', 'गाउन', 'gown', 'गाउन', NULL, NULL),
(28, 7, 13, 'Lehanga', 'लहंगा', 'lehanga', 'लहंगा', NULL, NULL),
(29, 7, 12, 'WoMens Tops', 'महिला शीर्ष', 'womens-tops', 'महिला-शीर्ष', NULL, NULL),
(30, 7, 12, 'WoMens Tshirt & POLO Tshirt', 'महिला टीशर्ट और पोलो टीशर्ट', 'womens-tshirt-&-polo-tshirt', 'महिला-टीशर्ट-और-पोलो-टीशर्ट', NULL, NULL),
(31, 7, 12, 'WoMens Jeans', 'महिला जीन्स', 'womens-jeans', 'महिला-जीन्स', NULL, NULL),
(32, 7, 12, 'WoMens Nightsuit', 'महिला नाइटसूट', 'womens-nightsuit', 'महिला-नाइटसूट', NULL, NULL),
(33, 7, 12, 'WoMens Track Pents', 'महिला ट्रैक पेंट', 'womens-track-pents', 'महिला-ट्रैक-पेंट', NULL, NULL),
(34, 7, 12, 'WoMens Jump Suit', 'महिला कूद सूट', 'womens-jump-suit', 'महिला-कूद-सूट', NULL, NULL),
(35, 8, 16, 'Webcams', 'वेबकैम', 'webcams', 'वेबकैम', NULL, NULL),
(36, 8, 16, 'Touchpad', 'टच पैड', 'touchpad', 'टच-पैड', NULL, NULL),
(37, 8, 16, 'Harddisk Cases', 'हार्डडिस्क मामले', 'harddisk-cases', 'हार्डडिस्क-मामले', NULL, NULL),
(38, 8, 16, 'USB Gadgets', 'यूएसबी गैजेट्स', 'usb-gadgets', 'यूएसबी-गैजेट्स', NULL, NULL),
(39, 8, 16, 'Projector', 'प्रक्षेपक', 'projector', 'प्रक्षेपक', NULL, NULL),
(40, 8, 16, 'Monitor & Tv', 'मॉनिटर और टीवी', 'monitor-&-tv', 'मॉनिटर-और-टीवी', NULL, NULL),
(41, 8, 16, 'Hinges', 'टिका', 'hinges', 'टिका', NULL, NULL),
(42, 8, 16, 'Laptop Adapter', 'लैपटॉप एडाप्टर', 'laptop-adapter', 'लैपटॉप-एडाप्टर', NULL, NULL),
(43, 8, 16, 'Batteries', 'बैटरियों', 'batteries', 'बैटरियों', NULL, NULL),
(44, 8, 15, 'Cables & Adapter', 'केबल और एडेप्टर', 'cables-&-adapter', 'केबल-और-एडेप्टर', NULL, NULL),
(45, 8, 15, 'Mouse', 'चूहा', 'mouse', 'चूहा', NULL, NULL),
(46, 8, 15, 'keyboard', 'कीबोर्ड', 'keyboard', 'कीबोर्ड', NULL, NULL),
(47, 8, 15, 'Mousepads', 'माउस पैड', 'mousepads', 'माउस-पैड', NULL, NULL),
(48, 8, 15, 'Controller', 'नियंत्रक', 'controller', 'नियंत्रक', NULL, NULL),
(49, 8, 15, 'Accessory Kits', 'गौण किट', 'accessory-kits', 'गौण-किट', NULL, NULL),
(50, 8, 15, 'Charging Station', 'चार्जिंग स्टेशन', 'charging-station', 'चार्जिंग-स्टेशन', NULL, NULL),
(51, 8, 15, 'Tv-out Cable', 'टीवी-आउट केबल', 'tv-out-cable', 'टीवी-आउट-केबल', NULL, NULL),
(52, 8, 15, 'Batteries & Chargers', 'बैटरी और चार्जर', 'batteries-&-chargers', 'बैटरी-और-चार्जर', NULL, NULL),
(53, 8, 14, 'Plain Case', 'सादा मामला', 'plain-case', 'सादा-मामला', NULL, NULL),
(54, 8, 14, 'Designer Cases', 'डिजाइनर मामला', 'designer-cases', 'डिजाइनर-मामला', NULL, NULL),
(55, 8, 14, 'Screer Guards', 'स्क्रीन गार्ड', 'screer-guards', 'स्क्रीन-गार्ड', NULL, NULL),
(56, 8, 14, 'Mobile display', 'मोबाइल डिस्प्ले', 'mobile-display', 'मोबाइल-डिस्प्ले', NULL, NULL),
(57, 8, 14, 'Mobile Charger', 'मोबाइल चार्जर', 'mobile-charger', 'मोबाइल-चार्जर', NULL, NULL),
(58, 8, 14, 'Headphone Stands', 'हेडफोन स्टैंड', 'headphone-stands', 'हेडफोन-स्टैंड', NULL, NULL),
(59, 8, 14, 'Mobile Phone Lens', 'मोबाइल फोन लेंस', 'mobile-phone-lens', 'मोबाइल-फोन-लेंस', NULL, NULL),
(60, 11, 25, 'Diaper & Potty Training', 'डायपर और पॉटी ट्रेनिंग', 'diaper-&-potty-training', 'डायपर-और-पॉटी-ट्रेनिंग', NULL, NULL),
(61, 11, 25, 'Baby Food', 'बच्चों का खाना', 'baby-food', 'बच्चों-का-खाना', NULL, NULL),
(62, 11, 25, 'Baby Wipes', 'बेबी वाइप्स', 'baby-wipes', 'बेबी-वाइप्स', NULL, NULL),
(63, 11, 23, 'Makeup', 'मेकअप', 'makeup', 'मेकअप', NULL, NULL),
(64, 11, 23, 'Eye Makeup', 'आँख मेकअप', 'eye-makeup', 'आँख-मेकअप', NULL, NULL),
(65, 11, 23, 'Hair Care', 'बालों की देखभाल', 'hair-care', 'बालों-की-देखभाल', NULL, NULL),
(66, 11, 24, 'Beverage', 'पेय पदार्थ', 'beverage', 'पेय-पदार्थ', NULL, NULL),
(67, 11, 24, 'Chocolates', 'चॉकलेट', 'chocolates', 'चॉकलेट', NULL, NULL),
(68, 11, 24, 'Snacks', 'नाश्ता', 'snacks', 'नाश्ता', NULL, NULL),
(69, 10, 22, 'Single Door', 'सिंगल डोर', 'single-door', 'सिंगल-डोर', NULL, NULL),
(70, 10, 22, 'Double Door', 'दोहरा दरवाज़ा', 'double-door', 'दोहरा-दरवाज़ा', NULL, NULL),
(71, 10, 22, 'Triple door', 'ट्रिपल दरवाजा', 'triple-door', 'ट्रिपल-दरवाजा', NULL, NULL),
(72, 10, 20, '50 Inch TVs', '50 इंच के टीवी', '50-inch-tvs', '50-इंच-के-टीवी', NULL, NULL),
(73, 10, 20, '40 and 43 Inch TVs', '40 और 43 इंच के टीवी', '40-and-43-inch-tvs', '40-और-43-इंच-के-टीवी', NULL, NULL),
(74, 10, 20, '32 Inch TVs', '32 इंच के टीवी', '32-inch-tvs', '32-इंच-के-टीवी', NULL, NULL),
(75, 10, 21, 'Fully Automatic Front Load', 'पूरी तरह से स्वचालित फ्रंट लोड', 'fully-automatic-front-load', 'पूरी-तरह-से-स्वचालित-फ्रंट-लोड', NULL, NULL),
(76, 10, 21, 'Semi Automatic Top Load', 'अर्ध स्वचालित टॉप लोड', 'semi-automatic-top-load', 'अर्ध-स्वचालित-टॉप-लोड', NULL, NULL),
(77, 10, 21, 'Fully Automatic Top Load', 'पूरी तरह से स्वचालित शीर्ष लोड', 'fully-automatic-top-load', 'पूरी-तरह-से-स्वचालित-शीर्ष-लोड', NULL, NULL),
(78, 9, 17, 'Bedsheets', 'चादरे', 'bedsheets', 'चादरे', NULL, NULL),
(79, 9, 17, 'Curtains', 'पर्दे', 'curtains', 'पर्दे', NULL, NULL),
(80, 9, 17, 'Cushions & Pillows', 'तकिए और तकिए', 'cushions-&-pillows', 'तकिए-और-तकिए', NULL, NULL),
(81, 9, 17, 'Blankets', 'कम्बल', 'blankets', 'कम्बल', NULL, NULL),
(82, 9, 17, 'Bath Towels', 'नहाने का तौलिया', 'bath-towels', 'नहाने-का-तौलिया', NULL, NULL),
(83, 9, 17, 'Kitchen & Table Linen', 'रसोई और टेबल लिनन', 'kitchen-&-table-linen', 'रसोई-और-टेबल-लिनन', NULL, NULL),
(84, 9, 17, 'Floor Coverings', 'फर्श का ढकना', 'floor-coverings', 'फर्श-का-ढकना', NULL, NULL),
(85, 9, 17, 'Floor Coverings', 'फर्श का ढकना', 'floor-coverings', 'फर्श-का-ढकना', NULL, NULL),
(86, 9, 18, 'Showpieces & Figurines', 'शोपीस और मूर्तियाँ', 'showpieces-&-figurines', 'शोपीस-और-मूर्तियाँ', NULL, NULL),
(87, 9, 18, 'Stickers', 'स्टिकर', 'stickers', 'स्टिकर', NULL, NULL),
(88, 9, 18, 'Wall Shelves', 'दीवार अलमारियों', 'wall-shelves', 'दीवार-अलमारियों', NULL, NULL),
(89, 9, 18, 'Clocks', 'घड़ियों', 'clocks', 'घड़ियों', NULL, NULL),
(90, 9, 18, 'Paintings', 'चित्रों', 'paintings', 'चित्रों', NULL, NULL),
(91, 9, 19, 'Shoe Rack', 'जूता रखने का कठहरा', 'shoe-rack', 'जूता-रखने-का-कठहरा', NULL, NULL),
(92, 9, 19, 'Coffee Tables', 'कॉफ़ी मेज़', 'coffee-tables', 'कॉफ़ी-मेज़', NULL, NULL),
(93, 9, 19, 'Dining Tables & Sets', 'डाइनिंग टेबल और सेट', 'dining-tables-&-sets', 'डाइनिंग-टेबल-और-सेट', NULL, NULL),
(94, 9, 19, 'TV Units & Cabinets', 'टीवी इकाइयाँ और अलमारियाँ', 'tv-units-&-cabinets', 'टीवी-इकाइयाँ-और-अलमारियाँ', NULL, NULL),
(95, 9, 19, 'Sofa Beds', 'सोफा बेड', 'sofa-beds', 'सोफा-बेड', NULL, NULL),
(96, 9, 19, 'Sofas', 'सोफे', 'sofas', 'सोफे', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'user', 'jowel@user.com', NULL, NULL, '$2y$10$zl3nISZHXsgcAC446Y5/.uE6IsZkIZjZmpyFrsr4HzdMcS8xwFcZO', NULL, NULL, NULL, NULL, 'profile-photos/Ho3GBF2wbaNz0Xuu48Z3vnRwayYQmpQ0oa41Ws8f.jpg', '2022-01-27 11:26:30', '2022-01-27 11:50:01'),
(2, 'user', 'user@gmail.com', '01847313527', NULL, '$2y$10$sUve9mptTItQgLW.pOxfZ.Vm.slrsdv.iBh/4pRiP8RO1mU2RvHeO', NULL, NULL, '2TT4BvcbG3lsrBwJUSe2CCQKI7AjKSnwlDAjI0GUZ6VtFyPgh0Y2Fny0UMJh', NULL, NULL, '2022-01-28 23:40:14', '2022-01-29 00:19:42'),
(3, 'jowel', 'jowel@gmail.com', '01875628575', NULL, '$2y$10$QhIzuyxdhabs83vmEVFwsOIfsnVfGYXOmJnr.MeM0kt96SwsqKF1a', NULL, NULL, NULL, NULL, '202201291347pexels-alex-nasto-582635.jpg', '2022-01-29 07:39:03', '2022-01-29 08:06:16');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(5, 2, 11, '2022-03-15 07:10:19', NULL),
(6, 2, 8, '2022-03-15 07:10:21', NULL),
(7, 2, 4, '2022-03-15 07:54:58', NULL),
(8, 2, 6, '2022-03-15 07:55:14', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `ship_districts`
--
ALTER TABLE `ship_districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_divisions`
--
ALTER TABLE `ship_divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_states`
--
ALTER TABLE `ship_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ship_districts`
--
ALTER TABLE `ship_districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ship_divisions`
--
ALTER TABLE `ship_divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ship_states`
--
ALTER TABLE `ship_states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
