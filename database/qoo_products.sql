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
-- Table structure for table `qoo_products`
--

CREATE TABLE `qoo_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `gd_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_url_main` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_url_thumb` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT 0,
  `quantity` int(10) UNSIGNED DEFAULT 0,
  `shipping` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `material` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `origin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exhibit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seller_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qoo_products`
--

INSERT INTO `qoo_products` (`id`, `user_id`, `gd_no`, `title`, `url`, `img_url_main`, `img_url_thumb`, `category`, `price`, `quantity`, `shipping`, `description`, `color`, `size`, `weight`, `material`, `origin`, `exhibit`, `reason`, `seller_code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '1099564085', '枕カバー付きのピンクの花柄のコットン掛け布団カバー,柔らかく快適な寝具,クイーンまたはシングルベッドに適しています,205tc,3個', 'https://ja.aliexpress.com/item/1005006991392394.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/S27e9734b8b68404d92426cb219a8bc4b2/205tc.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 6532, 1, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', 'SKU-32702589', '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL),
(2, 1, '1099564283	', 'ランドスケープ用のエコロジカルガラスボトル、ムスジャー、装飾用の閉鎖、オフィス、フラワールームコンテナ、マイクロ、ランドスケープ、デスクトップ', '//ja.aliexpress.com/item/1005007084542263.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/S9a383f7557c04b0bb57aac8b698fa48cJ/-.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 10744, 2, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', 'SKU-68294622', '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL),
(3, 1, '1099564417', 'Ladi\' ロングトライアングルヘアタオル、ドライヘアキャップ、刺absorbent吸収', '//ja.aliexpress.com/item/1005007084542263.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/S28d51151c56340f0abd723cdf99dee769/Ladi-absorbent.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 316, 3, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', 'SKU-45069377', '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL),
(4, 1, '1099564477', '透明密閉収納ボックス,透明,正方形,食品保存用,果物と肉の保存容器,ポータブルボックス,キッチン用品,700ml', '//ja.aliexpress.com/item/1005007084542263.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/Sb4becd19e02b4f4da815a085bf80d3bek/200000mAh-2-USB-iPhone-Android.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 692, 4, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', 'SKU-74311902', '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL),
(5, 1, '1099564480', '急速冷凍アイスボックス,環境にやさしい,革新的で便利,黄色の氷の保管,アイスホッケー型,製氷機,お手入れが簡単', '//ja.aliexpress.com/item/1005007084542263.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/S9da4ab026c914da0b540085eb42b77f3E/-.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 886, 5, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', 'SKU-88192457', '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL),
(6, 1, '1099564653', 'ミュースライスまたはシミュレーション草の巣モデル、ミニチュアグラス、フォーク、サンドシーン素材、リアルな草、ツフィートの植物、クラスターの風景、新しい', '//ja.aliexpress.com/item/1005007084542263.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/Sb4becd19e02b4f4da815a085bf80d3bek/200000mAh-2-USB-iPhone-Android.jpghttps://ae01.alicdn.com/kf/S9da4ab026c914da0b540085eb42b77f3E/-.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 316, 6, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', 'SKU-73536708', '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL),
(7, 1, '1099564660', 'ステンレス鋼ティーポット,大容量,お茶の分離を備えたサーモクーラー,商用利用,家庭用ポット,316', '//ja.aliexpress.com/item/1005007084542263.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/Sc2176677570d44409a25ee32c2e235bfT/-.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 1876, 7, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', 'SKU-31434156', '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL),
(8, 1, '1099564670', 'Crossfu thai スイッチタイプC,ステンレス鋼,usb,黒いパネル,壁電源ソケット,コンピューター', '//ja.aliexpress.com/item/1005007084542263.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/S35c4853292ce46658193810e9dac26e4x/316.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 1438, 8, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', 'SKU-23162166', '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL),
(9, 1, '1099564738', '防水ディープフィットポケットシート、マットレスプロテクター、家族の寝室、ゲストルーム、アパート、学校、枕コア、枕カバー、単色、クイーン', '//ja.aliexpress.com/item/1005007084542263.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/Sf8951d35b8c4456c855528d7980b0fb8w/Crossfu-thai-C-usb.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 5246, 9, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', 'SKU-42077865', '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL),
(10, 1, '1099564740', 'ポータブルケーキコンテナ、ケーキキャリア、実用的なカップケーキホルダー、新鮮な養蜂、50個', '//ja.aliexpress.com/item/1005007084542263.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/Sf0ed6b2ab2ed4eadab330db1a7f05ac0g/-.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 746, 10, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', 'SKU-39768247', '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL),
(11, 1, '1099564742', '再利用可能なロングバキュームシーラー,食品保存,包装袋,家庭用,キッチンアクセサリー,10個', '//ja.aliexpress.com/item/1005007084542263.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/S1b5576b673a94399b0ffc7c0143e5533G/50.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 316, 11, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', 'SKU-51497228', '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL),
(12, 1, '1099565189', '食品保存と梱包用のラベルステッカー1ロール、読みやすい、冷蔵庫と冷凍庫に最適、125個', '//ja.aliexpress.com/item/1005007084542263.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/S8c21ccf601db43bdb0344f905adeb47eu/10.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 316, 12, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', 'SKU-46769815', '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL),
(13, 1, '1099565393', 'ブレビルvcf125ミニバリスタ、サンビーム、コーヒーマシン、em4300 em5300 emm5400bk、3 ears、58mm', '//ja.aliexpress.com/item/1005007084542263.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/S56dcaf5b57e64eb198e0a5786eea8806w/1-125.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 7852, 13, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', 'SKU-23419727', '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL),
(14, 1, '1099565397', 'クリエイティブアルミフォイルローズゴールド耐久性のあるウェディング、バレンタインデー', '//ja.aliexpress.com/item/1005007084542263.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/S385f0784d43c4b41a40dacc51f068fb0e/vcf125-em4300-em5300-emm5400bk-3-ears-58mm.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 2198, 14, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', 'SKU-61538079', '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL),
(15, 1, '1099565403', '冷凍食品,マルチレイヤーコンテトンボックス,家庭用充填装置,凍結防止冷蔵庫', '//ja.aliexpress.com/item/1005007084542263.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/S385f0784d43c4b41a40dacc51f068fb0e/vcf125-em4300-em5300-emm5400bk-3-ears-58mm.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 536, 15, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', 'SKU-53176556', '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL),
(16, 1, '1099565450', '気密蓋付きの食品グレードのコンテナー、安全で無毒の食品容器、290ml', '//ja.aliexpress.com/item/1005007084542263.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/S5fa0d6822cf84c8ea14bc5d4cf9643d73/27-36.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 508, 16, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', 'SKU-80254050', '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL),
(17, 1, '1099565455', 'ディブックマーク用の本物のドライフラワーパック、キャンドル作り、天然圧縮花ペタル、アートクラフト装飾、27 36個', '//ja.aliexpress.com/item/1005007084542263.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/Sc8ed3fe1311a41ef870b94d6eec35613F/-.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 474, 17, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', 'SKU-63215658', '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL),
(18, 1, '1099565587', 'Seiko ステンレス鋼の多機能キッチンはさみ、シャープなプラスチックハンドル、鶏の骨、高品質', '//ja.aliexpress.com/item/1005007084542263.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/Sb4becd19e02b4f4da815a085bf80d3bek/200000mAh-2-USB-iPhone-Android.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 127848, 18, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', 'SKU-44699082', '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL),
(19, 1, '1099565933', 'プラスチック製の折りたたみ式扇風機,金と銀のパウダークラフトファン,結婚式のパーティー,中国風ダンスクロス', '//ja.aliexpress.com/item/1005007084542263.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/Sb4895e4154124b42aaa7828dab31cb5ee/-.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 3398, 19, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', 'SKU-18089343', '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL),
(20, 1, '1099566017', 'まつげとまつげ用のミニポータブルファン,冷却システム,USB充電式,サイレント', '//ja.aliexpress.com/item/1005007084542263.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/S40520a5773a741cda9f1379efd8ebcc2F/USB.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 1727, 20, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', 'SKU-4691560', '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL),
(21, 1, '1099566061', 'バチェロレッテパーティーアクセサリー,ウェディングベール,ピンクゴールド,一時的なステッカー', '//ja.aliexpress.com/item/1005007084542263.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/S9a43fd763bbe4413b1ebcb852b98c394g/USB-USB-2024.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 1842, 21, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', 'SKU-59433738', '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL),
(22, 1, '1099566064', 'ポータブルネックレスミニファン,USB充電式,サイレント,スポーツ用', '//ja.aliexpress.com/item/1005007084542263.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/Sb4becd19e02b4f4da815a085bf80d3bek/200000mAh-2-USB-iPhone-Android.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 2254, 22, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', 'SKU-15497296', '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL),
(23, 1, '1099566065', 'USB充電器付きポータブル扇風機,リラックス,学生,寮,USB充電,2024', '//ja.aliexpress.com/item/1005007084542263.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/S1b67649751df44bc848e747156cc701fb/6-12cm-24.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 1958, 23, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', 'SKU-59857133', '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL),
(24, 1, '1099566070', '特大ビールグラス、ガラス瓶、誕生日パーティー、ウェディングギフト、ゴブレットジュースグラス、3000ml、108オンス', '//ja.aliexpress.com/item/1005007084542263.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/S1b67649751df44bc848e747156cc701fb/6-12cm-24.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 1486, 24, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', 'SKU-78066639', '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL),
(25, 1, '1099566301', 'ミニ天然乾式花のブーケ、outonnieres groomsmen、ボタンホールの花嫁介添人の花、コサージュブローチ、クリスマスの結婚式の装飾、1個', '//ja.aliexpress.com/item/1005007084542263.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/A93549736b2ef4c39abbf3078bb2e1caer/USB.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 2646, 25, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', 'SKU-41959126', '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL),
(26, 1, '1099566415', '天然の黒髪のスパイク,6〜12cm/24ピース,波状,圧縮,本物の葉,デカール,植物,電話ケース,グリーティングカード', '//ja.aliexpress.com/item/1005007084542263.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/Sff5bb8b7157d463cb2b0e20d7f95f28f3/-.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 1276, 26, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', NULL, '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL),
(27, 1, '1099566490', '緑の野菜のヘルバーキーパー、収納セーバー、最大リフレッシュネス、冷蔵庫オーガナイザー、換気スロット', '//ja.aliexpress.com/item/1005007084542263.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/Sd8b7f6218c1d4622b7d61aea3392e68ev/Genmin-Impact-kamisato-ayka.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 2048, 27, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', NULL, '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL),
(28, 1, '1099566886', 'ポータブルミニハンドヘルドUSBファン,ポータブルバックル付き充電器,オフィス,屋外,旅行,学生,夏用', '//ja.aliexpress.com/item/1005007084542263.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/Sb4becd19e02b4f4da815a085bf80d3bek/200000mAh-2-USB-iPhone-Android.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 133240, 28, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', NULL, '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL),
(29, 1, '1099566920', '自動車用シガレットライター、EUプラグ、us電源アダプター、acアダプター、dc 220 v〜12v、2a、5a、8a、10a|AC/DC アダプター', '//ja.aliexpress.com/item/1005007084542263.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/Sb4becd19e02b4f4da815a085bf80d3bek/200000mAh-2-USB-iPhone-Android.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 5366, 29, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', NULL, '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL),
(30, 1, '1099566922', 'シリコン滑り止めベース付きウォーターボトルハンドルストラップ,耐久性のあるカラフルなストローカップ,ドリンクウェア,コーヒーカップ用キャリングコード', '//ja.aliexpress.com/item/1005007084542263.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/Sb4becd19e02b4f4da815a085bf80d3bek/200000mAh-2-USB-iPhone-Android.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 1246, 30, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', NULL, '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL),
(31, 1, '1099566926', 'Genmin Impact kamisato aykaコスプレファン、折りたたみ布、ポータブルハンド、耐久性、アクセサリーギフト、夏', '//ja.aliexpress.com/item/1005007084542263.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/Sb4becd19e02b4f4da815a085bf80d3bek/200000mAh-2-USB-iPhone-Android.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 7090, 31, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', NULL, '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL),
(32, 1, '1099566928', 'コンパクトなポータブルミニ扇子,USB充電器,漫画,果物,花,家庭用,屋外,コンパクト', '//ja.aliexpress.com/item/1005007084542263.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/Sb4becd19e02b4f4da815a085bf80d3bek/200000mAh-2-USB-iPhone-Android.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 1012, 32, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', NULL, '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL),
(33, 1, '1099566930', '金属製のロブスタークラスプ,日曜大工のキーホルダー,バッグストラップバックル,カラビナ,スナップバッグパーツ,ジュエリー作りアクセサリー', '//ja.aliexpress.com/item/1005007084542263.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/Sb4becd19e02b4f4da815a085bf80d3bek/200000mAh-2-USB-iPhone-Android.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 2094, 33, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', NULL, '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL),
(34, 1, '1099566933', '新鮮で緑の家庭用冷蔵庫、ハーブのクリスパー、野菜のクーラー、ハーブ、コリアン、ミント、パータ、サプレセションus', '//ja.aliexpress.com/item/1005007084542263.html?src=ibdm_d03p0558e02r02&sk=&aff_platform=&aff_trace_key=&af=&cv=&cn=&dp=', 'https://ae01.alicdn.com/kf/Sb4becd19e02b4f4da815a085bf80d3bek/200000mAh-2-USB-iPhone-Android.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', '320002268', 2412, 34, '無料配送 \n8月 16日 に配送予定 ', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', NULL, '2024-09-11 01:25:48', '2024-09-11 01:25:48', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `qoo_products`
--
ALTER TABLE `qoo_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `qoo_products_gd_no_unique` (`gd_no`),
  ADD KEY `qoo_products_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `qoo_products`
--
ALTER TABLE `qoo_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `qoo_products`
--
ALTER TABLE `qoo_products`
  ADD CONSTRAINT `qoo_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
