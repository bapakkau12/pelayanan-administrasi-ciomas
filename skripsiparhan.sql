-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2025 at 11:26 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skripsiparhan`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota_keluarga`
--

CREATE TABLE `anggota_keluarga` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kk_id` bigint(20) UNSIGNED NOT NULL,
  `nik` bigint(20) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama` varchar(255) NOT NULL,
  `pendidikan` varchar(255) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `status_pernikahan` varchar(255) NOT NULL,
  `status_hubungan` varchar(255) NOT NULL,
  `kewarganegaraan` varchar(255) NOT NULL,
  `no_paspor` varchar(255) DEFAULT NULL,
  `no_kitas` varchar(255) DEFAULT NULL,
  `nama_ayah` varchar(255) DEFAULT NULL,
  `nama_ibu` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggota_keluarga`
--

INSERT INTO `anggota_keluarga` (`id`, `kk_id`, `nik`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `agama`, `pendidikan`, `pekerjaan`, `status_pernikahan`, `status_hubungan`, `kewarganegaraan`, `no_paspor`, `no_kitas`, `nama_ayah`, `nama_ibu`, `created_at`, `updated_at`) VALUES
(1, 1, 1671170402010001, 'M.Parhan', 'laki-laki', 'Palembang', '2001-02-04', 'Islam', 'SMA Sederajat', 'mahasiswa', 'Belum Nikah', 'Anak', 'WNI', '0', NULL, 'imron', 'paulina', '2025-02-07 02:00:58', '2025-02-07 02:00:58');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `kartu_keluarga`
--

CREATE TABLE `kartu_keluarga` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kepala_keluarga` varchar(255) NOT NULL,
  `no_kk` bigint(20) NOT NULL,
  `alamat` text DEFAULT NULL,
  `rt_rw` varchar(255) DEFAULT NULL,
  `desa` varchar(255) DEFAULT 'Ciomas',
  `kecamatan` varchar(255) DEFAULT 'Panjalu',
  `kabupaten` varchar(255) DEFAULT 'Ciamis',
  `kode_pos` int(11) DEFAULT 46264,
  `provinsi` varchar(255) DEFAULT 'Jawa Barat',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kartu_keluarga`
--

INSERT INTO `kartu_keluarga` (`id`, `kepala_keluarga`, `no_kk`, `alamat`, `rt_rw`, `desa`, `kecamatan`, `kabupaten`, `kode_pos`, `provinsi`, `created_at`, `updated_at`) VALUES
(1, 'imron', 123456789, 'jl.aiptu awahab', '04/02', 'Ciomas', 'Panjalu', 'Ciamis', 46264, 'Jawa Barat', '2025-02-07 01:58:00', '2025-02-07 01:58:00');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`id`, `title`, `slug`, `image`, `content`, `created_at`, `updated_at`) VALUES
(1, 'BANSOS', 'bansos', 'i9BArc54GJEb8zqf5nFgQPB6PbwfbeygIrtHnrcJ.pdf', 'Segera datang kekantor desa', '2025-02-08 02:15:10', '2025-02-08 02:15:10'),
(2, 'PENGAJIAN', 'pengajian', 'pmoZF7Xl3apzs85TbI8a0zLiMYsHPXz0QAvod7qJ.png', 'HAHAHAAHAHHAHA', '2025-02-08 02:16:01', '2025-02-08 02:16:01');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(21, '2014_10_12_000000_create_users_table', 1),
(22, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2023_07_08_131246_create_kartu_keluarga_table', 1),
(26, '2023_07_08_132130_create_anggota_keluarga_table', 1),
(27, '2023_07_11_131437_create_pengajuan_kk_table', 1),
(28, '2023_07_11_131450_create_pengajuan_ktp_table', 1),
(29, '2023_07_11_131514_create_pengajuan_sktm_table', 1),
(30, '2023_07_11_131527_create_pengajuan_akta_table', 1),
(31, '2023_07_11_131537_create_pengajuan_skm_table', 1),
(32, '2023_07_11_131550_create_pengajuan_skl_table', 1),
(33, '2023_07_11_131558_create_pengajuan_skw_table', 1),
(34, '2023_07_11_131615_create_pengajuan_skkb_table', 1),
(35, '2023_07_11_131629_create_pengajuan_skbm_table', 1),
(36, '2023_07_11_131642_create_pengajuan_skjd_table', 1),
(37, '2023_07_16_101352_create_surat_keluar_table', 1),
(38, '2023_07_16_101435_create_penolakan_table', 1),
(39, '2023_07_19_235018_create_pengaduan_table', 1),
(40, '2023_07_26_114731_create_kegiatan_table', 1),
(43, '2025_02_12_080002_create_pengajuan_skd_table', 2),
(45, '2025_02_12_091538_create_pengajuan_skik_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `telp` varchar(255) NOT NULL,
  `is_read` varchar(255) DEFAULT 'false',
  `pesan` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengaduan`
--

INSERT INTO `pengaduan` (`id`, `nik`, `nama`, `judul`, `telp`, `is_read`, `pesan`, `image`, `created_at`, `updated_at`) VALUES
(2, '1671170402010001', 'M.Parhan', 'Pengaduan jalan rusak', '082269035048', 'true', 'jl.desa didekat rumah pak amin rusak parah, banyak lobang besar dan belum dapat perhatian oleh pemerintah sekitar tolong segera diperbaiki', 'jDalcBDufcMPLfRgHev5HF4pBOQknfgy7Aq4MvIa.png', '2025-02-11 05:52:38', '2025-02-11 05:53:11');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_akta`
--

CREATE TABLE `pengajuan_akta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_id` bigint(20) UNSIGNED NOT NULL,
  `no_pengajuan` varchar(255) NOT NULL,
  `pengantar_rw` varchar(255) NOT NULL,
  `nama_anak` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` varchar(255) NOT NULL,
  `surat_bidan` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT 'proses',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengajuan_akta`
--

INSERT INTO `pengajuan_akta` (`id`, `anggota_id`, `no_pengajuan`, `pengantar_rw`, `nama_anak`, `tempat_lahir`, `tanggal_lahir`, `surat_bidan`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '96d74187-a2d7-4f2d-b9a6-9ed4b6bc1dff', 'gZZeinWXgvWU5kdMxIY074s1Sh2iuhUXzO8BH5uT.png', 'AFIF', 'Cinta kasih', '2023-02-14', 'NUHFcL7a4xZF9tRqdnvkqpAC2MPrQBv8zYPAFD5B.png', 'disetujui', '2025-02-08 02:20:33', '2025-02-08 02:21:39');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_kk`
--

CREATE TABLE `pengajuan_kk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_id` bigint(20) UNSIGNED NOT NULL,
  `no_pengajuan` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `pengantar_rw` varchar(255) NOT NULL,
  `kk` varchar(255) NOT NULL,
  `ktp` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT 'proses',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_ktp`
--

CREATE TABLE `pengajuan_ktp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_id` bigint(20) UNSIGNED NOT NULL,
  `no_pengajuan` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `pengantar_rw` varchar(255) NOT NULL,
  `kk` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT 'proses',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengajuan_ktp`
--

INSERT INTO `pengajuan_ktp` (`id`, `anggota_id`, `no_pengajuan`, `jenis`, `pengantar_rw`, `kk`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '9879103d-a1c6-4e29-9172-e297dc4d57ad', 'baru', 'JePjkQBcjyd8XcOdAZFltZJ9lI2CyRiCFK0Cml8k.png', 'ADVTwMsUP6BHEubcPqzN7JLuBxkQ77dLnzJi6B4G.png', 'disetujui', '2025-02-07 02:07:52', '2025-02-07 02:09:33'),
(2, 1, '7906c8ac-92d8-45ff-a122-e1544b45a345', 'baru', 'm2i0VgIYicZgJQfp7XJtzbzepO6RuZ6XlVqM2ZI1.png', '3W1JV6gI3MptBXTfxELrWACOyCSmkbqQJeAe7eXi.png', 'ditolak', '2025-02-07 02:15:32', '2025-02-07 02:16:05');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_skbm`
--

CREATE TABLE `pengajuan_skbm` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_id` bigint(20) UNSIGNED NOT NULL,
  `no_pengajuan` varchar(255) NOT NULL,
  `pengantar_rw` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT 'proses',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengajuan_skbm`
--

INSERT INTO `pengajuan_skbm` (`id`, `anggota_id`, `no_pengajuan`, `pengantar_rw`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '2301631b-3794-48cd-b824-ed9ced0d3164', 'm5pBHkmLj0kyfdEO2ww3IuGHDFjiDfvBxhwcqS8u.pdf', 'proses', '2025-02-08 04:42:07', '2025-02-08 04:42:07');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_skd`
--

CREATE TABLE `pengajuan_skd` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_id` bigint(20) UNSIGNED NOT NULL,
  `no_pengajuan` varchar(255) NOT NULL,
  `kk` varchar(255) NOT NULL,
  `ktp` varchar(255) NOT NULL,
  `pengantar_rw` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT 'proses',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengajuan_skd`
--

INSERT INTO `pengajuan_skd` (`id`, `anggota_id`, `no_pengajuan`, `kk`, `ktp`, `pengantar_rw`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'ec6298cd-2593-4f62-93b9-31134a943754', 'C:\\xampp\\tmp\\php87A6.tmp', 'C:\\xampp\\tmp\\php87B6.tmp', 'v71iXLMw3yHjfyAURSKPeX0Hpzv1XzdV82y1rxud.pdf', 'proses', '2025-02-12 02:02:53', '2025-02-12 02:02:53');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_skik`
--

CREATE TABLE `pengajuan_skik` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_id` bigint(20) UNSIGNED NOT NULL,
  `no_pengajuan` varchar(255) NOT NULL,
  `pengantar_rw` varchar(255) NOT NULL,
  `ktp` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT 'proses',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengajuan_skik`
--

INSERT INTO `pengajuan_skik` (`id`, `anggota_id`, `no_pengajuan`, `pengantar_rw`, `ktp`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '6b86c66f-d537-444f-a685-cb05b9f2d34f', 'TSOjR79m2NpWO4QWD3lCthZVcYbq3Q435uNqfBKy.pdf', 'C:\\xampp\\tmp\\php6116.tmp', 'disetujui', '2025-02-12 03:16:58', '2025-02-12 03:17:45');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_skjd`
--

CREATE TABLE `pengajuan_skjd` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_id` bigint(20) UNSIGNED NOT NULL,
  `no_pengajuan` varchar(255) NOT NULL,
  `pengantar_rw` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `cerai` varchar(255) NOT NULL,
  `nama_pasangan` varchar(255) NOT NULL,
  `nik` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT 'proses',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_skkb`
--

CREATE TABLE `pengajuan_skkb` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_id` bigint(20) UNSIGNED NOT NULL,
  `no_pengajuan` varchar(255) NOT NULL,
  `pengantar_rw` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT 'proses',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_skl`
--

CREATE TABLE `pengajuan_skl` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_id` bigint(20) UNSIGNED NOT NULL,
  `no_pengajuan` varchar(255) NOT NULL,
  `pengantar_rw` varchar(255) NOT NULL,
  `nama_anak` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` varchar(255) NOT NULL,
  `nama_ayah` varchar(255) NOT NULL,
  `nama_ibu` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT 'proses',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengajuan_skl`
--

INSERT INTO `pengajuan_skl` (`id`, `anggota_id`, `no_pengajuan`, `pengantar_rw`, `nama_anak`, `tempat_lahir`, `tanggal_lahir`, `nama_ayah`, `nama_ibu`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'ced6f1ff-82cb-49a5-b189-cf222a8e91b3', 'JmOwDGOESGSM7wgaowyc7o143nz2GSFbfoSYftYx.png', 'amir', 'cinta kasih', '2025-02-04', 'kemas', 'miju', 'disetujui', '2025-02-11 05:41:18', '2025-02-11 05:42:05');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_skm`
--

CREATE TABLE `pengajuan_skm` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_id` bigint(20) UNSIGNED NOT NULL,
  `no_pengajuan` varchar(255) NOT NULL,
  `pengantar_rw` varchar(255) NOT NULL,
  `nama_pasangan` varchar(255) NOT NULL,
  `nik` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT 'proses',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_sktm`
--

CREATE TABLE `pengajuan_sktm` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_id` bigint(20) UNSIGNED NOT NULL,
  `no_pengajuan` varchar(255) NOT NULL,
  `pengantar_rw` varchar(255) NOT NULL,
  `penghasilan` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT 'proses',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_skw`
--

CREATE TABLE `pengajuan_skw` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_id` bigint(20) UNSIGNED NOT NULL,
  `no_pengajuan` varchar(255) NOT NULL,
  `pengantar_rw` varchar(255) NOT NULL,
  `nama_anak` varchar(255) NOT NULL,
  `nama_wali` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT 'proses',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penolakan`
--

CREATE TABLE `penolakan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `surat_id` bigint(20) UNSIGNED NOT NULL,
  `no_pengajuan` varchar(255) NOT NULL,
  `pesan` text NOT NULL,
  `jenis_surat` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penolakan`
--

INSERT INTO `penolakan` (`id`, `surat_id`, `no_pengajuan`, `pesan`, `jenis_surat`, `created_at`, `updated_at`) VALUES
(1, 2, '7906c8ac-92d8-45ff-a122-e1544b45a345', 'jelek', 'Pengajuan KTP', '2025-02-07 02:16:05', '2025-02-07 02:16:05');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `surat_keluar`
--

CREATE TABLE `surat_keluar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `surat_id` bigint(20) UNSIGNED NOT NULL,
  `no_pengajuan` varchar(255) NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `jenis_surat` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surat_keluar`
--

INSERT INTO `surat_keluar` (`id`, `surat_id`, `no_pengajuan`, `no_surat`, `jenis_surat`, `file`, `created_at`, `updated_at`) VALUES
(1, 1, '9879103d-a1c6-4e29-9172-e297dc4d57ad', '01', 'Pengajuan KTP', '36PlUJffB7AmVSslzD1PvtTY9Le6tjAWVVwWcPtv.pdf', '2025-02-07 02:09:33', '2025-02-07 02:09:33'),
(2, 1, '96d74187-a2d7-4f2d-b9a6-9ed4b6bc1dff', '02', 'Pengajuan Akta', 'Ws5VzNLpRQLgZ2aZUejOSJhBAu95t7sS114qxlec.pdf', '2025-02-08 02:21:39', '2025-02-08 02:21:39'),
(3, 1, 'ced6f1ff-82cb-49a5-b189-cf222a8e91b3', '03', 'Pengajuan SKL', 'vJW0UMoj65Dxz9joIORdLTTqQNC5XVPQzFeJyq4w.pdf', '2025-02-11 05:42:05', '2025-02-11 05:42:05'),
(4, 1, '6b86c66f-d537-444f-a685-cb05b9f2d34f', '04', 'Pengajuan SKIK', 'xgDAFRXuF8TfcjfMXox8R6y1YwubRn3liIi4GegV.pdf', '2025-02-12 03:17:45', '2025-02-12 03:17:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` enum('admin','viewer') NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Admin Desa', 'admin', 'admin', '$2y$10$uDm5Cs9jI2k0tPLhU/puHuEsNTDGYpKcHnBCYgqtbGSuhUweXkwdu', '2025-02-07 01:51:50', '2025-02-07 01:51:50'),
(2, 'Pengunjung', 'viewer', 'viewer', '$2y$10$wEZYICrdTFRBe5AItP/a0ODziy87p7f1rWWHifesSuMIEMxmfD6l6', '2025-02-07 01:51:51', '2025-02-07 01:51:51'),
(4, 'M.Parhan', 'viewer', 'parhan', '$2y$10$URPMXZheVRWE8Enp5aaHgOvb5F29r/zpRmwLcAXZVRPNJTXjn5l1y', '2025-02-07 02:03:26', '2025-02-07 02:03:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota_keluarga`
--
ALTER TABLE `anggota_keluarga`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `anggota_keluarga_nik_unique` (`nik`),
  ADD KEY `anggota_keluarga_kk_id_foreign` (`kk_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kartu_keluarga`
--
ALTER TABLE `kartu_keluarga`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kartu_keluarga_no_kk_unique` (`no_kk`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengajuan_akta`
--
ALTER TABLE `pengajuan_akta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pengajuan_akta_no_pengajuan_unique` (`no_pengajuan`),
  ADD KEY `pengajuan_akta_anggota_id_foreign` (`anggota_id`);

--
-- Indexes for table `pengajuan_kk`
--
ALTER TABLE `pengajuan_kk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pengajuan_kk_no_pengajuan_unique` (`no_pengajuan`),
  ADD KEY `pengajuan_kk_anggota_id_foreign` (`anggota_id`);

--
-- Indexes for table `pengajuan_ktp`
--
ALTER TABLE `pengajuan_ktp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pengajuan_ktp_no_pengajuan_unique` (`no_pengajuan`),
  ADD KEY `pengajuan_ktp_anggota_id_foreign` (`anggota_id`);

--
-- Indexes for table `pengajuan_skbm`
--
ALTER TABLE `pengajuan_skbm`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pengajuan_skbm_no_pengajuan_unique` (`no_pengajuan`),
  ADD KEY `pengajuan_skbm_anggota_id_foreign` (`anggota_id`);

--
-- Indexes for table `pengajuan_skd`
--
ALTER TABLE `pengajuan_skd`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pengajuan_skd_no_pengajuan_unique` (`no_pengajuan`),
  ADD KEY `pengajuan_skd_anggota_id_foreign` (`anggota_id`);

--
-- Indexes for table `pengajuan_skik`
--
ALTER TABLE `pengajuan_skik`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pengajuan_skik_no_pengajuan_unique` (`no_pengajuan`),
  ADD KEY `pengajuan_skik_anggota_id_foreign` (`anggota_id`);

--
-- Indexes for table `pengajuan_skjd`
--
ALTER TABLE `pengajuan_skjd`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pengajuan_skjd_no_pengajuan_unique` (`no_pengajuan`),
  ADD KEY `pengajuan_skjd_anggota_id_foreign` (`anggota_id`);

--
-- Indexes for table `pengajuan_skkb`
--
ALTER TABLE `pengajuan_skkb`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pengajuan_skkb_no_pengajuan_unique` (`no_pengajuan`),
  ADD KEY `pengajuan_skkb_anggota_id_foreign` (`anggota_id`);

--
-- Indexes for table `pengajuan_skl`
--
ALTER TABLE `pengajuan_skl`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pengajuan_skl_no_pengajuan_unique` (`no_pengajuan`),
  ADD KEY `pengajuan_skl_anggota_id_foreign` (`anggota_id`);

--
-- Indexes for table `pengajuan_skm`
--
ALTER TABLE `pengajuan_skm`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pengajuan_skm_no_pengajuan_unique` (`no_pengajuan`),
  ADD KEY `pengajuan_skm_anggota_id_foreign` (`anggota_id`);

--
-- Indexes for table `pengajuan_sktm`
--
ALTER TABLE `pengajuan_sktm`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pengajuan_sktm_no_pengajuan_unique` (`no_pengajuan`),
  ADD KEY `pengajuan_sktm_anggota_id_foreign` (`anggota_id`);

--
-- Indexes for table `pengajuan_skw`
--
ALTER TABLE `pengajuan_skw`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pengajuan_skw_no_pengajuan_unique` (`no_pengajuan`),
  ADD KEY `pengajuan_skw_anggota_id_foreign` (`anggota_id`);

--
-- Indexes for table `penolakan`
--
ALTER TABLE `penolakan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota_keluarga`
--
ALTER TABLE `anggota_keluarga`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kartu_keluarga`
--
ALTER TABLE `kartu_keluarga`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengajuan_akta`
--
ALTER TABLE `pengajuan_akta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengajuan_kk`
--
ALTER TABLE `pengajuan_kk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengajuan_ktp`
--
ALTER TABLE `pengajuan_ktp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengajuan_skbm`
--
ALTER TABLE `pengajuan_skbm`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengajuan_skd`
--
ALTER TABLE `pengajuan_skd`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengajuan_skik`
--
ALTER TABLE `pengajuan_skik`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengajuan_skjd`
--
ALTER TABLE `pengajuan_skjd`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengajuan_skkb`
--
ALTER TABLE `pengajuan_skkb`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengajuan_skl`
--
ALTER TABLE `pengajuan_skl`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengajuan_skm`
--
ALTER TABLE `pengajuan_skm`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengajuan_sktm`
--
ALTER TABLE `pengajuan_sktm`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengajuan_skw`
--
ALTER TABLE `pengajuan_skw`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penolakan`
--
ALTER TABLE `penolakan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anggota_keluarga`
--
ALTER TABLE `anggota_keluarga`
  ADD CONSTRAINT `anggota_keluarga_kk_id_foreign` FOREIGN KEY (`kk_id`) REFERENCES `kartu_keluarga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengajuan_akta`
--
ALTER TABLE `pengajuan_akta`
  ADD CONSTRAINT `pengajuan_akta_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggota_keluarga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengajuan_kk`
--
ALTER TABLE `pengajuan_kk`
  ADD CONSTRAINT `pengajuan_kk_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggota_keluarga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengajuan_ktp`
--
ALTER TABLE `pengajuan_ktp`
  ADD CONSTRAINT `pengajuan_ktp_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggota_keluarga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengajuan_skbm`
--
ALTER TABLE `pengajuan_skbm`
  ADD CONSTRAINT `pengajuan_skbm_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggota_keluarga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengajuan_skd`
--
ALTER TABLE `pengajuan_skd`
  ADD CONSTRAINT `pengajuan_skd_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggota_keluarga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengajuan_skik`
--
ALTER TABLE `pengajuan_skik`
  ADD CONSTRAINT `pengajuan_skik_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggota_keluarga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengajuan_skjd`
--
ALTER TABLE `pengajuan_skjd`
  ADD CONSTRAINT `pengajuan_skjd_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggota_keluarga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengajuan_skkb`
--
ALTER TABLE `pengajuan_skkb`
  ADD CONSTRAINT `pengajuan_skkb_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggota_keluarga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengajuan_skl`
--
ALTER TABLE `pengajuan_skl`
  ADD CONSTRAINT `pengajuan_skl_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggota_keluarga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengajuan_skm`
--
ALTER TABLE `pengajuan_skm`
  ADD CONSTRAINT `pengajuan_skm_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggota_keluarga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengajuan_sktm`
--
ALTER TABLE `pengajuan_sktm`
  ADD CONSTRAINT `pengajuan_sktm_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggota_keluarga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengajuan_skw`
--
ALTER TABLE `pengajuan_skw`
  ADD CONSTRAINT `pengajuan_skw_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggota_keluarga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
