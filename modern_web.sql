-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2020 at 07:47 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `modern_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_chef`
--

CREATE TABLE `about_chef` (
  `id` int(11) NOT NULL,
  `c_name` varchar(50) NOT NULL,
  `c_post` varchar(100) NOT NULL,
  `c_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about_chef`
--

INSERT INTO `about_chef` (`id`, `c_name`, `c_post`, `c_image`) VALUES
(3, 'Gordon Ramsay', 'Restaurant Owner', '81t61hdtXDL.png'),
(4, 'Rachael Ray', 'Head Chef', 'RachelRay-GettyImages-495465004-5a02260eaad52b0037f79c7b.jpg'),
(5, 'Guy Fieri', 'Chef', 'download_1.jfif'),
(6, 'Giada De Laurentiis', 'Chef', 'Giada.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `about_customer`
--

CREATE TABLE `about_customer` (
  `id` int(11) NOT NULL,
  `cu_name` varchar(50) NOT NULL,
  `cu_review` varchar(1000) NOT NULL,
  `cu_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about_customer`
--

INSERT INTO `about_customer` (`id`, `cu_name`, `cu_review`, `cu_image`) VALUES
(1, 'Lynwood Downing', 'Had dinner with girl friends. Menu is perfect, something for everyone. Service was awesome and Jason was very accommodating. Will be back definitely!', '3-22032019091246.jpg'),
(3, 'Mimi Vandiver', 'Visited as a guest in the Echo restaurant for lunch just today. We were entertaining friends from California, and enjoyed our ocean side table. We chose to stay indoors - to enjoy the air conditioning.', '04-7396-2-LinaRoschel_vMbfZlN.jpg'),
(4, 'Juan Abele', 'Hello. Please give our thanks to the Manager(s) and others for the wonderful room and bottle of sparkling wine for our Anniversary stay. We had an amazing time.', '6CA7119A7C6E462ABE57CAD05C21029F.jpg'),
(5, 'Emelina Kohler', 'I had lunch with some of my colleagues on Day 1. I had the wedge salad - it was delicious. On Night 2, I enjoyed a drink at the bar.', 'download.jfif'),
(6, 'Rob Errico', 'The food was absolutely wonderful, from preparation to presentation, very pleasing. We especially enjoyed the special bar drinks, the cucumber/cilantro infused vodka martini and the K&P Aquarium was great .', 'Brian.jpg'),
(7, 'Margarete Riddle', 'Although we didn\'t go into the restaurant, we ordered some food at the bar a few times and it was delicious. The bar area and lobby were nice and open, good place to relax and meet friends.', 'Hande-Erçel-Most-Beautiful-Women-of-2019.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `about_stories`
--

CREATE TABLE `about_stories` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `des` varchar(1000) NOT NULL,
  `date` date NOT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about_stories`
--

INSERT INTO `about_stories` (`id`, `title`, `des`, `date`, `image`) VALUES
(1, 'McDonald\'s operators to Wendy\'s', 'National Owners Association says recent social media antics tied to national breakfast launch have short \'shelf life\'; board teases to new Morning Mac menu item', '2020-02-10', 'image_2.jpg'),
(2, 'Who regulates ghost kitchens?', 'A New York City Council hearing looked into companies like Zuul and Kitchen United', '2020-02-07', 'image_3.jpg'),
(3, 'PUBS, RESTAURANTS INUNDATED IN RAPTI RIVER BANK', 'Over a dozen pubs and restaurants at the Rapti River bank in Sauraha in the district have been inundated by flood this morning.', '2019-07-20', 'Flood.png'),
(4, 'INTERNATIONAL STANDARD TO BE STIPULATED FOR HOTELS', 'The government is making preparation to classify the hotels, restaurants and resorts, currently in operations, by stipulating standards.', '2019-10-25', 'download_TNkUcO4.jfif'),
(5, 'Finnish paper exposé on Nepali restaurants', 'AHelsingin Sanomat follow-up series this week of a human trafficking ring operated by some Nepali restaurant owners in Helsinki has created an uproar in Finland, recently named the happiest country in the world.', '2019-04-02', 'IMG_20180325_Resturant-Mount-Everest-in-Helsinki-pict-Namrata.jpg'),
(6, 'Inside the ugly world of Nepali restaurants', 'Nepali workers say if anyone goes to the police or authorities to complain about working conditions, the owners would make it difficult for them to find work again in any Nepali or South Asian restaurant.', '2020-02-03', 'Nepali-Restaurent.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add chef', 7, 'add_chef'),
(26, 'Can change chef', 7, 'change_chef'),
(27, 'Can delete chef', 7, 'delete_chef'),
(28, 'Can view chef', 7, 'view_chef'),
(29, 'Can add customer', 8, 'add_customer'),
(30, 'Can change customer', 8, 'change_customer'),
(31, 'Can delete customer', 8, 'delete_customer'),
(32, 'Can view customer', 8, 'view_customer'),
(33, 'Can add contact', 9, 'add_contact'),
(34, 'Can change contact', 9, 'change_contact'),
(35, 'Can delete contact', 9, 'delete_contact'),
(36, 'Can view contact', 9, 'view_contact'),
(37, 'Can add menu', 10, 'add_menu'),
(38, 'Can change menu', 10, 'change_menu'),
(39, 'Can delete menu', 10, 'delete_menu'),
(40, 'Can view menu', 10, 'view_menu'),
(41, 'Can add book_table', 11, 'add_book_table'),
(42, 'Can change book_table', 11, 'change_book_table'),
(43, 'Can delete book_table', 11, 'delete_book_table'),
(44, 'Can view book_table', 11, 'view_book_table'),
(45, 'Can add order_food', 12, 'add_order_food'),
(46, 'Can change order_food', 12, 'change_order_food'),
(47, 'Can delete order_food', 12, 'delete_order_food'),
(48, 'Can view order_food', 12, 'view_order_food'),
(49, 'Can add stories', 13, 'add_stories'),
(50, 'Can change stories', 13, 'change_stories'),
(51, 'Can delete stories', 13, 'delete_stories'),
(52, 'Can view stories', 13, 'view_stories');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$qnoiCzB38A9C$f9FnT/ZYdFIvApUueEgPcSFyAhfBCSPb69+pYROyLPA=', '2020-02-15 07:05:18.241549', 1, 'ramesh', '', '', 'ramesh152200@gmail.com', 1, 1, '2020-02-02 14:34:44.718359'),
(3, 'pbkdf2_sha256$180000$vXs9SJfOZq8Y$xxlkG3H2EVF5UtWvyFiZc8C4sUio8fGdwW/ofZb5rFk=', '2020-02-11 16:07:26.662163', 0, 'roshan', 'Ramesh', 'Bhandari', 'ramesh152200@gmail.com', 0, 1, '2020-02-03 13:32:31.657841'),
(10, 'pbkdf2_sha256$180000$WyMVwC2Krkrt$JyFPIpjk0p0e4HWEsJ0ojyHGynNBemnLhQSR3aLLaMs=', '2020-02-15 07:05:01.597033', 0, 'ramesh1', 'Ramesh', 'Bhandari', 'ramesh@gmail.com', 0, 1, '2020-02-15 07:04:54.288930');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `book_order_food`
--

CREATE TABLE `book_order_food` (
  `id` int(11) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `date` datetime(6) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `item` longtext NOT NULL,
  `address` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_order_food`
--

INSERT INTO `book_order_food` (`id`, `phone`, `date`, `quantity`, `item`, `address`, `user_id`) VALUES
(5, '9863622122', '2020-01-01 01:00:00.000000', '2', 'Buff', 'Jorpati\r\nKathmandu', 3),
(6, '9804924926', '2024-02-28 10:25:00.000000', '1', 'Chicken Chowmein', 'Baudha, Kathmandu', 1),
(7, '987564230', '2020-03-14 19:02:00.000000', '3', 'Chicken Thakali Khana', 'Narantar, Kathmandu', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_contact`
--

CREATE TABLE `contact_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-02-04 12:58:15.273890', '1', 'John Smooth', 1, '[{\"added\": {}}]', 7, 1),
(2, '2020-02-05 08:27:00.836527', '2', 'Rebeca Welson', 1, '[{\"added\": {}}]', 7, 1),
(3, '2020-02-05 12:25:16.548478', '2', 'Rebeca Welson', 3, '', 7, 1),
(4, '2020-02-05 12:25:16.669826', '1', 'John Smooth', 3, '', 7, 1),
(5, '2020-02-05 12:33:00.655360', '3', 'Gordon Ramsay', 1, '[{\"added\": {}}]', 7, 1),
(6, '2020-02-05 12:35:33.618401', '4', 'Rachael Ray', 1, '[{\"added\": {}}]', 7, 1),
(7, '2020-02-05 12:37:46.213825', '5', 'Guy Fieri', 1, '[{\"added\": {}}]', 7, 1),
(8, '2020-02-05 12:40:32.403519', '6', 'Giada De Laurentiis', 1, '[{\"added\": {}}]', 7, 1),
(9, '2020-02-05 12:49:33.729624', '1', 'Lynwood Downing', 1, '[{\"added\": {}}]', 8, 1),
(10, '2020-02-05 12:52:00.418368', '2', 'Mimi Vandiver', 1, '[{\"added\": {}}]', 8, 1),
(11, '2020-02-05 12:52:35.259948', '2', 'Mimi Vandiver', 3, '', 8, 1),
(12, '2020-02-05 12:53:06.238920', '3', 'Mimi Vandiver', 1, '[{\"added\": {}}]', 8, 1),
(13, '2020-02-05 12:54:16.811515', '4', 'Juan Abele', 1, '[{\"added\": {}}]', 8, 1),
(14, '2020-02-05 12:55:55.054218', '5', 'Emelina Kohler', 1, '[{\"added\": {}}]', 8, 1),
(15, '2020-02-05 12:57:26.735706', '6', 'Rob Errico', 1, '[{\"added\": {}}]', 8, 1),
(16, '2020-02-05 12:59:47.257701', '7', 'Margarete Riddle', 1, '[{\"added\": {}}]', 8, 1),
(17, '2020-02-05 16:43:05.289829', '2', '', 3, '', 9, 1),
(18, '2020-02-06 06:29:53.039715', '3', 'uydfsj', 3, '', 9, 1),
(19, '2020-02-06 09:28:14.992403', '1', 'Buff Chowmein', 1, '[{\"added\": {}}]', 10, 1),
(20, '2020-02-06 12:13:30.633885', '2', 'Buff Momo', 1, '[{\"added\": {}}]', 10, 1),
(21, '2020-02-06 12:16:54.584766', '2', 'Buff Momo', 3, '', 10, 1),
(22, '2020-02-06 12:19:00.460811', '3', 'Buff Momo', 1, '[{\"added\": {}}]', 10, 1),
(23, '2020-02-06 12:28:11.746260', '4', 'Chicken Thakali Khana', 1, '[{\"added\": {}}]', 10, 1),
(24, '2020-02-06 12:33:27.171550', '5', 'PASTA OF YOUR CHOICE', 1, '[{\"added\": {}}]', 10, 1),
(25, '2020-02-06 13:37:57.825189', '6', 'Fried Rice', 1, '[{\"added\": {}}]', 10, 1),
(26, '2020-02-06 13:43:09.205076', '7', 'Veg Momo', 1, '[{\"added\": {}}]', 10, 1),
(27, '2020-02-06 13:44:30.580576', '8', 'Chicken Momo', 1, '[{\"added\": {}}]', 10, 1),
(28, '2020-02-06 13:45:57.785945', '9', 'Dal Bhat / Veg Khana', 1, '[{\"added\": {}}]', 10, 1),
(29, '2020-02-06 13:47:28.088246', '10', 'Black Forest Cake', 1, '[{\"added\": {}}]', 10, 1),
(30, '2020-02-06 13:48:26.935490', '11', 'Chocolate Cake', 1, '[{\"added\": {}}]', 10, 1),
(31, '2020-02-06 13:50:10.895990', '12', 'Chicken Chowmein', 1, '[{\"added\": {}}]', 10, 1),
(32, '2020-02-06 13:53:16.574563', '13', 'Veg Chowmein', 1, '[{\"added\": {}}]', 10, 1),
(33, '2020-02-06 13:54:01.572656', '1', 'Buff Chowmein', 3, '', 10, 1),
(34, '2020-02-06 13:54:43.772275', '14', 'Buff Chowmein', 1, '[{\"added\": {}}]', 10, 1),
(35, '2020-02-10 19:33:28.316680', '1', 'McDonald\'s operators to Wendy\'s', 1, '[{\"added\": {}}]', 13, 1),
(36, '2020-02-10 19:55:03.969375', '2', 'Who regulates ghost kitchens?', 1, '[{\"added\": {}}]', 13, 1),
(37, '2020-02-10 19:59:35.333284', '3', 'PUBS, RESTAURANTS INUNDATED IN RAPTI RIVER BANK', 1, '[{\"added\": {}}]', 13, 1),
(38, '2020-02-10 20:01:42.756827', '4', 'INTERNATIONAL STANDARD TO BE STIPULATED FOR HOTELS', 1, '[{\"added\": {}}]', 13, 1),
(39, '2020-02-10 20:05:13.522921', '5', 'Finnish paper exposé on Nepali restaurants', 1, '[{\"added\": {}}]', 13, 1),
(40, '2020-02-10 20:08:44.128215', '6', 'Inside the ugly world of Nepali restaurants', 1, '[{\"added\": {}}]', 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'about', 'chef'),
(8, 'about', 'customer'),
(13, 'about', 'stories'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(11, 'book', 'book_table'),
(12, 'book', 'order_food'),
(9, 'contact', 'contact'),
(5, 'contenttypes', 'contenttype'),
(10, 'menu', 'menu'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-02-02 14:21:43.861837'),
(2, 'auth', '0001_initial', '2020-02-02 14:21:45.912658'),
(3, 'admin', '0001_initial', '2020-02-02 14:21:58.741608'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-02-02 14:22:05.415857'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-02-02 14:22:05.506427'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-02-02 14:22:09.285470'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-02-02 14:22:10.488943'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-02-02 14:22:10.768580'),
(9, 'auth', '0004_alter_user_username_opts', '2020-02-02 14:22:10.818833'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-02-02 14:22:12.325210'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-02-02 14:22:12.367386'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-02-02 14:22:12.420306'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-02-02 14:22:12.547270'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-02-02 14:22:12.679618'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-02-02 14:22:12.880308'),
(16, 'auth', '0011_update_proxy_permissions', '2020-02-02 14:22:12.930408'),
(17, 'sessions', '0001_initial', '2020-02-02 14:22:13.359652'),
(18, 'about', '0001_initial', '2020-02-04 12:45:56.292954'),
(19, 'contact', '0001_initial', '2020-02-05 16:22:48.757510'),
(20, 'menu', '0001_initial', '2020-02-06 09:14:16.856840'),
(21, 'menu', '0002_menu_f_price', '2020-02-06 09:16:53.054896'),
(22, 'book', '0001_initial', '2020-02-09 14:26:02.354975'),
(23, 'book', '0002_remove_order_food_name', '2020-02-10 05:50:18.124310'),
(24, 'book', '0003_auto_20200210_1143', '2020-02-10 05:58:43.957922'),
(25, 'book', '0004_order_food_user', '2020-02-10 07:54:41.385161'),
(26, 'about', '0002_stories', '2020-02-10 19:29:36.805310'),
(27, 'book', '0005_auto_20200211_1245', '2020-02-11 07:01:06.816341'),
(28, 'book', '0006_auto_20200211_2216', '2020-02-11 16:32:06.363935');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('05t52sej42ycu54sphaqqpb53pb9km9s', 'Y2MxODIxMmI2OTNiNWRjNmM4Y2YzMDEzZjZhNmI0YjczNzNlYzQ3ODp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0MTMyZjhhYzVhNTM0NTVhMzk0YmIwYWQ1NzFkZTc2M2ViNjRkMDAxIn0=', '2020-02-17 15:44:16.695524'),
('1ibmub9orm5s6ulhn8jco8z1e95vres8', 'OGU0YzY3MWJmNTRmMzk1ODQ4NWE4NDRhMGFlNjI5NWZmYzQxYzg3Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ZjVhZWVkNTRmY2YwMmRkN2E1YWM5N2MyNWM1YmY4MmZjZTFlODEyIn0=', '2020-02-29 07:05:18.541816'),
('r322gjj6c4anu96xwquq9j0llct2mlya', 'Y2MxODIxMmI2OTNiNWRjNmM4Y2YzMDEzZjZhNmI0YjczNzNlYzQ3ODp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0MTMyZjhhYzVhNTM0NTVhMzk0YmIwYWQ1NzFkZTc2M2ViNjRkMDAxIn0=', '2020-02-17 15:44:16.589140');

-- --------------------------------------------------------

--
-- Table structure for table `menu_menu`
--

CREATE TABLE `menu_menu` (
  `id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `f_image` varchar(100) DEFAULT NULL,
  `f_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu_menu`
--

INSERT INTO `menu_menu` (`id`, `f_name`, `f_image`, `f_price`) VALUES
(3, 'Buff Momo', 'foodie-buff-momo.png', 110),
(4, 'Chicken Thakali Khana', '81ep2qo2au101.jpg', 250),
(5, 'PASTA OF YOUR CHOICE', '1546886427856.jpeg', 275),
(6, 'Fried Rice', 'https___storage.googleapis.com_gen-atmedia_3_2012_05_82cb2630f25aeb47283bd21369071346b0711dee.jpeg', 130),
(7, 'Veg Momo', 'veg-momo.jpg', 100),
(8, 'Chicken Momo', '147997def2c40e615eb34b7d65118f9f.jpg', 150),
(9, 'Dal Bhat / Veg Khana', '2085697941_48d40d48a6_z.jpg', 150),
(10, 'Black Forest Cake', '1518020394494.jpeg', 600),
(11, 'Chocolate Cake', 'chocolate-cake-recipe-2-500x375.jpg', 550),
(12, 'Chicken Chowmein', 'Chicken-Chowmein.jpg', 150),
(13, 'Veg Chowmein', 'Veg-Chowmein.jpg', 100),
(14, 'Buff Chowmein', 'download_2_lR7YHc0.jfif', 120);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_chef`
--
ALTER TABLE `about_chef`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_customer`
--
ALTER TABLE `about_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_stories`
--
ALTER TABLE `about_stories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `book_order_food`
--
ALTER TABLE `book_order_food`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_order_food_user_id_87a8fc3b_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `contact_contact`
--
ALTER TABLE `contact_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `menu_menu`
--
ALTER TABLE `menu_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_chef`
--
ALTER TABLE `about_chef`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `about_customer`
--
ALTER TABLE `about_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `about_stories`
--
ALTER TABLE `about_stories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_order_food`
--
ALTER TABLE `book_order_food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contact_contact`
--
ALTER TABLE `contact_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `menu_menu`
--
ALTER TABLE `menu_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `book_order_food`
--
ALTER TABLE `book_order_food`
  ADD CONSTRAINT `book_order_food_user_id_87a8fc3b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
