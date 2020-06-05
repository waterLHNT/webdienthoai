-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th6 05, 2020 lúc 03:29 AM
-- Phiên bản máy phục vụ: 10.4.10-MariaDB
-- Phiên bản PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webdienthoai`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

DROP TABLE IF EXISTS `chitietdonhang`;
CREATE TABLE IF NOT EXISTS `chitietdonhang` (
  `madongho` int(50) NOT NULL,
  `madonhang` varchar(50) NOT NULL,
  `giaban` float NOT NULL,
  `soluong` int(11) NOT NULL,
  `khuyenmai` varchar(50) NOT NULL,
  `tongtien` float NOT NULL,
  `trangthaithanhtoan` varchar(50) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`madongho`),
  UNIQUE KEY `madonhang` (`madonhang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

DROP TABLE IF EXISTS `chitiethoadon`;
CREATE TABLE IF NOT EXISTS `chitiethoadon` (
  `mahd` varchar(100) NOT NULL,
  `soluong` tinyint(3) UNSIGNED NOT NULL,
  `gia` float NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `madongho` int(15) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`mahd`),
  UNIQUE KEY `madongho` (`madongho`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietkhuyenmai`
--

DROP TABLE IF EXISTS `chitietkhuyenmai`;
CREATE TABLE IF NOT EXISTS `chitietkhuyenmai` (
  `mactkm` int(11) NOT NULL AUTO_INCREMENT,
  `giakhuyenmai` float NOT NULL,
  `ngayketthuc` datetime NOT NULL,
  `motact` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`mactkm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietsp`
--

DROP TABLE IF EXISTS `chitietsp`;
CREATE TABLE IF NOT EXISTS `chitietsp` (
  `mactsp` varchar(20) NOT NULL,
  `hieudienthoai` varchar(50) NOT NULL,
  `camera` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `chip` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `manhinh` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `baohanh` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `madienthoai` int(15) NOT NULL,
  PRIMARY KEY (`mactsp`),
  KEY `madienthoai` (`madienthoai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chitietsp`
--

INSERT INTO `chitietsp` (`mactsp`, `hieudienthoai`, `camera`, `chip`, `manhinh`, `baohanh`, `noidung`, `updated_at`, `created_at`, `madienthoai`) VALUES
('1', 'Apple', 'Camera trước	12 MP \r\ncamera   Camera sau	Dual Camera 12.0 MP Tính năng camera	Selfie ngược sáng HDR, Camera góc rộng, Nhận diện khuôn mặt, Zoom quang học, Chụp ảnh xóa phông, A.I Camera, HDR, Panorama, Chống rung quang học', 'Chip đồ họa (GPU)	Apple GPU 4 nhân', 'Màn hình rộng: 6.1 inches', '12 tháng', 'Thiết kế siêu mỏng\r\niPhone  với kích thước  158.2 x 77.9 x 7.3 mm mỏng nhẹ và thiết kế tương tự như bộ đôi iPhone 6s/6s Plus, tuy nhiên phần dải nhựa bắt sóng không cắt ngang mặt lưng như phiên bản cũ mà được chuyển sang phần cạnh trên của sản phẩm.\r\nPhím Home vật lý trên điện thoại cũng được thay thế bằng phím cảm ứng nhờ vào sự kết hợp Taptic Engine mới và liên kết với 3D Touch tiện lợi và đẹp mắt.\r\n\r\n', '2020-05-04 00:00:00', '2020-05-25 00:00:00', 1),
('10', 'Nokia', 'Camera trước	5MP\r\nCamera sau	13MP', 'Chip đồ họa (GPU)	Adreno 504', 'Màn hình: IPS LCD, 5.71\", HD+', '12 tháng', 'Hàng Chính Hãng là một sản phẩm thuộc phân khúc giá rẻ nhưng Nokia 3.2 vẫn mang trong mình một thiết kế nguyên khối sang trọng. Được làm từ nhựa Polycarbonate nhưng Nokia 3.2 trông vẫn bóng bẩy như những thiết bị kim loại nguyên khối. Bên cạnh đó, những chi tiết xung quanh máy được hoàn thiện tỉ mỉ hơn, nhờ đó Nokia 3.2 trông liền mạch hơn so với người anh 3.1 của mình.\r\n\r\nVề thiết kế thì Nokia 3.2 không có quá nhiều sự thay đổi so với các smartphone khác đang có mặt trên thị trường. Máy vẫn đi theo xu hướng màn hình giọt nước trên màn hình có kích thước 6.26 inch, tỉ lệ màn hình 19:9, độ phân giải HD+.', '2020-05-03 00:00:00', '2020-05-24 00:00:00', 6),
('11', 'Samsung', 'amera Sau : 13.0 MP + 2.0 MP\r\n\r\nCamera Trước: 5MP', 'Chip đồ họa (GPU)	Apple GPU 4 nhân', 'Màn hình: 6.2 inch HD+ PLS TFT LCD', '6 tháng', 'Màu sắc được chắt lọc từ sắc độ sáng tự nhiên.\r\nSự kết hợp của những dải màu nổi bật và sinh động. Với lớp kính cường lực Gorilla 6 bảo vệ vững chắc,\r\nvà chất liệu thủy tinh đánh bóng bắt sáng cao cấp sắc sảo kiến tạo nên ánh quang đậm chất đương đại.\r\nGiao diện đồng nhất cho bạn trải nghiệm mượt mà\r\nThao tác sử dụng  trực quan hơn nhờ Giao diện Đồng nhất, thân thiện với thói quen thường ngày, cho trải nghiệm Galaxy trở nên vô tận.\r\nCảm Biến Vân Tay Siêu Âm bảo mật tuyệt đối\r\nẨn sau màn hình là cảm biến siêu âm. Nhận diện các điểm lồi và lõm 3D trên vân tay bạn, cho hệ thống bảo mật hoàn toàn.', '2020-05-01 00:00:00', '2020-05-29 00:00:00', 9),
('12', 'Samsung', 'Camera sau: 12MP + 12MP + 64MP\r\n\r\nCamera trước: 10MP', 'Chip đồ họa (GPU)	Exynos 990 8 nhân', 'Loại/ Công nghệ màn hình	Dynamic AMOLED 2X', '15 thang', 'Giảm tối đa mức phát sáng xanh, màn hình hiển thị vẫn giữ màu sắc phong phú bao phủ 100%\r\nMàn hình hiển thị giảm thiểu tối đa ánh sáng xanh từ mức độ phân giải, cho việc sử dụng thiết bị di động không còn ảnh hưởng đến sức khoẻ của bạn.\r\nHoàn hảo cho mọi game thủ\r\nHệ thống tản nhiệt buồng hơi được thiết kế mỏng hơn, cải tiến trí tuệ nhân tạo cùng NPU nâng cao, \r\nmang đến cho bạn trải nghiệm chơi game mượt mà, giảm tuyệt đối độ trễ, giật khi trò chơi đang vào hồi gay cấn.\r\nÂm thanh thế hệ mới\r\nHệ thống loa và tai nghe Type-C mang đến được hỗ trợ bởi công nghệ Dolby Atmos,\r\n mang đến trải nghiệm âm thanh phong phú, chân thực và sống động chuẩn 3D.', '2020-05-01 00:00:00', '2020-05-27 00:00:00', 10),
('13', 'Oppo', 'Camera sau: Chính 12 MP & Phụ 8 MP, 2 MP, 2 MP\r\n\r\nCamera trước: 8 MP', 'Chip đồ họa (GPU)	Adreno 610', 'Màn hình: TFT, 6.5\", HD+', '12 thang', 'Thiết kế thời trang với màn hình giọt nước 6.2 inch\r\nĐiện Thoại OPPO A5s - Hàng Chính Hãng sở hữu ngôn ngữ thiết kế hiện đại với màn hình giọt nước giúp tối đa không gian màn hình. Các hình ảnh lộ diện gần đây cho thấy máy sẽ có 2 phiên bản màu sắc gồm đỏ và đen mang lại vẻ đẹp tinh tế, sang trọng và hợp thời trang. Bên cạnh đó, thiết bị còn có hệ thống cảm biến vân tay ở mặt lưng để tăng tính tiện lợi cho người dùng.\r\n\r\nMàn hình của OPPO A5s có kích thước 6.2 inch tương đương của Samsung Galaxy S10, cùng với đó là độ phân giải 720 x 1520 pixels cùng tấm nền IPS LCD cho hình ảnh hiển thị sắc nét, sống động. Các cạnh viền của máy khá mỏng khiến màn hình như tràn ra xung quanh, càng nâng cao trải nghiệm xem hình ảnh trên OPPO A5s.\r\n\r\nHiệu năng trên OPPO A5s ấn tượng cùng với chip Helio P35, 3GB RAM và ColorOS 5.1\r\nOPPO A5s mang sức mạnh đến từ con chip MediaTek Helio P35. Con chip này được tích hợp NeuroPilot - công nghệ khai thác kiến trúc tính toán AI nhằm mang lại hiệu năng tốt để hỗ trợ các ứng dụng AI như nhận diện khuôn mặt, nhận diện vật thể, giúp OPPO A5s trở thành chiếc điện thoải có khả năng selfie ảo diệu.\r\n\r\nSmartphone này chạy trên ColorOS 5.1 đơn giản, khá trơn tru và không bị cồng kềnh, mang lại sự ổn định trong quá trình sử dụng hàng ngày. Bên cạnh đó, với RAM 3 GB và bộ nhớ trong 32 GB có thể chạy một lúc nhiều ứng dụng, đây quả là dòng smartphone phù hợp với nhu cầu sử dụng của nhiều người. Nếu bạn có nhu cầu lưu trữ lớn hơn thì hoàn toàn có thể lắp thẻ nhớ MicroSD tối đa 256 GB để tăng không gian lưu trữ cho thiết bị.\r\n\r\nOPPO A5s sở hữu camera selfie đặc trưng của OPPO và camera sau 13 MP\r\nNhắc đến OPPO là nhắc đến những dòng smartphone với camera selfie đỉnh cao và OPPO A5s sẽ không làm bạn thất vọng. Camera trước của máy với độ phân giải 8 MP kèm những chế độ làm đẹp “trứ danh” của OPPO chắc chắn sẽ cho người dùng những tấm ảnh selfie ảo diệu, ưng ý. Với sự hỗ trợ của công nghệ AI, những bức hình của bạn sẽ đẹp tự nhiên, nhìn không bị giả.\r\n\r\nÄiá»n thoáº¡i smartphone OPPO A5s | Giao diá»n chá»¥p áº£nh\r\n\r\nBên cạnh camera selfie, OPPO A5s cũng được trang bị camera chính chất lượng ổn với độ phân giải chính 13 MP cùng cảm biến phụ 2 MP. Ưu điểm của camera này là khả năng lấy nét và chụp nhanh, giúp bạn không bỏ lỡ khoảnh khắc đáng nhớ nào. Bạn còn có thể chụp những tấm ảnh chân dung đẹp với chế độ chụp xóa phông của OPPO A5s.\r\n\r\nÄiá»n thoáº¡i smartphone OPPO A5s | AR Sticker\r\n\r\nOPPO A5s có dung lượng pin lớn 4.230 mAh bền bỉ cho cả ngày dài\r\nOPPO A5s sở hữu dung lượng pin lên đến 4.230 mAh. Với dung lượng pin này thiết bị cho thời gian sử dụng bền bỉ, bạn có thể sử dụng cho các nhu cầu cũng như giải trí thoải mái trong 1 ngày.\r\n\r\nNhư các dòng smartphone hiện nay, OPPO A5s được tích hợp tính năng tiết kiệm pin, đảm bảo cho người dùng thời gian sử dụng pin được tối ưu và lâu dài hơn. Do vậy, bạn có thể hoàn thành công việc và các tác vụ cùng OPPO A5s mà không lo bị hết pin sập nguồn giữa chừng.\r\n\r\n\r\n', '2020-05-01 00:00:00', '2020-05-27 00:00:00', 14),
('14', 'Oppo', 'Camera sau: Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP\r\n\r\nCamera trước: 16 MP', 'Chip đồ họa (GPU)	Mali-G72 MP3', 'Màn hình: AMOLED, 6.5\", Full HD+\r\n', '12 tháng', 'Dược khoác lên mình thiết kế khung viền kim loại cùng 2 mặt kính bóng bẩy. Mặt lưng được thiết kế theo hiệu ứng gradient đổi màu hứa hẹn sẽ khiến giới trẻ \"phát cuồng\". Các viền kính được làm bo cong ôm sát vào viền kim loại để cung cấp trải nghiệm cầm nắm thoải mái, dù điện thoại có kích thước khá lớn.', '2020-05-01 00:00:00', '2020-05-27 00:00:00', 12),
('15', 'Oppo', 'Camera sau: Chính 48 MP & Phụ 13 MP, 12 MP\r\n\r\nCamera trước: 32 MP\r\n', 'Chip đồ họa (GPU)	Adreno 650', 'Màn hình: AMOLED, 6.78\", Quad HD+ (2K+)', '15 thang', 'Hiệu năng mạnh mẽ\r\nMáy được trang bị con chip MediaTek Helio P70 8 nhân đủ để trải nghiệm các dòng game hot: PUBG, Liên quân ở mức cấu hình tầm trung và đặc biệt máy sở hữu tới 6 GB RAM. Với dung lượng RAM này bạn có thể tự tin sử dụng nhiều ứng dụng cùng lúc mà máy vẫn chuyển qua lại một cách mượt mà. Một điểm cộng khác là máy chạy sẵn Android 9.0 (Pie) ngay khi bán ra cho bạn nhiều trải nghiệm mới mẻ.\r\nsở hữu camera trước độ phân giải 16 MP. Chế độ làm đẹp bằng AI hay những công nghệ mà những chiếc smartphone Oppo đã mang đến thì bạn hoàn toàn có thể tự tin với khả năng selfie của Oppo F11 Pro. Camera trước có chức năng nhận diện khuôn mặt, chế độ làm đẹp, quay video Full HD, tự động lấy nét, Selfie ngược sáng HDR, sticker AR (biểu tượng thực tế ảo), quay video HD, cho bạn những bức hình sống động.', '2020-05-01 00:00:00', '2020-05-26 00:00:00', 13),
('16', 'Sony', 'Camera trước	5MP\r\nCamera sau	19MP', 'Chip đồ họa (GPU)	Apple GPU 4 nhân', 'Màn hình cảm ứng 5.7 inch, 16 triệu màu.\r\nĐộ phân giải màn hình Full HD 1080x2160 pixel', '6 tháng', 'Thiết kế sang trọng\r\nCải tiến hơn so với thiết kế truyền thống của dòng điện thoại Sony mang trên mình diện mạo mới - đẹp hơn, sang trọng hơn.', '2020-05-01 00:00:00', '2020-05-28 00:00:00', 16),
('17', 'Sony', 'Camera chính: 23 MP (f/ 2.0)\r\n\r\nCamera trước: 8MP (f/ 2.4)', 'Chip đồ họa (GPU)	Adreno 650', 'Màn hình LCD 5.2 inch, full HD 1080p', '15 thang', 'sẽ sớm có mặt ở thị trường Việt Nam theo đường xách tay và hàng chính hãng với mức giá sẽ khá hấp dẫn so với nhiều thế hệ đàn anh trước đó.\r\n\r\n sẽ bán ra với 4 phiên bản màu sắc gồm đen, xanh, bạc và hồng. Về tổng thể, Xperia XZ cho độ hoàn thiện cao, từng chi tiết nhỏ đều được chăm chút tỉ mỉ. Máy cũng hỗ trợ chống bụi, chống nước theo chuẩn IP68.', '2020-05-01 00:00:00', '2020-05-29 00:00:00', 17),
('18', 'Apple', 'Camera sau: 12 MP + 12 MP\r\nCamera trước: 12 MP, f/2.2', 'Chipset (CPU): Apple A13 Bionic 6 nhân', 'Màn hình rộng: 6.1 inches', '6 tháng', 'iPhone  với kích thước  158.2 x 77.9 x 7.3 mm mỏng nhẹ và thiết kế tương tự như bộ đôi iPhone 6s/6s Plus, tuy nhiên phần dải nhựa bắt sóng không cắt ngang mặt lưng như phiên bản cũ mà được chuyển sang phần cạnh trên của sản phẩm.\r\nPhím Home vật lý trên điện thoại cũng được thay thế bằng phím cảm ứng nhờ vào sự kết hợp Taptic Engine mới và liên kết với 3D Touch tiện lợi và đẹp mắt.\r\n\r\n', '2020-05-01 00:00:00', '2020-05-19 00:00:00', 18),
('19', 'Apple', 'Camera Trước/Sau: 12MP / 12MP + 12MP + 12MP', 'Chip đồ họa (GPU)	Adreno 650', 'Màn hình: OLED (Super Retina XDR), 6.5 inch, 2688 x 1242 pixels', '3 tháng', 'iPhone  với kích thước  158.2 x 77.9 x 7.3 mm mỏng nhẹ và thiết kế tương tự như bộ đôi iPhone 6s/6s Plus, tuy nhiên phần dải nhựa bắt sóng không cắt ngang mặt lưng như phiên bản cũ mà được chuyển sang phần cạnh trên của sản phẩm.\r\nPhím Home vật lý trên điện thoại cũng được thay thế bằng phím cảm ứng nhờ vào sự kết hợp Taptic Engine mới và liên kết với 3D Touch tiện lợi và đẹp mắt.\r\n', '2020-05-01 00:00:00', '2020-05-26 00:00:00', 19),
('2', 'Nokia', 'Camera trước	16 MPMP f/2.0 \r\n', 'Chip đồ họa (GPU)	Adreno 509', 'Camera sau	16 MP \r\nTính năng camera	\r\nQuay video Full HD, Tự động lấy nét', '12 tháng', 'Hiệu năng ổn định với con chip Qualcomm Snapdragon 429\r\nDù là sản phẩm phân khúc giá rẻ nhưng chiếc điện thoại vẫn được trang bị một hiệu năng tốt như đàn anh Nokia 4.2. Với con chip Qualcomm SDM429 Snapdragon 429 cùng 3 GB RAM và 32 GB bộ nhớ trong giúp máy có thể hoạt động ổn định với các tác vụ thông thường như lướt web, facebook, nghe nhạc, xem youtube,… Cùng với đó là còn chip GPU Adreno 504 giúp Nokia 3.2 có thể chiến tốt các game nhẹ trên thị trường.\r\n\r\nĐi kèm đó là một phiên bản hệ điều hành mới nhất trên thị trường Android 9.0 (Pie)/ Android One nên chắc chắn smartphone này sẽ là một trong những máy sẽ được nâng cấp lên các phiên bản tiếp theo nhanh nhất.\r\n\r\nPin 4.000 mAh cho thời gian sử dụng tốt\r\nVới việc sở hữu một dung lượng pin lớn lên đên 4.000 mAh nên dung lượng pin sẽ không còn là nỗi lo với những người sử dụng Nokia 3.2. Cụ thể, đối với những người có nhu cầu sử dụng trung bình với các tác vụ nghe, gọi, nhắn tin đơn giản thì máy sẽ cho bạn thời lượng pin sử dụng lên tới 2 ngày.', '2020-05-03 00:00:00', '2020-05-06 00:00:00', 7),
('20', 'Apple', 'Camera Trước/Sau: 7MP/ 12MP', 'Chip đồ họa (GPU)	Apple GPU 4 nhân', 'Màn hình: 5.5 inch, Full HD (1080 x 1920 pixels)\r\n', '6 tháng', 'Thiết kế siêu mỏng\r\niPhone  với kích thước  158.2 x 77.9 x 7.3 mm mỏng nhẹ và thiết kế tương tự như bộ đôi iPhone 6s/6s Plus, tuy nhiên phần dải nhựa bắt sóng không cắt ngang mặt lưng như phiên bản cũ mà được chuyển sang phần cạnh trên của sản phẩm.\r\nPhím Home vật lý trên điện thoại cũng được thay thế bằng phím cảm ứng nhờ vào sự kết hợp Taptic Engine mới và liên kết với 3D Touch tiện lợi và đẹp mắt.\r\n\r\n', '2020-05-01 00:00:00', '2020-05-25 00:00:00', 20),
('21', 'Apple', 'Camera trước: 12 MP, f/2.2\r\nCamera sau: 12 MP + 12 MP', 'Chipset (CPU): Apple A13 Bionic 6 nhân', 'Công nghệ màn hình: IPS LCD\r\nĐộ phân giải: 828 x 1792 pixels\r\nMàn hình rộng: 6.1 inches', '3 tháng', 'Thiết kế siêu mỏng\r\niPhone  với kích thước  158.2 x 77.9 x 7.3 mm mỏng nhẹ và thiết kế tương tự như bộ đôi iPhone 6s/6s Plus, tuy nhiên phần dải nhựa bắt sóng không cắt ngang mặt lưng như phiên bản cũ mà được chuyển sang phần cạnh trên của sản phẩm.\r\nPhím Home vật lý trên điện thoại cũng được thay thế bằng phím cảm ứng nhờ vào sự kết hợp Taptic Engine mới và liên kết với 3D Touch tiện lợi và đẹp mắt.', '2020-05-01 00:00:00', '2020-05-27 00:00:00', 21),
('22', 'Apple', 'Camera Trước/Sau: 7MP / 12MP', 'Chipset (CPU): Apple A13 Bionic 6 nhân', 'Màn hình: 6.1 inch LCD (828 x 1792), 324 ppi, 3D touch, True-tone\r\n', '12 tháng', 'Thiết kế siêu mỏng\r\niPhone  với kích thước  158.2 x 77.9 x 7.3 mm mỏng nhẹ và thiết kế tương tự như bộ đôi iPhone 6s/6s Plus, tuy nhiên phần dải nhựa bắt sóng không cắt ngang mặt lưng như phiên bản cũ mà được chuyển sang phần cạnh trên của sản phẩm.\r\nPhím Home vật lý trên điện thoại cũng được thay thế bằng phím cảm ứng nhờ vào sự kết hợp Taptic Engine mới và liên kết với 3D Touch tiện lợi và đẹp mắt.\r\n\r\n', '2020-05-01 00:00:00', '2020-05-26 00:00:00', 22),
('23', 'Samsung', 'Camera sau: 108 MP + 48 MP + 12 MP + TOF 3D\r\nCamera trước: 40 MP', 'CPU: Chip Exynos 990', 'Màn hình rộng: 6,9 inch\r\nĐộ phân giải: 1440 x 3200 pixel', '3 tháng', 'Màu sắc được chắt lọc từ sắc độ sáng tự nhiên.\r\nSự kết hợp của những dải màu nổi bật và sinh động. Với lớp kính cường lực Gorilla 6 bảo vệ vững chắc,\r\n và chất liệu thủy tinh đánh bóng bắt sáng cao cấp sắc sảo kiến tạo nên ánh quang đậm chất đương đại.\r\nGiao diện đồng nhất cho bạn trải nghiệm mượt mà\r\nThao tác sử dụng  trực quan hơn nhờ Giao diện Đồng nhất, thân thiện với thói quen thường ngày, cho trải nghiệm Galaxy trở nên vô tận.\r\nCảm Biến Vân Tay Siêu Âm bảo mật tuyệt đối\r\nẨn sau màn hình là cảm biến siêu âm. Nhận diện các điểm lồi và lõm 3D trên vân tay bạn, cho hệ thống bảo mật hoàn toàn.', '2020-05-01 00:00:00', '2020-05-26 00:00:00', 23),
('24', 'Samsung', 'Camera Sau: 12.0 MP + 16.0 MP + 12.0 MP + VGA\r\nCamera Trước: 10.0 MP', 'CPU: Exynos 9825 8 nhân 64-bit', 'Công nghệ màn hình: Dynamic AMOLED\r\nĐộ phân giải: 3040 x 1440 (Quad HD+)', '6 tháng', 'Giảm tối đa mức phát sáng xanh, màn hình hiển thị vẫn giữ màu sắc phong phú bao phủ 100%\r\nMàn hình hiển thị giảm thiểu tối đa ánh sáng xanh từ mức độ phân giải, cho việc sử dụng thiết bị di động không còn ảnh hưởng đến sức khoẻ của bạn.\r\nHoàn hảo cho mọi game thủ\r\nHệ thống tản nhiệt buồng hơi được thiết kế mỏng hơn, cải tiến trí tuệ nhân tạo cùng NPU nâng cao, \r\nmang đến cho bạn trải nghiệm chơi game mượt mà, giảm tuyệt đối độ trễ, giật khi trò chơi đang vào hồi gay cấn.\r\nÂm thanh thế hệ mới\r\nHệ thống loa và tai nghe Type-C mang đến được hỗ trợ bởi công nghệ Dolby Atmos,\r\n mang đến trải nghiệm âm thanh phong phú, chân thực và sống động chuẩn 3D.', '2020-05-01 00:00:00', '2020-05-27 00:00:00', 24),
('25', 'Samsung', 'Camera sau: Chính 64 MP & Phụ 12 MP, 5 MP, 5 MP\r\nCamera trước: 32 MP', 'CPU: Snapdragon 730 8 nhân', '\r\nMàn hình: Super AMOLED Plus, 6.7\", Full HD+', '3 tháng', 'Bộ 4 camera sau đỉnh cao - Đột phá với camera Macro chụp cận cảnh\r\nĐặc biệt là sự góp mặt của camera Macro, với cơ chế lấy nét tự động khi chụp cận cảnh từ khoảng cách 3 – 5 cm, mọi chi tiết nhỏ bé, \r\ndễ dàng bị bỏ qua giờ đây đã được phô diễn nét đẹp vốn có của chính nó một cách rõ nét và đầy tính nghệ thuật.\r\n Đóng vai trò chủ chốt trong việc ghi lại những hình ảnh chân thực và sắc nét – bất kể ngày hay đêm, camera chính của Galaxy A71 được nâng cấp lên tới 64MP, \r\nthông số cao nhất được áp dụng trên một chiếc smartphone của Samsung Galaxy tính tới thời điểm hiện tại.\r\nHiệu năng mạnh mẽ, lưu trữ thoải mái', '2020-05-01 00:00:00', '2020-05-31 00:00:00', 25),
('26', 'Samsung', 'Camera sau: Chính 64 MP & Phụ 12 MP, 5 MP, 5 MP\r\nCamera trước: 32 MP', 'Chip đồ họa (GPU)	Apple GPU 4 nhân', 'Màn hình: Super AMOLED Plus, 6.7\", Full HD+', '24 tháng', 'Hiệu năng mạnh mẽ, lưu trữ thoải mái\r\nSamsung Galaxy A71 sử dụng chip Qualcomm Snapdragon 730 8 nhân (Dual 2.2GHz + Hexa 1.8GHZ) giúp xử lí đa tác vụ mượt mà, đáp ứng tốt cho mọi nhu cầu kết nối, giải trí không ngừng nghỉ,\r\n cho phép người dùng lướt trọn ngày dài mà không bõ lỡ một khoảnh khắc cực đã nào.\r\n Dung lượng RAM 8 GB cho phép máy hoạt động trơn tru kể cả khi dùng nhiều ứng dụng cùng lúc, vừa đọc báo vừa nhắn tin, mở nhiều tab trình duyệt. \r\nHơn nữa, smartphone này còn được trang bị bộ nhớ trong lên tới 128GB và khe cắm thẻ nhớ ngoài 512GB, để người dùng có thể thoải mái lưu trữ mà không lo về dung lượng bộ nhớ. \r\n\r\nDung lượng pin ấn tượng 4.500mAh cùng sạc nhanh 25W\r\nGalaxy A71 sở hữu viên pin dung lượng ấn tượng 4.500mAh cùng công nghệ sạc nhanh siêu tốc 25W cho phép người dùng kết nối lâu hơn, \r\nmang đến sự tự do thoải mái nhờ khả năng sạc pin nhanh chóng. Chỉ cần 10 phút sạc pin, người dùng đã có ngay 3 giờ liên lạc, \r\n3 giờ xem phim và hơn 10 giờ nghe nhạc mà không bị gián đoạn. \r\n', '2020-05-02 00:00:00', '2020-05-26 00:00:00', 26),
('27', 'Oppo', 'Màn hình rộng 5.5\"\r\nMặt kính cảm ứng Kính cường lực Gorilla Glass 4', 'Chipset (hãng SX CPU)', 'Màn hìnhCông nghệ màn hình IPS LCD\r\nĐộ phân giải HD (720 x 1280 pixels)\r\nMàn hình rộng 5.5\"', '3 tháng', 'Thiết kế thời trang với màn hình giọt nước 6.2 inch\r\n - Hàng Chính Hãng sở hữu ngôn ngữ thiết kế hiện đại với màn hình giọt nước giúp tối đa không gian màn hình. Các hình ảnh lộ diện gần đây cho thấy máy sẽ có 2 phiên bản màu sắc gồm đỏ và đen mang lại vẻ đẹp tinh tế, sang trọng và hợp thời trang. Bên cạnh đó, thiết bị còn có hệ thống cảm biến vân tay ở mặt lưng để tăng tính tiện lợi cho người dùng.\r\n\r\nMàn hình kích thước 6.2 inch tương đương của Samsung Galaxy S10, cùng với đó là độ phân giải 720 x 1520 pixels cùng tấm nền IPS LCD cho hình ảnh hiển thị sắc nét, sống động. Các cạnh viền của máy khá mỏng khiến màn hình như tràn ra xung quanh, càng nâng cao trải nghiệm xem hình ảnh trên OPPO A5s.\r\n\r\nHiệu năng trên OPPO A5s ấn tượng cùng với chip Helio P35, 3GB RAM và ColorOS 5.1 mang sức mạnh đến từ con chip MediaTek Helio P35. Con chip này được tích hợp NeuroPilot - công nghệ khai thác kiến trúc tính toán AI nhằm mang lại hiệu năng tốt để hỗ trợ các ứng dụng AI như nhận diện khuôn mặt, nhận diện vật thể, giúp OPPO A5s trở thành chiếc điện thoải có khả năng selfie ảo diệu.\r\n\r\nSmartphone này chạy trên ColorOS 5.1 đơn giản, khá trơn tru và không bị cồng kềnh, mang lại sự ổn định trong quá trình sử dụng hàng ngày. Bên cạnh đó, với RAM 3 GB và bộ nhớ trong 32 GB có thể chạy một lúc nhiều ứng dụng, đây quả là dòng smartphone phù hợp với nhu cầu sử dụng của nhiều người. Nếu bạn có nhu cầu lưu trữ lớn hơn thì hoàn toàn có thể lắp thẻ nhớ MicroSD tối đa 256 GB để tăng không gian lưu trữ cho thiết bị.\r\n\r\nOPPO A5s sở hữu camera selfie đặc trưng của OPPO và camera sau 13 MP\r\nNhắc đến OPPO là nhắc đến những dòng smartphone với camera selfie đỉnh cao và OPPO A5s sẽ không làm bạn thất vọng. Camera trước của máy với độ phân giải 8 MP kèm những chế độ làm đẹp “trứ danh” của OPPO chắc chắn sẽ cho người dùng những tấm ảnh selfie ảo diệu, ưng ý. Với sự hỗ trợ của công nghệ AI, những bức hình của bạn sẽ đẹp tự nhiên, nhìn không bị giả.\r\n\r\n', '2020-05-01 00:00:00', '2020-05-20 00:00:00', 27),
('28', 'Nokia', 'Camera sau: Chính 13 MP & Phụ 2 MP\r\nCamera trước: 5 MP', 'Chip đồ họa (GPU)	Adreno 610', 'Màn hình: IPS LCD, 6.2\", HD+', '6 tháng', 'Điện Thoại Nokia 2.3 (32GB/2GB) - Hàng Chính Hãng Một chiếc điện thoại không ngừng hoàn thiện. Nokia 2.3 là Android One được chứng nhận, nghĩa là bạn có một trải nghiệm phần mềm thuần túy với giao diện liền mạch và chỉ những ứng dụng thiết yếu. Hơn nữa, với 2 năm nâng cấp phần mềm và 3 năm cập nhật bảo mật hàng tháng, sản phẩm này sẽ luôn an toàn và hoạt động tốt như mới.\r\nGiải trí suốt ngày dài\r\nTận hưởng chuỗi phim yêu thích của bạn lâu hơn với thời gian sử dụng pin 2 ngày được hỗ trợ công nghệ AI 1. Và mang đến những nội dung tuyệt vời vào cuộc sống với màn hình lớn 6,2” HD+ 19:9 .\r\nGOOGLE ASSISTANT - Trợ giúp bạn mọi lúc mọi nơi\r\nNút Google Assistant2 giúp bạn bắt kịp nhịp sống hối hả. Đặt câu hỏi, xem lịch trình của bạn hoặc kiểm tra giao thông. Trợ lý của bạn tìm hiểu và thích ứng sau mỗi lần sử dụng – do đó bạn có thể làm được nhiều việc hơn trong cuộc sống với chiếc điện thoại của mình.\r\nTính năng đa dạng\r\nThêm AI, thêm mạnh mẽ với Nokia 2.3. Thời gian sử dụng máy lên đến 2 ngày1 với công nghệ Pin thích ứng, chụp nhiều hình hơn với công nghệ chụp hình AI– thậm chí trong điều kiện ánh sáng yếu – và mở khóa gương mặt nhanh chóng. Đưa những nội dung tuyệt vời vào cuộc sống với màn hình HD+ 6,2” cùng tỉ lệ 19:9 thật ấn tượng. Ngoài ra, sản phẩm sẽ được lên Android 10 và hơn nữa để bạn có thể tận hưởng 2 năm nâng cấp phần mềm và 3 năm cập nhật bảo mật hàng tháng.\r\n', '2020-05-01 00:00:00', '2020-05-27 00:00:00', 28),
('29', 'Nokia', 'Camera sau: 2 MP\r\nCamera trước: Không', 'hihi', 'Màn hình: 2.4 inches, 17.8 cm2', '3 tháng', 'Thiết kế hầm hố, khác biệt\r\nĐiện Thoại Nokia 800 Tough (2019) sở hữu thiết kế rất chắc chắn nhằm đảm bảo máy có thể chống chịu lại những tác động từ bên ngoài.\r\nChiếc máy này có thể sống sót sau ở dưới nước (độ sâu lên đến 1.5 mét trong 30 phút) và cung cấp khả năng chống bụi, cát, nhiệt độ khắc nghiệt.\r\nXung quanh thân máy được bao bọc bởi một lớp cao su chống trơn trượt cũng như bảo vệ cho thiết bị khỏi những tác động nếu lỡ có làm rơi.\r\nỞ cạnh dưới của điện thoại có một vòng ở phía dưới để cho phép bạn gắn dây buộc.\r\nThời lượng pin ấn tượng\r\nNokia 800 Tough sử dụng viên pin dung lượng 2.100 mAh, hứa hẹn cho thời lượng pin chờ trong một tháng và thời gian đàm thoại lên đến 12 giờ.', '2020-05-01 00:00:00', '2020-05-27 00:00:00', 29),
('3', 'Samsung', 'Camera Sau : 48 MP, 8 MP và 5 MP (3 camera)\r\n\r\nCamera Trước: 16 MP\r\n\r\n', 'hihi', 'Super AMOLED, 6.4\"', '24 tháng', 'Màu sắc được chắt lọc từ sắc độ sáng tự nhiên.\r\nSự kết hợp của những dải màu nổi bật và sinh động. Với lớp kính cường lực Gorilla 6 bảo vệ vững chắc, và chất liệu thủy tinh đánh bóng bắt sáng cao cấp sắc sảo kiến tạo nên ánh quang đậm chất đương đại.\r\nCảm Biến Vân Tay Siêu Âm bảo mật tuyệt đối\r\nẨn sau màn hình là cảm biến siêu âm. Nhận diện các điểm lồi và lõm 3D trên vân tay bạn, cho hệ thống bảo mật hoàn toàn.', '2020-05-04 00:00:00', '2020-05-18 00:00:00', 8),
('30', 'Nokia', 'Không', 'Không', 'Màn hình: 2.8\", QVGA (320 x 240pixel)', '3 tháng', 'Thiết kế vỏ nhôm đẹp mắt\r\nĐiện Thoại Nokia 230 Dual SIM sở hữu khung nhựa cùng lớp vỏ nhôm bền chắc và sang trọng. Nokia 230 Dual SIM vẫn sở hữu được những đặc điểm truyền thông của dòng điện thoại phổ thông đó là kiểu dáng dạng thanh cùng các góc cạnh được bo tròn. Vẫn là bàn phím hình chữ T đặc trung với các phím bấm nhạy và êm ái giúp bạn nhắn tin một cách nhanh chóng. Các phím cũng được phối màu một cách hài hòa để tăng sự cuốn hút người dùng.\r\nNhỏ nhưng mạnh mẽ\r\nMáy sở hữu màn hình 2.8 inch độ phân giải QVGA (320 x 240pixel) đủ không gian để bạn lướt web và đọc báo, nhắn tin. Máy còn được hỗ trợ khe cắm thẻ nhớ microSD lên đến 32GB, tích hợp trình nghe nhạc MP3 và cho phép phát video từ thẻ nhớ, đài FM radio, cùng khả năng lướt web, nghe Radio tương \r\ntự như Smartphone. Đặc biệt, máy  chạy nền tảng Series 30+ tích hợp sẵn trình duyệt web Opera Mini, tìm kiếm Bing Search, theo dõi thời tiết MSN Weather.\r\nDung lượng pin 1200mAh\r\nHãy biến thời gian rảnh rỗi của bạn thành khoảng thời gian dành cho giải trí với Nokia 230 có pin với thời gian chờ lên đến 22 ngày, thời lượng thoại 23 giờ, 52 giờ phát nhạc, nghe FM radio đến 40 giờ chỉ sau một lần sạc. Bạn có thể yên tâm sử dụng máy trong những chuyến đi công tác dài ngày mà không phải lo về vấn đề hết pin.', '2020-05-01 00:00:00', '2020-05-28 00:00:00', 30),
('31', 'Oppo', 'Camera Trước/Sau: 16MP/48MP + 5MP (2 camera)', ' MediaTek Helio P70 8 nhân', 'Màn hình: LTPS LCD, 6.53\", Full HD+ (1080 x 2340 Pixels)', '6 tháng', 'Thiết kế độc đáo, thu hút ánh nhìn\r\nĐiện Thoại OPPO F11 Pro 128GB  được khoác lên mình thiết kế khung viền kim loại cùng 2 mặt kính bóng bẩy. Mặt lưng được thiết kế theo hiệu ứng gradient đổi màu hứa hẹn sẽ khiến giới trẻ \"phát cuồng\". Các viền kính được làm bo cong ôm sát vào viền kim loại để cung cấp trải nghiệm cầm nắm thoải mái, dù điện thoại có kích thước khá lớn.\r\nĐặc biệt hơn, màn hình của máy còn được phủ kính cường lực Gorilla Glass 6, đây là loại kính cường lực mới nhất hiện nay, cho khả năng chịu lực, chống xước tốt hơn so với thế hệ tiền nhiệm.\r\nHiệu năng mạnh mẽ\r\nMáy được trang bị con chip MediaTek Helio P70 8 nhân đủ để trải nghiệm các dòng game hot: PUBG, Liên quân ở mức cấu hình tầm trung và đặc biệt máy sở hữu tới 6 GB RAM. Với dung lượng RAM này bạn có thể tự tin sử dụng nhiều ứng dụng cùng lúc mà máy vẫn chuyển qua lại một cách mượt mà. Một điểm cộng khác là máy chạy sẵn Android 9.0 (Pie) ngay khi bán ra cho bạn nhiều trải nghiệm mới mẻ.\r\nCamera Selfie trượt độc đáo với chế độ làm đẹp Al\r\nOppo F11 Pro sở hữu camera trước độ phân giải 16 MP. Chế độ làm đẹp bằng AI hay những công nghệ mà những chiếc smartphone Oppo đã mang đến thì bạn hoàn toàn có thể tự tin với khả năng selfie của Oppo F11 Pro. Camera trước có chức năng nhận diện khuôn mặt, chế độ làm đẹp, quay video Full HD, tự động lấy nét, Selfie ngược sáng HDR, sticker AR (biểu tượng thực tế ảo), quay video HD, cho bạn những bức hình sống động.\r\n', '2020-05-01 00:00:00', '2020-05-27 00:00:00', 31),
('32', 'Oppo', 'Camera sau: Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP\r\nCamera trước: 16 MP', 'MediaTek Helio P70 8 nhân', 'Màn hình: AMOLED, 6.5\", Full HD+', '14 tháng', 'Thiết kế hiện đại, thanh lịch\r\nĐiện Thoại OPPO Reno 2F sở hữu thiết kế mỏng gọn cùng các đường bo góc tinh tế khiến chiếc điện thoại này vừa vặn trong lòng bàn tay, cho phép bạn cầm giữ một cách dễ dàng và thoải mái và chắc chắn hơn. Tổng thể sản phẩm nổi bật lên với vẻ đẹp thanh lịch sang trọng và không kém phần tinh tế.\r\nMàn hình AMOLED tràn viền, độ phân giải 2400x1080 pixel\r\nOPPO Reno 2F sẽ có màn hình tràn viền hoàn hảo đúng nghĩa nhờ thiết kế camera selfie độc đáo, thực sự không có bất cứ một phần khuyết nào trên màn hình. Màn hình tràn viền tỷ lệ 19,5:9 cùng với một kích thước lên tới 6.5 inch, nhưng thực chất chỉ nằm gọn trong lòng bàn tay vì tỉ lệ màn hình chiếm tới 93% mặt trước.\r\nĐi kèm với đó là tấm nền AMOLED đạt chuẩn Full HD+ 2.400x1.080 pixel đem đến chất lượng hiển thị cao, cho người trải nghiệm thị giác đẹp và ấn tượng. Ngoài ra, Reno 2F còn được trang bị cho cả mặt trước và sau kính cường lực Gorilla Glass thế hệ 5. Qua đó, đem lại cho máy khả năng chống xước và chống va đập tốt hơn.\r\ncamera sau siêu zoom\r\nCamera sau là tính năng đáng chú ý của chiếc máy này. OPPO Reno 2F được trang bị tới bốn camera sau với camera chính 48MP, khẩu độ f/1.7, đi kèm với cảm biến góc siêu rộng 8MP, ống kính tele 2MP và camera đơn sắc 2MP. Với độ phân giải này, bạn có thể thỏa sức ghi lại những khoảnh khắc của cuộc sống một cách sống động và chân thật, giúp bạn có những bức ảnh ưng ý nhất bao gồm chụp ảnh nhiều người, chụp ảnh xóa phông và chụp ảnh trắng đen.\r\nDung lượng pin nâng cấp 4.000 mAh kết hợp công nghệ sạc nhanh VOOC 3.0\r\nOPPO Reno2F sở hữu viên pin có dung lượng được nâng cấp lên thành 4.000 mAh, qua đó thời lượng pin chắc chắn sẽ tốt hơn phiên bản cũ. Với dung lượng pin như trên, nhờ vào con chip tiết kiệm pin cùng màn hình phân giải FullHD+ giúp cho người dùng có thời gian sử dụng khá thoải mái trong một ngày.\r\n', '2020-05-01 00:00:00', '2020-05-27 00:00:00', 32),
('33', 'Oppo', 'Camera Trước: 8 MP (Hỗ trợ công nghệ A.I)\r\nCamera Sau: 13 MP + 2 MP (Camera kép)', 'Quacolmm SDM 450 8 nhân', 'Màn hình: 6.2 inch (Màn hình siêu tràn), HD+', '3 tháng', 'Ngoại hình bắt mắt với thiết kế tai thỏ độc đáo\r\nĐiện thoại OPPO A3s sở hữu mặt lưng kính có thể biến đổi màu sắc từ những góc nhìn khác nhau tạo nên vẻ đẹp vô cùng sang trọng không kém các sản phẩm cao cấp. Dù sử dụng chất liệu nhựa để mang lại giá bán rẻ cho người dùng, máy vẫn toát lên vẻ đẹp cuốn hút nhờ khung viền kim loại và cách tạo độ bóng trên mặt lưng nhựa khiến nó trông như làm từ kính. Bên cạnh đó bốn góc được bo tròn mềm mại tạo cảm giác cầm nắm dễ chịu, thoải mái.\r\nCấu hình vừa đủ dùng\r\nCấu hình vừa đủ dùng với vi xử lý Snapdragon 450 và RAM 2 GB kết hợp với giao diện Color Os 5.1 được tuỳ biến từ Android 8.1 mang lại mặt trải nghiệm thú vị về mặt phần mềm cho người dùng, đủ đáp ứng các nhu cầu sử dụng cơ bản và chơi mượt mà ở các tựa game HOT hiện nay như Liên Quân, PUBG ở mức độ họa trung bình.\r\nCụm camera kép xóa phông hoàn hảo\r\nOPPO A3s tích hợp cụm camera kép 13MP+2MP với khẩu độ ống kính tương ứng là F/2.2 và F/2.4 hỗ trợ chế độ chân dung xoá phôngvà nhiều chế độ chụp ảnh dễ dàng và tiên tiến khác. Phía trước của Oppo A3s là camera selfie 8MP khẩu độ F/2.2 với tính năng làm đẹp nổi tiếng của hãng được tích hợp sẽ cho bạn bức ảnh selfie ấn tượng. Trong điều kiện ánh sáng đầy đủ, camera OPPO A3s đáp ứng tốt với hình ảnh và độ chi tiết lên rất chân thực, chụp xóa phông chỉ ở mức khá với các chi tiết còn bị lẫn với chủ thể.\r\nPin cực khủng, dùng cực lâu\r\nChiếc smartphone A3s của OPPO được cấp năng lượng từ viên pin có dung lượng rất lớn  4.230 mAh. Với pin “khủng”, OPPO A3s dễ dàng trụ được trọn vẹn một ngày ở cường độ sử dụng cao, thậm chí là 2 ngày nếu bạn chỉ dùng vừa phải.', '2020-05-01 00:00:00', '2020-05-27 00:00:00', 33),
('34', 'Oppo', 'Camera sau: Chính 64 MP & Phụ 13 MP, 8 MP, 2 MP\r\nCamera trước: Chính 44 MP & Phụ 2 MP', 'MediaTek Helio P95 8 nhân', 'Màn hình: Sunlight Super AMOLED, 6.4\", Full HD+', '6 tháng', 'Thế hệ Reno3 Pro đã không còn kiểu thiết kế camera vây cá mập hay thò thụt như trên OPPO Reno2, Reno mà thay vào đó là kiểu thiết kế màn hình \"nốt ruồi\" với cụm camera kép đặt ở góc trái màn hình. Ưu điểm của kiểu thiết kế này chính là camera trước của máy sẽ hoạt động ổn định và bền hơn so với cơ chế cũ. Không gian hiển thị hầu như không bị ảnh hưởng, vẫn rất thoải mái khi chơi game hay làm việc trên chiếc smartphone này.\r\nVới tốc độ màn hình 90 khung hình/giây, OPPO Reno3 Pro là một trong những smartphone đầu tiên trên thị trường sở hữu màn hình có tần số quét cao.\r\nMáy sở hữu nhiều chế độ chụp ảnh chuyên nghiệp cùng với sự trợ giúp của AI giúp bạn có thể làm chủ được camera trên chiếc smartphone của mình.\r\nCông nghệ video Siêu chống rung 2.0 với 2 chế độ Siêu chống rung và Siêu chống rung Pro, cho ra các đoạn video ổn định đến bất ngờ mà không cần đến thiết bị hỗ trợ nào khác.\r\nCamera selfie kép chắc chắn cũng sẽ không làm các bạn trẻ phải thất vọng bởi máy sở hữu bộ đôi ống kính có độ phân giải lên tới 44 MP và 2 MP.\r\nVới chế độ Siêu chụp đêm 2.0 cho phéo chụp ảnh selfie trong tối rõ nét hơn. Reno3 Pro dễ dàng xử lý các bức ảnh ảo diệu dưới ánh đèn neon hay trong các quán cafe lung linh.\r\nTính năng làm đẹp bằng AI giúp loại bỏ những khuyết điểm trên khuôn mặt của bạn một cách tự nhiên để có thể đăng ngay lên facebook sau khi chụp mà không cần phải hậu kỳ.', '2020-05-01 00:00:00', '2020-05-27 00:00:00', 34),
('35', 'Oppo', 'Camera sau: Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP\r\nCamera trước: 16 MP', 'Qualcomm Snapdragon 665 8 nhân', 'Màn hình: IPS LCD, 6.5\", HD+', '3 tháng', 'Hiệu năng bứt phát - Trải nghiệm tối đa\r\nĐiện Thoại OPPO A9 (128G/8GB) được trang bị con chip tầm trung mới Snapdragon 665 mang đến hiệu năng mạnh mẽ và tối ưu tiết kiệm điện hơn, cho trải nghiệm giải trí, chơi game trở nên mượt mà và dễ dàng hơn bao giờ hết.\r\nChụp ảnh sắc nét với cụm 4 camera\r\nOPPO A9 (2020) có sự thay đổi lớn về số camera cũng như độ phân giải camera sau, giúp hình ảnh đạt độ chi tiết và sắc nét cao hơn hẳn.\r\nMàn hình giọt nước trải nghiệm tối ưu\r\nOPPO A9 (2020) có màn hình giọt nước rộng đến 6.5 inch, độ phân giải HD+, tỉ lệ 19.5:9 và đạt đến 90.7% diện tích trải nghiệm.\r\n\r\n', '2020-05-01 00:00:00', '2020-05-27 00:00:00', 35),
('36', 'Sony', 'Camera chính:20.7 MP, 5248 х 3936 pixels, autofocus, LED flash; Camera phụ:2.2 MP, 1080p@30fps', 'Chip đồ họa:Adreno 330', 'Màn hình:5.2 inch, độ phân giải Full HD1080 x 1920 pixel', '4 tháng', 'Bảo mật hơn với cảm biến vân tay\r\nCảm biến vân tay 1 chạm được tích hợp trên nút nguồn và được đặt ở cạnh phải của máy, bạn chỉ cần cầm máy lên và mở khóa bảo mật chỉ với 1 thao tác đơn giản.', '2020-05-01 00:00:00', '2020-05-27 00:00:00', 36),
('37', 'Sony', 'Camera sau:23 MP\r\nCamera trước:5 MP', 'Snapdragon 810 8 nhân 64-bit', 'Màn hình:IPS LCD, 5.5\",Ultra HD (4K)', '3 tháng', 'Smartphone đầu tiên sở hữu màn hình\r\nMàn hình độ phân giải 4K trên Xperia Z5 Premium cùng nhiều công nghệ độc quyền của Sony như: Triluminos (nâng cấp chất lượng hình ảnh),X-Reality™(tối ưu hóa màu sắc, độ nét)... sẽ giúp bạn trải nghiệm hình ảnh, video 1 cách tuyệt vời nhất.\r\nCamera có tốc độ lấy nét siêu nhanh\r\nCamera sau độ phân giải 23 MP cho tốc độ lấy nét cực nhanh (0.03 giây), các chế độ chụp hữu ích như HDR, panorama hay xóa phông nền để làm nổi bật điểm nhấn. Chụp ảnh dễ dàng khi chỉ cần chạm vào vị trí bất kỳ trên màn hình mà bạn muốn lấy nét và camera sẽ chụp ảnh ngay lập tức.\r\nQuay và trình chiếu video 4K dễ dàng\r\nVới khả năng quay được video độ phân giải 4K, sẽ cho độ chi tiết gấp 4 lần so với video Full HD. Sau đó, kết nối vớitivi 4K(tivi thường sẽ trở về định dạng phát cao nhất của tivi đó) thông quaDLNAhay kết nốiMHL... để xem cùng gia đình, bạn bè.', '2020-05-01 00:00:00', '2020-05-26 00:00:00', 37),
('4', 'Oppo', 'Camera sau: Chính 48 MP & Phụ 13 MP, 12 MP\r\n\r\nCamera trước: 32 MP', 'Chip đồ họa (GPU)	Adreno 650', 'Màn hình: AMOLED, 6.78\"', '15 tháng', 'Công nghệ sạc nhanh VOOC 3.0 độc quyền\r\n sở hữu riêng cho mình công nghệ sạc nhanh VOOC phiên bản 3.0 cực kỳ ấn tượng. Viên pin dung lượng 4.000 mAh trên Oppo F11 Pro có thể giúp bạn thoải mái sử dụng lên tới gần 2 ngày. Và nhờ sự hỗ trợ của sạc nhanh VOOC 3.0 thì bạn chỉ mất 40 phút để nạp đầy năng lượng cho viên pin dung lượng khủng của máy.\r\nCông nghệ tản nhiệt và tăng tốc chơi game ấn tượng\r\nOPPO còn sử dụng công nghệ tản nhiệt mới, đặt gel tản nhiệt gần CPU để ngăn tình trạng quá nhiệt, đảm bảo hiệu suất luôn ở mức cao. Giao diện khi chơi game cũng được làm mới để tiện lợi nhất cho game thủ. Đồng thời, hiệu ứng âm thanh sẽ nâng cấp để chân thực hơn, sống động trong từng tựa game yêu thích.', '2020-05-04 00:00:00', '2020-05-19 00:00:00', 13),
('5', 'Sony', 'Camera trước	8MP\r\nCamera sau	23MP\r\nTính năng camera	Cảm biến hình ảnh Exmor, Chụp ảnh trong môi trường ánh sáng yếu, Ống kính góc rộng, SteadyShot', 'hehe', 'Màn hình LCD 5.5 inch, full HD 1080p', '12 tháng', 'sẽ sớm có mặt ở thị trường Việt Nam theo đường xách tay và hàng chính hãng với mức giá sẽ khá hấp dẫn so với nhiều thế hệ đàn anh trước đó.\r\n\r\n sẽ bán ra với 4 phiên bản màu sắc gồm đen, xanh, bạc và hồng. Về tổng thể, Xperia XZ cho độ hoàn thiện cao, từng chi tiết nhỏ đều được chăm chút tỉ mỉ. Máy cũng hỗ trợ chống bụi, chống nước theo chuẩn IP68.', '2020-05-12 00:00:00', '2020-05-27 00:00:00', 15),
('6', 'Apple', 'Camera trước	1.2 MP\r\nCamera sau	8 MP\r\nTính năng camera	Tự động lấy nét, Chạm lấy nét\r\n Nhận diện khuôn mặt, HDR, Panorama', 'Chip đồ họa (GPU)	PowerVR GX6450', '4.7 inch, HD (1334 x 750 Pixels)', '6 tháng', 'Thiết kế siêu mỏng\r\niPhones  128GB với kích thước  158.2 x 77.9 x 7.3 mm mỏng nhẹ và thiết kế tương tự như bộ đôi iPhone 6s/6s Plus, tuy nhiên phần dải nhựa bắt sóng không cắt ngang mặt lưng như phiên bản cũ mà được chuyển sang phần cạnh trên của sản phẩm.\r\n Phím Home vật lý trên điện thoại cũng được thay thế bằng phím cảm ứng nhờ vào sự kết hợp Taptic Engine mới và liên kết với 3D Touch tiện lợi và đẹp mắt.\r\n\r\n', '2020-05-04 00:00:00', '2020-05-24 00:00:00', 2),
('7', 'Apple', 'Camera trước	7 MP\r\nCamera sau	12 MP', 'Chip đồ họa (GPU)	Chip đồ họa 6 nhân', 'Màn hình: 4.7 inch, HD (1334 x 750 Pixels)\r\nCông nghệ màn hình	LED-backlit IPS LCD', '16 tháng', 'Thiết kế siêu mỏng\r\niPhone  128GB với kích thước  158.2 x 77.9 x 7.3 mm mỏng nhẹ và thiết kế tương tự như bộ đôi iPhone 6s/6s Plus, tuy nhiên phần dải nhựa bắt sóng không cắt ngang mặt lưng như phiên bản cũ mà được chuyển sang phần cạnh trên của sản phẩm.\r\n Phím Home vật lý trên điện thoại cũng được thay thế bằng phím cảm ứng nhờ vào sự kết hợp Taptic Engine mới và liên kết với 3D Touch tiện lợi và đẹp mắt.', '2020-05-01 00:00:00', '2020-05-31 00:00:00', 3),
('8', 'Apple', 'Camera trước	7MP\r\nCamera sau	2 camera 12MP', 'Chip đồ họa (GPU)	Apple GPU 4 nhân', 'Màn hình OLED: 5.8 inch Super Retina (2436 x 1125), 463ppi, 3D Touch, TrueTone Dolby Vision HDR 10', '6 tháng', 'Thiết kế siêu mỏng\r\niPhone  128GB với kích thước  158.2 x 77.9 x 7.3 mm mỏng nhẹ và thiết kế tương tự như bộ đôi iPhone 6s/6s Plus, tuy nhiên phần dải nhựa bắt sóng không cắt ngang mặt lưng như phiên bản cũ mà được chuyển sang phần cạnh trên của sản phẩm.\r\n Phím Home vật lý trên điện thoại cũng được thay thế bằng phím cảm ứng nhờ vào sự kết hợp Taptic Engine mới và liên kết với 3D Touch tiện lợi và đẹp mắt.\r\n', '2020-05-02 00:00:00', '2020-05-31 00:00:00', 4),
('9', 'Nokia', 'Camera trước	5MP\r\nCamera sau	13MP', 'Chip đồ họa (GPU)	Adreno 509', 'Màn hình: IPS LCD, 6.2\", HD+', '8 tháng', 'Hàng Chính Hãng là một sản phẩm thuộc phân khúc giá rẻ nhưng Nokia 3.2 vẫn mang trong mình một thiết kế nguyên khối sang trọng. Được làm từ nhựa Polycarbonate nhưng Nokia 3.2 trông vẫn bóng bẩy như những thiết bị kim loại nguyên khối. Bên cạnh đó, những chi tiết xung quanh máy được hoàn thiện tỉ mỉ hơn, nhờ đó Nokia 3.2 trông liền mạch hơn so với người anh 3.1 của mình.\r\n\r\nVề thiết kế thì Nokia 3.2 không có quá nhiều sự thay đổi so với các smartphone khác đang có mặt trên thị trường. Máy vẫn đi theo xu hướng màn hình giọt nước trên màn hình có kích thước 6.26 inch, tỉ lệ màn hình 19:9, độ phân giải HD+.', '2020-05-18 00:00:00', '2020-05-31 00:00:00', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

DROP TABLE IF EXISTS `donhang`;
CREATE TABLE IF NOT EXISTS `donhang` (
  `madonhang` varchar(50) NOT NULL,
  `makh` int(50) NOT NULL,
  `tendienthoai` varchar(250) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `trangthai` tinyint(1) NOT NULL,
  `thinhthucthanhtoan` varchar(255) NOT NULL,
  PRIMARY KEY (`madonhang`),
  KEY `makh` (`makh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
CREATE TABLE IF NOT EXISTS `hoadon` (
  `mahd` varchar(100) NOT NULL,
  `makh` int(50) NOT NULL,
  `ngayhd` date NOT NULL,
  `tennguoinhan` varchar(50) NOT NULL,
  `diachinguoinhan` varchar(80) NOT NULL,
  `ngaynhan` date NOT NULL,
  `dienthoainguoinhan` varchar(10) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`mahd`),
  UNIQUE KEY `makh` (`makh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`mahd`, `makh`, `ngayhd`, `tennguoinhan`, `diachinguoinhan`, `ngaynhan`, `dienthoainguoinhan`, `updated_at`, `created_at`) VALUES
('1', 1, '2019-11-03', 'Nguyễn Thị Thu Nguyệt', 'Cần Giuộc', '2019-11-05', '0764949277', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('2', 2, '2019-11-05', 'Lê Hà Ngọc Thủy', 'Mễ Cốc Quận 8', '2019-11-20', '0777665098', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

DROP TABLE IF EXISTS `khuyenmai`;
CREATE TABLE IF NOT EXISTS `khuyenmai` (
  `mactkm` int(11) NOT NULL AUTO_INCREMENT,
  `magiamgia` varchar(50) NOT NULL,
  `loaictkm` varchar(100) NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `ngaydang` datetime NOT NULL,
  `ngayketthuc` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`mactkm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE IF NOT EXISTS `sanpham` (
  `madienthoai` int(15) NOT NULL AUTO_INCREMENT,
  `tendienthoai` varchar(250) NOT NULL,
  `mota` text NOT NULL,
  `new_sanpham` tinyint(4) NOT NULL,
  `gia` int(10) NOT NULL,
  `gia_khuyenmai` int(50) NOT NULL,
  `hinh` varchar(50) NOT NULL,
  `rom` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(50) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `mathuonghieu` varchar(5) NOT NULL,
  PRIMARY KEY (`madienthoai`),
  KEY `mathuonghieu` (`mathuonghieu`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`madienthoai`, `tendienthoai`, `mota`, `new_sanpham`, `gia`, `gia_khuyenmai`, `hinh`, `rom`, `soluong`, `updated_at`, `created_at`, `mathuonghieu`) VALUES
(1, 'Điện Thoại iPhone 11 ', 'Nguyên seal, Mới 100%, Chưa Active\r\n\r\nCông nghệ màn hình: IPS LCD\r\n\r\nĐộ phân giải: 828 x 1792 pixels\r\n\r\nMàn hình rộng: 6.1 inches\r\n\r\nCamera sau: 12 MP + 12 MP\r\n\r\nQuay phim: 2160p@24/30/60fps, 1080p@30/60/120/240fps, HDR, stereo sound rec.\r\n\r\nCamera trước: 12 MP, f/2.2\r\n\r\nHệ điều hành: iOS 13\r\n\r\nChipset (CPU): Apple A13 Bionic 6 nhân\r\n\r\nRAM: 4 GB\r\n\r\nBộ nhớ trong: 64GB\r\n\r\nDung lượng pin: 3110 mAh\r\n\r\nSIM: 1 Nano SIM , 1 esim\r\n\r\nMã Part: VN/A\r\n', 1, 19490000, 18000000, 'apple1.jpg', '64GB ', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1'),
(2, 'Điện Thoại iPhone 6 ', 'Chính hãng, nguyên seal, mới 100%\r\n\r\nThiết kế: Nguyên khối\r\n\r\nMàn hình: 4.7 inch, HD (1334 x 750 Pixels)\r\n\r\nCamera Trước/Sau: 8MP/ 1.2MP\r\n\r\nCPU: Apple A8 2 nhân 64-bit\r\n\r\nBộ Nhớ: 32GB\r\n\r\nRAM: 1GB', 1, 6000000, 0, 'apple2.jpg', '32GB ', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1'),
(3, 'Điện Thoại iPhone 7 ', 'Chính hãng, nguyên seal, mới 100%\r\n\r\nMiễn phí giao hàng toàn quốc\r\n\r\nThiết kế: Nguyên khối, mặt kính cong 2.5D\r\n\r\nMàn hình: 4.7 inch, HD (1334 x 750 Pixels)\r\n\r\nCamera Trước/Sau: 7MP/ 12MP\r\n\r\nCPU: Apple A10 Fusion 4 nhân 64-bit\r\n\r\nBộ Nhớ: 32GB\r\n\r\nRAM: 2GB\r\n\r\nChống nước, chống bụi tiêu chuẩn IP67\r\n', 0, 8490000, 8000000, 'apple3.jpg', '32GB', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1'),
(4, 'Điện Thoại iPhone XS ', 'Mã Quốc Tế: LL/ZA/ZP/...\r\n\r\nNguyên seal, mới 100%, chưa active\r\n\r\nThiết kế: Nguyên khối\r\n\r\nMàn hình OLED: 5.8 inch Super Retina (2436 x 1125), 463ppi, 3D Touch, TrueTone Dolby Vision HDR 10\r\n\r\nCamera Trước/Sau: 7MP/ 2 camera 12MP\r\n\r\nCPU: A12 Bionic 64-bit 7nm\r\n\r\nBộ Nhớ: 64GB\r\n\r\nRAM: 4GB\r\n\r\nSIM: 1 Nano sim +1 Esim\r\n\r\nĐạt chuẩn chống nước bụi IP68, Face ID\r\n', 1, 17490000, 0, 'apple4.jpg', '64GB', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1'),
(5, 'Điện Thoại Nokia 3.2 ', 'Chính hãng, Nguyên seal, Mới 100%\r\n\r\nMiễn phí giao hàng toàn quốc\r\n\r\nThiết kế: Màn hình giọt nước\r\n\r\nMàn hình: IPS LCD, 6.2\", HD+\r\n\r\nCamera Trước/Sau: 5MP/13MP\r\n\r\nCPU: Snapdragon 429 4 nhân 64-bit\r\n\r\nBộ Nhớ: 16GB\r\n\r\nRAM: 2GB\r\n\r\nTính năng: Mở khóa bằng khuôn mặt', 0, 3000000, 32, 'nokia1.jpg', '2GB/16GB', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2'),
(6, 'Điện Thoại Nokia 2.2 ', 'Chính hãng, Nguyên seal, Mới 100%\r\n\r\nMiễn phí giao hàng toàn quốc\r\n\r\nThiết kế: Nguyên khối\r\n\r\nMàn hình: IPS LCD, 5.71\", HD+\r\n\r\nCamera Trước/Sau: 8MP/ 13MP\r\n\r\nCPU: Mediatek MT6761 4 nhân\r\n\r\nBộ Nhớ: 16GB\r\n\r\nRAM: 2GB\r\n\r\nSIM tương thích: 2 Nano SIM, Hỗ trợ 4G\r\n\r\nTính năng: Màn hình luôn hiển thị AOD, Đèn pin, Chặn cuộc gọi, Chặn tin nhắn\r\n', 0, 4000000, 0, 'nokia2.jpg', '2GB/16GB', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2'),
(7, 'Điện thoại Nokia 6.1 Plus', 'Mới 100%\r\n\r\nMiễn phí giao hàng toàn quốc\r\n\r\nThiết kế nguyên khối trẻ trung, hiện đại\r\n\r\nMàn hình: tai thỏ 5.8\"\r\n\r\nCamera Trước/Sau: 16 MP và 5 MP (2 camera)\r\n\r\nCPU: Qualcomm Snapdragon 636 8 nhân\r\n\r\nBộ nhớ trong: 64GB\r\n\r\nRAM: 4GB\r\n\r\nSIM tương thích: 2 Nano SIM\r\n\r\nTính năng: Đèn pin, chặn tin nhắn, chặn cuộc gọi\r\n', 1, 4000000, 3999000, 'nokia4.jpg', '64GB ', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2'),
(8, 'Điện Thoại Samsung Galaxy M30s ', 'Hàng chính hãng Samsung Việt Nam, Nguyên seal, Mới 100%, Chưa Active\r\n\r\nMàn hình: Super AMOLED, 6.4\", Full HD+ (1080 x 2280 Pixels)\r\n\r\nCamera Sau : 48 MP, 8 MP và 5 MP (3 camera)\r\n\r\nCamera Trước: 16 MP\r\n\r\nCPU: Exynos 9611 8 nhân\r\n\r\nBộ Nhớ: 64GB\r\n\r\nRAM: 4GB\r\n\r\nDung lượng pin 6000 mAh\r\n\r\nTính năng: Mở khóa bằng vân tay, Dolby Audio, Đèn pin, Sạc pin nhanh, Chặn cuộc gọi, Chặn tin nhắn\r\n', 0, 5990000, 0, 'samsung1.jpg', '4GB/64GB', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '3'),
(9, 'Điện Thoại Samsung Galaxy A10s ', 'Điện thoại chính hãng, Nguyên seal, Mới 100%, Chưa Active\r\n\r\nMiễn phí giao hàng tiêu chuẩn toàn quốc\r\n\r\nMàn hình: 6.2 inch HD+ PLS TFT LCD\r\n\r\nCamera Sau : 13.0 MP + 2.0 MP\r\n\r\nCamera Trước: 5MP\r\n\r\nCPU: Exynos 7884 8 nhân\r\n\r\nBộ Nhớ: 32GB\r\n\r\nRAM: 2GB\r\n\r\nTính năng: Mở khóa bằng vân tay, Mở khóa bằng khuôn mặt\r\n', 1, 4590000, 0, 'samsung2.jpg', '32GB', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '3'),
(10, 'Điện Thoại Samsung Galaxy S20 Plus', 'Chính hãng, Nguyên seal, Mới 100%\r\n\r\nCông nghệ màn hình: Quad HD+ HDR10+, 120Hz\r\n\r\nMàn hình rộng: 6.7 inch\r\n\r\nĐộ phân giải: 1440 x 3200 pixel\r\n\r\nHệ điều hành: Android 10.0; One UI 2\r\n\r\nCPU: Chip Exynos 990\r\n\r\nCamera sau: 12MP + 12MP + 64MP\r\n\r\nCamera trước: 10MP\r\n\r\nRAM: 8GB\r\n\r\nBộ nhớ trong: 128GB\r\n\r\nHỗ trợ thẻ nhớ: Khe thẻ nhớ mở rộng tới 1TB\r\n\r\nThẻ SIM: 2 SIM\r\n\r\nDung lượng pin: 4.500 mAh, sạc nhanh 45W, USB Power Delivery 3.0\r\n\r\nSạc không dây ngược cho thiết bị khác, chống nước IP68', 0, 21990000, 0, 'samsung3.jpg', '64GB', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '3'),
(11, 'Điện Thoại Samsung Galaxy A71 ', 'Hàng chính hãng Samsung Việt Nam, Nguyên seal, Mới 100%, Chưa Active\r\n\r\nMàn hình: Super AMOLED Plus, 6.7\", Full HD+\r\n\r\nHệ điều hành: Android 10\r\n\r\nCamera sau: Chính 64 MP & Phụ 12 MP, 5 MP, 5 MP\r\n\r\nCamera trước: 32 MP\r\n\r\nCPU: Snapdragon 730 8 nhân\r\n\r\nRAM: 8 GB\r\n\r\nBộ nhớ trong: 128 GB\r\n\r\nThẻ nhớ: MicroSD, hỗ trợ tối đa 512 GB\r\n\r\nThẻ SIM: 2 Nano SIM, Hỗ trợ 4G\r\n\r\nDung lượng pin: 4500 mAh, có sạc nhanh\r\n\r\nBảo mật: Mở khoá khuôn mặt, Mở khoá vân tay dưới màn hình\r\n', 0, 9250000, 0, 'samsung4.jpg', '8GB/128GB', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '3'),
(12, ' Điện Thoại OPPO Reno 2F', 'Chính hãng, Mới 100%, Nguyên seal, Chưa Active\r\n\r\nMàn hình: AMOLED, 6.5\", Full HD+\r\n\r\nHệ điều hành: Android 9.0 (Pie)\r\n\r\nCamera sau: Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP\r\n\r\nCamera trước: 16 MP\r\n\r\nCPU: MediaTek Helio P70 8 nhân\r\n\r\nRAM: 8 GB\r\n\r\nThẻ nhớ: MicroSD, hỗ trợ tối đa 256 GB\r\n\r\nThẻ SIM: 2 Nano SIM, Hỗ trợ 4G\r\n\r\nDung lượng pin: 4000 mAh, có sạc nhanh\r\n', 1, 7090000, 7000000, 'oppo1.jpg', '64GB', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '4'),
(13, 'Điện Thoại Oppo Find X2', 'Màn hình: AMOLED, 6.78\", Quad HD+ (2K+)\r\n\r\nHệ điều hành: Android 10\r\n\r\nCamera sau: Chính 48 MP & Phụ 13 MP, 12 MP\r\n\r\nCamera trước: 32 MP\r\n\r\nCPU: Snapdragon 865 8 nhân\r\n\r\nRAM / Bộ nhớ trong: 12 GB / 256 GB\r\n\r\nThẻ SIM: 2 Nano SIM, Hỗ trợ 4G, 5G\r\n\r\nDung lượng pin: 4200 mAh, có sạc nhanh\r\n\r\nTính năng: Mở khoá khuôn mặt, Mở khoá vân tay dưới màn hình', 1, 23990000, 0, 'oppo2.jpg', '4GB/64GB', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '4'),
(14, 'Điện Thoại Oppo A5 ', 'Chính hãng, Nguyên seal, Mới 100%\r\n\r\nMàn hình: TFT, 6.5\", HD+\r\n\r\nHệ điều hành: Android 9.0 (Pie)\r\n\r\nCamera sau: Chính 12 MP & Phụ 8 MP, 2 MP, 2 MP\r\n\r\nCamera trước: 8 MP\r\n\r\nCPU: Qualcomm Snapdragon 665 8 nhân\r\n\r\nRAM: 4 GB\r\n\r\nBộ nhớ trong: 128 GB\r\n\r\nThẻ nhớ: MicroSD, hỗ trợ tối đa 256 GB\r\n\r\nThẻ SIM:\r\n\r\n2 Nano SIM, Hỗ trợ 4G\r\n', 1, 5000000, 4990000, 'oppo3.jpg', ' 4GB/128GB', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '4'),
(15, 'Điện Thoại Sony Xperia XA1 Plus', 'Màn hình LCD 5.5 inch, full HD 1080p\r\n\r\nCPU: MediaTek helio P20 8 nhân 64 bit (4 nhân 2,3 GHz + 4 nhân 1,6 GHz)\r\n\r\nCamera chính: 23 MP (f/ 2.0)\r\n\r\nCamera trước: 8MP (f/ 2.0)\r\n\r\nRAM: 4GB, ROM: 32GB\r\n\r\nSIM: 2 Nano SIM\r\n\r\nKèm tai nghe, cáp USB, bộ sạc', 0, 11652000, 11000000, 'sony1.jpg', '128GB', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5'),
(16, 'Điện Thoại Sony Xperia XZ2 ', 'Dual Nano-SIM (4G + 3G)\r\n\r\nOcta-Core 2.2GHz, CPU 1.8GHz; ROM 64 GB, RAM 4GB\r\n\r\nHỗ trợ microSD, lên đến 400 GB (sử dụng khe cắm SIM 2)\r\n\r\nPin lên đến 3180 mAh.\r\n\r\nCamera chính: Dual: 24 MP (f / 1.7) + 16 MP (f / 1.7), PDAF, đèn flash LED\r\n\r\nCamera trước: 24 MP (f / 2.0).\r\n\r\nĐộ phân giải màn hình Full HD 1080x2160 pixel\r\n\r\nMàn hình cảm ứng 5.7 inch, 16 triệu màu.', 1, 20756000, 20000000, 'sony2.jpg', ' 64GB ', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5'),
(17, 'Điện Thoại Sony Xperia XA2 Black', 'Màn hình LCD 5.2 inch, full HD 1080p\r\n\r\nCPU: Qualcomm Snapdragon 630\r\n\r\nCamera chính: 23 MP (f/ 2.0)\r\n\r\nCamera trước: 8MP (f/ 2.4)\r\n\r\nRAM: 3GB, ROM: 32GB\r\n\r\nSIM: 2 Nano SIM\r\n\r\nKèm tai nghe, cáp USB, bộ sạc\r\n', 0, 10942000, 10000000, 'sony4.jpg', '64GB ', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5'),
(18, 'Điện Thoại iPhone 11 ', 'Nguyên seal, Mới 100%, Chưa Active\r\nCông nghệ màn hình: IPS LCD\r\nĐộ phân giải: 828 x 1792 pixels\r\nMàn hình rộng: 6.1 inches\r\nCamera sau: 12 MP + 12 MP\r\nQuay phim: 2160p@24/30/60fps, 1080p@30/60/120/240fps, HDR, stereo sound rec.\r\nCamera trước: 12 MP, f/2.2\r\nHệ điều hành: iOS 13\r\nChipset (CPU): Apple A13 Bionic 6 nhân\r\nRAM: 4 GB\r\nBộ nhớ trong: 64GB\r\nDung lượng pin: 3110 mAh\r\nSIM: 1 Nano SIM , 1 esim\r\nMã Part: VN/A', 1, 19990000, 19900000, 'apple6.jpg', '64GB', 8, '2020-05-04 00:00:00', '2020-05-25 00:00:00', '1'),
(19, 'Điện Thoại iPhone 11 Pro Max ', 'Chính hãng, Nguyên seal, Mới 100%, Chưa active\r\nMã part: VN/A\r\nThiết kế: Nguyên khối\r\nMàn hình: OLED (Super Retina XDR), 6.5 inch, 2688 x 1242 pixels\r\nCamera Trước/Sau: 12MP / 12MP + 12MP + 12MP\r\nCPU: Apple A13 Bionic (7 nm+)\r\nBộ Nhớ: 64 GB\r\nRAM: 4GB\r\nSIM: 1 Nano SIM + 1 esim\r\nTính năng: Chống nước, chống bụi, Face ID, Sạc pin nhanh\r\n', 1, 29900000, 29500000, 'apple7.jpg', '64GB', 5, '2020-05-03 00:00:00', '2020-05-18 00:00:00', '1'),
(20, 'Điện Thoại iPhone 7 Plus ', 'Nguyên seal, mới 100%, chưa Active\r\nMiễn phí giao hàng toàn quốc\r\nThiết kế: Nguyên khối, mặt kính cong 2.5D\r\nMàn hình: 5.5 inch, Full HD (1080 x 1920 pixels)\r\nCamera Trước/Sau: 7MP/ 12MP\r\nCPU: Apple A10 Fusion 4 nhân 64-bit\r\nBộ nhớ: 128GB\r\nRAM: 3GB\r\nTính năng: Chống nước, chống bụi, 3D Touch5\r\n', 1, 10950000, 10900000, 'apple8.jpg', '128GB', 2, '2020-05-03 00:00:00', '2020-05-30 00:00:00', '1'),
(21, 'Điện Thoại iPhone 11', 'Nguyên seal, Mới 100%, Chưa Active\r\nCông nghệ màn hình: IPS LCD\r\nĐộ phân giải: 828 x 1792 pixels\r\nMàn hình rộng: 6.1 inches\r\nCamera sau: 12 MP + 12 MP\r\nQuay phim: 2160p@24/30/60fps, 1080p@30/60/120/240fps, HDR, stereo sound rec.\r\nCamera trước: 12 MP, f/2.2\r\nHệ điều hành: iOS 13\r\nChipset (CPU): Apple A13 Bionic 6 nhân\r\nRAM: 4 GB\r\nBộ nhớ trong: 128GB\r\nDung lượng pin: 3110 mAh\r\nSIM: 1 Nano SIM , 1 esim\r\nMã Part: VN/A', 1, 21990000, 21000000, 'apple9.jpg', ' 128GB', 3, '2020-05-03 00:00:00', '2020-05-31 00:00:00', '1'),
(22, 'Điện thoại Apple iPhone XR ', 'Chính hãng, Nguyên seal, Mới 100%, Chưa Active\r\nThiết kế: Nguyên khối\r\nMàn hình: 6.1 inch LCD (828 x 1792), 324 ppi, 3D touch, True-tone\r\nCamera Trước/Sau: 7MP / 12MP\r\nCPU: A12 Binonic 64-bit 7nm\r\nBộ Nhớ: 64GB\r\nRAM: 3GB\r\nSIM: Nano Sim, eSim\r\nTính năng: Chống nước, chống bụi, Face ID', 1, 18899000, 18900000, 'apple10.jpg', '128GB', 3, '2020-05-01 00:00:00', '2020-05-31 00:00:00', '1'),
(23, 'Điện Thoại Samsung Galaxy S20 Plus', 'Chính hãng Nguyên Seal, Mới 100%, Đã kích hoạt bảo hành điện tử\r\nCông nghệ màn hình: Quad HD+ HDR10+, 120Hz\r\nMàn hình rộng: 6.7 inch\r\nĐộ phân giải: 1440 x 3200 pixel\r\nHệ điều hành: Android 10.0; One UI 2\r\nCPU: Chip Exynos 990\r\nCamera sau: 12MP + 12MP + 64MP\r\nCamera trước: 10MP\r\nRAM: 8GB\r\nBộ nhớ trong: 128GB\r\nHỗ trợ thẻ nhớ: Khe thẻ nhớ mở rộng tới 1TB\r\nThẻ SIM: 2 SIM\r\nDung lượng pin: 4.500 mAh, sạc nhanh 45W, USB Power Delivery 3.0\r\nSạc không dây ngược cho thiết bị khác, chống nước IP68\r\n', 1, 23990000, 23900000, 'samsung5.jpg', '32GB', 5, '2020-05-03 00:00:00', '2020-05-26 00:00:00', '3'),
(24, 'Điện Thoại Samsung Galaxy Note 10 Plus ', 'Chính hãng, Mới 100%, Đã kích hoạt bảo hành điện tử\r\nCông nghệ màn hình: Dynamic AMOLED\r\nĐộ phân giải: 3040 x 1440 (Quad HD+)\r\nMàn hình rộng: 6.8 inch\r\nMặt kính cảm ứng: Corning Gorilla Glass 6\r\nCamera Sau: 12.0 MP + 16.0 MP + 12.0 MP + VGA\r\nCamera Trước: 10.0 MP\r\nCPU: Exynos 9825 8 nhân 64-bit\r\nBộ Nhớ: 256GB\r\nRAM: 12GB\r\nHỗ trợ thẻ nhớ: MicroSD, hỗ trợ tối đa 512 GB\r\nBảo mật nâng cao Mở khóa bằng khuôn mặt, Quét mống mắt, Mở khoá vân tay dưới màn hình\r\n', 1, 18790000, 18700000, 'samsung6.jpg', '12GB/256GB', 5, '2020-05-01 00:00:00', '2020-05-27 00:00:00', '3'),
(25, 'Điện Thoại Samsung Galaxy S20 Ultra ', 'Chính hãng Nguyên Seal, Mới 100%, Đã kích hoạt bảo hành điện tử\r\nMàn hình rộng: 6,9 inch\r\nĐộ phân giải: 1440 x 3200 pixel\r\nCPU: Chip Exynos 990\r\nRAM: 12 RAM (LPDDR5)\r\nROM: 128GB\r\nCamera sau: 108 MP + 48 MP + 12 MP + TOF 3D\r\nCamera trước: 40 MP\r\nHỗ trợ thẻ nhớ: Micro SD, hỗ trợ tối đa 1TB\r\nPin: 5.000 mAh, sạc nhanh 45W, Sạc nhanh không dây 15W\r\nTính năng khác: Sạc không dây ngược cho thiết bị khác, chống nước IP68', 1, 22900000, 22890000, 'samsung7.jpg', '128GB', 2, '2020-05-03 00:00:00', '2020-05-31 00:00:00', '3'),
(26, 'Điện Thoại Samsung Galaxy A71 ', 'Hàng chính hãng Samsung Việt Nam, Nguyên seal, Mới 100%, Chưa Active\r\nMàn hình: Super AMOLED Plus, 6.7\", Full HD+\r\nHệ điều hành: Android 10\r\nCamera sau: Chính 64 MP & Phụ 12 MP, 5 MP, 5 MP\r\nCamera trước: 32 MP\r\nCPU: Snapdragon 730 8 nhân\r\nRAM: 8 GB\r\nBộ nhớ trong: 128 GB\r\nThẻ nhớ: MicroSD, hỗ trợ tối đa 512 GB\r\nThẻ SIM: 2 Nano SIM, Hỗ trợ 4G\r\nDung lượng pin: 4500 mAh, có sạc nhanh\r\nBảo mật: Mở khoá khuôn mặt, Mở khoá vân tay dưới màn hình\r\n', 1, 12000000, 11990000, 'samsung8.jpg', '256GB', 5, '2020-05-03 00:00:00', '2020-05-26 00:00:00', '3'),
(27, 'Điện thoại oppo f1s ', 'Màn hìnhCông nghệ màn hình IPS LCD\r\nĐộ phân giải HD (720 x 1280 pixels)\r\nMàn hình rộng 5.5\"\r\nMặt kính cảm ứng Kính cường lực Gorilla Glass 4\r\nCamera sauĐộ phân giải 13 MP\r\nQuay phim Quay phim FullHD 1080p@30fps\r\nChụp ảnh nâng cao Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama\r\nCamera trướcĐộ phân giải 16 MP\r\nVideocall Hỗ trợ VideoCall thông qua ứng dụng\r\nThông tin khác\r\nQuay video Full HD, Chế độ làm đẹp,Panorama, Nhận diện khuôn mặt,Chống rung, Selfie bằng cử chỉ, Flash màn hình\r\nHệ điều hành - CPUHệ điều hành\r\nAndroid 5.1 (Lollipop)\r\nChipset (hãng SX CPU)\r\nMediatek MT6750 8 nhân\r\nTốc độ CPU\r\n1.5 GHz\r\nChip đồ họa (GPU) Mali-T860\r\n', 0, 5000000, 4990000, 'oppo4.jpg', '64GB', 2, '2020-05-01 00:00:00', '2020-05-27 00:00:00', '4'),
(28, 'Điện Thoại Nokia 2.3 ', 'Điện thoại chính hãng, Nguyên seal, Mới 100%, Chưa Active\r\nMàn hình: IPS LCD, 6.2\", HD+\r\nHệ điều hành: Android 9 Pie (Android One)\r\nCamera sau: Chính 13 MP & Phụ 2 MP\r\nCamera trước: 5 MP\r\nCPU: Mediatek MT6761 4 nhân (Helio A22)\r\nRAM: 2 GB\r\nBộ nhớ trong: 32 GB\r\nThẻ nhớ: MicroSD, hỗ trợ tối đa 512 GB\r\nThẻ SIM: 2 Nano SIM, Hỗ trợ 4G \r\nDung lượng pin: 4000 mAh\r\nTính năng: Trợ lý ảo Google Assistant, Chặn tin nhắn, Đèn pin, Chặn cuộc gọi, Mở khóa bằng khuôn mặt', 0, 4000000, 3999000, 'nokia5.jpg', '4GB/64GB', 2, '2020-05-01 00:00:00', '2020-05-31 00:00:00', '2'),
(29, 'Điện Thoại Nokia 800 Tough', 'Hàng chính hãng, mới 100%\r\nMàn hình: 2.4 inches, 17.8 cm2\r\nHệ điều hành: KaiOS\r\nCamera sau: 2 MP\r\nCamera trước: Không\r\nCPU: Dual-core (2x1.1 GHz Cortex-A7)\r\nBộ nhớ trong: 4GB 512MB\r\nThẻ nhớ: microSD, hỗ trợ lên đến 32GB\r\nThẻ SIM: Dual SIM\r\nDung lượng pin: Li-Ion 2100 mAh', 0, 2340000, 2000000, 'nokia6.jpg', '4GB', 2, '2020-05-01 00:00:00', '2020-05-27 00:00:00', '2'),
(30, 'Điện Thoại Nokia 230 Dual SIM ', 'Màn hình: 2.8\", QVGA (320 x 240pixel)\r\nDanh bạ: 2000 số\r\nJack cắm tai nghe: 3.5 mm\r\nKết nối: Bluetooth V3.0, FM radio\r\nDung lượng pin: 1200 mAh\r\nHệ điều hành: Nokia Series 30+\r\nSIM: 2 SIM thường', 0, 2109000, 2000000, 'nokia7.jpg', '2GB/16GB', 1, '2020-05-01 00:00:00', '2020-05-27 00:00:00', '2'),
(31, 'Điện Thoại OPPO F11 Pro', 'Chính hãng, Nguyên seal, Mới 100%, Chưa Active\r\nMiễn phí giao hàng toàn quốc\r\nMàn hình: LTPS LCD, 6.53\", Full HD+ (1080 x 2340 Pixels)\r\nCamera Trước/Sau: 16MP/48MP + 5MP (2 camera)\r\nCPU: MediaTek Helio P70 8 nhân\r\nBộ Nhớ: 128GB\r\nRAM: 6GB\r\nSIM tương thích: 2 Nano SIM\r\nTính năng: Mở khóa bằng vân tay, Mở khóa bằng khuôn mặt', 1, 5750000, 5700000, 'oppo5.jpg', '6GB/128GB', 4, '2020-05-01 00:00:00', '2020-05-24 00:00:00', '4'),
(32, 'Điện Thoại OPPO Reno 2F', 'Chính hãng, Mới 100%, Nguyên seal, Chưa Active\r\nMàn hình: AMOLED, 6.5\", Full HD+\r\nHệ điều hành: Android 9.0 (Pie)\r\nCamera sau: Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP\r\nCamera trước: 16 MP\r\nCPU: MediaTek Helio P70 8 nhân\r\nRAM: 8 GB\r\nThẻ nhớ: MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM: 2 Nano SIM, Hỗ trợ 4G\r\nDung lượng pin: 4000 mAh, có sạc nhanh', 1, 3000000, 2990000, 'oppo6.jpg', '2GB/16GB', 2, '2020-05-01 00:00:00', '2020-05-26 00:00:00', '4'),
(33, 'Điện Thoại OPPO A3s', '\r\nSản phẩm Chính hãng, Mới 100%, Nguyên seal, Chưa Active\r\nMiễn phí giao hàng tiêu chuẩn toàn quốc\r\nMàn hình: 6.2 inch (Màn hình siêu tràn), HD+\r\nCamera Trước: 8 MP (Hỗ trợ công nghệ A.I)\r\nCamera Sau: 13 MP + 2 MP (Camera kép)\r\nCPU: Quacolmm SDM 450 8 nhân, 1.8GHz\r\nBộ Nhớ: 16GB\r\nRAM: 2GB\r\nSIM: 2 Nano SIM\r\nTính năng: Chụp ảnh làm đẹp bằng trí tuệ nhân tạo, Chụp ảnh xóa phông, Mở khóa nhận diện khuôn mặt', 0, 2650000, 2600000, 'oppo7.jpg', '16GB', 2, '2020-05-01 00:00:00', '2020-05-28 00:00:00', '4'),
(34, 'Điện Thoại OPPO RENO 3 Pro', 'Màn hình: Sunlight Super AMOLED, 6.4\", Full HD+\r\nHệ điều hành: Android 10\r\nCamera sau: Chính 64 MP & Phụ 13 MP, 8 MP, 2 MP\r\nCamera trước: Chính 44 MP & Phụ 2 MP\r\nCPU: MediaTek Helio P95 8 nhân\r\nRAM: 8 GB\r\nBộ nhớ trong: 256 GB\r\nThẻ nhớ: MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nDung lượng pin: 4025 mAh, có sạc nhanh', 1, 13950000, 13900000, 'oppo8.jpg', '8GB/256GB', 3, '2020-05-01 00:00:00', '2020-05-28 00:00:00', '4'),
(35, 'Điện Thoại OPPO A9 2020', '\r\nChính hãng, Nguyên Seal, Mới 100%\r\nMàn hình: IPS LCD, 6.5\", HD+\r\nHệ điều hành: Android 9.0 (Pie)\r\nCamera sau: Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP\r\nCamera trước: 16 MP\r\nCPU: Qualcomm Snapdragon 665 8 nhân\r\nRAM: 8 GB\r\nBộ nhớ trong: 128 GB\r\nThẻ nhớ: MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM: 2 Nano SIM, Hỗ trợ 4G\r\nDung lượng pin: 5000 mAh', 1, 5000000, 4990000, 'oppo9.jpg', '128G/8GB', 2, '2020-05-01 00:00:00', '2020-05-31 00:00:00', '4'),
(36, 'Điện thoại Sony XPERIA Z3', 'SONY XPERIA Z3 bộ nhớ 32G\r\nHệ điều hành:Android OS, v4.4.4 (KitKat)\r\nCPU:Qualcomm Snapdragon 801,Quad-core 2.5 GHz Krait 400\r\nChip đồ họa:Adreno 330\r\nMàn hình:5.2 inch, độ phân giải Full HD1080 x 1920 pixel,\r\nRam: 3GB; Bộ nhớ trong: 32GB; Hỗ trợ thẻ nhớ 128 GB\r\nCamera chính:20.7 MP, 5248 х 3936 pixels, autofocus, LED flash; Camera phụ:2.2 MP, 1080p@30fps\r\nTình trạng máy: Máy trưng bày mới 99%.', 0, 2000000, 1990000, 'sony5.jpg', '32G', 2, '2020-05-01 00:00:00', '2020-05-27 00:00:00', '5'),
(37, 'Điện thoại Sony XPERIA Z5 PREMIUM', '\r\nCấu hình Sony Xperia Z5 Premium\r\nMàn hình:\r\nIPS LCD, 5.5\",Ultra HD (4K)\r\nHệ điều hành:\r\nAndroid 6.0 (Marshmallow)\r\nCamera sau:23 MP\r\nCamera trước:5 MP\r\nCPU:Snapdragon 810 8 nhân 64-bit\r\nRAM:3 GB\r\nBộ nhớ trong:32 GB\r\nThẻ SIM:1 Nano SIM\r\nDung lượng pin:3430 mAh\r\nKích thước màn hình (inch)5.5', 0, 3200000, 3000000, 'sony6.jpg', '12GB', 2, '2020-05-01 00:00:00', '2020-05-31 00:00:00', '5'),
(58, 'nguyet', 'fhshgiee', 1, 6000000, 0, '', '100GB', 3, '2020-06-03 20:00:48', '2020-06-03 20:00:48', '1'),
(59, 'tenten', 'dskjfbkjdsfbkjd', 1, 1200000, 0, '', '100GB', 2, '2020-06-03 20:05:32', '2020-06-03 20:05:32', '1'),
(60, 'nguyetne', 'fnkjfdjk', 1, 7000000, 0, '', '46GB', 2, '2020-06-03 20:42:54', '2020-06-03 20:42:54', '1'),
(61, 'ahihi', 'dskjfbkjdsfbkjd', 1, 1200000, 0, '', '100GB', 2, '2020-06-03 20:48:05', '2020-06-03 20:48:05', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuonghieu`
--

DROP TABLE IF EXISTS `thuonghieu`;
CREATE TABLE IF NOT EXISTS `thuonghieu` (
  `mathuonghieu` varchar(5) NOT NULL,
  `tenthuonghieu` varchar(30) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`mathuonghieu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `thuonghieu`
--

INSERT INTO `thuonghieu` (`mathuonghieu`, `tenthuonghieu`, `updated_at`, `created_at`) VALUES
('1', 'Điện thoại Apple', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('2', 'Điện thoại Nokia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('3', 'Điện thoại Samsung', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('4', 'Điện thoại Oppo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('5', 'Điện thoại Sony', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `email` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `phone` int(10) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `level` tinyint(1) NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `api_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `full_name`, `phone`, `address`, `level`, `remember_token`, `created_at`, `updated_at`, `api_token`) VALUES
(1, 'nththunguyet@gmail.com', '$2y$10$H/vpCDFLdw2YXRiIe/Axc.NyCC2VGe2g4u3vQjkTJj9VAUXN1i126', 'thu nguyet', 2147483647, 'Long An', 0, NULL, '2020-06-03 16:56:25', '2020-06-03 16:56:25', NULL),
(5, 'nththunguyet@gmail.com', '$2y$10$KFtDHAhnQyIdosfn17m5cumJjU46WlxMcAY/3.teVQE7rWwF3CYim', 'thu nguyet', 2147483647, 'Long An', 1, NULL, '2020-06-03 17:15:01', '2020-06-03 17:15:01', NULL),
(7, 'admin@gmail.com', '$2y$10$vavlgDkXwOBCp2ZEY8gnHOG47afJjVJmqSMzM920VpBZYgTfdr/UK', 'admin', 123456789, 'fsafsaf', 1, NULL, '2020-06-05 10:14:53', '2020-06-05 10:14:53', NULL),
(8, 'dh51600986@student.stu.ed', '$2y$10$Cf19qPZ413cOsH.ZoE9qZO.fNq9SukhUsHUOeUjRVsQDXpMVZeCU.', 'nguyet', 12246799, 'fhsdv', 0, NULL, '2020-06-05 10:23:26', '2020-06-05 10:23:26', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
