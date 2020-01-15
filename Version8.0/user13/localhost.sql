-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 13, 2020 at 09:34 AM
-- Server version: 8.0.17
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--
CREATE DATABASE IF NOT EXISTS `demo` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `demo`;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `salary` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `address`, `salary`) VALUES
(1, 'Marcus h', '112312 ave n', 1000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `shoes`
--
CREATE DATABASE IF NOT EXISTS `shoes` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `shoes`;

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `request_id` int(10) UNSIGNED NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `model_id` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`request_id`, `store_id`, `model_id`) VALUES
(1, 10233, '27'),
(2, 10037, '12'),
(3, 10065, '3'),
(4, 10093, '5'),
(5, 10121, '12'),
(6, 10149, '3'),
(7, 10177, '18'),
(8, 10205, '20'),
(9, 10233, '20'),
(10, 10065, '20'),
(11, 10093, '19'),
(12, 10121, '12');

-- --------------------------------------------------------

--
-- Table structure for table `shoe`
--

CREATE TABLE `shoe` (
  `model_id` int(10) UNSIGNED NOT NULL,
  `style` varchar(128) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `size` varchar(4) DEFAULT NULL,
  `color` varchar(128) DEFAULT NULL,
  `cost` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shoe`
--

INSERT INTO `shoe` (`model_id`, `style`, `gender`, `size`, `color`, `cost`) VALUES
(1, 'Basketball', 'M', '11.5', 'BLK', '99.99'),
(2, 'sneakers', NULL, '6.5', 'grey', NULL),
(3, 'Sneaker', 'U', '10', 'BN', '119.99'),
(4, 'Sneaker', 'F', '4.5', 'PK', '76.99'),
(5, 'Sneaker', 'M', '9', 'BK', '34.99'),
(6, 'running', 'F', '4.5', 'OR', '68.99'),
(7, 'Sneaker', 'M', '13', 'BK', '89.99'),
(8, 'Sneaker', 'M', '10.5', 'TNWT', '69.99'),
(9, 'Basketball', 'M', '9', 'TNWT', '89.99'),
(10, 'sneaker', 'M', '11', 'WT', '29.99'),
(11, 'Sneaker', 'M', '10', 'BK', '51.99'),
(12, 'Boot', 'F', '7.5', 'BK', '29.99'),
(13, 'Sneaker', 'M', '9.5', 'BK', '79.99'),
(14, 'basketball', 'M', '11', 'WTBL', '124.99'),
(15, 'Sneaker', 'M', '13', 'RDWT', '79.99'),
(16, 'basketball', 'M', '14', 'BKGD', '179.99'),
(17, 'Sneaker', 'M', '10.5', 'BKWT', '99.99'),
(18, 'Sneaker', 'F', '7.5', 'WT', '25.99'),
(19, 'Sneaker', 'M', '10', 'BLU', '35.99'),
(20, 'Sneaker', 'M', '13', 'BK', '119.99'),
(21, 'running', 'F', '6.5', 'BLK', '59.99'),
(22, 'Basketball', 'M', '10.5', 'BKRD', '769.99'),
(23, 'Sneaker', 'M', '11.5', 'WTPK', '59.99'),
(24, 'Running', 'M', '9.5', 'BLK', '64.99'),
(25, 'Basketball', 'M', '11.5', 'BLK', '119.99'),
(26, 'Basketball', 'M', '11', 'RDWT', '109.99'),
(27, 'running', 'M', '12', 'BK', '199.99'),
(28, 'sneaker', 'M', '7.5', 'OR', '29.99'),
(29, 'sneaker', 'M', '8.5', 'BKGNWT', '15.99'),
(30, 'Boot', 'M', '11.5', 'BN', '119.99'),
(31, 'Basketball', 'M', '12', 'BLK', '126.99'),
(32, 'sneaker', 'M', '8', 'BLU', '49.99'),
(33, 'sneaker', 'M', '10', 'BLK', '99.99'),
(34, 'running', 'M', '11', 'BL', '49.99'),
(35, 'Boot', 'F', '7.5', 'BLK', '24.99'),
(36, 'sneaker', 'M', '11', 'BLK', '29.99'),
(37, 'sneaker', 'M', '7.5', 'GREY', '24.99'),
(38, 'Basketball', 'M', '10', 'GREY', '195.99'),
(39, 'Sandals', 'M', '9', 'RED', '49.99'),
(40, 'Under Armour', 'M', '10', 'BLK', '79.99'),
(41, 'sneaker', 'M', '11', 'BLK', '49.99'),
(42, 'Boot', 'F', '6', 'BLK', '19.99'),
(43, 'sneakers', 'M', '10.5', 'BLK', '54.99'),
(44, 'sneaker', 'M', '11.5', 'GREY', '39.99'),
(45, 'Canvas', 'M', '8', 'BLK', '8.99'),
(46, 'Running', 'M', '11.5', 'WHT', '149.99'),
(47, 'vans ', 'M', '12', 'WHT', '59.99'),
(48, 'sneaker', 'M', '11', 'GREY', '34.99'),
(49, 'sneaker', 'M', '10.5', 'BKRD', '119.99'),
(50, 'Sneaker', 'M', '12', 'GREY', '11.99'),
(51, 'vans ', 'M', '11', 'RED', '59.99'),
(52, 'Adidas', 'F', '6.5', 'GRN', '48.99');

-- --------------------------------------------------------

--
-- Table structure for table `store_info`
--

CREATE TABLE `store_info` (
  `Store_id` int(10) UNSIGNED NOT NULL,
  `Storename` varchar(128) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `store_info`
--

INSERT INTO `store_info` (`Store_id`, `Storename`, `city`) VALUES
(10037, 'Famous Footwear', 'Shakopee'),
(10065, 'Target', 'Shakopee'),
(10093, 'Kohl\'s', 'Shakopee'),
(10121, 'Foot Locker', 'Bloomington'),
(10149, 'Dick\'s Sporting Goods', 'Burnsville'),
(10177, 'Sam\'s Shoes', 'Pine Island'),
(10205, 'Kohl\'s', 'Apple Valley'),
(10233, 'Famous Footwear', 'Farmington'),
(10261, 'Journeys', 'Minneapolis'),
(10289, 'Kohl\'s', 'Bloomington'),
(10317, 'Target', 'Apple Valley'),
(10345, 'Payless', 'Burnsville');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `shoe`
--
ALTER TABLE `shoe`
  ADD PRIMARY KEY (`model_id`);

--
-- Indexes for table `store_info`
--
ALTER TABLE `store_info`
  ADD PRIMARY KEY (`Store_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `request_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `shoe`
--
ALTER TABLE `shoe`
  MODIFY `model_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `store_info`
--
ALTER TABLE `store_info`
  MODIFY `Store_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10346;
--
-- Database: `wordpress`
--
CREATE DATABASE IF NOT EXISTS `wordpress` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `wordpress`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-12-13 14:56:11', '2019-12-13 14:56:11', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ngg_album`
--

CREATE TABLE `wp_ngg_album` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `previewpic` bigint(20) NOT NULL DEFAULT '0',
  `albumdesc` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `sortorder` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageid` bigint(20) NOT NULL DEFAULT '0',
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ngg_gallery`
--

CREATE TABLE `wp_ngg_gallery` (
  `gid` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `path` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `title` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `galdesc` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `pageid` bigint(20) NOT NULL DEFAULT '0',
  `previewpic` bigint(20) NOT NULL DEFAULT '0',
  `author` bigint(20) NOT NULL DEFAULT '0',
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ngg_pictures`
--

CREATE TABLE `wp_ngg_pictures` (
  `pid` bigint(20) NOT NULL,
  `image_slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_id` bigint(20) NOT NULL DEFAULT '0',
  `galleryid` bigint(20) NOT NULL DEFAULT '0',
  `filename` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `alttext` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `imagedate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `exclude` tinyint(4) DEFAULT '0',
  `sortorder` bigint(20) NOT NULL DEFAULT '0',
  `meta_data` longtext COLLATE utf8mb4_unicode_520_ci,
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0',
  `updated_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://127.0.0.1:8080/wordpress/wordpress', 'yes'),
(2, 'home', 'http://127.0.0.1:8080/wordpress/wordpress', 'yes'),
(3, 'blogname', 'Marcus website', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', '230435@shakopeeschools.org', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:29:\"nextgen-gallery/nggallery.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentynineteen', 'yes'),
(41, 'stylesheet', 'twentynineteen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:71:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:24:\"NextGEN Attach Interface\";b:1;s:22:\"NextGEN Change options\";b:1;s:20:\"NextGEN Change style\";b:1;s:18:\"NextGEN Edit album\";b:1;s:24:\"NextGEN Gallery overview\";b:1;s:22:\"NextGEN Manage gallery\";b:1;s:29:\"NextGEN Manage others gallery\";b:1;s:19:\"NextGEN Manage tags\";b:1;s:21:\"NextGEN Upload images\";b:1;s:19:\"NextGEN Use TinyMCE\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:3:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}i:3;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:8:{i:0;s:13:\"media_audio-3\";i:1;s:10:\"archives-3\";i:2;s:8:\"search-2\";i:3;s:14:\"recent-posts-2\";i:4;s:17:\"recent-comments-2\";i:5;s:10:\"archives-2\";i:6;s:12:\"categories-2\";i:7;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:7:{i:1577976445;a:1:{s:29:\"ngg_delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"ngg_custom\";s:4:\"args\";a:0:{}s:8:\"interval\";i:900;}}}i:1577976971;a:3:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1577976972;a:4:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1577976981;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1577976982;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1577998108;a:1:{s:28:\"fs_data_sync_nextgen-gallery\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:2:{i:3;a:10:{s:7:\"preload\";s:4:\"none\";s:4:\"loop\";b:0;s:3:\"mp3\";s:0:\"\";s:3:\"ogg\";s:0:\"\";s:4:\"flac\";s:0:\"\";s:3:\"m4a\";s:0:\"\";s:3:\"wav\";s:51:\"http://cd.textfiles.com/monstmedia/SOUND1/PHONE.WAV\";s:13:\"attachment_id\";i:0;s:3:\"url\";s:51:\"http://cd.textfiles.com/monstmedia/SOUND1/PHONE.WAV\";s:5:\"title\";s:4:\"bell\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'recovery_keys', 'a:0:{}', 'yes'),
(119, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1577975733;s:7:\"checked\";a:4:{s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(121, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(124, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:26:\"230435@shakopeeschools.org\";s:7:\"version\";s:5:\"5.3.2\";s:9:\"timestamp\";i:1576765387;}', 'no'),
(147, 'admin_email_lifespan', '1591803101', 'yes'),
(148, 'db_upgraded', '', 'yes'),
(152, 'can_compress_scripts', '0', 'no'),
(173, 'recently_activated', 'a:0:{}', 'yes'),
(203, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(218, 'category_children', 'a:0:{}', 'yes'),
(238, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1577975733;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(246, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1577975736;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:9:\"hello.php\";s:5:\"1.7.2\";s:29:\"nextgen-gallery/nggallery.php\";s:6:\"3.2.23\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"nextgen-gallery/nggallery.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/nextgen-gallery\";s:4:\"slug\";s:15:\"nextgen-gallery\";s:6:\"plugin\";s:29:\"nextgen-gallery/nggallery.php\";s:11:\"new_version\";s:6:\"3.2.23\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/nextgen-gallery/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/nextgen-gallery.3.2.23.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/nextgen-gallery/assets/icon-256x256.png?rev=2083961\";s:2:\"1x\";s:68:\"https://ps.w.org/nextgen-gallery/assets/icon-128x128.png?rev=2083961\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/nextgen-gallery/assets/banner-1544x500.png?rev=2083961\";s:2:\"1x\";s:70:\"https://ps.w.org/nextgen-gallery/assets/banner-772x250.png?rev=2083961\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(247, 'ngg_run_freemius', '1', 'yes'),
(248, 'fs_active_plugins', 'O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:24:\"nextgen-gallery/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.3.0\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1576767720;s:11:\"plugin_path\";s:29:\"nextgen-gallery/nggallery.php\";}}s:7:\"abspath\";s:72:\"/Users/230435/Applications/mampstack/apache2/htdocs/wordpress/wordpress/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:29:\"nextgen-gallery/nggallery.php\";s:8:\"sdk_path\";s:24:\"nextgen-gallery/freemius\";s:7:\"version\";s:5:\"2.3.0\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1576767720;}}', 'yes'),
(249, 'fs_debug_mode', '', 'yes'),
(250, 'fs_accounts', 'a:11:{s:21:\"id_slug_type_path_map\";a:1:{i:266;a:3:{s:4:\"slug\";s:15:\"nextgen-gallery\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:29:\"nextgen-gallery/nggallery.php\";}}s:11:\"plugin_data\";a:1:{s:15:\"nextgen-gallery\";a:21:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:29:\"nextgen-gallery/nggallery.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1576767720;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.3.0\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:6:\"3.2.23\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:21:\"is_plugin_new_install\";b:1;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:14:\"127.0.0.1:8080\";s:9:\"server_ip\";s:9:\"127.0.0.1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1576767720;s:7:\"version\";s:6:\"3.2.23\";}s:17:\"was_plugin_loaded\";b:1;s:15:\"prev_is_premium\";b:0;s:14:\"has_trial_plan\";b:0;s:22:\"install_sync_timestamp\";i:1576767727;s:19:\"keepalive_timestamp\";i:1577975125;s:20:\"activation_timestamp\";i:1576767726;s:9:\"sync_cron\";O:8:\"stdClass\":5:{s:7:\"version\";s:6:\"3.2.23\";s:7:\"blog_id\";i:0;s:11:\"sdk_version\";s:5:\"2.3.0\";s:9:\"timestamp\";i:1576767727;s:2:\"on\";b:1;}s:14:\"sync_timestamp\";i:1577975125;}}s:13:\"file_slug_map\";a:1:{s:29:\"nextgen-gallery/nggallery.php\";s:15:\"nextgen-gallery\";}s:7:\"plugins\";a:1:{s:15:\"nextgen-gallery\";O:9:\"FS_Plugin\":22:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:15:\"NextGEN Gallery\";s:4:\"slug\";s:15:\"nextgen-gallery\";s:12:\"premium_slug\";s:23:\"nextgen-gallery-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:29:\"nextgen-gallery/nggallery.php\";s:7:\"version\";s:6:\"3.2.23\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:10:\"public_key\";s:32:\"pk_009356711cd548837f074e1ef60a4\";s:10:\"secret_key\";N;s:2:\"id\";s:3:\"266\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"b1d3bd94320151bb6fbf2b7ac4953124\";s:5:\"plans\";a:1:{s:15:\"nextgen-gallery\";a:1:{i:0;O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:4:\"MjY2\";s:4:\"name\";s:8:\"ZnJlZQ==\";s:5:\"title\";s:8:\"RnJlZQ==\";s:11:\"description\";N;s:17:\"is_free_localhost\";s:4:\"MQ==\";s:17:\"is_block_features\";s:4:\"MQ==\";s:12:\"license_type\";s:4:\"MA==\";s:16:\"is_https_support\";s:0:\"\";s:12:\"trial_period\";N;s:23:\"is_require_subscription\";s:0:\"\";s:10:\"support_kb\";N;s:13:\"support_forum\";N;s:13:\"support_email\";N;s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";s:0:\"\";s:11:\"is_featured\";s:0:\"\";s:2:\"id\";s:4:\"Mzc0\";s:7:\"updated\";N;s:7:\"created\";s:28:\"MjAxNi0wNC0yNCAxNToyNzo0Nw==\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}}s:14:\"active_plugins\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1577975125;s:3:\"md5\";s:32:\"0ed8318b84b97e747f944e23f5dfffa1\";s:7:\"plugins\";a:1:{s:29:\"nextgen-gallery/nggallery.php\";a:5:{s:4:\"slug\";s:15:\"nextgen-gallery\";s:7:\"version\";s:6:\"3.2.23\";s:5:\"title\";s:15:\"NextGEN Gallery\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}}}s:11:\"all_plugins\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1576767727;s:3:\"md5\";s:32:\"588f4fc2389f56fc50f2ceca76e08cc1\";s:7:\"plugins\";a:3:{s:19:\"akismet/akismet.php\";a:5:{s:4:\"slug\";s:7:\"akismet\";s:7:\"version\";s:5:\"4.1.3\";s:5:\"title\";s:17:\"Akismet Anti-Spam\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:9:\"hello.php\";a:5:{s:4:\"slug\";s:11:\"hello-dolly\";s:7:\"version\";s:5:\"1.7.2\";s:5:\"title\";s:11:\"Hello Dolly\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:29:\"nextgen-gallery/nggallery.php\";a:5:{s:4:\"slug\";s:15:\"nextgen-gallery\";s:7:\"version\";s:6:\"3.2.23\";s:5:\"title\";s:15:\"NextGEN Gallery\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}}}s:10:\"all_themes\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1577975125;s:3:\"md5\";s:32:\"1ee2dd0f0513b33b0a2472bc91298bf5\";s:6:\"themes\";a:4:{s:14:\"twentynineteen\";a:5:{s:4:\"slug\";s:14:\"twentynineteen\";s:7:\"version\";s:3:\"1.4\";s:5:\"title\";s:15:\"Twenty Nineteen\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:15:\"twentyseventeen\";a:5:{s:4:\"slug\";s:15:\"twentyseventeen\";s:7:\"version\";s:3:\"2.2\";s:5:\"title\";s:16:\"Twenty Seventeen\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:13:\"twentysixteen\";a:5:{s:4:\"slug\";s:13:\"twentysixteen\";s:7:\"version\";s:3:\"2.0\";s:5:\"title\";s:14:\"Twenty Sixteen\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:12:\"twentytwenty\";a:5:{s:4:\"slug\";s:12:\"twentytwenty\";s:7:\"version\";s:3:\"1.1\";s:5:\"title\";s:13:\"Twenty Twenty\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}}}s:5:\"sites\";a:1:{s:15:\"nextgen-gallery\";O:7:\"FS_Site\":25:{s:7:\"site_id\";s:8:\"15433202\";s:9:\"plugin_id\";s:3:\"266\";s:7:\"user_id\";s:7:\"2512525\";s:5:\"title\";s:14:\"Marcus website\";s:3:\"url\";s:41:\"http://127.0.0.1:8080/wordpress/wordpress\";s:7:\"version\";s:6:\"3.2.23\";s:8:\"language\";s:5:\"en-US\";s:7:\"charset\";s:5:\"UTF-8\";s:16:\"platform_version\";s:5:\"5.3.2\";s:11:\"sdk_version\";s:5:\"2.3.0\";s:28:\"programming_language_version\";s:5:\"7.3.8\";s:7:\"plan_id\";s:3:\"374\";s:10:\"license_id\";N;s:13:\"trial_plan_id\";N;s:10:\"trial_ends\";N;s:10:\"is_premium\";b:0;s:15:\"is_disconnected\";b:0;s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;s:10:\"public_key\";s:32:\"pk_3f4dd62996ed405a55ef70373ca0d\";s:10:\"secret_key\";s:32:\"sk_9(%6bGD]2VKE$2Qcu7>v?v1LKu}Jz\";s:2:\"id\";s:7:\"3619234\";s:7:\"updated\";N;s:7:\"created\";s:19:\"2019-12-19 15:02:06\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:5:\"users\";a:1:{i:2512525;O:7:\"FS_User\":13:{s:5:\"email\";s:26:\"230435@shakopeeschools.org\";s:5:\"first\";s:4:\"root\";s:4:\"last\";s:0:\"\";s:11:\"is_verified\";b:0;s:7:\"is_beta\";b:0;s:11:\"customer_id\";N;s:5:\"gross\";i:0;s:10:\"public_key\";s:32:\"pk_281ad838a259e117787e831eeec56\";s:10:\"secret_key\";s:32:\"sk_M9AmBW9Am*^9)iM.^]k.9A@vx=Hy)\";s:2:\"id\";s:7:\"2512525\";s:7:\"updated\";N;s:7:\"created\";s:19:\"2019-12-19 15:02:06\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}}', 'yes'),
(253, 'fs_api_cache', 'a:4:{s:26:\"get:/v1/users/2512525.json\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":16:{s:15:\"default_card_id\";N;s:5:\"gross\";i:0;s:6:\"source\";i:0;s:13:\"last_login_at\";N;s:5:\"email\";s:26:\"230435@shakopeeschools.org\";s:5:\"first\";s:4:\"root\";s:4:\"last\";s:0:\"\";s:7:\"picture\";N;s:2:\"ip\";s:12:\"74.113.122.2\";s:11:\"is_verified\";b:0;s:10:\"secret_key\";s:32:\"sk_M9AmBW9Am*^9)iM.^]k.9A@vx=Hy)\";s:10:\"public_key\";s:32:\"pk_281ad838a259e117787e831eeec56\";s:2:\"id\";s:7:\"2512525\";s:7:\"created\";s:19:\"2019-12-19 15:02:06\";s:7:\"updated\";N;s:11:\"customer_id\";N;}s:7:\"created\";i:1576767726;s:9:\"timestamp\";i:1576854126;}s:29:\"get:/v1/installs/3619234.json\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":31:{s:7:\"site_id\";s:8:\"15433202\";s:9:\"plugin_id\";s:3:\"266\";s:7:\"user_id\";s:7:\"2512525\";s:3:\"url\";s:41:\"http://127.0.0.1:8080/wordpress/wordpress\";s:5:\"title\";s:14:\"Marcus website\";s:7:\"version\";s:6:\"3.2.23\";s:7:\"plan_id\";s:3:\"374\";s:10:\"license_id\";N;s:13:\"trial_plan_id\";N;s:10:\"trial_ends\";N;s:15:\"subscription_id\";N;s:5:\"gross\";i:0;s:12:\"country_code\";s:2:\"us\";s:8:\"language\";s:5:\"en-US\";s:7:\"charset\";s:5:\"UTF-8\";s:16:\"platform_version\";s:5:\"5.3.2\";s:11:\"sdk_version\";s:5:\"2.3.0\";s:28:\"programming_language_version\";s:5:\"7.3.8\";s:9:\"is_active\";b:1;s:15:\"is_disconnected\";b:0;s:10:\"is_premium\";b:0;s:14:\"is_uninstalled\";b:0;s:9:\"is_locked\";b:0;s:6:\"source\";i:0;s:8:\"upgraded\";N;s:12:\"last_seen_at\";s:19:\"2019-12-19 15:02:07\";s:10:\"secret_key\";s:32:\"sk_9(%6bGD]2VKE$2Qcu7>v?v1LKu}Jz\";s:10:\"public_key\";s:32:\"pk_3f4dd62996ed405a55ef70373ca0d\";s:2:\"id\";s:7:\"3619234\";s:7:\"created\";s:19:\"2019-12-19 15:02:06\";s:7:\"updated\";N;}s:7:\"created\";i:1576767726;s:9:\"timestamp\";i:1576854126;}s:44:\"get:/v1/users/2512525/plugins/266/plans.json\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":1:{s:5:\"plans\";a:1:{i:0;O:8:\"stdClass\":22:{s:9:\"plugin_id\";s:3:\"266\";s:4:\"name\";s:4:\"free\";s:5:\"title\";s:4:\"Free\";s:11:\"description\";N;s:17:\"is_free_localhost\";b:1;s:17:\"is_block_features\";b:1;s:25:\"is_block_features_monthly\";b:1;s:12:\"license_type\";i:0;s:16:\"is_https_support\";b:0;s:12:\"trial_period\";N;s:23:\"is_require_subscription\";b:0;s:10:\"support_kb\";N;s:13:\"support_forum\";N;s:13:\"support_email\";N;s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";b:0;s:11:\"is_featured\";b:0;s:9:\"is_hidden\";b:0;s:2:\"id\";s:3:\"374\";s:7:\"created\";s:19:\"2016-04-24 15:27:47\";s:7:\"updated\";N;}}}s:7:\"created\";i:1576767726;s:9:\"timestamp\";i:1576854126;}s:55:\"get:/v1/users/2512525.json?plugin_id=266&fields=is_beta\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":2:{s:2:\"id\";s:7:\"2512525\";s:7:\"is_beta\";b:0;}s:7:\"created\";i:1577975124;s:9:\"timestamp\";i:1578061524;}}', 'yes'),
(254, 'fs_gdpr', 'a:1:{s:2:\"u1\";a:2:{s:8:\"required\";b:0;s:18:\"show_opt_in_notice\";b:0;}}', 'yes'),
(257, 'widget_ngg-images', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(258, 'widget_ngg-mrssw', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(259, 'widget_slideshow', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(260, 'ngg_transient_groups', 'a:7:{s:9:\"__counter\";i:7;s:16:\"WordPress-Router\";a:2:{s:2:\"id\";i:2;s:7:\"enabled\";b:1;}s:15:\"col_in_wp_posts\";a:2:{s:2:\"id\";i:3;s:7:\"enabled\";b:1;}s:21:\"col_in_wp_ngg_gallery\";a:2:{s:2:\"id\";i:4;s:7:\"enabled\";b:1;}s:22:\"col_in_wp_ngg_pictures\";a:2:{s:2:\"id\";i:5;s:7:\"enabled\";b:1;}s:19:\"col_in_wp_ngg_album\";a:2:{s:2:\"id\";i:6;s:7:\"enabled\";b:1;}s:27:\"displayed_gallery_rendering\";a:2:{s:2:\"id\";i:7;s:7:\"enabled\";b:1;}}', 'yes'),
(261, 'ngg_options', 'a:72:{s:11:\"gallerypath\";s:19:\"wp-content/gallery/\";s:11:\"wpmuCSSfile\";s:13:\"nggallery.css\";s:9:\"wpmuStyle\";b:0;s:9:\"wpmuRoles\";b:0;s:16:\"wpmuImportFolder\";b:0;s:13:\"wpmuZipUpload\";b:0;s:14:\"wpmuQuotaCheck\";b:0;s:17:\"datamapper_driver\";s:22:\"custom_post_datamapper\";s:20:\"maximum_entity_count\";i:500;s:17:\"router_param_slug\";s:9:\"nggallery\";s:22:\"router_param_separator\";s:2:\"--\";s:19:\"router_param_prefix\";s:0:\"\";s:9:\"deleteImg\";b:1;s:13:\"usePermalinks\";b:0;s:13:\"permalinkSlug\";s:9:\"nggallery\";s:14:\"graphicLibrary\";s:2:\"gd\";s:14:\"imageMagickDir\";s:15:\"/usr/local/bin/\";s:11:\"useMediaRSS\";b:0;s:18:\"galleries_in_feeds\";b:0;s:12:\"activateTags\";i:0;s:10:\"appendType\";s:4:\"tags\";s:9:\"maxImages\";i:7;s:14:\"relatedHeading\";s:24:\"<h3>Related Images:</h3>\";s:10:\"thumbwidth\";i:240;s:11:\"thumbheight\";i:160;s:8:\"thumbfix\";b:1;s:12:\"thumbquality\";i:100;s:8:\"imgWidth\";i:1800;s:9:\"imgHeight\";i:1200;s:10:\"imgQuality\";i:100;s:9:\"imgBackup\";b:1;s:13:\"imgAutoResize\";b:1;s:9:\"galImages\";s:2:\"24\";s:17:\"galPagedGalleries\";i:0;s:10:\"galColumns\";i:0;s:12:\"galShowSlide\";b:0;s:12:\"galTextSlide\";s:14:\"View Slideshow\";s:14:\"galTextGallery\";s:15:\"View Thumbnails\";s:12:\"galShowOrder\";s:7:\"gallery\";s:7:\"galSort\";s:9:\"sortorder\";s:10:\"galSortDir\";s:3:\"ASC\";s:10:\"galNoPages\";b:1;s:13:\"galImgBrowser\";i:0;s:12:\"galHiddenImg\";i:0;s:10:\"galAjaxNav\";i:1;s:11:\"thumbEffect\";s:14:\"simplelightbox\";s:9:\"thumbCode\";s:47:\"class=\"ngg-simplelightbox\" rel=\"%GALLERY_NAME%\"\";s:18:\"thumbEffectContext\";s:14:\"nextgen_images\";s:5:\"wmPos\";s:9:\"midCenter\";s:6:\"wmXpos\";i:15;s:6:\"wmYpos\";i:5;s:6:\"wmType\";s:4:\"text\";s:6:\"wmPath\";s:0:\"\";s:6:\"wmFont\";s:9:\"arial.ttf\";s:6:\"wmSize\";i:30;s:6:\"wmText\";s:14:\"Marcus website\";s:7:\"wmColor\";s:6:\"ffffff\";s:8:\"wmOpaque\";s:2:\"33\";s:7:\"slideFX\";s:4:\"fade\";s:7:\"irWidth\";i:750;s:8:\"irHeight\";i:500;s:12:\"irRotatetime\";i:5;s:11:\"activateCSS\";i:1;s:7:\"CSSfile\";s:13:\"nggallery.css\";s:28:\"always_enable_frontend_logic\";b:0;s:27:\"use_alternate_random_method\";b:0;s:19:\"disable_fontawesome\";b:0;s:23:\"random_widget_cache_ttl\";i:30;s:22:\"dynamic_thumbnail_slug\";s:13:\"nextgen-image\";s:23:\"dynamic_stylesheet_slug\";s:12:\"nextgen-dcss\";s:11:\"installDate\";i:1576767727;s:13:\"gallery_count\";i:0;}', 'yes'),
(263, 'photocrati_auto_update_admin_update_list', '', 'yes'),
(264, 'photocrati_auto_update_admin_check_date', '', 'yes'),
(265, 'ngg_db_version', '1.8.1', 'yes'),
(268, 'pope_module_list', 'a:37:{i:0;s:19:\"photocrati-fs|3.1.8\";i:1;s:22:\"photocrati-i18n|3.2.10\";i:2;s:29:\"photocrati-validation|3.1.4.2\";i:3;s:25:\"photocrati-router|3.1.7.1\";i:4;s:34:\"photocrati-wordpress_routing|3.1.8\";i:5;s:25:\"photocrati-security|3.1.8\";i:6;s:33:\"photocrati-nextgen_settings|3.1.9\";i:7;s:20:\"photocrati-mvc|3.1.8\";i:8;s:21:\"photocrati-ajax|3.1.8\";i:9;s:28:\"photocrati-datamapper|3.1.19\";i:10;s:31:\"photocrati-nextgen-legacy|3.2.1\";i:11;s:32:\"photocrati-simple_html_dom|3.0.0\";i:12;s:30:\"photocrati-nextgen-data|3.2.17\";i:13;s:31:\"photocrati-nextgen_block|3.1.19\";i:14;s:36:\"photocrati-dynamic_thumbnails|3.2.13\";i:15;s:31:\"photocrati-nextgen_admin|3.2.21\";i:16;s:41:\"photocrati-nextgen_gallery_display|3.2.17\";i:17;s:36:\"photocrati-frame_communication|3.0.0\";i:18;s:32:\"photocrati-attach_to_post|3.2.21\";i:19;s:41:\"photocrati-nextgen_addgallery_page|3.2.17\";i:20;s:39:\"photocrati-nextgen_other_options|3.2.21\";i:21;s:37:\"photocrati-nextgen_pagination|3.0.0.2\";i:22;s:35:\"photocrati-dynamic_stylesheet|3.0.0\";i:23;s:37:\"photocrati-nextgen_pro_upgrade|3.2.23\";i:24;s:22:\"photocrati-cache|3.0.0\";i:25;s:26:\"photocrati-lightbox|3.1.19\";i:26;s:42:\"photocrati-nextgen_basic_templates|3.0.0.2\";i:27;s:38:\"photocrati-nextgen_basic_gallery|3.1.8\";i:28;s:43:\"photocrati-nextgen_basic_imagebrowser|3.1.8\";i:29;s:40:\"photocrati-nextgen_basic_singlepic|3.1.8\";i:30;s:39:\"photocrati-nextgen_basic_tagcloud|3.1.8\";i:31;s:36:\"photocrati-nextgen_basic_album|3.1.8\";i:32;s:23:\"photocrati-widget|3.1.6\";i:33;s:38:\"photocrati-third_party_compat|3.1.11.1\";i:34;s:32:\"photocrati-nextgen_xmlrpc|3.2.19\";i:35;s:22:\"photocrati-wpcli|3.0.0\";i:36;s:24:\"photocrati-imagify|3.1.8\";}', 'yes'),
(275, '_site_transient_timeout_locked_1', '1892127727', 'no'),
(276, '_site_transient_locked_1', '1', 'no'),
(291, '_site_transient_timeout_theme_roots', '1577976925', 'no'),
(292, '_site_transient_theme_roots', 'a:4:{s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(293, '_transient_timeout_2__2951165530', '1577977542', 'no'),
(294, '_transient_2__2951165530', '[]', 'no'),
(296, '_transient_timeout_3__2899230903', '1577976926', 'no'),
(297, '_transient_3__2899230903', '[\"ID\",\"post_author\",\"post_date\",\"post_date_gmt\",\"post_content\",\"post_title\",\"post_excerpt\",\"post_status\",\"comment_status\",\"ping_status\",\"post_password\",\"post_name\",\"to_ping\",\"pinged\",\"post_modified\",\"post_modified_gmt\",\"post_content_filtered\",\"post_parent\",\"guid\",\"menu_order\",\"post_type\",\"post_mime_type\",\"comment_count\"]', 'no'),
(300, '_transient_timeout_4__2899230903', '1577976929', 'no'),
(301, '_transient_4__2899230903', '[\"gid\",\"name\",\"slug\",\"path\",\"title\",\"galdesc\",\"pageid\",\"previewpic\",\"author\",\"extras_post_id\"]', 'no'),
(302, '_transient_timeout_5__2899230903', '1577976929', 'no'),
(303, '_transient_5__2899230903', '[\"pid\",\"image_slug\",\"post_id\",\"galleryid\",\"filename\",\"description\",\"alttext\",\"imagedate\",\"exclude\",\"sortorder\",\"meta_data\",\"extras_post_id\",\"updated_at\"]', 'no'),
(305, '_site_transient_timeout_browser_a9cfc38c8c27d8aade7b19701097beda', '1578580538', 'no'),
(306, '_site_transient_browser_a9cfc38c8c27d8aade7b19701097beda', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"79.0.3945.88\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(307, '_site_transient_timeout_php_check_78e1776a2900a8656cebe7d7ea2a07cc', '1578580538', 'no'),
(308, '_site_transient_php_check_78e1776a2900a8656cebe7d7ea2a07cc', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(309, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1578018939', 'no'),
(310, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:6:{i:0;a:8:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:13:\"WordCamp Asia\";s:3:\"url\";s:31:\"https://2020.asia.wordcamp.org/\";s:6:\"meetup\";s:0:\"\";s:10:\"meetup_url\";s:0:\"\";s:4:\"date\";s:19:\"2020-02-21 00:00:00\";s:8:\"end_date\";s:19:\"2020-02-23 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:17:\"Bangkok, Thailand\";s:7:\"country\";s:2:\"TH\";s:8:\"latitude\";d:13.7248934;s:9:\"longitude\";d:100.492683;}}i:1;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:28:\"WordPress Helpdesk & Hacking\";s:3:\"url\";s:70:\"https://www.meetup.com/Red-Wing-WordPress-Meetup/events/tshqgrybccbxb/\";s:6:\"meetup\";s:25:\"Red Wing WordPress Meetup\";s:10:\"meetup_url\";s:49:\"https://www.meetup.com/Red-Wing-WordPress-Meetup/\";s:4:\"date\";s:19:\"2020-01-18 10:00:00\";s:8:\"end_date\";s:19:\"2020-01-18 12:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:17:\"Red Wing, MN, USA\";s:7:\"country\";s:2:\"us\";s:8:\"latitude\";d:44.564262390137;s:9:\"longitude\";d:-92.531913757324;}}i:2;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:79:\"January MSP WordPress Meetup - Leveling Up Your Website w/ Roles & Capabilities\";s:3:\"url\";s:81:\"https://www.meetup.com/Minneapolis-St-Paul-WordPress-User-Group/events/267299435/\";s:6:\"meetup\";s:43:\"Minneapolis - St. Paul WordPress User Group\";s:10:\"meetup_url\";s:64:\"https://www.meetup.com/Minneapolis-St-Paul-WordPress-User-Group/\";s:4:\"date\";s:19:\"2020-01-23 11:00:00\";s:8:\"end_date\";s:19:\"2020-01-23 13:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:20:\"Minneapolis, MN, USA\";s:7:\"country\";s:2:\"us\";s:8:\"latitude\";d:45.062210083008;s:9:\"longitude\";d:-93.279800415039;}}i:3;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:28:\"WordPress Helpdesk & Hacking\";s:3:\"url\";s:70:\"https://www.meetup.com/Red-Wing-WordPress-Meetup/events/tshqgrybcdbtb/\";s:6:\"meetup\";s:25:\"Red Wing WordPress Meetup\";s:10:\"meetup_url\";s:49:\"https://www.meetup.com/Red-Wing-WordPress-Meetup/\";s:4:\"date\";s:19:\"2020-02-15 10:00:00\";s:8:\"end_date\";s:19:\"2020-02-15 12:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:17:\"Red Wing, MN, USA\";s:7:\"country\";s:2:\"us\";s:8:\"latitude\";d:44.564262390137;s:9:\"longitude\";d:-92.531913757324;}}i:4;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:28:\"WordPress Helpdesk & Hacking\";s:3:\"url\";s:70:\"https://www.meetup.com/Red-Wing-WordPress-Meetup/events/tshqgrybcfbcc/\";s:6:\"meetup\";s:25:\"Red Wing WordPress Meetup\";s:10:\"meetup_url\";s:49:\"https://www.meetup.com/Red-Wing-WordPress-Meetup/\";s:4:\"date\";s:19:\"2020-03-21 10:00:00\";s:8:\"end_date\";s:19:\"2020-03-21 12:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:17:\"Red Wing, MN, USA\";s:7:\"country\";s:2:\"us\";s:8:\"latitude\";d:44.564262390137;s:9:\"longitude\";d:-92.531913757324;}}i:5;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:28:\"WordPress Helpdesk & Hacking\";s:3:\"url\";s:70:\"https://www.meetup.com/Red-Wing-WordPress-Meetup/events/tshqgrybcgbxb/\";s:6:\"meetup\";s:25:\"Red Wing WordPress Meetup\";s:10:\"meetup_url\";s:49:\"https://www.meetup.com/Red-Wing-WordPress-Meetup/\";s:4:\"date\";s:19:\"2020-04-18 10:00:00\";s:8:\"end_date\";s:19:\"2020-04-18 12:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:17:\"Red Wing, MN, USA\";s:7:\"country\";s:2:\"us\";s:8:\"latitude\";d:44.564262390137;s:9:\"longitude\";d:-92.531913757324;}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1576770016:1'),
(4, 6, '_wp_attached_file', '2019/12/5773953fca26958c2410e67f57eaf569.jpg'),
(5, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:44:\"2019/12/5773953fca26958c2410e67f57eaf569.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"5773953fca26958c2410e67f57eaf569-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"5773953fca26958c2410e67f57eaf569-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"5773953fca26958c2410e67f57eaf569-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"5773953fca26958c2410e67f57eaf569-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:45:\"5773953fca26958c2410e67f57eaf569-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:45:\"5773953fca26958c2410e67f57eaf569-1568x882.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:882;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(6, 8, '_wp_attached_file', '2019/12/Screen-Shot-2019-12-17-at-8.38.29-AM.png'),
(7, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:786;s:6:\"height\";i:368;s:4:\"file\";s:48:\"2019/12/Screen-Shot-2019-12-17-at-8.38.29-AM.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2019-12-17-at-8.38.29-AM-300x140.png\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2019-12-17-at-8.38.29-AM-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2019-12-17-at-8.38.29-AM-768x360.png\";s:5:\"width\";i:768;s:6:\"height\";i:360;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 9, '_wp_attached_file', '2019/12/Screen-Shot-2019-12-17-at-8.39.19-AM.png'),
(9, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1078;s:6:\"height\";i:470;s:4:\"file\";s:48:\"2019/12/Screen-Shot-2019-12-17-at-8.39.19-AM.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2019-12-17-at-8.39.19-AM-300x131.png\";s:5:\"width\";i:300;s:6:\"height\";i:131;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"Screen-Shot-2019-12-17-at-8.39.19-AM-1024x446.png\";s:5:\"width\";i:1024;s:6:\"height\";i:446;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2019-12-17-at-8.39.19-AM-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2019-12-17-at-8.39.19-AM-768x335.png\";s:5:\"width\";i:768;s:6:\"height\";i:335;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 1, '_edit_lock', '1576595707:1'),
(16, 16, '_menu_item_type', 'taxonomy'),
(17, 16, '_menu_item_menu_item_parent', '0'),
(18, 16, '_menu_item_object_id', '2'),
(19, 16, '_menu_item_object', 'category'),
(20, 16, '_menu_item_target', ''),
(21, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(22, 16, '_menu_item_xfn', ''),
(23, 16, '_menu_item_url', ''),
(25, 17, '_menu_item_type', 'taxonomy'),
(26, 17, '_menu_item_menu_item_parent', '0'),
(27, 17, '_menu_item_object_id', '5'),
(28, 17, '_menu_item_object', 'category'),
(29, 17, '_menu_item_target', ''),
(30, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(31, 17, '_menu_item_xfn', ''),
(32, 17, '_menu_item_url', ''),
(34, 18, '_menu_item_type', 'taxonomy'),
(35, 18, '_menu_item_menu_item_parent', '0'),
(36, 18, '_menu_item_object_id', '4'),
(37, 18, '_menu_item_object', 'category'),
(38, 18, '_menu_item_target', ''),
(39, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(40, 18, '_menu_item_xfn', ''),
(41, 18, '_menu_item_url', ''),
(43, 19, '_menu_item_type', 'taxonomy'),
(44, 19, '_menu_item_menu_item_parent', '0'),
(45, 19, '_menu_item_object_id', '3'),
(46, 19, '_menu_item_object', 'category'),
(47, 19, '_menu_item_target', ''),
(48, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(49, 19, '_menu_item_xfn', ''),
(50, 19, '_menu_item_url', ''),
(52, 20, '_menu_item_type', 'taxonomy'),
(53, 20, '_menu_item_menu_item_parent', '0'),
(54, 20, '_menu_item_object_id', '7'),
(55, 20, '_menu_item_object', 'category'),
(56, 20, '_menu_item_target', ''),
(57, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(58, 20, '_menu_item_xfn', ''),
(59, 20, '_menu_item_url', ''),
(62, 22, '_wp_attached_file', '2019/12/Screen-Shot-2019-12-19-at-8.58.14-AM.png'),
(63, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:910;s:6:\"height\";i:1024;s:4:\"file\";s:48:\"2019/12/Screen-Shot-2019-12-19-at-8.58.14-AM.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2019-12-19-at-8.58.14-AM-267x300.png\";s:5:\"width\";i:267;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2019-12-19-at-8.58.14-AM-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2019-12-19-at-8.58.14-AM-768x864.png\";s:5:\"width\";i:768;s:6:\"height\";i:864;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(64, 23, 'title', 'NextGEN Basic Thumbnails'),
(65, 23, 'module_id', 'photocrati-nextgen_basic_gallery'),
(66, 23, 'preview_image_relpath', 'photocrati-nextgen_basic_gallery#thumb_preview.jpg'),
(67, 23, 'default_source', 'galleries'),
(68, 23, 'view_order', '10000'),
(69, 23, 'name', 'photocrati-nextgen_basic_thumbnails'),
(70, 23, 'installed_at_version', '3.2.23'),
(71, 23, 'hidden_from_ui', ''),
(72, 23, 'hidden_from_igw', ''),
(73, 23, '__defaults_set', '1'),
(74, 23, 'filter', 'raw'),
(75, 23, 'entity_types', 'WyJpbWFnZSJd'),
(76, 23, 'aliases', 'WyJiYXNpY190aHVtYm5haWwiLCJiYXNpY190aHVtYm5haWxzIiwibmV4dGdlbl9iYXNpY190aHVtYm5haWxzIl0='),
(77, 23, 'id_field', 'ID'),
(78, 23, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwiaW1hZ2VzX3Blcl9wYWdlIjoiMjQiLCJudW1iZXJfb2ZfY29sdW1ucyI6MCwidGh1bWJuYWlsX3dpZHRoIjoyNDAsInRodW1ibmFpbF9oZWlnaHQiOjE2MCwic2hvd19hbGxfaW5fbGlnaHRib3giOjAsImFqYXhfcGFnaW5hdGlvbiI6MSwidXNlX2ltYWdlYnJvd3Nlcl9lZmZlY3QiOjAsInRlbXBsYXRlIjoiIiwiZGlzcGxheV9ub19pbWFnZXNfZXJyb3IiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwic2hvd19zbGlkZXNob3dfbGluayI6MCwic2xpZGVzaG93X2xpbmtfdGV4dCI6IlZpZXcgU2xpZGVzaG93Iiwib3ZlcnJpZGVfdGh1bWJuYWlsX3NldHRpbmdzIjowLCJ0aHVtYm5haWxfcXVhbGl0eSI6IjEwMCIsInRodW1ibmFpbF9jcm9wIjoxLCJ0aHVtYm5haWxfd2F0ZXJtYXJrIjowLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119'),
(79, 24, 'title', 'NextGEN Basic Slideshow'),
(80, 24, 'module_id', 'photocrati-nextgen_basic_gallery'),
(81, 24, 'preview_image_relpath', 'photocrati-nextgen_basic_gallery#slideshow_preview.jpg'),
(82, 24, 'default_source', 'galleries'),
(83, 24, 'view_order', '10010'),
(84, 24, 'name', 'photocrati-nextgen_basic_slideshow'),
(85, 24, 'installed_at_version', '3.2.23'),
(86, 24, 'hidden_from_ui', ''),
(87, 24, 'hidden_from_igw', ''),
(88, 24, '__defaults_set', '1'),
(89, 24, 'filter', 'raw'),
(90, 24, 'entity_types', 'WyJpbWFnZSJd'),
(91, 24, 'aliases', 'WyJiYXNpY19zbGlkZXNob3ciLCJuZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyJd'),
(92, 24, 'id_field', 'ID'),
(93, 24, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJ5X3dpZHRoIjo3NTAsImdhbGxlcnlfaGVpZ2h0Ijo1MDAsInNob3dfdGh1bWJuYWlsX2xpbmsiOjAsInRodW1ibmFpbF9saW5rX3RleHQiOiJWaWV3IFRodW1ibmFpbHMiLCJ0ZW1wbGF0ZSI6IiIsImRpc3BsYXlfdmlldyI6ImRlZmF1bHQiLCJhdXRvcGxheSI6MSwicGF1c2VvbmhvdmVyIjoxLCJhcnJvd3MiOjAsImludGVydmFsIjozMDAwLCJ0cmFuc2l0aW9uX3NwZWVkIjozMDAsInRyYW5zaXRpb25fc3R5bGUiOiJmYWRlIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciIsIl9lcnJvcnMiOltdfQ=='),
(94, 25, 'title', 'NextGEN Basic ImageBrowser'),
(95, 25, 'preview_image_relpath', 'photocrati-nextgen_basic_imagebrowser#preview.jpg'),
(96, 25, 'default_source', 'galleries'),
(97, 25, 'view_order', '10020'),
(98, 25, 'name', 'photocrati-nextgen_basic_imagebrowser'),
(99, 25, 'installed_at_version', '3.2.23'),
(100, 25, 'hidden_from_ui', ''),
(101, 25, 'hidden_from_igw', ''),
(102, 25, '__defaults_set', '1'),
(103, 25, 'filter', 'raw'),
(104, 25, 'entity_types', 'WyJpbWFnZSJd'),
(105, 25, 'aliases', 'WyJiYXNpY19pbWFnZWJyb3dzZXIiLCJpbWFnZWJyb3dzZXIiLCJuZXh0Z2VuX2Jhc2ljX2ltYWdlYnJvd3NlciJd'),
(106, 25, 'id_field', 'ID'),
(107, 25, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwidGVtcGxhdGUiOiIiLCJhamF4X3BhZ2luYXRpb24iOiIxIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciIsIl9lcnJvcnMiOltdfQ=='),
(108, 26, 'title', 'NextGEN Basic SinglePic'),
(109, 26, 'preview_image_relpath', 'photocrati-nextgen_basic_singlepic#preview.gif'),
(110, 26, 'default_source', 'galleries'),
(111, 26, 'view_order', '10060'),
(112, 26, 'hidden_from_ui', '1'),
(113, 26, 'hidden_from_igw', '1'),
(114, 26, 'name', 'photocrati-nextgen_basic_singlepic'),
(115, 26, 'installed_at_version', '3.2.23'),
(116, 26, '__defaults_set', '1'),
(117, 26, 'filter', 'raw'),
(118, 26, 'entity_types', 'WyJpbWFnZSJd'),
(119, 26, 'aliases', 'WyJiYXNpY19zaW5nbGVwaWMiLCJzaW5nbGVwaWMiLCJuZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpYyJd'),
(120, 26, 'id_field', 'ID'),
(121, 26, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJ3aWR0aCI6IiIsImhlaWdodCI6IiIsIm1vZGUiOiIiLCJkaXNwbGF5X3dhdGVybWFyayI6MCwiZGlzcGxheV9yZWZsZWN0aW9uIjowLCJmbG9hdCI6IiIsImxpbmsiOiIiLCJsaW5rX3RhcmdldCI6Il9ibGFuayIsInF1YWxpdHkiOjEwMCwiY3JvcCI6MCwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119'),
(122, 27, 'title', 'NextGEN Basic TagCloud'),
(123, 27, 'preview_image_relpath', 'photocrati-nextgen_basic_tagcloud#preview.gif'),
(124, 27, 'default_source', 'tags'),
(125, 27, 'view_order', '10100'),
(126, 27, 'name', 'photocrati-nextgen_basic_tagcloud'),
(127, 27, 'installed_at_version', '3.2.23'),
(128, 27, 'hidden_from_ui', ''),
(129, 27, 'hidden_from_igw', ''),
(130, 27, '__defaults_set', '1'),
(131, 27, 'filter', 'raw'),
(132, 27, 'entity_types', 'WyJpbWFnZSJd'),
(133, 27, 'aliases', 'WyJiYXNpY190YWdjbG91ZCIsInRhZ2Nsb3VkIiwibmV4dGdlbl9iYXNpY190YWdjbG91ZCJd'),
(134, 27, 'id_field', 'ID'),
(135, 27, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwibnVtYmVyIjo0NSwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciIsIl9lcnJvcnMiOltdfQ=='),
(136, 28, 'title', 'NextGEN Basic Compact Album'),
(137, 28, 'module_id', 'photocrati-nextgen_basic_album'),
(138, 28, 'preview_image_relpath', 'photocrati-nextgen_basic_album#compact_preview.jpg'),
(139, 28, 'default_source', 'albums'),
(140, 28, 'view_order', '10200'),
(141, 28, 'name', 'photocrati-nextgen_basic_compact_album'),
(142, 28, 'installed_at_version', '3.2.23'),
(143, 28, 'hidden_from_ui', ''),
(144, 28, 'hidden_from_igw', ''),
(145, 28, '__defaults_set', '1'),
(146, 28, 'filter', 'raw'),
(147, 28, 'entity_types', 'WyJhbGJ1bSIsImdhbGxlcnkiXQ=='),
(148, 28, 'aliases', 'WyJiYXNpY19jb21wYWN0X2FsYnVtIiwibmV4dGdlbl9iYXNpY19hbGJ1bSIsImJhc2ljX2FsYnVtX2NvbXBhY3QiLCJjb21wYWN0X2FsYnVtIl0='),
(149, 28, 'id_field', 'ID'),
(150, 28, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwiZ2FsbGVyaWVzX3Blcl9wYWdlIjowLCJlbmFibGVfYnJlYWRjcnVtYnMiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwiZW5hYmxlX2Rlc2NyaXB0aW9ucyI6MCwidGVtcGxhdGUiOiIiLCJvcGVuX2dhbGxlcnlfaW5fbGlnaHRib3giOjAsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6MSwidGh1bWJuYWlsX3F1YWxpdHkiOjEwMCwidGh1bWJuYWlsX2Nyb3AiOjEsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsInRodW1ibmFpbF93aWR0aCI6MjQwLCJ0aHVtYm5haWxfaGVpZ2h0IjoxNjAsImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119'),
(151, 29, 'title', 'NextGEN Basic Extended Album'),
(152, 29, 'module_id', 'photocrati-nextgen_basic_album'),
(153, 29, 'preview_image_relpath', 'photocrati-nextgen_basic_album#extended_preview.jpg'),
(154, 29, 'default_source', 'albums'),
(155, 29, 'view_order', '10210'),
(156, 29, 'name', 'photocrati-nextgen_basic_extended_album'),
(157, 29, 'installed_at_version', '3.2.23'),
(158, 29, 'hidden_from_ui', ''),
(159, 29, 'hidden_from_igw', ''),
(160, 29, '__defaults_set', '1'),
(161, 29, 'filter', 'raw'),
(162, 29, 'entity_types', 'WyJhbGJ1bSIsImdhbGxlcnkiXQ=='),
(163, 29, 'aliases', 'WyJiYXNpY19leHRlbmRlZF9hbGJ1bSIsIm5leHRnZW5fYmFzaWNfZXh0ZW5kZWRfYWxidW0iLCJleHRlbmRlZF9hbGJ1bSJd'),
(164, 29, 'id_field', 'ID'),
(165, 29, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwiZ2FsbGVyaWVzX3Blcl9wYWdlIjowLCJlbmFibGVfYnJlYWRjcnVtYnMiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwiZW5hYmxlX2Rlc2NyaXB0aW9ucyI6MCwidGVtcGxhdGUiOiIiLCJvcGVuX2dhbGxlcnlfaW5fbGlnaHRib3giOjAsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6MSwidGh1bWJuYWlsX3F1YWxpdHkiOjEwMCwidGh1bWJuYWlsX2Nyb3AiOjEsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsInRodW1ibmFpbF93aWR0aCI6MzAwLCJ0aHVtYm5haWxfaGVpZ2h0IjoyMDAsImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119'),
(167, 31, '_wp_attached_file', '2019/12/Screen-Shot-2019-12-19-at-8.58.14-AM-1.png'),
(168, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:910;s:6:\"height\";i:1024;s:4:\"file\";s:50:\"2019/12/Screen-Shot-2019-12-19-at-8.58.14-AM-1.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"Screen-Shot-2019-12-19-at-8.58.14-AM-1-267x300.png\";s:5:\"width\";i:267;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"Screen-Shot-2019-12-19-at-8.58.14-AM-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:50:\"Screen-Shot-2019-12-19-at-8.58.14-AM-1-768x864.png\";s:5:\"width\";i:768;s:6:\"height\";i:864;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(169, 33, '_wp_attached_file', '2019/12/Screen-Shot-2019-12-19-at-9.14.26-AM.png'),
(170, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:904;s:6:\"height\";i:592;s:4:\"file\";s:48:\"2019/12/Screen-Shot-2019-12-19-at-9.14.26-AM.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2019-12-19-at-9.14.26-AM-300x196.png\";s:5:\"width\";i:300;s:6:\"height\";i:196;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2019-12-19-at-9.14.26-AM-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2019-12-19-at-9.14.26-AM-768x503.png\";s:5:\"width\";i:768;s:6:\"height\";i:503;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(172, 34, '_wp_attached_file', '2019/12/Screen-Shot-2019-12-19-at-9.15.35-AM.png'),
(173, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1818;s:6:\"height\";i:394;s:4:\"file\";s:48:\"2019/12/Screen-Shot-2019-12-19-at-9.15.35-AM.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"Screen-Shot-2019-12-19-at-9.15.35-AM-300x65.png\";s:5:\"width\";i:300;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"Screen-Shot-2019-12-19-at-9.15.35-AM-1024x222.png\";s:5:\"width\";i:1024;s:6:\"height\";i:222;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2019-12-19-at-9.15.35-AM-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2019-12-19-at-9.15.35-AM-768x166.png\";s:5:\"width\";i:768;s:6:\"height\";i:166;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:49:\"Screen-Shot-2019-12-19-at-9.15.35-AM-1536x333.png\";s:5:\"width\";i:1536;s:6:\"height\";i:333;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:49:\"Screen-Shot-2019-12-19-at-9.15.35-AM-1568x340.png\";s:5:\"width\";i:1568;s:6:\"height\";i:340;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-12-13 14:56:11', '2019-12-13 14:56:11', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-12-13 14:56:11', '2019-12-13 14:56:11', '', 0, 'http://127.0.0.1:8080/wordpress/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2019-12-13 14:56:11', '2019-12-13 14:56:11', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://127.0.0.1:8080/wordpress/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-12-13 14:56:11', '2019-12-13 14:56:11', '', 0, 'http://127.0.0.1:8080/wordpress/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-12-13 14:56:11', '2019-12-13 14:56:11', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://127.0.0.1:8080/wordpress/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-12-13 14:56:11', '2019-12-13 14:56:11', '', 0, 'http://127.0.0.1:8080/wordpress/wordpress/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-12-19 15:38:41', '0000-00-00 00:00:00', '<!-- wp:image {\"id\":6,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://127.0.0.1:8080/wordpress/wordpress/wp-content/uploads/2019/12/5773953fca26958c2410e67f57eaf569-1024x576.jpg\" alt=\"\" class=\"wp-image-6\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Welcome to my Web Development website</h4>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>About Me</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>My name is Marcus Hudspeth and I live Minnesota. I have a sister. My hobbies is gaming. I\'m most exited about for the class is learning more about website building and more code.     </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>My Portfolio </h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":34,\"width\":482,\"height\":104,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://127.0.0.1:8080/wordpress/wordpress/wp-content/uploads/2019/12/Screen-Shot-2019-12-19-at-9.15.35-AM-1024x222.png\" alt=\"\" class=\"wp-image-34\" width=\"482\" height=\"104\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":31,\"width\":381,\"height\":428,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://127.0.0.1:8080/wordpress/wordpress/wp-content/uploads/2019/12/Screen-Shot-2019-12-19-at-8.58.14-AM-1.png\" alt=\"\" class=\"wp-image-31\" width=\"381\" height=\"428\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://mir-s3-cdn-cf.behance.net/project_modules/disp/6b689c51651911.5608ba3a56883.jpg\" alt=\"Wallpaper Pixelfly\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://farm8.staticflickr.com/7375/27905326381_1b8611a167_b.jpg\" alt=\"My co-worker is an avid photoshop user and likes to make wallpapers during his spare time. Here are just a couple of his creations based off of Star Wars. - IAmNotASecretAgent\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://farm8.staticflickr.com/7711/27702767070_f2a39c2cac_b.jpg\" alt=\"Stunning Sunset Over City Desktop Wallpaper[1920 x 1080] - TheSorse\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":8,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://127.0.0.1:8080/wordpress/wordpress/wp-content/uploads/2019/12/Screen-Shot-2019-12-17-at-8.38.29-AM.png\" alt=\"\" class=\"wp-image-8\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":9,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://127.0.0.1:8080/wordpress/wordpress/wp-content/uploads/2019/12/Screen-Shot-2019-12-17-at-8.39.19-AM-1024x446.png\" alt=\"\" class=\"wp-image-9\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading -->\n<h2>Useful <strong>resources</strong> </h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://shakopee.instructure.com/\">https://shakopee.instructure.com/</a> .    Canvas </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://www.pexels.com/\">https://www.pexels.com/</a>   This is a website with HD pictures for free </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://www.dafont.com/\">https://www.dafont.com/</a> . This is a website that has hundreds of different font that you can use for free. </p>\n<!-- /wp:paragraph -->', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-19 15:38:41', '2019-12-19 15:38:41', '', 0, 'http://127.0.0.1:8080/wordpress/wordpress/?page_id=5', 0, 'page', '', 0),
(6, 1, '2019-12-16 15:35:33', '2019-12-16 15:35:33', '', '5773953fca26958c2410e67f57eaf569', '', 'inherit', 'open', 'closed', '', '5773953fca26958c2410e67f57eaf569', '', '', '2019-12-16 15:35:33', '2019-12-16 15:35:33', '', 5, 'http://127.0.0.1:8080/wordpress/wordpress/wp-content/uploads/2019/12/5773953fca26958c2410e67f57eaf569.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2019-12-16 15:39:17', '2019-12-16 15:39:17', '<!-- wp:image {\"id\":6,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://127.0.0.1:8080/wordpress/wordpress/wp-content/uploads/2019/12/5773953fca26958c2410e67f57eaf569-1024x576.jpg\" alt=\"\" class=\"wp-image-6\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Welcome to my Web Development website</h4>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>About Me</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-12-16 15:39:17', '2019-12-16 15:39:17', '', 5, 'http://127.0.0.1:8080/wordpress/wordpress/2019/12/16/5-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2019-12-17 14:39:36', '2019-12-17 14:39:36', '', 'Screen-Shot-2019-12-17-at-8.38.29-AM', '', 'inherit', 'open', 'closed', '', 'screen-shot-2019-12-17-at-8-38-29-am', '', '', '2019-12-17 14:39:36', '2019-12-17 14:39:36', '', 5, 'http://127.0.0.1:8080/wordpress/wordpress/wp-content/uploads/2019/12/Screen-Shot-2019-12-17-at-8.38.29-AM.png', 0, 'attachment', 'image/png', 0),
(9, 1, '2019-12-17 14:39:44', '2019-12-17 14:39:44', '', 'Screen-Shot-2019-12-17-at-8.39.19-AM', '', 'inherit', 'open', 'closed', '', 'screen-shot-2019-12-17-at-8-39-19-am', '', '', '2019-12-17 14:39:44', '2019-12-17 14:39:44', '', 5, 'http://127.0.0.1:8080/wordpress/wordpress/wp-content/uploads/2019/12/Screen-Shot-2019-12-17-at-8.39.19-AM.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2019-12-17 15:03:15', '2019-12-17 15:03:15', '<!-- wp:image {\"id\":6,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://127.0.0.1:8080/wordpress/wordpress/wp-content/uploads/2019/12/5773953fca26958c2410e67f57eaf569-1024x576.jpg\" alt=\"\" class=\"wp-image-6\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Welcome to my Web Development website</h4>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>About Me</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>My name is Marcus Hudspeth and I live Minnesota. I have a sister. My hobbies is gaming. I\'m most exited about for the class is learning more about website building and more code.     </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>My Portfolio </h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":8,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://127.0.0.1:8080/wordpress/wordpress/wp-content/uploads/2019/12/Screen-Shot-2019-12-17-at-8.38.29-AM.png\" alt=\"\" class=\"wp-image-8\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":9,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://127.0.0.1:8080/wordpress/wordpress/wp-content/uploads/2019/12/Screen-Shot-2019-12-17-at-8.39.19-AM-1024x446.png\" alt=\"\" class=\"wp-image-9\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading -->\n<h2>Useful <strong>resources</strong> </h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://shakopee.instructure.com/\">https://shakopee.instructure.com/</a> .    Canvas </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://www.pexels.com/\">https://www.pexels.com/</a>   This is a website with HD pictures for free </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://www.dafont.com/\">https://www.dafont.com/</a> . This is a website that has hundreds of different font that you can use for free. </p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-12-17 15:03:15', '2019-12-17 15:03:15', '', 5, 'http://127.0.0.1:8080/wordpress/wordpress/2019/12/17/5-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2019-12-18 14:46:57', '2019-12-18 14:46:57', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2019-12-18 14:52:21', '2019-12-18 14:52:21', '', 0, 'http://127.0.0.1:8080/wordpress/wordpress/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2019-12-18 14:46:57', '2019-12-18 14:46:57', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2019-12-18 14:52:21', '2019-12-18 14:52:21', '', 0, 'http://127.0.0.1:8080/wordpress/wordpress/?p=17', 2, 'nav_menu_item', '', 0),
(18, 1, '2019-12-18 14:46:57', '2019-12-18 14:46:57', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2019-12-18 14:52:21', '2019-12-18 14:52:21', '', 0, 'http://127.0.0.1:8080/wordpress/wordpress/?p=18', 3, 'nav_menu_item', '', 0),
(19, 1, '2019-12-18 14:46:57', '2019-12-18 14:46:57', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2019-12-18 14:52:21', '2019-12-18 14:52:21', '', 0, 'http://127.0.0.1:8080/wordpress/wordpress/?p=19', 4, 'nav_menu_item', '', 0),
(20, 1, '2019-12-18 14:52:21', '2019-12-18 14:52:21', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2019-12-18 14:52:21', '2019-12-18 14:52:21', '', 0, 'http://127.0.0.1:8080/wordpress/wordpress/?p=20', 5, 'nav_menu_item', '', 0),
(22, 1, '2019-12-19 14:58:49', '2019-12-19 14:58:49', '', 'Screen-Shot-2019-12-19-at-8.58.14-AM', '', 'inherit', 'open', 'closed', '', 'screen-shot-2019-12-19-at-8-58-14-am', '', '', '2019-12-19 14:58:49', '2019-12-19 14:58:49', '', 5, 'http://127.0.0.1:8080/wordpress/wordpress/wp-content/uploads/2019/12/Screen-Shot-2019-12-19-at-8.58.14-AM.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2019-12-19 15:02:01', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgVGh1bWJuYWlscyIsIm1vZHVsZV9pZCI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19nYWxsZXJ5IiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19nYWxsZXJ5I3RodW1iX3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAwMCwiYWxpYXNlcyI6WyJiYXNpY190aHVtYm5haWwiLCJiYXNpY190aHVtYm5haWxzIiwibmV4dGdlbl9iYXNpY190aHVtYm5haWxzIl0sIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMy4yLjIzIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImRpc3BsYXlfdmlldyI6ImRlZmF1bHQtdmlldy5waHAiLCJpbWFnZXNfcGVyX3BhZ2UiOiIyNCIsIm51bWJlcl9vZl9jb2x1bW5zIjowLCJ0aHVtYm5haWxfd2lkdGgiOjI0MCwidGh1bWJuYWlsX2hlaWdodCI6MTYwLCJzaG93X2FsbF9pbl9saWdodGJveCI6MCwiYWpheF9wYWdpbmF0aW9uIjoxLCJ1c2VfaW1hZ2Vicm93c2VyX2VmZmVjdCI6MCwidGVtcGxhdGUiOiIiLCJkaXNwbGF5X25vX2ltYWdlc19lcnJvciI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJzaG93X3NsaWRlc2hvd19saW5rIjowLCJzbGlkZXNob3dfbGlua190ZXh0IjoiVmlldyBTbGlkZXNob3ciLCJvdmVycmlkZV90aHVtYm5haWxfc2V0dGluZ3MiOjAsInRodW1ibmFpbF9xdWFsaXR5IjoiMTAwIiwidGh1bWJuYWlsX2Nyb3AiOjEsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIiLCJfZXJyb3JzIjpbXX0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiaGlkZGVuX2Zyb21faWd3IjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'NextGEN Basic Thumbnails', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-19 15:02:01', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgVGh1bWJuYWlscyIsIm1vZHVsZV9pZCI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19nYWxsZXJ5IiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19nYWxsZXJ5I3RodW1iX3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAwMCwiYWxpYXNlcyI6WyJiYXNpY190aHVtYm5haWwiLCJiYXNpY190aHVtYm5haWxzIiwibmV4dGdlbl9iYXNpY190aHVtYm5haWxzIl0sIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMy4yLjIzIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImRpc3BsYXlfdmlldyI6ImRlZmF1bHQtdmlldy5waHAiLCJpbWFnZXNfcGVyX3BhZ2UiOiIyNCIsIm51bWJlcl9vZl9jb2x1bW5zIjowLCJ0aHVtYm5haWxfd2lkdGgiOjI0MCwidGh1bWJuYWlsX2hlaWdodCI6MTYwLCJzaG93X2FsbF9pbl9saWdodGJveCI6MCwiYWpheF9wYWdpbmF0aW9uIjoxLCJ1c2VfaW1hZ2Vicm93c2VyX2VmZmVjdCI6MCwidGVtcGxhdGUiOiIiLCJkaXNwbGF5X25vX2ltYWdlc19lcnJvciI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJzaG93X3NsaWRlc2hvd19saW5rIjowLCJzbGlkZXNob3dfbGlua190ZXh0IjoiVmlldyBTbGlkZXNob3ciLCJvdmVycmlkZV90aHVtYm5haWxfc2V0dGluZ3MiOjAsInRodW1ibmFpbF9xdWFsaXR5IjoiMTAwIiwidGh1bWJuYWlsX2Nyb3AiOjEsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIiLCJfZXJyb3JzIjpbXX0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiaGlkZGVuX2Zyb21faWd3IjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://127.0.0.1:8080/wordpress/wordpress/?post_type=display_type&p=23', 0, 'display_type', '', 0),
(24, 1, '2019-12-19 15:02:01', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2xpZGVzaG93IiwibW9kdWxlX2lkIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2dhbGxlcnkiLCJlbnRpdHlfdHlwZXMiOlsiaW1hZ2UiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2dhbGxlcnkjc2xpZGVzaG93X3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAxMCwiYWxpYXNlcyI6WyJiYXNpY19zbGlkZXNob3ciLCJuZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMy4yLjIzIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImdhbGxlcnlfd2lkdGgiOjc1MCwiZ2FsbGVyeV9oZWlnaHQiOjUwMCwic2hvd190aHVtYm5haWxfbGluayI6MCwidGh1bWJuYWlsX2xpbmtfdGV4dCI6IlZpZXcgVGh1bWJuYWlscyIsInRlbXBsYXRlIjoiIiwiZGlzcGxheV92aWV3IjoiZGVmYXVsdCIsImF1dG9wbGF5IjoxLCJwYXVzZW9uaG92ZXIiOjEsImFycm93cyI6MCwiaW50ZXJ2YWwiOjMwMDAsInRyYW5zaXRpb25fc3BlZWQiOjMwMCwidHJhbnNpdGlvbl9zdHlsZSI6ImZhZGUiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsImhpZGRlbl9mcm9tX2lndyI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 'NextGEN Basic Slideshow', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-19 15:02:01', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2xpZGVzaG93IiwibW9kdWxlX2lkIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2dhbGxlcnkiLCJlbnRpdHlfdHlwZXMiOlsiaW1hZ2UiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2dhbGxlcnkjc2xpZGVzaG93X3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAxMCwiYWxpYXNlcyI6WyJiYXNpY19zbGlkZXNob3ciLCJuZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMy4yLjIzIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImdhbGxlcnlfd2lkdGgiOjc1MCwiZ2FsbGVyeV9oZWlnaHQiOjUwMCwic2hvd190aHVtYm5haWxfbGluayI6MCwidGh1bWJuYWlsX2xpbmtfdGV4dCI6IlZpZXcgVGh1bWJuYWlscyIsInRlbXBsYXRlIjoiIiwiZGlzcGxheV92aWV3IjoiZGVmYXVsdCIsImF1dG9wbGF5IjoxLCJwYXVzZW9uaG92ZXIiOjEsImFycm93cyI6MCwiaW50ZXJ2YWwiOjMwMDAsInRyYW5zaXRpb25fc3BlZWQiOjMwMCwidHJhbnNpdGlvbl9zdHlsZSI6ImZhZGUiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsImhpZGRlbl9mcm9tX2lndyI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 0, 'http://127.0.0.1:8080/wordpress/wordpress/?post_type=display_type&p=24', 0, 'display_type', '', 0),
(25, 1, '2019-12-19 15:02:01', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgSW1hZ2VCcm93c2VyIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19pbWFnZWJyb3dzZXIjcHJldmlldy5qcGciLCJkZWZhdWx0X3NvdXJjZSI6ImdhbGxlcmllcyIsInZpZXdfb3JkZXIiOjEwMDIwLCJhbGlhc2VzIjpbImJhc2ljX2ltYWdlYnJvd3NlciIsImltYWdlYnJvd3NlciIsIm5leHRnZW5fYmFzaWNfaW1hZ2Vicm93c2VyIl0sIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfaW1hZ2Vicm93c2VyIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIzLjIuMjMiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZGlzcGxheV92aWV3IjoiZGVmYXVsdC12aWV3LnBocCIsInRlbXBsYXRlIjoiIiwiYWpheF9wYWdpbmF0aW9uIjoiMSIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIiLCJfZXJyb3JzIjpbXX0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiaGlkZGVuX2Zyb21faWd3IjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'NextGEN Basic ImageBrowser', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-19 15:02:01', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgSW1hZ2VCcm93c2VyIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19pbWFnZWJyb3dzZXIjcHJldmlldy5qcGciLCJkZWZhdWx0X3NvdXJjZSI6ImdhbGxlcmllcyIsInZpZXdfb3JkZXIiOjEwMDIwLCJhbGlhc2VzIjpbImJhc2ljX2ltYWdlYnJvd3NlciIsImltYWdlYnJvd3NlciIsIm5leHRnZW5fYmFzaWNfaW1hZ2Vicm93c2VyIl0sIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfaW1hZ2Vicm93c2VyIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIzLjIuMjMiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZGlzcGxheV92aWV3IjoiZGVmYXVsdC12aWV3LnBocCIsInRlbXBsYXRlIjoiIiwiYWpheF9wYWdpbmF0aW9uIjoiMSIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIiLCJfZXJyb3JzIjpbXX0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiaGlkZGVuX2Zyb21faWd3IjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://127.0.0.1:8080/wordpress/wordpress/?post_type=display_type&p=25', 0, 'display_type', '', 0),
(26, 1, '2019-12-19 15:02:01', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2luZ2xlUGljIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19zaW5nbGVwaWMjcHJldmlldy5naWYiLCJkZWZhdWx0X3NvdXJjZSI6ImdhbGxlcmllcyIsInZpZXdfb3JkZXIiOjEwMDYwLCJoaWRkZW5fZnJvbV91aSI6dHJ1ZSwiaGlkZGVuX2Zyb21faWd3Ijp0cnVlLCJhbGlhc2VzIjpbImJhc2ljX3NpbmdsZXBpYyIsInNpbmdsZXBpYyIsIm5leHRnZW5fYmFzaWNfc2luZ2xlcGljIl0sIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfc2luZ2xlcGljIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIzLjIuMjMiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwid2lkdGgiOiIiLCJoZWlnaHQiOiIiLCJtb2RlIjoiIiwiZGlzcGxheV93YXRlcm1hcmsiOjAsImRpc3BsYXlfcmVmbGVjdGlvbiI6MCwiZmxvYXQiOiIiLCJsaW5rIjoiIiwibGlua190YXJnZXQiOiJfYmxhbmsiLCJxdWFsaXR5IjoxMDAsImNyb3AiOjAsInRlbXBsYXRlIjoiIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciIsIl9lcnJvcnMiOltdfSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'NextGEN Basic SinglePic', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-19 15:02:01', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2luZ2xlUGljIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19zaW5nbGVwaWMjcHJldmlldy5naWYiLCJkZWZhdWx0X3NvdXJjZSI6ImdhbGxlcmllcyIsInZpZXdfb3JkZXIiOjEwMDYwLCJoaWRkZW5fZnJvbV91aSI6dHJ1ZSwiaGlkZGVuX2Zyb21faWd3Ijp0cnVlLCJhbGlhc2VzIjpbImJhc2ljX3NpbmdsZXBpYyIsInNpbmdsZXBpYyIsIm5leHRnZW5fYmFzaWNfc2luZ2xlcGljIl0sIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfc2luZ2xlcGljIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIzLjIuMjMiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwid2lkdGgiOiIiLCJoZWlnaHQiOiIiLCJtb2RlIjoiIiwiZGlzcGxheV93YXRlcm1hcmsiOjAsImRpc3BsYXlfcmVmbGVjdGlvbiI6MCwiZmxvYXQiOiIiLCJsaW5rIjoiIiwibGlua190YXJnZXQiOiJfYmxhbmsiLCJxdWFsaXR5IjoxMDAsImNyb3AiOjAsInRlbXBsYXRlIjoiIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciIsIl9lcnJvcnMiOltdfSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://127.0.0.1:8080/wordpress/wordpress/?post_type=display_type&p=26', 0, 'display_type', '', 0),
(27, 1, '2019-12-19 15:02:01', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgVGFnQ2xvdWQiLCJlbnRpdHlfdHlwZXMiOlsiaW1hZ2UiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RhZ2Nsb3VkI3ByZXZpZXcuZ2lmIiwiZGVmYXVsdF9zb3VyY2UiOiJ0YWdzIiwidmlld19vcmRlciI6MTAxMDAsImFsaWFzZXMiOlsiYmFzaWNfdGFnY2xvdWQiLCJ0YWdjbG91ZCIsIm5leHRnZW5fYmFzaWNfdGFnY2xvdWQiXSwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190YWdjbG91ZCIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMy4yLjIzIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJudW1iZXIiOjQ1LCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsImhpZGRlbl9mcm9tX2lndyI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 'NextGEN Basic TagCloud', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-19 15:02:01', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgVGFnQ2xvdWQiLCJlbnRpdHlfdHlwZXMiOlsiaW1hZ2UiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RhZ2Nsb3VkI3ByZXZpZXcuZ2lmIiwiZGVmYXVsdF9zb3VyY2UiOiJ0YWdzIiwidmlld19vcmRlciI6MTAxMDAsImFsaWFzZXMiOlsiYmFzaWNfdGFnY2xvdWQiLCJ0YWdjbG91ZCIsIm5leHRnZW5fYmFzaWNfdGFnY2xvdWQiXSwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190YWdjbG91ZCIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMy4yLjIzIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJudW1iZXIiOjQ1LCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsImhpZGRlbl9mcm9tX2lndyI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 0, 'http://127.0.0.1:8080/wordpress/wordpress/?post_type=display_type&p=27', 0, 'display_type', '', 0),
(28, 1, '2019-12-19 15:02:01', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgQ29tcGFjdCBBbGJ1bSIsIm1vZHVsZV9pZCI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19hbGJ1bSIsImVudGl0eV90eXBlcyI6WyJhbGJ1bSIsImdhbGxlcnkiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2FsYnVtI2NvbXBhY3RfcHJldmlldy5qcGciLCJkZWZhdWx0X3NvdXJjZSI6ImFsYnVtcyIsInZpZXdfb3JkZXIiOjEwMjAwLCJhbGlhc2VzIjpbImJhc2ljX2NvbXBhY3RfYWxidW0iLCJuZXh0Z2VuX2Jhc2ljX2FsYnVtIiwiYmFzaWNfYWxidW1fY29tcGFjdCIsImNvbXBhY3RfYWxidW0iXSwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19jb21wYWN0X2FsYnVtIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIzLjIuMjMiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZGlzcGxheV92aWV3IjoiZGVmYXVsdC12aWV3LnBocCIsImdhbGxlcmllc19wZXJfcGFnZSI6MCwiZW5hYmxlX2JyZWFkY3J1bWJzIjoxLCJkaXNhYmxlX3BhZ2luYXRpb24iOjAsImVuYWJsZV9kZXNjcmlwdGlvbnMiOjAsInRlbXBsYXRlIjoiIiwib3Blbl9nYWxsZXJ5X2luX2xpZ2h0Ym94IjowLCJvdmVycmlkZV90aHVtYm5haWxfc2V0dGluZ3MiOjEsInRodW1ibmFpbF9xdWFsaXR5IjoxMDAsInRodW1ibmFpbF9jcm9wIjoxLCJ0aHVtYm5haWxfd2F0ZXJtYXJrIjowLCJ0aHVtYm5haWxfd2lkdGgiOjI0MCwidGh1bWJuYWlsX2hlaWdodCI6MTYwLCJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwiZ2FsbGVyeV9kaXNwbGF5X3RlbXBsYXRlIjoiIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciIsIl9lcnJvcnMiOltdfSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJoaWRkZW5fZnJvbV9pZ3ciOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 'NextGEN Basic Compact Album', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-19 15:02:01', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgQ29tcGFjdCBBbGJ1bSIsIm1vZHVsZV9pZCI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19hbGJ1bSIsImVudGl0eV90eXBlcyI6WyJhbGJ1bSIsImdhbGxlcnkiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2FsYnVtI2NvbXBhY3RfcHJldmlldy5qcGciLCJkZWZhdWx0X3NvdXJjZSI6ImFsYnVtcyIsInZpZXdfb3JkZXIiOjEwMjAwLCJhbGlhc2VzIjpbImJhc2ljX2NvbXBhY3RfYWxidW0iLCJuZXh0Z2VuX2Jhc2ljX2FsYnVtIiwiYmFzaWNfYWxidW1fY29tcGFjdCIsImNvbXBhY3RfYWxidW0iXSwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19jb21wYWN0X2FsYnVtIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIzLjIuMjMiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZGlzcGxheV92aWV3IjoiZGVmYXVsdC12aWV3LnBocCIsImdhbGxlcmllc19wZXJfcGFnZSI6MCwiZW5hYmxlX2JyZWFkY3J1bWJzIjoxLCJkaXNhYmxlX3BhZ2luYXRpb24iOjAsImVuYWJsZV9kZXNjcmlwdGlvbnMiOjAsInRlbXBsYXRlIjoiIiwib3Blbl9nYWxsZXJ5X2luX2xpZ2h0Ym94IjowLCJvdmVycmlkZV90aHVtYm5haWxfc2V0dGluZ3MiOjEsInRodW1ibmFpbF9xdWFsaXR5IjoxMDAsInRodW1ibmFpbF9jcm9wIjoxLCJ0aHVtYm5haWxfd2F0ZXJtYXJrIjowLCJ0aHVtYm5haWxfd2lkdGgiOjI0MCwidGh1bWJuYWlsX2hlaWdodCI6MTYwLCJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwiZ2FsbGVyeV9kaXNwbGF5X3RlbXBsYXRlIjoiIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciIsIl9lcnJvcnMiOltdfSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJoaWRkZW5fZnJvbV9pZ3ciOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 0, 'http://127.0.0.1:8080/wordpress/wordpress/?post_type=display_type&p=28', 0, 'display_type', '', 0),
(29, 1, '2019-12-19 15:02:01', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgRXh0ZW5kZWQgQWxidW0iLCJtb2R1bGVfaWQiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfYWxidW0iLCJlbnRpdHlfdHlwZXMiOlsiYWxidW0iLCJnYWxsZXJ5Il0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19hbGJ1bSNleHRlbmRlZF9wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiYWxidW1zIiwidmlld19vcmRlciI6MTAyMTAsImFsaWFzZXMiOlsiYmFzaWNfZXh0ZW5kZWRfYWxidW0iLCJuZXh0Z2VuX2Jhc2ljX2V4dGVuZGVkX2FsYnVtIiwiZXh0ZW5kZWRfYWxidW0iXSwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19leHRlbmRlZF9hbGJ1bSIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMy4yLjIzIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImRpc3BsYXlfdmlldyI6ImRlZmF1bHQtdmlldy5waHAiLCJnYWxsZXJpZXNfcGVyX3BhZ2UiOjAsImVuYWJsZV9icmVhZGNydW1icyI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJlbmFibGVfZGVzY3JpcHRpb25zIjowLCJ0ZW1wbGF0ZSI6IiIsIm9wZW5fZ2FsbGVyeV9pbl9saWdodGJveCI6MCwib3ZlcnJpZGVfdGh1bWJuYWlsX3NldHRpbmdzIjoxLCJ0aHVtYm5haWxfcXVhbGl0eSI6MTAwLCJ0aHVtYm5haWxfY3JvcCI6MSwidGh1bWJuYWlsX3dhdGVybWFyayI6MCwidGh1bWJuYWlsX3dpZHRoIjozMDAsInRodW1ibmFpbF9oZWlnaHQiOjIwMCwiZ2FsbGVyeV9kaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImdhbGxlcnlfZGlzcGxheV90ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIiLCJfZXJyb3JzIjpbXX0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiaGlkZGVuX2Zyb21faWd3IjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'NextGEN Basic Extended Album', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-19 15:02:01', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgRXh0ZW5kZWQgQWxidW0iLCJtb2R1bGVfaWQiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfYWxidW0iLCJlbnRpdHlfdHlwZXMiOlsiYWxidW0iLCJnYWxsZXJ5Il0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19hbGJ1bSNleHRlbmRlZF9wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiYWxidW1zIiwidmlld19vcmRlciI6MTAyMTAsImFsaWFzZXMiOlsiYmFzaWNfZXh0ZW5kZWRfYWxidW0iLCJuZXh0Z2VuX2Jhc2ljX2V4dGVuZGVkX2FsYnVtIiwiZXh0ZW5kZWRfYWxidW0iXSwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19leHRlbmRlZF9hbGJ1bSIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMy4yLjIzIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImRpc3BsYXlfdmlldyI6ImRlZmF1bHQtdmlldy5waHAiLCJnYWxsZXJpZXNfcGVyX3BhZ2UiOjAsImVuYWJsZV9icmVhZGNydW1icyI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJlbmFibGVfZGVzY3JpcHRpb25zIjowLCJ0ZW1wbGF0ZSI6IiIsIm9wZW5fZ2FsbGVyeV9pbl9saWdodGJveCI6MCwib3ZlcnJpZGVfdGh1bWJuYWlsX3NldHRpbmdzIjoxLCJ0aHVtYm5haWxfcXVhbGl0eSI6MTAwLCJ0aHVtYm5haWxfY3JvcCI6MSwidGh1bWJuYWlsX3dhdGVybWFyayI6MCwidGh1bWJuYWlsX3dpZHRoIjozMDAsInRodW1ibmFpbF9oZWlnaHQiOjIwMCwiZ2FsbGVyeV9kaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImdhbGxlcnlfZGlzcGxheV90ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIiLCJfZXJyb3JzIjpbXX0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiaGlkZGVuX2Zyb21faWd3IjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://127.0.0.1:8080/wordpress/wordpress/?post_type=display_type&p=29', 0, 'display_type', '', 0),
(31, 1, '2019-12-19 15:13:30', '2019-12-19 15:13:30', '', 'Screen-Shot-2019-12-19-at-8.58.14-AM-1', '', 'inherit', 'open', 'closed', '', 'screen-shot-2019-12-19-at-8-58-14-am-1', '', '', '2019-12-19 15:13:30', '2019-12-19 15:13:30', '', 5, 'http://127.0.0.1:8080/wordpress/wordpress/wp-content/uploads/2019/12/Screen-Shot-2019-12-19-at-8.58.14-AM-1.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2019-12-19 15:14:14', '2019-12-19 15:14:14', '<!-- wp:image {\"id\":6,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://127.0.0.1:8080/wordpress/wordpress/wp-content/uploads/2019/12/5773953fca26958c2410e67f57eaf569-1024x576.jpg\" alt=\"\" class=\"wp-image-6\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Welcome to my Web Development website</h4>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>About Me</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>My name is Marcus Hudspeth and I live Minnesota. I have a sister. My hobbies is gaming. I\'m most exited about for the class is learning more about website building and more code.     </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>My Portfolio </h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":31,\"width\":381,\"height\":428,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://127.0.0.1:8080/wordpress/wordpress/wp-content/uploads/2019/12/Screen-Shot-2019-12-19-at-8.58.14-AM-1.png\" alt=\"\" class=\"wp-image-31\" width=\"381\" height=\"428\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://mir-s3-cdn-cf.behance.net/project_modules/disp/6b689c51651911.5608ba3a56883.jpg\" alt=\"Wallpaper Pixelfly\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://farm8.staticflickr.com/7375/27905326381_1b8611a167_b.jpg\" alt=\"My co-worker is an avid photoshop user and likes to make wallpapers during his spare time. Here are just a couple of his creations based off of Star Wars. - IAmNotASecretAgent\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://farm8.staticflickr.com/7711/27702767070_f2a39c2cac_b.jpg\" alt=\"Stunning Sunset Over City Desktop Wallpaper[1920 x 1080] - TheSorse\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":8,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://127.0.0.1:8080/wordpress/wordpress/wp-content/uploads/2019/12/Screen-Shot-2019-12-17-at-8.38.29-AM.png\" alt=\"\" class=\"wp-image-8\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":9,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://127.0.0.1:8080/wordpress/wordpress/wp-content/uploads/2019/12/Screen-Shot-2019-12-17-at-8.39.19-AM-1024x446.png\" alt=\"\" class=\"wp-image-9\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading -->\n<h2>Useful <strong>resources</strong> </h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://shakopee.instructure.com/\">https://shakopee.instructure.com/</a> .    Canvas </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://www.pexels.com/\">https://www.pexels.com/</a>   This is a website with HD pictures for free </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://www.dafont.com/\">https://www.dafont.com/</a> . This is a website that has hundreds of different font that you can use for free. </p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-12-19 15:14:14', '2019-12-19 15:14:14', '', 5, 'http://127.0.0.1:8080/wordpress/wordpress/2019/12/19/5-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2019-12-19 15:14:49', '2019-12-19 15:14:49', '', 'Screen-Shot-2019-12-19-at-9.14.26-AM', '', 'inherit', 'open', 'closed', '', 'screen-shot-2019-12-19-at-9-14-26-am', '', '', '2019-12-19 15:14:49', '2019-12-19 15:14:49', '', 5, 'http://127.0.0.1:8080/wordpress/wordpress/wp-content/uploads/2019/12/Screen-Shot-2019-12-19-at-9.14.26-AM.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2019-12-19 15:15:58', '2019-12-19 15:15:58', '', 'Screen-Shot-2019-12-19-at-9.15.35-AM', '', 'inherit', 'open', 'closed', '', 'screen-shot-2019-12-19-at-9-15-35-am', '', '', '2019-12-19 15:15:58', '2019-12-19 15:15:58', '', 5, 'http://127.0.0.1:8080/wordpress/wordpress/wp-content/uploads/2019/12/Screen-Shot-2019-12-19-at-9.15.35-AM.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2019-12-19 15:16:04', '2019-12-19 15:16:04', '<!-- wp:image {\"id\":6,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://127.0.0.1:8080/wordpress/wordpress/wp-content/uploads/2019/12/5773953fca26958c2410e67f57eaf569-1024x576.jpg\" alt=\"\" class=\"wp-image-6\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Welcome to my Web Development website</h4>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>About Me</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>My name is Marcus Hudspeth and I live Minnesota. I have a sister. My hobbies is gaming. I\'m most exited about for the class is learning more about website building and more code.     </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>My Portfolio </h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":34,\"width\":482,\"height\":104,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://127.0.0.1:8080/wordpress/wordpress/wp-content/uploads/2019/12/Screen-Shot-2019-12-19-at-9.15.35-AM-1024x222.png\" alt=\"\" class=\"wp-image-34\" width=\"482\" height=\"104\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":31,\"width\":381,\"height\":428,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://127.0.0.1:8080/wordpress/wordpress/wp-content/uploads/2019/12/Screen-Shot-2019-12-19-at-8.58.14-AM-1.png\" alt=\"\" class=\"wp-image-31\" width=\"381\" height=\"428\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://mir-s3-cdn-cf.behance.net/project_modules/disp/6b689c51651911.5608ba3a56883.jpg\" alt=\"Wallpaper Pixelfly\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://farm8.staticflickr.com/7375/27905326381_1b8611a167_b.jpg\" alt=\"My co-worker is an avid photoshop user and likes to make wallpapers during his spare time. Here are just a couple of his creations based off of Star Wars. - IAmNotASecretAgent\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://farm8.staticflickr.com/7711/27702767070_f2a39c2cac_b.jpg\" alt=\"Stunning Sunset Over City Desktop Wallpaper[1920 x 1080] - TheSorse\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":8,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://127.0.0.1:8080/wordpress/wordpress/wp-content/uploads/2019/12/Screen-Shot-2019-12-17-at-8.38.29-AM.png\" alt=\"\" class=\"wp-image-8\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":9,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://127.0.0.1:8080/wordpress/wordpress/wp-content/uploads/2019/12/Screen-Shot-2019-12-17-at-8.39.19-AM-1024x446.png\" alt=\"\" class=\"wp-image-9\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading -->\n<h2>Useful <strong>resources</strong> </h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://shakopee.instructure.com/\">https://shakopee.instructure.com/</a> .    Canvas </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://www.pexels.com/\">https://www.pexels.com/</a>   This is a website with HD pictures for free </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://www.dafont.com/\">https://www.dafont.com/</a> . This is a website that has hundreds of different font that you can use for free. </p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-12-19 15:16:04', '2019-12-19 15:16:04', '', 5, 'http://127.0.0.1:8080/wordpress/wordpress/2019/12/19/5-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2020-01-02 14:35:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-01-02 14:35:38', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1:8080/wordpress/wordpress/?p=36', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'WebDev Journal', 'webdev-journal', 0),
(3, 'what I learned yesterday in this class', 'what-i-learned-yesterday-in-this-class', 0),
(4, 'what I learned today in this class.', 'what-i-learned-today-in-this-class', 0),
(5, 'WebDev Posts', 'webdev-posts', 0),
(6, 'First Menu', 'first-menu', 0),
(7, 'Home', 'home', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(16, 6, 0),
(17, 6, 0),
(18, 6, 0),
(19, 6, 0),
(20, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 0),
(3, 3, 'category', '', 0, 0),
(4, 4, 'category', '', 0, 0),
(5, 5, 'category', '', 0, 0),
(6, 6, 'nav_menu', '', 0, 5),
(7, 7, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"b62cdb156e1716444c590521570665b4f405c6f334263940446d1e01d3a2220f\";a:4:{s:10:\"expiration\";i:1578147928;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36\";s:5:\"login\";i:1577975128;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '36'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '6'),
(22, 1, 'closedpostboxes_dashboard', 'a:4:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";}'),
(23, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(24, 1, 'wp_user-settings', 'libraryContent=upload'),
(25, 1, 'wp_user-settings-time', '1576767463');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$Bl/PHitOSAo2aGsnicIuATtDErGMKq1', 'root', '230435@shakopeeschools.org', '', '2019-12-13 14:56:11', '', 0, 'root');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_ngg_album`
--
ALTER TABLE `wp_ngg_album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `extras_post_id_key` (`extras_post_id`);

--
-- Indexes for table `wp_ngg_gallery`
--
ALTER TABLE `wp_ngg_gallery`
  ADD PRIMARY KEY (`gid`),
  ADD KEY `extras_post_id_key` (`extras_post_id`);

--
-- Indexes for table `wp_ngg_pictures`
--
ALTER TABLE `wp_ngg_pictures`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `extras_post_id_key` (`extras_post_id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_ngg_album`
--
ALTER TABLE `wp_ngg_album`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_ngg_gallery`
--
ALTER TABLE `wp_ngg_gallery`
  MODIFY `gid` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_ngg_pictures`
--
ALTER TABLE `wp_ngg_pictures`
  MODIFY `pid` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
