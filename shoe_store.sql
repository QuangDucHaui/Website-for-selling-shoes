-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 27, 2025 lúc 06:31 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shoe_store`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@yomail.com', '$2y$10$zxtJmfT9QVDtc/F9iBNceehYJQyCt6GSh5sw3XSgRD5igbRqhPMum', '2023-10-18 13:06:50', '2023-10-18 13:06:50'),
(2, 'Admin', 'admin@gmail.com', '$2y$10$tpWjP99lYz.BrLE.MSyID.7.aUuzV1P2enrhXtQdHCJ6A3G07nx56', '2025-03-24 19:54:05', '2025-03-24 19:54:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Nike', '2023-10-18 13:11:04', '2023-10-18 13:11:04'),
(2, 'Adidas', '2023-10-18 13:11:09', '2023-10-18 13:11:09'),
(3, 'Puma', '2023-10-18 13:11:13', '2023-10-18 13:11:13'),
(4, 'Wika', '2023-10-18 13:11:26', '2023-10-18 13:11:26'),
(5, 'Zocker', '2023-10-18 13:11:39', '2025-03-24 17:03:36'),
(6, 'Mizuno', '2023-10-18 13:11:45', '2025-03-24 17:03:33'),
(7, 'Accord', '2025-03-24 17:04:00', '2025-03-24 17:04:00'),
(8, 'Vans', '2025-03-24 17:04:12', '2025-03-24 17:04:12'),
(9, 'Iwin', '2025-03-24 17:04:33', '2025-03-24 17:04:33'),
(10, 'Tempro', '2025-03-24 17:04:58', '2025-03-24 17:04:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--
-- Error reading structure for table shoe_store.categories: #1932 - Table &#039;shoe_store.categories&#039; doesn&#039;t exist in engine
-- Error reading data for table shoe_store.categories: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `shoe_store`.`categories`&#039; at line 1

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_16_180835_create_brands_table', 1),
(6, '2023_08_17_095151_create_categories_table', 1),
(7, '2023_08_17_180043_create_products_table', 1),
(8, '2023_08_17_180057_create_product_items_table', 1),
(9, '2023_08_17_180105_create_product_images_table', 1),
(10, '2023_08_21_102446_create_admins_table', 1),
(11, '2023_08_21_181500_create_orders_table', 1),
(12, '2023_08_21_181507_create_order_product_table', 1),
(13, '2023_08_25_191707_create_post_types_table', 1),
(14, '2023_08_25_191857_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `total_price` double NOT NULL,
  `payment` tinyint(4) NOT NULL COMMENT '1: VNPay, 2: COD',
  `status` tinyint(4) NOT NULL COMMENT '0: Cancel, 1: Return, 2: Pending, 3: Inprogress, 4: delivered',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `email`, `phone`, `address`, `total_price`, `payment`, `status`, `created_at`, `updated_at`) VALUES
(8, 2, 'Đức', 'dangquangduc210421dte@gmail.com', '0329684263', 'Gia lộc', 960000, 2, 0, '2025-03-19 18:13:07', '2025-03-22 06:24:55'),
(9, 2, 'duc', 'dangquangduc210421dte@gmail.com', '12312312312', '12313123123', 960000, 2, 4, '2025-03-22 03:34:56', '2025-03-22 06:23:50'),
(10, 2, 'Quang Đức', 'dangquangduc210421dte@gmail.com', '0329684263', 'Gia lộc', 864000, 2, 0, '2025-03-24 16:49:27', '2025-03-24 17:19:45'),
(15, 4, 'Duc', 'quangducisme@gmail.com', '0329684263', 'Hai Phong', 4536000, 2, 3, '2025-04-14 13:00:15', '2025-04-15 07:06:44'),
(16, 2, 'Quang Đức', 'dangquangduc210421dte@gmail.com', '0329684263', 'Gia lộc', 6480000, 2, 4, '2025-04-14 14:39:51', '2025-04-14 14:40:53'),
(18, 2, 'Quang Đức', 'dangquangduc210421dte@gmail.com', '0329684263', 'Gia lộc', 2340000, 2, 0, '2025-05-22 18:21:55', '2025-05-22 18:31:12'),
(19, 2, 'Quang Đức', 'dangquangduc210421dte@gmail.com', '0329684263', 'Gia lộc', 15471900, 2, 4, '2025-05-22 18:30:47', '2025-05-22 18:31:11'),
(20, 5, 'Hoàng', 'hoangdz@gmail.com', '0366635123', 'Hoàng Mai Hà Nội', 1485000, 1, 3, '2025-05-22 18:32:42', '2025-05-22 18:35:32'),
(22, 5, 'Hoàng', 'ducdz2003@gmail.com', '03213212312', 'Hoàng Mai', 1485000, 1, 0, '2025-05-22 18:34:33', '2025-05-22 18:35:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_product`
--

CREATE TABLE `order_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `name`, `color`, `quantity`, `size`, `price`, `created_at`, `updated_at`) VALUES
(10, 8, 16, 'Giày đá banh Mizuno Neo 3 Pro TF', 'Vàng vạch đen', 2, '39', 480000, NULL, NULL),
(11, 9, 16, 'Giày đá banh Mizuno Neo 3 Pro TF', 'Vàng vạch đen', 2, '39', 480000, NULL, NULL),
(12, 10, 16, 'Giày đá banh Mizuno Neo 3 Pro TF', 'Vàng vạch đen', 2, '39', 480000, NULL, NULL),
(15, 15, 11, 'Nike Mercurial Superfly 9 Elite TF (Kids)', 'Chuối vằn cam', 4, '35', 720000, NULL, NULL),
(16, 15, 13, 'Giày Đá Banh Puma Future Z 1.4 MG', 'Xám vạch cam', 3, '39', 720000, NULL, NULL),
(17, 16, 46, 'Giày Adidas Ultraboost Light White Black', 'Đen', 0, '39', 789000, NULL, NULL),
(18, 16, 11, 'Nike Mercurial Superfly 9 Elite TF (Kids)', 'Chuối vằn cam', 10, '35', 720000, NULL, NULL),
(19, 18, 14, 'Giày Đá Bóng Puma Future Z 1.4 TF', 'Xám trắng', 4, '39', 650000, NULL, NULL),
(20, 19, 46, 'Giày Adidas Ultraboost Light White Black', 'Trắng', 19, '39', 789000, NULL, NULL),
(21, 19, 9, 'Adidas X Speedportal .1 TF WC (Kids)', 'Xanh ngọc', 2, '35', 550000, NULL, NULL),
(22, 19, 9, 'Adidas X Speedportal .1 TF WC (Kids)', 'Xanh ngọc', 2, '36', 550000, NULL, NULL),
(23, 22, 9, 'Adidas X Speedportal .1 TF WC (Kids)', 'Xanh ngọc', 3, '36', 550000, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('dangquangduc210421dte@gmail.com', '$2y$10$s072KdVxgEAvcY0drwQ2E.qr7pD.LIRNLeysL2v./grkDA1udedX2', '2025-03-22 02:43:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_type_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `post_type_id`, `title`, `thumbnail`, `content`, `created_at`, `updated_at`) VALUES
(11, 5, 'Nhiều dấu hỏi về việc Park và Shin làm Phó chủ tịch LĐBĐ Hàn Quốc', 'uploads/thumbnail/6EN7NxaRUqw8OwqUacaupH6Cr8pN4NaV7cA1lBH1.webp', '<p>HLV Park Hang-seo và Shin Tae-yong được ví như luồng sinh khí mới, nhưng cũng có lo ngại họ chỉ được dùng để thế thân cho LĐBĐ Hàn Quốc (KFA) khi có khủng hoảng.</p><p>Trưa 9/4, KFA thông báo bổ nhiệm 5 Phó chủ tịch, trong đó cựu HLV tuyển Việt Nam Park Hang-seo hỗ trợ đội tuyển quốc gia, còn cựu HLV tuyển Indonesia Shin Tae-yong phụ trách hợp tác đối ngoại.</p><p>\"Một bất ngờ lớn\", trang tin Hàn Quốc <i>Wikitree</i> giật tít.</p><p>Còn bài viết trên <i>Sports Khan</i> có đoạn: \"Họ là những nhân vật đáng tin cậy đóng vai trò giúp đỡ những tài năng bóng đá trẻ Hàn Quốc\".</p><p>\"Cả HLV Park và Shin đều là biểu tượng nâng cao vị thế bóng đá Hàn Quốc tại châu Á, cũng là những chuyên gia đã trải qua đủ loại khó khăn\", <i>Korea Daily</i> bình luận. \"Người ta kỳ vọng họ vực dậy và thổi luồng sinh khí mới vào Liên đoàn đang cận kề sụp đổ\".</p><p><picture><source srcset=\"https://i1-thethao.vnecdn.net/2025/04/10/park-hang-seo-shin-tae-yong-kf-4285-9668-1744262989.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=DpQeFyQXPHOahj9bYov8ZA 1x, https://i1-thethao.vnecdn.net/2025/04/10/park-hang-seo-shin-tae-yong-kf-4285-9668-1744262989.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=tT_CHJ8V__va_DXL74U6lw 1.5x, https://i1-thethao.vnecdn.net/2025/04/10/park-hang-seo-shin-tae-yong-kf-4285-9668-1744262989.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=h-oD2KQ0gx8UDABKjVjjdg 2x\"><img src=\"https://i1-thethao.vnecdn.net/2025/04/10/park-hang-seo-shin-tae-yong-kf-4285-9668-1744262989.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=DpQeFyQXPHOahj9bYov8ZA\" alt=\"HLV CLB Jeonnam Park Hang-seo (trái) và HLV CLB Seongnam Shin Tae-yong (phải) tại họp báo trước thềm K-League 1 năm 2010. Ảnh: Joy 24\"></picture></p><p>HLV CLB Jeonnam Park Hang-seo (trái) và HLV CLB Seongnam Shin Tae-yong (phải) tại họp báo trước thềm K-League 1 năm 2010. Ảnh: <i>Joy 24</i></p><p><strong>Nhưng truyền thông xứ kim chi cũng lo ngại, rằng HLV Park và Shin như thế thân mới cho Chủ tịch Chung Mong-gyu và KFA.</strong> Ở ba nhiệm kỳ trước của Chủ tịch Chung, mỗi khi gặp khủng hoảng, liên đoàn đều tận dụng những thành viên nổi tiếng trở thành người đứng mũi chịu sào trước các vấn đề khủng hoảng và lời chỉ trích.</p><p>\"Chủ tịch Chung đặt những người nổi tiếng lên phía trước, còn mình ẩn phía sau. Liệu lần này có khác?\", bài viết trên <i>Korean Daily</i> có đoạn. \"Liệu Chủ tịch có sẵn sàng trao quyền cho HLV Park và Shin thay đổi mọi thứ, và chấp nhận lời lẽ gay gắt hay lời khuyên trực tiếp từ họ hay không\".</p><p>Tờ này cho rằng sự hoài nghi của người hâm mộ với KFA thời Chung Mong-gyu vẫn lớn. Trong quá khứ, hầu hết người nổi tiếng đều rút lui sớm mà không có cơ hội thể hiện mình. \"Nếu điều này xảy ra một lần nữa, các quyết định nhân sự của ông Chung sẽ không còn đáng tin cậy và đối mặt với một cuộc khủng hoảng mới\", <i>Korean Daily</i> nhận định.</p><p>Ông Chung Mong-gyu làm Chủ tịch KFA lần đầu vào năm 2013 và đã bước sang nhiệm kỳ thứ tư. Người duy nhất làm năm nhiệm kỳ là Choi Soon-young, từ năm 1979 đến 1987 – mỗi nhiệm kỳ khi ấy chỉ kéo dài hai năm.</p><p>Dưới thời vị Chủ tịch 64 tuổi, bóng đá Hàn Quốc nhiều lần hỗn loạn, đặc biệt ở nhiệm kỳ trước. Họ dừng bước ở vòng 1/8 World Cup 2022 rồi thất bại trong mục tiêu chinh phục Asian Cup 2023. Tại giải đó, hai ngôi sao Son Heung-min và Lee Kang-in thậm chí đã ẩu đả ngay trước trận bán kết thua Jordan 0-2. Sau khi sự việc bị phanh phui, KFA phải sa thải HLV Jurgen Klinsmann.</p><p>Hàn Quốc sau đó còn bị Indonesia loại ở tứ kết U23 châu Á 2024, dẫn đến mất vé dự Olympic sau chín kỳ liên tiếp góp mặt.</p>', '2025-04-10 06:39:22', '2025-04-10 06:39:22'),
(12, 3, 'Yamal kiệt sức vì trận thắng Dortmund', 'uploads/thumbnail/CQGH1YZwfM2JARUzrEfmRTrox3dikez2eWHAxKcm.webp', '<p>Lamine Yamal nhiều lần làm dấu xin ra nghỉ cuối trận Barca thắng Dortmund 4-0 ở lượt đi tứ kết Champions League tối 9/4.</p><p>Trước khi trận đấu kết thúc, Yamal nhiều lần xin được rời sân. Biết học trò đã kiệt sức, HLV Hansi Flick liền thay bằng Ansu Fati ở phút 86.</p><p>\"Lamine vẫn ổn. Cậu ấy rời sân chỉ vì đã chơi quá nhiều\", Flick nói sau trận đấu. \"Ansu đã tập tốt và xứng đáng được chơi\".</p><p><picture><source srcset=\"https://i1-thethao.vnecdn.net/2025/04/10/GoH0O2yW4AAOWNK-1744241624-1615-1744241811.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=NVnVTzsPHrWUXxEj3uw9ow 1x, https://i1-thethao.vnecdn.net/2025/04/10/GoH0O2yW4AAOWNK-1744241624-1615-1744241811.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=p09WqaaeiwqSpC5s-e0cDw 1.5x, https://i1-thethao.vnecdn.net/2025/04/10/GoH0O2yW4AAOWNK-1744241624-1615-1744241811.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=e_zYDbf1KH292X4hohKGsQ 2x\"><img src=\"https://i1-thethao.vnecdn.net/2025/04/10/GoH0O2yW4AAOWNK-1744241624-1615-1744241811.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=NVnVTzsPHrWUXxEj3uw9ow\" alt=\"Yamal làm dấu xin ra nghỉ về cuối trận Barca thắng Dortmund 4-0 ở lượt đi tứ kết Champions League tối 9/4. Ảnh chụp màn hình\"></picture></p><p>Yamal làm dấu xin ra nghỉ về cuối trận Barca thắng Dortmund 4-0 ở lượt đi tứ kết Champions League tối 9/4. <i>Ảnh chụp màn hình</i></p><p>Mùa này, Yamal đã chơi 43 trận trên mọi đấu trường cho Barca. Trong đó, tiền đạo cánh 17 tuổi chơi trọn hầu hết các trận, ghi 14 bàn và kiến tạo 21 lần. Ngoài <a href=\"https://vnexpress.net/chu-de/barcelona-68\">Barca</a>, Yamal còn chơi 5 trận cho tuyển Tây Ban Nha, ghi một bàn và kiến tạo một lần.</p><p>Trên sân Olympic hôm qua, <a href=\"https://vnexpress.net/chu-de/lamine-yamal-7575\">Yamal</a> tiếp tục chơi ấn tượng. Anh tham gia vào hai tình huống dẫn đến cú đúp của Robert Lewandowski ở phút 48 và 66, trước khi tự ấn định chiến thắng 4-0 ở phút 77. Raphinha ghi bàn đầu tiên ở phút 25.</p><p><picture><source srcset=\"https://i1-thethao.vnecdn.net/2025/04/10/yamal15-jpeg-1744240674-3970-1744240822.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=zH5ovDvLxMrX7SDlcUVlFw 1x, https://i1-thethao.vnecdn.net/2025/04/10/yamal15-jpeg-1744240674-3970-1744240822.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=_6QmgDFrj4tcJCpw7Zc4SQ 1.5x, https://i1-thethao.vnecdn.net/2025/04/10/yamal15-jpeg-1744240674-3970-1744240822.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=erAo0TRHJ1Uo9alltAQSiw 2x\"><img src=\"https://i1-thethao.vnecdn.net/2025/04/10/yamal15-jpeg-1744240674-3970-1744240822.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=zH5ovDvLxMrX7SDlcUVlFw\" alt=\"Lamine Yamal (số 19) dứt điểm trong trận Barca 4-0 Dortmund ở tứ kết lượt đi Champions League tối 9/4. Ảnh: MD\"></picture></p><p>Lamine Yamal (số 19) dứt điểm trong trận Barca 4-0 Dortmund ở lượt đi tứ kết Champions League tối 9/4. Ảnh: <i>MD</i></p><p>Trận thắng <a href=\"https://vnexpress.net/chu-de/borussia-dortmund-49\">Dortmund</a> 4-0 giúp Barca đặt một chân vào bán kết Champions League. Ngày 15/4, hai đội sẽ đá lượt về tứ kết trên đất Đức, nơi Barca từng thắng 3-2 ở vòng bảng.</p><p>Nếu vượt qua Dortmund, Yamal và đồng đội sẽ gặp đội thắng trong cặp Bayern - Inter ở bán kết. Ở lượt đi, Inter đã <a href=\"https://vnexpress.net/inter-thang-tren-san-cua-bayern-4871554.html\">thắng 2-1</a> trên sân Allianz Arena của Bayern. Hai trận tứ kết lượt đi còn lại cho kết quả Arsenal thắng Real 3-0 và PSG thắng Aston Villa 3-1.</p><p>Trận chung kết mùa này sẽ diễn ra tại Allianz Arena, Munich, Đức ngày 31/5.</p>', '2025-04-10 06:40:29', '2025-04-10 06:40:29'),
(13, 5, 'Sneijder: \'Sút phạt xoáy như Rice không khó\'', 'uploads/thumbnail/mXQOOaOnl0B93X4fnMnQhSxbniHvCgIUPYzax8Ew.webp', '<p>AnhTheo cựu tiền vệ Wesley Sneijder, các cầu thủ Real mắc lỗi cả hai tình huống đá phạt thành bàn của Declan Rice, khi thua 0-3 trên sân Arsenal ở lượt đi tứ kết Champions League.</p><p><br>Tôi không nghĩ những cú đá phạt đó ấn tượng đến thế\", Sneijder nói trên kênh truyền hình Hà Lan <i>Ziggo Sport</i>. \"Điều này nghe có vẻ lạ, nhưng rất dễ để tạo ra đường bóng cong như vậy miễn là bạn biết cách sút, và tôi biết tất cả về điều này\".</p><p><picture><source srcset=\"https://i1-thethao.vnecdn.net/2025/04/10/A-nh-ma-n-hi-nh-2025-04-10-lu-7909-5106-1744241163.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=DLfnTlzAwcH2WrV1PkA5wA 1x, https://i1-thethao.vnecdn.net/2025/04/10/A-nh-ma-n-hi-nh-2025-04-10-lu-7909-5106-1744241163.png?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=pCWfMXoyvnKGtwFdHNtYdg 1.5x, https://i1-thethao.vnecdn.net/2025/04/10/A-nh-ma-n-hi-nh-2025-04-10-lu-7909-5106-1744241163.png?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=Qhm-TqgwTamjeJvovPh_Nw 2x\"><img src=\"https://i1-thethao.vnecdn.net/2025/04/10/A-nh-ma-n-hi-nh-2025-04-10-lu-7909-5106-1744241163.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=DLfnTlzAwcH2WrV1PkA5wA\" alt=\"Sneijder khi còn thi đấu cho Real.\"></picture></p><p>Sneijder khi còn thi đấu cho Real.</p><p>Theo cựu tiền vệ Hà Lan, <a href=\"https://vnexpress.net/hang-rao-real-mac-loi-trong-ban-dau-cua-arsenal-4871556.html\">hàng rào Real mắc lỗi</a>, không che chắn đủ khoảng trống ở bàn mở tỷ số của Rice. Đến pha đá phạt tiếp theo, <a href=\"https://vnexpress.net/chu-de/thibaut-courtois-401\">Thibaut Courtois</a> di chuyển sang phải hơi sớm, tạo điều kiện cho Rice sút về hướng ngược lại.</p><p>Cựu cầu thủ Arsenal và tuyển Hà Lan, Giovanni van Bronckhorst đồng tình với phát biểu này. \"Tôi nghĩ Sneijder nói đúng\", cựu hậu vệ 50 tuổi nói về bàn đầu tiên. \"Bạn có thể thấy rằng hàng rào ở quá xa về bên trái, giúp Rice dễ dàng sút qua\".</p><p>Video Player is loading.</p><p>Dừng</p><p>Hiện tại&nbsp;0:01</p><p>/</p><p>Thời lượng&nbsp;0:21</p><p>Đã tải: 0%</p><p>Tiến trình: 0%</p><p>Bỏ tắt tiếng</p><p>&nbsp;</p><p>Toàn màn hình</p><p>&nbsp;</p><p>Pha đá phạt mở tỷ số của Rice.</p><p>Sneijder từng là ngôi sao tiền vệ ở Ajax, Real Madrid và Inter, với đỉnh cao là giành cú ăn ba cùng Inter mùa 2009-2010. Sau đó, anh khoác áo Galatasaray, Nice và Al-Gharafa rồi giải nghệ ở tuổi 34 vào năm 2019. Ở cấp độ quốc tế, Sneijder ghi 31 bàn qua 134 trận, cùng Hà Lan giành Á quân World Cup 2010.</p>', '2025-04-10 06:41:16', '2025-04-10 06:41:16'),
(16, 4, 'Báo Nhật Bản: \'Thêm một lần muối mặt trước bóng đá Việt Nam\'', 'uploads/thumbnail/UJXPqobJEP1IU19vk7xNN2HmNjj11Z9fikzT30g0.webp', '<h2>\"Một trận hòa đáng thất vọng vì để lỡ cơ hội sớm giành vé dự U17 World Cup\", bài viết trên <i>Soccer Digest</i> có đoạn. \"Thêm một lần nữa bóng đá Nhật Bản muối mặt trước Việt Nam\".</h2><p>Việt Nam hiếm khi hòa hoặc thắng Nhật Bản. Nếu tính riêng giải U17, hôm qua mới là trận hòa đầu tiên của đội tuyển trước nền bóng đá số một châu Á. Trước đó, Việt Nam toàn thua năm trận, lần lượt là 0-2 (vòng bảng 2000), 2-4 (tranh HC đồng 2000), 0-6 (vòng bảng 2010), 0-7 (vòng bảng 2016) và 0-4 (vòng bảng 2023).</p><p>Dù vậy, những năm gần đây, Việt Nam cũng vài lần gây sốc cho Nhật Bản. Đáng kể là trận hòa 1-1 ở lượt cuối vòng loại ba World Cup 2022 trên sân Saitama. Còn ở ASIAD 2018, Việt Nam từng thắng 1-0 ở vòng bảng. Khi ấy, đội tuyển sở hữu thế hệ vàng U23 như Quang Hải, Công Phượng cùng ba cầu thủ quá tuổi hàng đầu là Nguyễn Văn Quyết, Nguyễn Anh Đức và Đỗ Hùng Dũng, trong khi Nhật Bản cử đội U20. Cả hai trận đều dưới thời HLV Park Hang-seo.</p><p>Bàn thua của U17 Nhật Bản trên sân Okadh tối qua đến sau đường chuyền dài từ sân nhà của thủ môn Hoa Xuân Tín. Bóng nảy ra sau hàng hậu vệ, còn thủ môn Ibuki Ejike do dự trong băng ra, đến khi thực hiện thì đã chậm hơn Trần Gia Bảo một nhịp dẫn đến phạm lỗi và chịu phạt đền. Chính Gia Bảo sau đó thực hiện thành công, giúp Việt Nam giật lại một điểm.</p><p>\"Cầu thủ Nhật Bản lứa này vật lộn với việc xử lý các pha bóng đơn giản kể từ khi thành lập đội\", tờ <i>Gekisaka</i> nhận xét. \"Một kết thúc gây sốc khiến một số cầu thủ đã đổ gục trên sân\".</p><p>Sai lầm này tương tự bàn thua trong trận thắng UAE 4-1 ngày trận ra quân. <i>Gekisaka </i>cũng đánh giá rất khó phá vỡ hàng thủ Việt Nam kiên cường có lúc chơi với sáu hậu vệ. Nhưng Nhật Bản cũng thiếu mạo hiểm và không tự tin dù có bàn dẫn trước sớm từ tình huống cố định.</p><p>\"Vấn đề không phải Nhật Bản tệ, mà là Việt Nam chơi tốt. Cầu thủ có kỹ năng tốt, còn tập thể được tổ chức tốt\", bài viết trên <i>Soccer Digest</i> có đoạn. \"Nếu thế hệ này phát triển tốt, họ có thể trở thành đối thủ đáng gờm với Nhật Bản trong tương lai\".</p><p>&nbsp;</p>', '2025-04-10 06:44:59', '2025-04-10 06:44:59'),
(17, 6, 'Tặng kèm tất cao cấp chống trơn trượt', 'uploads/thumbnail/Bdj9IY8nmNHCZz7R26CosA6ocJKgwY7OWPwl6sSL.jpg', '<p>🎉 <strong>Chương trình ưu đãi đặc biệt nhân dịp 30/4 và 1/5</strong> 🎉</p><figure class=\"image\"><img src=\"https://cdn.coccoc.com/news_feed/20250429/17391098913735246370.jpg\" alt=\"thumb\"></figure><p>Nhân dịp kỷ niệm Ngày Giải phóng Miền Nam (30/4) và Quốc tế Lao động (1/5), chúng tôi xin gửi đến Quý khách hàng chương trình ưu đãi vô cùng hấp dẫn:<br>👉 <strong>Tặng kèm tất lưới chống trơn trượt cao cấp</strong> cho mỗi đơn hàng bất kỳ trong hai ngày đặc biệt này!</p><figure class=\"image\"><img src=\"data:image/jpeg;base64,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\" alt=\"Tất chống trơn trượt thể thao B-Sock | Chiaki.vn\"></figure><p>Tất lưới chống trơn trượt không chỉ giúp tăng độ bám chắc khi di chuyển, mà còn mang lại cảm giác thoải mái, dễ chịu trong từng bước chân – một món quà nhỏ nhưng đầy thiết thực dành cho các khách hàng yêu thích sự năng động và an toàn.</p><p><strong>Thời gian áp dụng:</strong><br>📅 Từ 30/4 đến hết ngày 1/5.</p><p><strong>Điều kiện áp dụng:</strong></p><p>Áp dụng cho tất cả đơn hàng mua trực tiếp hoặc online.</p><p>Mỗi đơn hàng nhận <strong>01 đôi tất lưới chống trơn trượt</strong> hoàn toàn miễn phí.</p><p>Nhanh tay mua sắm và nhận ngay phần quà ý nghĩa từ chúng tôi nhé!<br>🎁 <strong>Số lượng quà tặng có hạn – Hãy nhanh tay để không bỏ lỡ!</strong></p>', '2025-04-29 03:55:17', '2025-05-12 20:53:28'),
(18, 7, 'Đồng loạt giảm giá toàn bộ sản phẩm 15% khi mua giày tại cửa hàng', 'uploads/thumbnail/fYxyuScxtVMv3iN34VoMMXBorKooLcWWmuUgXv2C.jpg', '<h3><strong>SALE ĐẦU HÈ – CHÁY HẾT MÌNH CÙNG NHỮNG BƯỚC CHÂN!</strong> 🔥</h3><p>👟 <strong>Giảm đến 50%</strong> toàn bộ các dòng giày hot nhất:</p><p>Sneaker năng động</p><p>Giày thể thao chính hãng</p><p>Giày chạy bộ siêu nhẹ</p><p>🌞 <strong>Duy nhất từ 15/5 – 25/5</strong></p><p>🛒 Mua ngay tại: [Tên shop hoặc Website]<br>🎁 Cơ hội nhận <strong>quà tặng hấp dẫn</strong> cho 50 khách hàng đầu tiên!</p><blockquote><p>Hãy để mùa hè của bạn bắt đầu bằng một đôi giày mới thật phong cách! 💥</p></blockquote>', '2025-05-12 15:44:01', '2025-05-12 15:44:01'),
(19, 7, 'Cuối tuần xả stress ngay với deal 99k', 'uploads/thumbnail/1kMgtvcKc8nKUKXFE7dm1grLrs9fdXW6xqYYW2Lk.png', '<p>ƯU ĐÃI KHÔNG GIỚI HẠN, CÙNG BẠN ĐÓN ĐẠI LỄ 30/4-1/5!!!</p><p>ĐỒNG GIÁ TỪ #99K</p><p>Từ ngày 18/04 tại Hệ thống cửa hàng 360®</p><p>Chào mừng đại lễ 30/4-01/05, 360® ƯU ĐÃI KHÔNG GIỚI HẠN hàng ngàn sản phẩm cao cấp, mới nhất với giá siêu hời:</p><p>– Đồng giá từ 99K khi mua Áo phông, Polo, quần shorts, Tanktop – <a href=\"https://360.com.vn/danh-muc-san-pham/khuyen-mai/dong-gia-99k/\"><strong>Xem chi tiết tại đây</strong></a></p><p>– Đồng giá từ 149K, 249K khi mua Polo cao cấp –<strong> </strong><a href=\"https://360.com.vn/danh-muc-san-pham/khuyen-mai/polo-cao-cap-tu-149k/\"><strong>Xem chi tiết tại đây</strong></a></p><p>– Đồng giá từ 199K khi mua Áo sơ mi, quần dài –<strong> </strong><a href=\"https://360.com.vn/danh-muc-san-pham/khuyen-mai/dong-gia-199k-so-mi-quan-dai/\"><strong>Xem chi tiết tại đây</strong></a></p><p>Cùng nhiều quà tặng, ưu đãi khác tại cửa hàng&nbsp;</p><p>Kỳ nghỉ lễ dài sắp đến, hãy để 360® đồng hành và mang đến cho bạn sự thoải mái trong mọi chuyến du lịch, nghỉ ngơi.</p><p>Đừng quên đến các cửa hàng 360® hoặc mua sắm ONLINE để tận hưởng niềm vui mua sắm thông minh với mức giá chưa từng có!</p>', '2025-05-12 20:52:17', '2025-05-12 20:52:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_types`
--

CREATE TABLE `post_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_types`
--

INSERT INTO `post_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Hướng dẫn chọn giày', '2023-10-18 13:55:25', '2025-03-24 17:05:51'),
(2, 'Hướng dẫn sử dụng', '2023-10-18 13:55:37', '2025-03-24 17:05:28'),
(3, 'Câu lạc bộ', '2023-10-18 14:34:07', '2025-03-24 17:05:17'),
(4, 'Giao hữu', '2025-03-24 17:20:25', '2025-03-24 17:20:25'),
(5, 'Thể thao 24H', '2025-03-24 17:20:44', '2025-03-24 17:20:44'),
(6, 'Siêu sale 30/4 và 1/5', '2025-04-29 03:52:48', '2025-04-29 03:52:48'),
(7, 'Hè giảm giá', '2025-05-12 15:41:22', '2025-05-12 15:41:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `color` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT 0,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `name`, `price`, `color`, `product_code`, `featured`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Nike Mercurial Superfly 9 Academy TF', 480000, 'Trắng Xanh', 'SP038215_master', 1, '<p><strong>Thông số kỹ thuật:</strong><a href=\"https://giaydabongtot.com/san-pham/nike-mercurial-superfly-9-academy-tf-trang-vach-xanh-nhat-re/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Nike Mercurial Superfly 9 Academy TF Trắng vạch xanh nhạt RE\"></a></p><ul><li>Loại giày: Giày sân cỏ nhân tạo.</li><li>Loại đế: Đế đinh dăm TF.</li><li>Phiên bản: Superfly 9 Academy.</li><li>Phân khúc: Giá rẻ.</li><li>Chất liệu da: Da tổng hợp nhân tạo.</li><li>Chất liệu đế: Đế cao su mềm dẻo.</li><li>Dòng giày: Nike Mercurial.</li><li>Phân khúc: Giá rẻ (ngon, bổ, rẻ).</li><li>Thời gian ra mắt: Tháng 2, 2023.</li><li>Thiết kế: Có cổ thun ôm chân</li><li>Bộ sưu tập: Nike Blast pack.</li></ul><p><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/Nike-mercurial-superfly-9-academy-tf-trang-vach-xanh-nhat-2.jpg\" alt=\"Nike mercurial superfly 9 academy tf trang vach xanh nhat (2)\"></p>', '2023-10-18 13:14:42', '2023-10-18 13:14:42'),
(2, 1, 2, 'Nike Mercurial Vapor 15 Academy TF CR7 RE', 380000, 'Tím cam', 'SP038305_master', 1, '<p><strong>Thông số kỹ thuật:</strong><a href=\"https://giaydabongtot.com/san-pham/nike-mercurial-vapor-15-academy-tf-tim-cam-cr7-re/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Nike Mercurial Vapor 15 Academy TF Tím cam CR7 RE\"></a></p><ul><li>Loại giày: Giày sân cỏ nhân tạo.</li><li>Loại đế: Đế đinh dăm TF.</li><li>Phiên bản: Vapor 15 Academy.</li><li>Phân khúc: Giá rẻ.</li><li>Chất liệu da: Da tổng hợp nhân tạo.</li><li>Chất liệu đế: Đế cao su mềm dẻo.</li><li>Dòng giày: Nike Mercurial.</li><li>Phân khúc: Giá rẻ (ngon, bổ, rẻ).</li><li>Thời gian ra mắt: Tháng 2, 2023.</li><li>Thiết kế: Dựa theo phiên bản giày thi đấu của Ronaldo CR7, Mbappé,…</li><li>Bộ sưu tập: Nike Mercurial Dream Speed.</li></ul>', '2023-10-18 13:17:23', '2023-10-18 13:17:23'),
(3, 1, 4, 'Giày Nike Phantom GX Pro TF', 600000, 'Cam vàng', 'SP038161_master', 1, '<p><strong>Thông số kỹ thuật:</strong><a href=\"https://giaydabongtot.com/san-pham/giay-nike-phantom-gx-pro-tf-cam-vang-vach-den/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Giày Nike Phantom GX Pro TF Cam vàng vạch đen\"></a></p><ul><li>Loại giày: Giày đá banh sân cỏ nhân tạo.</li><li>Loại đế: Đế đinh dăm TF.</li><li>Phiên bản: Nike Phantom GX Pro (mới nhất 2023).</li><li>Phân khúc: tầm trung.</li><li>Chất liệu da: Da vải phủ lớp nhựa dẻo chống nước.</li><li>Chất liệu đế: Đế cao su mềm dẻo có đệm xốp React êm ái (phần màu trắng ở đế giày).</li><li>Dòng giày: Nike Phantom GX.</li><li>Gam màu: Cam vàng vạch đen.</li><li>Phân khúc: Pro với mức giá tầm trung.</li><li>Thời gian ra mắt: Tháng 6, 2023.</li><li>Lưỡi gà: Cổ thun co giãn tốt.</li><li>Ưu điểm nổi bật: Form giày thoải mái dễ mang.</li></ul><p>&nbsp;</p>', '2023-10-18 13:22:39', '2023-10-18 13:22:39'),
(4, 1, 1, 'Nike Tiempo Legend 9 Pro TF', 580000, 'Xanh ngọc cam', 'SP037388_master', 1, '<p>Do giày đá bóng thường có thiết kế ôm chân hơn các loại giày khác. Ngoài ra form giày Nike, Adidas thường nhỏ hơn so với các loại giày khác. Cho nên size giày chuẩn sẽ cần phải tăng lên theo hướng dẫn dưới đây.&nbsp;<br>- Tăng 0,5 - 1 size so với&nbsp;<strong>giày vải bata Thượng Đình, Thashoco, bata tàu warrior...</strong>&nbsp;(tùy muốn ôm chân hay thoải mái).&nbsp;<br>- Tăng 0,5 size so với <strong>giày thể thao Nike, Adidas.</strong>&nbsp;<br>- Tăng 0,5-1 size so với các loại&nbsp;<strong>giày bóng đá làm ở Việt Nam</strong> (ví dụ: giày tầm giá 100-300k VNĐ).&nbsp;<br>- Tăng 0,5-1 size so với&nbsp;<strong>giày pan Thái</strong>&nbsp;<br>- Mang ngang size với&nbsp;<strong>giày đá bóng Nike, Adidas chính hãng</strong>.&nbsp;<br>- Tham khảo bài viết chi tiết các bước <a href=\"https://giaydabongtot.com/blog/chon-size-giay-da-bong\"><strong>đo size giày</strong></a> của shop (tuy nhiên việc đo size giày dễ sai lệch nên cũng không chính xác lắm).&nbsp;<br>Lưu ý: Tất cả các trường hợp trên đây đều áp dụng khi mang vừa chuẩn size các loại giày được mô tả. Trường hợp mang rộng, thừa mũi các loại giày dưới đây khoảng 0.5 cm trở lên thì không cần tăng size.<a href=\"https://giaydabongtot.com/san-pham/nike-tiempo-legend-9-pro-tf-xanh-ngoc-cam-vach-den/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Nike Tiempo Legend 9 Pro TF Xanh ngọc cam vạch đen\"></a></p>', '2023-10-18 13:25:16', '2023-10-18 13:25:16'),
(5, 1, 2, 'Nike Tiempo 9 Pro TF đế vằn', 580000, 'Xám vạch trắng', 'Tiempo-991', 1, '<p>Do giày đá bóng thường có thiết kế ôm chân hơn các loại giày khác. Ngoài ra form giày Nike, Adidas thường nhỏ hơn so với các loại giày khác. Cho nên size giày chuẩn sẽ cần phải tăng lên theo hướng dẫn dưới đây.&nbsp;<br>- Tăng 0,5 - 1 size so với&nbsp;<strong>giày vải bata Thượng Đình, Thashoco, bata tàu warrior...</strong>&nbsp;(tùy muốn ôm chân hay thoải mái).&nbsp;<br>- Tăng 0,5 size so với <strong>giày thể thao Nike, Adidas.</strong>&nbsp;<br>- Tăng 0,5-1 size so với các loại&nbsp;<strong>giày bóng đá làm ở Việt Nam</strong> (ví dụ: giày tầm giá 100-300k VNĐ).&nbsp;<br>- Tăng 0,5-1 size so với&nbsp;<strong>giày pan Thái</strong>&nbsp;<br>- Mang ngang size với&nbsp;<strong>giày đá bóng Nike, Adidas chính hãng</strong>.&nbsp;<br>- Tham khảo bài viết chi tiết các bước <a href=\"https://giaydabongtot.com/blog/chon-size-giay-da-bong\"><strong>đo size giày</strong></a> của shop (tuy nhiên việc đo size giày dễ sai lệch nên cũng không chính xác lắm).&nbsp;<br>Lưu ý: Tất cả các trường hợp trên đây đều áp dụng khi mang vừa chuẩn size các loại giày được mô tả. Trường hợp mang rộng, thừa mũi các loại giày dưới đây khoảng 0.5 cm trở lên thì không cần tăng size.<a href=\"https://giaydabongtot.com/san-pham/nike-tiempo-9-pro-tf-xam-vach-trang-de-van/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Nike Tiempo 9 Pro TF xám vạch trắng, Đế vằn\"></a></p>', '2023-10-18 13:30:15', '2023-10-18 13:30:15'),
(6, 2, 2, 'Adidas X Crazyfast .1 TF', 580000, 'Chuối trắng vạch đen', 'SP038298_master', 1, '<p>Do giày đá bóng thường có thiết kế ôm chân hơn các loại giày khác. Ngoài ra form giày Nike, Adidas thường nhỏ hơn so với các loại giày khác. Cho nên size giày chuẩn sẽ cần phải tăng lên theo hướng dẫn dưới đây.&nbsp;<br>- Tăng 0,5 - 1 size so với&nbsp;<strong>giày vải bata Thượng Đình, Thashoco, bata tàu warrior...</strong>&nbsp;(tùy muốn ôm chân hay thoải mái).&nbsp;<br>- Tăng 0,5 size so với <strong>giày thể thao Nike, Adidas.</strong>&nbsp;<br>- Tăng 0,5-1 size so với các loại&nbsp;<strong>giày bóng đá làm ở Việt Nam</strong> (ví dụ: giày tầm giá 100-300k VNĐ).&nbsp;<br>- Tăng 0,5-1 size so với&nbsp;<strong>giày pan Thái</strong>&nbsp;<br>- Mang ngang size với&nbsp;<strong>giày đá bóng Nike, Adidas chính hãng</strong>.&nbsp;<br>- Tham khảo bài viết chi tiết các bước <a href=\"https://giaydabongtot.com/blog/chon-size-giay-da-bong\"><strong>đo size giày</strong></a> của shop (tuy nhiên việc đo size giày dễ sai lệch nên cũng không chính xác lắm).&nbsp;<br>Lưu ý: Tất cả các trường hợp trên đây đều áp dụng khi mang vừa chuẩn size các loại giày được mô tả. Trường hợp mang rộng, thừa mũi các loại giày dưới đây khoảng 0.5 cm trở lên thì không cần tăng size.<a href=\"https://giaydabongtot.com/san-pham/adidas-x-crazyfast-1-tf-chuoi-trang-vach-den/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Adidas X Crazyfast .1 TF Chuối trắng vạch đen\"></a></p>', '2023-10-18 13:31:29', '2023-10-18 13:31:29'),
(7, 2, 1, 'Giày Adidas X Speedportal .1 TF Messi', 580000, 'Cam đen', 'SP038059_master', 1, '<p>Do giày đá bóng thường có thiết kế ôm chân hơn các loại giày khác. Ngoài ra form giày Nike, Adidas thường nhỏ hơn so với các loại giày khác. Cho nên size giày chuẩn sẽ cần phải tăng lên theo hướng dẫn dưới đây.&nbsp;<br>- Tăng 0,5 - 1 size so với&nbsp;<strong>giày vải bata Thượng Đình, Thashoco, bata tàu warrior...</strong>&nbsp;(tùy muốn ôm chân hay thoải mái).&nbsp;<br>- Tăng 0,5 size so với <strong>giày thể thao Nike, Adidas.</strong>&nbsp;<br>- Tăng 0,5-1 size so với các loại&nbsp;<strong>giày bóng đá làm ở Việt Nam</strong> (ví dụ: giày tầm giá 100-300k VNĐ).&nbsp;<br>- Tăng 0,5-1 size so với&nbsp;<strong>giày pan Thái</strong>&nbsp;<br>- Mang ngang size với&nbsp;<strong>giày đá bóng Nike, Adidas chính hãng</strong>.&nbsp;<br>- Tham khảo bài viết chi tiết các bước <a href=\"https://giaydabongtot.com/blog/chon-size-giay-da-bong\"><strong>đo size giày</strong></a> của shop (tuy nhiên việc đo size giày dễ sai lệch nên cũng không chính xác lắm).&nbsp;<br>Lưu ý: Tất cả các trường hợp trên đây đều áp dụng khi mang vừa chuẩn size các loại giày được mô tả. Trường hợp mang rộng, thừa mũi các loại giày dưới đây khoảng 0.5 cm trở lên thì không cần tăng size.<a href=\"https://giaydabongtot.com/san-pham/giay-adidas-x-speedportal-1-tf-messi-cam-den/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Giày Adidas X Speedportal .1 TF Messi Cam đen\"></a></p>', '2023-10-18 13:32:30', '2023-10-18 13:32:30'),
(8, 2, 4, 'Adidas Predator Freak+ TF không dây', 850000, 'Bạc vạch đen', 'SP037750_master', 1, '<p>Do giày đá bóng thường có thiết kế ôm chân hơn các loại giày khác. Ngoài ra form giày Nike, Adidas thường nhỏ hơn so với các loại giày khác. Cho nên size giày chuẩn sẽ cần phải tăng lên theo hướng dẫn dưới đây.&nbsp;<br>- Tăng 0,5 - 1 size so với&nbsp;<strong>giày vải bata Thượng Đình, Thashoco, bata tàu warrior...</strong>&nbsp;(tùy muốn ôm chân hay thoải mái).&nbsp;<br>- Tăng 0,5 size so với <strong>giày thể thao Nike, Adidas.</strong>&nbsp;<br>- Tăng 0,5-1 size so với các loại&nbsp;<strong>giày bóng đá làm ở Việt Nam</strong> (ví dụ: giày tầm giá 100-300k VNĐ).&nbsp;<br>- Tăng 0,5-1 size so với&nbsp;<strong>giày pan Thái</strong>&nbsp;<br>- Mang ngang size với&nbsp;<strong>giày đá bóng Nike, Adidas chính hãng</strong>.&nbsp;<br>- Tham khảo bài viết chi tiết các bước <a href=\"https://giaydabongtot.com/blog/chon-size-giay-da-bong\"><strong>đo size giày</strong></a> của shop (tuy nhiên việc đo size giày dễ sai lệch nên cũng không chính xác lắm).&nbsp;<br>Lưu ý: Tất cả các trường hợp trên đây đều áp dụng khi mang vừa chuẩn size các loại giày được mô tả. Trường hợp mang rộng, thừa mũi các loại giày dưới đây khoảng 0.5 cm trở lên thì không cần tăng size.<a href=\"https://giaydabongtot.com/san-pham/adidas-predator-freak-tf-bac-vach-den-khong-day/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Adidas Predator Freak+ TF Bạc vạch đen không dây\"></a></p>', '2023-10-18 13:33:33', '2023-10-18 13:33:33'),
(9, 2, 5, 'Adidas X Speedportal .1 TF WC (Kids)', 550000, 'Xanh ngọc', 'SP038279_master', 1, '<p>Do giày đá bóng thường có thiết kế ôm chân hơn các loại giày khác. Ngoài ra form giày Nike, Adidas thường nhỏ hơn so với các loại giày khác. Cho nên size giày chuẩn sẽ cần phải tăng lên theo hướng dẫn dưới đây.&nbsp;<br>- Tăng 0,5 - 1 size so với&nbsp;<strong>giày vải bata Thượng Đình, Thashoco, bata tàu warrior...</strong>&nbsp;(tùy muốn ôm chân hay thoải mái).&nbsp;<br>- Tăng 0,5 size so với <strong>giày thể thao Nike, Adidas.</strong>&nbsp;<br>- Tăng 0,5-1 size so với các loại&nbsp;<strong>giày bóng đá làm ở Việt Nam</strong> (ví dụ: giày tầm giá 100-300k VNĐ).&nbsp;<br>- Tăng 0,5-1 size so với&nbsp;<strong>giày pan Thái</strong>&nbsp;<br>- Mang ngang size với&nbsp;<strong>giày đá bóng Nike, Adidas chính hãng</strong>.&nbsp;<br>- Tham khảo bài viết chi tiết các bước <a href=\"https://giaydabongtot.com/blog/chon-size-giay-da-bong\"><strong>đo size giày</strong></a> của shop (tuy nhiên việc đo size giày dễ sai lệch nên cũng không chính xác lắm).&nbsp;<br>Lưu ý: Tất cả các trường hợp trên đây đều áp dụng khi mang vừa chuẩn size các loại giày được mô tả. Trường hợp mang rộng, thừa mũi các loại giày dưới đây khoảng 0.5 cm trở lên thì không cần tăng size.<a href=\"https://giaydabongtot.com/san-pham/adidas-x-speedportal-1-tf-xanh-ngoc-wc-kids/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Adidas X Speedportal .1 TF Xanh ngọc WC (Kids)\"></a></p>', '2023-10-18 13:34:49', '2023-10-18 13:37:19'),
(10, 1, 5, 'Nike Mercurial Superfly 9 Academy TF CR7', 480000, 'Xanh trắng', 'SP038190_master', 1, '<p>- Ngoài áp dụng cả các chọn size giày của shop thì bạn có thể áp dụng thêm cách đo chiều dài bàn chân rồi <strong>so sánh với bảng đo size giày</strong> để tìm ra size giày phù hợp.&nbsp;<br>- Nên áp dụng theo hướng dẫn của shop trước sau đó so sánh với bảng đo size giày để chọn ra size giày phù hợp nhất. Chỉ sử dụng cách đo chân và bảng quy đổi size giày có độ chính xác không quá cao. Trường hợp thấy chênh lệch size và bạn không tự tin khi chọn size hãy <a href=\"https://m.me/giaydabongtotfb\"><strong>Chat Với Shop</strong></a> để được hỗ trợ nhé.<a href=\"https://giaydabongtot.com/san-pham/nike-mercurial-superfly-9-academy-tf-xanh-trang-cr7-kids-re/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Nike Mercurial Superfly 9 Academy TF Xanh trắng CR7 kids (RE)\"></a></p>', '2023-10-18 13:35:54', '2023-10-18 13:37:11'),
(11, 1, 5, 'Nike Mercurial Superfly 9 Elite TF (Kids)', 720000, 'Chuối vằn cam', 'SP037611_master', 1, '<p>Do giày đá bóng thường có thiết kế ôm chân hơn các loại giày khác. Ngoài ra form giày Nike, Adidas thường nhỏ hơn so với các loại giày khác. Cho nên size giày chuẩn sẽ cần phải tăng lên theo hướng dẫn dưới đây.&nbsp;<br>- Tăng 0,5 - 1 size so với&nbsp;<strong>giày vải bata Thượng Đình, Thashoco, bata tàu warrior...</strong>&nbsp;(tùy muốn ôm chân hay thoải mái).&nbsp;<br>- Tăng 0,5 size so với <strong>giày thể thao Nike, Adidas.</strong>&nbsp;<br>- Tăng 0,5-1 size so với các loại&nbsp;<strong>giày bóng đá làm ở Việt Nam</strong> (ví dụ: giày tầm giá 100-300k VNĐ).&nbsp;<br>- Tăng 0,5-1 size so với&nbsp;<strong>giày pan Thái</strong>&nbsp;<br>- Mang ngang size với&nbsp;<strong>giày đá bóng Nike, Adidas chính hãng</strong>.&nbsp;<br>- Tham khảo bài viết chi tiết các bước <a href=\"https://giaydabongtot.com/blog/chon-size-giay-da-bong\"><strong>đo size giày</strong></a> của shop (tuy nhiên việc đo size giày dễ sai lệch nên cũng không chính xác lắm).&nbsp;<br>Lưu ý: Tất cả các trường hợp trên đây đều áp dụng khi mang vừa chuẩn size các loại giày được mô tả. Trường hợp mang rộng, thừa mũi các loại giày dưới đây khoảng 0.5 cm trở lên thì không cần tăng size.<a href=\"https://giaydabongtot.com/san-pham/nike-mercurial-superfly-9-elite-tf-chuoi-van-cam-kids/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Nike Mercurial Superfly 9 Elite TF Chuối vằn cam (Kids)\"></a></p>', '2023-10-18 13:37:01', '2023-10-18 13:37:01'),
(12, 3, 1, 'Giày Đá Banh Puma Future Z 1.4 TF Neymar', 450000, 'Cam nâu', 'SP037771_master', 1, '<p>Do giày đá bóng thường có thiết kế ôm chân hơn các loại giày khác. Ngoài ra form giày Nike, Adidas thường nhỏ hơn so với các loại giày khác. Cho nên size giày chuẩn sẽ cần phải tăng lên theo hướng dẫn dưới đây.&nbsp;<br>- Tăng 0,5 - 1 size so với&nbsp;<strong>giày vải bata Thượng Đình, Thashoco, bata tàu warrior...</strong>&nbsp;(tùy muốn ôm chân hay thoải mái).&nbsp;<br>- Tăng 0,5 size so với <strong>giày thể thao Nike, Adidas.</strong>&nbsp;<br>- Tăng 0,5-1 size so với các loại&nbsp;<strong>giày bóng đá làm ở Việt Nam</strong> (ví dụ: giày tầm giá 100-300k VNĐ).&nbsp;<br>- Tăng 0,5-1 size so với&nbsp;<strong>giày pan Thái</strong>&nbsp;<br>- Mang ngang size với&nbsp;<strong>giày đá bóng Nike, Adidas chính hãng</strong>.&nbsp;<br>- Tham khảo bài viết chi tiết các bước <a href=\"https://giaydabongtot.com/blog/chon-size-giay-da-bong\"><strong>đo size giày</strong></a> của shop (tuy nhiên việc đo size giày dễ sai lệch nên cũng không chính xác lắm).&nbsp;<br>Lưu ý: Tất cả các trường hợp trên đây đều áp dụng khi mang vừa chuẩn size các loại giày được mô tả. Trường hợp mang rộng, thừa mũi các loại giày dưới đây khoảng 0.5 cm trở lên thì không cần tăng size.<a href=\"https://giaydabongtot.com/san-pham/giay-da-banh-puma-future-z-1-4-tf-cam-nau-neymar/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Giày Đá Banh Puma Future Z 1.4 TF Cam nâu Neymar\"></a></p>', '2023-10-18 13:38:57', '2023-10-18 13:38:57'),
(13, 3, 2, 'Giày Đá Banh Puma Future Z 1.4 MG', 720000, 'Xám vạch cam', 'SP037799_master', 1, '<p>Do giày đá bóng thường có thiết kế ôm chân hơn các loại giày khác. Ngoài ra form giày Nike, Adidas thường nhỏ hơn so với các loại giày khác. Cho nên size giày chuẩn sẽ cần phải tăng lên theo hướng dẫn dưới đây.&nbsp;<br>- Tăng 0,5 - 1 size so với&nbsp;<strong>giày vải bata Thượng Đình, Thashoco, bata tàu warrior...</strong>&nbsp;(tùy muốn ôm chân hay thoải mái).&nbsp;<br>- Tăng 0,5 size so với <strong>giày thể thao Nike, Adidas.</strong>&nbsp;<br>- Tăng 0,5-1 size so với các loại&nbsp;<strong>giày bóng đá làm ở Việt Nam</strong> (ví dụ: giày tầm giá 100-300k VNĐ).&nbsp;<br>- Tăng 0,5-1 size so với&nbsp;<strong>giày pan Thái</strong>&nbsp;<br>- Mang ngang size với&nbsp;<strong>giày đá bóng Nike, Adidas chính hãng</strong>.&nbsp;<br>- Tham khảo bài viết chi tiết các bước <a href=\"https://giaydabongtot.com/blog/chon-size-giay-da-bong\"><strong>đo size giày</strong></a> của shop (tuy nhiên việc đo size giày dễ sai lệch nên cũng không chính xác lắm).&nbsp;<br>Lưu ý: Tất cả các trường hợp trên đây đều áp dụng khi mang vừa chuẩn size các loại giày được mô tả. Trường hợp mang rộng, thừa mũi các loại giày dưới đây khoảng 0.5 cm trở lên thì không cần tăng size.<a href=\"https://giaydabongtot.com/san-pham/giay-da-banh-puma-future-z-1-4-mg-xam-vach-cam/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Giày Đá Banh Puma Future Z 1.4 MG Xám vạch cam (2 màu)\"></a></p>', '2023-10-18 13:39:53', '2023-10-18 13:39:53'),
(14, 3, 2, 'Giày Đá Bóng Puma Future Z 1.4 TF', 650000, 'Xám trắng', 'SP037799_master', 0, '<p>Do giày đá bóng thường có thiết kế ôm chân hơn các loại giày khác. Ngoài ra form giày Nike, Adidas thường nhỏ hơn so với các loại giày khác. Cho nên size giày chuẩn sẽ cần phải tăng lên theo hướng dẫn dưới đây.&nbsp;<br>- Tăng 0,5 - 1 size so với&nbsp;<strong>giày vải bata Thượng Đình, Thashoco, bata tàu warrior...</strong>&nbsp;(tùy muốn ôm chân hay thoải mái).&nbsp;<br>- Tăng 0,5 size so với <strong>giày thể thao Nike, Adidas.</strong>&nbsp;<br>- Tăng 0,5-1 size so với các loại&nbsp;<strong>giày bóng đá làm ở Việt Nam</strong> (ví dụ: giày tầm giá 100-300k VNĐ).&nbsp;<br>- Tăng 0,5-1 size so với&nbsp;<strong>giày pan Thái</strong>&nbsp;<br>- Mang ngang size với&nbsp;<strong>giày đá bóng Nike, Adidas chính hãng</strong>.&nbsp;<br>- Tham khảo bài viết chi tiết các bước <a href=\"https://giaydabongtot.com/blog/chon-size-giay-da-bong\"><strong>đo size giày</strong></a> của shop (tuy nhiên việc đo size giày dễ sai lệch nên cũng không chính xác lắm).&nbsp;<br>Lưu ý: Tất cả các trường hợp trên đây đều áp dụng khi mang vừa chuẩn size các loại giày được mô tả. Trường hợp mang rộng, thừa mũi các loại giày dưới đây khoảng 0.5 cm trở lên thì không cần tăng size.<a href=\"https://giaydabongtot.com/san-pham/giay-da-bong-puma-future-z-1-4-tf-xam-vach-cam/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Giày Đá Bóng Puma Future Z 1.4 TF Xám vạch cam\"></a></p>', '2023-10-18 13:40:57', '2023-10-18 13:40:57'),
(45, 3, 5, 'Giày Puma Siêu cấp chống trơn trượt', 480000, 'Trắng', 'Puma22', 1, '<p>Do giày đá bóng thường có thiết kế ôm chân hơn các loại giày khác. Ngoài ra form giày Nike, Adidas thường nhỏ hơn so với các loại giày khác. Cho nên size giày chuẩn sẽ cần phải tăng lên theo hướng dẫn dưới đây.&nbsp;<br>- Tăng 0,5 - 1 size so với&nbsp;<strong>giày vải bata Thượng Đình, Thashoco, bata tàu warrior...</strong>&nbsp;(tùy muốn ôm chân hay thoải mái).&nbsp;<br>- Tăng 0,5 size so với <strong>giày thể thao Nike, Adidas.</strong>&nbsp;<br>- Tăng 0,5-1 size so với các loại&nbsp;<strong>giày bóng đá làm ở Việt Nam</strong> (ví dụ: giày tầm giá 100-300k VNĐ).&nbsp;<br>- Tăng 0,5-1 size so với&nbsp;<strong>giày pan Thái</strong>&nbsp;<br>- Mang ngang size với&nbsp;<strong>giày đá bóng Nike, Adidas chính hãng</strong>.&nbsp;<br>- Tham khảo bài viết chi tiết các bước <a href=\"https://giaydabongtot.com/blog/chon-size-giay-da-bong\"><strong>đo size giày</strong></a> của shop (tuy nhiên việc đo size giày dễ sai lệch nên cũng không chính xác lắm).&nbsp;<br>Lưu ý: Tất cả các trường hợp trên đây đều áp dụng khi mang vừa chuẩn size các loại giày được mô tả. Trường hợp mang rộng, thừa mũi các loại giày dưới đây khoảng 0.5 cm trở lên thì không cần tăng size.<a href=\"https://giaydabongtot.com/san-pham/nike-mercurial-vapor-13-pro-tf-chuoi-hong-xanh-neymar/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Nike Mercurial Vapor 13 Pro TF Chuối hồng xanh Neymar\"></a></p>', '2025-04-10 06:52:19', '2025-04-10 06:52:19'),
(46, 2, 1, 'Giày Adidas Ultraboost Light White Black', 789000, 'Trắng', 'dd', 1, '<h2><strong>Giày Adidas Ultraboost Light White Black</strong></h2>', '2025-04-10 06:55:49', '2025-05-01 06:37:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'uploads/product/ttAxZErhIEjmJgEKjz7QvEgLZj5K1CT5fz9ha6CD.jpg', '2023-10-18 13:14:42', '2023-10-18 13:14:42'),
(2, 1, 'uploads/product/1PLuQbUMvUbASSFnuWXjrDoJXTsgnmoj20Wiiz0S.jpg', '2023-10-18 13:14:42', '2023-10-18 13:14:42'),
(3, 1, 'uploads/product/SwBZGgIHO5Or3UDK5cLFMuYFFedDnLv0E6Jnf01t.jpg', '2023-10-18 13:14:42', '2023-10-18 13:14:42'),
(4, 1, 'uploads/product/9ZGbXnnvlJnocwoDBsijVPRyNOaZhaL5XgJ8kzlr.jpg', '2023-10-18 13:14:42', '2023-10-18 13:14:42'),
(5, 2, 'uploads/product/6QhdwKBrKo2JsAMKkqedDA0760IkMfDzYZ1R2Sr3.jpg', '2023-10-18 13:17:23', '2023-10-18 13:17:23'),
(6, 2, 'uploads/product/VZizHZD0lrQ0Wq2XUvURYHG8DO17EDLP8nKuJBTy.jpg', '2023-10-18 13:17:23', '2023-10-18 13:17:23'),
(7, 3, 'uploads/product/aiTIJbHVLT2qjIu0GxDk1tfiwVuCdsdPhtxaMvsP.jpg', '2023-10-18 13:22:39', '2023-10-18 13:22:39'),
(8, 3, 'uploads/product/pdWqSntiGxYwUrYgwQ44J3IlMs6OTtuVAu1Dx0B4.jpg', '2023-10-18 13:22:39', '2023-10-18 13:28:36'),
(9, 4, 'uploads/product/HehO0fx8jiyuSTixgCeULYNrgQUgPCTLOo0Qnpv7.jpg', '2023-10-18 13:25:16', '2023-10-18 13:25:16'),
(10, 5, 'uploads/product/4P38tAUd5ibkHh1z1OzE2WN6CyTLmyr2C9Y9vhtc.jpg', '2023-10-18 13:30:15', '2023-10-18 13:30:15'),
(11, 6, 'uploads/product/zJ6kc2rX6K9XGUeNBvgsGeZqrjmKdYZjlDEVvC4n.jpg', '2023-10-18 13:31:29', '2023-10-18 13:31:29'),
(12, 7, 'uploads/product/zeaCb9j7hkbXyRufHglg7exDlaCzlzdXYukr1ghE.jpg', '2023-10-18 13:32:30', '2023-10-18 13:32:30'),
(13, 7, 'uploads/product/DXABPXQd5ACwFdchp2AtbCIpM3KdfmCfT6W1coo2.jpg', '2023-10-18 13:32:30', '2023-10-18 13:32:30'),
(14, 8, 'uploads/product/UIgFoGwC5nM7R5rrfVljAOLz3AUJCx2ft7rkl5Uy.jpg', '2023-10-18 13:33:33', '2023-10-18 13:33:33'),
(15, 9, 'uploads/product/LJ4ZTuH34mbm6cychdAyrXNnMBtnalCPXlrvut9G.jpg', '2023-10-18 13:34:49', '2023-10-18 13:34:49'),
(16, 10, 'uploads/product/R9HpaeKzVq70t3U9iU7RLE39AZiTHu4eyQFU9A7m.jpg', '2023-10-18 13:35:54', '2023-10-18 13:35:54'),
(17, 11, 'uploads/product/dGOP3jgg1kOkdBJkHxksmGRhTIgwZHJV9cuTQzoa.jpg', '2023-10-18 13:37:01', '2023-10-18 13:37:01'),
(18, 12, 'uploads/product/BLTCA3GXWDs2U2uG3C4o5ijfCcJKMmLdIAcnsKiy.jpg', '2023-10-18 13:38:57', '2023-10-18 13:38:57'),
(19, 13, 'uploads/product/CTq2M4PFgpxgXq0eDcGslukCARIOLjvwCFHFV4tQ.jpg', '2023-10-18 13:39:53', '2023-10-18 13:39:53'),
(20, 14, 'uploads/product/BEaHRIRDf6nn7v0uKgQtGA3rgnocRtLdojSSDWgd.jpg', '2023-10-18 13:40:57', '2023-10-18 13:40:57'),
(64, 45, 'uploads/product/ajCMjVySBV1HyF7oqxHHTRu3GdZOqtIqCrn0efHV.webp', '2025-04-10 06:52:19', '2025-04-10 06:53:01'),
(65, 46, 'uploads/product/oTV5Ykpl08K7EBu3cq4OlSoNKSMvHQzk1dg7yrOt.webp', '2025-04-10 06:55:49', '2025-04-10 06:57:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_items`
--

CREATE TABLE `product_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_items`
--

INSERT INTO `product_items` (`id`, `product_id`, `size`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 39, 20, '2023-10-18 13:14:42', '2023-10-18 13:14:42'),
(2, 1, 40, 20, '2023-10-18 13:14:42', '2023-10-18 13:14:42'),
(3, 1, 41, 20, '2023-10-18 13:14:42', '2023-10-18 13:14:42'),
(4, 1, 42, 20, '2023-10-18 13:14:42', '2023-10-18 13:14:42'),
(5, 1, 43, 20, '2023-10-18 13:14:42', '2023-10-18 13:14:42'),
(6, 2, 39, 20, '2023-10-18 13:17:23', '2023-10-18 13:17:23'),
(7, 2, 40, 20, '2023-10-18 13:17:23', '2023-10-18 13:17:23'),
(8, 2, 41, 20, '2023-10-18 13:17:23', '2023-10-18 13:17:23'),
(9, 3, 39, 21, '2023-10-18 13:22:39', '2023-10-18 14:54:44'),
(10, 3, 40, 22, '2023-10-18 13:22:39', '2023-10-18 13:22:39'),
(11, 3, 41, 22, '2023-10-18 13:22:39', '2023-10-18 13:22:39'),
(12, 4, 39, 20, '2023-10-18 13:25:16', '2023-10-18 13:25:16'),
(13, 4, 42, 20, '2023-10-18 13:25:16', '2023-10-18 13:25:16'),
(14, 5, 40, 20, '2023-10-18 13:30:15', '2023-10-18 13:30:15'),
(15, 5, 41, 20, '2023-10-18 13:30:15', '2023-10-18 13:30:15'),
(16, 6, 40, 20, '2023-10-18 13:31:29', '2023-10-18 13:31:29'),
(17, 6, 41, 20, '2023-10-18 13:31:29', '2023-10-18 13:31:29'),
(18, 7, 40, 19, '2023-10-18 13:32:30', '2023-10-18 14:50:29'),
(19, 8, 40, 20, '2023-10-18 13:33:33', '2023-10-18 13:33:33'),
(20, 8, 41, 20, '2023-10-18 13:33:33', '2023-10-18 13:33:33'),
(21, 9, 35, 18, '2023-10-18 13:34:49', '2025-05-22 18:30:47'),
(22, 9, 36, 15, '2023-10-18 13:34:49', '2025-05-22 18:35:11'),
(23, 9, 37, 20, '2023-10-18 13:34:49', '2023-10-18 13:34:49'),
(24, 10, 35, 20, '2023-10-18 13:35:54', '2023-10-18 13:35:54'),
(25, 10, 36, 20, '2023-10-18 13:35:54', '2023-10-18 13:35:54'),
(26, 11, 35, 6, '2023-10-18 13:37:01', '2025-04-14 14:39:51'),
(27, 12, 39, 19, '2023-10-18 13:38:57', '2023-10-18 14:50:29'),
(28, 12, 40, 20, '2023-10-18 13:38:57', '2023-10-18 13:38:57'),
(29, 13, 39, 16, '2023-10-18 13:39:53', '2025-04-14 13:00:15'),
(30, 14, 39, 15, '2023-10-18 13:40:57', '2025-05-22 18:21:55'),
(74, 45, 38, 19, '2025-04-10 06:52:19', '2025-04-10 07:50:53'),
(75, 45, 39, 20, '2025-04-10 06:52:19', '2025-04-10 06:52:19'),
(76, 45, 40, 20, '2025-04-10 06:52:19', '2025-04-10 06:52:19'),
(77, 45, 41, 20, '2025-04-10 06:52:19', '2025-04-10 06:52:19'),
(78, 46, 39, 1, '2025-04-10 06:55:49', '2025-05-22 18:30:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `phone`, `address`, `password`, `avatar`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tuan anh', 'Tuan Anh', 'tuananh@localhost.com', '123454345', 'Hà Đông, Hà Nội', '$2y$10$eQxrrvqZSTYxvOBLbDFWmOIlvm9DC.5pg2c/N7eJbIqyn/YzmGola', 'uploads/user/4lX5E3C4vr0bOT16zZ4CyALNl97iSwEe95OWDDYn.jpg', 0, '2023-10-18 13:53:05', '2025-05-22 18:35:46'),
(2, 'Quang Đức', 'Quang Đức', 'dangquangduc210421dte@gmail.com', '0329684263', 'Gia lộc', '$2y$10$7a28KSZaXSfTnhlNYvJxjONZ51FTroE/IcBhQhEtIbk21/62B0Faq', 'uploads/user/ci4PINl0Es2YVk1yDE1NSmQVwcYUSXblVvGUBbZf.jpg', 1, '2025-03-19 16:37:30', '2025-03-24 19:09:04'),
(3, 'Hiệp lê', NULL, 'hiepga22@gmail.com', NULL, NULL, '$2y$10$U3BHv8QkBk1FcgkjIoqKyOOTToSVnGgLLREi1atsQkSyA/.FkT8aq', NULL, 1, '2025-04-10 07:45:14', '2025-04-10 07:45:14'),
(4, 'Quang Duc', NULL, 'quangducisme@gmail.com', NULL, NULL, '$2y$10$k6VYIX5/jc1NP7FztatRfetMJk8MLYBSUD8CcdJvHTySxXuejfbnK', NULL, 0, '2025-04-14 12:58:54', '2025-05-05 17:24:15'),
(5, 'quangduc2k3', NULL, 'ducdz2003@gmail.com', NULL, NULL, '$2y$10$MJzNi9/C/yR0gOIUb3Eh0uAcp6IvyDT8LzTue8w2iVoa7jihC2jqS', NULL, 1, '2025-05-22 18:31:48', '2025-05-22 18:31:48');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_product_order_id_foreign` (`order_id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_post_type_id_foreign` (`post_type_id`);

--
-- Chỉ mục cho bảng `post_types`
--
ALTER TABLE `post_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_types_name_unique` (`name`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `product_items`
--
ALTER TABLE `product_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_items_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `post_types`
--
ALTER TABLE `post_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `product_items`
--
ALTER TABLE `product_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_post_type_id_foreign` FOREIGN KEY (`post_type_id`) REFERENCES `post_types` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_items`
--
ALTER TABLE `product_items`
  ADD CONSTRAINT `product_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
