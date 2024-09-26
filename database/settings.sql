-- phpMyAdmin SQL Dump
-- version 5.2.1-1.el7.remi
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 25, 2024 at 01:10 PM
-- Server version: 10.5.13-MariaDB-log
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xs998400_webqoo10`
--

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amazon_accesskey` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amazon_secretkey` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amazon_partnertag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qsm_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qsm_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qsm_apikey` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `multiplier` decimal(10,2) DEFAULT NULL,
  `qoo_maincategory` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qoo_subcategory` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qoo_smallcategory` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exhi_asins` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ng_asins` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ng_words` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alert_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `user_id`, `amazon_accesskey`, `amazon_secretkey`, `amazon_partnertag`, `qsm_email`, `qsm_password`, `qsm_apikey`, `multiplier`, `qoo_maincategory`, `qoo_subcategory`, `qoo_smallcategory`, `exhi_asins`, `ng_asins`, `ng_words`, `alert_email`, `created_at`, `updated_at`) VALUES
(2, 1, 'AKIAJMJK5KCN3X6BR7WA', 'RdXI0Gi6AcRapTwoaYZlXQmSV0PKgtg5dhWNfZPz', 'yuuiti8367-22', 'aliq10.hideki@gmail.com', 'Ukumatiiira1', 'BhiQeRsAhG1CSRXs3hEzdq7i_g_2_c_g_1_eMMcILhpP6q_g_2_VNJs_g_3_', 1.56, 'バッグ・雑貨', 'ストール・マフラー', '300003086', 'B0BLRT8XKY\r\nB00LUGN104\r\nB09JSM6X6Q\r\nB09B3M9DCY\r\nB0928N4M35\r\nB0928NCJVC\r\nB0928MRCNY\r\nB0928M3BG9\r\nB0928LMMHG\r\nB0928LVY8F\r\nB0928HML89\r\nB0928LDT53\r\nB0B6HD438S\r\nB09GK3WPYP\r\nB001DO2XWA\r\nB08B9LJ6YQ\r\nB08B9N4VPS\r\nB07T8ZRDDF\r\nB0BCDXHMGP\r\nB0BPB653ZK\r\nB0876CBNCM\r\nB07MBXPPC9\r\nB018LUF7PS\r\nB075D7BDPX\r\nB09X1DY9VV\r\nB0BRGNBZ5C\r\nB0BXH49KBS\r\nB09VC8393C\r\nB07K3ZLRPL\r\nB0C2W1188T\r\nB0BQZMFQNH\r\nB08TT481SM\r\nB09QLRRB98', 'B001DO2XWA\r\nB0876CBNCM\r\nB0BXH49KBS', 'Amazon\r\nQoo10\r\nAsin', 'super0116.dev@gmail.com', '2024-09-10 20:43:34', '2024-09-21 14:45:16'),
(3, 3, 'akaunt8367', 'RdXI0Gi6AcRapTwoaYZlXQmSV0PKgtg5dhWNfZPz', 'yuuiti8367-22', 'tagtag3324@gmail.com', 'Yuuiti8367', 'BhiQeRsAhG0u1XA1g3DjNjQM8yLyjC6hpDixQXkUGcA_g_3_', 1.20, '文具', '文房具', '300000525', 'B099ZTNWC1\r\nB0927YL5ND\r\nB07WYPKCM4\r\nB074TB914M\r\nB003PRIVUG', NULL, NULL, 'tagtag3324@gmail.com', '2024-09-21 08:51:26', '2024-09-21 18:05:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
