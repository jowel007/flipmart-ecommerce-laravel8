-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2022 at 06:38 PM
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
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupons` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `returnorder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orders` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reports` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alluser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adminuserrole` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(25) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `brand`, `category`, `product`, `slider`, `coupons`, `shipping`, `blog`, `setting`, `returnorder`, `review`, `orders`, `stock`, `reports`, `alluser`, `adminuserrole`, `type`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2022-01-27 12:21:12', '$2y$10$xz1LI6SYO9okqYzta6jz5OYCMt7kD2amgeWF1AtcRP76DTJOo6Ysq', '01847313526', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, 'djECDIxz3ukwzU9OWKLjHZpKuN3wnO783M0rvxCgI0yxVRoE6jME4Xgm9Sa5', NULL, '202201290322pexels-alex-nasto-582635.jpg', '2022-01-27 12:21:12', '2022-01-28 21:22:39'),
(3, 'hello', 'hello@gmail.com', NULL, '$2y$10$5MR7Ce.M1iRSa6B639DkreuBCwWyLvjr2/zUlpaQ3beHqgUjthWmi', '01303397159', NULL, '1', NULL, '1', NULL, NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, NULL, NULL, 'upload/admin_images/1728292074403492.png', '2022-03-25 11:37:18', '2022-03-25 11:37:18'),
(4, 'test', 'test@gmail.com', NULL, '$2y$10$Tdz4ieK0ZVMfG0J6w3NumOl7Qrzwm7yR4POjwAiN33tfjCSge0Ux.', '01847313527', NULL, '1', NULL, '1', NULL, '1', '1', '1', '1', '1', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, 'upload/admin_images/1728294237078704.png', '2022-03-25 11:37:28', '2022-03-25 11:37:28');

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_details_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_details_hin` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `category_id`, `post_title_en`, `post_title_hin`, `post_slug_en`, `post_slug_hin`, `post_image`, `post_details_en`, `post_details_hin`, `created_at`, `updated_at`) VALUES
(1, 2, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur', 'निमो एनिम इप्सम वोलुप्टेटम किआ वोलुप्टस सिट एस्परनाटुर', 'nemo-enim-ipsam-voluptatem-quia-voluptas-sit-aspernatur', 'निमो-एनिम-इप्सम-वोलुप्टेटम-किआ-वोलुप्टस-सिट-एस्परनाटुर', 'upload/post/1727787874061875.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n\r\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', '<pre>\r\nलोरेम इप्सम डोलर सिट एमेट, कॉन्सेक्टेटूर एडिपिसिंग एलीट, सेड डू ईयूसमॉड टेम्पर इनसिडिडंट यूट लेबर एट डोलोरे मैग्ना एलिका। यूट एनिम एड मिनिम वेनिअम, क्विस नोस्ट्रुड एक्सर्सिटेशन उलमको लेबरिस निसि यूट एलिक्विप एक्स ईए कमोडो कॉन्सेक्वेट। ड्यूस ऑट इर्योर डोलर इन रिप्रेहेंडरिट इन वॉलुप्टेट वेलिट एसएसई सिलम डोलोरे ईयू फुगियाट नाला परियातुर। एक्सेप्युर सिंट ओसीकैट कपिडैटैट नॉन प्रोडेंट, सन्ट इन कल्पा क्वी ऑफिसिया डिसेरुंट मोलिट एनिम आईडी इस्ट लेबरम। लोरेम इप्सम डोलर सिट एमेट, कॉन्सेक्टेटूर एडिपिसिंग एलीट, सेड डू ईयूसमॉड टेम्पर इनसिडिडंट यूट लेबर एट डोलोरे मैग्ना एलिका। यूट एनिम एड मिनिम वेनिअम, क्विस नोस्ट्रुड एक्सर्सिटेशन उलमको लेबरिस निसि यूट एलिक्विप एक्स ईए कमोडो कॉन्सेक्वेट। लोरेम इप्सम डोलर सिट एमेट, कॉन्सेक्टेटूर एडिपिसिंग एलीट, सेड डू ईयूसमॉड टेम्पर इनसिडिडंट यूट लेबर एट डोलोरे मैग्ना एलिका। यूट एनिम एड मिनिम वेनिअम, क्विस नोस्ट्रुड एक्सर्सिटेशन उलमको लेबरिस निसि यूट एलिक्विप एक्स ईए कमोडो कॉन्सेक्वेट। ड्यूस ऑट इर्योर डोलर इन रिप्रेहेंडरिट इन वॉलुप्टेट वेलिट एसएसई सिलम डोलोरे ईयू फुगियाट नाला परियातुर। एक्सेप्युर सिंट ओसीकैट कपिडैटैट नॉन प्रोडेंट, सन्ट इन कल्पा क्वी ऑफिसिया डिसेरुंट मोलिट एनिम आईडी इस्ट लेबरम। लोरेम इप्सम डोलर सिट एमेट, कॉन्सेक्टेटूर एडिपिसिंग एलीट, सेड डू ईयूसमॉड टेम्पर इनसिडिडंट यूट लेबर एट डोलोरे मैग्ना एलिका। यूट एनिम एड मिनिम वेनिअम, क्विस नोस्ट्रुड एक्सर्सिटेशन उलमको लेबरिस निसि यूट एलिक्विप एक्स ईए कमोडो कॉन्सेक्वेट।\r\n\r\nड्यूस ऑट इर्योर डोलर इन रिप्रेहेंडरिट इन वॉलुप्टेट वेलिट एसएसई सिलम डोलोरे ईयू फुगियाट नाला परियातुर। एक्सेप्युर सिंट ओसीकैट कपिडैटैट नॉन प्रोडेंट, सन्ट इन कल्पा क्वी ऑफिसिया डिसेरुंट मोलिट एनिम आईडी इस्ट लेबरम। लोरेम इप्सम डोलर सिट एमेट, कॉन्सेक्टेटूर एडिपिसिंग एलीट, सेड डू ईयूसमॉड टेम्पर इनसिडिडंट यूट लेबर एट डोलोरे मैग्ना एलिका। यूट एनिम एड मिनिम वेनिअम, क्विस नोस्ट्रुड एक्सर्सिटेशन उलमको लेबरिस निसि यूट एलिक्विप एक्स ईए कमोडो कॉन्सेक्वेट। ड्यूस ऑट इर्योर डोलर इन रिप्रेहेंडरिट इन वॉलुप्टेट वेलिट एसएसई सिलम डोलोरे ईयू फुगियाट नाला परियातुर। एक्सेप्युर सिंट ओसीकैट कपिडैटैट नॉन प्रोडेंट, सन्ट इन कल्पा क्वी ऑफिसिया डिसेरुंट मोलिट एनिम आईडी इस्ट लेबरम। लोरेम इप्सम डोलर सिट एमेट, कॉन्सेक्टेटूर एडिपिसिंग एलीट, सेड डू ईयूसमॉड टेम्पर इनसिडिडंट यूट लेबर एट डोलोरे मैग्ना एलिका। यूट एनिम एड मिनिम वेनिअम, क्विस नोस्ट्रुड एक्सर्सिटेशन उलमको लेबरिस निसि यूट एलिक्विप एक्स ईए कमोडो कॉन्सेक्वेट।</pre>', '2022-03-20 04:14:24', NULL),
(2, 1, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur', 'निमो एनिम इप्सम वोलुप्टेटम किआ वोलुप्टस सिट एस्परनाटुर', 'nemo-enim-ipsam-voluptatem-quia-voluptas-sit-aspernatur', 'निमो-एनिम-इप्सम-वोलुप्टेटम-किआ-वोलुप्टस-सिट-एस्परनाटुर', 'upload/post/1727787983585761.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n\r\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', '<pre>\r\nलोरेम इप्सम डोलर सिट एमेट, कॉन्सेक्टेटूर एडिपिसिंग एलीट, सेड डू ईयूसमॉड टेम्पर इनसिडिडंट यूट लेबर एट डोलोरे मैग्ना एलिका। यूट एनिम एड मिनिम वेनिअम, क्विस नोस्ट्रुड एक्सर्सिटेशन उलमको लेबरिस निसि यूट एलिक्विप एक्स ईए कमोडो कॉन्सेक्वेट। ड्यूस ऑट इर्योर डोलर इन रिप्रेहेंडरिट इन वॉलुप्टेट वेलिट एसएसई सिलम डोलोरे ईयू फुगियाट नाला परियातुर। एक्सेप्युर सिंट ओसीकैट कपिडैटैट नॉन प्रोडेंट, सन्ट इन कल्पा क्वी ऑफिसिया डिसेरुंट मोलिट एनिम आईडी इस्ट लेबरम। लोरेम इप्सम डोलर सिट एमेट, कॉन्सेक्टेटूर एडिपिसिंग एलीट, सेड डू ईयूसमॉड टेम्पर इनसिडिडंट यूट लेबर एट डोलोरे मैग्ना एलिका। यूट एनिम एड मिनिम वेनिअम, क्विस नोस्ट्रुड एक्सर्सिटेशन उलमको लेबरिस निसि यूट एलिक्विप एक्स ईए कमोडो कॉन्सेक्वेट। लोरेम इप्सम डोलर सिट एमेट, कॉन्सेक्टेटूर एडिपिसिंग एलीट, सेड डू ईयूसमॉड टेम्पर इनसिडिडंट यूट लेबर एट डोलोरे मैग्ना एलिका। यूट एनिम एड मिनिम वेनिअम, क्विस नोस्ट्रुड एक्सर्सिटेशन उलमको लेबरिस निसि यूट एलिक्विप एक्स ईए कमोडो कॉन्सेक्वेट। ड्यूस ऑट इर्योर डोलर इन रिप्रेहेंडरिट इन वॉलुप्टेट वेलिट एसएसई सिलम डोलोरे ईयू फुगियाट नाला परियातुर। एक्सेप्युर सिंट ओसीकैट कपिडैटैट नॉन प्रोडेंट, सन्ट इन कल्पा क्वी ऑफिसिया डिसेरुंट मोलिट एनिम आईडी इस्ट लेबरम। लोरेम इप्सम डोलर सिट एमेट, कॉन्सेक्टेटूर एडिपिसिंग एलीट, सेड डू ईयूसमॉड टेम्पर इनसिडिडंट यूट लेबर एट डोलोरे मैग्ना एलिका। यूट एनिम एड मिनिम वेनिअम, क्विस नोस्ट्रुड एक्सर्सिटेशन उलमको लेबरिस निसि यूट एलिक्विप एक्स ईए कमोडो कॉन्सेक्वेट।\r\n\r\nड्यूस ऑट इर्योर डोलर इन रिप्रेहेंडरिट इन वॉलुप्टेट वेलिट एसएसई सिलम डोलोरे ईयू फुगियाट नाला परियातुर। एक्सेप्युर सिंट ओसीकैट कपिडैटैट नॉन प्रोडेंट, सन्ट इन कल्पा क्वी ऑफिसिया डिसेरुंट मोलिट एनिम आईडी इस्ट लेबरम। लोरेम इप्सम डोलर सिट एमेट, कॉन्सेक्टेटूर एडिपिसिंग एलीट, सेड डू ईयूसमॉड टेम्पर इनसिडिडंट यूट लेबर एट डोलोरे मैग्ना एलिका। यूट एनिम एड मिनिम वेनिअम, क्विस नोस्ट्रुड एक्सर्सिटेशन उलमको लेबरिस निसि यूट एलिक्विप एक्स ईए कमोडो कॉन्सेक्वेट। ड्यूस ऑट इर्योर डोलर इन रिप्रेहेंडरिट इन वॉलुप्टेट वेलिट एसएसई सिलम डोलोरे ईयू फुगियाट नाला परियातुर। एक्सेप्युर सिंट ओसीकैट कपिडैटैट नॉन प्रोडेंट, सन्ट इन कल्पा क्वी ऑफिसिया डिसेरुंट मोलिट एनिम आईडी इस्ट लेबरम। लोरेम इप्सम डोलर सिट एमेट, कॉन्सेक्टेटूर एडिपिसिंग एलीट, सेड डू ईयूसमॉड टेम्पर इनसिडिडंट यूट लेबर एट डोलोरे मैग्ना एलिका। यूट एनिम एड मिनिम वेनिअम, क्विस नोस्ट्रुड एक्सर्सिटेशन उलमको लेबरिस निसि यूट एलिक्विप एक्स ईए कमोडो कॉन्सेक्वेट।</pre>', '2022-03-20 04:14:19', NULL),
(3, 4, 'How to Craft a Successful Customer-Centric Marketing Strategy', 'एक सफल ग्राहक-केंद्रित मार्केटिंग रणनीति कैसे तैयार करें', 'how-to-craft-a-successful-customer-centric-marketing-strategy', 'एक-सफल-ग्राहक-केंद्रित-मार्केटिंग-रणनीति-कैसे-तैयार-करें', 'upload/post/1727788178661316.jpg', '<p>My online search for the right gift led me to&nbsp;<a href=\"https://www.stlocarina.com/\" rel=\"noopener\" target=\"_blank\">STL Ocarina</a>, a company that sells ocarinas &mdash; the musical wind instruments that have been around for thousands of years and a staple item in the Legend of Zelda series. Clearly, the company knew many of its customers were like me &mdash; either fans of the games or shopping for fans of the games &mdash; so it made finding Zelda-themed ocarinas on its website simple.</p>\r\n\r\n<p>Just hover over the tab that says &quot;Our Ocarinas,&quot; and the first category to pop up under the tab says &quot;For Legend of Zelda Fans.&quot; From there, I was taken to a page displaying their Zelda-themed ocarinas and the option to include a songbook of the game&rsquo;s music.</p>\r\n\r\n<p>After purchasing the ocarina and songbook, I remembered my friend doesn&rsquo;t know how to play the ocarina and the songbook may not have tips for beginners. Luckily, STL Ocarina&rsquo;s confirmation email included a YouTube instructional video and links to online resources that will help him get started.</p>', '<pre>\r\nसही उपहार के लिए मेरी ऑनलाइन खोज ने मुझे एसटीएल ओकेरिना तक पहुँचाया, जो एक कंपनी है जो ओकारिनस बेचती है - संगीतमय पवन वाद्ययंत्र जो हजारों वर्षों से हैं और लीजेंड ऑफ ज़ेल्डा श्रृंखला में एक प्रमुख वस्तु है। स्पष्ट रूप से, कंपनी को पता था कि उसके कई ग्राहक मेरे जैसे थे - या तो खेल के प्रशंसक या खेल के प्रशंसकों के लिए खरीदारी - इसलिए इसने अपनी वेबसाइट पर ज़ेल्डा-थीम वाले ओकारिनस को सरल बना दिया।\r\n\r\nबस उस टैब पर होवर करें जो &quot;हमारा ओकारिनास&quot; कहता है और टैब के नीचे पॉप अप करने वाली पहली श्रेणी &quot;फॉर लीजेंड ऑफ ज़ेल्डा फैन्स&quot; कहती है। वहां से, मुझे उनके ज़ेल्डा-थीम वाले ओकारिनस प्रदर्शित करने वाले एक पृष्ठ पर ले जाया गया और खेल के संगीत की एक गीतपुस्तिका को शामिल करने का विकल्प दिया गया।\r\n\r\nओकारिना और गीतपुस्तिका खरीदने के बाद, मुझे याद आया कि मेरे मित्र को ओकारिना बजाना नहीं आता है और गीतपुस्तिका में शुरुआती लोगों के लिए सुझाव नहीं हो सकते हैं। सौभाग्य से, STL Ocarina के पुष्टिकरण ईमेल में एक YouTube निर्देशात्मक वीडियो और ऑनलाइन संसाधनों के लिंक शामिल थे जो उसे आरंभ करने में मदद करेंगे।</pre>', '2022-03-20 04:14:08', NULL),
(4, 5, '24 Stats That Prove Why You Need a Crisis Management Strategy in 2022', '24 आँकड़े जो साबित करते हैं कि आपको 2022 में संकट प्रबंधन रणनीति की आवश्यकता क्यों है', '24-stats-that-prove-why-you-need-a-crisis-management-strategy-in-2022', '24-आँकड़े-जो-साबित-करते-हैं-कि-आपको-2022-में-संकट-प्रबंधन-रणनीति-की-आवश्यकता-क्यों-है', 'upload/post/1727788325927686.jpg', '<ul>\r\n	<li>69% of business leaders reported experiencing a crisis over a period of five years, with the average number of crises being three. (<a href=\"https://www.pwc.com/gx/en/forensics/global-crisis-survey/pdf/pwc-global-crisis-survey-2019.pdf?hubs_post-cta=blognavcard-service\" rel=\"noopener\" target=\"_blank\">PWC</a>)</li>\r\n	<li>A crisis-agnostic management strategy is the hallmark of a resilient organization, but only 35% of survey respondents have a crisis response plan that is crisis-agnostic. (<a href=\"https://www.pwc.com/gx/en/forensics/global-crisis-survey/pdf/pwc-global-crisis-survey-2019.pdf?hubs_post-cta=blognavcard-service\" rel=\"noopener\" target=\"_blank\">PWC</a>)</li>\r\n	<li>In 2019, 95% of PWC survey respondents said they expected a crisis to hit within the next two years, but only 30% of respondents to the 2021 survey said they had a crisis management team in place when the COVID-19 pandemic hit. (<a href=\"https://www.pwc.com/gx/en/forensics/global-crisis-survey/pdf/pwc-global-crisis-survey-2019.pdf?hubs_post-cta=blognavcard-service\" rel=\"noopener\" target=\"_blank\">PWC</a>)</li>\r\n	<li>Only 49% of respondents to a Deloitte survey say their companies have playbooks for likely crisis scenarios. (<a href=\"https://www2.deloitte.com/content/dam/Deloitte/us/Documents/risk/us-aers-global-cm-survey-report.pdf?hubs_post-cta=blognavcard-service\" rel=\"noopener\" target=\"_blank\">Deloitte</a>)</li>\r\n	<li>30% of board members that experienced past crises said their reputations recovered in less than a year. 16% said it took four years or more. (<a href=\"https://www2.deloitte.com/content/dam/Deloitte/us/Documents/risk/us-aers-global-cm-survey-report.pdf?hubs_post-cta=blognavcard-service\" rel=\"noopener\" target=\"_blank\">Deloitte</a>)</li>\r\n	<li>49% of respondents engage with management to understand their efforts in crisis preparedness, but only half say that board members and management have specific conversations about crisis prevention. (<a href=\"https://www2.deloitte.com/content/dam/Deloitte/us/Documents/risk/us-aers-global-cm-survey-report.pdf?hubs_post-cta=blognavcard-service\" rel=\"noopener\" target=\"_blank\">Deloitte</a>)</li>\r\n	<li>Only 32% of respondents say part of their crisis response planning is before-the-fact crisis simulation or wargaming, which is scenario role play. (<a href=\"https://www2.deloitte.com/content/dam/Deloitte/us/Documents/risk/us-aers-global-cm-survey-report.pdf?hubs_post-cta=blognavcard-service\" rel=\"noopener\" target=\"_blank\">Deloitte</a>)</li>\r\n</ul>', '<pre>\r\n69% व्यापारिक नेताओं ने पांच वर्षों की अवधि में संकट का अनुभव करने की सूचना दी, जिसमें संकटों की औसत संख्या तीन थी। (पीडब्ल्यूसी)\r\nएक संकट-अज्ञेय प्रबंधन रणनीति एक लचीला संगठन की पहचान है, लेकिन सर्वेक्षण के उत्तरदाताओं में से केवल 35% के पास संकट प्रतिक्रिया योजना है जो संकट-अज्ञेयवादी है। (पीडब्ल्यूसी)\r\n2019 में, पीडब्ल्यूसी सर्वेक्षण के 95% उत्तरदाताओं ने कहा कि उन्हें अगले दो वर्षों के भीतर एक संकट की आशंका है, लेकिन 2021 के सर्वेक्षण में केवल 30% उत्तरदाताओं ने कहा कि उनके पास एक संकट प्रबंधन टीम थी जब COVID-19 महामारी हिट हुई थी। (पीडब्ल्यूसी)\r\nडेलॉइट सर्वेक्षण में केवल 49% उत्तरदाताओं का कहना है कि उनकी कंपनियों के पास संभावित संकट परिदृश्यों के लिए प्लेबुक हैं। (डेलॉयट)\r\nपिछले संकटों का अनुभव करने वाले बोर्ड के 30% सदस्यों ने कहा कि उनकी प्रतिष्ठा एक वर्ष से भी कम समय में बरामद हुई है। 16% ने कहा कि इसमें चार साल या उससे अधिक समय लगा। (डेलॉयट)\r\n49% उत्तरदाताओं ने संकट की तैयारी में उनके प्रयासों को समझने के लिए प्रबंधन के साथ संलग्न किया, लेकिन केवल आधे का कहना है कि बोर्ड के सदस्यों और प्रबंधन ने संकट की रोकथाम के बारे में विशिष्ट बातचीत की है। (डेलॉयट)\r\nकेवल 32% उत्तरदाताओं का कहना है कि उनकी संकट प्रतिक्रिया योजना का हिस्सा वास्तविक संकट सिमुलेशन या युद्धबाजी है, जो कि परिदृश्य की भूमिका है। (डेलॉयट)</pre>', '2022-03-20 04:14:03', NULL),
(5, 3, '11 Excellent WordPress CRM Plugins to Consider This Year', 'इस वर्ष विचार करने के लिए 11 उत्कृष्ट वर्डप्रेस सीआरएम प्लगइन्स', '11-excellent-wordpress-crm-plugins-to-consider-this-year', 'इस-वर्ष-विचार-करने-के-लिए-11-उत्कृष्ट-वर्डप्रेस-सीआरएम-प्लगइन्स', 'upload/post/1727788426703069.webp', '<p>For your online businesses to succeed, you need to establish strong relationships with your customers. If your visitors struggle finding details about your business, or if they need to re-explain their challenges to multiple members of your team, they won&rsquo;t wait around for long.</p>\r\n\r\n<p>The best way to establish better relationships is with&nbsp;<a href=\"https://blog.hubspot.com/sales/benefits-of-crm?hubs_post-cta=blognavcard-website\" rel=\"noopener\" target=\"_blank\">great CRM software</a>. With the right CRM, your business will be armed with relevant consumer data that can help you identify key market opportunities and discover ways to enhance the customer experience. And, to connect one with WordPress, you just need a plugin.</p>\r\n\r\n<p>CRM&nbsp;<a href=\"https://blog.hubspot.com/website/WordPress-plugins?hubs_post-cta=blognavcard-website\" rel=\"noopener\" target=\"_blank\">WordPress plugins</a>&nbsp;for your WordPress website help streamline your critical customer-facing interactions in a way that ties them to your business&rsquo;s backend processes. In turn, your team will be empowered to better manage website interactions, support customers, track historical transactions, and reliably connect with prospects.</p>\r\n\r\n<p>But which plugin is the right fit for your business? In this guide, we&rsquo;ll take a look at some of the best plugin options, dive into what they offer, and see how they stand out from the crowd.</p>', '<pre>\r\nअपने ऑनलाइन व्यवसायों को सफल बनाने के लिए, आपको अपने ग्राहकों के साथ मजबूत संबंध स्थापित करने की आवश्यकता है। यदि आपके विज़िटर को आपके व्यवसाय के बारे में विवरण प्राप्त करने में कठिनाई होती है, या यदि उन्हें आपकी टीम के कई सदस्यों को अपनी चुनौतियों को फिर से समझाने की आवश्यकता है, तो वे लंबे समय तक प्रतीक्षा नहीं करेंगे।\r\n\r\nबेहतर सीआरएम सॉफ्टवेयर के साथ बेहतर संबंध स्थापित करने का सबसे अच्छा तरीका है। सही सीआरएम के साथ, आपका व्यवसाय प्रासंगिक उपभोक्ता डेटा से लैस होगा जो आपको बाजार के प्रमुख अवसरों की पहचान करने और ग्राहक अनुभव को बढ़ाने के तरीकों की खोज करने में मदद कर सकता है। और, किसी को वर्डप्रेस से जोड़ने के लिए, आपको बस एक प्लगइन की आवश्यकता है।\r\n\r\nआपकी वर्डप्रेस वेबसाइट के लिए सीआरएम वर्डप्रेस प्लगइन्स आपके महत्वपूर्ण ग्राहक-सामना करने वाले इंटरैक्शन को इस तरह से व्यवस्थित करने में मदद करते हैं जो उन्हें आपके व्यवसाय की बैकएंड प्रक्रियाओं से जोड़ता है। बदले में, आपकी टीम को वेबसाइट इंटरैक्शन को बेहतर ढंग से प्रबंधित करने, ग्राहकों का समर्थन करने, ऐतिहासिक लेनदेन को ट्रैक करने और संभावनाओं के साथ मज़बूती से जुड़ने का अधिकार होगा।\r\n\r\nलेकिन कौन सा प्लगइन आपके व्यवसाय के लिए उपयुक्त है? इस गाइड में, हम कुछ बेहतरीन प्लगइन विकल्पों पर एक नज़र डालेंगे, जो वे पेश करते हैं उसमें गोता लगाएँ, और देखें कि वे भीड़ से कैसे अलग हैं।</pre>', '2022-03-20 04:13:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_categories`
--

CREATE TABLE `blog_post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_category_name_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_category_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_category_slug_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_post_categories`
--

INSERT INTO `blog_post_categories` (`id`, `blog_category_name_en`, `blog_category_name_hin`, `blog_category_slug_en`, `blog_category_slug_hin`, `created_at`, `updated_at`) VALUES
(1, 'Tech', 'तकनीक', 'tech', 'तकनीक', '2022-03-19 20:56:45', '2022-03-19 20:56:45'),
(2, 'Wealth', 'संपदा', 'wealth', 'संपदा', '2022-03-19 20:57:05', '2022-03-19 20:57:05'),
(3, 'Technology', 'प्रौद्योगिकी', 'technology', 'प्रौद्योगिकी', '2022-03-19 20:56:56', '2022-03-19 20:56:56'),
(4, 'Marketing', 'विपणन', 'marketing', 'विपणन', '2022-03-19 20:56:29', '2022-03-19 20:56:29'),
(5, 'Service', 'सेवा', 'service', 'सेवा', '2022-03-19 21:34:12', NULL);

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
(20, '2022_03_16_052213_create_ship_states_table', 14),
(21, '2022_03_16_160651_create_shippings_table', 15),
(22, '2022_03_17_021704_create_orders_table', 16),
(23, '2022_03_17_021810_create_order_items_table', 16),
(24, '2022_03_20_023738_create_blog_post_categories_table', 17),
(25, '2022_03_20_030600_create_blog_posts_table', 18),
(26, '2022_03_20_071316_create_site_settings_table', 19),
(27, '2022_03_20_084424_create_seos_table', 20),
(28, '2022_03_20_192108_create_reviews_table', 21);

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
(103, 11, 'upload/products/multi-image/1726711758858910.jpg', '2022-03-08 00:24:16', NULL),
(104, 12, 'upload/products/multi-image/1728067339896026.jpg', '2022-03-22 23:30:39', NULL),
(105, 12, 'upload/products/multi-image/1728067340359501.jpg', '2022-03-22 23:30:39', NULL),
(106, 13, 'upload/products/multi-image/1728067514367939.jpg', '2022-03-22 23:33:26', NULL),
(107, 13, 'upload/products/multi-image/1728067515048794.jpg', '2022-03-22 23:33:26', NULL),
(108, 14, 'upload/products/multi-image/1728067617998091.jpg', '2022-03-22 23:35:04', NULL),
(109, 14, 'upload/products/multi-image/1728067618587556.jpg', '2022-03-22 23:35:05', NULL),
(110, 14, 'upload/products/multi-image/1728067619170413.jpg', '2022-03-22 23:35:05', NULL),
(111, 15, 'upload/products/multi-image/1728067750240334.jpg', '2022-03-22 23:37:10', NULL),
(112, 15, 'upload/products/multi-image/1728067750695352.jpg', '2022-03-22 23:37:11', NULL),
(113, 16, 'upload/products/multi-image/1728067962892234.jpg', '2022-03-22 23:40:33', NULL),
(114, 16, 'upload/products/multi-image/1728067963353174.jpg', '2022-03-22 23:40:33', NULL),
(115, 16, 'upload/products/multi-image/1728067963747936.jpg', '2022-03-22 23:40:34', NULL),
(116, 16, 'upload/products/multi-image/1728067964290716.jpg', '2022-03-22 23:40:35', NULL),
(117, 17, 'upload/products/multi-image/1728068088890210.jpg', '2022-03-22 23:42:33', NULL),
(118, 17, 'upload/products/multi-image/1728068089296187.jpg', '2022-03-22 23:42:34', NULL),
(119, 17, 'upload/products/multi-image/1728068089703560.jpg', '2022-03-22 23:42:34', NULL),
(120, 17, 'upload/products/multi-image/1728068090014707.jpg', '2022-03-22 23:42:34', NULL),
(121, 18, 'upload/products/multi-image/1728068262412209.jpg', '2022-03-22 23:45:19', NULL),
(122, 18, 'upload/products/multi-image/1728068262878202.jpg', '2022-03-22 23:45:19', NULL),
(123, 18, 'upload/products/multi-image/1728068263224050.jpg', '2022-03-22 23:45:19', NULL),
(124, 18, 'upload/products/multi-image/1728068263547053.jpg', '2022-03-22 23:45:20', NULL),
(125, 19, 'upload/products/multi-image/1728068386673573.jpg', '2022-03-22 23:47:17', NULL),
(126, 19, 'upload/products/multi-image/1728068386957110.jpg', '2022-03-22 23:47:17', NULL),
(127, 19, 'upload/products/multi-image/1728068387286577.jpg', '2022-03-22 23:47:18', NULL),
(128, 20, 'upload/products/multi-image/1728068540129466.jpg', '2022-03-22 23:49:44', NULL),
(129, 20, 'upload/products/multi-image/1728068540611281.jpg', '2022-03-22 23:49:44', NULL),
(130, 20, 'upload/products/multi-image/1728068541056404.jpg', '2022-03-22 23:49:44', NULL),
(131, 20, 'upload/products/multi-image/1728068541539971.jpg', '2022-03-22 23:49:45', NULL),
(132, 20, 'upload/products/multi-image/1728068542066409.jpg', '2022-03-22 23:49:45', NULL),
(133, 21, 'upload/products/multi-image/1728068692156953.jpg', '2022-03-22 23:52:09', NULL),
(134, 21, 'upload/products/multi-image/1728068692688413.jpg', '2022-03-22 23:52:09', NULL),
(135, 21, 'upload/products/multi-image/1728068693128890.jpg', '2022-03-22 23:52:10', NULL),
(136, 21, 'upload/products/multi-image/1728068693602329.jpg', '2022-03-22 23:52:10', NULL),
(137, 21, 'upload/products/multi-image/1728068694032742.jpg', '2022-03-22 23:52:10', NULL),
(138, 21, 'upload/products/multi-image/1728068694491005.jpg', '2022-03-22 23:52:11', NULL),
(139, 22, 'upload/products/multi-image/1728068828079890.jpg', '2022-03-22 23:54:18', NULL),
(140, 23, 'upload/products/multi-image/1728068993503401.jpg', '2022-03-22 23:56:56', NULL),
(141, 23, 'upload/products/multi-image/1728068994028102.jpg', '2022-03-22 23:56:57', NULL),
(142, 23, 'upload/products/multi-image/1728068994588310.jpg', '2022-03-22 23:56:57', NULL),
(143, 24, 'upload/products/multi-image/1728069220468768.jpg', '2022-03-23 00:00:32', NULL),
(144, 24, 'upload/products/multi-image/1728069221168034.jpg', '2022-03-23 00:00:33', NULL),
(145, 24, 'upload/products/multi-image/1728069221597829.jpg', '2022-03-23 00:00:34', NULL),
(146, 24, 'upload/products/multi-image/1728069222107815.jpg', '2022-03-23 00:00:34', NULL),
(147, 24, 'upload/products/multi-image/1728069222575112.jpg', '2022-03-23 00:00:35', NULL),
(148, 24, 'upload/products/multi-image/1728069223148509.jpg', '2022-03-23 00:00:35', NULL),
(149, 25, 'upload/products/multi-image/1728069392734679.jpg', '2022-03-23 00:03:17', NULL),
(150, 25, 'upload/products/multi-image/1728069393166305.jpg', '2022-03-23 00:03:17', NULL),
(151, 25, 'upload/products/multi-image/1728069393532499.jpg', '2022-03-23 00:03:18', NULL),
(152, 25, 'upload/products/multi-image/1728069394040702.jpg', '2022-03-23 00:03:18', NULL),
(153, 25, 'upload/products/multi-image/1728069394530864.jpg', '2022-03-23 00:03:18', NULL),
(154, 26, 'upload/products/multi-image/1728069535049531.jpg', '2022-03-23 00:05:32', NULL),
(155, 26, 'upload/products/multi-image/1728069535449234.jpg', '2022-03-23 00:05:33', NULL),
(156, 26, 'upload/products/multi-image/1728069535964214.jpg', '2022-03-23 00:05:33', NULL),
(157, 26, 'upload/products/multi-image/1728069536451003.jpg', '2022-03-23 00:05:34', NULL),
(158, 26, 'upload/products/multi-image/1728069536870531.jpg', '2022-03-23 00:05:34', NULL),
(159, 26, 'upload/products/multi-image/1728069537331008.jpg', '2022-03-23 00:05:35', NULL),
(160, 27, 'upload/products/multi-image/1728069706248804.jpg', '2022-03-23 00:08:16', NULL),
(161, 27, 'upload/products/multi-image/1728069706770594.jpg', '2022-03-23 00:08:16', NULL),
(162, 27, 'upload/products/multi-image/1728069707110224.jpg', '2022-03-23 00:08:17', NULL),
(163, 27, 'upload/products/multi-image/1728069707605215.jpg', '2022-03-23 00:08:17', NULL),
(164, 27, 'upload/products/multi-image/1728069708008154.jpg', '2022-03-23 00:08:17', NULL),
(165, 27, 'upload/products/multi-image/1728069708577716.jpg', '2022-03-23 00:08:18', NULL),
(166, 27, 'upload/products/multi-image/1728069709023846.jpg', '2022-03-23 00:08:18', NULL),
(167, 28, 'upload/products/multi-image/1728069908162141.jpg', '2022-03-23 00:11:28', NULL),
(168, 28, 'upload/products/multi-image/1728069908488676.jpg', '2022-03-23 00:11:29', NULL),
(169, 28, 'upload/products/multi-image/1728069908894350.jpg', '2022-03-23 00:11:29', NULL),
(170, 28, 'upload/products/multi-image/1728069909356443.jpg', '2022-03-23 00:11:29', NULL),
(171, 28, 'upload/products/multi-image/1728069909786297.jpg', '2022-03-23 00:11:30', NULL),
(172, 28, 'upload/products/multi-image/1728069910388291.jpg', '2022-03-23 00:11:30', NULL),
(173, 29, 'upload/products/multi-image/1728070089316669.jpg', '2022-03-23 00:14:21', NULL),
(174, 29, 'upload/products/multi-image/1728070089809028.jpg', '2022-03-23 00:14:22', NULL),
(175, 29, 'upload/products/multi-image/1728070090358211.jpg', '2022-03-23 00:14:22', NULL),
(176, 29, 'upload/products/multi-image/1728070090849924.jpg', '2022-03-23 00:14:22', NULL),
(177, 29, 'upload/products/multi-image/1728070091288119.jpg', '2022-03-23 00:14:23', NULL),
(178, 30, 'upload/products/multi-image/1728070427159842.webp', '2022-03-23 00:19:44', NULL),
(179, 30, 'upload/products/multi-image/1728070428429404.jpg', '2022-03-23 00:19:44', NULL),
(180, 31, 'upload/products/multi-image/1728070578506460.jpg', '2022-03-23 00:22:08', NULL),
(181, 31, 'upload/products/multi-image/1728070578945413.jpg', '2022-03-23 00:22:08', NULL),
(182, 31, 'upload/products/multi-image/1728070579427542.jpg', '2022-03-23 00:22:08', NULL),
(183, 32, 'upload/products/multi-image/1728070728218304.jpg', '2022-03-23 00:24:30', NULL),
(184, 32, 'upload/products/multi-image/1728070728693294.jpg', '2022-03-23 00:24:31', NULL),
(185, 32, 'upload/products/multi-image/1728070729243182.jpg', '2022-03-23 00:24:31', NULL),
(186, 32, 'upload/products/multi-image/1728070729734640.jpg', '2022-03-23 00:24:32', NULL),
(187, 33, 'upload/products/multi-image/1728070895887663.jpg', '2022-03-23 00:27:10', NULL),
(188, 33, 'upload/products/multi-image/1728070896420943.jpg', '2022-03-23 00:27:11', NULL),
(189, 33, 'upload/products/multi-image/1728070896949428.jpg', '2022-03-23 00:27:11', NULL),
(190, 33, 'upload/products/multi-image/1728070897474496.jpg', '2022-03-23 00:27:12', NULL),
(191, 34, 'upload/products/multi-image/1728071047225976.jpg', '2022-03-23 00:29:35', NULL),
(192, 34, 'upload/products/multi-image/1728071047794919.jpg', '2022-03-23 00:29:35', NULL),
(193, 34, 'upload/products/multi-image/1728071048272338.jpg', '2022-03-23 00:29:36', NULL),
(194, 34, 'upload/products/multi-image/1728071048910145.jpg', '2022-03-23 00:29:36', NULL),
(195, 34, 'upload/products/multi-image/1728071049502669.jpg', '2022-03-23 00:29:37', NULL),
(196, 35, 'upload/products/multi-image/1728071251433851.jpg', '2022-03-23 00:32:49', NULL),
(197, 35, 'upload/products/multi-image/1728071251962963.jpg', '2022-03-23 00:32:50', NULL),
(198, 35, 'upload/products/multi-image/1728071252482849.jpg', '2022-03-23 00:32:50', NULL),
(199, 35, 'upload/products/multi-image/1728071252885086.jpg', '2022-03-23 00:32:51', NULL),
(200, 35, 'upload/products/multi-image/1728071253321631.jpg', '2022-03-23 00:32:51', NULL),
(201, 36, 'upload/products/multi-image/1728071428931162.jpg', '2022-03-23 00:35:39', NULL),
(202, 36, 'upload/products/multi-image/1728071429424423.jpg', '2022-03-23 00:35:39', NULL),
(203, 36, 'upload/products/multi-image/1728071429939705.jpg', '2022-03-23 00:35:40', NULL),
(204, 36, 'upload/products/multi-image/1728071430476937.jpg', '2022-03-23 00:35:40', NULL),
(205, 36, 'upload/products/multi-image/1728071431149445.jpg', '2022-03-23 00:35:41', NULL),
(206, 37, 'upload/products/multi-image/1728071650728492.jpg', '2022-03-23 00:39:10', NULL),
(207, 37, 'upload/products/multi-image/1728071651237948.jpg', '2022-03-23 00:39:11', NULL),
(208, 38, 'upload/products/multi-image/1728071826734409.jpg', '2022-03-23 00:41:58', NULL),
(209, 38, 'upload/products/multi-image/1728071827253076.jpg', '2022-03-23 00:41:59', NULL),
(210, 38, 'upload/products/multi-image/1728071827794732.jpg', '2022-03-23 00:41:59', NULL),
(211, 39, 'upload/products/multi-image/1728071980562005.jpg', '2022-03-23 00:44:25', NULL),
(212, 40, 'upload/products/multi-image/1728072177043497.jpg', '2022-03-23 00:47:32', NULL),
(213, 40, 'upload/products/multi-image/1728072177660123.jpg', '2022-03-23 00:47:33', NULL),
(214, 40, 'upload/products/multi-image/1728072178288738.jpg', '2022-03-23 00:47:33', NULL),
(215, 40, 'upload/products/multi-image/1728072179041388.jpg', '2022-03-23 00:47:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirmed_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processing_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picked_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipped_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_order` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `return_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `division_id`, `district_id`, `state_id`, `name`, `email`, `phone`, `post_code`, `notes`, `payment_type`, `payment_method`, `transaction_id`, `currency`, `amount`, `order_number`, `invoice_no`, `order_date`, `order_month`, `order_year`, `confirmed_date`, `processing_date`, `picked_date`, `shipped_date`, `delivered_date`, `cancel_date`, `return_date`, `return_order`, `return_reason`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 1, 7, 'user', 'user@gmail.com', '01847313527', 1307, 'buy it', 'card_1Ke9T1LX3DmCvNsurJPurZGx', 'Stripe', 'txn_3Ke9TaLX3DmCvNsu0btPcDBt', 'usd', 450.00, '6232a2cf8aea8', 'FMS19505744', '17 March 2022', 'March', '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'confirm', '2022-03-16 20:54:10', '2022-03-19 06:14:26'),
(2, 2, 2, 1, 7, 'user', 'user@gmail.com', '01847313527', 1510, 'just buy it', 'card_1Ke9YSLX3DmCvNsuQEo3wkTK', 'Stripe', 'txn_3Ke9YULX3DmCvNsu0T9pt8zT', 'usd', 0.60, '6232a3ff5227d', 'FMS23470140', '17 March 2022', 'March', '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'delivered', '2022-03-16 20:59:13', '2022-03-21 23:35:47'),
(3, 4, 2, 5, 4, 'Abu Hanif Jowel', 'abuhanifjowel@gmail.com', '01847313526', 2207, 'just buy it', 'card_1KeA02LX3DmCvNsue7xmlqxR', 'Stripe', 'txn_3KeA04LX3DmCvNsu0lQqtCVZ', 'usd', 1.00, '6232aaaf0e696', 'FMS30594940', '17 March 2022', 'March', '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'picked', '2022-03-16 21:27:45', '2022-03-19 06:15:15'),
(4, 4, 1, 7, 2, 'Abu Hanif Jowel', 'abuhanifjowel@gmail.com', '01875628575', 1208, 'kndknskmb', 'card_1KeA26LX3DmCvNsueWIRxEcc', 'Stripe', 'txn_3KeA28LX3DmCvNsu1C7K5LoW', 'usd', 1.00, '6232ab2fe600b', 'FMS71852322', '17 March 2022', 'March', '2022', NULL, NULL, NULL, NULL, NULL, NULL, '20 March 2022', '1', 'Broken Product', 'delivered', '2022-03-16 21:29:54', '2022-03-20 11:18:34'),
(5, 4, 1, 6, 1, 'Abu Hanif Jowel', 'abuhanifjowel@gmail.com', '01847313526', 1008, 'just buy it', 'card_1KeYFKLX3DmCvNsuyx5DzTj7', 'Stripe', 'txn_3KeYFOLX3DmCvNsu13Wta2BA', 'usd', 2.00, '623416c386ff3', 'FMS63723688', '18 March 2022', 'March', '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'processing', '2022-03-17 23:21:13', NULL),
(6, 4, 2, 1, 7, 'Abu Hanif Jowel', 'abuhanifjowel@gmail.com', '01847313526', 1209, 'wow', 'card_1KeYSzLX3DmCvNsuSuYQNLih', 'Stripe', 'txn_3KeYT1LX3DmCvNsu18ZKYhoF', 'usd', 1.00, '62341a1197b8b', 'FMS81021352', '18 March 2022', 'March', '2022', NULL, NULL, NULL, NULL, NULL, NULL, '20 March 2022', '2', 'wrong product ordered', 'delivered', '2022-03-17 23:35:16', '2022-03-20 12:07:57'),
(7, 4, 2, 1, 7, 'Abu Hanif Jowel', 'abuhanifjowel@gmail.com', '01847313526', 1245, 'ggjhgc', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 1.00, NULL, 'EOS25309005', '18 March 2022', 'March', '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'processing', '2022-03-17 23:56:46', '2022-03-20 01:07:35');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `color`, `size`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 'Red', 'Small', '1', 450.00, '2022-03-16 20:54:10', NULL),
(2, 2, 9, 'Red', NULL, '1', 1600.00, '2022-03-16 20:59:13', NULL),
(3, 4, 9, 'Red', NULL, '1', 1600.00, '2022-03-16 21:29:59', NULL),
(4, 5, 4, 'Red', 'Small', '1', 300.00, '2022-03-17 23:21:19', NULL),
(5, 5, 8, 'Red', 'Small', '1', 2200.00, '2022-03-17 23:21:19', NULL),
(6, 6, 9, 'Red', NULL, '1', 1600.00, '2022-03-17 23:35:20', NULL),
(7, 7, 10, 'Red', NULL, '1', 1650.00, '2022-03-17 23:56:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('user@gmail.com', '$2y$10$FNdhJropZp9c3OeP3Ih8juwmDqsj.pXOH9hTreJclBFp7js85Bvxe', '2022-03-16 21:13:23');

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
(9, 4, 8, 15, 46, 'Logitech MK270 Wireless Keyboard', 'विंडोज के लिए लॉजिटेक एमके270 वायरलेस कीबोर्ड', 'logitech-mk270-wireless-keyboard', 'विंडोज-के-लिए-लॉजिटेक-एमके270-वायरलेस-कीबोर्ड', 'MK270', '1', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', NULL, NULL, 'Red,Black,White,Blue', 'Red,Black,White,Blue', '1600', NULL, 'Reliable Plug and Play: The USB receiver provides a reliable wireless connection up to 33 ft (1), so you can forget about drop-outs and delays and you can take it wherever you use your computer', 'विश्वसनीय प्लग एंड प्ले: यूएसबी रिसीवर 33 फीट (1) तक एक विश्वसनीय वायरलेस कनेक्शन प्रदान करता है, जिससे आप ड्रॉप-आउट और देरी के बारे में भूल सकते हैं और आप इसे अपने कंप्यूटर का उपयोग करते हुए कहीं भी ले जा सकते हैं।', '<p>Reliable Plug and Play: The USB receiver provides a reliable wireless connection up to 33 ft (1), so you can forget about drop-outs and delays and you can take it wherever you use your computer</p>', '<pre>\r\nविश्वसनीय प्लग एंड प्ले: यूएसबी रिसीवर 33 फीट (1) तक एक विश्वसनीय वायरलेस कनेक्शन प्रदान करता है, जिससे आप ड्रॉप-आउट और देरी के बारे में भूल सकते हैं और आप इसे अपने कंप्यूटर का उपयोग करते हुए कहीं भी ले जा सकते हैं।</pre>', 'upload/products/thambnail/1726711476459264.jpg', 1, 1, 1, NULL, 1, '2022-03-14 23:20:17', '2022-03-21 23:35:47'),
(10, 3, 9, 19, 93, 'Living and More 4 Foot Height Adjustable Fold-in-Half Table', 'लिविंग एंड मोर 4 फुट हाइट एडजस्टेबल फोल्ड-इन-हाफ', 'living-and-more-4-foot-height-adjustable-fold-in-half-table', 'लिविंग-एंड-मोर-4-फुट-हाइट-एडजस्टेबल-फोल्ड-इन-हाफ', '7712314', '5', 'Living ,Height', 'लिविंग ,हाइट', NULL, NULL, 'Red,Black,White,Blue', 'Red,Black,White,Blue', '1800', '1650', 'Living and More 4 Foot Height Adjustable Fold-in-Half Table with Carrying Handle, Easy Folding and Storage, Indoor Outdoor Use, White', 'लिविंग एंड मोर 4 फुट हाइट एडजस्टेबल फोल्ड-इन-हाफ टेबल कैरीइंग हैंडल के साथ, आसान फोल्डिंग और स्टोरेज, इंडोर आउटडोर यूज, व्हाइट', '<p>Living and More 4 Foot Height Adjustable Fold-in-Half Table with Carrying Handle, Easy Folding and Storage, Indoor Outdoor Use, White</p>', '<p>&nbsp;</p>\r\n\r\n<p>लिविंग एंड मोर 4 फुट हाइट एडजस्टेबल फोल्ड-इन-हाफ टेबल कैरीइंग हैंडल के साथ, आसान फोल्डिंग और स्टोरेज, इंडोर आउटडोर यूज, व्हाइट</p>', 'upload/products/thambnail/1726711610107439.jpg', 1, 1, NULL, 1, 1, '2022-03-14 23:58:14', '2022-03-14 23:58:14'),
(11, 2, 10, 21, 77, 'VIVOHOME Electric Portable 2 in 1 Twin Tub Mini Laundry Washer and Spin Dryer Combo Washing Machine', 'VIVOHOME इलेक्ट्रिक पोर्टेबल 2 इन 1 ट्विन टब मिनी लॉन्ड्री वॉशर', 'vivohome-electric-portable-2-in-1-twin-tub-mini-laundry-washer-and-spin-dryer-combo-washing-machine', 'VIVOHOME-इलेक्ट्रिक-पोर्टेबल-2-इन-1-ट्विन-टब-मिनी-लॉन्ड्री-वॉशर', 'LxWxH', '8', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '3200', '3000', 'VIVOHOME Electric Portable 2 in 1 Twin Tub Mini Laundry Washer and Spin Dryer Combo Washing Machine with Built-in Drain Pump and Drain Hose and for Apartments 26lbs Blue Washer(18lbs) & Spinner(8lbs)', 'VIVOHOME इलेक्ट्रिक पोर्टेबल 2 इन 1 ट्विन टब मिनी लॉन्ड्री वॉशर और स्पिन ड्रायर कॉम्बो वॉशिंग मशीन के साथ बिल्ट-इन ड्रेन पंप और ड्रेन होज़ और अपार्टमेंट्स के लिए 26lbs ब्लू वॉशर (18lbs) और स्पिनर (8lbs)', '<p>VIVOHOME Electric Portable 2 in 1 Twin Tub Mini Laundry Washer and Spin Dryer Combo Washing Machine with Built-in Drain Pump and Drain Hose and for Apartments 26lbs Blue Washer(18lbs) &amp; Spinner(8lbs)</p>', '<pre>\r\nVIVOHOME इलेक्ट्रिक पोर्टेबल 2 इन 1 ट्विन टब मिनी लॉन्ड्री वॉशर और स्पिन ड्रायर कॉम्बो वॉशिंग मशीन के साथ बिल्ट-इन ड्रेन पंप और ड्रेन होज़ और अपार्टमेंट्स के लिए 26lbs ब्लू वॉशर (18lbs) और स्पिनर (8lbs)</pre>', 'upload/products/thambnail/1726711758304040.jpg', NULL, 1, NULL, 1, 1, '2022-03-14 23:21:38', '2022-03-14 23:21:38'),
(12, 1, 7, 8, 16, 'Dockers Men\'s Long Sleeve Signature Comfort Flex Shirt', 'डॉकर्स मेन्स लॉन्ग स्लीव सिग्नेचर कम्फर्ट फ्लेक्स शर्ट', 'dockers-men\'s-long-sleeve-signature-comfort-flex-shirt', 'डॉकर्स-मेन्स-लॉन्ग-स्लीव-सिग्नेचर-कम्फर्ट-फ्लेक्स-शर्ट', 'BLHHS1023', '100', 'Amet', 'Amet', 'Small,Medium,Large,xl,l,xxl,s,m', 'Lorem,Ipsum,Amet,xl,l,xxl,s,m', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '1800', '1600', 'Classic fit; Our classic fit is tailored with extra room for your comfort, all while being structured enough to look put-together', 'क्लासिक फिट; हमारे क्लासिक फिट को आपके आराम के लिए अतिरिक्त कमरे के साथ तैयार किया गया है, जबकि सभी को एक साथ देखने के लिए पर्याप्त संरचित किया गया है', '<p>Classic fit; Our classic fit is tailored with extra room for your comfort, all while being structured enough to look put-together</p>', '<pre>\r\nक्लासिक फिट; हमारे क्लासिक फिट को आपके आराम के लिए अतिरिक्त कमरे के साथ तैयार किया गया है, जबकि सभी को एक साथ देखने के लिए पर्याप्त संरचित किया गया है</pre>', 'upload/products/thambnail/1728067338675114.jpg', NULL, 1, 1, NULL, 1, '2022-03-22 23:30:38', NULL),
(13, 4, 7, 8, 16, 'Legendary Whitetails Men\'s Navigator Fleece Button Up Shirt', 'लेजेंडरी व्हाइटटेल्स मेन्स नेविगेटर फ्लेस बटन अप शर्ट', 'legendary-whitetails-men\'s-navigator-fleece-button-up-shirt', 'लेजेंडरी-व्हाइटटेल्स-मेन्स-नेविगेटर-फ्लेस-बटन-अप-शर्ट', 'HV-MS814', '150', 'Lorem,Ipsum', 'Lorem,Ipsum', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '2200', '2000', 'Apparently they have more than one supplier. I have two of these shirts and one is made in China, the other in Cambodia', 'जाहिरा तौर पर उनके पास एक से अधिक आपूर्तिकर्ता हैं। मेरे पास इनमें से दो शर्ट हैं और एक चीन में बनी है, दूसरी कंबोडिया में', '<p>Apparently they have more than one supplier. I have two of these shirts and one is made in China, the other in Cambodia</p>', '<p>&nbsp;</p>\r\n\r\n<p>जाहिरा तौर पर उनके पास एक से अधिक आपूर्तिकर्ता हैं। मेरे पास इनमें से दो शर्ट हैं और एक चीन में बनी है, दूसरी कंबोडिया में</p>', 'upload/products/thambnail/1728067513675869.jpg', NULL, 1, 1, NULL, 1, '2022-03-22 23:33:25', NULL),
(14, 3, 7, 8, 15, 'Calvin Klein Men\'s Dress Shirt Slim Fit Non Iron Solid French Cuff', 'केल्विन क्लेन पुरुषों की पोशाक शर्ट स्लिम फ़िट गैर आयरन ठोस फ्रेंच कफ', 'calvin-klein-men\'s-dress-shirt-slim-fit-non-iron-solid-french-cuff', 'केल्विन-क्लेन-पुरुषों-की-पोशाक-शर्ट-स्लिम-फ़िट-गैर-आयरन-ठोस-फ्रेंच-कफ', '7712314', '200', 'Amet', 'Amet', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '2400', NULL, 'Wicking: Designed to wick moisture away from the body to help you feel cool and dry. Non-Iron Fabric: Resists wrinkles to keep you looking crisp all day; easy care, no ironing necessary.', 'विकिंग: आपको ठंडा और सूखा महसूस करने में मदद करने के लिए शरीर से नमी को दूर करने के लिए डिज़ाइन किया गया है। गैर-लौह कपड़ा: आपको पूरे दिन कुरकुरा दिखने के लिए झुर्रियों का प्रतिरोध करता है; आसान देखभाल, कोई इस्त्री आवश्यक नहीं है।', '<p>Wicking: Designed to wick moisture away from the body to help you feel cool and dry. Non-Iron Fabric: Resists wrinkles to keep you looking crisp all day; easy care, no ironing necessary.</p>', '<pre>\r\nविकिंग: आपको ठंडा और सूखा महसूस करने में मदद करने के लिए शरीर से नमी को दूर करने के लिए डिज़ाइन किया गया है। गैर-लौह कपड़ा: आपको पूरे दिन कुरकुरा दिखने के लिए झुर्रियों का प्रतिरोध करता है; आसान देखभाल, कोई इस्त्री आवश्यक नहीं है।</pre>', 'upload/products/thambnail/1728067617404354.jpg', 1, NULL, NULL, NULL, 1, '2022-03-22 23:35:04', NULL),
(15, 2, 7, 8, 14, 'Gildan Men\'s Ultra Cotton T-Shirt, Style G2000, Multipack', 'गिल्डन मेन्स अल्ट्रा कॉटन टी-शर्ट, स्टाइल जी2000, मल्टीपैक', 'gildan-men\'s-ultra-cotton-t-shirt,-style-g2000,-multipack', 'गिल्डन-मेन्स-अल्ट्रा-कॉटन-टी-शर्ट,-स्टाइल-जी2000,-मल्टीपैक', '77019', '150', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '800', NULL, 'What size do you normally wear?. Get the size you normally wear or i would suggest a medium. Are you long in the torso?.', 'आप आमतौर पर किस आकार के कपड़े पहनते हैं?. वह आकार प्राप्त करें जो आप सामान्य रूप से पहनते हैं या मैं एक माध्यम सुझाऊंगा। क्या आप धड़ में लंबे हैं?.', '<p>&nbsp;</p>\r\n\r\n<p>What size do you normally wear?. Get the size you normally wear or i would suggest a medium. Are you long in the torso?.</p>', '<pre>\r\nआप आमतौर पर किस आकार के कपड़े पहनते हैं?. वह आकार प्राप्त करें जो आप सामान्य रूप से पहनते हैं या मैं एक माध्यम सुझाऊंगा। क्या आप धड़ में लंबे हैं?.</pre>', 'upload/products/thambnail/1728067749697827.jpg', NULL, NULL, 1, NULL, 1, '2022-03-22 23:37:10', NULL),
(16, 3, 7, 8, 14, 'Hanes Men\'s', 'हैन्स मेन्स', 'hanes-men\'s', 'हैन्स-मेन्स', '77019', '200', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '920', NULL, 'he popular 100% ComfortSoft cotton T-shirt without the label for a simpler, comfier wearing experience,', 'वह एक सरल, आरामदायक पहनने के अनुभव के लिए लेबल के बिना 100% कम्फर्टसॉफ्ट कॉटन टी-शर्ट लोकप्रिय है,', '<p>he popular 100% ComfortSoft cotton T-shirt without the label for a simpler, comfier wearing experience, preshrunk 100% ComfortSoft cotton, 6-oz, shoulder-to-shoulder taping,</p>', '<pre>\r\nवह एक सरल, आरामदायक पहनने के अनुभव के लिए लेबल के बिना 100% कम्फर्टसॉफ्ट कॉटन टी-शर्ट लोकप्रिय है, 100% कम्फर्ट सॉफ्ट कॉटन, 6-ऑउंस, शोल्डर-टू-शोल्डर टेपिंग, </pre>', 'upload/products/thambnail/1728067962439711.jpg', NULL, NULL, 1, NULL, 1, '2022-03-22 23:40:33', NULL),
(17, 2, 7, 8, 17, 'In-Sattva Men\'s Pullover Pathani Rollup Sleeve Kurta Tunic with Shoulder Strap', 'इन-सत्व पुरुषों का स्वेटर पठानी रोलअप स्लीव कुर्ता ट्यूनिक शोल्डर स्ट्रैप के साथ', 'in-sattva-men\'s-pullover-pathani-rollup-sleeve-kurta-tunic-with-shoulder-strap', 'इन-सत्व-पुरुषों-का-स्वेटर-पठानी-रोलअप-स्लीव-कुर्ता-ट्यूनिक-शोल्डर-स्ट्रैप-के-साथ', 'HV-MS814', '140', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '1500', '1400', 'The model is 6\" tall, with chest measurement of 39 inches. He is wearing size \"Medium\" in the display photo', 'मॉडल 6\" लंबा है, जिसकी छाती का माप 39 इंच है। उसने डिस्प्ले फोटो में \"मध्यम\" आकार का पहना है', '<p>The model is 6&quot; tall, with chest measurement of 39 inches. He is wearing size &quot;Medium&quot; in the display photo</p>', '<p>&nbsp;</p>\r\n\r\n<p>मॉडल 6&quot; लंबा है, जिसकी छाती का माप 39 इंच है। उसने डिस्प्ले फोटो में &quot;मध्यम&quot; आकार का पहना है</p>', 'upload/products/thambnail/1728068088416516.jpg', NULL, NULL, NULL, 1, 1, '2022-03-22 23:42:33', NULL),
(18, 5, 7, 13, 25, 'Janasya Indian Women\'s Pink Poly Silk Lehenga Choli with Dupatta', 'Janasya Indian Women\'s Pink Poly Silk Lehenga Choli with Dupatta', 'janasya-indian-women\'s-pink-poly-silk-lehenga-choli-with-dupatta', 'Janasya-Indian-Women\'s-Pink-Poly-Silk-Lehenga-Choli-with-Dupatta', 'B08B4VC1TJ', '40', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '12000', '11500', 'The fabric is beautiful and the skirt is gorgeous. However, there is absolutely nothing', 'कपड़ा सुंदर है और स्कर्ट भव्य है। हालांकि, अगर आपके पास स्तन हैं तो आप शीर्ष के साथ कुछ भी नहीं कर सकते हैं।', '<p>The fabric is beautiful and the skirt is gorgeous. However, there is absolutely nothing you can do with the top if you have breast.&nbsp;</p>', '<p>&nbsp;</p>\r\n\r\n<p>कपड़ा सुंदर है और स्कर्ट भव्य है। हालांकि, अगर आपके पास स्तन हैं तो आप शीर्ष के साथ कुछ भी नहीं कर सकते हैं।</p>', 'upload/products/thambnail/1728068261905485.jpg', NULL, 1, NULL, NULL, 1, '2022-03-22 23:45:18', NULL),
(19, 3, 7, 13, 26, 'Pack of Three Sarees for Women Mysore Art Silk Printed Indian Wedding Saree | Diwali Gift Sari Combo', 'महिलाओं के लिए तीन साड़ियों का पैक मैसूर कला सिल्क मुद्रित भारतीय शादी की साड़ी | दिवाली उपहार साड़ी कॉम्बो', 'pack-of-three-sarees-for-women-mysore-art-silk-printed-indian-wedding-saree-|-diwali-gift-sari-combo', 'महिलाओं-के-लिए-तीन-साड़ियों-का-पैक-मैसूर-कला-सिल्क-मुद्रित-भारतीय-शादी-की-साड़ी-|-दिवाली-उपहार-साड़ी-कॉम्बो', 'B079W5R9RV', '200', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '4200', NULL, 'Pack of Three Sarees for Women Mysore Art Silk Printed Indian Wedding Saree | Diwali Gift Sari Combo', 'महिलाओं के लिए तीन साड़ियों का पैक मैसूर कला सिल्क मुद्रित भारतीय शादी की साड़ी | दिवाली उपहार साड़ी कॉम्बो', '<p>Pack of Three Sarees for Women Mysore Art Silk Printed Indian Wedding Saree | Diwali Gift Sari Combo</p>', '<p>&nbsp;</p>\r\n\r\n<p>महिलाओं के लिए तीन साड़ियों का पैक मैसूर कला सिल्क मुद्रित भारतीय शादी की साड़ी | दिवाली उपहार साड़ी कॉम्बो</p>', 'upload/products/thambnail/1728068385896458.jpg', NULL, NULL, 1, NULL, 1, '2022-03-22 23:47:17', NULL),
(20, 2, 7, 13, 24, 'Janasya Indian Women\'s Multicolor Pure Cotton Kurta', 'जनस्य भारतीय महिला बहुरंगा शुद्ध सूती कुर्ता', 'janasya-indian-women\'s-multicolor-pure-cotton-kurta', 'जनस्य-भारतीय-महिला-बहुरंगा-शुद्ध-सूती-कुर्ता', 'B07VG13HRQ', '250', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '3200', '2800', 'Janasya is a premium fusion Kurtis brand, which merges Indian and western sensibilities with an emphasis on distinctive design and styling.', 'Janasya एक प्रीमियम फ्यूजन कुर्तियां ब्रांड है, जो विशिष्ट डिजाइन और स्टाइल पर जोर देने के साथ भारतीय और पश्चिमी संवेदनशीलता को मिलाता है।', '<p>Janasya is a premium fusion Kurtis brand, which merges Indian and western sensibilities with an emphasis on distinctive design and styling.</p>', '<p>Janasya एक प्रीमियम फ्यूजन कुर्तियां ब्रांड है, जो विशिष्ट डिजाइन और स्टाइल पर जोर देने के साथ भारतीय और पश्चिमी संवेदनशीलता को मिलाता है।</p>', 'upload/products/thambnail/1728068539635159.jpg', NULL, 1, NULL, NULL, 1, '2022-03-22 23:49:43', NULL),
(21, 3, 7, 13, 27, 'Bdcoco Women\'s Floral Lace Hi Low Cocktail Party Dress Swing Prom Evening Gowns', 'बीडीकोको महिला पुष्प फीता हाय लो कॉकटेल पार्टी ड्रेस स्विंग प्रोम शाम गाउन', 'bdcoco-women\'s-floral-lace-hi-low-cocktail-party-dress-swing-prom-evening-gowns', 'बीडीकोको-महिला-पुष्प-फीता-हाय-लो-कॉकटेल-पार्टी-ड्रेस-स्विंग-प्रोम-शाम-गाउन', 'B078RJH6RN', '120', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '8500', NULL, 'This dress is AMAZING. So much so, that I bought it in the black and the burgundy and I’ll probably buy it in blue too!', 'यह पोशाक अद्भुत है। इतना अधिक, कि मैंने इसे काले और बरगंडी में खरीदा और मैं शायद इसे नीले रंग में भी खरीदूंगा!', '<p>This dress is AMAZING. So much so, that I bought it in the black and the burgundy and I&rsquo;ll probably buy it in blue too!&nbsp;</p>', '<p>यह पोशाक अद्भुत है। इतना अधिक, कि मैंने इसे काले और बरगंडी में खरीदा और मैं शायद इसे नीले रंग में भी खरीदूंगा!</p>', 'upload/products/thambnail/1728068691619891.jpg', 1, NULL, NULL, NULL, 1, '2022-03-23 02:30:31', '2022-03-23 02:30:31'),
(22, 2, 7, 13, 25, 'Tavern Check Flannel Backed Vinyl Blue/White Classic Tablecloth, Fabric by the Yard', 'टैवर्न चेक फलालैन समर्थित विनील ब्लू / व्हाइट क्लासिक मेज़पोश, यार्ड द्वारा कपड़ा', 'tavern-check-flannel-backed-vinyl-blue/white-classic-tablecloth,-fabric-by-the-yard', 'टैवर्न-चेक-फलालैन-समर्थित-विनील-ब्लू-/-व्हाइट-क्लासिक-मेज़पोश,-यार्ड-द्वारा-कपड़ा', 'B07XDK1Y4Z', '200', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '7500', NULL, 'This water repellent fleece backed vinyl fabric is great! This is perfect for tablecloths and placemats.', 'यह पानी से बचाने वाली क्रीम ऊन समर्थित विनाइल फैब्रिक बहुत अच्छा है! यह मेज़पोश और प्लेसमेट्स के लिए एकदम सही है।', '<p>This water repellent fleece backed vinyl fabric is great! This is perfect for tablecloths and placemats.</p>', '<pre>\r\nयह पानी से बचाने वाली क्रीम ऊन समर्थित विनाइल फैब्रिक बहुत अच्छा है! यह मेज़पोश और प्लेसमेट्स के लिए एकदम सही है।</pre>', 'upload/products/thambnail/1728068827354060.jpg', NULL, NULL, 1, NULL, 1, '2022-03-22 23:54:18', NULL),
(23, 2, 7, 12, 30, 'PLOKNRD Women\'s Summer Casual Dresses Short Sleeve Loose Ruffle Swing Pockets T Shirt Dress', 'PLOKNRD महिलाओं की ग्रीष्मकालीन आकस्मिक कपड़े लघु आस्तीन ढीली रफ़ल स्विंग पॉकेट टी शर्ट ड्रेस', 'ploknrd-women\'s-summer-casual-dresses-short-sleeve-loose-ruffle-swing-pockets-t-shirt-dress', 'PLOKNRD-महिलाओं-की-ग्रीष्मकालीन-आकस्मिक-कपड़े-लघु-आस्तीन-ढीली-रफ़ल-स्विंग-पॉकेट-टी-शर्ट-ड्रेस', 'B09NN6LZ5P', '150', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '5200', '4500', 'Dresses with pockets for women is a perfect choice for Spring, Autumn and Summer, pair it with your flat shoes or boots for a trendy daily look.', 'महिलाओं के लिए जेब वाले कपड़े वसंत, शरद ऋतु और गर्मियों के लिए एक आदर्श विकल्प है, इसे अपने फ्लैट जूते या जूते के साथ एक आधुनिक दैनिक रूप के लिए जोड़ दें।', '<p>Dresses with pockets for women is a perfect choice for Spring, Autumn and Summer, pair it with your flat shoes or boots for a trendy daily look.</p>', '<p>&nbsp;</p>\r\n\r\n<p>महिलाओं के लिए जेब वाले कपड़े वसंत, शरद ऋतु और गर्मियों के लिए एक आदर्श विकल्प है, इसे अपने फ्लैट जूते या जूते के साथ एक आधुनिक दैनिक रूप के लिए जोड़ दें।</p>', 'upload/products/thambnail/1728068992856180.jpg', NULL, NULL, 1, NULL, 1, '2022-03-22 23:56:56', NULL),
(24, 3, 7, 11, 21, 'Skechers Women\'s Slide Wedge Sandal', 'स्केचर्स महिलाओं की स्लाइड वेज सैंडल', 'skechers-women\'s-slide-wedge-sandal', 'स्केचर्स-महिलाओं-की-स्लाइड-वेज-सैंडल', 'B07H63DSQC', '300', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '620', '510', 'Wedges are chic, casual, and, most of all, comfy. If you\'re looking to spice up your wardrobe with a pair of comfy wedges', 'वेज ठाठ, कैजुअल और सबसे बढ़कर कम्फर्टेबल हैं। अगर आप अपने वॉर्डरोब को कम्फर्टेबल वेजेज की एक जोड़ी के साथ मसाला देना चाह रहे हैं', '<p>Wedges are chic, casual, and, most of all, comfy. If you&#39;re looking to spice up your wardrobe with a pair of comfy wedges</p>', '<p>&nbsp;</p>\r\n\r\n<p>वेज ठाठ, कैजुअल और सबसे बढ़कर कम्फर्टेबल हैं। अगर आप अपने वॉर्डरोब को कम्फर्टेबल वेजेज की एक जोड़ी के साथ मसाला देना चाह रहे हैं</p>', 'upload/products/thambnail/1728069219999832.jpg', NULL, 1, NULL, NULL, 1, '2022-03-23 00:00:32', NULL),
(25, 2, 7, 11, 18, 'Skechers Women\'s D\'Lites Memory Foam Lace-up Sneaker', 'स्केचर्स महिलाओं की स्लाइड वेज सैंडल', 'skechers-women\'s-d\'lites-memory-foam-lace-up-sneaker', 'स्केचर्स-महिलाओं-की-स्लाइड-वेज-सैंडल', 'B014GN543O', '250', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '820', NULL, 'Skechers knows it\'s all about looking and feeling good with you, so here they present this D\'Lites sneaker.', 'स्केचर्स जानते हैं कि यह आपके साथ अच्छा दिखने और महसूस करने के बारे में है, इसलिए यहां वे इस डी\'लाइट्स स्नीकर को प्रस्तुत करते हैं।', '<p>Skechers knows it&#39;s all about looking and feeling good with you, so here they present this D&#39;Lites sneaker. It has an attractive leather upper with stylish contrast inlays</p>', '<p>&nbsp;</p>\r\n\r\n<p>स्केचर्स जानते हैं कि यह आपके साथ अच्छा दिखने और महसूस करने के बारे में है, इसलिए यहां वे इस डी&#39;लाइट्स स्नीकर को प्रस्तुत करते हैं। इसमें स्टाइलिश कंट्रास्ट इनले के साथ एक आकर्षक लेदर अपर है</p>', 'upload/products/thambnail/1728069392003062.jpg', NULL, NULL, 1, NULL, 1, '2022-03-23 00:03:16', NULL),
(26, 3, 7, 11, 20, 'Women\'s Two Strap Heeled Sandal', 'महिलाओं की टू स्ट्रैप हील वाली सैंडल', 'women\'s-two-strap-heeled-sandal', 'महिलाओं-की-टू-स्ट्रैप-हील-वाली-सैंडल', 'B07NQ9KZMK', '300', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '1100', NULL, 'Without measuring it I would say 2 1/2 inches, they are really not over 3 inches really easy to walk in', 'इसे मापने के बिना मैं कहूंगा कि 2 1/2 इंच, वे वास्तव में 3 इंच से अधिक नहीं हैं वास्तव में चलना आसान है', '<p>&nbsp;</p>\r\n\r\n<p>Without measuring it I would say 2 1/2 inches, they are really not over 3 inches really easy to walk in</p>', '<p>&nbsp;</p>\r\n\r\n<p>इसे मापने के बिना मैं कहूंगा कि 2 1/2 इंच, वे वास्तव में 3 इंच से अधिक नहीं हैं वास्तव में चलना आसान है</p>', 'upload/products/thambnail/1728069534395551.jpg', 1, 1, 1, NULL, 1, '2022-03-23 00:05:32', NULL),
(27, 3, 7, 11, 22, 'Desigual Women\'s Platform Flatform Sandals, Black Black 2000', 'देसी महिला प्लेटफॉर्म फ्लैटफॉर्म सैंडल, ब्लैक ब्लैक 2000', 'desigual-women\'s-platform-flatform-sandals,-black-black-2000', 'देसी-महिला-प्लेटफॉर्म-फ्लैटफॉर्म-सैंडल,-ब्लैक-ब्लैक-2000', 'B07H4ZCRJ9', '400', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '1800', NULL, 'Un pochino di delusione da questo marchio che adoro... il collante usato mostra sintomi .', 'उन पोचिनो डि डेल्यूसियोन दा क्वेस्टो मार्चियो चे अडोरो... इल कोलांटे यूसातो मोस्ट्रा', '<p>Un pochino di delusione da questo marchio che adoro... il collante usato mostra sintomi di cedimento pur avendole indossate per poco. Per il resto calza giusto, veste bene, &egrave; una bella scarpa</p>', '<pre>\r\nउन पोचिनो डि डेल्यूसियोन दा क्वेस्टो मार्चियो चे अडोरो... इल कोलांटे यूसातो मोस्ट्रा सिंटोमी डि सेडिमेंटो पुर एवेंडोल इंडोसेट प्रति पोको। प्रति इल रेस्टो कैल्ज़ा गिस्टो, वेस्टे बेने, ई उना बेला स्कार्पा</pre>', 'upload/products/thambnail/1728069705633685.jpg', NULL, 1, 1, 1, 1, '2022-03-23 00:08:15', NULL),
(28, 2, 7, 11, 19, 'Essentials Women\'s Loafer Slipper', 'अनिवार्य महिला लोफर स्लिपर', 'essentials-women\'s-loafer-slipper', 'अनिवार्य-महिला-लोफर-स्लिपर', 'B08DLQR232', '400', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '2200', NULL, 'I\'ve not tried it yet, but intend to do so when they are \'dirty\' since the slipper is 100% polyester', 'मैंने अभी तक इसकी कोशिश नहीं की है, लेकिन ऐसा करने का इरादा है जब वे \'गंदे\'', '<p>&nbsp;</p>\r\n\r\n<p>I&#39;ve not tried it yet, but intend to do so when they are &#39;dirty&#39; since the slipper is 100% polyester I don&#39;t see where there would be a problem in the washing machine..</p>', '<pre>\r\nमैंने अभी तक इसकी कोशिश नहीं की है, लेकिन ऐसा करने का इरादा है जब वे &#39;गंदे&#39; हों क्योंकि चप्पल 100% पॉलिएस्टर है, मुझे नहीं लगता कि वॉशिंग मशीन में कोई समस्या होगी </pre>', 'upload/products/thambnail/1728069907694222.jpg', 1, 1, 1, NULL, 1, '2022-03-23 00:11:28', NULL),
(29, 4, 7, 11, 23, 'Bloch Dance Women\'s Performa Stretch Canvas Split Sole Ballet Shoe/Slipper', 'बलोच डांस महिला परफॉर्मा स्ट्रेच कैनवास स्प्लिट सोल बैले शू/स्लिपर', 'bloch-dance-women\'s-performa-stretch-canvas-split-sole-ballet-shoe/slipper', 'बलोच-डांस-महिला-परफॉर्मा-स्ट्रेच-कैनवास-स्प्लिट-सोल-बैले-शू/स्लिपर', 'B07DMCVPBP', '500', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '2700', NULL, 'A bloch favorite! with a super comfortable lightweight stretch canvas split sole and a toe shape specifically designed for ultimate balance,', 'एक ब्लाच पसंदीदा! एक सुपर आरामदायक हल्के खिंचाव कैनवास स्प्लिट एकमात्र और एक पैर की अंगुली के आकार के साथ विशेष रूप से अंतिम', '<p>A bloch favorite! with a super comfortable lightweight stretch canvas split sole and a toe shape specifically designed for ultimate balance,&nbsp;</p>', '<pre>\r\nएक ब्लाच पसंदीदा! एक सुपर आरामदायक हल्के खिंचाव कैनवास स्प्लिट एकमात्र और एक पैर की अंगुली के आकार के साथ विशेष रूप से अंतिम </pre>', 'upload/products/thambnail/1728070088602953.jpg', 1, 1, 1, NULL, 1, '2022-03-23 00:14:20', NULL),
(30, 3, 7, 12, 33, 'Gym Jogger Pants Athletic Workout Running Tapered Sweatpants Zipper Pockets with Towel Ring', 'जिम जॉगर पैंट एथलेटिक कसरत टॉवल रिंग के साथ पतला स्वेटपैंट जिपर पॉकेट्स चलाना', 'gym-jogger-pants-athletic-workout-running-tapered-sweatpants-zipper-pockets-with-towel-ring', 'जिम-जॉगर-पैंट-एथलेटिक-कसरत-टॉवल-रिंग-के-साथ-पतला-स्वेटपैंट-जिपर-पॉकेट्स-चलाना', 'B09B3LKM6L', '300', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '2400', NULL, 'The Iwing fall women running athletic pants with towel ring design are crafted from premium fabric,', 'टॉवल रिंग डिज़ाइन के साथ एथलेटिक पैंट चलाने वाली इविंग फॉल महिलाओं को प्रीमियम कपड़े से तैयार किया गया है,', '<p>The Iwing fall women running athletic pants with towel ring design are crafted from premium fabric,</p>', '<p>&nbsp;</p>\r\n\r\n<p>टॉवल रिंग डिज़ाइन के साथ एथलेटिक पैंट चलाने वाली इविंग फॉल महिलाओं को प्रीमियम कपड़े से तैयार किया गया है,</p>', 'upload/products/thambnail/1728070426481834.jpg', 1, NULL, 1, 1, 1, '2022-03-23 00:19:43', NULL),
(31, 3, 7, 12, 29, 'Hanes Sport Women\'s Heathered Performance V-Neck Tee', 'हैन्स स्पोर्ट विमेंस हीथर्ड परफॉर्मेंस वी-नेक टी', 'hanes-sport-women\'s-heathered-performance-v-neck-tee', 'हैन्स-स्पोर्ट-विमेंस-हीथर्ड-परफॉर्मेंस-वी-नेक-टी', 'B01ES473BC', '600', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '1200', '1000', 'Performance training jersey V-neck tee keeps you in the comfort zone even when workouts push you out of yours.', 'प्रदर्शन प्रशिक्षण जर्सी वी-नेक टी आपको तब भी आराम क्षेत्र में रखती है, जब वर्कआउट आपको अपने से बाहर कर देता है।', '<pre>\r\nPerformance training jersey V-neck tee keeps you in the comfort zone even when workouts push you out of yours.</pre>', '<pre>\r\nप्रदर्शन प्रशिक्षण जर्सी वी-नेक टी आपको तब भी आराम क्षेत्र में रखती है, जब वर्कआउट आपको अपने से बाहर कर देता है।</pre>', 'upload/products/thambnail/1728070578003322.jpg', 1, 1, NULL, 1, 1, '2022-03-23 00:22:07', NULL),
(32, 1, 7, 12, 32, 'Fruit of the Loom Women\'s Short Sleeve Tee and Pant 2 Piece Sleep Set', 'लूम महिलाओं की शॉर्ट स्लीव टी और पंत 2 पीस स्लीप सेट का फल', 'fruit-of-the-loom-women\'s-short-sleeve-tee-and-pant-2-piece-sleep-set', 'लूम-महिलाओं-की-शॉर्ट-स्लीव-टी-और-पंत-2-पीस-स्लीप-सेट-का-फल', 'B08BXTCRB1', '500', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '2200', '1800', 'Stay comfy and cool in this Fruit of the Loom ladies short sleeve tee and full length pant 2 piece set that will have you ready to relax and unwind.', 'लूम लेडीज शॉर्ट स्लीव टी और फुल लेंथ पैंट 2 पीस सेट के इस फ्रूट ऑफ द लूम में कम्फर्टेबल और कूल रहें, जो आपको आराम करने और आराम करने के लिए तैयार करेगा।', '<p>Stay comfy and cool in this Fruit of the Loom ladies short sleeve tee and full length pant 2 piece set that will have you ready to relax and unwind.&nbsp;</p>', '<pre>\r\nलूम लेडीज शॉर्ट स्लीव टी और फुल लेंथ पैंट 2 पीस सेट के इस फ्रूट ऑफ द लूम में कम्फर्टेबल और कूल रहें, जो आपको आराम करने और आराम करने के लिए तैयार करेगा।</pre>', 'upload/products/thambnail/1728070727425635.jpg', 1, 1, 1, 1, 1, '2022-03-23 00:24:30', NULL),
(33, 2, 8, 14, 55, 'OTTERBOX PERFORMANCE PLUS GLASS SERIES Screen Protector for iPhone 13 Pro Max (ONLY) - CLEAR', 'आईफोन 13 प्रो मैक्स (केवल) के लिए ओटरबॉक्स प्रदर्शन प्लस ग्लास सीरीज स्क्रीन प्रोटेक्टर - स्पष्ट', 'otterbox-performance-plus-glass-series-screen-protector-for-iphone-13-pro-max-(only)---clear', 'आईफोन-13-प्रो-मैक्स-(केवल)-के-लिए-ओटरबॉक्स-प्रदर्शन-प्लस-ग्लास-सीरीज-स्क्रीन-प्रोटेक्टर---स्पष्ट', 'B09D521G74', '200', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '120', NULL, 'Molded to the shape of the display for a precision fit and optimized for curved screens and Easy to install with included tools', 'एक सटीक फिट के लिए डिस्प्ले के आकार में ढाला और घुमावदार स्क्रीन के लिए अनुकूलित और शामिल टूल के साथ स्थापित करने में आसान', '<p>Molded to the shape of the display for a precision fit and optimized for curved screens and Easy to install with included tools</p>', '<p>&nbsp;</p>\r\n\r\n<p>एक सटीक फिट के लिए डिस्प्ले के आकार में ढाला और घुमावदार स्क्रीन के लिए अनुकूलित और शामिल टूल के साथ स्थापित करने में आसान</p>', 'upload/products/thambnail/1728070895255818.jpg', 1, 1, NULL, 1, 1, '2022-03-23 00:27:10', NULL),
(34, 4, 8, 14, 53, 'Spigen Thin Fit Designed for Galaxy S22 Ultra Case (2022) - Black', 'गैलेक्सी एस22 अल्ट्रा केस (2022) के लिए डिज़ाइन किया गया स्पाइजेन पतला फिट - काला', 'spigen-thin-fit-designed-for-galaxy-s22-ultra-case-(2022)---black', 'गैलेक्सी-एस22-अल्ट्रा-केस-(2022)-के-लिए-डिज़ाइन-किया-गया-स्पाइजेन-पतला-फिट---काला', 'B09JFTV8LP', '140', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '420', NULL, 'Products with electrical plugs are designed for use in the US. Outlets and voltage differ internationally', 'विद्युत प्लग वाले उत्पाद यू.एस. में उपयोग के लिए डिज़ाइन किए गए हैं। आउटलेट और वोल्टेज अंतरराष्ट्रीय स्तर पर भिन्न हैं', '<p>Products with electrical plugs are designed for use in the US. Outlets and voltage differ internationally&nbsp;</p>', '<pre>\r\nविद्युत प्लग वाले उत्पाद यू.एस. में उपयोग के लिए डिज़ाइन किए गए हैं। आउटलेट और वोल्टेज अंतरराष्ट्रीय स्तर पर भिन्न हैं</pre>', 'upload/products/thambnail/1728071046224351.jpg', 1, NULL, 1, 1, 1, '2022-03-23 00:29:34', NULL),
(35, 5, 8, 14, 58, 'layajia Wireless Earbuds, Bluetooth 5.0 in Ear Headphones IPX7 Waterproof Earphones with LED Display 156 Playtime', 'लेजिया वायरलेस ईयरबड्स, ब्लूटूथ 5.0 इन ईयर हेडफोन्स IPX7 वाटरप्रूफ ईयरफोन एलईडी डिस्प्ले के साथ 156 प्लेटाइम', 'layajia-wireless-earbuds,-bluetooth-5.0-in-ear-headphones-ipx7-waterproof-earphones-with-led-display-156-playtime', 'लेजिया-वायरलेस-ईयरबड्स,-ब्लूटूथ-5.0-इन-ईयर-हेडफोन्स-IPX7-वाटरप्रूफ-ईयरफोन-एलईडी-डिस्प्ले-के-साथ-156-प्लेटाइम', 'B09J13K2CK', '250', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '1500', NULL, 'layajia Wireless Earbuds, Bluetooth 5.0 in Ear Headphones IPX7 Waterproof Earphones with LED Display 156 Playtime, 2200mAh Charging Case Touch Control, Clear Noise Cancelling Mic for Sports, Work', 'लेजिया वायरलेस ईयरबड्स, ईयर हेडफोन में ब्लूटूथ 5.0 एलईडी डिस्प्ले के साथ IPX7 वाटरप्रूफ इयरफ़ोन 156 प्लेटाइम, 2200mAh चार्जिंग केस टच कंट्रोल, स्पोर्ट्स के लिए क्लियर नॉइज़ कैंसिलिंग माइक', '<p>layajia Wireless Earbuds, Bluetooth 5.0 in Ear Headphones IPX7 Waterproof Earphones with LED Display 156 Playtime, 2200mAh Charging Case Touch Control, Clear Noise Cancelling Mic for Sports, Work</p>', '<p>&nbsp;</p>\r\n\r\n<p>लेजिया वायरलेस ईयरबड्स, ईयर हेडफोन में ब्लूटूथ 5.0 एलईडी डिस्प्ले के साथ IPX7 वाटरप्रूफ इयरफ़ोन 156 प्लेटाइम, 2200mAh चार्जिंग केस टच कंट्रोल, स्पोर्ट्स के लिए क्लियर नॉइज़ कैंसिलिंग माइक</p>', 'upload/products/thambnail/1728071250838058.jpg', 1, NULL, 1, 1, 1, '2022-03-23 00:32:49', NULL),
(36, 5, 8, 15, 48, 'Afterglow LED Wired Game Controller - RGB Hue Color Lights', 'आफ्टरग्लो एलईडी वायर्ड गेम कंट्रोलर - आरजीबी ह्यू कलर लाइट्स - यूएसबी कनेक्टर -', 'afterglow-led-wired-game-controller---rgb-hue-color-lights', 'आफ्टरग्लो-एलईडी-वायर्ड-गेम-कंट्रोलर---आरजीबी-ह्यू-कलर-लाइट्स---यूएसबी-कनेक्टर--', 'B08FCTBC2D', '800', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '8000', NULL, 'Crush the competition and look good doing it with the PDP Gaming Wired Controller for Xbox! With the free PDP control hub App you can remap buttons', 'प्रतियोगिता को कुचलें और Xbox के लिए PDP गेमिंग वायर्ड कंट्रोलर के साथ अच्छा प्रदर्शन करें! मुफ्त पीडीपी कंट्रोल हब ऐप से आप बटन को रीमैप कर सकते हैं', '<p>Crush the competition and look good doing it with the PDP Gaming Wired Controller for Xbox! With the free PDP control hub App you can remap buttons</p>', '<p>&nbsp;</p>\r\n\r\n<p>प्रतियोगिता को कुचलें और Xbox के लिए PDP गेमिंग वायर्ड कंट्रोलर के साथ अच्छा प्रदर्शन करें! मुफ्त पीडीपी कंट्रोल हब ऐप से आप बटन को रीमैप कर सकते हैं</p>', 'upload/products/thambnail/1728071428407782.jpg', 1, 1, 1, NULL, 1, '2022-03-23 00:35:38', NULL),
(37, 5, 9, 19, 94, 'Nathan James Modern TV Stand Entertainment Cabinet, Console with a Natural Wood Finish and Matte Accents with Storage Doors for Living Media Room, Oak/Black', 'नाथन जेम्स मॉडर्न टीवी स्टैंड एंटरटेनमेंट कैबिनेट, नेचुरल वुड फिनिश के साथ कंसोल और लिविंग मीडिया रूम के लिए स्टोरेज डोर के साथ मैट एक्सेंट, ओक/ब्लैक', 'nathan-james-modern-tv-stand-entertainment-cabinet,-console-with-a-natural-wood-finish-and-matte-accents-with-storage-doors-for-living-media-room,-oak/black', 'नाथन-जेम्स-मॉडर्न-टीवी-स्टैंड-एंटरटेनमेंट-कैबिनेट,-नेचुरल-वुड-फिनिश-के-साथ-कंसोल-और-लिविंग-मीडिया-रूम-के-लिए-स्टोरेज-डोर-के-साथ-मैट-एक्सेंट,-ओक/ब्लैक', 'B084HCMFQF', '50', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '12000', '11000', 'Mina is a unique and modern TV stand with its rattan details of texture on its cabinet doors that gives this entertainment console a sleek boho-chic design.', 'मीना एक अनूठा और आधुनिक टीवी स्टैंड है, जिसके कैबिनेट दरवाजे पर बनावट के रतन विवरण हैं जो इस मनोरंजन कंसोल को एक आकर्षक बोहो-ठाठ डिजाइन देता है।', '<p>Mina is a unique and modern TV stand with its rattan details of texture on its cabinet doors that gives this entertainment console a sleek boho-chic design.</p>', '<pre>\r\nमीना एक अनूठा और आधुनिक टीवी स्टैंड है, जिसके कैबिनेट दरवाजे पर बनावट के रतन विवरण हैं जो इस मनोरंजन कंसोल को एक आकर्षक बोहो-ठाठ डिजाइन देता है।</pre>', 'upload/products/thambnail/1728071650095408.jpg', 1, 1, 1, NULL, 1, '2022-03-23 00:39:10', NULL),
(38, 2, 9, 19, 95, 'DHP Emily Futon With Chrome Legs, Black Faux Leather', 'क्रोम लेग्स के साथ डीएचपी एमिली फ्यूटन, ब्लैक फॉक्स लेदर', 'dhp-emily-futon-with-chrome-legs,-black-faux-leather', 'क्रोम-लेग्स-के-साथ-डीएचपी-एमिली-फ्यूटन,-ब्लैक-फॉक्स-लेदर', 'B005FKMUHQ', '100', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '22000', NULL, 'The Emily futon is a striking piece that blends a modern look with a low-profile style.', 'एमिली फ़्यूटन एक आकर्षक टुकड़ा है जो एक लो-प्रोफाइल शैली के साथ आधुनिक रूप को मिश्रित करता है।', '<p>The Emily futon is a striking piece that blends a modern look with a low-profile style.&nbsp;The Emily futon is a striking piece that blends a modern look with a low-profile style.&nbsp;</p>', '<pre>\r\nएमिली फ़्यूटन एक आकर्षक टुकड़ा है जो एक लो-प्रोफाइल शैली के साथ आधुनिक रूप को मिश्रित करता है।एमिली फ़्यूटन एक आकर्षक टुकड़ा है जो एक लो-प्रोफाइल शैली के साथ आधुनिक रूप को मिश्रित करता है।</pre>', 'upload/products/thambnail/1728071826100548.jpg', NULL, NULL, 1, 1, 1, '2022-03-23 00:41:57', NULL),
(39, 4, 9, 18, 90, 'The Painting: A Pride and Prejudice Variation Kindle', 'द पेंटिंग: ए प्राइड एंड प्रेजुडिस वेरिएशन किंडल', 'the-painting:-a-pride-and-prejudice-variation-kindle', 'द-पेंटिंग:-ए-प्राइड-एंड-प्रेजुडिस-वेरिएशन-किंडल', 'B0943BK7FY', '8', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '32000', NULL, 'The Painting” is a Regency novel of approximately 43k words, sweet and very romantic with moderate angst, appropriate for all audiences.', 'द पेंटिंग” लगभग 43k शब्दों का एक रीजेंसी उपन्यास है, जो सभी दर्शकों के लिए उपयुक्त मध्यम गुस्से के साथ मीठा और बहुत रोमांटिक है।', '<p>The Painting&rdquo; is a Regency novel of approximately 43k words, sweet and very romantic with moderate angst, appropriate for all audiences.</p>', '<p>&nbsp;</p>\r\n\r\n<p>द पेंटिंग&rdquo; लगभग 43k शब्दों का एक रीजेंसी उपन्यास है, जो सभी दर्शकों के लिए उपयुक्त मध्यम गुस्से के साथ मीठा और बहुत रोमांटिक है।</p>', 'upload/products/thambnail/1728071979959634.jpg', 1, 1, NULL, NULL, 1, '2022-03-23 00:44:24', NULL),
(40, 4, 9, 17, 81, 'Martex 1B06853 Super Soft Fleece Blanket Low Lint Luxury Hotel Style Solid Pet Friendly Bed and Couch Blankets, Twin, Grey', 'मार्टेक्स 1बी06853 सुपर सॉफ्ट फ्लीस ब्लैंकेट लो लिंट लग्जरी होटल स्टाइल सॉलिड पेट फ्रेंडली बेड एंड काउच ब्लैंकेट, ट्विन, ग्रे', 'martex-1b06853-super-soft-fleece-blanket-low-lint-luxury-hotel-style-solid-pet-friendly-bed-and-couch-blankets,-twin,-grey', 'मार्टेक्स-1बी06853-सुपर-सॉफ्ट-फ्लीस-ब्लैंकेट-लो-लिंट-लग्जरी-होटल-स्टाइल-सॉलिड-पेट-फ्रेंडली-बेड-एंड-काउच-ब्लैंकेट,-ट्विन,-ग्रे', 'B073ZT18R1', '200', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Medium,Large', 'Lorem,Ipsum,Amet', 'Red,Black,White,Blue', 'Red,Black,White,Blue', '42000', NULL, 'Martex 1B06853 Super Soft Fleece Blanket Low Lint Luxury Hotel Style Solid Pet Friendly Bed and Couch Blankets, Twin, Grey', 'मार्टेक्स 1बी06853 सुपर सॉफ्ट फ्लीस ब्लैंकेट लो लिंट लग्जरी होटल स्टाइल सॉलिड पेट फ्रेंडली बेड एंड काउच ब्लैंकेट, ट्विन, ग्रे', '<p>Martex 1B06853 Super Soft Fleece Blanket Low Lint Luxury Hotel Style Solid Pet Friendly Bed and Couch Blankets, Twin, Grey</p>', '<pre>\r\nमार्टेक्स 1बी06853 सुपर सॉफ्ट फ्लीस ब्लैंकेट लो लिंट लग्जरी होटल स्टाइल सॉलिड पेट फ्रेंडली बेड एंड काउच ब्लैंकेट, ट्विन, ग्रे</pre>', 'upload/products/thambnail/1728072176400169.jpg', 1, 1, 1, NULL, 1, '2022-03-23 00:47:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `user_id`, `comment`, `summary`, `status`, `created_at`, `updated_at`) VALUES
(1, 9, 4, 'really its nice product', 'nice product', '0', '2022-03-20 13:35:08', NULL),
(2, 9, 4, '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.Aliquam suscipit.\"', 'best Wireless Keyboard', '1', '2022-03-20 13:36:10', '2022-03-20 13:56:27'),
(3, 8, 4, 'best monitor ever i saw and it totally perfect pexel and sereen', 'SAMSUNG Smart Monitor', '1', '2022-03-20 13:37:36', '2022-03-20 13:57:59'),
(4, 8, 4, 'Mobile Connectivity: Wireless DeX unlocks a full PC experience', 'test', '1', '2022-03-20 13:46:59', '2022-03-20 13:57:42');

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `meta_title`, `meta_author`, `meta_keyword`, `meta_description`, `google_analytics`, `created_at`, `updated_at`) VALUES
(1, 'Flipmart online shop', 'Flipmart shop', 'best online shop, best ecommerce , best ecommerce product', 'Learn Programing skills, from absolute beginner to advanced mastery.We try to create project base course which help your to learn professionally and make you fell as a complete developer', 'window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-84816806-1\');', NULL, '2022-03-20 03:02:55');

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
('0ROREuYkxim4KbfoQ0tovVMfGBLZx5vjMRm1h66G', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVW9oNUlaVk5xc243ZHIwbGFUQ1ZvNlZMd3R1blRGQlRHNEJvcmNCdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbnVzZXJyb2xlL2FsbCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTI6ImxvZ2luX2FkbWluXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1648229848),
('bLvgnZ8Kr3XnQlPakmvfKHY9sAntzS7yaPbVdVU9', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiR3hvZklHb0RVRTdFSTc3R0thWjlyd1Z2ZWJIdDNWS0JTUmxEY1JRZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9wcm9maWxlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO30=', 1648229702);

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
(5, 4, 3, 'chatok', '2022-03-15 23:39:33', '2022-03-15 23:39:33'),
(7, 2, 1, 'mohirpal', '2022-03-16 10:39:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `logo`, `phone_one`, `phone_two`, `email`, `company_name`, `company_address`, `facebook`, `twitter`, `linkedin`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'upload/logo/1727807250378405.png', '01875628575', '01875628576', 'abuhanifjowel@gmail.com', 'flipmart', 'uttara', 'www.facebook.com/jowel', 'www.twitter.com/rana', 'www.linkedin.com/jowelrana', 'www.youtube.com', NULL, '2022-03-20 02:36:39');

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
  `last_seen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `last_seen`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'user', 'jowel@user.com', NULL, NULL, NULL, '$2y$10$zl3nISZHXsgcAC446Y5/.uE6IsZkIZjZmpyFrsr4HzdMcS8xwFcZO', NULL, NULL, NULL, NULL, 'profile-photos/Ho3GBF2wbaNz0Xuu48Z3vnRwayYQmpQ0oa41Ws8f.jpg', '2022-01-27 11:26:30', '2022-01-27 11:50:01'),
(2, 'user', 'user@gmail.com', '01847313527', NULL, NULL, '$2y$10$sUve9mptTItQgLW.pOxfZ.Vm.slrsdv.iBh/4pRiP8RO1mU2RvHeO', NULL, NULL, 'DAVQ5S49jVAx1g5VDYdWDc7XVw6xvx5q0g1ACyih4KIToCb54uBbhuwKXWKx', NULL, NULL, '2022-01-28 23:40:14', '2022-01-29 00:19:42'),
(3, 'jowel', 'jowel@gmail.com', '01875628575', NULL, NULL, '$2y$10$QhIzuyxdhabs83vmEVFwsOIfsnVfGYXOmJnr.MeM0kt96SwsqKF1a', NULL, NULL, NULL, NULL, '202201291347pexels-alex-nasto-582635.jpg', '2022-01-29 07:39:03', '2022-01-29 08:06:16'),
(4, 'Abu Hanif Jowel', 'abuhanifjowel@gmail.com', '01847313526', '2022-03-20 20:10:59', NULL, '$2y$10$6pkiLBErD0sW/vKdi94kreVKFHnzHs29TVwEtv.gxZUWnHgPBWFTi', NULL, NULL, NULL, NULL, '202203170315118989972_776631056436302_3905353583471886740_n.jpg', '2022-03-16 21:02:23', '2022-03-20 14:10:59');

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
(6, 2, 8, '2022-03-15 07:10:21', NULL);

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
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_post_categories`
--
ALTER TABLE `blog_post_categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

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
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
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
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blog_post_categories`
--
ALTER TABLE `blog_post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
