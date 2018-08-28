-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 20, 2018 at 03:37 AM
-- Server version: 5.7.21
-- PHP Version: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cci`
--

-- --------------------------------------------------------

--
-- Table structure for table `cci_commentmeta`
--

DROP TABLE IF EXISTS `cci_commentmeta`;
CREATE TABLE IF NOT EXISTS `cci_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cci_comments`
--

DROP TABLE IF EXISTS `cci_comments`;
CREATE TABLE IF NOT EXISTS `cci_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cci_comments`
--

INSERT INTO `cci_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-08-10 07:09:26', '2018-08-10 07:09:26', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cci_links`
--

DROP TABLE IF EXISTS `cci_links`;
CREATE TABLE IF NOT EXISTS `cci_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cci_options`
--

DROP TABLE IF EXISTS `cci_options`;
CREATE TABLE IF NOT EXISTS `cci_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=346 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cci_options`
--

INSERT INTO `cci_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/CCI', 'yes'),
(2, 'home', 'http://localhost/CCI', 'yes'),
(3, 'blogname', 'CCI', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'kaggarwal@techcraftz.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:107:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"service/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"service/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"service/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"service/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"service/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"service/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"service/([^/]+)/embed/?$\";s:40:\"index.php?service=$matches[1]&embed=true\";s:28:\"service/([^/]+)/trackback/?$\";s:34:\"index.php?service=$matches[1]&tb=1\";s:36:\"service/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?service=$matches[1]&paged=$matches[2]\";s:43:\"service/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?service=$matches[1]&cpage=$matches[2]\";s:32:\"service/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?service=$matches[1]&page=$matches[2]\";s:24:\"service/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"service/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"service/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"service/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"service/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"service/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(79, 'widget_text', 'a:3:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:373:\"<div class=\"footer-logo\"><a href=\"#top\"><img src=\"http://localhost/CCI/wp-content/themes/twentyseventeen-child/assets/img/HeaderLogo_2.png\" alt=\"logo\" /> </a></div>\r\n<div class=\"footer-content\">\r\n\r\nLorem ipsum dolofdfgr amet natum latine copiosa at quo, suas labore saperet has there any quote for write lorem sit latineu suas dummy sample lorem ipsum dummy text.\r\n\r\n</div>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:505:\"<ul>\r\n						<li><span class=\"ficon flaticon-map-solid\"><i class=\"fas fa-map-marker-alt\"></i></span><p>House 320, Makario Street, Nicosia,Cyprus</p></li>\r\n						<li><span class=\"ficon flaticon-call-solid\"><i class=\"fas fa-phone\"></i></span><p>(357)618765396</p></li>\r\n						<li><span class=\"ficon flaticon-envelope\"><i class=\"fas fa-envelope\"></i></span><p>dfianance@domain.com</p></li>\r\n						<li><span class=\"ficon flaticon-clock\"><i class=\"far fa-clock\"></i></span><p>09:00 to 18:00</p></li>\r\n					</ul>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'cci_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-2\";}s:9:\"sidebar-3\";a:1:{i:0;s:6:\"text-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:5:{i:1534738168;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1534748968;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1534748996;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1534751187;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1533886028;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1534736152;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(144, 'acf_version', '5.7.2', 'yes'),
(342, '_transient_timeout_acf_plugin_updates', '1534822553', 'no'),
(343, '_transient_acf_plugin_updates', 'O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:19:\"http_request_failed\";a:1:{i:0;s:70:\"cURL error 6: Could not resolve host: connect.advancedcustomfields.com\";}}s:10:\"error_data\";a:0:{}}', 'no'),
(150, 'current_theme', 'CCI', 'yes'),
(151, 'theme_mods_CCI', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1533886014;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(152, 'theme_switched', '', 'yes'),
(344, '_site_transient_timeout_theme_roots', '1534737953', 'no'),
(345, '_site_transient_theme_roots', 'a:5:{s:7:\"exhibit\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:21:\"twentyseventeen-child\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(340, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1534736154;s:7:\"checked\";a:5:{s:7:\"exhibit\";s:0:\"\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:21:\"twentyseventeen-child\";s:0:\"\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:1:{s:7:\"exhibit\";a:4:{s:5:\"theme\";s:7:\"exhibit\";s:11:\"new_version\";s:4:\"1.04\";s:3:\"url\";s:37:\"https://wordpress.org/themes/exhibit/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/theme/exhibit.1.04.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(297, 'category_children', 'a:0:{}', 'yes'),
(126, 'can_compress_scripts', '1', 'no'),
(194, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(205, 'options_footer_logo', '22', 'no'),
(206, '_options_footer_logo', 'field_5b72baffb4705', 'no'),
(207, 'options_footer_about_content', 'Lorem ipsum dolor amet natum latine copiosa at quo, suas labore saperet has there any quote for write lorem sit latineu suas dummy sample lorem ipsum dummy text.', 'no'),
(208, '_options_footer_about_content', 'field_5b72bb1fb4706', 'no'),
(210, 'options_footer_quick_links_0_link_icon_class', 'fa-map-marker-alt', 'no'),
(211, '_options_footer_quick_links_0_link_icon_class', 'field_5b72bd4b3aafa', 'no'),
(212, 'options_footer_quick_links_0_link_text', ' House 320, Makario Street, Nicosia,Cyprus', 'no'),
(213, '_options_footer_quick_links_0_link_text', 'field_5b72bd5b3aafb', 'no'),
(214, 'options_footer_quick_links_1_link_icon_class', 'fa-phone', 'no'),
(215, '_options_footer_quick_links_1_link_icon_class', 'field_5b72bd4b3aafa', 'no'),
(216, 'options_footer_quick_links_1_link_text', '(357)618765396', 'no'),
(217, '_options_footer_quick_links_1_link_text', 'field_5b72bd5b3aafb', 'no'),
(218, 'options_footer_quick_links', '2', 'no'),
(219, '_options_footer_quick_links', 'field_5b72bd123aaf9', 'no'),
(221, 'options_copyright_text', '<p>© 2018 <a href=\"#\">Exhibit</a>. All Rights Reserved.</p>', 'no'),
(222, '_options_copyright_text', 'field_5b72bf8a50ac1', 'no'),
(291, 'options_site_logo', '22', 'no'),
(139, 'recently_activated', 'a:0:{}', 'yes'),
(320, 'cptui_new_install', 'false', 'yes'),
(322, 'cptui_post_types', 'a:1:{s:7:\"service\";a:28:{s:4:\"name\";s:7:\"service\";s:5:\"label\";s:8:\"Services\";s:14:\"singular_label\";s:7:\"Service\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(332, '_transient_is_multi_author', '0', 'yes'),
(247, 'theme_mods_exhibit', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:3:\"top\";i:2;s:6:\"social\";i:3;s:6:\"footer\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1534508490;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-2\";}s:9:\"sidebar-3\";a:1:{i:0;s:6:\"text-3\";}}}}', 'yes'),
(155, 'theme_mods_twentyseventeen-child', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:3:\"top\";i:2;s:6:\"social\";i:3;s:6:\"footer\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1534507546;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-2\";}s:9:\"sidebar-3\";a:1:{i:0;s:6:\"text-3\";}}}}', 'yes'),
(292, '_options_site_logo', 'field_5b7674d4a5471', 'no'),
(315, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1534736153;s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"4.4.12\";s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.7.2\";s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.5.8\";s:9:\"hello.php\";s:3:\"1.7\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.5.8\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.5.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `cci_postmeta`
--

DROP TABLE IF EXISTS `cci_postmeta`;
CREATE TABLE IF NOT EXISTS `cci_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=320 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cci_postmeta`
--

INSERT INTO `cci_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(6, 2, '_edit_last', '1'),
(7, 9, '_menu_item_type', 'post_type'),
(5, 2, '_edit_lock', '1534509269:1'),
(8, 9, '_menu_item_menu_item_parent', '11'),
(9, 9, '_menu_item_object_id', '2'),
(10, 9, '_menu_item_object', 'page'),
(11, 9, '_menu_item_target', ''),
(12, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(13, 9, '_menu_item_xfn', ''),
(14, 9, '_menu_item_url', ''),
(16, 10, '_menu_item_type', 'post_type'),
(17, 10, '_menu_item_menu_item_parent', '0'),
(18, 10, '_menu_item_object_id', '2'),
(19, 10, '_menu_item_object', 'page'),
(20, 10, '_menu_item_target', ''),
(21, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(22, 10, '_menu_item_xfn', ''),
(23, 10, '_menu_item_url', ''),
(25, 11, '_menu_item_type', 'custom'),
(26, 11, '_menu_item_menu_item_parent', '0'),
(27, 11, '_menu_item_object_id', '11'),
(28, 11, '_menu_item_object', 'custom'),
(29, 11, '_menu_item_target', ''),
(30, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(31, 11, '_menu_item_xfn', ''),
(32, 11, '_menu_item_url', 'http://javascript(void)'),
(34, 12, '_menu_item_type', 'custom'),
(35, 12, '_menu_item_menu_item_parent', '0'),
(36, 12, '_menu_item_object_id', '12'),
(37, 12, '_menu_item_object', 'custom'),
(38, 12, '_menu_item_target', '_blank'),
(39, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(40, 12, '_menu_item_xfn', ''),
(41, 12, '_menu_item_url', 'https://www.facebook.com'),
(43, 13, '_menu_item_type', 'custom'),
(44, 13, '_menu_item_menu_item_parent', '0'),
(45, 13, '_menu_item_object_id', '13'),
(46, 13, '_menu_item_object', 'custom'),
(47, 13, '_menu_item_target', '_blank'),
(48, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(49, 13, '_menu_item_xfn', ''),
(50, 13, '_menu_item_url', 'https://twitter.com'),
(52, 14, '_menu_item_type', 'custom'),
(53, 14, '_menu_item_menu_item_parent', '0'),
(54, 14, '_menu_item_object_id', '14'),
(55, 14, '_menu_item_object', 'custom'),
(56, 14, '_menu_item_target', '_blank'),
(57, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(58, 14, '_menu_item_xfn', ''),
(59, 14, '_menu_item_url', 'http://pinterest.com'),
(61, 15, '_menu_item_type', 'custom'),
(62, 15, '_menu_item_menu_item_parent', '0'),
(63, 15, '_menu_item_object_id', '15'),
(64, 15, '_menu_item_object', 'custom'),
(65, 15, '_menu_item_target', '_blank'),
(66, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(67, 15, '_menu_item_xfn', ''),
(68, 15, '_menu_item_url', 'http://linkedin.com'),
(70, 16, '_menu_item_type', 'post_type'),
(71, 16, '_menu_item_menu_item_parent', '0'),
(72, 16, '_menu_item_object_id', '2'),
(73, 16, '_menu_item_object', 'page'),
(74, 16, '_menu_item_target', ''),
(75, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(76, 16, '_menu_item_xfn', ''),
(77, 16, '_menu_item_url', ''),
(79, 19, '_edit_last', '1'),
(80, 19, '_edit_lock', '1534494106:1'),
(81, 22, '_wp_attached_file', '2018/08/HeaderLogo_2.png'),
(82, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:425;s:6:\"height\";i:77;s:4:\"file\";s:24:\"2018/08/HeaderLogo_2.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"HeaderLogo_2-150x77.png\";s:5:\"width\";i:150;s:6:\"height\";i:77;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"HeaderLogo_2-300x54.png\";s:5:\"width\";i:300;s:6:\"height\";i:54;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:23:\"HeaderLogo_2-100x77.png\";s:5:\"width\";i:100;s:6:\"height\";i:77;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 30, '_menu_item_type', 'post_type'),
(84, 30, '_menu_item_menu_item_parent', '10'),
(85, 30, '_menu_item_object_id', '2'),
(86, 30, '_menu_item_object', 'page'),
(87, 30, '_menu_item_target', ''),
(88, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(89, 30, '_menu_item_xfn', ''),
(90, 30, '_menu_item_url', ''),
(102, 32, '_edit_lock', '1534490186:1'),
(92, 31, '_menu_item_type', 'custom'),
(93, 31, '_menu_item_menu_item_parent', '10'),
(94, 31, '_menu_item_object_id', '31'),
(95, 31, '_menu_item_object', 'custom'),
(96, 31, '_menu_item_target', ''),
(97, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(98, 31, '_menu_item_xfn', ''),
(99, 31, '_menu_item_url', '#'),
(101, 32, '_edit_last', '1'),
(103, 2, 'transparent_navigation_menu', '0'),
(104, 2, '_transparent_navigation_menu', 'field_5b7661e12dbc7'),
(105, 34, 'transparent_navigation_menu', '1'),
(106, 34, '_transparent_navigation_menu', 'field_5b7661e12dbc7'),
(107, 35, 'transparent_navigation_menu', '0'),
(108, 35, '_transparent_navigation_menu', 'field_5b7661e12dbc7'),
(109, 36, '_edit_last', '1'),
(110, 36, 'transparent_navigation_menu', '0'),
(111, 36, '_transparent_navigation_menu', 'field_5b7661e12dbc7'),
(112, 37, 'transparent_navigation_menu', '0'),
(113, 37, '_transparent_navigation_menu', 'field_5b7661e12dbc7'),
(114, 36, '_edit_lock', '1534485572:1'),
(115, 38, '_menu_item_type', 'post_type'),
(116, 38, '_menu_item_menu_item_parent', '0'),
(117, 38, '_menu_item_object_id', '36'),
(118, 38, '_menu_item_object', 'page'),
(119, 38, '_menu_item_target', ''),
(120, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(121, 38, '_menu_item_xfn', ''),
(122, 38, '_menu_item_url', ''),
(124, 39, '_edit_last', '1'),
(125, 39, '_edit_lock', '1534489976:1'),
(126, 41, '_wp_attached_file', '2018/08/HeaderLogo_2-1.png'),
(127, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:425;s:6:\"height\";i:77;s:4:\"file\";s:26:\"2018/08/HeaderLogo_2-1.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"HeaderLogo_2-1-150x77.png\";s:5:\"width\";i:150;s:6:\"height\";i:77;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"HeaderLogo_2-1-300x54.png\";s:5:\"width\";i:300;s:6:\"height\";i:54;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:25:\"HeaderLogo_2-1-100x77.png\";s:5:\"width\";i:100;s:6:\"height\";i:77;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(128, 42, '_edit_last', '1'),
(129, 42, '_edit_lock', '1534512038:1'),
(130, 2, 'global_fields_0_content_and_image_module_title', 'Know About'),
(131, 2, '_global_fields_0_content_and_image_module_title', 'field_5b76877b06466'),
(132, 2, 'global_fields_0_content_and_image_module_subtitle', 'About Us'),
(133, 2, '_global_fields_0_content_and_image_module_subtitle', 'field_5b7687ae06467'),
(134, 2, 'global_fields_0_content_and_image_module_content', 'Their house is a museum where people come to see ‘em. They really are a scream the <a href=\"#\">Addams Family</a>. They\'re creepy and they\'re kooky mysterious and spooky.\r\n<blockquote>A shadowy flight into the dangerous world of a man who does not exist. Got kind of tired packin\' and unpackin town to town and up and down the dial! So join us here each week my friends.</blockquote>\r\nTheir house is a museum where people come to see ‘em. They really are a scream the Addams Family. They\'re creepy and they\'re kooky mysterious and spooky.'),
(135, 2, '_global_fields_0_content_and_image_module_content', 'field_5b7687c206468'),
(136, 2, 'global_fields_0_content_and_image_module_image', ''),
(137, 2, '_global_fields_0_content_and_image_module_image', 'field_5b76881506469'),
(138, 2, 'global_fields_0_content_and_image_module_image_side_title', ''),
(139, 2, '_global_fields_0_content_and_image_module_image_side_title', 'field_5b7688530646a'),
(140, 2, 'global_fields_0_content_and_image_module_cta_text', 'Read More'),
(141, 2, '_global_fields_0_content_and_image_module_cta_text', 'field_5b7688740646b'),
(142, 2, 'global_fields_0_content_and_image_module_external_link', '1'),
(143, 2, '_global_fields_0_content_and_image_module_external_link', 'field_5b7688990646c'),
(144, 2, 'global_fields_0_content_and_image_module_internal_cta_link', '36'),
(145, 2, '_global_fields_0_content_and_image_module_internal_cta_link', 'field_5b7689040646e'),
(146, 2, 'global_fields', 'a:2:{i:0;s:24:\"content_and_image_module\";i:1;s:13:\"services_grid\";}'),
(147, 2, '_global_fields', 'field_5b76865a06465'),
(148, 53, 'transparent_navigation_menu', '0'),
(149, 53, '_transparent_navigation_menu', 'field_5b7661e12dbc7'),
(150, 53, 'global_fields_0_content_and_image_module_title', ''),
(151, 53, '_global_fields_0_content_and_image_module_title', 'field_5b76877b06466'),
(152, 53, 'global_fields_0_content_and_image_module_subtitle', ''),
(153, 53, '_global_fields_0_content_and_image_module_subtitle', 'field_5b7687ae06467'),
(154, 53, 'global_fields_0_content_and_image_module_content', ''),
(155, 53, '_global_fields_0_content_and_image_module_content', 'field_5b7687c206468'),
(156, 53, 'global_fields_0_content_and_image_module_image', ''),
(157, 53, '_global_fields_0_content_and_image_module_image', 'field_5b76881506469'),
(158, 53, 'global_fields_0_content_and_image_module_image_side_title', ''),
(159, 53, '_global_fields_0_content_and_image_module_image_side_title', 'field_5b7688530646a'),
(160, 53, 'global_fields_0_content_and_image_module_cta_text', ''),
(161, 53, '_global_fields_0_content_and_image_module_cta_text', 'field_5b7688740646b'),
(162, 53, 'global_fields_0_content_and_image_module_external_link', '0'),
(163, 53, '_global_fields_0_content_and_image_module_external_link', 'field_5b7688990646c'),
(164, 53, 'global_fields_0_content_and_image_module_internal_cta_link', ''),
(165, 53, '_global_fields_0_content_and_image_module_internal_cta_link', 'field_5b7689040646e'),
(166, 53, 'global_fields', 'a:1:{i:0;s:24:\"content_and_image_module\";}'),
(167, 53, '_global_fields', 'field_5b76865a06465'),
(168, 55, 'transparent_navigation_menu', '0'),
(169, 55, '_transparent_navigation_menu', 'field_5b7661e12dbc7'),
(170, 55, 'global_fields_0_content_and_image_module_title', 'Know About'),
(171, 55, '_global_fields_0_content_and_image_module_title', 'field_5b76877b06466'),
(172, 55, 'global_fields_0_content_and_image_module_subtitle', ''),
(173, 55, '_global_fields_0_content_and_image_module_subtitle', 'field_5b7687ae06467'),
(174, 55, 'global_fields_0_content_and_image_module_content', ''),
(175, 55, '_global_fields_0_content_and_image_module_content', 'field_5b7687c206468'),
(176, 55, 'global_fields_0_content_and_image_module_image', ''),
(177, 55, '_global_fields_0_content_and_image_module_image', 'field_5b76881506469'),
(178, 55, 'global_fields_0_content_and_image_module_image_side_title', ''),
(179, 55, '_global_fields_0_content_and_image_module_image_side_title', 'field_5b7688530646a'),
(180, 55, 'global_fields_0_content_and_image_module_cta_text', ''),
(181, 55, '_global_fields_0_content_and_image_module_cta_text', 'field_5b7688740646b'),
(182, 55, 'global_fields_0_content_and_image_module_external_link', '0'),
(183, 55, '_global_fields_0_content_and_image_module_external_link', 'field_5b7688990646c'),
(184, 55, 'global_fields_0_content_and_image_module_internal_cta_link', ''),
(185, 55, '_global_fields_0_content_and_image_module_internal_cta_link', 'field_5b7689040646e'),
(186, 55, 'global_fields', 'a:1:{i:0;s:24:\"content_and_image_module\";}'),
(187, 55, '_global_fields', 'field_5b76865a06465'),
(188, 57, 'transparent_navigation_menu', '0'),
(189, 57, '_transparent_navigation_menu', 'field_5b7661e12dbc7'),
(190, 57, 'global_fields_0_content_and_image_module_title', 'Know About'),
(191, 57, '_global_fields_0_content_and_image_module_title', 'field_5b76877b06466'),
(192, 57, 'global_fields_0_content_and_image_module_subtitle', 'About Us'),
(193, 57, '_global_fields_0_content_and_image_module_subtitle', 'field_5b7687ae06467'),
(194, 57, 'global_fields_0_content_and_image_module_content', ''),
(195, 57, '_global_fields_0_content_and_image_module_content', 'field_5b7687c206468'),
(196, 57, 'global_fields_0_content_and_image_module_image', ''),
(197, 57, '_global_fields_0_content_and_image_module_image', 'field_5b76881506469'),
(198, 57, 'global_fields_0_content_and_image_module_image_side_title', ''),
(199, 57, '_global_fields_0_content_and_image_module_image_side_title', 'field_5b7688530646a'),
(200, 57, 'global_fields_0_content_and_image_module_cta_text', ''),
(201, 57, '_global_fields_0_content_and_image_module_cta_text', 'field_5b7688740646b'),
(202, 57, 'global_fields_0_content_and_image_module_external_link', '0'),
(203, 57, '_global_fields_0_content_and_image_module_external_link', 'field_5b7688990646c'),
(204, 57, 'global_fields_0_content_and_image_module_internal_cta_link', ''),
(205, 57, '_global_fields_0_content_and_image_module_internal_cta_link', 'field_5b7689040646e'),
(206, 57, 'global_fields', 'a:1:{i:0;s:24:\"content_and_image_module\";}'),
(207, 57, '_global_fields', 'field_5b76865a06465'),
(208, 58, 'transparent_navigation_menu', '0'),
(209, 58, '_transparent_navigation_menu', 'field_5b7661e12dbc7'),
(210, 58, 'global_fields_0_content_and_image_module_title', 'Know About'),
(211, 58, '_global_fields_0_content_and_image_module_title', 'field_5b76877b06466'),
(212, 58, 'global_fields_0_content_and_image_module_subtitle', 'About Us'),
(213, 58, '_global_fields_0_content_and_image_module_subtitle', 'field_5b7687ae06467'),
(214, 58, 'global_fields_0_content_and_image_module_content', 'Their house is a museum where people come to see ‘em. They really are a scream the <a href=\"#\">Addams Family</a>. They\'re creepy and they\'re kooky mysterious and spooky.\r\n\r\nA shadowy flight into the dangerous world of a man who does not exist. Got kind of tired packin\' and unpackin town to town and up and down the dial! So join us here each week my friends.\r\n\r\nTheir house is a museum where people come to see ‘em. They really are a scream the Addams Family. They\'re creepy and they\'re kooky mysterious and spooky.'),
(215, 58, '_global_fields_0_content_and_image_module_content', 'field_5b7687c206468'),
(216, 58, 'global_fields_0_content_and_image_module_image', ''),
(217, 58, '_global_fields_0_content_and_image_module_image', 'field_5b76881506469'),
(218, 58, 'global_fields_0_content_and_image_module_image_side_title', ''),
(219, 58, '_global_fields_0_content_and_image_module_image_side_title', 'field_5b7688530646a'),
(220, 58, 'global_fields_0_content_and_image_module_cta_text', ''),
(221, 58, '_global_fields_0_content_and_image_module_cta_text', 'field_5b7688740646b'),
(222, 58, 'global_fields_0_content_and_image_module_external_link', '0'),
(223, 58, '_global_fields_0_content_and_image_module_external_link', 'field_5b7688990646c'),
(224, 58, 'global_fields_0_content_and_image_module_internal_cta_link', ''),
(225, 58, '_global_fields_0_content_and_image_module_internal_cta_link', 'field_5b7689040646e'),
(226, 58, 'global_fields', 'a:1:{i:0;s:24:\"content_and_image_module\";}'),
(227, 58, '_global_fields', 'field_5b76865a06465'),
(228, 59, 'transparent_navigation_menu', '0'),
(229, 59, '_transparent_navigation_menu', 'field_5b7661e12dbc7'),
(230, 59, 'global_fields_0_content_and_image_module_title', 'Know About'),
(231, 59, '_global_fields_0_content_and_image_module_title', 'field_5b76877b06466'),
(232, 59, 'global_fields_0_content_and_image_module_subtitle', 'About Us'),
(233, 59, '_global_fields_0_content_and_image_module_subtitle', 'field_5b7687ae06467'),
(234, 59, 'global_fields_0_content_and_image_module_content', 'Their house is a museum where people come to see ‘em. They really are a scream the <a href=\"#\">Addams Family</a>. They\'re creepy and they\'re kooky mysterious and spooky.\r\n<blockquote>A shadowy flight into the dangerous world of a man who does not exist. Got kind of tired packin\' and unpackin town to town and up and down the dial! So join us here each week my friends.</blockquote>\r\nTheir house is a museum where people come to see ‘em. They really are a scream the Addams Family. They\'re creepy and they\'re kooky mysterious and spooky.'),
(235, 59, '_global_fields_0_content_and_image_module_content', 'field_5b7687c206468'),
(236, 59, 'global_fields_0_content_and_image_module_image', ''),
(237, 59, '_global_fields_0_content_and_image_module_image', 'field_5b76881506469'),
(238, 59, 'global_fields_0_content_and_image_module_image_side_title', ''),
(239, 59, '_global_fields_0_content_and_image_module_image_side_title', 'field_5b7688530646a'),
(240, 59, 'global_fields_0_content_and_image_module_cta_text', ''),
(241, 59, '_global_fields_0_content_and_image_module_cta_text', 'field_5b7688740646b'),
(242, 59, 'global_fields_0_content_and_image_module_external_link', '0'),
(243, 59, '_global_fields_0_content_and_image_module_external_link', 'field_5b7688990646c'),
(244, 59, 'global_fields_0_content_and_image_module_internal_cta_link', ''),
(245, 59, '_global_fields_0_content_and_image_module_internal_cta_link', 'field_5b7689040646e'),
(246, 59, 'global_fields', 'a:1:{i:0;s:24:\"content_and_image_module\";}'),
(247, 59, '_global_fields', 'field_5b76865a06465'),
(248, 60, 'transparent_navigation_menu', '0'),
(249, 60, '_transparent_navigation_menu', 'field_5b7661e12dbc7'),
(250, 60, 'global_fields_0_content_and_image_module_title', 'Know About'),
(251, 60, '_global_fields_0_content_and_image_module_title', 'field_5b76877b06466'),
(252, 60, 'global_fields_0_content_and_image_module_subtitle', 'About Us'),
(253, 60, '_global_fields_0_content_and_image_module_subtitle', 'field_5b7687ae06467'),
(254, 60, 'global_fields_0_content_and_image_module_content', 'Their house is a museum where people come to see ‘em. They really are a scream the <a href=\"#\">Addams Family</a>. They\'re creepy and they\'re kooky mysterious and spooky.\r\n<blockquote>A shadowy flight into the dangerous world of a man who does not exist. Got kind of tired packin\' and unpackin town to town and up and down the dial! So join us here each week my friends.</blockquote>\r\nTheir house is a museum where people come to see ‘em. They really are a scream the Addams Family. They\'re creepy and they\'re kooky mysterious and spooky.'),
(255, 60, '_global_fields_0_content_and_image_module_content', 'field_5b7687c206468'),
(256, 60, 'global_fields_0_content_and_image_module_image', ''),
(257, 60, '_global_fields_0_content_and_image_module_image', 'field_5b76881506469'),
(258, 60, 'global_fields_0_content_and_image_module_image_side_title', ''),
(259, 60, '_global_fields_0_content_and_image_module_image_side_title', 'field_5b7688530646a'),
(260, 60, 'global_fields_0_content_and_image_module_cta_text', 'Read More'),
(261, 60, '_global_fields_0_content_and_image_module_cta_text', 'field_5b7688740646b'),
(262, 60, 'global_fields_0_content_and_image_module_external_link', '0'),
(263, 60, '_global_fields_0_content_and_image_module_external_link', 'field_5b7688990646c'),
(264, 60, 'global_fields_0_content_and_image_module_internal_cta_link', '36'),
(265, 60, '_global_fields_0_content_and_image_module_internal_cta_link', 'field_5b7689040646e'),
(266, 60, 'global_fields', 'a:1:{i:0;s:24:\"content_and_image_module\";}'),
(267, 60, '_global_fields', 'field_5b76865a06465'),
(268, 2, 'global_fields_0_content_and_image_module_external_cta_link', ''),
(269, 2, '_global_fields_0_content_and_image_module_external_cta_link', 'field_5b7688c60646d'),
(270, 61, 'transparent_navigation_menu', '0'),
(271, 61, '_transparent_navigation_menu', 'field_5b7661e12dbc7'),
(272, 61, 'global_fields_0_content_and_image_module_title', 'Know About'),
(273, 61, '_global_fields_0_content_and_image_module_title', 'field_5b76877b06466'),
(274, 61, 'global_fields_0_content_and_image_module_subtitle', 'About Us'),
(275, 61, '_global_fields_0_content_and_image_module_subtitle', 'field_5b7687ae06467'),
(276, 61, 'global_fields_0_content_and_image_module_content', 'Their house is a museum where people come to see ‘em. They really are a scream the <a href=\"#\">Addams Family</a>. They\'re creepy and they\'re kooky mysterious and spooky.\r\n<blockquote>A shadowy flight into the dangerous world of a man who does not exist. Got kind of tired packin\' and unpackin town to town and up and down the dial! So join us here each week my friends.</blockquote>\r\nTheir house is a museum where people come to see ‘em. They really are a scream the Addams Family. They\'re creepy and they\'re kooky mysterious and spooky.'),
(277, 61, '_global_fields_0_content_and_image_module_content', 'field_5b7687c206468'),
(278, 61, 'global_fields_0_content_and_image_module_image', ''),
(279, 61, '_global_fields_0_content_and_image_module_image', 'field_5b76881506469'),
(280, 61, 'global_fields_0_content_and_image_module_image_side_title', ''),
(281, 61, '_global_fields_0_content_and_image_module_image_side_title', 'field_5b7688530646a'),
(282, 61, 'global_fields_0_content_and_image_module_cta_text', 'Read More'),
(283, 61, '_global_fields_0_content_and_image_module_cta_text', 'field_5b7688740646b'),
(284, 61, 'global_fields_0_content_and_image_module_external_link', '1'),
(285, 61, '_global_fields_0_content_and_image_module_external_link', 'field_5b7688990646c'),
(286, 61, 'global_fields_0_content_and_image_module_internal_cta_link', '36'),
(287, 61, '_global_fields_0_content_and_image_module_internal_cta_link', 'field_5b7689040646e'),
(288, 61, 'global_fields', 'a:1:{i:0;s:24:\"content_and_image_module\";}'),
(289, 61, '_global_fields', 'field_5b76865a06465'),
(290, 61, 'global_fields_0_content_and_image_module_external_cta_link', ''),
(291, 61, '_global_fields_0_content_and_image_module_external_cta_link', 'field_5b7688c60646d'),
(292, 62, '_edit_last', '1'),
(293, 62, '_edit_lock', '1534507371:1'),
(294, 2, 'global_fields_1_show_all_services', '1'),
(295, 2, '_global_fields_1_show_all_services', 'field_5b76bebce7d60'),
(296, 65, 'transparent_navigation_menu', '0'),
(297, 65, '_transparent_navigation_menu', 'field_5b7661e12dbc7'),
(298, 65, 'global_fields_0_content_and_image_module_title', 'Know About'),
(299, 65, '_global_fields_0_content_and_image_module_title', 'field_5b76877b06466'),
(300, 65, 'global_fields_0_content_and_image_module_subtitle', 'About Us'),
(301, 65, '_global_fields_0_content_and_image_module_subtitle', 'field_5b7687ae06467'),
(302, 65, 'global_fields_0_content_and_image_module_content', 'Their house is a museum where people come to see ‘em. They really are a scream the <a href=\"#\">Addams Family</a>. They\'re creepy and they\'re kooky mysterious and spooky.\r\n<blockquote>A shadowy flight into the dangerous world of a man who does not exist. Got kind of tired packin\' and unpackin town to town and up and down the dial! So join us here each week my friends.</blockquote>\r\nTheir house is a museum where people come to see ‘em. They really are a scream the Addams Family. They\'re creepy and they\'re kooky mysterious and spooky.'),
(303, 65, '_global_fields_0_content_and_image_module_content', 'field_5b7687c206468'),
(304, 65, 'global_fields_0_content_and_image_module_image', ''),
(305, 65, '_global_fields_0_content_and_image_module_image', 'field_5b76881506469'),
(306, 65, 'global_fields_0_content_and_image_module_image_side_title', ''),
(307, 65, '_global_fields_0_content_and_image_module_image_side_title', 'field_5b7688530646a'),
(308, 65, 'global_fields_0_content_and_image_module_cta_text', 'Read More'),
(309, 65, '_global_fields_0_content_and_image_module_cta_text', 'field_5b7688740646b'),
(310, 65, 'global_fields_0_content_and_image_module_external_link', '1'),
(311, 65, '_global_fields_0_content_and_image_module_external_link', 'field_5b7688990646c'),
(312, 65, 'global_fields_0_content_and_image_module_internal_cta_link', '36'),
(313, 65, '_global_fields_0_content_and_image_module_internal_cta_link', 'field_5b7689040646e'),
(314, 65, 'global_fields', 'a:2:{i:0;s:24:\"content_and_image_module\";i:1;s:13:\"services_grid\";}'),
(315, 65, '_global_fields', 'field_5b76865a06465'),
(316, 65, 'global_fields_0_content_and_image_module_external_cta_link', ''),
(317, 65, '_global_fields_0_content_and_image_module_external_cta_link', 'field_5b7688c60646d'),
(318, 65, 'global_fields_1_show_all_services', '1'),
(319, 65, '_global_fields_1_show_all_services', 'field_5b76bebce7d60');

-- --------------------------------------------------------

--
-- Table structure for table `cci_posts`
--

DROP TABLE IF EXISTS `cci_posts`;
CREATE TABLE IF NOT EXISTS `cci_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cci_posts`
--

INSERT INTO `cci_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-08-10 07:09:26', '2018-08-10 07:09:26', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-08-10 07:09:26', '2018-08-10 07:09:26', '', 0, 'http://localhost/CCI/?p=1', 0, 'post', '', 1),
(2, 1, '2018-08-10 07:09:26', '2018-08-10 07:09:26', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href=\"http://localhost/CCI/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Home', '', 'publish', 'closed', 'open', '', 'home', '', '', '2018-08-17 12:34:28', '2018-08-17 12:34:28', '', 0, 'http://localhost/CCI/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-08-10 07:09:26', '2018-08-10 07:09:26', '<h2>Who we are</h2><p>Our website address is: http://localhost/CCI.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-08-10 07:09:26', '2018-08-10 07:09:26', '', 0, 'http://localhost/CCI/?page_id=3', 0, 'page', '', 0),
(42, 1, '2018-08-17 08:37:34', '2018-08-17 08:37:34', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Global Fields', 'global-fields', 'publish', 'closed', 'closed', '', 'group_5b76863f66225', '', '', '2018-08-17 12:34:13', '2018-08-17 12:34:13', '', 0, 'http://localhost/CCI/?post_type=acf-field-group&#038;p=42', 0, 'acf-field-group', '', 0),
(6, 1, '2018-08-10 07:36:03', '2018-08-10 07:36:03', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href=\"http://localhost/CCI/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-10 07:36:03', '2018-08-10 07:36:03', '', 2, 'http://localhost/CCI/2018/08/10/2-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-08-17 08:37:34', '2018-08-17 08:37:34', 'a:9:{s:4:\"type\";s:16:\"flexible_content\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"layouts\";a:2:{s:13:\"5b7686717f533\";a:6:{s:3:\"key\";s:13:\"5b7686717f533\";s:5:\"label\";s:24:\"Content and image Module\";s:4:\"name\";s:24:\"content_and_image_module\";s:7:\"display\";s:3:\"row\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}s:20:\"layout_5b76be71e7d5e\";a:6:{s:3:\"key\";s:20:\"layout_5b76be71e7d5e\";s:5:\"label\";s:13:\"Services Grid\";s:4:\"name\";s:13:\"services_grid\";s:7:\"display\";s:3:\"row\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}}s:12:\"button_label\";s:11:\"Add Section\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}', 'Global Fields', 'global_fields', 'publish', 'closed', 'closed', '', 'field_5b76865a06465', '', '', '2018-08-17 12:34:13', '2018-08-17 12:34:13', '', 42, 'http://localhost/CCI/?post_type=acf-field&#038;p=43', 0, 'acf-field', '', 0),
(9, 1, '2018-08-14 08:28:22', '2018-08-14 08:28:22', ' ', '', '', 'publish', 'closed', 'closed', '', '9', '', '', '2018-08-17 06:02:08', '2018-08-17 06:02:08', '', 0, 'http://localhost/CCI/?p=9', 2, 'nav_menu_item', '', 0),
(10, 1, '2018-08-14 08:33:10', '2018-08-14 08:33:10', ' ', '', '', 'publish', 'closed', 'closed', '', '10', '', '', '2018-08-17 06:02:08', '2018-08-17 06:02:08', '', 0, 'http://localhost/CCI/?p=10', 3, 'nav_menu_item', '', 0),
(11, 1, '2018-08-14 08:55:30', '2018-08-14 08:55:30', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-08-17 06:02:08', '2018-08-17 06:02:08', '', 0, 'http://localhost/CCI/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2018-08-14 10:17:57', '2018-08-14 10:17:57', '', '<i class=\"fab fa-facebook-f\"></i>', '', 'publish', 'closed', 'closed', '', '12', '', '', '2018-08-14 10:23:33', '2018-08-14 10:23:33', '', 0, 'http://localhost/CCI/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2018-08-14 10:17:58', '2018-08-14 10:17:58', '', '<i class=\"fab fa-twitter\"></i>', '', 'publish', 'closed', 'closed', '', '13', '', '', '2018-08-14 10:23:33', '2018-08-14 10:23:33', '', 0, 'http://localhost/CCI/?p=13', 2, 'nav_menu_item', '', 0),
(14, 1, '2018-08-14 10:20:09', '2018-08-14 10:20:09', '', '<i class=\"fab fa-pinterest-p\"></i>', '', 'publish', 'closed', 'closed', '', '14', '', '', '2018-08-14 10:23:33', '2018-08-14 10:23:33', '', 0, 'http://localhost/CCI/?p=14', 3, 'nav_menu_item', '', 0),
(15, 1, '2018-08-14 10:20:09', '2018-08-14 10:20:09', '', '<i class=\"fab fa-linkedin-in\"></i>', '', 'publish', 'closed', 'closed', '', '15', '', '', '2018-08-14 10:23:33', '2018-08-14 10:23:33', '', 0, 'http://localhost/CCI/?p=15', 4, 'nav_menu_item', '', 0),
(16, 1, '2018-08-14 10:24:51', '2018-08-14 10:24:51', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2018-08-15 16:36:47', '2018-08-15 16:36:47', '', 0, 'http://localhost/CCI/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2018-08-14 11:17:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-14 11:17:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/CCI/?post_type=acf-field-group&p=17', 0, 'acf-field-group', '', 0),
(18, 1, '2018-08-14 11:19:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-14 11:19:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/CCI/?post_type=acf-field-group&p=18', 0, 'acf-field-group', '', 0),
(19, 1, '2018-08-14 11:21:33', '2018-08-14 11:21:33', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"footer-options\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Footer', 'footer', 'publish', 'closed', 'closed', '', 'group_5b72baf9a4a7f', '', '', '2018-08-17 07:19:42', '2018-08-17 07:19:42', '', 0, 'http://localhost/CCI/?post_type=acf-field-group&#038;p=19', 0, 'acf-field-group', '', 0),
(20, 1, '2018-08-14 11:21:33', '2018-08-14 11:21:33', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:23:\"Recommeded Size: 450*80\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo', 'footer_logo', 'publish', 'closed', 'closed', '', 'field_5b72baffb4705', '', '', '2018-08-17 07:19:42', '2018-08-17 07:19:42', '', 19, 'http://localhost/CCI/?post_type=acf-field&#038;p=20', 1, 'acf-field', '', 0),
(21, 1, '2018-08-14 11:21:33', '2018-08-14 11:21:33', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'About Content', 'footer_about_content', 'publish', 'closed', 'closed', '', 'field_5b72bb1fb4706', '', '', '2018-08-14 11:42:12', '2018-08-14 11:42:12', '', 19, 'http://localhost/CCI/?post_type=acf-field&#038;p=21', 2, 'acf-field', '', 0),
(22, 1, '2018-08-14 11:23:13', '2018-08-14 11:23:13', '', 'HeaderLogo_2', '', 'inherit', 'open', 'closed', '', 'headerlogo_2', '', '', '2018-08-14 11:23:13', '2018-08-14 11:23:13', '', 0, 'http://localhost/CCI/wp-content/uploads/2018/08/HeaderLogo_2.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2018-08-14 11:31:23', '2018-08-14 11:31:23', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:12:\"Add New Link\";}', 'Quick Links', 'footer_quick_links', 'publish', 'closed', 'closed', '', 'field_5b72bd123aaf9', '', '', '2018-08-14 11:42:12', '2018-08-14 11:42:12', '', 19, 'http://localhost/CCI/?post_type=acf-field&#038;p=23', 4, 'acf-field', '', 0),
(24, 1, '2018-08-14 11:31:24', '2018-08-14 11:31:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Icon Class', 'link_icon_class', 'publish', 'closed', 'closed', '', 'field_5b72bd4b3aafa', '', '', '2018-08-14 11:31:24', '2018-08-14 11:31:24', '', 23, 'http://localhost/CCI/?post_type=acf-field&p=24', 0, 'acf-field', '', 0),
(25, 1, '2018-08-14 11:31:24', '2018-08-14 11:31:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Link Text', 'link_text', 'publish', 'closed', 'closed', '', 'field_5b72bd5b3aafb', '', '', '2018-08-14 11:31:24', '2018-08-14 11:31:24', '', 23, 'http://localhost/CCI/?post_type=acf-field&p=25', 1, 'acf-field', '', 0),
(26, 1, '2018-08-14 11:40:12', '2018-08-14 11:40:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Copyright Text', 'copyright_text', 'publish', 'closed', 'closed', '', 'field_5b72bf8a50ac1', '', '', '2018-08-14 11:42:12', '2018-08-14 11:42:12', '', 19, 'http://localhost/CCI/?post_type=acf-field&#038;p=26', 6, 'acf-field', '', 0),
(27, 1, '2018-08-14 11:42:11', '2018-08-14 11:42:11', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Footer Basic Details', 'footer_basic_details', 'publish', 'closed', 'closed', '', 'field_5b72bfb23bb8a', '', '', '2018-08-14 11:42:11', '2018-08-14 11:42:11', '', 19, 'http://localhost/CCI/?post_type=acf-field&p=27', 0, 'acf-field', '', 0),
(28, 1, '2018-08-14 11:42:12', '2018-08-14 11:42:12', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Quick Links', 'quick_links', 'publish', 'closed', 'closed', '', 'field_5b72bfdc3bb8b', '', '', '2018-08-14 11:42:12', '2018-08-14 11:42:12', '', 19, 'http://localhost/CCI/?post_type=acf-field&p=28', 3, 'acf-field', '', 0),
(29, 1, '2018-08-14 11:42:12', '2018-08-14 11:42:12', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Footer Bottom', 'footer_bottom', 'publish', 'closed', 'closed', '', 'field_5b72bff93bb8c', '', '', '2018-08-14 11:42:12', '2018-08-14 11:42:12', '', 19, 'http://localhost/CCI/?post_type=acf-field&p=29', 5, 'acf-field', '', 0),
(30, 1, '2018-08-15 16:37:24', '2018-08-15 16:37:24', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2018-08-17 06:02:08', '2018-08-17 06:02:08', '', 0, 'http://localhost/CCI/?p=30', 4, 'nav_menu_item', '', 0),
(31, 1, '2018-08-15 16:37:24', '2018-08-15 16:37:24', '', 'test', '', 'publish', 'closed', 'closed', '', 'test', '', '', '2018-08-17 06:02:08', '2018-08-17 06:02:08', '', 0, 'http://localhost/CCI/?p=31', 5, 'nav_menu_item', '', 0),
(32, 1, '2018-08-17 05:50:20', '2018-08-17 05:50:20', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Navigation menu', 'navigation-menu', 'publish', 'closed', 'closed', '', 'group_5b7661d1bd9d7', '', '', '2018-08-17 05:50:40', '2018-08-17 05:50:40', '', 0, 'http://localhost/CCI/?post_type=acf-field-group&#038;p=32', 0, 'acf-field-group', '', 0),
(33, 1, '2018-08-17 05:50:21', '2018-08-17 05:50:21', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Transparent Menu', 'transparent_navigation_menu', 'publish', 'closed', 'closed', '', 'field_5b7661e12dbc7', '', '', '2018-08-17 05:50:21', '2018-08-17 05:50:21', '', 32, 'http://localhost/CCI/?post_type=acf-field&p=33', 0, 'acf-field', '', 0),
(34, 1, '2018-08-17 05:51:08', '2018-08-17 05:51:08', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href=\"http://localhost/CCI/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-17 05:51:08', '2018-08-17 05:51:08', '', 2, 'http://localhost/CCI/2018/08/17/2-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-08-17 05:55:27', '2018-08-17 05:55:27', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href=\"http://localhost/CCI/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-17 05:55:27', '2018-08-17 05:55:27', '', 2, 'http://localhost/CCI/2018/08/17/2-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2018-08-17 06:01:44', '2018-08-17 06:01:44', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-08-17 06:01:44', '2018-08-17 06:01:44', '', 0, 'http://localhost/CCI/?page_id=36', 0, 'page', '', 0),
(37, 1, '2018-08-17 06:01:44', '2018-08-17 06:01:44', '', 'About', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-08-17 06:01:44', '2018-08-17 06:01:44', '', 36, 'http://localhost/CCI/2018/08/17/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-08-17 06:02:09', '2018-08-17 06:02:09', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2018-08-17 06:02:09', '2018-08-17 06:02:09', '', 0, 'http://localhost/CCI/?p=38', 6, 'nav_menu_item', '', 0),
(39, 1, '2018-08-17 07:14:25', '2018-08-17 07:14:25', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"header-options\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Header', 'header', 'publish', 'closed', 'closed', '', 'group_5b76749e5ab68', '', '', '2018-08-17 07:14:39', '2018-08-17 07:14:39', '', 0, 'http://localhost/CCI/?post_type=acf-field-group&#038;p=39', 0, 'acf-field-group', '', 0),
(40, 1, '2018-08-17 07:14:25', '2018-08-17 07:14:25', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:24:\"Recommended Size: 450*80\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Site Logo', 'site_logo', 'publish', 'closed', 'closed', '', 'field_5b7674d4a5471', '', '', '2018-08-17 07:14:25', '2018-08-17 07:14:25', '', 39, 'http://localhost/CCI/?post_type=acf-field&p=40', 0, 'acf-field', '', 0),
(41, 1, '2018-08-17 07:15:36', '2018-08-17 07:15:36', '', 'HeaderLogo_2', '', 'inherit', 'open', 'closed', '', 'headerlogo_2-2', '', '', '2018-08-17 07:15:36', '2018-08-17 07:15:36', '', 0, 'http://localhost/CCI/wp-content/uploads/2018/08/HeaderLogo_2-1.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2018-08-17 08:37:34', '2018-08-17 08:37:34', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:13:\"5b7686717f533\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'content_and_image_module_title', 'publish', 'closed', 'closed', '', 'field_5b76877b06466', '', '', '2018-08-17 08:37:34', '2018-08-17 08:37:34', '', 43, 'http://localhost/CCI/?post_type=acf-field&p=44', 0, 'acf-field', '', 0),
(45, 1, '2018-08-17 08:37:34', '2018-08-17 08:37:34', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:13:\"5b7686717f533\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Subtitle', 'content_and_image_module_subtitle', 'publish', 'closed', 'closed', '', 'field_5b7687ae06467', '', '', '2018-08-17 08:37:34', '2018-08-17 08:37:34', '', 43, 'http://localhost/CCI/?post_type=acf-field&p=45', 1, 'acf-field', '', 0),
(46, 1, '2018-08-17 08:37:34', '2018-08-17 08:37:34', 'a:11:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:13:\"5b7686717f533\";s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Content', 'content_and_image_module_content', 'publish', 'closed', 'closed', '', 'field_5b7687c206468', '', '', '2018-08-17 08:37:34', '2018-08-17 08:37:34', '', 43, 'http://localhost/CCI/?post_type=acf-field&p=46', 2, 'acf-field', '', 0),
(47, 1, '2018-08-17 08:37:34', '2018-08-17 08:37:34', 'a:16:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:25:\"Recommended Size: 905*938\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:13:\"5b7686717f533\";s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'content_and_image_module_image', 'publish', 'closed', 'closed', '', 'field_5b76881506469', '', '', '2018-08-17 08:37:34', '2018-08-17 08:37:34', '', 43, 'http://localhost/CCI/?post_type=acf-field&p=47', 3, 'acf-field', '', 0),
(48, 1, '2018-08-17 08:37:34', '2018-08-17 08:37:34', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:13:\"5b7686717f533\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Image Side title', 'content_and_image_module_image_side_title', 'publish', 'closed', 'closed', '', 'field_5b7688530646a', '', '', '2018-08-17 08:37:34', '2018-08-17 08:37:34', '', 43, 'http://localhost/CCI/?post_type=acf-field&p=48', 4, 'acf-field', '', 0),
(49, 1, '2018-08-17 08:37:34', '2018-08-17 08:37:34', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:13:\"5b7686717f533\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'CTA Text', 'content_and_image_module_cta_text', 'publish', 'closed', 'closed', '', 'field_5b7688740646b', '', '', '2018-08-17 10:30:26', '2018-08-17 10:30:26', '', 43, 'http://localhost/CCI/?post_type=acf-field&#038;p=49', 5, 'acf-field', '', 0),
(50, 1, '2018-08-17 08:37:35', '2018-08-17 08:37:35', 'a:11:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:13:\"5b7686717f533\";s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Is External Link?', 'content_and_image_module_external_link', 'publish', 'closed', 'closed', '', 'field_5b7688990646c', '', '', '2018-08-17 08:37:35', '2018-08-17 08:37:35', '', 43, 'http://localhost/CCI/?post_type=acf-field&p=50', 6, 'acf-field', '', 0),
(51, 1, '2018-08-17 08:37:35', '2018-08-17 08:37:35', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:13:\"5b7686717f533\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b7688990646c\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}}', 'External CTA Link', 'content_and_image_module_external_cta_link', 'publish', 'closed', 'closed', '', 'field_5b7688c60646d', '', '', '2018-08-17 08:37:35', '2018-08-17 08:37:35', '', 43, 'http://localhost/CCI/?post_type=acf-field&p=51', 7, 'acf-field', '', 0),
(52, 1, '2018-08-17 08:37:35', '2018-08-17 08:37:35', 'a:11:{s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:13:\"5b7686717f533\";s:9:\"post_type\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:8:\"taxonomy\";a:0:{}s:10:\"allow_null\";i:0;s:14:\"allow_archives\";i:1;s:8:\"multiple\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b7688990646c\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:1:\"1\";}}}}', 'Internal CTA Link', 'content_and_image_module_internal_cta_link', 'publish', 'closed', 'closed', '', 'field_5b7689040646e', '', '', '2018-08-17 08:37:35', '2018-08-17 08:37:35', '', 43, 'http://localhost/CCI/?post_type=acf-field&p=52', 8, 'acf-field', '', 0),
(53, 1, '2018-08-17 08:38:44', '2018-08-17 08:38:44', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href=\"http://localhost/CCI/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-17 08:38:44', '2018-08-17 08:38:44', '', 2, 'http://localhost/CCI/2018/08/17/2-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-08-17 10:07:42', '2018-08-17 10:07:42', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href=\"http://localhost/CCI/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-17 10:07:42', '2018-08-17 10:07:42', '', 2, 'http://localhost/CCI/2018/08/17/2-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-08-17 10:07:47', '2018-08-17 10:07:47', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\n...or something like this:\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\nAs a new WordPress user, you should go to <a href=\"http://localhost/CCI/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Home', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2018-08-17 10:07:47', '2018-08-17 10:07:47', '', 2, 'http://localhost/CCI/2018/08/17/2-autosave-v1/', 0, 'revision', '', 0),
(57, 1, '2018-08-17 10:08:36', '2018-08-17 10:08:36', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href=\"http://localhost/CCI/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-17 10:08:36', '2018-08-17 10:08:36', '', 2, 'http://localhost/CCI/2018/08/17/2-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-08-17 10:12:31', '2018-08-17 10:12:31', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href=\"http://localhost/CCI/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-17 10:12:31', '2018-08-17 10:12:31', '', 2, 'http://localhost/CCI/2018/08/17/2-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-08-17 10:15:22', '2018-08-17 10:15:22', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href=\"http://localhost/CCI/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-17 10:15:22', '2018-08-17 10:15:22', '', 2, 'http://localhost/CCI/2018/08/17/2-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-08-17 10:30:56', '2018-08-17 10:30:56', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href=\"http://localhost/CCI/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-17 10:30:56', '2018-08-17 10:30:56', '', 2, 'http://localhost/CCI/2018/08/17/2-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-08-17 10:33:00', '2018-08-17 10:33:00', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href=\"http://localhost/CCI/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-17 10:33:00', '2018-08-17 10:33:00', '', 2, 'http://localhost/CCI/2018/08/17/2-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-08-17 12:02:51', '0000-00-00 00:00:00', '<span>invidunt et permei congue dicant eu recusabo urbanit tollit expetin daiso Lorem ipsum omet</span><span>invidunt et permei congue dicant eu recusabo urbanit tollit expetin daiso Lorem ipsum omet</span><span>invidunt et permei congue dicant eu recusabo urbanit tollit expetin daiso Lorem ipsum omet</span><span>invidunt et permei congue dicant eu recusabo urbanit tollit expetin daiso Lorem ipsum omet</span><span>invidunt et permei congue dicant eu recusabo urbanit tollit expetin daiso Lorem ipsum omet</span><span>invidunt et permei congue dicant eu recusabo urbanit tollit expetin daiso Lorem ipsum omet</span>', 'Sustainability', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-08-17 12:02:51', '2018-08-17 12:02:51', '', 0, 'http://localhost/CCI/?post_type=service&#038;p=62', 0, 'service', '', 0),
(63, 1, '2018-08-17 12:26:35', '2018-08-17 12:26:35', 'a:13:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_5b76be71e7d5e\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";i:1;s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b76bebce7d60\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:1:\"1\";}}}}', 'Numbe of sevices to show', 'numbe_of_sevices_to_show', 'publish', 'closed', 'closed', '', 'field_5b76be7fe7d5f', '', '', '2018-08-17 12:34:13', '2018-08-17 12:34:13', '', 43, 'http://localhost/CCI/?post_type=acf-field&#038;p=63', 1, 'acf-field', '', 0),
(64, 1, '2018-08-17 12:26:35', '2018-08-17 12:26:35', 'a:11:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_5b76be71e7d5e\";s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:1;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Show all Services', 'show_all_services', 'publish', 'closed', 'closed', '', 'field_5b76bebce7d60', '', '', '2018-08-17 12:34:13', '2018-08-17 12:34:13', '', 43, 'http://localhost/CCI/?post_type=acf-field&#038;p=64', 2, 'acf-field', '', 0),
(65, 1, '2018-08-17 12:33:16', '2018-08-17 12:33:16', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href=\"http://localhost/CCI/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-17 12:33:16', '2018-08-17 12:33:16', '', 2, 'http://localhost/CCI/2018/08/17/2-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-08-17 12:34:13', '2018-08-17 12:34:13', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_5b76be71e7d5e\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Section Title', 'services_section_title', 'publish', 'closed', 'closed', '', 'field_5b76c09ee92bd', '', '', '2018-08-17 12:34:13', '2018-08-17 12:34:13', '', 43, 'http://localhost/CCI/?post_type=acf-field&p=66', 0, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cci_termmeta`
--

DROP TABLE IF EXISTS `cci_termmeta`;
CREATE TABLE IF NOT EXISTS `cci_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cci_terms`
--

DROP TABLE IF EXISTS `cci_terms`;
CREATE TABLE IF NOT EXISTS `cci_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cci_terms`
--

INSERT INTO `cci_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Header Menu', 'header-menu', 0),
(3, 'Footer Social Menu', 'footer-social-menu', 0),
(4, 'Footer Menu', 'footer-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cci_term_relationships`
--

DROP TABLE IF EXISTS `cci_term_relationships`;
CREATE TABLE IF NOT EXISTS `cci_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cci_term_relationships`
--

INSERT INTO `cci_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(9, 2, 0),
(10, 2, 0),
(11, 2, 0),
(12, 3, 0),
(13, 3, 0),
(14, 3, 0),
(15, 3, 0),
(16, 4, 0),
(30, 2, 0),
(31, 2, 0),
(38, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cci_term_taxonomy`
--

DROP TABLE IF EXISTS `cci_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `cci_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cci_term_taxonomy`
--

INSERT INTO `cci_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'nav_menu', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cci_usermeta`
--

DROP TABLE IF EXISTS `cci_usermeta`;
CREATE TABLE IF NOT EXISTS `cci_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cci_usermeta`
--

INSERT INTO `cci_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(12, 1, 'cci_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'cci_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,text_widget_custom_html,text_widget_paste_html'),
(15, 1, 'show_welcome_panel', '1'),
(23, 1, 'session_tokens', 'a:1:{s:64:\"9f6482f207806a07bea334f1826f50a56d1b16ea4722b38e4019f7e24dcfb0e1\";a:4:{s:10:\"expiration\";i:1534614391;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1534441591;}}'),
(17, 1, 'cci_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:1:{i:0;s:11:\"description\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'cci_user-settings', 'editor=tinymce&libraryContent=browse'),
(22, 1, 'cci_user-settings-time', '1534500748'),
(24, 1, 'closedpostboxes_page', 'a:0:{}'),
(25, 1, 'metaboxhidden_page', 'a:7:{i:0;s:23:\"acf-group_5b72baf9a4a7f\";i:1;s:23:\"acf-group_5b76749e5ab68\";i:2;s:12:\"revisionsdiv\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `cci_users`
--

DROP TABLE IF EXISTS `cci_users`;
CREATE TABLE IF NOT EXISTS `cci_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cci_users`
--

INSERT INTO `cci_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BR2Xwc01Tj97o9IjUsyAJUK3p44yZb1', 'admin', 'kaggarwal@techcraftz.com', '', '2018-08-10 07:09:26', '', 0, 'admin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
