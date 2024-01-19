-- Adminer 4.8.1 MySQL 5.7.42-0ubuntu0.18.04.1 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `active_promos`;
CREATE TABLE `active_promos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `promo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_promo` int(11) NOT NULL,
  `promo_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `authorizations`;
CREATE TABLE `authorizations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `videocard` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `boom_city`;
CREATE TABLE `boom_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `login` text NOT NULL,
  `img` text NOT NULL,
  `bet` float(11,2) NOT NULL,
  `coeff` text NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `coin`;
CREATE TABLE `coin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `bet` float(11,2) NOT NULL,
  `coeff` float(11,2) NOT NULL DEFAULT '0.00',
  `step` int(11) NOT NULL DEFAULT '0',
  `bonusCoin` text NOT NULL,
  `coeffBonusCoin` float(11,2) NOT NULL DEFAULT '0.00',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `crash`;
CREATE TABLE `crash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `bet` float(11,2) NOT NULL,
  `img` text NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `result` float(11,2) NOT NULL DEFAULT '0.00',
  `auto` float(11,2) NOT NULL,
  `win` float NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `crash_history`;
CREATE TABLE `crash_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` float(11,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `dep_promo`;
CREATE TABLE `dep_promo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actived` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `start` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `games`;
CREATE TABLE `games` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `game` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `win_summa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `history_balances`;
CREATE TABLE `history_balances` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` text CHARACTER SET utf8 NOT NULL,
  `balance_before` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance_after` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `jackpot`;
CREATE TABLE `jackpot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `bet` float(11,2) NOT NULL,
  `login` varchar(255) CHARACTER SET utf8 NOT NULL,
  `color` text NOT NULL,
  `chance` float(11,2) NOT NULL,
  `img` text NOT NULL,
  `tick_one` int(11) NOT NULL,
  `tick_two` int(11) NOT NULL,
  `cashHuntNumber` int(11) NOT NULL DEFAULT '1',
  `cashHuntSelected` float(11,2) NOT NULL DEFAULT '0.00',
  `cashHuntCoeff` float(11,2) NOT NULL DEFAULT '0.00',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `jackpot_history`;
CREATE TABLE `jackpot_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `login` varchar(255) CHARACTER SET utf8 NOT NULL,
  `bet` float(11,2) NOT NULL,
  `win` float(11,2) NOT NULL,
  `avatar` text NOT NULL,
  `random` text,
  `signature` text,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `keno`;
CREATE TABLE `keno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `login` text CHARACTER SET utf8,
  `img` text,
  `bet` float(11,2) NOT NULL,
  `numbers` text NOT NULL,
  `win` float(11,2) NOT NULL DEFAULT '0.00',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hidden` int(11) NOT NULL DEFAULT '0',
  `type_mess` int(11) NOT NULL DEFAULT '0',
  `status_mess` text CHARACTER SET utf8 NOT NULL,
  `autor` text CHARACTER SET utf8 NOT NULL,
  `time` text,
  `avatar` text CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `user_id` int(11) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1,	'2014_10_12_000000_create_users_table',	1),
(2,	'2014_10_12_100000_create_password_resets_table',	1),
(3,	'2019_08_19_000000_create_failed_jobs_table',	1),
(4,	'2021_08_19_201224_create_random_keys_table',	2),
(5,	'2021_09_04_204714_create_user_reposts_table',	3),
(6,	'2021_10_07_203111_create_jobs_table',	4);

DROP TABLE IF EXISTS `mines_games`;
CREATE TABLE `mines_games` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '25',
  `bonusMine` int(11) NOT NULL DEFAULT '1',
  `bonusIkses` text COLLATE utf8mb4_unicode_ci,
  `bet` double(11,2) NOT NULL DEFAULT '0.00',
  `num_mines` int(11) NOT NULL,
  `mines` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `onOff` int(11) NOT NULL,
  `step` int(11) NOT NULL,
  `win` double(11,2) NOT NULL DEFAULT '0.00',
  `hash` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pole_hash` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `salt1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `salt2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `login` text CHARACTER SET utf8 NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sum` double(11,2) unsigned NOT NULL DEFAULT '0.00',
  `data` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `beforepay` double(11,2) unsigned NOT NULL DEFAULT '0.00',
  `afterpay` double(11,2) unsigned NOT NULL DEFAULT '0.00',
  `status` int(11) NOT NULL DEFAULT '0',
  `percent` int(11) NOT NULL,
  `img_system` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `payments` (`id`, `user_id`, `login`, `avatar`, `sum`, `data`, `transaction`, `beforepay`, `afterpay`, `status`, `percent`, `img_system`, `updated_at`, `created_at`) VALUES
(31,	1,	'Сергей Исаев',	'https://sun6-20.userapi.com/s/v1/ig2/NfhHwRUo2Q_84fZGQV83Bpkb-tSGX3NlZctfWft_V0aMN9efgJurreJ6TidM15a-8_jeXJ7svMvGgP0LtN9cqsXQ.jpg?size=200x200&quality=95&crop=51,0,819,819&ava=1',	1111.00,	'25.07.2023 22:02',	'1690311772',	1111.00,	0.00,	0,	0,	'../img/wallet/yoo.svg',	'2023-07-25 22:02:52',	'2023-07-25 22:02:52'),
(32,	19,	'Brian',	'https://t.me/i/userpic/320/LRlXHb13a2iGgkYPU6T4xYs6V36HEx3_Q4F9c60ofv0.jpg',	500.00,	'28.07.2023 00:09',	'32119351382',	0.00,	0.00,	0,	0,	'../img/wallet/bnb.svg',	'2023-07-28 00:09:38',	'2023-07-28 00:09:38');

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `promo`;
CREATE TABLE `promo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actived` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `promo` (`id`, `name`, `sum`, `active`, `actived`, `user_id`, `user_name`, `created_at`, `updated_at`) VALUES
(1,	'goldenx10099',	'500',	'5',	'0',	3,	'Никита Зотов',	'2023-07-12 12:26:09',	'2023-07-12 12:26:09'),
(2,	'9KTX-DLB0-3AGD-0ABO',	'5',	'20',	'0',	0,	'Система',	'2023-07-12 12:29:18',	'2023-07-12 12:29:18'),
(3,	'GSDJ-A3BX-PHGX-IDF4',	'5',	'20',	'0',	0,	'Система',	'2023-07-12 12:59:20',	'2023-07-12 12:59:20'),
(4,	'V4A1-27KT-N1MZ-Z3R6',	'5',	'20',	'0',	0,	'Система',	'2023-07-12 13:45:15',	'2023-07-12 13:45:15'),
(5,	'KSU7-P51M-IO5Y-53F0',	'5',	'20',	'0',	0,	'Система',	'2023-07-12 14:15:17',	'2023-07-12 14:15:17'),
(6,	'73WA-1S28-6JO3-MS1N',	'5',	'20',	'0',	0,	'Система',	'2023-07-12 14:45:19',	'2023-07-12 14:45:19'),
(7,	'H6DQ-L9D7-8YIV-NTG7',	'5',	'20',	'0',	0,	'Система',	'2023-07-12 15:15:21',	'2023-07-12 15:15:21'),
(8,	'EGQT-NIJD-HJ7V-021I',	'5',	'20',	'0',	0,	'Система',	'2023-07-12 15:45:22',	'2023-07-12 15:45:22'),
(9,	'N6WE-A4FI-038D-82NK',	'5',	'20',	'0',	0,	'Система',	'2023-07-12 16:15:24',	'2023-07-12 16:15:24'),
(10,	'OTCM-PO1S-0RGE-WJFH',	'5',	'20',	'0',	0,	'Система',	'2023-07-12 16:45:26',	'2023-07-12 16:45:26'),
(11,	'TZ19-VDW6-QLCD-O4CQ',	'5',	'20',	'0',	0,	'Система',	'2023-07-12 17:15:28',	'2023-07-12 17:15:28'),
(12,	'OQ6E-Y81N-OWK4-JQLS',	'5',	'20',	'0',	0,	'Система',	'2023-07-12 17:45:30',	'2023-07-12 17:45:30'),
(13,	'2CEY-KYHZ-WBGM-JPFV',	'5',	'20',	'0',	0,	'Система',	'2023-07-12 18:15:31',	'2023-07-12 18:15:31'),
(14,	'S4WI-D8H3-47XQ-P2FZ',	'5',	'20',	'0',	0,	'Система',	'2023-07-12 18:45:33',	'2023-07-12 18:45:33'),
(15,	'31KA-I8KW-LOE5-JKEF',	'5',	'20',	'0',	0,	'Система',	'2023-07-12 19:15:35',	'2023-07-12 19:15:35'),
(16,	'B6N4-X6Q0-GIUE-2TEN',	'5',	'20',	'0',	0,	'Система',	'2023-07-12 19:53:53',	'2023-07-12 19:53:53'),
(17,	'BG0H-DLKN-3E5C-BW0P',	'5',	'20',	'0',	0,	'Система',	'2023-07-12 20:27:33',	'2023-07-12 20:27:33'),
(18,	'YDBO-8TGA-4Z76-QJ0T',	'5',	'20',	'0',	0,	'Система',	'2023-07-12 20:57:35',	'2023-07-12 20:57:35'),
(19,	'OGXH-CRMY-SZ5R-SK1F',	'5',	'20',	'0',	0,	'Система',	'2023-07-12 21:27:36',	'2023-07-12 21:27:36'),
(20,	'9YSP-MFR3-8PUO-PB5L',	'5',	'20',	'0',	0,	'Система',	'2023-07-12 21:57:38',	'2023-07-12 21:57:38'),
(21,	'9CRU-3KVM-CAJY-NKMH',	'5',	'20',	'0',	0,	'Система',	'2023-07-12 22:27:40',	'2023-07-12 22:27:40'),
(22,	'F356-NKM8-KVCJ-1X2N',	'5',	'20',	'0',	0,	'Система',	'2023-07-12 22:57:42',	'2023-07-12 22:57:42'),
(23,	'5X06-OTP5-DZMS-0WIM',	'5',	'20',	'0',	0,	'Система',	'2023-07-12 23:27:44',	'2023-07-12 23:27:44'),
(24,	'RKNZ-LKZG-UECY-ZA6I',	'5',	'20',	'0',	0,	'Система',	'2023-07-12 23:57:46',	'2023-07-12 23:57:46'),
(25,	'4AP2-0A4I-Y4JN-UW93',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 00:27:48',	'2023-07-13 00:27:48'),
(26,	'RXL4-N4TS-WQ3R-X5LQ',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 00:57:50',	'2023-07-13 00:57:50'),
(27,	'R8P2-KPUL-I7G2-N5EH',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 01:27:51',	'2023-07-13 01:27:51'),
(28,	'PSOB-38CS-8UGR-0ALK',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 01:57:53',	'2023-07-13 01:57:53'),
(29,	'AGV6-WPY5-RW17-IWFD',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 02:27:55',	'2023-07-13 02:27:55'),
(30,	'A63B-7ZOH-PB21-I27N',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 02:57:57',	'2023-07-13 02:57:57'),
(31,	'K9X2-S7HU-H7P2-YLTJ',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 03:27:59',	'2023-07-13 03:27:59'),
(32,	'VEIQ-O4JW-L012-LOQC',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 03:58:01',	'2023-07-13 03:58:01'),
(33,	'13X4-TU3P-CFDE-OTRA',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 04:28:03',	'2023-07-13 04:28:03'),
(34,	'2DU8-A7DZ-PONB-0F18',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 04:58:05',	'2023-07-13 04:58:05'),
(35,	'8EMR-O4Y1-7TW2-37WT',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 05:28:07',	'2023-07-13 05:28:07'),
(36,	'739C-1F8I-L4J5-LQPU',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 05:58:08',	'2023-07-13 05:58:08'),
(37,	'4CP7-VPSH-58B7-AV4G',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 06:28:10',	'2023-07-13 06:28:10'),
(38,	'FTEX-HRBX-48LE-2PF6',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 06:58:12',	'2023-07-13 06:58:12'),
(39,	'1OPT-JREN-X9W5-KSTQ',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 07:28:14',	'2023-07-13 07:28:14'),
(40,	'W7KP-VI6P-W5AF-HO9S',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 07:58:16',	'2023-07-13 07:58:16'),
(41,	'V7D4-Y0Z7-IJ1A-VC1P',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 08:28:18',	'2023-07-13 08:28:18'),
(42,	'QIHX-9PR0-GEU1-JCEK',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 08:58:20',	'2023-07-13 08:58:20'),
(43,	'UVC4-8PZS-94M8-SQV4',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 09:28:22',	'2023-07-13 09:28:22'),
(44,	'4NJW-QDNA-HT0N-S6F2',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 09:58:24',	'2023-07-13 09:58:24'),
(45,	'5JIV-2ZOG-GJ39-0X56',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 10:28:25',	'2023-07-13 10:28:25'),
(46,	'GTCZ-40P5-4LFY-10PT',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 10:58:27',	'2023-07-13 10:58:27'),
(47,	'9P48-E9PA-VMP4-3WHL',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 11:28:29',	'2023-07-13 11:28:29'),
(48,	'97RN-UR1T-321U-RLF2',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 11:58:32',	'2023-07-13 11:58:32'),
(49,	'FL30-7FRE-O7SB-YJU4',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 12:28:33',	'2023-07-13 12:28:33'),
(50,	'4DCJ-JU1V-JTV0-F69P',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 12:58:36',	'2023-07-13 12:58:36'),
(51,	'OIE2-319W-DM2N-4QKL',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 13:28:37',	'2023-07-13 13:28:37'),
(52,	'915M-BTOG-DIHC-THR2',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 13:58:39',	'2023-07-13 13:58:39'),
(53,	'PQZ9-I06M-DZ15-SC4A',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 14:28:41',	'2023-07-13 14:28:41'),
(54,	'H4BJ-7LOF-K2NY-QY0P',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 14:58:43',	'2023-07-13 14:58:43'),
(55,	'0WX8-PV0E-RLK8-3DXO',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 15:28:45',	'2023-07-13 15:28:45'),
(56,	'LT47-A8UO-8Y7H-RV7S',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 15:58:47',	'2023-07-13 15:58:47'),
(57,	'OB8L-0MTO-MS0A-V1FS',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 16:28:49',	'2023-07-13 16:28:49'),
(58,	'CPQV-CPRK-ALKN-O9V1',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 16:58:51',	'2023-07-13 16:58:51'),
(59,	'PZ15-GMIX-MUZL-CQEW',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 17:28:53',	'2023-07-13 17:28:53'),
(60,	'5QUA-K1XH-LA35-YZCI',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 17:58:55',	'2023-07-13 17:58:55'),
(61,	'QNXC-FLIJ-BQKV-CDIQ',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 18:28:57',	'2023-07-13 18:28:57'),
(62,	'08ET-DC68-STG5-85Q9',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 18:58:59',	'2023-07-13 18:58:59'),
(63,	'JI0O-3FPS-8NGB-BKZR',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 19:29:01',	'2023-07-13 19:29:01'),
(64,	'TLUQ-QHPU-GK4E-VEU3',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 19:59:03',	'2023-07-13 19:59:03'),
(65,	'VPCZ-O4MX-PA9I-KOP9',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 20:29:05',	'2023-07-13 20:29:05'),
(66,	'C9JU-FO5T-GJPF-FAP6',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 20:59:07',	'2023-07-13 20:59:07'),
(67,	'KVW7-QUW7-NK87-95Q4',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 21:29:09',	'2023-07-13 21:29:09'),
(68,	'UG4Y-LTI1-KDY4-EBPN',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 21:59:10',	'2023-07-13 21:59:10'),
(69,	'0FO7-1GO9-ZFNS-GJ2A',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 22:29:13',	'2023-07-13 22:29:13'),
(70,	'J0C2-N81Z-YHX7-NI4E',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 22:59:14',	'2023-07-13 22:59:14'),
(71,	'FB1N-4ZYU-XOBP-3OMI',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 23:29:16',	'2023-07-13 23:29:16'),
(72,	'HLQK-7K58-3RK5-JEOD',	'5',	'20',	'0',	0,	'Система',	'2023-07-13 23:59:18',	'2023-07-13 23:59:18'),
(73,	'Z4DF-SVMU-WRKF-D0YK',	'5',	'20',	'0',	0,	'Система',	'2023-07-14 00:29:20',	'2023-07-14 00:29:20'),
(74,	'Z27H-73DL-2BKQ-UNS4',	'5',	'20',	'0',	0,	'Система',	'2023-07-14 00:59:22',	'2023-07-14 00:59:22'),
(75,	'1M4S-YI1L-PCGA-TFMI',	'5',	'20',	'0',	0,	'Система',	'2023-07-14 01:29:24',	'2023-07-14 01:29:24'),
(76,	'QUZ9-J27P-EIOR-BEMI',	'5',	'20',	'0',	0,	'Система',	'2023-07-18 19:41:26',	'2023-07-18 19:41:26'),
(77,	'PTD3-H0PD-63PB-Z7CM',	'5',	'20',	'0',	0,	'Система',	'2023-07-18 21:12:01',	'2023-07-18 21:12:01'),
(78,	'724Z-T91Y-5BT7-T6Z7',	'5',	'20',	'0',	0,	'Система',	'2023-07-18 21:42:04',	'2023-07-18 21:42:04'),
(79,	'7VGK-9CLT-P0EB-CSIQ',	'5',	'20',	'0',	0,	'Система',	'2023-07-18 22:12:06',	'2023-07-18 22:12:06'),
(80,	'9CT7-L4AY-7D3M-0SCI',	'5',	'20',	'0',	0,	'Система',	'2023-07-18 22:42:10',	'2023-07-18 22:42:10'),
(81,	'7EFJ-238K-QSCH-9VC4',	'5',	'20',	'0',	0,	'Система',	'2023-07-18 23:12:13',	'2023-07-18 23:12:13'),
(82,	'7KHL-1HWT-BF6D-SN1O',	'5',	'20',	'0',	0,	'Система',	'2023-07-18 23:48:18',	'2023-07-18 23:48:18'),
(83,	'7D59-0Z1W-RUYV-K7PJ',	'5',	'20',	'0',	0,	'Система',	'2023-07-19 00:18:20',	'2023-07-19 00:18:20'),
(84,	'QBUL-NETK-QAFN-72KV',	'5',	'20',	'0',	0,	'Система',	'2023-07-19 00:48:23',	'2023-07-19 00:48:23'),
(85,	'VE6M-E261-9YFB-9TCM',	'5',	'20',	'0',	0,	'Система',	'2023-07-19 01:18:26',	'2023-07-19 01:18:26'),
(86,	'FZSE-PW0Y-FRIM-ASJP',	'5',	'20',	'0',	0,	'Система',	'2023-07-19 01:48:28',	'2023-07-19 01:48:28'),
(87,	'HJ9C-6ZCY-SHEJ-G1JB',	'5',	'20',	'0',	0,	'Система',	'2023-07-19 02:18:31',	'2023-07-19 02:18:31'),
(88,	'9V2J-5ZQO-6P5V-1IF9',	'5',	'20',	'0',	0,	'Система',	'2023-07-19 02:48:34',	'2023-07-19 02:48:34'),
(89,	'C5IY-6CNZ-Y4LT-TOWN',	'5',	'20',	'0',	0,	'Система',	'2023-07-28 00:06:42',	'2023-07-28 00:06:42');

DROP TABLE IF EXISTS `random_keys`;
CREATE TABLE `random_keys` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `games` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `repost`;
CREATE TABLE `repost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bonus` float(11,2) NOT NULL,
  `repost_from` int(11) NOT NULL DEFAULT '0',
  `repost_to` int(11) NOT NULL,
  `color` text NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `repost` (`id`, `bonus`, `repost_from`, `repost_to`, `color`, `updated_at`, `created_at`) VALUES
(1,	0.30,	0,	50,	'#46b461',	'2021-09-05 08:39:43',	'2021-09-04 17:24:16'),
(2,	0.60,	50,	200,	'#c20a0a',	'2021-09-05 08:39:46',	'2021-09-04 17:24:23'),
(3,	0.90,	200,	400,	'#8266e5',	'2021-09-05 08:39:50',	'2021-09-04 17:24:33'),
(4,	1.20,	400,	1000,	'#e6ac2d',	'2021-09-05 08:39:53',	'2021-09-05 07:25:21'),
(5,	1.50,	1000,	4000,	'#e1847f',	'2021-09-05 08:39:57',	'2021-09-05 07:25:53');

DROP TABLE IF EXISTS `results_random`;
CREATE TABLE `results_random` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rand` int(11) NOT NULL,
  `random` text NOT NULL,
  `signature` text NOT NULL,
  `resultat` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tg_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tg_bot_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tg_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gamepay_shop_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gamepay_api_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_id` int(11) NOT NULL,
  `fk_secret_1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fk_secret_2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `piastrix_id` int(11) NOT NULL,
  `piastrix_secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_withdraw` int(11) DEFAULT NULL,
  `dep_withdraw` int(11) DEFAULT NULL,
  `min_time_withdraw` text COLLATE utf8mb4_unicode_ci,
  `max_time_withdraw` text COLLATE utf8mb4_unicode_ci,
  `min_dep` int(11) DEFAULT NULL,
  `min_bonus` int(11) DEFAULT NULL,
  `max_bonus` int(11) DEFAULT NULL,
  `bonus_reg` int(11) DEFAULT NULL,
  `bonus_ref` int(11) DEFAULT NULL,
  `bonus_group` int(11) DEFAULT NULL,
  `dice_set` int(11) DEFAULT NULL,
  `mines_set` int(11) DEFAULT NULL,
  `goal_set` int(11) DEFAULT NULL,
  `min_dice` int(11) DEFAULT NULL,
  `max_dice` int(11) DEFAULT NULL,
  `min_mines` int(11) DEFAULT NULL,
  `max_mines` int(11) DEFAULT NULL,
  `min_goal` int(11) DEFAULT NULL,
  `max_goal` int(11) DEFAULT NULL,
  `status_jackpot` int(11) NOT NULL DEFAULT '0',
  `comisia_jackpot` int(11) NOT NULL DEFAULT '10',
  `jackpot_win` int(11) DEFAULT NULL,
  `profit_jackpot` float(11,2) NOT NULL DEFAULT '0.00',
  `status_wheel` int(11) NOT NULL DEFAULT '0',
  `wheel_win` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coeff_bonus` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mult_bonus` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `wheel_bank` float(11,2) NOT NULL,
  `wheel_profit` float(11,2) NOT NULL,
  `wheel_wait` int(11) NOT NULL DEFAULT '0',
  `jackpot_wait` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mines_bank` float NOT NULL,
  `mines_profit` float NOT NULL,
  `auto_mines` int(11) NOT NULL DEFAULT '0',
  `auto_dice` int(11) NOT NULL DEFAULT '0',
  `dice_bank` float(11,2) NOT NULL,
  `dice_profit` float(11,2) NOT NULL,
  `auto_wheel` int(11) NOT NULL DEFAULT '0',
  `youtube` int(11) NOT NULL DEFAULT '0',
  `goal_bank` float(11,2) NOT NULL,
  `goal_profit` float(11,2) NOT NULL,
  `numbers_status` int(11) DEFAULT '0',
  `number_win` int(11) NOT NULL DEFAULT '0',
  `auto_number` int(11) NOT NULL DEFAULT '0',
  `crash_status` int(11) NOT NULL DEFAULT '0',
  `crash_result` float(11,2) NOT NULL DEFAULT '0.00',
  `crash_bank` float(111,2) NOT NULL,
  `crash_profit` float(11,2) NOT NULL,
  `crash_boom` float(11,2) NOT NULL DEFAULT '0.00',
  `auto_crash` int(11) NOT NULL DEFAULT '0',
  `youtube_crash` int(11) NOT NULL DEFAULT '0',
  `dep_transfer` int(11) NOT NULL,
  `dep_createpromo` int(11) NOT NULL,
  `random_key_id` int(11) NOT NULL DEFAULT '1',
  `rand_key` int(11) NOT NULL,
  `rand_random` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rand_signature` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `wheelYmn` int(11) NOT NULL,
  `wheelWinNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coefsHunt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jackpot_bank` float(11,2) NOT NULL,
  `jackpot_random` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jackpot_signature` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jackpot_rand` int(11) NOT NULL,
  `status_x100` int(11) NOT NULL DEFAULT '0',
  `win_x100` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `auto_x100` int(11) NOT NULL DEFAULT '0',
  `x100WinNumber` int(11) NOT NULL,
  `X100BonusUser_ID` int(11) NOT NULL,
  `X100BonusAvatar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_keno` int(11) NOT NULL,
  `keno_numbers` text COLLATE utf8mb4_unicode_ci,
  `numberBonusKeno` int(11) NOT NULL DEFAULT '0',
  `coeffBonusKeno` int(11) NOT NULL DEFAULT '0',
  `noGetKeno` text COLLATE utf8mb4_unicode_ci,
  `youtube_keno` int(11) NOT NULL DEFAULT '0',
  `coin_bank` float(11,2) NOT NULL DEFAULT '0.00',
  `coin_profit` float(11,2) NOT NULL DEFAULT '0.00',
  `shoot_bank` float(11,2) NOT NULL DEFAULT '0.00',
  `shoot_profit` float(11,2) NOT NULL DEFAULT '0.00',
  `newYear` int(11) NOT NULL DEFAULT '0',
  `meta_tags` text COLLATE utf8mb4_unicode_ci,
  `prime_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prime_secret_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prime_secret_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linepay_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linepay_secret_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linepay_secret_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_boom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `max_withdraw_bonus` int(11) NOT NULL DEFAULT '0',
  `theme` int(11) NOT NULL DEFAULT '0',
  `paypaylych_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypaylych_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aezapay_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aezapay_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `settings` (`id`, `name`, `tg_id`, `tg_bot_id`, `tg_token`, `group_id`, `group_token`, `gamepay_shop_id`, `gamepay_api_key`, `fk_id`, `fk_secret_1`, `fk_secret_2`, `piastrix_id`, `piastrix_secret`, `min_withdraw`, `dep_withdraw`, `min_time_withdraw`, `max_time_withdraw`, `min_dep`, `min_bonus`, `max_bonus`, `bonus_reg`, `bonus_ref`, `bonus_group`, `dice_set`, `mines_set`, `goal_set`, `min_dice`, `max_dice`, `min_mines`, `max_mines`, `min_goal`, `max_goal`, `status_jackpot`, `comisia_jackpot`, `jackpot_win`, `profit_jackpot`, `status_wheel`, `wheel_win`, `coeff_bonus`, `mult_bonus`, `wheel_bank`, `wheel_profit`, `wheel_wait`, `jackpot_wait`, `created_at`, `updated_at`, `mines_bank`, `mines_profit`, `auto_mines`, `auto_dice`, `dice_bank`, `dice_profit`, `auto_wheel`, `youtube`, `goal_bank`, `goal_profit`, `numbers_status`, `number_win`, `auto_number`, `crash_status`, `crash_result`, `crash_bank`, `crash_profit`, `crash_boom`, `auto_crash`, `youtube_crash`, `dep_transfer`, `dep_createpromo`, `random_key_id`, `rand_key`, `rand_random`, `rand_signature`, `wheelYmn`, `wheelWinNumber`, `coefsHunt`, `jackpot_bank`, `jackpot_random`, `jackpot_signature`, `jackpot_rand`, `status_x100`, `win_x100`, `auto_x100`, `x100WinNumber`, `X100BonusUser_ID`, `X100BonusAvatar`, `status_keno`, `keno_numbers`, `numberBonusKeno`, `coeffBonusKeno`, `noGetKeno`, `youtube_keno`, `coin_bank`, `coin_profit`, `shoot_bank`, `shoot_profit`, `newYear`, `meta_tags`, `prime_id`, `prime_secret_1`, `prime_secret_2`, `linepay_id`, `linepay_secret_1`, `linepay_secret_2`, `status_boom`, `max_withdraw_bonus`, `theme`, `paypaylych_id`, `paypaylych_token`, `aezapay_id`, `aezapay_token`) VALUES
(1,	'exo.casino – Мгновенные игры с выводом денег!',	'exo.casino',	'exo.casino',	'111',	'1',	'1111',	'111',	'11111',	11111,	'11',	'222',	11,	'222',	50,	50,	'5 минут',	'24 часов',	1,	1,	2,	0,	5,	10,	1,	2,	3,	1,	10000,	1,	10000,	NULL,	10000,	0,	10,	0,	1022.30,	0,	'false',	'false',	'false',	958.50,	95.50,	-1,	-1,	NULL,	'2023-07-24 06:11:49',	250,	0,	1,	1,	-29623.31,	0.80,	1,	1,	61012272.00,	201098672.00,	0,	0,	1,	3,	0.00,	25.09,	89.84,	0.00,	1,	0,	2000,	2000,	13,	1,	'{\"method\":\"generateSignedIntegers\",\"hashedApiKey\":\"gbz3+OLSbP9+iJaLlWZHGgbL8bingq8KsHWEVisfZUhPyEsTxGYpsgGdYGcGbj07T1KHPRDc/Mk+IHfTLQc+lw==\",\"n\":1,\"min\":0,\"max\":29,\"replacement\":false,\"base\":10,\"data\":[7],\"completionTime\":\"2021-08-30 05:19:20Z\",\"serialNumber\":856}',	'r2Q5CQlNI9S4OQcxI7/51kERGSTlW/vRttNHil5fBq4lz8P/iOVKXNABg8a8Vlw8tpok+XLe0LFj/DzZcjEeZO1SHQSdb2WIaaI58s0LmdhKi37jsOk1YbzVnQibnfK4yXvX376NMyLeDBrWrB02m7F0EFUGPFP6Tub63TcyqUa8IojrhsykWKjzYzKfi8AQLZsBJyolJbRHGoJA62QcMfpmuaUlPWONnDfi2gdEFGehRl1mzFmtmcKXvZhMOEK33iZQwWA9XHSHfdbPuK9pYD/BpfYo2nXucR1tadhFJUx1sxZc0MrTVT73Wgy0o1aDmjwje18glLx4dBzbfC9Sz2vz+VCpVO1fVOtc4Cr2hnbSJxSLuhq+gl1LKADWcNrHPsadiB8i4cFQt4KnpiM0CEZgcFG3+uCwHaUWPcEQfuEu79fb51XrxJE3L0U7ttdqlpqU1Cl3Lt6e3tBwnMFerFrbaD2k8m8SdTTqlqtSlMYskcNPWQ0yNqkTSri3kgo5b/C07kyfy22Z8GP7A5QhUux/B8UHYqlgyPDyC0tIznfNKVy8xwT7kAKCsl1GBqNSVAgF6uqB7LhK4BfRgnIsahykyP/czfcqDH5PZgplVU9BfpXX5tgAjB+D8lWnCz5a0/mES0qOKtki4IU/MOTpZnG+OKNTO8hHIUuumedatYY=',	1,	'2',	'[0.5,7,1,3,9,0.5,0.5,0.5,6,0.5,0.5,1,0.5,0.5,1,7,5,8,1,0.5,0.5,0.5,6,9,8,0.5,0.5,0.5,0.5,8,3,10,0.5,0.5,0.5,0.5,0.5,0.5,0.5,7,9,0.5,0.5,0.5,6,0.5,0.5,1,4,0.5,0.5,0.5,9,0.5,7,1,0.5,1,0.5,0.5,1,0.5,7,0.5,1,0.5]',	458015.03,	'{\"method\":\"generateSignedIntegers\",\"hashedApiKey\":\"gbz3+OLSbP9+iJaLlWZHGgbL8bingq8KsHWEVisfZUhPyEsTxGYpsgGdYGcGbj07T1KHPRDc/Mk+IHfTLQc+lw==\",\"n\":1,\"min\":1,\"max\":20,\"replacement\":false,\"base\":10,\"data\":[2],\"completionTime\":\"2023-01-21 20:43:35Z\",\"serialNumber\":1}',	'PFsjpGCz7jt5XeYEeuppnKIz7Hp7YIVHJ6GrIqMnWUlMa1lvODrxqhekx+c2FtITdbm+ZFNu9g5yh0t1YXrYyUV+9s1/phGziwwFPFZ97TxEU+nU8n1YzPB4mmzniN5U6zfM5P7r0Vi7QoyyumNISHE3nXNmNFrPPRo6WtOhiPvnbvx7EBtxYbzMYofW/KOYVWfzgrs+Dv6r0MQFM6jUW7H7VUCEk0SbS7uR1j1txPlxMxlwh4RM86ZFflWM5gvIQOJG80nXBzFzlr7oirrM0Nkm/mesCZ2k8u+mlJKlOtGm4PKboc3EQJ/RLmIEUQBA/t/0Irf9c4BwJIkdCrT7wfQIa+5FjU2YX+lZnwHd4U4Rq2VHbDd5wf+Jv3uchUaoFnLAjczyANkRcCW3axWLN4s/diGJAeAe/EmQRv3xh7qn56sPLbJWVZB0OiIgP3l9qausY8wxXSSTEnrfxK830KlsiNJMtsBr55U4eEEWnxbXs/j0cW0hFO9t2uR3ul07wvKuJfoDjytL3M4gi+wyhUquq4FQzXTbvxpe9jOqfcK1pOIkv9FEVhVYBjD+afPoCCoCfrvgG94bZ085fT5dci0tkSuxKjgYaOMvvU7WWaCw3ON6JdsnOGoywA7NJlmBOlKa3HUULi0CGBwymmN/8kFUnbOAJHBK24LJTs9y4Vo=',	2,	0,	'false',	1,	0,	0,	'0',	0,	'[]',	0,	0,	'[]',	0,	12007.39,	12887.00,	8367.20,	2364.80,	0,	'" />',	'0',	'0',	'0',	'11',	'22',	'11',	'1',	200,	0,	'22',	'11',	NULL,	NULL);

DROP TABLE IF EXISTS `shoot`;
CREATE TABLE `shoot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `bets` text NOT NULL,
  `coeffs` text NOT NULL,
  `type` int(11) NOT NULL,
  `cashHuntGame` text,
  `crazyTimeGame` text,
  `noBank` int(11) NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `slots`;
CREATE TABLE `slots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` varchar(150) NOT NULL,
  `title` varchar(150) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `provider` varchar(150) NOT NULL,
  `show` int(11) NOT NULL DEFAULT '1',
  `is_live` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `color` text NOT NULL,
  `name` text CHARACTER SET utf8 NOT NULL,
  `deposit` float(11,2) NOT NULL,
  `bonus` float(11,2) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `class` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `status` (`id`, `color`, `name`, `deposit`, `bonus`, `updated_at`, `created_at`, `class`) VALUES
(1,	'#fee439',	'Волк',	100.00,	10.00,	'2021-08-26 06:08:03',	'2021-08-25 17:56:09',	'wolf'),
(2,	'#0bfe54',	'Хищник',	500.00,	50.00,	'2021-08-26 06:08:08',	'2021-08-25 17:56:55',	'predator'),
(3,	'#5533ff',	'Премиум',	1000.00,	100.00,	'2021-08-26 06:08:11',	'2021-08-25 17:57:18',	'premium'),
(4,	'#ff00f7',	'Альфа',	2500.00,	250.00,	'2021-08-26 06:08:13',	'2021-08-25 17:57:45',	'alpha'),
(5,	'#ff8f0f',	'Вип',	5000.00,	500.00,	'2021-08-26 06:08:16',	'2021-08-25 17:58:16',	'vip'),
(6,	'#ff4242',	'Профи',	10000.00,	1000.00,	'2021-08-26 06:08:18',	'2021-08-25 17:58:56',	'professional'),
(7,	'#e00000',	'Легенда',	50000.00,	5000.00,	'2021-08-26 06:08:23',	'2021-08-25 17:59:15',	'legend');

DROP TABLE IF EXISTS `system_dep`;
CREATE TABLE `system_dep` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8 NOT NULL,
  `min_sum` float(11,2) NOT NULL,
  `comm_percent` int(11) NOT NULL,
  `img` text NOT NULL,
  `ps` int(11) NOT NULL DEFAULT '1',
  `off` int(11) NOT NULL DEFAULT '0',
  `color` text,
  `number_ps` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `system_dep` (`id`, `name`, `min_sum`, `comm_percent`, `img`, `ps`, `off`, `color`, `number_ps`, `sort`, `updated_at`, `created_at`) VALUES
(26,	'Карта',	300.00,	0,	'../img/wallet/card.svg',	5,	0,	'#0084ff',	1,	0,	'2023-04-02 11:13:11',	'2023-02-22 14:42:41'),
(27,	'Qiwi',	100.00,	0,	'../img/wallet/qiwi.png',	5,	0,	'#ff8d00',	2,	2,	'2023-04-02 11:12:14',	'2023-02-22 14:44:50'),
(28,	'Юmoney',	100.00,	0,	'../img/wallet/yoo.svg',	1,	0,	'#8b3ffd',	3,	3,	'2023-04-02 11:12:07',	'2023-02-22 14:45:58'),
(29,	'Bitcoin',	300.00,	0,	'../img/wallet/bitcoin.svg',	1,	0,	'#f7931a',	4,	4,	'2023-04-02 11:12:05',	'2023-02-22 14:47:58'),
(30,	'TRC20',	400.00,	0,	'../img/wallet/trc20.svg',	1,	0,	'#50af95',	5,	5,	'2023-04-02 11:12:03',	'2023-02-22 14:49:04'),
(31,	'ERC20',	400.00,	0,	'../img/wallet/erc20.svg',	1,	0,	'#50af95',	6,	6,	'2023-04-02 11:12:00',	'2023-02-22 14:50:05'),
(32,	'BNB',	100.00,	0,	'../img/wallet/bnb.svg',	1,	0,	'#f3ba2f',	7,	7,	'2023-04-02 11:11:57',	'2023-02-22 14:51:16'),
(33,	'Tron',	100.00,	0,	'../img/wallet/tron.svg',	1,	0,	'#ff0000',	8,	8,	'2023-04-02 11:11:55',	'2023-02-22 14:51:57'),
(34,	'Ethereum',	100.00,	0,	'../img/wallet/eth.svg',	1,	0,	'#383838',	9,	9,	'2023-04-02 11:11:54',	'2023-02-22 14:53:11'),
(35,	'Другие',	100.00,	0,	'../img/wallet/other.svg',	1,	0,	'#0084ff',	10,	10,	'2023-04-02 11:11:51',	'2023-02-22 14:54:15'),
(36,	'Карта #2',	300.00,	0,	'../img/wallet/card.svg',	6,	0,	'#ff0000',	0,	1,	'2023-04-02 11:13:38',	'2023-04-02 10:30:46');

DROP TABLE IF EXISTS `system_withdraw`;
CREATE TABLE `system_withdraw` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8 NOT NULL,
  `min_sum` float(11,2) NOT NULL,
  `comm_percent` int(11) NOT NULL,
  `comm_rub` int(11) NOT NULL,
  `img` text NOT NULL,
  `off` int(11) NOT NULL DEFAULT '0',
  `color` text,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `system_withdraw` (`id`, `name`, `min_sum`, `comm_percent`, `comm_rub`, `img`, `off`, `color`, `updated_at`, `created_at`) VALUES
(9,	'Qiwi',	55.00,	5,	0,	'../img/wallet/qiwi.png',	0,	'#FF994F',	'2023-01-22 16:02:57',	'2021-08-26 08:53:15'),
(12,	'Piastrix',	50.00,	0,	0,	'../img/wallet/piastrix.svg',	0,	'#FF4182',	'2021-08-26 08:54:08',	'2021-08-26 08:54:08'),
(13,	'FkWallet',	50.00,	0,	0,	'../img/wallet/fkwallet.png',	0,	'#146fff',	'2021-08-26 08:54:22',	'2021-08-26 08:54:22'),
(14,	'VISA',	700.00,	5,	70,	'../img/wallet/visa.png?v=1',	0,	'#313d86',	'2021-08-26 08:55:08',	'2021-08-26 08:55:08'),
(15,	'MCARD',	700.00,	5,	70,	'../img/wallet/mastercard.png?v=2',	0,	'#eb041e',	'2021-08-26 08:56:43',	'2021-08-26 08:55:43');

DROP TABLE IF EXISTS `tickets`;
CREATE TABLE `tickets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latest_message` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `ticket_messages`;
CREATE TABLE `ticket_messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) NOT NULL,
  `message_from` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_to` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `tourniers`;
CREATE TABLE `tourniers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `places` int(11) NOT NULL,
  `game` text NOT NULL,
  `game_id` int(11) NOT NULL,
  `prize` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `class` text NOT NULL,
  `image` text,
  `description` text CHARACTER SET utf8 NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `prizes` text,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tourniers` (`id`, `name`, `places`, `game`, `game_id`, `prize`, `start`, `end`, `class`, `image`, `description`, `status`, `prizes`, `updated_at`, `created_at`) VALUES
(4,	'SHOOT BATTLE',	3,	'Crazy Shoot',	0,	1000,	1675752720,	1675839120,	'shoot',	NULL,	'Турнир по режиму Crazy Shoot. Чем больше сумма общих выигрышей у вас будет на момент конца турнира, тем выше будет ваш приз.',	1,	'[\"500\",\"300\",\"200\"]',	'2023-02-07 09:52:21',	'2023-02-07 09:52:21');

DROP TABLE IF EXISTS `tournier_table`;
CREATE TABLE `tournier_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tournier_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `avatar` text NOT NULL,
  `name` text CHARACTER SET utf8 NOT NULL,
  `scores` float(11,2) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tournier_table` (`id`, `tournier_id`, `user_id`, `avatar`, `name`, `scores`, `updated_at`, `created_at`) VALUES
(6,	4,	15,	'https://sun6-20.userapi.com/s/v1/ig2/N7jn6AE7EQPgpBV6W-aAg3SHvLXyNH2XrnaR1LSxcrfN4zOUrZ3XCkgO46vtY8z9EZ8yyHc3QrCoDfKxrX_U2Om_.jpg?size=200x200&quality=96&crop=64,64,512,512&ava=1',	'Dmitriy Lermontov',	43.00,	'2023-07-18 23:45:41',	'2023-07-18 23:44:50'),
(7,	4,	1,	'https://sun6-20.userapi.com/s/v1/ig2/NfhHwRUo2Q_84fZGQV83Bpkb-tSGX3NlZctfWft_V0aMN9efgJurreJ6TidM15a-8_jeXJ7svMvGgP0LtN9cqsXQ.jpg?size=200x200&quality=95&crop=51,0,819,819&ava=1',	'Сергей Исаев',	3.00,	'2023-07-19 00:49:23',	'2023-07-19 00:49:23'),
(8,	4,	16,	'https://vk.com/images/camera_200.png',	'Baris Schofield',	22.00,	'2023-07-19 01:26:31',	'2023-07-19 01:07:56');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `bonus_up` int(11) NOT NULL DEFAULT '1',
  `ref_coeff` int(11) NOT NULL DEFAULT '10',
  `profit` int(11) NOT NULL DEFAULT '0',
  `balance_ref` float(11,2) DEFAULT '0.00',
  `deps` int(11) NOT NULL DEFAULT '0',
  `reposts` int(11) NOT NULL DEFAULT '0',
  `balance_repost` float(11,2) NOT NULL DEFAULT '0.00',
  `withdraws` int(11) NOT NULL DEFAULT '0',
  `win_games` int(11) NOT NULL DEFAULT '0',
  `lose_games` int(11) NOT NULL DEFAULT '0',
  `sum_win` float(11,2) NOT NULL DEFAULT '0.00',
  `max_win` float(11,2) NOT NULL DEFAULT '0.00',
  `sum_bet` float(11,2) NOT NULL DEFAULT '0.00',
  `sum_to_withdraw` float(11,2) NOT NULL DEFAULT '0.00',
  `refs` int(11) NOT NULL DEFAULT '0',
  `bonus_refs` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `videocard` text COLLATE utf8mb4_unicode_ci,
  `balance` double(11,2) NOT NULL DEFAULT '0.00',
  `demo_balance` float(11,2) NOT NULL DEFAULT '0.00',
  `type_balance` int(11) NOT NULL DEFAULT '0',
  `qiwi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_promo` int(11) NOT NULL DEFAULT '0',
  `time_withdraw` int(11) NOT NULL DEFAULT '0',
  `bets_time` int(11) NOT NULL DEFAULT '0',
  `bets` int(11) NOT NULL DEFAULT '0',
  `bdate` int(11) NOT NULL DEFAULT '0',
  `ban` int(11) NOT NULL DEFAULT '0',
  `why_ban` text COLLATE utf8mb4_unicode_ci,
  `bonusMine` int(11) NOT NULL DEFAULT '0',
  `chat_ban` int(11) DEFAULT '0',
  `time_chat_ban` int(11) DEFAULT '0',
  `ref_id` int(11) DEFAULT NULL,
  `vk_id` int(11) DEFAULT NULL,
  `tg_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bonus_1` int(11) NOT NULL DEFAULT '0',
  `bonus_2` int(11) NOT NULL DEFAULT '0',
  `admin` int(11) NOT NULL DEFAULT '0',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'https://ustanovkaos.ru/wp-content/uploads/2022/02/06-psevdo-pustaya-ava.jpg',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `games` int(11) NOT NULL DEFAULT '0',
  `count_win` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `minesStart` int(11) NOT NULL DEFAULT '0',
  `bonusCoin` int(11) DEFAULT '0',
  `shootDrop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `newYear` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `user_reposts`;
CREATE TABLE `user_reposts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `wheels`;
CREATE TABLE `wheels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `coff` int(11) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `bet` float(11,2) NOT NULL,
  `img` text,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `wheel_anti`;
CREATE TABLE `wheel_anti` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coeff` text NOT NULL,
  `win` float NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `wheel_anti` (`id`, `coeff`, `win`, `updated_at`, `created_at`) VALUES
(1,	'2',	0,	'2023-07-19 01:11:48',	NULL),
(2,	'3',	0,	'2023-07-19 01:11:52',	NULL),
(3,	'5',	0,	'2023-07-13 20:17:51',	NULL),
(4,	'7',	0,	'2023-07-18 20:45:30',	NULL),
(5,	'14',	0,	'2023-07-19 01:11:53',	NULL),
(6,	'30',	0,	'2023-07-18 23:42:51',	NULL);

DROP TABLE IF EXISTS `wheel_history`;
CREATE TABLE `wheel_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coff` varchar(100) NOT NULL,
  `number` int(11) NOT NULL,
  `random` text NOT NULL,
  `signature` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `withdraws`;
CREATE TABLE `withdraws` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `login` text CHARACTER SET utf8,
  `avatar` text COLLATE utf8mb4_unicode_ci,
  `ps` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wallet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sum_full` float(11,2) NOT NULL,
  `sum` double(11,2) unsigned NOT NULL DEFAULT '0.00',
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `img_system` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mult` int(11) NOT NULL DEFAULT '0',
  `id_fk_w` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `x100`;
CREATE TABLE `x100` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `coff` int(11) NOT NULL,
  `multipleer` int(11) NOT NULL DEFAULT '1',
  `login` text CHARACTER SET utf8 NOT NULL,
  `bet` float(11,2) NOT NULL,
  `img` text,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `x100_anti`;
CREATE TABLE `x100_anti` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coeff` text NOT NULL,
  `win` float NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `x100_history`;
CREATE TABLE `x100_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coff` varchar(100) NOT NULL,
  `number` int(11) NOT NULL,
  `random` text NOT NULL,
  `signature` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- 2023-07-27 21:22:59
