-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2022 at 06:38 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

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
(1, 'Admin', 'admin@gmail.com', '2022-01-27 12:21:12', '$2y$10$xz1LI6SYO9okqYzta6jz5OYCMt7kD2amgeWF1AtcRP76DTJOo6Ysq', '9uU6ESSmiMxUdRpbfHPxYAxf46vY8t1QDQKcQjzUx2skbxGDu9Z7VB3Umndu', NULL, '202201290322pexels-alex-nasto-582635.jpg', '2022-01-27 12:21:12', '2022-01-28 21:22:39');

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
(14, '2022_02_05_014328_create_sliders_table', 8);

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
(6, 3, 'upload/products/multi-image/1723824176050335.jpeg', '2022-02-04 03:27:22', NULL),
(7, 3, 'upload/products/multi-image/1723824176393912.jpeg', '2022-02-04 03:27:23', NULL),
(8, 3, 'upload/products/multi-image/1723824176640347.jpeg', '2022-02-04 03:27:23', NULL),
(9, 3, 'upload/products/multi-image/1723824176919061.jpeg', '2022-02-04 03:27:23', NULL),
(10, 3, 'upload/products/multi-image/1723824177196842.jpeg', '2022-02-04 03:27:24', NULL),
(11, 4, 'upload/products/multi-image/1723827844381541.jpeg', '2022-02-04 03:32:14', '2022-02-04 04:25:41'),
(12, 4, 'upload/products/multi-image/1723824482005843.jpeg', '2022-02-04 03:32:14', NULL),
(14, 5, 'upload/products/multi-image/1723825198322383.jpeg', '2022-02-04 03:43:37', NULL),
(15, 5, 'upload/products/multi-image/1723825198511689.jpeg', '2022-02-04 03:43:37', NULL),
(16, 5, 'upload/products/multi-image/1723825198763585.jpeg', '2022-02-04 03:43:38', NULL),
(17, 5, 'upload/products/multi-image/1723825198941623.jpeg', '2022-02-04 03:43:38', NULL);

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
  `product_size_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(3, 1, 7, 9, 8, 'Slim Men Blue Jeans', 'स्लिम मेन ब्लू जींस', 'slim-men-blue-jeans', 'स्लिम-मेन-ब्लू-जींस', 'MJ-SBJ', '10', 'Men Blue Jeans,Blue Jeans', 'मेन ब्लू जींस,ब्लू जींस', '30,32,34,36,38', '32,34,36,38', 'Blue', 'नीला', '2200', '200', 'it is ankle length, narrow,strachable fabric', 'यह टखने की लंबाई, संकीर्ण, फैला हुआ कपड़ा है', '<p>&nbsp;it is ankle length, narrow,strachable fabric&nbsp;it is ankle length, narrow,strachable fabric</p>', '<p>यह टखने की लंबाई, संकीर्ण, फैला हुआ कपड़ा हैयह टखने की लंबाई, संकीर्ण, फैला हुआ कपड़ा है</p>', 'upload/products/thambnail/1723824175758625.jpeg', 1, NULL, NULL, 1, 1, '2022-02-04 03:27:22', NULL),
(4, 1, 7, 9, 10, 'Men Cargos', 'पुरुष कार्गो', 'men-cargos', 'पुरुष-कार्गो', 'MC', '5', 'cargos,men cargos', 'कार्गो, पुरुष कार्गो', '28,30,32,34,36,38', '28,30,32,34,36,38', 'Black', 'काला', '1600', '200', 'it have elastic in its waist and you have to adjust', 'इसकी कमर में इलास्टिक है और आपको एडजस्ट करना होगा', '<p>&nbsp;it have elastic in its waist and you have to adjust&nbsp;it have elastic in its waist and you have to adjust</p>', '<p>&nbsp;</p>\r\n\r\n<p>इसकी कमर में इलास्टिक है और आपको एडजस्ट करना होगा</p>\r\n\r\n<p>इसकी कमर में इलास्टिक है और आपको एडजस्ट करना होगा</p>', 'upload/products/thambnail/1723828465763949.jpeg', NULL, 1, 1, NULL, 0, '2022-02-04 04:11:58', '2022-02-04 04:48:13'),
(5, 2, 8, 15, 46, 'RPM Euro Games Gaming Keyboard and Mouse Combo', 'आरपीएम यूरो गेम्स गेमिंग कीबोर्ड और माउस कॉम्बो', 'rpm-euro-games-gaming-keyboard-and-mouse-combo', 'आरपीएम-यूरो-गेम्स-गेमिंग-कीबोर्ड-और-माउस-कॉम्बो', 'Mouse - Upto 3200 DPI', '10', 'RPM,Gaming Keyboard,Combo | Keyboard', 'आरपीएम ,कॉम्बो,सस्पेंशन,आरजीबी', 'Standard', 'मानक', 'RGB', 'आरजीबी', '3200', '500', 'Good quality product. It comes in various range & variety a• Keyboard : With Backlit that glows in the dark.', 'अच्छी गुणवत्ता वाला उत्पाद। यह विभिन्न रेंज और वैरायटी में आता है a• कीबोर्ड: बैकलिट के साथ जो अंधेरे में चमकता है।', '<p>Good quality product. It comes in various range &amp; variety a&bull; Keyboard : With Backlit that glows in the dark.Good quality product. It comes in various range &amp; variety a&bull; Keyboard : With Backlit that glows in the dark.</p>', '<pre>\r\nअच्छी गुणवत्ता वाला उत्पाद। यह विभिन्न रेंज और वैरायटी में आता है a&bull; कीबोर्ड: बैकलिट के साथ जो अंधेरे में चमकता है।अच्छी गुणवत्ता वाला उत्पाद। यह विभिन्न रेंज और वैरायटी में आता है a&bull; कीबोर्ड: बैकलिट के साथ जो अंधेरे में चमकता है।</pre>', 'upload/products/thambnail/1723825198109322.jpeg', NULL, NULL, 1, NULL, 1, '2022-02-04 03:43:37', NULL);

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
('Tz3qjqoxCkMNkffpb8vL14XjtfmRpptil4OHfuMv', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiWGZjek1GUU8xbUZVeVRYSk9LeXUwaXhpVUFPcXJHdDBCV1ZyNGE4byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTI6ImxvZ2luX2FkbWluXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjg6Imxhbmd1YWdlIjtzOjc6ImVuZ2xpc2giO30=', 1644031130);

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
(2, 'user', 'user@gmail.com', '01847313527', NULL, '$2y$10$sUve9mptTItQgLW.pOxfZ.Vm.slrsdv.iBh/4pRiP8RO1mU2RvHeO', NULL, NULL, 'F9szFVaAA3omB4ZgfvRyT9Ah9eqPjsGSP3kUa108XtbV4Qx3dNo6h70aAN0u', NULL, NULL, '2022-01-28 23:40:14', '2022-01-29 00:19:42'),
(3, 'jowel', 'jowel@gmail.com', '01875628575', NULL, '$2y$10$QhIzuyxdhabs83vmEVFwsOIfsnVfGYXOmJnr.MeM0kt96SwsqKF1a', NULL, NULL, NULL, NULL, '202201291347pexels-alex-nasto-582635.jpg', '2022-01-29 07:39:03', '2022-01-29 08:06:16');

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
