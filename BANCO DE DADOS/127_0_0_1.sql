-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 20-Dez-2017 às 23:49
-- Versão do servidor: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `da`
--
CREATE DATABASE IF NOT EXISTS `da` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `da`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_wp_trash_meta_status', '1'),
(2, 1, '_wp_trash_meta_time', '1506796596');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-09-28 15:50:42', '2017-09-28 18:50:42', 'Olá, isso é um comentário.\nPara começar a moderar, editar e deletar comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'trash', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/DA', 'yes'),
(2, 'home', 'http://localhost/DA', 'yes'),
(3, 'blogname', 'DAcompsi', 'yes'),
(4, 'blogdescription', 'Diretório Acadêmico', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'silveira.fabyo@outlook.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:74:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:63:\"C:\\xampp\\htdocs\\DA/wp-content/themes/twentyseventeen/footer.php\";i:1;s:62:\"C:\\xampp\\htdocs\\DA/wp-content/themes/twentyseventeen/style.css\";i:3;s:60:\"C:\\xampp\\htdocs\\DA/wp-content/themes/twentyseventeen/404.php\";i:4;s:72:\"C:\\xampp\\htdocs\\DA/wp-content/themes/twentyseventeen/inc/back-compat.php\";i:5;s:67:\"C:\\xampp\\htdocs\\DA/wp-content/themes/twentyseventeen/front-page.php\";}', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
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
(79, 'widget_text', 'a:5:{i:2;a:4:{s:5:\"title\";s:12:\"Encontre-nos\";s:4:\"text\";s:178:\"<strong>Endereço</strong>\nAv. Paulista, 123456\nSão Paulo, SP, CEP: 01311-300\n\n<strong>Horário</strong>\nSegunda&mdash;sexta: 9h&ndash;17h\nSábados &amp; domingos: 11h&ndash;15h\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:15:\"Sobre este site\";s:4:\"text\";s:86:\"Este pode ser um bom lugar para se apresentar, falar do seu site ou incluir créditos.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:12:\"Encontre-nos\";s:4:\"text\";s:178:\"<strong>Endereço</strong>\nAv. Paulista, 123456\nSão Paulo, SP, CEP: 01311-300\n\n<strong>Horário</strong>\nSegunda&mdash;sexta: 9h&ndash;17h\nSábados &amp; domingos: 11h&ndash;15h\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:15:\"Sobre este site\";s:4:\"text\";s:86:\"Este pode ser um bom lugar para se apresentar, falar do seu site ou incluir créditos.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '48', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'pt_BR', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;i:4;a:2:{s:5:\"title\";s:3:\"FAQ\";s:6:\"number\";i:3;}}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:1:{i:0;s:13:\"media_image-2\";}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:2:{i:2;a:15:{s:13:\"attachment_id\";i:57;s:3:\"url\";s:129:\"http://localhost/DA/wp-content/uploads/2017/09/AAEAAQAAAAAAAAX8AAAAJDU0ZTdhZTIyLThmMWQtNGE3ZS05MWQzLTA1NDFjNDhiZmUwZg-300x102.png\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:646;s:6:\"height\";i:219;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:4:\"none\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:11:\"image_title\";s:0:\"\";s:17:\"link_target_blank\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:4:{i:1508266244;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1508266269;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1508266601;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:5:{s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:80:\"http://localhost/DA/wp-content/uploads/2017/09/cropped-ciencia-da-computacao.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:41;s:3:\"url\";s:80:\"http://localhost/DA/wp-content/uploads/2017/09/cropped-ciencia-da-computacao.jpg\";s:13:\"thumbnail_url\";s:80:\"http://localhost/DA/wp-content/uploads/2017/09/cropped-ciencia-da-computacao.jpg\";s:6:\"height\";i:1198;s:5:\"width\";i:2000;}s:11:\"custom_logo\";s:0:\"\";s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:5;}}', 'yes'),
(121, '_site_transient_timeout_browser_a9db4d03969fdd98d377b682b063efe6', '1507229470', 'no'),
(122, '_site_transient_browser_a9db4d03969fdd98d377b682b063efe6', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"61.0.3163.100\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(126, 'can_compress_scripts', '1', 'no'),
(145, 'theme_mods_twentyfifteen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(150, 'theme_mods_twentysixteen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(154, '_site_transient_timeout_wporg_theme_feature_list', '1506636843', 'no'),
(155, '_site_transient_wporg_theme_feature_list', 'a:3:{s:6:\"Layout\";a:7:{i:0;s:11:\"grid-layout\";i:1;s:10:\"one-column\";i:2;s:11:\"two-columns\";i:3;s:13:\"three-columns\";i:4;s:12:\"four-columns\";i:5;s:12:\"left-sidebar\";i:6;s:13:\"right-sidebar\";}s:8:\"Features\";a:20:{i:0;s:19:\"accessibility-ready\";i:1;s:10:\"buddypress\";i:2;s:17:\"custom-background\";i:3;s:13:\"custom-colors\";i:4;s:13:\"custom-header\";i:5;s:11:\"custom-menu\";i:6;s:12:\"editor-style\";i:7;s:21:\"featured-image-header\";i:8;s:15:\"featured-images\";i:9;s:15:\"flexible-header\";i:10;s:14:\"footer-widgets\";i:11;s:20:\"front-page-post-form\";i:12;s:19:\"full-width-template\";i:13;s:12:\"microformats\";i:14;s:12:\"post-formats\";i:15;s:20:\"rtl-language-support\";i:16;s:11:\"sticky-post\";i:17;s:13:\"theme-options\";i:18;s:17:\"threaded-comments\";i:19;s:17:\"translation-ready\";}s:7:\"Subject\";a:9:{i:0;s:4:\"blog\";i:1;s:10:\"e-commerce\";i:2;s:9:\"education\";i:3;s:13:\"entertainment\";i:4;s:14:\"food-and-drink\";i:5;s:7:\"holiday\";i:6;s:4:\"news\";i:7;s:11:\"photography\";i:8;s:9:\"portfolio\";}}', 'no'),
(184, 'category_children', 'a:0:{}', 'yes'),
(187, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:1:{i:1;i:5;}}', 'yes'),
(199, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-4.8.2.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-4.8.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.8.2\";s:7:\"version\";s:5:\"4.8.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1508265114;s:15:\"version_checked\";s:5:\"4.8.2\";s:12:\"translations\";a:0:{}}', 'no'),
(200, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1508265126;s:7:\"checked\";a:3:{s:13:\"twentyfifteen\";s:3:\"1.8\";s:15:\"twentyseventeen\";s:3:\"1.3\";s:13:\"twentysixteen\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(255, '_transient_timeout_plugin_slugs', '1506969781', 'no'),
(256, '_transient_plugin_slugs', 'a:3:{i:0;s:19:\"akismet/akismet.php\";i:1;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:2;s:9:\"hello.php\";}', 'no'),
(257, 'recently_activated', 'a:0:{}', 'yes'),
(260, '_transient_is_multi_author', '0', 'yes'),
(263, 'ai1wm_secret_key', 'JfYU0yrf2LZF', 'yes'),
(264, 'ai1wm_status', 'a:3:{s:4:\"type\";s:4:\"info\";s:7:\"message\";s:37:\"Done adding configuration to archive.\";s:5:\"title\";N;}', 'yes'),
(268, 'ai1wm_updater', 'a:0:{}', 'yes'),
(273, '_transient_timeout_dash_v2_01e18dead815ce736e3b9cccfbd773a5', '1507184754', 'no'),
(274, '_transient_dash_v2_01e18dead815ce736e3b9cccfbd773a5', '<div class=\"rss-widget\"><p><strong>Erro de RSS:</strong> WP HTTP Error: cURL error 28: Operation timed out after 10000 milliseconds with 86513526243328 bytes received</p></div><div class=\"rss-widget\"><p><strong>Erro de RSS:</strong> WP HTTP Error: cURL error 28: Operation timed out after 10000 milliseconds with 0 out of 0 bytes received</p></div>', 'no'),
(277, '_site_transient_timeout_theme_roots', '1508266918', 'no'),
(278, '_site_transient_theme_roots', 'a:3:{s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(279, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1508265123;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.0\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.0.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.8.1\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"6.58\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.6.58.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=1268186\";s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=1268186\";s:7:\"default\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=1268186\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=1691996\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=1691996\";s:7:\"default\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=1691996\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(71, 37, '_wp_attached_file', '2017/09/fractais.jpg'),
(72, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:300;s:4:\"file\";s:20:\"2017/09/fractais.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"fractais-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"fractais-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"fractais-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(73, 38, '_wp_attached_file', '2017/09/cropped-fractais.jpg'),
(74, 38, '_wp_attachment_context', 'custom-header'),
(75, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1500;s:4:\"file\";s:28:\"2017/09/cropped-fractais.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-fractais-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"cropped-fractais-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"cropped-fractais-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"cropped-fractais-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"twentyseventeen-featured-image\";a:4:{s:4:\"file\";s:30:\"cropped-fractais-2000x1200.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:28:\"cropped-fractais-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(76, 38, '_wp_attachment_custom_header_last_used_twentyseventeen', '1506795774'),
(77, 38, '_wp_attachment_is_custom_header', 'twentyseventeen'),
(78, 40, '_wp_attached_file', '2017/09/ciencia-da-computacao.jpg'),
(79, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:33:\"2017/09/ciencia-da-computacao.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"ciencia-da-computacao-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"ciencia-da-computacao-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"ciencia-da-computacao-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"ciencia-da-computacao-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"twentyseventeen-featured-image\";a:4:{s:4:\"file\";s:35:\"ciencia-da-computacao-1920x1200.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:33:\"ciencia-da-computacao-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(80, 41, '_wp_attached_file', '2017/09/cropped-ciencia-da-computacao.jpg'),
(81, 41, '_wp_attachment_context', 'custom-header'),
(82, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1198;s:4:\"file\";s:41:\"2017/09/cropped-ciencia-da-computacao.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"cropped-ciencia-da-computacao-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"cropped-ciencia-da-computacao-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"cropped-ciencia-da-computacao-768x460.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:460;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"cropped-ciencia-da-computacao-1024x613.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:613;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"twentyseventeen-featured-image\";a:4:{s:4:\"file\";s:43:\"cropped-ciencia-da-computacao-2000x1198.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:1198;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:41:\"cropped-ciencia-da-computacao-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 41, '_wp_attachment_custom_header_last_used_twentyseventeen', '1506795841'),
(84, 41, '_wp_attachment_is_custom_header', 'twentyseventeen'),
(85, 39, '_wp_trash_meta_status', 'publish'),
(86, 39, '_wp_trash_meta_time', '1506795841'),
(87, 43, '_wp_attached_file', '2017/09/cropped-fractais-1.jpg'),
(88, 43, '_wp_attachment_context', 'site-icon'),
(89, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:30:\"2017/09/cropped-fractais-1.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-fractais-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"cropped-fractais-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:30:\"cropped-fractais-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:30:\"cropped-fractais-1-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:30:\"cropped-fractais-1-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:30:\"cropped-fractais-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:28:\"cropped-fractais-1-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(90, 42, '_wp_trash_meta_status', 'publish'),
(91, 42, '_wp_trash_meta_time', '1506795887'),
(92, 44, '_wp_attached_file', '2017/09/cropped-fractais-2.jpg'),
(93, 44, '_wp_attachment_context', 'custom-logo'),
(94, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"file\";s:30:\"2017/09/cropped-fractais-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-fractais-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:30:\"cropped-fractais-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(95, 46, '_wp_attached_file', '2017/09/download.png'),
(96, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:419;s:6:\"height\";i:120;s:4:\"file\";s:20:\"2017/09/download.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"download-150x120.png\";s:5:\"width\";i:150;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"download-300x86.png\";s:5:\"width\";i:300;s:6:\"height\";i:86;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"download-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(97, 47, '_wp_attached_file', '2017/09/UFMG-90-anos.png'),
(98, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:371;s:6:\"height\";i:411;s:4:\"file\";s:24:\"2017/09/UFMG-90-anos.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"UFMG-90-anos-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"UFMG-90-anos-271x300.png\";s:5:\"width\";i:271;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:24:\"UFMG-90-anos-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(99, 48, '_wp_attached_file', '2017/09/cropped-UFMG-90-anos.png'),
(100, 48, '_wp_attachment_context', 'site-icon'),
(101, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:32:\"2017/09/cropped-UFMG-90-anos.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-UFMG-90-anos-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"cropped-UFMG-90-anos-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:32:\"cropped-UFMG-90-anos-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:32:\"cropped-UFMG-90-anos-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:32:\"cropped-UFMG-90-anos-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:32:\"cropped-UFMG-90-anos-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:30:\"cropped-UFMG-90-anos-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(102, 45, '_wp_trash_meta_status', 'publish'),
(103, 45, '_wp_trash_meta_time', '1506796072'),
(112, 49, '_wp_trash_meta_status', 'publish'),
(113, 49, '_wp_trash_meta_time', '1506796306'),
(114, 1, '_edit_lock', '1506879870:1'),
(115, 1, '_edit_last', '1'),
(117, 1, '_wp_old_slug', 'ola-mundo'),
(118, 56, '_wp_trash_meta_status', 'publish'),
(119, 56, '_wp_trash_meta_time', '1506797005'),
(122, 58, '_edit_last', '1'),
(123, 58, '_edit_lock', '1506797790:1'),
(143, 61, '_wp_trash_meta_status', 'publish'),
(144, 61, '_wp_trash_meta_time', '1506798202'),
(145, 63, '_wp_trash_meta_status', 'publish'),
(146, 63, '_wp_trash_meta_time', '1506798254'),
(147, 64, '_edit_last', '1'),
(148, 64, '_edit_lock', '1506798352:1'),
(149, 66, '_edit_last', '1'),
(150, 66, '_edit_lock', '1506799169:1'),
(151, 66, '_oembed_18e51cd2fe8943c364124fc876eb4ccb', '{{unknown}}'),
(152, 67, '_wp_attached_file', '2017/09/unnamed-e1506798748712.png'),
(153, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:60;s:6:\"height\";i:60;s:4:\"file\";s:34:\"2017/09/unnamed-e1506798748712.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"unnamed-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:19:\"unnamed-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(154, 67, '_wp_attachment_backup_sizes', 'a:1:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:170;s:6:\"height\";i:170;s:4:\"file\";s:11:\"unnamed.png\";}}'),
(163, 69, '_wp_trash_meta_status', 'publish'),
(164, 69, '_wp_trash_meta_time', '1506798884'),
(165, 71, '_wp_trash_meta_status', 'publish'),
(166, 71, '_wp_trash_meta_time', '1506798928'),
(167, 72, '_wp_trash_meta_status', 'publish'),
(168, 72, '_wp_trash_meta_time', '1506798934'),
(169, 73, '_wp_trash_meta_status', 'publish'),
(170, 73, '_wp_trash_meta_time', '1506798964'),
(216, 82, '_edit_last', '1'),
(217, 82, '_edit_lock', '1506879925:1'),
(235, 92, '_wp_attached_file', '2017/09/2016-03-07-14.20.22-480x280.jpg'),
(236, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:280;s:4:\"file\";s:39:\"2017/09/2016-03-07-14.20.22-480x280.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"2016-03-07-14.20.22-480x280-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"2016-03-07-14.20.22-480x280-300x175.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:39:\"2016-03-07-14.20.22-480x280-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(237, 93, '_wp_attached_file', '2017/09/2016-03-08-16.15.41-480x280.jpg'),
(238, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:280;s:4:\"file\";s:39:\"2017/09/2016-03-08-16.15.41-480x280.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"2016-03-08-16.15.41-480x280-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"2016-03-08-16.15.41-480x280-300x175.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:39:\"2016-03-08-16.15.41-480x280-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(239, 94, '_wp_attached_file', '2017/09/2016-03-09-15.10.41-1020x574.jpg'),
(240, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:574;s:4:\"file\";s:40:\"2017/09/2016-03-09-15.10.41-1020x574.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"2016-03-09-15.10.41-1020x574-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"2016-03-09-15.10.41-1020x574-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"2016-03-09-15.10.41-1020x574-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:40:\"2016-03-09-15.10.41-1020x574-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(241, 95, '_wp_attached_file', '2017/09/2016-03-09-15.17.05-1020x574.jpg'),
(242, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:574;s:4:\"file\";s:40:\"2017/09/2016-03-09-15.17.05-1020x574.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"2016-03-09-15.17.05-1020x574-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"2016-03-09-15.17.05-1020x574-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"2016-03-09-15.17.05-1020x574-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:40:\"2016-03-09-15.17.05-1020x574-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(243, 97, '_edit_last', '1'),
(244, 97, '_edit_lock', '1506800351:1'),
(253, 101, '_menu_item_type', 'post_type'),
(254, 101, '_menu_item_menu_item_parent', '0'),
(255, 101, '_menu_item_object_id', '97'),
(256, 101, '_menu_item_object', 'page'),
(257, 101, '_menu_item_target', ''),
(258, 101, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(259, 101, '_menu_item_xfn', ''),
(260, 101, '_menu_item_url', ''),
(262, 102, '_menu_item_type', 'post_type'),
(263, 102, '_menu_item_menu_item_parent', '0'),
(264, 102, '_menu_item_object_id', '82'),
(265, 102, '_menu_item_object', 'page'),
(266, 102, '_menu_item_target', ''),
(267, 102, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(268, 102, '_menu_item_xfn', ''),
(269, 102, '_menu_item_url', ''),
(271, 103, '_menu_item_type', 'post_type'),
(272, 103, '_menu_item_menu_item_parent', '0'),
(273, 103, '_menu_item_object_id', '66'),
(274, 103, '_menu_item_object', 'page'),
(275, 103, '_menu_item_target', ''),
(276, 103, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(277, 103, '_menu_item_xfn', ''),
(278, 103, '_menu_item_url', ''),
(280, 104, '_menu_item_type', 'post_type'),
(281, 104, '_menu_item_menu_item_parent', '0'),
(282, 104, '_menu_item_object_id', '64'),
(283, 104, '_menu_item_object', 'page'),
(284, 104, '_menu_item_target', ''),
(285, 104, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(286, 104, '_menu_item_xfn', ''),
(287, 104, '_menu_item_url', ''),
(289, 105, '_menu_item_type', 'post_type'),
(290, 105, '_menu_item_menu_item_parent', '0'),
(291, 105, '_menu_item_object_id', '58'),
(292, 105, '_menu_item_object', 'page'),
(293, 105, '_menu_item_target', ''),
(294, 105, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(295, 105, '_menu_item_xfn', ''),
(296, 105, '_menu_item_url', ''),
(299, 107, '_edit_last', '1'),
(300, 107, '_edit_lock', '1506882338:1'),
(301, 108, '_wp_attached_file', '2017/10/1200x630bb-e1506882407836.jpg'),
(302, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:320;s:6:\"height\";i:320;s:4:\"file\";s:37:\"2017/10/1200x630bb-e1506882407836.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"1200x630bb-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"1200x630bb-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"1200x630bb-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(303, 109, '_menu_item_type', 'post_type'),
(304, 109, '_menu_item_menu_item_parent', '0'),
(305, 109, '_menu_item_object_id', '107'),
(306, 109, '_menu_item_object', 'page'),
(307, 109, '_menu_item_target', ''),
(308, 109, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(309, 109, '_menu_item_xfn', ''),
(310, 109, '_menu_item_url', ''),
(311, 108, '_wp_attachment_backup_sizes', 'a:1:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:630;s:6:\"height\";i:630;s:4:\"file\";s:14:\"1200x630bb.jpg\";}}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-09-28 15:50:42', '2017-09-28 18:50:42', 'O diretório Acadêmico de Ciência da Computação e Sistemas de Informação (DACompSI) é a entidade estudantil que representa os estudantes de graduação e pós graduação em Ciência da Computação e Sistemas de informação. Coordenado por uma diretoria constituída (e eleita) por alunos dos cursos relacionados, tem como alguns de seus objetivos:\r\n<ul>\r\n 	<li>Representar os interesses do corpo discente perante os órgãos do DCC (Colegiados e Câmara);</li>\r\n 	<li>Promover atividades integradoras entre os alunos;</li>\r\n 	<li>Incentivar práticas de aprimoramento do conhecimento dos estudantes;</li>\r\n</ul>\r\nNossa sede do fica na sala <strong>2038</strong> do ICEx e qualquer um pode usufruir de seus recursos.\r\n\r\nSeja você calouro ou veterano dos cursos de CC ou SI, o D.A. também é seu, faça uma visita!\r\n\r\nFrequente o D.A., opine, contibua, participe!\r\n\r\nEsperamos você!', 'Quem Somos?', '', 'publish', 'open', 'open', '', 'quem-somos', '', '', '2017-10-01 14:46:40', '2017-10-01 17:46:40', '', 0, 'http://localhost/DA/?p=1', 0, 'post', '', 0),
(37, 1, '2017-09-30 15:22:44', '2017-09-30 18:22:44', '', 'fractais', '', 'inherit', 'open', 'closed', '', 'fractais', '', '', '2017-09-30 15:22:44', '2017-09-30 18:22:44', '', 0, 'http://localhost/DA/wp-content/uploads/2017/09/fractais.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2017-09-30 15:22:52', '2017-09-30 18:22:52', '', 'cropped-fractais.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-fractais-jpg', '', '', '2017-09-30 15:22:52', '2017-09-30 18:22:52', '', 0, 'http://localhost/DA/wp-content/uploads/2017/09/cropped-fractais.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2017-09-30 15:24:00', '2017-09-30 18:24:00', '{\n    \"twentyseventeen::header_image\": {\n        \"value\": \"http://localhost/DA/wp-content/uploads/2017/09/cropped-ciencia-da-computacao.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/DA/wp-content/uploads/2017/09/cropped-ciencia-da-computacao.jpg\",\n            \"thumbnail_url\": \"http://localhost/DA/wp-content/uploads/2017/09/cropped-ciencia-da-computacao.jpg\",\n            \"timestamp\": 1506795831277,\n            \"attachment_id\": 41,\n            \"width\": 2000,\n            \"height\": 1198\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0a3a4e34-03c1-4d60-b2b0-63095873b4ae', '', '', '2017-09-30 15:24:00', '2017-09-30 18:24:00', '', 0, 'http://localhost/DA/?p=39', 0, 'customize_changeset', '', 0),
(40, 1, '2017-09-30 15:23:42', '2017-09-30 18:23:42', '', 'ciencia-da-computacao', '', 'inherit', 'open', 'closed', '', 'ciencia-da-computacao', '', '', '2017-09-30 15:23:42', '2017-09-30 18:23:42', '', 0, 'http://localhost/DA/wp-content/uploads/2017/09/ciencia-da-computacao.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2017-09-30 15:23:50', '2017-09-30 18:23:50', '', 'cropped-ciencia-da-computacao.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-ciencia-da-computacao-jpg', '', '', '2017-09-30 15:23:50', '2017-09-30 18:23:50', '', 0, 'http://localhost/DA/wp-content/uploads/2017/09/cropped-ciencia-da-computacao.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2017-09-30 15:24:46', '2017-09-30 18:24:46', '{\n    \"blogdescription\": {\n        \"value\": \"Diret\\u00f3rio Acad\\u00eamico\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"site_icon\": {\n        \"value\": 43,\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '66bc7adc-8ec0-4726-96f0-022471786070', '', '', '2017-09-30 15:24:46', '2017-09-30 18:24:46', '', 0, 'http://localhost/DA/?p=42', 0, 'customize_changeset', '', 0),
(43, 1, '2017-09-30 15:24:40', '2017-09-30 18:24:40', 'http://localhost/DA/wp-content/uploads/2017/09/cropped-fractais-1.jpg', 'cropped-fractais-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-fractais-1-jpg', '', '', '2017-09-30 15:24:40', '2017-09-30 18:24:40', '', 0, 'http://localhost/DA/wp-content/uploads/2017/09/cropped-fractais-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2017-09-30 15:24:56', '2017-09-30 18:24:56', 'http://localhost/DA/wp-content/uploads/2017/09/cropped-fractais-2.jpg', 'cropped-fractais-2.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-fractais-2-jpg', '', '', '2017-09-30 15:24:56', '2017-09-30 18:24:56', '', 0, 'http://localhost/DA/wp-content/uploads/2017/09/cropped-fractais-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2017-09-30 15:27:52', '2017-09-30 18:27:52', '{\n    \"twentyseventeen::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"site_icon\": {\n        \"value\": 48,\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9df6b4a7-6ff6-4179-a018-599a2539660d', '', '', '2017-09-30 15:27:52', '2017-09-30 18:27:52', '', 0, 'http://localhost/DA/?p=45', 0, 'customize_changeset', '', 0),
(46, 1, '2017-09-30 15:26:50', '2017-09-30 18:26:50', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2017-09-30 15:26:50', '2017-09-30 18:26:50', '', 0, 'http://localhost/DA/wp-content/uploads/2017/09/download.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2017-09-30 15:27:30', '2017-09-30 18:27:30', '', 'UFMG-90-anos', '', 'inherit', 'open', 'closed', '', 'ufmg-90-anos', '', '', '2017-09-30 15:27:30', '2017-09-30 18:27:30', '', 0, 'http://localhost/DA/wp-content/uploads/2017/09/UFMG-90-anos.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2017-09-30 15:27:33', '2017-09-30 18:27:33', 'http://localhost/DA/wp-content/uploads/2017/09/cropped-UFMG-90-anos.png', 'cropped-UFMG-90-anos.png', '', 'inherit', 'open', 'closed', '', 'cropped-ufmg-90-anos-png', '', '', '2017-09-30 15:27:33', '2017-09-30 18:27:33', '', 0, 'http://localhost/DA/wp-content/uploads/2017/09/cropped-UFMG-90-anos.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2017-09-30 15:31:45', '2017-09-30 18:31:45', '{\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"value\": -2097174668,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"nav_menu[-2097174668]\": {\n        \"value\": {\n            \"name\": \"Quem Somos?\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": true\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-342382407]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Quem Somos?\",\n            \"url\": \"http://localhost/DA/QuemSomos?\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Quem Somos?\",\n            \"nav_menu_term_id\": -2097174668,\n            \"_invalid\": false,\n            \"type_label\": \"Link personalizado\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4a2c6a05-6eda-4617-b2b0-8f64756b8096', '', '', '2017-09-30 15:31:45', '2017-09-30 18:31:45', '', 0, 'http://localhost/DA/?p=49', 0, 'customize_changeset', '', 0),
(52, 1, '2017-09-30 15:34:38', '2017-09-30 18:34:38', '', 'Quem Somos?', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2017-09-30 15:34:38', '2017-09-30 18:34:38', '', 1, 'http://localhost/DA/2017/09/30/1-autosave-v1/', 0, 'revision', '', 0),
(53, 1, '2017-09-30 15:35:05', '2017-09-30 18:35:05', 'O diretório Acadêmico de C Diretiência da Computação e Sistemas de Informação (DACompSI) é a entidade estudantil que representa os estudantes de graduação e pós graduação em Ciência da Computação e Sistemas de informação. Coordenado por uma diretoria constituída (e eleita) por alunos dos cursos relacionados, tem como alguns de seus objetivos:\r\n<ul>\r\n 	<li>Representar os interesses do corpo discente perante os órgãos do DCC (Colegiados e Câmara);</li>\r\n 	<li>Promover atividades integradoras entre os alunos;</li>\r\n 	<li>Incentivar práticas de aprimoramento do conhecimento dos estudantes;</li>\r\n</ul>\r\nNossa sede do fica na sala <strong>2038</strong> do ICEx e qualquer um pode usufruir de seus recursos.\r\n\r\nSeja você calouro ou veterano dos cursos de CC ou SI, o D.A. também é seu, faça uma visita!\r\n\r\nFrequente o D.A., opine, contibua, participe!\r\n\r\nEsperamos você!', 'Quem Somos?', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-09-30 15:35:05', '2017-09-30 18:35:05', '', 1, 'http://localhost/DA/2017/09/30/1-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2017-09-30 15:43:24', '2017-09-30 18:43:24', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"recent-comments-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_recent-comments[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjM6IkZBUSI7czo2OiJudW1iZXIiO2k6Mzt9\",\n            \"title\": \"FAQ\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"53898e1e4b8c26aeb8a19b1a36b13146\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cfc6c8fc-aefe-46ee-a7a3-b27bb7f9f3a5', '', '', '2017-09-30 15:43:24', '2017-09-30 18:43:24', '', 0, 'http://localhost/DA/2017/09/30/cfc6c8fc-aefe-46ee-a7a3-b27bb7f9f3a5/', 0, 'customize_changeset', '', 0),
(58, 1, '2017-09-30 15:58:48', '2017-09-30 18:58:48', '<strong>Qualquer um pode ir no D.Acompsi?</strong>\r\n\r\nSim, todos podem são muito bem vindos para conhecer o D.A. Entretanto somente os alunos de Sistemas de Informação, Ciência da Computação e Matemática Computacional podem usufruir de nossas acomodações.\r\n\r\n<strong>Posso comprar blusas de qualquer curso pelo D.Acompsi ?</strong>\r\n\r\nCada D.A só vende blusas de seus cursos correspondentes.\r\n\r\n<strong>O que tem no D.A ?</strong>\r\n\r\nCada D.A tem suas particularidades, de acordo com a preferência dos seus integrantes. No nosso D.A é possível encontrar, venda de refrigerante, cerveja, blusas, etc. Temos 2 sofás, 2 mesas e algumas cadeiras para acomodação dos alunos. Também é possível alugar armários mensalmente, para guardar seus pertences.\r\n\r\n&nbsp;', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2017-09-30 15:58:48', '2017-09-30 18:58:48', '', 0, 'http://localhost/DA/?page_id=58', 0, 'page', '', 0),
(60, 1, '2017-09-30 15:58:48', '2017-09-30 18:58:48', '<strong>Qualquer um pode ir no D.Acompsi?</strong>\r\n\r\nSim, todos podem são muito bem vindos para conhecer o D.A. Entretanto somente os alunos de Sistemas de Informação, Ciência da Computação e Matemática Computacional podem usufruir de nossas acomodações.\r\n\r\n<strong>Posso comprar blusas de qualquer curso pelo D.Acompsi ?</strong>\r\n\r\nCada D.A só vende blusas de seus cursos correspondentes.\r\n\r\n<strong>O que tem no D.A ?</strong>\r\n\r\nCada D.A tem suas particularidades, de acordo com a preferência dos seus integrantes. No nosso D.A é possível encontrar, venda de refrigerante, cerveja, blusas, etc. Temos 2 sofás, 2 mesas e algumas cadeiras para acomodação dos alunos. Também é possível alugar armários mensalmente, para guardar seus pertences.\r\n\r\n&nbsp;', 'FAQ', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2017-09-30 15:58:48', '2017-09-30 18:58:48', '', 58, 'http://localhost/DA/2017/09/30/58-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2017-09-30 16:03:19', '2017-09-30 19:03:19', '{\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"nav_menu[2]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"value\": -837218238,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"nav_menu[-837218238]\": {\n        \"value\": {\n            \"name\": \"FAQ\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-969932778]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-1989145623]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-348417650]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-1692603308]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"FAQ\",\n            \"url\": \"http://http://localhost/DA/faq/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"FAQ\",\n            \"nav_menu_term_id\": -837218238,\n            \"_invalid\": false,\n            \"type_label\": \"Link personalizado\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '11e34732-738b-4f0c-aa02-bea337c92fca', '', '', '2017-09-30 16:03:19', '2017-09-30 19:03:19', '', 0, 'http://localhost/DA/?p=61', 0, 'customize_changeset', '', 0),
(63, 1, '2017-09-30 16:04:14', '2017-09-30 19:04:14', '{\n    \"nav_menu_item[62]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"FAQ\",\n            \"url\": \"localhost/DA/faq/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"FAQ\",\n            \"nav_menu_term_id\": 3,\n            \"_invalid\": false,\n            \"type_label\": \"Link personalizado\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e13ed497-51f4-429f-b441-e5120f4b2d09', '', '', '2017-09-30 16:04:14', '2017-09-30 19:04:14', '', 0, 'http://localhost/DA/?p=63', 0, 'customize_changeset', '', 0),
(64, 1, '2017-09-30 16:08:12', '2017-09-30 19:08:12', '<table>\r\n<tbody>\r\n<tr>\r\n<td></td>\r\n<td>Ciência da Computação</td>\r\n<td>Sistemas de Informação</td>\r\n</tr>\r\n<tr>\r\n<td>Coordenador</td>\r\n<td><a href=\"http://dcc.ufmg.br/dcc/?q=pt-br/node/239\">Renato Ferreira</a></td>\r\n<td><a href=\"http://dcc.ufmg.br/dcc/?q=pt-br/node/156\">Clodoveu</a></td>\r\n</tr>\r\n<tr>\r\n<td>Subcoordenador</td>\r\n<td><a href=\"http://dcc.ufmg.br/dcc/?q=pt-br/node/225\">Marco Túlio</a></td>\r\n<td><span id=\"yui_3_13_0_3_1438560479880_379\" class=\"il\">Luiz</span> <span class=\"il\">Alex</span> Silva Saraiva</td>\r\n</tr>\r\n<tr>\r\n<td>Secretaria</td>\r\n<td>Patrícia (31)3409-7547</td>\r\n<td>Lydia (31)3409-5806</td>\r\n</tr>\r\n<tr>\r\n<td>Horário de funcionamento dos colegiados</td>\r\n<td>08:00-12:00 | 14:00-17:00</td>\r\n<td> 15:00-21:00</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Informações Adicionais', '', 'publish', 'closed', 'closed', '', 'informacoes', '', '', '2017-09-30 16:08:12', '2017-09-30 19:08:12', '', 0, 'http://localhost/DA/?page_id=64', 0, 'page', '', 0),
(65, 1, '2017-09-30 16:08:12', '2017-09-30 19:08:12', '<table>\r\n<tbody>\r\n<tr>\r\n<td></td>\r\n<td>Ciência da Computação</td>\r\n<td>Sistemas de Informação</td>\r\n</tr>\r\n<tr>\r\n<td>Coordenador</td>\r\n<td><a href=\"http://dcc.ufmg.br/dcc/?q=pt-br/node/239\">Renato Ferreira</a></td>\r\n<td><a href=\"http://dcc.ufmg.br/dcc/?q=pt-br/node/156\">Clodoveu</a></td>\r\n</tr>\r\n<tr>\r\n<td>Subcoordenador</td>\r\n<td><a href=\"http://dcc.ufmg.br/dcc/?q=pt-br/node/225\">Marco Túlio</a></td>\r\n<td><span id=\"yui_3_13_0_3_1438560479880_379\" class=\"il\">Luiz</span> <span class=\"il\">Alex</span> Silva Saraiva</td>\r\n</tr>\r\n<tr>\r\n<td>Secretaria</td>\r\n<td>Patrícia (31)3409-7547</td>\r\n<td>Lydia (31)3409-5806</td>\r\n</tr>\r\n<tr>\r\n<td>Horário de funcionamento dos colegiados</td>\r\n<td>08:00-12:00 | 14:00-17:00</td>\r\n<td> 15:00-21:00</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Informações Adicionais', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2017-09-30 16:08:12', '2017-09-30 19:08:12', '', 64, 'http://localhost/DA/2017/09/30/64-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2017-09-30 16:13:52', '2017-09-30 19:13:52', '<h1></h1>\r\n<img class=\"wp-image-67 alignnone\" src=\"http://localhost/DA/wp-content/uploads/2017/09/unnamed.png\" alt=\"\" width=\"58\" height=\"58\" />\r\n\r\n<a href=\"https://www.facebook.com/DACompSI\"><strong>Facebook</strong></a>', 'Rede Social', '', 'publish', 'closed', 'closed', '', 'rede-social', '', '', '2017-09-30 16:21:52', '2017-09-30 19:21:52', '', 0, 'http://localhost/DA/?page_id=66', 0, 'page', '', 0),
(67, 1, '2017-09-30 16:11:52', '2017-09-30 19:11:52', '', 'unnamed', '', 'inherit', 'open', 'closed', '', 'unnamed', '', '', '2017-09-30 16:11:52', '2017-09-30 19:11:52', '', 66, 'http://localhost/DA/wp-content/uploads/2017/09/unnamed.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2017-09-30 16:13:52', '2017-09-30 19:13:52', '&nbsp;\r\n\r\n<img class=\"wp-image-67 alignnone\" src=\"http://localhost/DA/wp-content/uploads/2017/09/unnamed.png\" alt=\"\" width=\"58\" height=\"58\" />\r\n\r\n<a href=\"https://www.facebook.com/DACompSI\"><strong>Facebook</strong></a>', 'Rede Social', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2017-09-30 16:13:52', '2017-09-30 19:13:52', '', 66, 'http://localhost/DA/2017/09/30/66-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2017-09-30 16:14:43', '2017-09-30 19:14:43', '{\n    \"nav_menu[-452649971]\": {\n        \"value\": {\n            \"name\": \"Rede Social\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-615168663]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Rede Social\",\n            \"url\": \"http://localhost/DA/rede-social/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Rede Social\",\n            \"nav_menu_term_id\": -452649971,\n            \"_invalid\": false,\n            \"type_label\": \"Link personalizado\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fe2e4ab8-a508-461c-9709-afc3c9cee06e', '', '', '2017-09-30 16:14:43', '2017-09-30 19:14:43', '', 0, 'http://localhost/DA/?p=69', 0, 'customize_changeset', '', 0),
(71, 1, '2017-09-30 16:15:27', '2017-09-30 19:15:27', '{\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"nav_menu[4]\": {\n        \"value\": {\n            \"name\": \"Rede Social\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": true\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ab1b6001-fdd0-45e2-8864-1f8fc87b1439', '', '', '2017-09-30 16:15:27', '2017-09-30 19:15:27', '', 0, 'http://localhost/DA/2017/09/30/ab1b6001-fdd0-45e2-8864-1f8fc87b1439/', 0, 'customize_changeset', '', 0),
(72, 1, '2017-09-30 16:15:34', '2017-09-30 19:15:34', '{\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"value\": 3,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9c4664d2-b6df-4ce6-abf6-05eacc5226c7', '', '', '2017-09-30 16:15:34', '2017-09-30 19:15:34', '', 0, 'http://localhost/DA/2017/09/30/9c4664d2-b6df-4ce6-abf6-05eacc5226c7/', 0, 'customize_changeset', '', 0),
(73, 1, '2017-09-30 16:16:04', '2017-09-30 19:16:04', '{\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"value\": 4,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '04f3deb3-a7e1-4365-9c32-dc9f8c930098', '', '', '2017-09-30 16:16:04', '2017-09-30 19:16:04', '', 0, 'http://localhost/DA/2017/09/30/04f3deb3-a7e1-4365-9c32-dc9f8c930098/', 0, 'customize_changeset', '', 0),
(81, 1, '2017-09-30 16:21:52', '2017-09-30 19:21:52', '<h1></h1>\r\n<img class=\"wp-image-67 alignnone\" src=\"http://localhost/DA/wp-content/uploads/2017/09/unnamed.png\" alt=\"\" width=\"58\" height=\"58\" />\r\n\r\n<a href=\"https://www.facebook.com/DACompSI\"><strong>Facebook</strong></a>', 'Rede Social', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2017-09-30 16:21:52', '2017-09-30 19:21:52', '', 66, 'http://localhost/DA/2017/09/30/66-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2017-09-30 16:23:51', '2017-09-30 19:23:51', '<img class=\"alignnone size-medium wp-image-95\" src=\"http://localhost/DA/wp-content/uploads/2017/09/2016-03-09-15.17.05-1020x574-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" /><img class=\"alignnone size-medium wp-image-94\" src=\"http://localhost/DA/wp-content/uploads/2017/09/2016-03-09-15.10.41-1020x574-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" /><img class=\"alignnone size-medium wp-image-93\" src=\"http://localhost/DA/wp-content/uploads/2017/09/2016-03-08-16.15.41-480x280-300x175.jpg\" alt=\"\" width=\"300\" height=\"175\" /><img class=\"alignnone size-medium wp-image-92\" src=\"http://localhost/DA/wp-content/uploads/2017/09/2016-03-07-14.20.22-480x280-300x175.jpg\" alt=\"\" width=\"300\" height=\"175\" /><img class=\"alignnone size-medium wp-image-94\" src=\"http://localhost/DA/wp-content/uploads/2017/09/2016-03-09-15.10.41-1020x574-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" />', 'Fotos', '', 'publish', 'closed', 'closed', '', 'fotos', '', '', '2017-09-30 16:33:04', '2017-09-30 19:33:04', '', 0, 'http://localhost/DA/?page_id=82', 0, 'page', '', 0),
(84, 1, '2017-09-30 16:23:51', '2017-09-30 19:23:51', '<div id=\"content\" class=\"site-content\">\r\n<div id=\"primary\" class=\"content-area\"><article id=\"post-115\" class=\"post-115 page type-page status-publish hentry\">\r\n<div class=\"entry-inner\">\r\n<div class=\"entry-content\">\r\n<div id=\"gallery-1\" class=\"gallery galleryid-115 gallery-columns-3 gallery-size-thumbnail masonry\">\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=167\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-07-14.08.23-480x280.jpg\" alt=\"2016-03-07 14.08.23\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=168\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-07-14.20.22-480x280.jpg\" alt=\"2016-03-07 14.20.22\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=169\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-07-14.36.21-480x280.jpg\" alt=\"2016-03-07 14.36.21\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=170\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-07-14.39.57-480x280.jpg\" alt=\"2016-03-07 14.39.57\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=171\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-07-14.46.14-480x280.jpg\" alt=\"2016-03-07 14.46.14\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=172\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-07-14.46.16-480x280.jpg\" alt=\"2016-03-07 14.46.16\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=173\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-07-14.54.51-480x280.jpg\" alt=\"2016-03-07 14.54.51\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=174\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-07-15.19.30-480x280.jpg\" alt=\"2016-03-07 15.19.30\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=175\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-07-15.32.07-480x280.jpg\" alt=\"2016-03-07 15.32.07\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=176\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-07-18.33.10-480x280.jpg\" alt=\"2016-03-07 18.33.10\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=177\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-07-18.50.56-480x280.jpg\" alt=\"2016-03-07 18.50.56\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=178\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-07-19.35.30-480x280.jpg\" alt=\"2016-03-07 19.35.30\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=179\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-08-14.18.39-480x280.jpg\" alt=\"2016-03-08 14.18.39\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=180\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-08-14.19.54-480x280.jpg\" alt=\"2016-03-08 14.19.54\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=181\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-08-14.27.44-480x280.jpg\" alt=\"2016-03-08 14.27.44\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=182\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-08-14.46.26-480x280.jpg\" alt=\"2016-03-08 14.46.26\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=183\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-08-14.51.27-480x280.jpg\" alt=\"2016-03-08 14.51.27\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=184\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-08-14.58.51-480x280.jpg\" alt=\"2016-03-08 14.58.51\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=185\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-08-15.17.26-480x280.jpg\" alt=\"2016-03-08 15.17.26\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=186\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-08-15.35.34-480x280.jpg\" alt=\"2016-03-08 15.35.34\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=187\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-08-16.14.30-480x280.jpg\" alt=\"2016-03-08 16.14.30\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=188\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-08-16.15.41-480x280.jpg\" alt=\"2016-03-08 16.15.41\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=189\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-08-16.44.49-480x280.jpg\" alt=\"2016-03-08 16.44.49\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=190\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-08-18.24.23-480x280.jpg\" alt=\"2016-03-08 18.24.23\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=191\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-08-18.29.27-480x280.jpg\" alt=\"2016-03-08 18.29.27\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=192\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-09-15.07.29-480x280.jpg\" alt=\"2016-03-09 15.07.29\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=193\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-09-15.07.43-480x280.jpg\" alt=\"2016-03-09 15.07.43\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=194\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-09-15.07.55-480x280.jpg\" alt=\"2016-03-09 15.07.55\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=195\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-09-15.08.38-480x280.jpg\" alt=\"2016-03-09 15.08.38\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=196\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-09-15.09.46-480x280.jpg\" alt=\"2016-03-09 15.09.46\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=197\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-09-15.10.41-480x280.jpg\" alt=\"2016-03-09 15.10.41\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=198\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-09-15.15.55-480x280.jpg\" alt=\"2016-03-09 15.15.55\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=199\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-09-15.17.05-480x280.jpg\" alt=\"2016-03-09 15.17.05\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=200\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-09-15.17.12-480x280.jpg\" alt=\"2016-03-09 15.17.12\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=201\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-09-15.40.42-480x280.jpg\" alt=\"2016-03-09 15.40.42\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=202\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-09-15.40.59-480x280.jpg\" alt=\"2016-03-09 15.40.59\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=203\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-09-15.41.22-480x280.jpg\" alt=\"2016-03-09 15.41.22\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=204\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-09-15.41.29-480x280.jpg\" alt=\"2016-03-09 15.41.29\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=205\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-09-15.41.30-480x280.jpg\" alt=\"2016-03-09 15.41.30\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=206\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-09-15.41.48-480x280.jpg\" alt=\"2016-03-09 15.41.48\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=207\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-09-15.43.18-480x280.jpg\" alt=\"2016-03-09 15.43.18\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=208\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-09-15.46.22-480x280.jpg\" alt=\"2016-03-09 15.46.22\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=209\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-09-16.50.48-480x280.jpg\" alt=\"2016-03-09 16.50.48\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=210\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-09-17.08.12-480x280.jpg\" alt=\"2016-03-09 17.08.12\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=211\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-09-17.08.16-480x280.jpg\" alt=\"2016-03-09 17.08.16\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=212\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-09-17.08.23-480x280.jpg\" alt=\"2016-03-09 17.08.23\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=213\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-09-17.10.30-480x280.jpg\" alt=\"2016-03-09 17.10.30\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=214\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-09-17.24.36-480x280.jpg\" alt=\"2016-03-09 17.24.36\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=215\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-09-17.25.01-480x280.jpg\" alt=\"2016-03-09 17.25.01\" width=\"480\" height=\"280\" /></a></div></figure>\r\n</div>\r\n</div>\r\n</div>\r\n</article></div>\r\n</div>\r\n<footer id=\"colophon\" class=\"site-footer\">\r\n<div class=\"site-footer-area footer-area-site-info\"></div>\r\n</footer>', 'Fotos', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2017-09-30 16:23:51', '2017-09-30 19:23:51', '', 82, 'http://localhost/DA/2017/09/30/82-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2017-09-30 16:32:28', '2017-09-30 19:32:28', '<img class=\"alignnone size-medium wp-image-95\" src=\"http://localhost/DA/wp-content/uploads/2017/09/2016-03-09-15.17.05-1020x574-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" /><img class=\"alignnone size-medium wp-image-94\" src=\"http://localhost/DA/wp-content/uploads/2017/09/2016-03-09-15.10.41-1020x574-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" />', 'Fotos', '', 'inherit', 'closed', 'closed', '', '82-autosave-v1', '', '', '2017-09-30 16:32:28', '2017-09-30 19:32:28', '', 82, 'http://localhost/DA/2017/09/30/82-autosave-v1/', 0, 'revision', '', 0),
(87, 1, '2017-09-30 16:25:52', '2017-09-30 19:25:52', '<div id=\"content\" class=\"site-content\"></div>\r\n<footer id=\"colophon\" class=\"site-footer\">\r\n<div class=\"site-footer-area footer-area-site-info\">\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=206\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-09-15.41.48-480x280.jpg\" alt=\"2016-03-09 15.41.48\" width=\"480\" height=\"280\" /></a></div>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=182\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-08-14.46.26-480x280.jpg\" alt=\"2016-03-08 14.46.26\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=183\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-08-14.51.27-480x280.jpg\" alt=\"2016-03-08 14.51.27\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=184\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-08-14.58.51-480x280.jpg\" alt=\"2016-03-08 14.58.51\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=185\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-08-15.17.26-480x280.jpg\" alt=\"2016-03-08 15.17.26\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=186\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-08-15.35.34-480x280.jpg\" alt=\"2016-03-08 15.35.34\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=187\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-08-16.14.30-480x280.jpg\" alt=\"2016-03-08 16.14.30\" width=\"480\" height=\"280\" /></a></div></figure>\r\n</figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=207\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-09-15.43.18-480x280.jpg\" alt=\"2016-03-09 15.43.18\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=208\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-09-15.46.22-480x280.jpg\" alt=\"2016-03-09 15.46.22\" width=\"480\" height=\"280\" /></a>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=188\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-08-16.15.41-480x280.jpg\" alt=\"2016-03-08 16.15.41\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=189\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-08-16.44.49-480x280.jpg\" alt=\"2016-03-08 16.44.49\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=190\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-08-18.24.23-480x280.jpg\" alt=\"2016-03-08 18.24.23\" width=\"480\" height=\"280\" /></a></div></figure>\r\n</div></figure>\r\n</div>\r\n</footer>', 'Fotos', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2017-09-30 16:25:52', '2017-09-30 19:25:52', '', 82, 'http://localhost/DA/2017/09/30/82-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(88, 1, '2017-09-30 16:28:20', '2017-09-30 19:28:20', '<div id=\"content\" class=\"site-content\"> Primeira Semana Recepção de Calouros\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=168\"><img class=\"attachment-thumbnail alignleft\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-07-14.20.22-480x280.jpg\" alt=\"2016-03-07 14.20.22\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=169\"><img class=\"attachment-thumbnail alignleft\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-07-14.36.21-480x280.jpg\" alt=\"2016-03-07 14.36.21\" width=\"480\" height=\"280\" /></a></div></figure>\r\n</div>\r\n<footer id=\"colophon\" class=\"site-footer\">\r\n<div class=\"site-footer-area footer-area-site-info\">\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\">\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=197\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-09-15.10.41-480x280.jpg\" alt=\"2016-03-09 15.10.41\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=198\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-09-15.15.55-480x280.jpg\" alt=\"2016-03-09 15.15.55\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=199\"><img class=\"attachment-thumbnail\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-09-15.17.05-480x280.jpg\" alt=\"2016-03-09 15.17.05\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\"></figure>\r\n</div></figure>\r\n</div>\r\n</footer>', 'Fotos', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2017-09-30 16:28:20', '2017-09-30 19:28:20', '', 82, 'http://localhost/DA/2017/09/30/82-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2017-09-30 16:29:02', '2017-09-30 19:29:02', '<div id=\"content\" class=\"site-content\">\r\n\r\n Primeira Semana Recepção de Calouros\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=168\"><img class=\"attachment-thumbnail alignleft\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-07-14.20.22-480x280.jpg\" alt=\"2016-03-07 14.20.22\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=169\"><img class=\"attachment-thumbnail alignleft\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-07-14.36.21-480x280.jpg\" alt=\"2016-03-07 14.36.21\" width=\"480\" height=\"280\" /></a><span style=\"font-size: 1rem;\"></span></div></figure>\r\n</div>\r\n<footer id=\"colophon\" class=\"site-footer\">\r\n<div class=\"site-footer-area footer-area-site-info\"></div>\r\n</footer>', 'Fotos', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2017-09-30 16:29:02', '2017-09-30 19:29:02', '', 82, 'http://localhost/DA/2017/09/30/82-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2017-09-30 16:29:46', '2017-09-30 19:29:46', '<div id=\"content\" class=\"site-content\">\r\n\r\n Primeira Semana Recepção de Calouros\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=168\"><img class=\"attachment-thumbnail alignleft\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-07-14.20.22-480x280.jpg\" alt=\"2016-03-07 14.20.22\" width=\"480\" height=\"280\" /></a></div></figure>\r\n<figure class=\"gallery-item masonry-brick\">\r\n<div class=\"gallery-icon landscape\"><a href=\"http://www.dacompsi.dcc.ufmg.br/web/?attachment_id=169\"><img class=\"attachment-thumbnail alignleft\" src=\"http://www.dacompsi.dcc.ufmg.br/web/wp-content/uploads/2015/08/2016-03-07-14.36.21-480x280.jpg\" alt=\"2016-03-07 14.36.21\" width=\"480\" height=\"280\" /></a></div></figure>\r\n</div>\r\n<footer id=\"colophon\" class=\"site-footer\">\r\n<div class=\"site-footer-area footer-area-site-info\"></div>\r\n</footer>', 'Fotos', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2017-09-30 16:29:46', '2017-09-30 19:29:46', '', 82, 'http://localhost/DA/2017/09/30/82-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2017-09-30 16:30:27', '2017-09-30 19:30:27', '', 'Fotos', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2017-09-30 16:30:27', '2017-09-30 19:30:27', '', 82, 'http://localhost/DA/2017/09/30/82-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2017-09-30 16:31:25', '2017-09-30 19:31:25', '', '2016-03-07-14.20.22-480x280', '', 'inherit', 'open', 'closed', '', '2016-03-07-14-20-22-480x280', '', '', '2017-09-30 16:31:25', '2017-09-30 19:31:25', '', 82, 'http://localhost/DA/wp-content/uploads/2017/09/2016-03-07-14.20.22-480x280.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2017-09-30 16:31:25', '2017-09-30 19:31:25', '', '2016-03-08-16.15.41-480x280', '', 'inherit', 'open', 'closed', '', '2016-03-08-16-15-41-480x280', '', '', '2017-09-30 16:31:25', '2017-09-30 19:31:25', '', 82, 'http://localhost/DA/wp-content/uploads/2017/09/2016-03-08-16.15.41-480x280.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2017-09-30 16:31:26', '2017-09-30 19:31:26', '', '2016-03-09-15.10.41-1020x574', '', 'inherit', 'open', 'closed', '', '2016-03-09-15-10-41-1020x574', '', '', '2017-09-30 16:31:26', '2017-09-30 19:31:26', '', 82, 'http://localhost/DA/wp-content/uploads/2017/09/2016-03-09-15.10.41-1020x574.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2017-09-30 16:31:27', '2017-09-30 19:31:27', '', '2016-03-09-15.17.05-1020x574', '', 'inherit', 'open', 'closed', '', '2016-03-09-15-17-05-1020x574', '', '', '2017-09-30 16:31:27', '2017-09-30 19:31:27', '', 82, 'http://localhost/DA/wp-content/uploads/2017/09/2016-03-09-15.17.05-1020x574.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2017-09-30 16:33:04', '2017-09-30 19:33:04', '<img class=\"alignnone size-medium wp-image-95\" src=\"http://localhost/DA/wp-content/uploads/2017/09/2016-03-09-15.17.05-1020x574-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" /><img class=\"alignnone size-medium wp-image-94\" src=\"http://localhost/DA/wp-content/uploads/2017/09/2016-03-09-15.10.41-1020x574-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" /><img class=\"alignnone size-medium wp-image-93\" src=\"http://localhost/DA/wp-content/uploads/2017/09/2016-03-08-16.15.41-480x280-300x175.jpg\" alt=\"\" width=\"300\" height=\"175\" /><img class=\"alignnone size-medium wp-image-92\" src=\"http://localhost/DA/wp-content/uploads/2017/09/2016-03-07-14.20.22-480x280-300x175.jpg\" alt=\"\" width=\"300\" height=\"175\" /><img class=\"alignnone size-medium wp-image-94\" src=\"http://localhost/DA/wp-content/uploads/2017/09/2016-03-09-15.10.41-1020x574-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" />', 'Fotos', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2017-09-30 16:33:04', '2017-09-30 19:33:04', '', 82, 'http://localhost/DA/2017/09/30/82-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2017-09-30 16:41:33', '2017-09-30 19:41:33', '<header class=\"entry-header\">\r\n<h1 class=\"entry-title\">CONTATO</h1>\r\n</header>\r\n<div class=\"entry-content\">\r\n<div id=\"_response_messages_accua-form___accua-form__1_59cff353533d4\" class=\"accua-form-messages\"></div>\r\n<form id=\"accua-form___accua-form__1_59cff353533d4\" class=\"accua-form __accua-form__1 accua-form-view-sidebyside\" action=\"http://www.dacompsi.dcc.ufmg.br/web/wp-admin/admin-ajax.php?action=accua_form_submit\" method=\"post\" novalidate=\"novalidate\" target=\"submit_target_accua_form___accua_form__1_59cff353533d4\">\r\n<div class=\"pfbc-element-0 pfbc-element\">\r\n<div class=\"pfbc-label\"><label for=\"accua-form___accua-form__1_59cff353533d4-element-12\">Nome <strong>*</strong></label></div>\r\n<div class=\"pfbc-fieldwrap\"><input id=\"accua-form___accua-form__1_59cff353533d4-element-12\" class=\"pfbc-textbox accuaforms-field-required accuaform-fieldname-first_name accuaform-fieldtype-textfield\" name=\"first_name\" type=\"text\" value=\"\" /></div>\r\n<div class=\"pfbc-elementbottom\"></div>\r\n</div>\r\n<div class=\"pfbc-element-1 pfbc-element\">\r\n<div class=\"pfbc-label\"><label for=\"accua-form___accua-form__1_59cff353533d4-element-13\">Email <strong>*</strong></label></div>\r\n<div class=\"pfbc-fieldwrap\"><input id=\"accua-form___accua-form__1_59cff353533d4-element-13\" class=\"pfbc-textbox accuaforms-field-required accuaform-fieldname-email accuaform-fieldtype-autoreply_email\" name=\"email\" type=\"email\" value=\"\" /></div>\r\n<div class=\"pfbc-elementbottom\"></div>\r\n</div>\r\n<div class=\"pfbc-element-2 pfbc-element\">\r\n<div class=\"pfbc-label\"><label for=\"accua-form___accua-form__1_59cff353533d4-element-14\">Mensagem <strong>*</strong></label></div>\r\n<div class=\"pfbc-fieldwrap\"><textarea id=\"accua-form___accua-form__1_59cff353533d4-element-14\" class=\"pfbc-textarea accuaforms-field-required accuaform-fieldname-message accuaform-fieldtype-textarea\" cols=\"50\" name=\"message\" rows=\"5\"></textarea></div>\r\n<div class=\"pfbc-elementbottom\"></div>\r\n</div>\r\n<div class=\"pfbc-element pfbc-buttons\"><button id=\"accua-form___accua-form__1_59cff353533d4-element-15\" name=\"\" type=\"submit\" value=\"Submit\">Submit</button></div>\r\n</form></div>', 'Contato', '', 'publish', 'closed', 'closed', '', 'contato', '', '', '2017-09-30 16:41:33', '2017-09-30 19:41:33', '', 0, 'http://localhost/DA/?page_id=97', 0, 'page', '', 0),
(99, 1, '2017-09-30 16:41:33', '2017-09-30 19:41:33', '<header class=\"entry-header\">\r\n<h1 class=\"entry-title\">CONTATO</h1>\r\n</header>\r\n<div class=\"entry-content\">\r\n<div id=\"_response_messages_accua-form___accua-form__1_59cff353533d4\" class=\"accua-form-messages\"></div>\r\n<form id=\"accua-form___accua-form__1_59cff353533d4\" class=\"accua-form __accua-form__1 accua-form-view-sidebyside\" action=\"http://www.dacompsi.dcc.ufmg.br/web/wp-admin/admin-ajax.php?action=accua_form_submit\" method=\"post\" novalidate=\"novalidate\" target=\"submit_target_accua_form___accua_form__1_59cff353533d4\">\r\n<div class=\"pfbc-element-0 pfbc-element\">\r\n<div class=\"pfbc-label\"><label for=\"accua-form___accua-form__1_59cff353533d4-element-12\">Nome <strong>*</strong></label></div>\r\n<div class=\"pfbc-fieldwrap\"><input id=\"accua-form___accua-form__1_59cff353533d4-element-12\" class=\"pfbc-textbox accuaforms-field-required accuaform-fieldname-first_name accuaform-fieldtype-textfield\" name=\"first_name\" type=\"text\" value=\"\" /></div>\r\n<div class=\"pfbc-elementbottom\"></div>\r\n</div>\r\n<div class=\"pfbc-element-1 pfbc-element\">\r\n<div class=\"pfbc-label\"><label for=\"accua-form___accua-form__1_59cff353533d4-element-13\">Email <strong>*</strong></label></div>\r\n<div class=\"pfbc-fieldwrap\"><input id=\"accua-form___accua-form__1_59cff353533d4-element-13\" class=\"pfbc-textbox accuaforms-field-required accuaform-fieldname-email accuaform-fieldtype-autoreply_email\" name=\"email\" type=\"email\" value=\"\" /></div>\r\n<div class=\"pfbc-elementbottom\"></div>\r\n</div>\r\n<div class=\"pfbc-element-2 pfbc-element\">\r\n<div class=\"pfbc-label\"><label for=\"accua-form___accua-form__1_59cff353533d4-element-14\">Mensagem <strong>*</strong></label></div>\r\n<div class=\"pfbc-fieldwrap\"><textarea id=\"accua-form___accua-form__1_59cff353533d4-element-14\" class=\"pfbc-textarea accuaforms-field-required accuaform-fieldname-message accuaform-fieldtype-textarea\" cols=\"50\" name=\"message\" rows=\"5\"></textarea></div>\r\n<div class=\"pfbc-elementbottom\"></div>\r\n</div>\r\n<div class=\"pfbc-element pfbc-buttons\"><button id=\"accua-form___accua-form__1_59cff353533d4-element-15\" name=\"\" type=\"submit\" value=\"Submit\">Submit</button></div>\r\n</form></div>', 'Contato', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2017-09-30 16:41:33', '2017-09-30 19:41:33', '', 97, 'http://localhost/DA/2017/09/30/97-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2017-10-01 14:44:45', '2017-10-01 17:44:45', ' ', '', '', 'publish', 'closed', 'closed', '', '101', '', '', '2017-10-01 14:44:45', '2017-10-01 17:44:45', '', 0, 'http://localhost/DA/?p=101', 1, 'nav_menu_item', '', 0),
(102, 1, '2017-10-01 14:44:45', '2017-10-01 17:44:45', ' ', '', '', 'publish', 'closed', 'closed', '', '102', '', '', '2017-10-01 14:44:45', '2017-10-01 17:44:45', '', 0, 'http://localhost/DA/?p=102', 2, 'nav_menu_item', '', 0),
(103, 1, '2017-10-01 14:44:46', '2017-10-01 17:44:46', ' ', '', '', 'publish', 'closed', 'closed', '', '103', '', '', '2017-10-01 14:44:46', '2017-10-01 17:44:46', '', 0, 'http://localhost/DA/?p=103', 3, 'nav_menu_item', '', 0),
(104, 1, '2017-10-01 14:44:46', '2017-10-01 17:44:46', ' ', '', '', 'publish', 'closed', 'closed', '', '104', '', '', '2017-10-01 14:44:46', '2017-10-01 17:44:46', '', 0, 'http://localhost/DA/?p=104', 4, 'nav_menu_item', '', 0),
(105, 1, '2017-10-01 14:44:47', '2017-10-01 17:44:47', ' ', '', '', 'publish', 'closed', 'closed', '', '105', '', '', '2017-10-01 14:44:47', '2017-10-01 17:44:47', '', 0, 'http://localhost/DA/?p=105', 5, 'nav_menu_item', '', 0),
(106, 1, '2017-10-01 14:46:40', '2017-10-01 17:46:40', 'O diretório Acadêmico de Ciência da Computação e Sistemas de Informação (DACompSI) é a entidade estudantil que representa os estudantes de graduação e pós graduação em Ciência da Computação e Sistemas de informação. Coordenado por uma diretoria constituída (e eleita) por alunos dos cursos relacionados, tem como alguns de seus objetivos:\r\n<ul>\r\n 	<li>Representar os interesses do corpo discente perante os órgãos do DCC (Colegiados e Câmara);</li>\r\n 	<li>Promover atividades integradoras entre os alunos;</li>\r\n 	<li>Incentivar práticas de aprimoramento do conhecimento dos estudantes;</li>\r\n</ul>\r\nNossa sede do fica na sala <strong>2038</strong> do ICEx e qualquer um pode usufruir de seus recursos.\r\n\r\nSeja você calouro ou veterano dos cursos de CC ou SI, o D.A. também é seu, faça uma visita!\r\n\r\nFrequente o D.A., opine, contibua, participe!\r\n\r\nEsperamos você!', 'Quem Somos?', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-10-01 14:46:40', '2017-10-01 17:46:40', '', 1, 'http://localhost/DA/2017/10/01/1-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2017-10-01 15:24:14', '2017-10-01 18:24:14', 'O DAcompsi é localizado no prédio de ciências exatas da UFMG campus pampulha. Sala 2038.\r\n\r\n<img class=\"alignnone wp-image-108\" src=\"http://localhost/DA/wp-content/uploads/2017/10/1200x630bb-300x300.jpg\" alt=\"\" width=\"170\" height=\"170\" />\r\n\r\n<a href=\"https://www.google.com.br/maps/place/Instituto+de+Ci%C3%AAncias+Exatas/@-19.8691265,-43.9669231,17z/data=!4m12!1m6!3m5!1s0xa690f4847329c5:0xac57002aecee9c51!2sInstituto+de+Ci%C3%AAncias+Exatas!8m2!3d-19.8691265!4d-43.9647344!3m4!1s0xa690f4847329c5:0xac57002aecee9c51!8m2!3d-19.8691265!4d-43.9647344\">Google Maps</a>', 'Localização', '', 'publish', 'closed', 'closed', '', '107-2', '', '', '2017-10-01 15:27:58', '2017-10-01 18:27:58', '', 0, 'http://localhost/DA/?page_id=107', 0, 'page', '', 0),
(108, 1, '2017-10-01 15:23:10', '2017-10-01 18:23:10', '', '1200x630bb', '', 'inherit', 'open', 'closed', '', '1200x630bb', '', '', '2017-10-01 15:23:10', '2017-10-01 18:23:10', '', 107, 'http://localhost/DA/wp-content/uploads/2017/10/1200x630bb.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2017-10-01 15:24:14', '2017-10-01 18:24:14', ' ', '', '', 'publish', 'closed', 'closed', '', '109', '', '', '2017-10-01 15:24:14', '2017-10-01 18:24:14', '', 0, 'http://localhost/DA/2017/10/01/109/', 6, 'nav_menu_item', '', 0),
(110, 1, '2017-10-01 15:24:14', '2017-10-01 18:24:14', '&nbsp;\r\n\r\n<img class=\"alignnone  wp-image-108\" src=\"http://localhost/DA/wp-content/uploads/2017/10/1200x630bb-300x300.jpg\" alt=\"\" width=\"213\" height=\"213\" />\r\n\r\n<a href=\"https://www.google.com.br/maps/place/Instituto+de+Ci%C3%AAncias+Exatas/@-19.8691265,-43.9669231,17z/data=!4m12!1m6!3m5!1s0xa690f4847329c5:0xac57002aecee9c51!2sInstituto+de+Ci%C3%AAncias+Exatas!8m2!3d-19.8691265!4d-43.9647344!3m4!1s0xa690f4847329c5:0xac57002aecee9c51!8m2!3d-19.8691265!4d-43.9647344\">Google Maps</a>', '', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2017-10-01 15:24:14', '2017-10-01 18:24:14', '', 107, 'http://localhost/DA/2017/10/01/107-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2017-10-01 15:27:00', '2017-10-01 18:27:00', 'O DAcompsi é localizado no prédio de ciências exatas da UFMG campus pampulha. Sala 2038.\n\n<img class=\"alignnone wp-image-108 size-medium\" src=\"http://localhost/DA/wp-content/uploads/2017/10/1200x630bb-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\n\n<a href=\"https://www.google.com.br/maps/place/Instituto+de+Ci%C3%AAncias+Exatas/@-19.8691265,-43.9669231,17z/data=!4m12!1m6!3m5!1s0xa690f4847329c5:0xac57002aecee9c51!2sInstituto+de+Ci%C3%AAncias+Exatas!8m2!3d-19.8691265!4d-43.9647344!3m4!1s0xa690f4847329c5:0xac57002aecee9c51!8m2!3d-19.8691265!4d-43.9647344\">Google Maps</a>', '', '', 'inherit', 'closed', 'closed', '', '107-autosave-v1', '', '', '2017-10-01 15:27:00', '2017-10-01 18:27:00', '', 107, 'http://localhost/DA/2017/10/01/107-autosave-v1/', 0, 'revision', '', 0),
(112, 1, '2017-10-01 15:25:59', '2017-10-01 18:25:59', 'O DAcompsi é localizado no prédio de ciências exatas da UFMG campus pampulha. Sala 2038.\r\n\r\n<img class=\"alignnone wp-image-108\" src=\"http://localhost/DA/wp-content/uploads/2017/10/1200x630bb-300x300.jpg\" alt=\"\" width=\"213\" height=\"213\" />\r\n\r\n<a href=\"https://www.google.com.br/maps/place/Instituto+de+Ci%C3%AAncias+Exatas/@-19.8691265,-43.9669231,17z/data=!4m12!1m6!3m5!1s0xa690f4847329c5:0xac57002aecee9c51!2sInstituto+de+Ci%C3%AAncias+Exatas!8m2!3d-19.8691265!4d-43.9647344!3m4!1s0xa690f4847329c5:0xac57002aecee9c51!8m2!3d-19.8691265!4d-43.9647344\">Google Maps</a>', '', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2017-10-01 15:25:59', '2017-10-01 18:25:59', '', 107, 'http://localhost/DA/2017/10/01/107-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2017-10-01 15:27:33', '2017-10-01 18:27:33', 'O DAcompsi é localizado no prédio de ciências exatas da UFMG campus pampulha. Sala 2038.\r\n\r\n<img class=\"alignnone wp-image-108\" src=\"http://localhost/DA/wp-content/uploads/2017/10/1200x630bb-300x300.jpg\" alt=\"\" width=\"170\" height=\"170\" />\r\n\r\n<a href=\"https://www.google.com.br/maps/place/Instituto+de+Ci%C3%AAncias+Exatas/@-19.8691265,-43.9669231,17z/data=!4m12!1m6!3m5!1s0xa690f4847329c5:0xac57002aecee9c51!2sInstituto+de+Ci%C3%AAncias+Exatas!8m2!3d-19.8691265!4d-43.9647344!3m4!1s0xa690f4847329c5:0xac57002aecee9c51!8m2!3d-19.8691265!4d-43.9647344\">Google Maps</a>', '', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2017-10-01 15:27:33', '2017-10-01 18:27:33', '', 107, 'http://localhost/DA/2017/10/01/107-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2017-10-01 15:27:58', '2017-10-01 18:27:58', 'O DAcompsi é localizado no prédio de ciências exatas da UFMG campus pampulha. Sala 2038.\r\n\r\n<img class=\"alignnone wp-image-108\" src=\"http://localhost/DA/wp-content/uploads/2017/10/1200x630bb-300x300.jpg\" alt=\"\" width=\"170\" height=\"170\" />\r\n\r\n<a href=\"https://www.google.com.br/maps/place/Instituto+de+Ci%C3%AAncias+Exatas/@-19.8691265,-43.9669231,17z/data=!4m12!1m6!3m5!1s0xa690f4847329c5:0xac57002aecee9c51!2sInstituto+de+Ci%C3%AAncias+Exatas!8m2!3d-19.8691265!4d-43.9647344!3m4!1s0xa690f4847329c5:0xac57002aecee9c51!8m2!3d-19.8691265!4d-43.9647344\">Google Maps</a>', 'Localização', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2017-10-01 15:27:58', '2017-10-01 18:27:58', '', 107, 'http://localhost/DA/2017/10/01/107-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(5, 'Opções', 'opcoes', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(101, 5, 0),
(102, 5, 0),
(103, 5, 0),
(104, 5, 0),
(105, 5, 0),
(109, 5, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(5, 5, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Fabyo'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(17, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(18, 1, 'closedpostboxes_page', 'a:0:{}'),
(19, 1, 'metaboxhidden_page', 'a:4:{i:0;s:10:\"postcustom\";i:1;s:16:\"commentstatusdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}'),
(20, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse&post_dfw=off&advImgDetails=hide'),
(21, 1, 'wp_user-settings-time', '1506882449'),
(22, 1, 'nav_menu_recently_edited', '5'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(25, 1, 'session_tokens', 'a:1:{s:64:\"e1030369c63a2560b2cda72f7d508cf1f82f21fce3696b8351046a327be6ffe2\";a:4:{s:10:\"expiration\";i:1507314318;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36\";s:5:\"login\";i:1507141518;}}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Fabyo', '$P$B7FKdIJuEx4tRopRw2n5BMtOyokcgD.', 'fabyo', 'silveira.fabyo@outlook.com', '', '2017-09-28 18:50:41', '', 0, 'Fabyo');

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
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

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
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
--
-- Database: `divulga`
--
CREATE DATABASE IF NOT EXISTS `divulga` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `divulga`;
--
-- Database: `divulgas`
--
CREATE DATABASE IF NOT EXISTS `divulgas` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `divulgas`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `Login` text NOT NULL,
  `Senha` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`Login`, `Senha`) VALUES
('admin', '12345');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contribuintes`
--

CREATE TABLE `contribuintes` (
  `Nome` varchar(50) NOT NULL,
  `Telefone` text NOT NULL,
  `Email` text NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `contribuintes`
--

INSERT INTO `contribuintes` (`Nome`, `Telefone`, `Email`, `ID`) VALUES
('fabyo', '', 'fabyo@c.c', 18);

-- --------------------------------------------------------

--
-- Estrutura da tabela `doacoes`
--

CREATE TABLE `doacoes` (
  `Doador` varchar(50) NOT NULL,
  `Instituiçao` varchar(40) NOT NULL,
  `Itens` varchar(40) NOT NULL,
  `Quantidade` smallint(6) NOT NULL,
  `EmailC` text NOT NULL,
  `iDD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `doacoes`
--

INSERT INTO `doacoes` (`Doador`, `Instituiçao`, `Itens`, `Quantidade`, `EmailC`, `iDD`) VALUES
('fabyo', '', '', 3, 'fabyo@c.c', 43);

-- --------------------------------------------------------

--
-- Estrutura da tabela `doacoesp`
--

CREATE TABLE `doacoesp` (
  `Item` text NOT NULL,
  `Quantidade` int(11) NOT NULL,
  `IDInstituicao` int(11) UNSIGNED NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `doacoesp`
--

INSERT INTO `doacoesp` (`Item`, `Quantidade`, `IDInstituicao`, `ID`) VALUES
('', 3, 46, 13);

-- --------------------------------------------------------

--
-- Estrutura da tabela `instituicoes`
--

CREATE TABLE `instituicoes` (
  `Nome` varchar(40) NOT NULL,
  `Estado` varchar(40) NOT NULL,
  `Cidade` varchar(40) NOT NULL,
  `Bairro` varchar(40) NOT NULL,
  `Rua` varchar(50) NOT NULL,
  `Numero` smallint(5) UNSIGNED NOT NULL,
  `Telefone` text NOT NULL,
  `Responsavel` varchar(50) NOT NULL,
  `EmailR` text NOT NULL,
  `Descricao` text NOT NULL,
  `Id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `instituicoes`
--

INSERT INTO `instituicoes` (`Nome`, `Estado`, `Cidade`, `Bairro`, `Rua`, `Numero`, `Telefone`, `Responsavel`, `EmailR`, `Descricao`, `Id`) VALUES
('LANA', '', '', '', '', 0, '', '', '', '', 46),
('OKO', '', '', '', '', 0, '', '', '', '', 47);

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens`
--

CREATE TABLE `itens` (
  `Item` text NOT NULL,
  `Quantidade` int(11) NOT NULL,
  `QuantidadeP` int(11) NOT NULL,
  `IDInstituicao` int(11) UNSIGNED NOT NULL,
  `Data` date NOT NULL,
  `IDI` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `itens`
--

INSERT INTO `itens` (`Item`, `Quantidade`, `QuantidadeP`, `IDInstituicao`, `Data`, `IDI`) VALUES
('feijao', 17, 3, 46, '0000-00-00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contribuintes`
--
ALTER TABLE `contribuintes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `doacoes`
--
ALTER TABLE `doacoes`
  ADD PRIMARY KEY (`iDD`);

--
-- Indexes for table `doacoesp`
--
ALTER TABLE `doacoesp`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDInstituicao` (`IDInstituicao`);

--
-- Indexes for table `instituicoes`
--
ALTER TABLE `instituicoes`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `itens`
--
ALTER TABLE `itens`
  ADD PRIMARY KEY (`IDI`),
  ADD KEY `IDInstituicao` (`IDInstituicao`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contribuintes`
--
ALTER TABLE `contribuintes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `doacoes`
--
ALTER TABLE `doacoes`
  MODIFY `iDD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `doacoesp`
--
ALTER TABLE `doacoesp`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `instituicoes`
--
ALTER TABLE `instituicoes`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `itens`
--
ALTER TABLE `itens`
  MODIFY `IDI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `doacoesp`
--
ALTER TABLE `doacoesp`
  ADD CONSTRAINT `doacoesp_ibfk_1` FOREIGN KEY (`IDInstituicao`) REFERENCES `instituicoes` (`Id`);

--
-- Limitadores para a tabela `itens`
--
ALTER TABLE `itens`
  ADD CONSTRAINT `IDInstituicao` FOREIGN KEY (`IDInstituicao`) REFERENCES `instituicoes` (`Id`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

--
-- Extraindo dados da tabela `pma__navigationhiding`
--

INSERT INTO `pma__navigationhiding` (`username`, `item_name`, `item_type`, `db_name`, `table_name`) VALUES
('root', 'admin', 'table', 'divulgas', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Extraindo dados da tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"divulgas\",\"table\":\"itens\"},{\"db\":\"divulgas\",\"table\":\"instituicoes\"},{\"db\":\"divulgas\",\"table\":\"contribuintes\"},{\"db\":\"divulgas\",\"table\":\"doacoes\"},{\"db\":\"divulgas\",\"table\":\"doacoesp\"},{\"db\":\"divulgas\",\"table\":\"doacoesP\"},{\"db\":\"ijunior\",\"table\":\"clientes\"},{\"db\":\"divulgas\",\"table\":\"admin\"},{\"db\":\"divulgas\",\"table\":\"doa\\u00e7oes\"},{\"db\":\"divulgas\",\"table\":\"institui\\u00e7oes\"}]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Extraindo dados da tabela `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'divulgas', 'itens', '[]', '2017-11-22 16:24:13');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2017-09-28 18:45:54', '{\"lang\":\"pt\",\"collation_connection\":\"utf8mb4_unicode_ci\"}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
