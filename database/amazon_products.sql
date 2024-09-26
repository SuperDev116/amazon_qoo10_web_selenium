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
-- Table structure for table `amazon_products`
--

CREATE TABLE `amazon_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `asin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prime` tinyint(1) DEFAULT 0,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `img_url_main` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_url_thumb` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_price` int(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `material` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `origin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exhibit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amazon_products`
--

INSERT INTO `amazon_products` (`id`, `user_id`, `asin`, `is_prime`, `title`, `url`, `shipping`, `quantity`, `img_url_main`, `img_url_thumb`, `r_price`, `price`, `category`, `description`, `color`, `size`, `weight`, `material`, `origin`, `exhibit`, `reason`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'B075D7BDPX', 1, 'サンワサプライ 海外電源変換アダプタ ブラック TR-AD4BK', 'https://www.amazon.co.jp/dp/B075D7BDPX', '無料配送 \n8月 16日 に配送予定 ', 10, 'https://c.media-amazon.com/images/I/61qtYBO7MBL._AC_SY450_.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', 3265, 3265, '320002268', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', '2024-09-10 21:30:28', '2024-09-10 21:30:28', NULL),
(2, 1, 'B09X1DY9VV', 1, '旭電機化成 テレビの音も聞こえる手もとスピーカー 2 ブラック ANS-302BK 〈本体〉14×13×高さ12cm、〈本体プラグコード〉全長5m', 'https://www.amazon.co.jp/dp/B09X1DY9VV', '無料配送 \n8月 16日 に配送予定 ', 30, 'https://c.media-amazon.com/images/I/61GH6-ukFpL._AC_SX425_.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', 12312, 12312, '320002268', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', '2024-09-10 21:30:28', '2024-09-10 21:30:28', NULL),
(3, 1, 'B0BXH49KBS', 1, '[Pogsun] アップルウォッチバンド Apple Watch バンドコンパチブル 38mm 40mm 41mm レディース iwatchかわいいバンド バースデー ギフト あっぷるうおっちバンド 防水 ステンレススチールバックル 調整ツール付き Apple Watch Series8 7 6 SE 5 4 3 2 1対応', 'https://www.amazon.co.jp/dp/B0BXH49KBS', '無料配送 \n8月 16日 に配送予定 ', 5, 'https://c.media-amazon.com/images/I/71bfsc7OkKL._AC_SY450_.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', 7868, 7868, '320002268', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', '2024-09-10 21:30:28', '2024-09-10 21:30:28', NULL),
(4, 1, 'B09VC8393C', 1, 'PULUZ 40cm撮影ボックス ポータブル 簡易スタジオ 高 CRI (95+) 3 色温度 調光可能 ライトボックス Type-C 撮影キット 射撃テントボックス 製品写真用 6 x 両面カラー背景付き', 'https://www.amazon.co.jp/dp/B09VC8393C', '無料配送 \n8月 16日 に配送予定 ', 30, 'https://c.media-amazon.com/images/I/71XXzSwJVpL._AC_SY355_.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', 2000, 1178, '320002268', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', '2024-09-10 21:30:28', '2024-09-10 21:30:28', NULL),
(5, 1, 'B07K3ZLRPL', 0, 'cheero Power Plus Danboard Version 13400mAh PD18W 大容量 モバイルバッテリー (パワーデリバリー対応) 2ポート出力 Type-A Type-C 対応機種へ超高速充電 iPhone, Android AUTO-IC搭載 PSEマーク付 Power Delivery 3.0 対応 AtoCケーブル・CtoCケーブル付 CHE-097 (Light Brown)', 'https://www.amazon.co.jp/dp/B07K3ZLRPL', '無料配送 \n8月 16日 に配送予定 ', 0, 'https://c.media-amazon.com/images/I/51GLwB9FFtL._AC_SX522_.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', 1086, 1086, '320002268', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', '2024-09-10 21:30:28', '2024-09-10 21:30:28', NULL),
(6, 1, 'B0C2W1188T', 1, 'ワイヤレス イヤホン Bluetooth イヤホン Siri対応 HiFi ブルートゥースイヤホン 片耳/両耳 左右分離型 TypeC充電 小型 軽量 (DN1-D7004)', 'https://www.amazon.co.jp/dp/B0C2W1188T', '無料配送 \n8月 16日 に配送予定 ', 7, 'https://c.media-amazon.com/images/I/31-lxrO1JyL._AC_SY679_.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', 7350, 7864, '320002268', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', '2024-09-10 21:30:28', '2024-09-10 21:30:28', NULL),
(7, 1, 'B0BQZMFQNH', 0, 'ソニー(SONY) ウォークマン純正アクセサリー NW-A300シリーズ専用 ソフトケース グレー CKS-NWA300HC', 'https://www.amazon.co.jp/dp/B0BQZMFQNH', '無料配送 \n8月 16日 に配送予定 ', 15, 'https://c.media-amazon.com/images/I/31DWyqJGg5L._AC_SY450_.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', 4821, 4821, '320002268', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', '2024-09-10 21:30:28', '2024-09-10 21:30:28', NULL),
(8, 1, 'B016XKR0BC', 1, 'Anker Soundcore ポータブル Bluetooth5.0 スピーカー 24時間連続再生可能【デュアルドライバー / IPX5防水規格 / ワイヤレススピーカー/内蔵マイク搭載】(ブルー)', 'https://www.amazon.co.jp/dp/B016XKR0BC', '無料配送 \n8月 16日 に配送予定 ', 36, 'https://c.media-amazon.com/images/I/71dLst6DxjL._AC_SX425_.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', 2050, 1886, '320002268', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', '2024-09-10 21:30:28', '2024-09-10 21:30:28', NULL),
(9, 1, 'B0BXRLLTTF', 1, '【MagSafeスタンド一体型・画面フィルム付き】Holidi Galaxy S23 Ultra ケース SC-52D SCG20 マット感 マグネット搭載 隠しスタンド 米軍MIL規格 全面保護 ワイヤレス充電 マグセーフ対応 半透明 ブラック', 'https://www.amazon.co.jp/dp/B0BXRLLTTF', '無料配送 \n8月 16日 に配送予定 ', 20, 'https://c.media-amazon.com/images/I/61FcSGIwpXL._AC_SX425_.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', 64451, 64451, '320002268', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', '2024-09-10 21:30:28', '2024-09-10 21:30:28', NULL),
(10, 1, 'B096W4LMXZ', 1, '【Ringke】MINI POUCH TWO POCKET イヤホンケース ICカード 現金 コイン入れ イヤホンポーチ ミニポーチ ミニバッグ (カラビナ付き) - Black', 'https://www.amazon.co.jp/dp/B096W4LMXZ', '無料配送 \n8月 16日 に配送予定 ', 0, 'https://c.media-amazon.com/images/I/71KlXyfM-zS._AC_SX466_.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', 7645, 7642, '320002268', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', '2024-09-10 21:30:28', '2024-09-10 21:30:28', NULL),
(11, 1, 'B097227KCJ', 1, 'TORRAS iPhone 13 mini 用 ケース 軽量 ガラスフィルム付属 マット質感 さらさら手触り 指紋防止 擦り傷防止 画面レンズ保護 ハード アイフォン13ミニ用 カバー 2021 ブラック Wisdom Series', 'https://www.amazon.co.jp/dp/B097227KCJ', '無料配送 \n8月 16日 に配送予定 ', 7, 'https://c.media-amazon.com/images/I/61ibJYyKyRL._AC_SY450_.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', 91003, 91531, '320002268', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', '2024-09-10 21:30:28', '2024-09-10 21:30:28', NULL),
(12, 1, 'B0BCWBBC4L', 0, 'iFace First Class Standard iPhone 14 ケース (イエロー)【アイフェイス アイフォン14 用 iphone14 用 カバー 韓国 耐衝撃 ストラップホール】', 'https://www.amazon.co.jp/dp/B0BCWBBC4L', '無料配送 \n8月 16日 に配送予定 ', 13, 'https://c.media-amazon.com/images/I/51CTndRkosL._AC_SY679_.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', 6864, 6864, '320002268', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', '2024-09-10 21:30:28', '2024-09-10 21:30:28', NULL),
(13, 1, 'B087X1538X', 1, '子供用 トランシーバー 4台セット TRH866 特定小電力トランシーバー、小型省電力、おもちゃ、免許・資格不要、親子アクティビティ、バッテリーなし（別売）', 'https://www.amazon.co.jp/dp/B087X1538X', '無料配送 \n8月 16日 に配送予定 ', 24, 'https://c.media-amazon.com/images/I/71bzUBTGALL._AC_SY450_.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', 4534, 4534, '320002268', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', '2024-09-10 21:30:28', '2024-09-10 21:30:28', NULL),
(14, 1, 'B0BWXJFZH7', 1, 'MOUNTUP テレビ壁掛け金具 回転式 モニターアーム 軽量 10～43インチ対応 耐荷重13kg 中小型 左右移動式 多角度調整 VESA200×200mm 適格請求書発行可', 'https://www.amazon.co.jp/dp/B0BWXJFZH7', '無料配送 \n8月 16日 に配送予定 ', 25, 'https://c.media-amazon.com/images/I/71V7dl8nhXL._AC_SY450_.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', 4684, 4684, '320002268', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', '2024-09-10 21:30:28', '2024-09-10 21:30:28', NULL),
(15, 1, 'B0C1HKYDJS', 1, '【NYタイムズスクエアを席巻！】TORRAS iPhone 14 Pro Max 用 ケース 半透明 米軍規格 Halbachマグネット ワイアレス充電対応 縦横両対応 アイフォン 14 ProMax 用 ケース 「UPRO Ostand」パープル', 'https://www.amazon.co.jp/dp/B0C1HKYDJS', '無料配送 \n8月 16日 に配送予定 ', 5, 'https://c.media-amazon.com/images/I/61PwSy7I6qL._AC_SY450_.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', 15353, 15353, '320002268', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', '2024-09-10 21:30:28', '2024-09-10 21:30:28', NULL),
(16, 1, 'B0BKZFC9LB', 0, 'エレコム シガーソケット USB PD対応 45W 2ポート USB-C USB-A 12V 24V 対応 [ Macbook iPad iPhone Android 45Wで充電可能なノートPC ] ブラック EC-DC10BK', 'https://www.amazon.co.jp/dp/B0BKZFC9LB', '無料配送 \n8月 16日 に配送予定 ', 0, 'https://c.media-amazon.com/images/I/51d9cbBTH+L._AC_SY450_.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', 15433, 15438, '320002268', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', '2024-09-10 21:30:28', '2024-09-10 21:30:28', NULL),
(17, 1, 'B07455SBQZ', 1, 'Godox S-型 ブラケット/ブラケットマウント 角度調整可/ホルダー Bowensマウント付 ストロボ/フラッシュ/ソフトボックス/ビューティーディッシュ/傘対応【並行輸入品】', 'https://www.amazon.co.jp/dp/B07455SBQZ', '無料配送 \n8月 16日 に配送予定 ', 4, 'https://c.media-amazon.com/images/I/61Kcvm2mNbL._AC_SY355_.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', 8676, 8676, '320002268', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', '2024-09-10 21:30:28', '2024-09-10 21:30:28', NULL),
(18, 1, 'B0BXKXB5HW', 1, 'オーディオテクニカ ATH-SQ1TW2 NRD ワイヤレスイヤホン bluetooth / 小型 軽量 / 最大20時間再生 / 低遅延 / 外音取込み / マルチポイント / マルチペアリング / 防水 IPX5 / ワイヤレス充電 /【国内正規品】ネイビーレッド ATH-SQ1TW2 NRD', 'https://www.amazon.co.jp/dp/B0BXKXB5HW', '無料配送 \n8月 16日 に配送予定 ', 19, 'https://c.media-amazon.com/images/I/61uncWMhVoL._AC_SY450_.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', 46582, 46582, '320002268', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', '2024-09-10 21:30:28', '2024-09-10 21:30:28', NULL),
(19, 1, 'B07SHCLR7T', 1, 'Stageek スピーカースタンド 卓上 小型スピーカーアルミ台座 5°上向き傾け 本棚スピーカー用 デスクトップスピーカースタンド ブラック[2台1組]', 'https://www.amazon.co.jp/dp/B07SHCLR7T', '無料配送 \n8月 16日 に配送予定 ', 2, 'https://c.media-amazon.com/images/I/615-QdBktVL._AC_SX425_.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', 86123, 86123, '320002268', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', '2024-09-10 21:30:28', '2024-09-10 21:30:28', NULL),
(20, 1, 'B00X9TY8ZW', 1, 'Signstek Audio USB-DAC ヘッドフォンアンプ/コンパクトでUSBケーブル付き 小型', 'https://www.amazon.co.jp/dp/B00X9TY8ZW', '無料配送 \n8月 16日 に配送予定 ', 3, 'https://c.media-amazon.com/images/I/61BDpYIcDRL._AC_SX425_.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', 4653, 8652, '320002268', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', '2024-09-10 21:30:28', '2024-09-10 21:30:28', NULL),
(21, 1, 'B01E74L2L0', 1, 'Marantz マランツプロ モニターヘッドホン 密閉型 オーバーイヤーヘッドホン 有線 直径40mmドライバー 楽器演奏 配信 DJ ゲーム テレワーク MPH-1', 'https://www.amazon.co.jp/dp/B01E74L2L0', '無料配送 \n8月 16日 に配送予定 ', 4, 'https://c.media-amazon.com/images/I/81iTuJQLq7L._AC_SY606_.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', 8953, 9456, '320002268', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', '2024-09-10 21:30:28', '2024-09-10 21:30:28', NULL),
(22, 1, 'B09HCG2W9W', 1, 'NTHJOYS タッチペン スタイラスペン 極細 超高感度 iPad/スマホ/タブレット対応 たっちぺん 銅製ペン先 イラスト ゲーム USB充電式', 'https://www.amazon.co.jp/dp/B09HCG2W9W', '無料配送 \n8月 16日 に配送予定 ', 5, 'https://c.media-amazon.com/images/I/51bxtMQlkSL._AC_SY450_.jpg', '[\"https:\\/\\/ae01.alicdn.com\\/kf\\/Sb4becd19e02b4f4da815a085bf80d3bek\\/200000mAh-2-USB-iPhone-Android.jpg_80x80.jpg_.webp\"]', 4231, 7531, '320002268', '商品説明\n最大5v1aの高速ワイヤレス充電をサポート...', '', '', '', 'プラスチック', '', '1', '', '2024-09-10 21:30:28', '2024-09-10 21:30:28', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amazon_products`
--
ALTER TABLE `amazon_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `amazon_products_asin_unique` (`asin`),
  ADD KEY `amazon_products_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amazon_products`
--
ALTER TABLE `amazon_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `amazon_products`
--
ALTER TABLE `amazon_products`
  ADD CONSTRAINT `amazon_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
