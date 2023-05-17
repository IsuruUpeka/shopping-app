-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2023 at 09:20 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping-app`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL),
(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL, NULL),
(3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL, NULL),
(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, NULL),
(5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, NULL),
(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, NULL),
(8, 0, 0, 'Food Category', 'fa-certificate', '/food-types', '*', '2021-11-08 07:28:13', '2022-01-01 02:46:59'),
(10, 0, 0, 'Users', 'fa-bars', '/users', '*', '2021-11-08 08:08:59', '2021-11-08 08:08:59'),
(11, 0, 0, 'Food', 'fa-beer', '/foods', '*', '2021-11-17 04:07:06', '2022-01-01 02:36:15'),
(12, 0, 0, 'Orders', 'fa-first-order', '/orders', '*', '2022-02-09 20:57:25', '2022-02-09 20:57:25'),
(13, 0, 0, 'Payment Setting', 'fa-dollar', '/business-settings', '*', '2022-02-28 00:54:23', '2022-02-28 00:54:23');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin/order/analysis', 'GET', '127.0.0.1', '[]', '2023-05-02 13:34:18', '2023-05-02 13:34:18'),
(2, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2023-05-02 13:34:44', '2023-05-02 13:34:44'),
(3, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-02 13:38:30', '2023-05-02 13:38:30'),
(4, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2023-05-02 13:41:16', '2023-05-02 13:41:16'),
(5, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2023-05-02 13:47:45', '2023-05-02 13:47:45'),
(6, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-02 13:47:49', '2023-05-02 13:47:49'),
(7, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"$2y$10$jjEwOYQkqW14ai4De2hE7uSoim1a44yMMkyEGTncSlq1EuSwp0E3e\",\"password_confirmation\":\"$2y$10$jjEwOYQkqW14ai4De2hE7uSoim1a44yMMkyEGTncSlq1EuSwp0E3e\",\"_token\":\"gaSyPzNHbK9fhUevwt9aDr9MbCLkyfV8VBTcpd5K\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/orders\"}', '2023-05-02 13:48:01', '2023-05-02 13:48:01'),
(8, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-05-02 13:48:01', '2023-05-02 13:48:01'),
(9, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-02 13:48:07', '2023-05-02 13:48:07'),
(10, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-02 13:48:18', '2023-05-02 13:48:18'),
(11, 1, 'admin/order/analysis', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-02 13:48:21', '2023-05-02 13:48:21'),
(12, 1, 'admin/order/analysis', 'GET', '127.0.0.1', '[]', '2023-05-02 13:48:21', '2023-05-02 13:48:21');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2021-11-08 06:09:48', '2021-11-08 06:09:48');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 8, NULL, NULL),
(1, 10, NULL, NULL),
(1, 11, NULL, NULL),
(1, 12, NULL, NULL),
(1, 13, NULL, NULL),
(1, 2, NULL, NULL),
(1, 8, NULL, NULL),
(1, 10, NULL, NULL),
(1, 11, NULL, NULL),
(1, 12, NULL, NULL),
(1, 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$jjEwOYQkqW14ai4De2hE7uSoim1a44yMMkyEGTncSlq1EuSwp0E3e', 'Administrator', 'images/cd36a4ad61560ad90324bdf31751cf41.jpeg', 'I0xjXjm3JRcofcbCnONLzUgHDHMfCF36Hg3CQqjO6Yultp6OodcRICsb09Lp', '2021-11-08 06:09:48', '2023-05-02 13:48:01');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'currency', 'USD', '2022-02-28 01:35:36', '2022-06-11 05:07:15'),
(4, 'paypal', '{\"status\":\"1\",\"paypal_client_id\":\"AYkWuTf46Z1LRsxr5V1nXXmvplE1Pox0WLJG7JeYPQMQ3RjGtBJ_e7dHzZZO-Pf7dnV5iMhhgMgRhRs5\",\"paypal_secret_id\":\"EMllsYjwRcI3k7TSQjLhH5M8xJb1grRTF7Vrq972dYhzTzIb_j_rVDlEMGiyRhk9eNJuvhk7WdqkMwrR\"}', '2022-02-28 01:59:33', '2022-02-28 01:59:33'),
(5, 'business_name', 'DBfood', NULL, NULL),
(6, 'country', 'US', NULL, NULL),
(7, 'cash_on_delivery', '{\"status\":\"1\"}', NULL, NULL),
(8, 'fcm_project_id', 'e-food-9e6e3', NULL, NULL),
(9, 'push_notification_key', 'AAAAfk7yQP4:APA91bFDnCTbGWYBmsXfg4NrO5xYIpSpX3T0AVS1SgBBNfRknugrBNq8rhsR9qJaQwqx9XGLjlk0hNOQBu1Lfhvicgk96JDEBLGV5BKlXDMUemeffIWB0RTFqXiY_ybZCUaRRiHbVwzw', NULL, NULL),
(10, 'order_pending_message', '{\"status\":\"68\",\"message\":\"Your order is successfully placed\"}', NULL, '2022-06-11 05:05:55'),
(11, 'order_confirmation_msg', '{\"status\":1,\"message\":\"Your order is confirmed\"}', NULL, NULL),
(12, 'order_processing_message', '{\"status\":1,\"message\":\"Your order is started for cooking\"}', NULL, NULL),
(13, 'out_for_delivery_message', '{\"status\":1,\"message\":\"Your food is ready for delivery\"}', NULL, NULL),
(14, 'order_delivered_message', '{\"status\":1,\"message\":\"Your order is delivered\"}', NULL, NULL),
(15, 'delivery_boy_assign_message', '{\"status\":1,\"message\":\"Your order has been assigned to a delivery man\"}', NULL, NULL),
(16, 'delivery_boy_start_message', '{\"status\":1,\"message\":\"Your order is picked up by delivery man\"}', NULL, NULL),
(17, 'delivery_boy_delivered_message', '{\"status\":1,\"message\":\"Order delivered successfully\"}', NULL, NULL),
(18, 'order_handover_message', '{\"status\":1,\"message\":\"Delivery man is on the way\"}', NULL, NULL),
(19, 'order_cancled_message', '{\"status\":1,\"message\":\"Order is canceled by your request\"}', NULL, NULL),
(20, 'digital_payment', '{\"status\":\"1\"}', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_addresses`
--

CREATE TABLE `customer_addresses` (
  `id` bigint(20) NOT NULL,
  `address_type` varchar(100) DEFAULT NULL,
  `contact_person_number` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `latitude` varchar(200) DEFAULT NULL,
  `longitude` varchar(200) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `contact_person_name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_addresses`
--

INSERT INTO `customer_addresses` (`id`, `address_type`, `contact_person_number`, `address`, `latitude`, `longitude`, `user_id`, `contact_person_name`, `created_at`, `updated_at`) VALUES
(1, NULL, '123456', '80 St. Sebastian Road, Ja-Ela, Sri Lanka', '7.0873505', '79.8952425', 1, 'isuuah', '2023-05-02 13:42:36', '2023-05-02 13:42:36'),
(2, NULL, '123456', '80 St. Sebastian Road, Ja-Ela, Sri Lanka', '7.0873505', '79.8952425', 2, 'isuuah', '2023-05-02 13:45:32', '2023-05-02 13:45:32'),
(3, NULL, '125465', '80 St. Sebastian Road, Ja-Ela, Sri Lanka', '7.0873505', '79.8952425', 2, 'fdsjfiji', '2023-05-02 13:49:14', '2023-05-02 13:49:14');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_man`
--

CREATE TABLE `delivery_man` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `identity_number` varchar(255) NOT NULL,
  `identity_type` varchar(255) NOT NULL,
  `identity_image` varchar(255) NOT NULL,
  `image` varchar(191) NOT NULL,
  `password` varchar(200) NOT NULL,
  `auth_token` varchar(255) NOT NULL,
  `fcm_token` varchar(255) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `earning` tinyint(1) NOT NULL,
  `current_orders` int(11) NOT NULL,
  `type` varchar(191) NOT NULL,
  `application_status` enum('denied','pending','approved') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery_man`
--

INSERT INTO `delivery_man` (`id`, `name`, `phone`, `email`, `identity_number`, `identity_type`, `identity_image`, `image`, `password`, `auth_token`, `fcm_token`, `zone_id`, `created_at`, `updated_at`, `status`, `active`, `earning`, `current_orders`, `type`, `application_status`) VALUES
(1, 'ahmed', '01709222197', 'a@a.com', '123456', 'passport', '', '', '$2y$10$4HNDC4q5C2csQD0DzFwkheWH9upu/IX5UK8X2xNP2flgqv/hBRfrS', '', '', 1, '2022-06-06 12:07:00', '2022-06-06 12:07:00', 1, 1, 1, 0, 'zone_wise', 'approved');

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
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stars` int(11) NOT NULL,
  `people` int(11) NOT NULL,
  `selected_people` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `name`, `description`, `price`, `stars`, `people`, `selected_people`, `img`, `location`, `created_at`, `updated_at`, `type_id`) VALUES
(1, 'Bella Peperoni Pizza', '<p>Pepperoni pizza is a classic type of pizza that typically features a thin crust, tomato sauce, and mozzarella cheese, topped with slices of spicy pepperoni. The pepperoni is typically made from a combination of beef and pork and is sliced thin, then placed on top of the cheese and sauce. When baked in the oven, the pepperoni becomes slightly crispy and the edges curl up, adding a nice texture to the pizza. Pepperoni pizza is a popular choice for meat lovers and is often found on the menus of pizzerias around the world.</p>', 1400, 9, 1, 1, 'images/3cca3df92cd9b32c1e90d87fcc05adb9.jpeg', 'Ja ela', '2023-05-01 11:33:49', '2023-05-01 11:33:49', 2),
(2, 'Four Cheese Pizza', '<p>A cheesy pizza with a thin crust, tomato sauce, and a combination of four different cheeses such as mozzarella, cheddar, parmesan, and gorgonzola. This pizza is a cheese lover&#39;s dream.</p>', 1250, 9, 1, 1, 'images/5426761c595c3676ab9474a52c67fe0c.jpeg', 'Ja ela', '2023-05-01 11:34:50', '2023-05-01 11:34:50', 2),
(3, 'Bella Veggie Pizza', '<p>Veggie pizza is a type of pizza that is perfect for vegetarians or anyone looking for a healthier option. It typically features a thin crust, tomato sauce, mozzarella cheese, and a variety of colorful vegetables as toppings. The vegetables can vary depending on personal preference, but popular options include mushrooms, onions, bell peppers, olives, tomatoes, spinach, and artichoke hearts.</p><p><br/></p><p>To make a veggie pizza, the vegetables are usually chopped or sliced and then arranged evenly over the cheese and sauce. Some recipes may also call for additional seasonings or herbs like garlic, basil, or oregano.</p><p><br/></p><p>In addition to being a delicious and healthy option, veggie pizza is also versatile and can be customized to suit different dietary needs. For example, a vegan version can be made by using vegan cheese or omitting the cheese altogether, while a gluten-free version can be made using a gluten-free crust.</p><p><br/></p><p>Overall, veggie pizza is a great choice for anyone looking to add more vegetables to their diet without sacrificing flavor.</p>', 1200, 8, 1, 1, 'images/270bdfe4a2f503e96c3b0151252be2c3.jpeg', 'Ja ela', '2023-05-01 11:36:57', '2023-05-01 11:38:24', 2),
(4, 'Tricky Sausage Pizza', '<p>Tiny sausage pizza, also known as mini sausage pizza, is a type of pizza that features small pieces of sausage as a topping. It typically starts with a small, individual-sized pizza crust that is thin and crispy, then topped with tomato sauce, shredded mozzarella cheese, and bite-sized pieces of sausage.</p><p><br/></p><p>The sausage used in tiny sausage pizza is typically made from a blend of pork and beef, and is seasoned with spices like fennel, garlic, and paprika. The sausage pieces are cooked until slightly crispy and then sprinkled on top of the cheese and sauce.</p><p><br/></p><p>Tiny sausage pizza is a popular choice for those who enjoy the savory and slightly spicy flavor of sausage. The small size of the pizza makes it easy to eat as a snack or appetizer, and it&#39;s also a great option for parties and gatherings.</p><p><br/></p><p>In addition to traditional sausage, tiny sausage pizza can also be made with other types of meat or meat substitutes like chicken, turkey, or vegetarian sausage. It can also be customized with additional toppings like onions, peppers, and mushrooms to create a pizza that is unique and delicious.</p>', 1300, 9, 1, 1, 'images/45319fde6937a6d79c5df87705b92416.jpeg', 'Ja ela', '2023-05-01 11:38:15', '2023-05-01 11:38:15', 2),
(5, 'Sicilian Pizza', '<p>Sicilian pizza is a type of pizza that originated in Sicily, Italy. It is a thick, rectangular pizza that is known for its fluffy, focaccia-like crust. The crust is typically made with a high-protein dough that is allowed to rise slowly, resulting in a light and airy texture.<br/></p><p><br/></p><p>Sicilian pizza is often baked in a square or rectangular pan and can be up to two inches thick. It is topped with tomato sauce, mozzarella cheese, and a variety of other toppings like olives, onions, and anchovies. The cheese is usually applied in a thick layer on top of the sauce, and the toppings are placed on top of the cheese.</p><p><br/></p><p>When baked, Sicilian pizza has a crispy, golden-brown crust on the bottom and a soft, fluffy interior. The toppings are usually cooked until they are slightly caramelized, adding an extra layer of flavor and texture to the pizza.</p><p><br/></p><p>Sicilian pizza is a popular choice for those who enjoy a hearty, filling pizza. It can be enjoyed as a meal on its own or as an appetizer to share with friends and family. Whether enjoyed hot and fresh out of the oven or as a leftover snack, Sicilian pizza is a delicious and satisfying option for pizza lovers.</p><p><br/></p>', 1300, 9, 1, 1, 'images/f7ddcb4f6763b7ba2e6a8827e593c3ba.jpeg', 'Ja ela', '2023-05-01 11:39:36', '2023-05-01 11:39:36', 2),
(6, 'Bella Chicken Pizza', '<p>Chicken pizza is a delicious pizza variant that is topped with cooked chicken pieces as a protein source. The pizza is usually made with a thin or thick crust, depending on your preference, and topped with a tomato-based sauce and shredded mozzarella cheese.</p><p><br/></p><p>In addition to the chicken pieces, chicken pizza can also be topped with a variety of other ingredients, such as sliced onions, bell peppers, mushrooms, or even pineapple for a Hawaiian twist. Some chicken pizza recipes also call for the addition of spices or herbs like oregano, basil, or garlic, which can enhance the flavor of the pizza.</p><p><br/></p>', 1500, 10, 1, 1, 'images/10d5a15e9391cb080efa7c3644a4d49f.jpeg', 'Ja ela', '2023-05-02 02:06:00', '2023-05-02 02:06:00', 2),
(7, 'Bella Special Chicken Slice Pizza', '<p>Chicken slice pizza is a type of pizza that features chicken slices as a topping. The chicken slices used in chicken slice pizza can be cooked in a variety of ways, such as grilled, roasted, or sautéed. The pizza typically starts with a thin crust, which is then topped with tomato sauce, shredded mozzarella cheese, and the cooked chicken slices.</p><p><br/></p><p>In addition to the chicken slices, chicken slice pizza can also be topped with a variety of other ingredients, such as vegetables like onions, peppers, and mushrooms, or additional proteins like bacon or ham. Some chicken slice pizza recipes also call for additional seasonings or spices, such as garlic, basil, or oregano, to enhance the flavor of the pizza.</p><p><br/></p><p>Chicken slice pizza is a great option for those looking for a quick and easy meal, as it can be made using pre-cooked chicken slices. It&#39;s also a great option for those looking for a healthier pizza option. Chicken is a lean protein source and can be a great way to add some extra nutrition to your pizza. Whether enjoyed as a quick snack or as a full meal, chicken slice pizza is a delicious and satisfying option for pizza lovers.</p>', 1600, 10, 1, 1, 'images/96979fa51e55c77024e7e5f4bd5b0ecb.jpeg', 'Ja ela', '2023-05-02 02:07:07', '2023-05-02 02:07:07', 2),
(8, 'Bella Italian Pasta', '<p>Bella Italian pasta is a dish that combines traditional Italian pasta with a variety of fresh and flavorful ingredients. The dish typically starts with a base of cooked pasta, such as spaghetti or penne, which is then topped with a rich and savory tomato sauce.</p><p><br/></p><p>In addition to the tomato sauce, Bella Italian pasta can also be topped with a variety of other ingredients, such as sautéed garlic and onions, sliced mushrooms, and sweet bell peppers. It can also be topped with proteins like grilled chicken, Italian sausage, or shrimp, adding an extra layer of flavor and texture to the dish.</p><p><br/></p><p>Bella Italian pasta is known for its rich and hearty flavor, as well as its use of fresh and flavorful ingredients. It&#39;s a great option for those looking for a comforting and satisfying meal, and can be enjoyed as a main dish or as a side dish to accompany other Italian dishes. Whether enjoyed at a restaurant or made at home, Bella Italian pasta is a delicious and classic Italian dish that is sure to please.</p>', 1000, 9, 1, 1, 'images/0ab8c5e785bd8c1b63d27c0d19a3d833.jpeg', 'Ja ela', '2023-05-02 02:08:31', '2023-05-02 02:08:31', 3),
(9, 'Bella Lemon Juice', '<p>Bella Lemon Juice is a refreshing and zesty drink that is perfect for quenching your thirst on a hot summer day. The drink is made with fresh lemons, which are squeezed to extract the tangy and citrusy juice.</p><p><br/></p><p>The lemon juice is then mixed with water and sweetened with sugar or honey to create a refreshing and thirst-quenching beverage. Some variations of Bella Special Lemon Juice may also include a splash of soda or carbonated water for an extra fizzy kick.</p><p><br/></p><p>In addition to its refreshing taste, Bella Special Lemon Juice is also known for its health benefits. Lemons are high in vitamin C and antioxidants, which can help to boost your immune system and support overall health and well-being. The juice is also a natural diuretic, which can help to flush toxins from the body and promote healthy digestion.</p>', 600, 9, 1, 1, 'images/74d478d55c084f1a9c9ec7744c8a66e1.jpeg', 'Ja ela', '2023-05-02 02:09:43', '2023-05-02 02:09:43', 3),
(10, 'Bella Special Pasta', '<p>Bella Special Pasta is a mouthwatering Italian pasta dish that is made with a combination of fresh and flavorful ingredients. The dish usually features a base of cooked pasta, such as spaghetti or penne, which is then tossed with a delicious tomato-based sauce.</p><p><br/></p><p>The sauce is made with a blend of fresh ingredients such as garlic, onions, and diced tomatoes, which are cooked down until they form a rich and flavorful sauce. Other ingredients such as bell peppers, mushrooms, and olives may also be added to the sauce for additional flavor and texture.</p><p><br/></p><p>Bella Special Pasta can also be topped with a variety of proteins, such as grilled chicken, shrimp, or Italian sausage, adding an extra layer of flavor and nutrition to the dish. Parmesan cheese is often grated over the top of the pasta to add a salty and tangy flavor that complements the sweetness of the tomato sauce.</p>', 750, 9, 1, 1, 'images/9bcc43beaa8e1d403440601c752448ee.jpeg', 'Ja ela', '2023-05-02 02:12:12', '2023-05-02 02:12:12', 3),
(11, 'Bella Special Mojito', '<p>Bella Special Mojito is a classic cocktail that is both refreshing and delicious. The cocktail is made with fresh mint leaves, lime juice, sugar, soda water, and white rum, creating a sweet and tangy drink with a minty twist.</p><p><br/></p><p>To make the Bella Special Mojito, the mint leaves and lime juice are muddled together in a glass with sugar, creating a sweet and aromatic mixture. White rum is then added to the glass and stirred together with the mint and lime mixture. Finally, soda water is added to the glass, creating a fizzy and refreshing finish.</p><p><br/></p><p>Bella Special Mojito is a perfect cocktail for any occasion, whether you&#39;re relaxing on a hot summer day or enjoying a night out with friends. Its sweet and tangy flavor, combined with the refreshing fizz of the soda water, makes it a great choice for any palate. Plus, the fresh mint leaves provide a refreshing and invigorating burst of flavor that is both soothing and invigorating.</p>', 900, 10, 1, 1, 'images/071e56c9e08258c2a856237554950190.jpeg', 'Ja ela', '2023-05-02 02:13:20', '2023-05-02 02:13:20', 3);

-- --------------------------------------------------------

--
-- Table structure for table `food_types`
--

CREATE TABLE `food_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_types`
--

INSERT INTO `food_types` (`id`, `title`, `parent_id`, `created_at`, `updated_at`, `order`, `description`) VALUES
(1, 'Food', 0, '2022-01-01 02:52:55', '2022-01-01 02:52:55', 1, 'all about food'),
(2, 'Popular food', 1, '2022-01-01 02:53:10', '2022-01-01 02:53:10', 1, 'popular food'),
(3, 'Recommended food', 1, '2022-01-01 02:53:25', '2022-01-01 02:53:25', 1, 'Recommended food');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2016_01_04_173148_create_admin_tables', 2),
(6, '2021_11_08_125401_create_article_types_table', 3),
(7, '2021_11_08_125420_create_articles_table', 3),
(8, '2021_11_17_092846_create_place_table', 4),
(9, '2016_06_01_000001_create_oauth_auth_codes_table', 5),
(10, '2016_06_01_000002_create_oauth_access_tokens_table', 5),
(11, '2016_06_01_000003_create_oauth_refresh_tokens_table', 5),
(12, '2016_06_01_000004_create_oauth_clients_table', 5),
(13, '2016_06_01_000005_create_oauth_personal_access_clients_table', 5),
(14, '2022_01_01_075013_create_food_type_table', 6),
(15, '2022_01_14_150322_create_places_table', 7),
(16, '2022_02_28_061329_create_business_settings_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `image` varchar(50) NOT NULL,
  `zone_id` bigint(20) NOT NULL,
  `target` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `description`, `status`, `image`, `zone_id`, `target`, `created_at`, `updated_at`) VALUES
(1, 'Confirmed', 'This is a confirmed food notification', 1, '2021-08-14-61176ef4bb031.png', 1, 'customer', '2022-05-23 05:51:18', '2022-05-23 05:51:18');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('63eeba8b930b4a2692d66f4d62282e97880f59e1269e8ad61ad95b13b49c3ee7fd5854dc8ec5137c', 2, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-05-02 13:44:58', '2023-05-02 13:44:58', '2024-05-02 19:14:58'),
('b150a23e402d81c9a0983de97a5da56dc48e9e2360c7667c0c4b479ce711fd90e05c4d064c89156e', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-05-02 13:41:54', '2023-05-02 13:41:54', '2024-05-02 19:11:54'),
('e474e4184c628f9c827f4669ca6f097c759079aa49a8fc9fbfb4aa7e0a328c976c9d7154bd41c9e3', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-05-02 13:41:43', '2023-05-02 13:41:43', '2024-05-02 19:11:43');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'ahmed', 'YTU2JKogY8Mo8n14mxL5yLaO5Tc7tjKCWdVtrXDN', NULL, 'http://localhost', 1, 0, 0, '2021-12-28 10:44:11', '2021-12-28 10:44:11');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-12-28 10:44:11', '2021-12-28 10:44:11');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `order_amount` decimal(8,2) NOT NULL,
  `payment_status` varchar(191) DEFAULT 'pending',
  `payment_method` varchar(30) DEFAULT NULL,
  `transaction_reference` varchar(30) DEFAULT NULL,
  `order_status` varchar(191) NOT NULL DEFAULT 'pending',
  `status_id` int(11) DEFAULT NULL,
  `confirmed` timestamp NULL DEFAULT NULL,
  `accepted` timestamp NULL DEFAULT NULL,
  `scheduled` tinyint(1) NOT NULL DEFAULT 0,
  `processing` timestamp NULL DEFAULT NULL,
  `handover` timestamp NULL DEFAULT NULL,
  `failed` timestamp NULL DEFAULT NULL,
  `scheduled_at` timestamp NULL DEFAULT NULL,
  `delivery_address_id` bigint(20) DEFAULT NULL,
  `order_note` text NOT NULL,
  `order_type` varchar(198) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `delivery_charge` decimal(6,2) DEFAULT NULL,
  `delivery_address` text NOT NULL,
  `otp` varchar(191) NOT NULL,
  `pending` timestamp NULL DEFAULT NULL,
  `picked_up` timestamp NULL DEFAULT NULL,
  `delivered` timestamp NULL DEFAULT NULL,
  `canceled` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_amount`, `payment_status`, `payment_method`, `transaction_reference`, `order_status`, `status_id`, `confirmed`, `accepted`, `scheduled`, `processing`, `handover`, `failed`, `scheduled_at`, `delivery_address_id`, `order_note`, `order_type`, `created_at`, `updated_at`, `delivery_charge`, `delivery_address`, `otp`, `pending`, `picked_up`, `delivered`, `canceled`) VALUES
(100001, 1, '4800.00', 'unpaid', 'cash_on_delivery', NULL, 'pending', NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-05-02 13:42:47', NULL, 'drydrty', 'take away', '2023-05-02 13:42:47', '2023-05-02 13:42:47', NULL, '{\"contact_person_name\":\"isuuah\",\"contact_person_number\":\"123456\",\"address\":\"80 St. Sebastian Road, Ja-Ela, Sri Lanka\",\"longitude\":\"79.8952425\",\"latitude\":\"7.0873505\"}', '7355', '2023-05-02 13:42:47', NULL, NULL, NULL),
(100002, 1, '2700.00', 'unpaid', 'cash_on_delivery', NULL, 'pending', NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-05-02 13:42:54', NULL, 'drydrty', 'take away', '2023-05-02 13:42:54', '2023-05-02 13:42:54', NULL, '{\"contact_person_name\":\"isuuah\",\"contact_person_number\":\"123456\",\"address\":\"80 St. Sebastian Road, Ja-Ela, Sri Lanka\",\"longitude\":\"79.8952425\",\"latitude\":\"7.0873505\"}', '9832', '2023-05-02 13:42:54', NULL, NULL, NULL),
(100003, 1, '5200.00', 'unpaid', 'cash_on_delivery', NULL, 'pending', NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-05-02 13:43:06', NULL, 'drydrty', 'take away', '2023-05-02 13:43:06', '2023-05-02 13:43:06', NULL, '{\"contact_person_name\":\"isuuah\",\"contact_person_number\":\"123456\",\"address\":\"80 St. Sebastian Road, Ja-Ela, Sri Lanka\",\"longitude\":\"79.8952425\",\"latitude\":\"7.0873505\"}', '8005', '2023-05-02 13:43:06', NULL, NULL, NULL),
(100004, 1, '3900.00', 'unpaid', 'cash_on_delivery', NULL, 'pending', NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-05-02 13:43:17', NULL, 'drydrty', 'take away', '2023-05-02 13:43:17', '2023-05-02 13:43:17', NULL, '{\"contact_person_name\":\"isuuah\",\"contact_person_number\":\"123456\",\"address\":\"80 St. Sebastian Road, Ja-Ela, Sri Lanka\",\"longitude\":\"79.8952425\",\"latitude\":\"7.0873505\"}', '1950', '2023-05-02 13:43:17', NULL, NULL, NULL),
(100005, 1, '4800.00', 'unpaid', 'digital_payment', NULL, 'failed', NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-05-02 13:43:27', NULL, 'drydrty', 'take away', '2023-05-02 13:43:27', '2023-05-02 13:43:27', NULL, '{\"contact_person_name\":\"isuuah\",\"contact_person_number\":\"123456\",\"address\":\"80 St. Sebastian Road, Ja-Ela, Sri Lanka\",\"longitude\":\"79.8952425\",\"latitude\":\"7.0873505\"}', '9748', '2023-05-02 13:43:27', NULL, NULL, NULL),
(100006, 2, '16600.00', 'unpaid', 'cash_on_delivery', NULL, 'pending', NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-05-02 13:45:40', NULL, 'drydrty', 'take away', '2023-05-02 13:45:40', '2023-05-02 13:45:40', NULL, '{\"contact_person_name\":\"isuuah\",\"contact_person_number\":\"123456\",\"address\":\"80 St. Sebastian Road, Ja-Ela, Sri Lanka\",\"longitude\":\"79.8952425\",\"latitude\":\"7.0873505\"}', '1850', '2023-05-02 13:45:40', NULL, NULL, NULL),
(100007, 2, '3900.00', 'unpaid', 'cash_on_delivery', NULL, 'pending', NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-05-02 13:49:30', NULL, 'vghnvh', 'delivery', '2023-05-02 13:49:30', '2023-05-02 13:49:30', NULL, '{\"contact_person_name\":\"fdsjfiji\",\"contact_person_number\":\"125465\",\"address\":\"80 St. Sebastian Road, Ja-Ela, Sri Lanka\",\"longitude\":\"79.8952425\",\"latitude\":\"7.0873505\"}', '8739', '2023-05-02 13:49:30', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `food_id` bigint(20) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `food_details` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `tax_amount` decimal(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `food_id`, `price`, `food_details`, `quantity`, `tax_amount`, `created_at`, `updated_at`) VALUES
(592, 100001, 7, '1600.00', '{\"id\":7,\"name\":\"Bella Special Chicken Slice Pizza\",\"description\":\"<p>Chicken slice pizza is a type of pizza that features chicken slices as a topping. The chicken slices used in chicken slice pizza can be cooked in a variety of ways, such as grilled, roasted, or saut\\u00e9ed. The pizza typically starts with a thin crust, which is then topped with tomato sauce, shredded mozzarella cheese, and the cooked chicken slices.<\\/p><p><br\\/><\\/p><p>In addition to the chicken slices, chicken slice pizza can also be topped with a variety of other ingredients, such as vegetables like onions, peppers, and mushrooms, or additional proteins like bacon or ham. Some chicken slice pizza recipes also call for additional seasonings or spices, such as garlic, basil, or oregano, to enhance the flavor of the pizza.<\\/p><p><br\\/><\\/p><p>Chicken slice pizza is a great option for those looking for a quick and easy meal, as it can be made using pre-cooked chicken slices. It&#39;s also a great option for those looking for a healthier pizza option. Chicken is a lean protein source and can be a great way to add some extra nutrition to your pizza. Whether enjoyed as a quick snack or as a full meal, chicken slice pizza is a delicious and satisfying option for pizza lovers.<\\/p>\",\"price\":1600,\"stars\":10,\"people\":1,\"selected_people\":1,\"img\":\"images\\/96979fa51e55c77024e7e5f4bd5b0ecb.jpeg\",\"location\":\"Ja ela\",\"created_at\":\"2023-05-02 07:37:07\",\"updated_at\":\"2023-05-02 07:37:07\",\"type_id\":2}', 3, '10.00', '2023-05-02 13:42:47', '2023-05-02 13:42:47'),
(593, 100002, 11, '900.00', '{\"id\":11,\"name\":\"Bella Special Mojito\",\"description\":\"<p>Bella Special Mojito is a classic cocktail that is both refreshing and delicious. The cocktail is made with fresh mint leaves, lime juice, sugar, soda water, and white rum, creating a sweet and tangy drink with a minty twist.<\\/p><p><br\\/><\\/p><p>To make the Bella Special Mojito, the mint leaves and lime juice are muddled together in a glass with sugar, creating a sweet and aromatic mixture. White rum is then added to the glass and stirred together with the mint and lime mixture. Finally, soda water is added to the glass, creating a fizzy and refreshing finish.<\\/p><p><br\\/><\\/p><p>Bella Special Mojito is a perfect cocktail for any occasion, whether you&#39;re relaxing on a hot summer day or enjoying a night out with friends. Its sweet and tangy flavor, combined with the refreshing fizz of the soda water, makes it a great choice for any palate. Plus, the fresh mint leaves provide a refreshing and invigorating burst of flavor that is both soothing and invigorating.<\\/p>\",\"price\":900,\"stars\":10,\"people\":1,\"selected_people\":1,\"img\":\"images\\/071e56c9e08258c2a856237554950190.jpeg\",\"location\":\"Ja ela\",\"created_at\":\"2023-05-02 07:43:20\",\"updated_at\":\"2023-05-02 07:43:20\",\"type_id\":3}', 3, '10.00', '2023-05-02 13:42:54', '2023-05-02 13:42:54'),
(594, 100003, 4, '1300.00', '{\"id\":4,\"name\":\"Tricky Sausage Pizza\",\"description\":\"<p>Tiny sausage pizza, also known as mini sausage pizza, is a type of pizza that features small pieces of sausage as a topping. It typically starts with a small, individual-sized pizza crust that is thin and crispy, then topped with tomato sauce, shredded mozzarella cheese, and bite-sized pieces of sausage.<\\/p><p><br\\/><\\/p><p>The sausage used in tiny sausage pizza is typically made from a blend of pork and beef, and is seasoned with spices like fennel, garlic, and paprika. The sausage pieces are cooked until slightly crispy and then sprinkled on top of the cheese and sauce.<\\/p><p><br\\/><\\/p><p>Tiny sausage pizza is a popular choice for those who enjoy the savory and slightly spicy flavor of sausage. The small size of the pizza makes it easy to eat as a snack or appetizer, and it&#39;s also a great option for parties and gatherings.<\\/p><p><br\\/><\\/p><p>In addition to traditional sausage, tiny sausage pizza can also be made with other types of meat or meat substitutes like chicken, turkey, or vegetarian sausage. It can also be customized with additional toppings like onions, peppers, and mushrooms to create a pizza that is unique and delicious.<\\/p>\",\"price\":1300,\"stars\":9,\"people\":1,\"selected_people\":1,\"img\":\"images\\/45319fde6937a6d79c5df87705b92416.jpeg\",\"location\":\"Ja ela\",\"created_at\":\"2023-05-01 17:08:15\",\"updated_at\":\"2023-05-01 17:08:15\",\"type_id\":2}', 4, '10.00', '2023-05-02 13:43:06', '2023-05-02 13:43:06'),
(595, 100004, 5, '1300.00', '{\"id\":5,\"name\":\"Sicilian Pizza\",\"description\":\"<p>Sicilian pizza is a type of pizza that originated in Sicily, Italy. It is a thick, rectangular pizza that is known for its fluffy, focaccia-like crust. The crust is typically made with a high-protein dough that is allowed to rise slowly, resulting in a light and airy texture.<br\\/><\\/p><p><br\\/><\\/p><p>Sicilian pizza is often baked in a square or rectangular pan and can be up to two inches thick. It is topped with tomato sauce, mozzarella cheese, and a variety of other toppings like olives, onions, and anchovies. The cheese is usually applied in a thick layer on top of the sauce, and the toppings are placed on top of the cheese.<\\/p><p><br\\/><\\/p><p>When baked, Sicilian pizza has a crispy, golden-brown crust on the bottom and a soft, fluffy interior. The toppings are usually cooked until they are slightly caramelized, adding an extra layer of flavor and texture to the pizza.<\\/p><p><br\\/><\\/p><p>Sicilian pizza is a popular choice for those who enjoy a hearty, filling pizza. It can be enjoyed as a meal on its own or as an appetizer to share with friends and family. Whether enjoyed hot and fresh out of the oven or as a leftover snack, Sicilian pizza is a delicious and satisfying option for pizza lovers.<\\/p><p><br\\/><\\/p>\",\"price\":1300,\"stars\":9,\"people\":1,\"selected_people\":1,\"img\":\"images\\/f7ddcb4f6763b7ba2e6a8827e593c3ba.jpeg\",\"location\":\"Ja ela\",\"created_at\":\"2023-05-01 17:09:36\",\"updated_at\":\"2023-05-01 17:09:36\",\"type_id\":2}', 3, '10.00', '2023-05-02 13:43:17', '2023-05-02 13:43:17'),
(596, 100005, 7, '1600.00', '{\"id\":7,\"name\":\"Bella Special Chicken Slice Pizza\",\"description\":\"<p>Chicken slice pizza is a type of pizza that features chicken slices as a topping. The chicken slices used in chicken slice pizza can be cooked in a variety of ways, such as grilled, roasted, or saut\\u00e9ed. The pizza typically starts with a thin crust, which is then topped with tomato sauce, shredded mozzarella cheese, and the cooked chicken slices.<\\/p><p><br\\/><\\/p><p>In addition to the chicken slices, chicken slice pizza can also be topped with a variety of other ingredients, such as vegetables like onions, peppers, and mushrooms, or additional proteins like bacon or ham. Some chicken slice pizza recipes also call for additional seasonings or spices, such as garlic, basil, or oregano, to enhance the flavor of the pizza.<\\/p><p><br\\/><\\/p><p>Chicken slice pizza is a great option for those looking for a quick and easy meal, as it can be made using pre-cooked chicken slices. It&#39;s also a great option for those looking for a healthier pizza option. Chicken is a lean protein source and can be a great way to add some extra nutrition to your pizza. Whether enjoyed as a quick snack or as a full meal, chicken slice pizza is a delicious and satisfying option for pizza lovers.<\\/p>\",\"price\":1600,\"stars\":10,\"people\":1,\"selected_people\":1,\"img\":\"images\\/96979fa51e55c77024e7e5f4bd5b0ecb.jpeg\",\"location\":\"Ja ela\",\"created_at\":\"2023-05-02 07:37:07\",\"updated_at\":\"2023-05-02 07:37:07\",\"type_id\":2}', 3, '10.00', '2023-05-02 13:43:27', '2023-05-02 13:43:27'),
(597, 100006, 9, '600.00', '{\"id\":9,\"name\":\"Bella Lemon Juice\",\"description\":\"<p>Bella Lemon Juice is a refreshing and zesty drink that is perfect for quenching your thirst on a hot summer day. The drink is made with fresh lemons, which are squeezed to extract the tangy and citrusy juice.<\\/p><p><br\\/><\\/p><p>The lemon juice is then mixed with water and sweetened with sugar or honey to create a refreshing and thirst-quenching beverage. Some variations of Bella Special Lemon Juice may also include a splash of soda or carbonated water for an extra fizzy kick.<\\/p><p><br\\/><\\/p><p>In addition to its refreshing taste, Bella Special Lemon Juice is also known for its health benefits. Lemons are high in vitamin C and antioxidants, which can help to boost your immune system and support overall health and well-being. The juice is also a natural diuretic, which can help to flush toxins from the body and promote healthy digestion.<\\/p>\",\"price\":600,\"stars\":9,\"people\":1,\"selected_people\":1,\"img\":\"images\\/74d478d55c084f1a9c9ec7744c8a66e1.jpeg\",\"location\":\"Ja ela\",\"created_at\":\"2023-05-02 07:39:43\",\"updated_at\":\"2023-05-02 07:39:43\",\"type_id\":3}', 5, '10.00', '2023-05-02 13:45:40', '2023-05-02 13:45:40'),
(598, 100006, 8, '1000.00', '{\"id\":8,\"name\":\"Bella Italian Pasta\",\"description\":\"<p>Bella Italian pasta is a dish that combines traditional Italian pasta with a variety of fresh and flavorful ingredients. The dish typically starts with a base of cooked pasta, such as spaghetti or penne, which is then topped with a rich and savory tomato sauce.<\\/p><p><br\\/><\\/p><p>In addition to the tomato sauce, Bella Italian pasta can also be topped with a variety of other ingredients, such as saut\\u00e9ed garlic and onions, sliced mushrooms, and sweet bell peppers. It can also be topped with proteins like grilled chicken, Italian sausage, or shrimp, adding an extra layer of flavor and texture to the dish.<\\/p><p><br\\/><\\/p><p>Bella Italian pasta is known for its rich and hearty flavor, as well as its use of fresh and flavorful ingredients. It&#39;s a great option for those looking for a comforting and satisfying meal, and can be enjoyed as a main dish or as a side dish to accompany other Italian dishes. Whether enjoyed at a restaurant or made at home, Bella Italian pasta is a delicious and classic Italian dish that is sure to please.<\\/p>\",\"price\":1000,\"stars\":9,\"people\":1,\"selected_people\":1,\"img\":\"images\\/0ab8c5e785bd8c1b63d27c0d19a3d833.jpeg\",\"location\":\"Ja ela\",\"created_at\":\"2023-05-02 07:38:31\",\"updated_at\":\"2023-05-02 07:38:31\",\"type_id\":3}', 4, '10.00', '2023-05-02 13:45:40', '2023-05-02 13:45:40'),
(599, 100006, 6, '1500.00', '{\"id\":6,\"name\":\"Bella Chicken Pizza\",\"description\":\"<p>Chicken pizza is a delicious pizza variant that is topped with cooked chicken pieces as a protein source. The pizza is usually made with a thin or thick crust, depending on your preference, and topped with a tomato-based sauce and shredded mozzarella cheese.<\\/p><p><br\\/><\\/p><p>In addition to the chicken pieces, chicken pizza can also be topped with a variety of other ingredients, such as sliced onions, bell peppers, mushrooms, or even pineapple for a Hawaiian twist. Some chicken pizza recipes also call for the addition of spices or herbs like oregano, basil, or garlic, which can enhance the flavor of the pizza.<\\/p><p><br\\/><\\/p>\",\"price\":1500,\"stars\":10,\"people\":1,\"selected_people\":1,\"img\":\"images\\/10d5a15e9391cb080efa7c3644a4d49f.jpeg\",\"location\":\"Ja ela\",\"created_at\":\"2023-05-02 07:36:00\",\"updated_at\":\"2023-05-02 07:36:00\",\"type_id\":2}', 4, '10.00', '2023-05-02 13:45:40', '2023-05-02 13:45:40'),
(600, 100006, 3, '1200.00', '{\"id\":3,\"name\":\"Bella Veggie Pizza\",\"description\":\"<p>Veggie pizza is a type of pizza that is perfect for vegetarians or anyone looking for a healthier option. It typically features a thin crust, tomato sauce, mozzarella cheese, and a variety of colorful vegetables as toppings. The vegetables can vary depending on personal preference, but popular options include mushrooms, onions, bell peppers, olives, tomatoes, spinach, and artichoke hearts.<\\/p><p><br\\/><\\/p><p>To make a veggie pizza, the vegetables are usually chopped or sliced and then arranged evenly over the cheese and sauce. Some recipes may also call for additional seasonings or herbs like garlic, basil, or oregano.<\\/p><p><br\\/><\\/p><p>In addition to being a delicious and healthy option, veggie pizza is also versatile and can be customized to suit different dietary needs. For example, a vegan version can be made by using vegan cheese or omitting the cheese altogether, while a gluten-free version can be made using a gluten-free crust.<\\/p><p><br\\/><\\/p><p>Overall, veggie pizza is a great choice for anyone looking to add more vegetables to their diet without sacrificing flavor.<\\/p>\",\"price\":1200,\"stars\":8,\"people\":1,\"selected_people\":1,\"img\":\"images\\/270bdfe4a2f503e96c3b0151252be2c3.jpeg\",\"location\":\"Ja ela\",\"created_at\":\"2023-05-01 17:06:57\",\"updated_at\":\"2023-05-01 17:08:24\",\"type_id\":2}', 3, '10.00', '2023-05-02 13:45:40', '2023-05-02 13:45:40'),
(601, 100007, 5, '1300.00', '{\"id\":5,\"name\":\"Sicilian Pizza\",\"description\":\"<p>Sicilian pizza is a type of pizza that originated in Sicily, Italy. It is a thick, rectangular pizza that is known for its fluffy, focaccia-like crust. The crust is typically made with a high-protein dough that is allowed to rise slowly, resulting in a light and airy texture.<br\\/><\\/p><p><br\\/><\\/p><p>Sicilian pizza is often baked in a square or rectangular pan and can be up to two inches thick. It is topped with tomato sauce, mozzarella cheese, and a variety of other toppings like olives, onions, and anchovies. The cheese is usually applied in a thick layer on top of the sauce, and the toppings are placed on top of the cheese.<\\/p><p><br\\/><\\/p><p>When baked, Sicilian pizza has a crispy, golden-brown crust on the bottom and a soft, fluffy interior. The toppings are usually cooked until they are slightly caramelized, adding an extra layer of flavor and texture to the pizza.<\\/p><p><br\\/><\\/p><p>Sicilian pizza is a popular choice for those who enjoy a hearty, filling pizza. It can be enjoyed as a meal on its own or as an appetizer to share with friends and family. Whether enjoyed hot and fresh out of the oven or as a leftover snack, Sicilian pizza is a delicious and satisfying option for pizza lovers.<\\/p><p><br\\/><\\/p>\",\"price\":1300,\"stars\":9,\"people\":1,\"selected_people\":1,\"img\":\"images\\/f7ddcb4f6763b7ba2e6a8827e593c3ba.jpeg\",\"location\":\"Ja ela\",\"created_at\":\"2023-05-01 17:09:36\",\"updated_at\":\"2023-05-01 17:09:36\",\"type_id\":2}', 3, '10.00', '2023-05-02 13:49:30', '2023-05-02 13:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `order_tracks`
--

CREATE TABLE `order_tracks` (
  `id` int(11) NOT NULL,
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `order_tracks`
--

INSERT INTO `order_tracks` (`id`, `order_status`) VALUES
(1, 'pending'),
(2, 'confirmed'),
(3, 'canceled'),
(4, 'delivered'),
(5, 'refunded'),
(6, 'failed'),
(7, 'out_of_delivery'),
(8, 'success');

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
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `cm_firebase_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `f_name`, `phone`, `email`, `image`, `status`, `cm_firebase_token`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `order_count`) VALUES
(1, 'isuuah', '123456', 'jjs@gamil.com', NULL, 1, NULL, NULL, '$2y$10$14AHqwHU3hSTzQLTuXS88eY0fqcqAV.Co2D9b.2c0cJn16cTo.xG2', NULL, '2023-05-02 13:41:43', '2023-05-02 13:41:43', 0),
(2, 'fdsjfiji', '125465', 'dsfsf@gmail.dom', NULL, 1, NULL, NULL, '$2y$10$6Y1tvrCC9OuNnDDboGezz.2mNsSb.JK7kKjDjxiLsGr0LoZE18VqS', NULL, '2023-05-02 13:44:58', '2023-05-02 13:44:58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` varchar(225) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `vendor_id` int(10) UNSIGNED DEFAULT NULL,
  `delivery_man_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coordinates` polygon NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `restaurant_wise_topic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_wise_topic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deliveryman_wise_topic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`id`, `name`, `coordinates`, `status`, `created_at`, `updated_at`, `restaurant_wise_topic`, `customer_wise_topic`, `deliveryman_wise_topic`) VALUES
(2, 'american', 0x000000000103000000010000000d000000a7ae16e73fc559c0c6ada38e10ba4540a7ae16e73f1f5ac0bb921158d39d4340d4ad16e73fe458c09ad3eca2a9da4540a7ae16e7bf5f5dc0ab5c9ffe76d14740a7ae16e73f2a5ec0ddae516852114340a7ae16e73f4c5ac0acc0ff07d7993e40d4ad16e73f7c57c09ed3f02f0e623d40d4ad16e7bf8753c0fa91cbf688a64240d4ad16e73f1753c078b91c1606d24440d4ad16e73f9b56c08a9e77fb12574740a7ae16e73f9859c0ab5c9ffe76d14740a7ae16e7bf5f5dc03aa313f4b7ef4740a7ae16e73fc559c0c6ada38e10ba4540, 1, '2022-01-14 17:15:07', '2022-01-14 17:15:07', 'zone_1_restaurant', 'zone_1_customer', 'zone_1_delivery_man');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_man`
--
ALTER TABLE `delivery_man`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_types`
--
ALTER TABLE `food_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_tracks`
--
ALTER TABLE `order_tracks`
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
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zones_name_unique` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `delivery_man`
--
ALTER TABLE `delivery_man`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `food_types`
--
ALTER TABLE `food_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100128;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=602;

--
-- AUTO_INCREMENT for table `order_tracks`
--
ALTER TABLE `order_tracks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
