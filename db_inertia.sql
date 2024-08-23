-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 22 Agu 2024 pada 08.38
-- Versi server: 5.7.33
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_inertia`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `carts`
--

CREATE TABLE `carts` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cashier_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `price` bigint(20) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `carts`
--

INSERT INTO `carts` (`id`, `cashier_id`, `product_id`, `qty`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
('0e1ea6e8-983e-4e48-937e-baa0aebecd7f', 1, '3ea01c66-5d54-4df7-98b7-18e486459ed1', 2, 10000, '2024-08-18 10:50:01', '2024-08-18 10:49:48', '2024-08-18 10:50:01'),
('1bc64b8e-911b-40b2-b8a7-c2772e3d8cdd', 1, '3ea01c66-5d54-4df7-98b7-18e486459ed1', 1, 5000, '2024-08-19 13:58:54', '2024-08-19 13:58:44', '2024-08-19 13:58:54'),
('293f9ce5-278c-4838-ac3e-3136bd1ade03', 1, '04bbe8ac-ae30-4706-8127-1ebfade2df4e', 3, 60000, '2024-08-19 07:38:49', '2024-08-19 07:38:36', '2024-08-19 07:38:49'),
('2bf3ba3c-8682-40b1-82b4-6644e2493a17', 1, '04bbe8ac-ae30-4706-8127-1ebfade2df4e', 1, 20000, '2024-08-19 14:00:10', '2024-08-19 14:00:01', '2024-08-19 14:00:10'),
('340d9787-e6f3-48f1-9685-2ecef1072d85', 1, 'e6f98d74-9f8f-4499-ad34-a4747b525f8d', 3, 3000, '2024-08-19 07:38:49', '2024-08-19 07:38:24', '2024-08-19 07:38:49'),
('4aa6e806-5817-49e7-a5f2-015a20ff7996', 1, '04bbe8ac-ae30-4706-8127-1ebfade2df4e', 1, 20000, '2024-08-19 13:08:27', '2024-08-19 13:07:57', '2024-08-19 13:08:27'),
('4e5b72b1-6d93-4c89-9457-4dbc035409f5', 1, '3ea01c66-5d54-4df7-98b7-18e486459ed1', 2, 10000, '2024-08-19 07:38:49', '2024-08-19 07:38:30', '2024-08-19 07:38:49'),
('76da298e-5b3e-46b6-8d46-d9b609f49f95', 1, '04bbe8ac-ae30-4706-8127-1ebfade2df4e', 2, 40000, '2024-08-18 10:50:01', '2024-08-18 10:48:40', '2024-08-18 10:50:01'),
('dcb4663d-2e2d-48bc-be5d-de9d0255f592', 1, 'e6f98d74-9f8f-4499-ad34-a4747b525f8d', 1, 1000, '2024-08-19 13:06:40', '2024-08-19 13:06:31', '2024-08-19 13:06:40'),
('e5b6ea4f-5fcf-432f-8afe-786d504a71f8', 1, '3ea01c66-5d54-4df7-98b7-18e486459ed1', 1, 5000, NULL, '2024-08-21 06:24:03', '2024-08-21 06:24:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
('17caa17b-1648-4268-9f1b-ee4b7327a802', 'Cemilan', 'lorem', NULL, '2024-08-19 07:37:40', '2024-08-19 07:37:40'),
('1944f5c9-e8de-4cad-a35c-03dfc0967585', 'Minuman', 'lorem', NULL, '2024-08-18 10:49:14', '2024-08-18 10:49:14'),
('75921c95-20cc-4f49-825b-759a5533758a', 'Cemilan 2', 'lorem', NULL, '2024-08-21 06:10:21', '2024-08-21 06:10:21'),
('8783affd-f403-47c8-b28a-18f657d2d8eb', 'Makanan', 'lorem', NULL, '2024-08-18 10:46:07', '2024-08-18 10:46:07'),
('b203eb10-ef98-4e01-b3af-d92b6b1e86b0', '/.,', 'lorem', '2024-08-18 10:51:04', '2024-08-18 10:50:57', '2024-08-18 10:51:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` int(11) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `no_telp`, `address`, `deleted_at`, `created_at`, `updated_at`) VALUES
('0b95e5f7-df20-400e-b5d5-a20a8a5997df', 'Umum', 'dhamario.sch@gmail.com', 2147483647, 'Kemang', NULL, '2024-08-18 10:48:22', '2024-08-18 10:48:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_04_21_094209_create_permission_tables', 1),
(7, '2022_04_21_094345_create_customers_table', 1),
(8, '2022_04_21_095225_create_categories_table', 1),
(9, '2022_04_21_100357_create_products_table', 1),
(10, '2022_04_21_100735_create_transactions_table', 1),
(11, '2022_04_21_101128_create_transaction_details_table', 1),
(12, '2022_04_21_101436_create_carts_table', 1),
(13, '2022_04_21_101551_create_profits_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard.index', 'web', '2024-08-18 10:45:40', '2024-08-18 10:45:40'),
(2, 'dashboard.sales_chart', 'web', '2024-08-18 10:45:40', '2024-08-18 10:45:40'),
(3, 'dashboard.sales_today', 'web', '2024-08-18 10:45:40', '2024-08-18 10:45:40'),
(4, 'dashboard.profits_today', 'web', '2024-08-18 10:45:40', '2024-08-18 10:45:40'),
(5, 'dashboard.best_selling_product', 'web', '2024-08-18 10:45:40', '2024-08-18 10:45:40'),
(6, 'dashboard.product_stock', 'web', '2024-08-18 10:45:40', '2024-08-18 10:45:40'),
(7, 'users.index', 'web', '2024-08-18 10:45:40', '2024-08-18 10:45:40'),
(8, 'users.create', 'web', '2024-08-18 10:45:40', '2024-08-18 10:45:40'),
(9, 'users.edit', 'web', '2024-08-18 10:45:40', '2024-08-18 10:45:40'),
(10, 'users.delete', 'web', '2024-08-18 10:45:40', '2024-08-18 10:45:40'),
(11, 'roles.index', 'web', '2024-08-18 10:45:40', '2024-08-18 10:45:40'),
(12, 'roles.create', 'web', '2024-08-18 10:45:40', '2024-08-18 10:45:40'),
(13, 'roles.edit', 'web', '2024-08-18 10:45:40', '2024-08-18 10:45:40'),
(14, 'roles.delete', 'web', '2024-08-18 10:45:40', '2024-08-18 10:45:40'),
(15, 'permissions.index', 'web', '2024-08-18 10:45:40', '2024-08-18 10:45:40'),
(16, 'categories.index', 'web', '2024-08-18 10:45:40', '2024-08-18 10:45:40'),
(17, 'categories.create', 'web', '2024-08-18 10:45:40', '2024-08-18 10:45:40'),
(18, 'categories.edit', 'web', '2024-08-18 10:45:40', '2024-08-18 10:45:40'),
(19, 'categories.delete', 'web', '2024-08-18 10:45:40', '2024-08-18 10:45:40'),
(20, 'products.index', 'web', '2024-08-18 10:45:40', '2024-08-18 10:45:40'),
(21, 'products.create', 'web', '2024-08-18 10:45:40', '2024-08-18 10:45:40'),
(22, 'products.edit', 'web', '2024-08-18 10:45:40', '2024-08-18 10:45:40'),
(23, 'products.delete', 'web', '2024-08-18 10:45:40', '2024-08-18 10:45:40'),
(24, 'customers.index', 'web', '2024-08-18 10:45:40', '2024-08-18 10:45:40'),
(25, 'customers.create', 'web', '2024-08-18 10:45:40', '2024-08-18 10:45:40'),
(26, 'customers.edit', 'web', '2024-08-18 10:45:40', '2024-08-18 10:45:40'),
(27, 'customers.delete', 'web', '2024-08-18 10:45:40', '2024-08-18 10:45:40'),
(28, 'transactions.index', 'web', '2024-08-18 10:45:40', '2024-08-18 10:45:40'),
(29, 'sales.index', 'web', '2024-08-18 10:45:40', '2024-08-18 10:45:40'),
(30, 'profits.index', 'web', '2024-08-18 10:45:40', '2024-08-18 10:45:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `buy_price` bigint(20) NOT NULL,
  `sell_price` bigint(20) NOT NULL,
  `stock` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `category_id`, `title`, `description`, `buy_price`, `sell_price`, `stock`, `deleted_at`, `created_at`, `updated_at`) VALUES
('04bbe8ac-ae30-4706-8127-1ebfade2df4e', '8783affd-f403-47c8-b28a-18f657d2d8eb', 'Soto Tangkar', 'lorem', 15000, 20000, 3, NULL, '2024-08-18 10:48:04', '2024-08-19 14:00:10'),
('3ea01c66-5d54-4df7-98b7-18e486459ed1', '1944f5c9-e8de-4cad-a35c-03dfc0967585', 'Es Teh', 'lorem', 3000, 5000, 10, NULL, '2024-08-18 10:49:35', '2024-08-21 03:57:29'),
('e6f98d74-9f8f-4499-ad34-a4747b525f8d', '17caa17b-1648-4268-9f1b-ee4b7327a802', 'Kerupuk', 'lorem', 500, 1000, 5, NULL, '2024-08-19 07:38:06', '2024-08-19 13:06:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profits`
--

CREATE TABLE `profits` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` bigint(20) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `profits`
--

INSERT INTO `profits` (`id`, `transaction_id`, `total`, `deleted_at`, `created_at`, `updated_at`) VALUES
('1b93f237-03c9-439b-ba36-1179cb712684', '200e7dc9-e2ec-4c6e-8fde-5228cbd9574b', 500, NULL, '2024-08-19 13:06:40', '2024-08-19 13:06:40'),
('75686bd7-b4a8-42dc-9e9a-be488fc1f712', '8df96972-5945-49bc-bae0-ca6fa02dae37', 1500, NULL, '2024-08-19 07:38:49', '2024-08-19 07:38:49'),
('7fdb3bb6-d519-47c2-bf30-59c383782596', '381e98c5-e25a-4ad0-9521-8e5e975a999f', 10000, NULL, '2024-08-18 10:50:01', '2024-08-18 10:50:01'),
('c4e2a361-841d-4886-9ce1-815d2f58997a', '67982ac7-b78f-4c3e-bef0-bbb61f28a250', 2000, NULL, '2024-08-19 13:58:54', '2024-08-19 13:58:54'),
('c91d3ea6-86ee-418c-b697-1dd107bb5a53', '8df96972-5945-49bc-bae0-ca6fa02dae37', 15000, NULL, '2024-08-19 07:38:49', '2024-08-19 07:38:49'),
('d0cff5dc-c717-4c2a-a133-d328a1a458f5', '4387af16-49ef-4ba3-84cb-d17b62083a4d', 5000, NULL, '2024-08-19 14:00:10', '2024-08-19 14:00:10'),
('d5cd21de-0feb-482d-b56f-f9cfa1d48862', 'd9882c91-00ae-48a3-9b05-b2ce2b889a9e', 5000, NULL, '2024-08-19 13:08:27', '2024-08-19 13:08:27'),
('e9d1df16-8227-4ddc-8c00-7932bc15d8ab', '381e98c5-e25a-4ad0-9521-8e5e975a999f', 4000, NULL, '2024-08-18 10:50:01', '2024-08-18 10:50:01'),
('f2bd318d-707c-4a75-aeab-a5b73c1fda87', '8df96972-5945-49bc-bae0-ca6fa02dae37', 4000, NULL, '2024-08-19 07:38:49', '2024-08-19 07:38:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2024-08-18 10:45:40', '2024-08-18 10:45:40'),
(2, 'Kasir', 'web', '2024-08-21 03:58:20', '2024-08-21 03:58:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(28, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cashier_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cash` bigint(20) NOT NULL,
  `change` bigint(20) NOT NULL,
  `discount` bigint(20) NOT NULL,
  `grand_total` bigint(20) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `cashier_id`, `customer_id`, `invoice`, `cash`, `change`, `discount`, `grand_total`, `deleted_at`, `created_at`, `updated_at`) VALUES
('200e7dc9-e2ec-4c6e-8fde-5228cbd9574b', 1, '0b95e5f7-df20-400e-b5d5-a20a8a5997df', 'TRX-Z3LZ6925A8', 500, -500, 0, 1000, NULL, '2024-08-19 13:06:40', '2024-08-19 13:06:40'),
('381e98c5-e25a-4ad0-9521-8e5e975a999f', 1, '0b95e5f7-df20-400e-b5d5-a20a8a5997df', 'TRX-521F3BS6F1', 0, 0, 5000, 45000, NULL, '2024-08-18 10:50:01', '2024-08-18 10:50:01'),
('4387af16-49ef-4ba3-84cb-d17b62083a4d', 1, '0b95e5f7-df20-400e-b5d5-a20a8a5997df', 'TRX-920896FU8L', -10000, -30000, 0, 20000, NULL, '2024-08-19 14:00:10', '2024-08-19 14:00:10'),
('67982ac7-b78f-4c3e-bef0-bbb61f28a250', 1, '0b95e5f7-df20-400e-b5d5-a20a8a5997df', 'TRX-A4KTEXM528', -5000, -10000, 0, 5000, NULL, '2024-08-19 13:58:54', '2024-08-19 13:58:54'),
('8df96972-5945-49bc-bae0-ca6fa02dae37', 1, '0b95e5f7-df20-400e-b5d5-a20a8a5997df', 'TRX-IKST6DK3T9', 100000, 27000, 0, 73000, NULL, '2024-08-19 07:38:49', '2024-08-19 07:38:49'),
('d9882c91-00ae-48a3-9b05-b2ce2b889a9e', 1, '0b95e5f7-df20-400e-b5d5-a20a8a5997df', 'TRX-GT62MYON65', 10000, -10000, 0, 20000, NULL, '2024-08-19 13:08:27', '2024-08-19 13:08:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `price` bigint(20) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transaction_id`, `product_id`, `qty`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
('02a140a3-05fb-4455-abff-6546684ed794', 'd9882c91-00ae-48a3-9b05-b2ce2b889a9e', '04bbe8ac-ae30-4706-8127-1ebfade2df4e', 1, 20000, NULL, '2024-08-19 13:08:27', '2024-08-19 13:08:27'),
('518cd23e-0141-47d7-8019-03b5133b0e5d', '381e98c5-e25a-4ad0-9521-8e5e975a999f', '3ea01c66-5d54-4df7-98b7-18e486459ed1', 2, 10000, NULL, '2024-08-18 10:50:01', '2024-08-18 10:50:01'),
('58bb031b-61cf-46b8-953d-375ff63dbcf4', '8df96972-5945-49bc-bae0-ca6fa02dae37', '3ea01c66-5d54-4df7-98b7-18e486459ed1', 2, 10000, NULL, '2024-08-19 07:38:49', '2024-08-19 07:38:49'),
('5c90e627-c005-4de6-9ecc-2c7aa8f8cc98', '4387af16-49ef-4ba3-84cb-d17b62083a4d', '04bbe8ac-ae30-4706-8127-1ebfade2df4e', 1, 20000, NULL, '2024-08-19 14:00:10', '2024-08-19 14:00:10'),
('5e7b9600-4715-4654-bffe-a77f6b18aba3', '200e7dc9-e2ec-4c6e-8fde-5228cbd9574b', 'e6f98d74-9f8f-4499-ad34-a4747b525f8d', 1, 1000, NULL, '2024-08-19 13:06:40', '2024-08-19 13:06:40'),
('87ceb28e-5734-4ff1-a57c-0138f6465613', '67982ac7-b78f-4c3e-bef0-bbb61f28a250', '3ea01c66-5d54-4df7-98b7-18e486459ed1', 1, 5000, NULL, '2024-08-19 13:58:54', '2024-08-19 13:58:54'),
('c6f10508-f247-4577-a0bc-8a471561477f', '8df96972-5945-49bc-bae0-ca6fa02dae37', 'e6f98d74-9f8f-4499-ad34-a4747b525f8d', 3, 3000, NULL, '2024-08-19 07:38:49', '2024-08-19 07:38:49'),
('d1816cec-da8a-485e-8ee8-35851948fae2', '381e98c5-e25a-4ad0-9521-8e5e975a999f', '04bbe8ac-ae30-4706-8127-1ebfade2df4e', 2, 40000, NULL, '2024-08-18 10:50:01', '2024-08-18 10:50:01'),
('dc2642e7-5ee9-4135-a414-274b05c31800', '8df96972-5945-49bc-bae0-ca6fa02dae37', '04bbe8ac-ae30-4706-8127-1ebfade2df4e', 3, 60000, NULL, '2024-08-19 07:38:49', '2024-08-19 07:38:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@gmail.com', '$2y$10$EhUepl1AqK/yecj8LcETCuY7Dqzu4EW1awzxCGBTcEN3do1ZAggI6', '2024-08-18 10:45:40', '2024-08-18 10:45:40'),
(2, 'Kasir', 'kasir@gmail.com', '$2y$10$xMJZXMU634h4TQA/uE5eweENv9BLS5f.oiAHxE/aAN27yCMdjQ5uC', '2024-08-21 03:58:45', '2024-08-21 03:58:45');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_cashier_id_foreign` (`cashier_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `profits`
--
ALTER TABLE `profits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profits_transaction_id_foreign` (`transaction_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_cashier_id_foreign` (`cashier_id`),
  ADD KEY `transactions_customer_id_foreign` (`customer_id`);

--
-- Indeks untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_details_transaction_id_foreign` (`transaction_id`),
  ADD KEY `transaction_details_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_cashier_id_foreign` FOREIGN KEY (`cashier_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Ketidakleluasaan untuk tabel `profits`
--
ALTER TABLE `profits`
  ADD CONSTRAINT `profits_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`);

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_cashier_id_foreign` FOREIGN KEY (`cashier_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `transactions_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Ketidakleluasaan untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD CONSTRAINT `transaction_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `transaction_details_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
