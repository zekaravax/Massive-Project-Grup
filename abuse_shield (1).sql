-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2023 at 02:46 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abuse_shield`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `room` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `time` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `room`, `author`, `message`, `time`) VALUES
(1, 4, '123', 'aaa', 'Saya telah di bully oleh teman teman saya dari seminggu yang lalu hingga sekarang. saya sudah sering menghindar dan pernah  melawan, tetapi saya semakin di bully bahkan sampai di pukul. selain itu saya juga sering di palak oleh mereka.', '8:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_edukasi`
--

CREATE TABLE `tbl_edukasi` (
  `id` int(11) NOT NULL,
  `id_users` int(11) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_edukasi`
--

INSERT INTO `tbl_edukasi` (`id`, `id_users`, `judul`, `content`, `image`, `url`, `createdAt`, `updatedAt`) VALUES
(4, 1, 'Ciri-Ciri Penindasan yang Kasar dan Cara Mengatasinya!', 'Penting untuk mengenali bahaya perundungan yang sering kali tidak terlihat dan diabaikan oleh banyak orang. Padahal, hal ini mempengaruhi kesehatan mental seseorang lho. Ketika anda berada dalam situasi penindasan, Anda mungkin mengalami hal berikut...', '7098daf495688f96df64b3819febaa51.png', 'http://localhost:3000/images/7098daf495688f96df64b3819febaa51.png', '2023-12-15 01:44:46', '2023-12-15 01:44:46'),
(5, 1, 'Bagaimana cara menghindari penindasan yang kasar?', 'Seseorang yang mengalami penindasan akan mengalami dampak dari segi fisik hingga mental. Hal ini tentu saja sangat merugikan. Agar hal tersebut terhindar dari anda, ada tiga hal yang perlu anda perhatikan, yaitu bergabung dalam kelompok atau kegiatan positif.', '2ba266f6e68a153305b3517f22f27483.jpeg', 'http://localhost:3000/images/2ba266f6e68a153305b3517f22f27483.jpeg', '2023-12-15 01:49:48', '2023-12-15 01:49:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedbacks`
--

CREATE TABLE `tbl_feedbacks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `feedback` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelapor`
--

CREATE TABLE `tbl_pelapor` (
  `id` int(11) NOT NULL,
  `id_users` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `jenkel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `kelas` varchar(255) DEFAULT NULL,
  `jurusan` varchar(255) DEFAULT NULL,
  `judul_laporan` varchar(255) DEFAULT NULL,
  `isi_laporan` text DEFAULT NULL,
  `tanggal_kejadian` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pelapor`
--

INSERT INTO `tbl_pelapor` (`id`, `id_users`, `name`, `jenkel`, `email`, `no_hp`, `kelas`, `jurusan`, `judul_laporan`, `isi_laporan`, `tanggal_kejadian`, `image`, `url`, `created_at`) VALUES
(4, 1, 'Testing', 'Laki-Laki', 'testing@gmail.com', '089xxxxx', '4B', 'Informatika', 'Testing Dulu Edit', 'ini data testing', '2023-12-06', 'ce00f2705094b1176d93a80b9da2336d.jpg', 'http://localhost:3000/pelaporan/ce00f2705094b1176d93a80b9da2336d.jpg', '2023-12-14 03:10:11'),
(7, 4, 'Murid Testing', 'male', 'testing@gmail.com', '08966571818181', '4A', 'IT', 'Testing dulu gasi', 'isi', '2023-12-15', '58ecbc471bdb824dbc71a6bcd33a9073.jpg', 'http://localhost:3000/pelaporan/58ecbc471bdb824dbc71a6bcd33a9073.jpg', '2023-12-14 23:02:03'),
(8, 4, 'test', 'male', 'kiravelnote@gmail.com', '08966571818181', '4A', 'IT', 'Testing dulu gasi', 'aaa', '2023-12-27', 'ebd2fadc9d0208e93c0403939719a7a4.jpg', 'http://localhost:3000/pelaporan/ebd2fadc9d0208e93c0403939719a7a4.jpg', '2023-12-14 23:43:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `no_telp` varchar(255) DEFAULT NULL,
  `jk` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `role` varchar(255) DEFAULT 'murid',
  `refresh_token` text DEFAULT NULL,
  `room` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `username`, `email`, `password`, `no_telp`, `jk`, `image`, `url`, `bio`, `role`, `refresh_token`, `room`) VALUES
(1, 'GuruAdmin', 'guru', 'guru@gmail.com', '$2b$10$TXKt67tlLmEHZkHNwQvhlOpZZjQo0D0ztXv.81Ot5dsbQ5FJbaGca', '089xxxx', 'laki', '2c2f1fc782af95499b4a90ef899250ca.jpg', 'http://localhost:3000/profile/2c2f1fc782af95499b4a90ef899250ca.jpg', '0', 'guru', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsIm5hbWUiOiJHdXJ1QWRtaW4iLCJ1c2VybmFtZSI6Imd1cnUiLCJlbWFpbCI6Imd1cnVAZ21haWwuY29tIiwibm9fdGVscCI6IjA4OXh4eHgiLCJpbWFnZSI6IjJjMmYxZmM3ODJhZjk1NDk5YjRhOTBlZjg5OTI1MGNhLmpwZyIsImprIjoibGFraSIsInJvbGUiOiJndXJ1IiwiaWF0IjoxNzAyNzc3NTY5LCJleHAiOjE3MDI4NjM5Njl9.MSHU9Fe_x3YKB7gJzEVLO_pyfvaGWJSWDBWR6E9gF88', '123'),
(4, 'aaa', 'murid', 'kiravelnote@gmail.com', '$2b$10$jTD8Jt9BwsgtsAbCU1pmAeZWNvh9k24ut9MsuRRuh3khlR95myGJG', '08999812112', 'male', 'aee6adef085a77dfa4708f3fd4a1ffb5.png', 'http://localhost:3000/profile/aee6adef085a77dfa4708f3fd4a1ffb5.png', 'aaw', 'murid', NULL, '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `constraint_message_foreign_key` (`user_id`);

--
-- Indexes for table `tbl_edukasi`
--
ALTER TABLE `tbl_edukasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `constraint_edukasi_foreign_key` (`id_users`);

--
-- Indexes for table `tbl_feedbacks`
--
ALTER TABLE `tbl_feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_pelapor`
--
ALTER TABLE `tbl_pelapor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_users` (`id_users`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_edukasi`
--
ALTER TABLE `tbl_edukasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_feedbacks`
--
ALTER TABLE `tbl_feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_pelapor`
--
ALTER TABLE `tbl_pelapor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `constraint_message_foreign_key` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`);

--
-- Constraints for table `tbl_edukasi`
--
ALTER TABLE `tbl_edukasi`
  ADD CONSTRAINT `constraint_edukasi_foreign_key` FOREIGN KEY (`id_users`) REFERENCES `tbl_users` (`id`);

--
-- Constraints for table `tbl_feedbacks`
--
ALTER TABLE `tbl_feedbacks`
  ADD CONSTRAINT `tbl_feedbacks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`);

--
-- Constraints for table `tbl_pelapor`
--
ALTER TABLE `tbl_pelapor`
  ADD CONSTRAINT `tbl_pelapor_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `tbl_users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
