-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 24, 2019 lúc 03:00 PM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `Chunguyendu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `luat`
--

CREATE TABLE `luat` (
  `ID` int(2) NOT NULL,
  `dieu` varchar(99) CHARACTER SET ucs2 COLLATE ucs2_vietnamese_ci NOT NULL,
  `tieude` varchar(999) CHARACTER SET ucs2 COLLATE ucs2_vietnamese_ci NOT NULL,
  `noidung` varchar(999) CHARACTER SET ucs2 COLLATE ucs2_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `luat`
--

INSERT INTO `luat` (`ID`, `dieu`, `tieude`, `noidung`) VALUES
(1, 'Điều 1', 'Nhiệm vụ của Bộ luật hình sự', 'Bộ luật hình sự có nhiệm vụ bảo vệ chủ quyền quốc gia, an ninh của đất nước, bảo vệ chế độ xã hội chủ nghĩa, quyền con người, quyền công dân, bảo vệ quyền bình đẳng giữa đồng bào các dân tộc, bảo vệ lợi ích của Nhà nước, tổ chức, bảo vệ trật tự pháp luật, chống mọi hành vi phạm tội; giáo dục mọi người ý thức tuân theo pháp luật, phòng ngừa và đấu tranh chống tội phạm.\r\n\r\nBộ luật này quy định về tội phạm và hình phạt.'),
(2, 'Điều 2.', 'Cơ sở của trách nhiệm hình sự', '1. Chỉ người nào phạm một tội đã được Bộ luật hình sự quy định mới phải chịu trách nhiệm hình sự.\r\n\r\n2. Chỉ pháp nhân thương mại nào phạm một tội đã được quy định tại Điều 76 của Bộ luật này mới phải chịu trách nhiệm hình sự.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
