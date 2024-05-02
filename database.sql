
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

CREATE TABLE cart (
  Id int(11) NOT NULL,
  id_khachhang int(11) NOT NULL,
  cart_status int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO cart (Id, id_khachhang, cart_status) VALUES
(1, 6, 2),
(2, 6, 0);

CREATE TABLE cart_details (
  id_cart int(11) NOT NULL,
  id_sanpham int(11) NOT NULL,
  name_sanpham varchar(45) DEFAULT NULL,
  soluong_sanpham int(11) NOT NULL,
  price_sanpham int(11) NOT NULL,
  image_sanpham varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO cart_details (id_cart, id_sanpham, name_sanpham, soluong_sanpham, price_sanpham, image_sanpham) VALUES
(1, 44, 'Lựu Ai Cập', 1, 200000, '46.jpg'),
(2, 46, 'Nước Cam Tươi', 3, 45000, '12.jpg'),
(3, 0, 'Nho đen ', 3, 280000, '4.jpg'),
(3, 11, 'Cải Xanh Hữu Cơ', 2, 20000, '15.jpg'),
(4, 0, 'Nho đen ', 1, 280000, '4.jpg'),
(5, 9, 'Ngũ Cốc Rau Củ Cho Bé', 1, 500000, '31.jpg'),
(5, 6, 'Bơ', 3, 95000, '7.jpg'),
(6, 46, 'Nước Cam', 3, 45000, '12.jpg'),
(6, 7, 'Đậu Cove Hữu Cơ  ', 1, 30000, '14.jpg'),
(7, 46, 'Nón AAA', 3, 45000, 'non3.jpg'),
(9, 41, 'BALO 444', 1, 145000, 'BALO2.jpg'),
(10, 44, 'Nón qqq', 1, 200000, 'non1.jpg'),
(1, 44, 'Nón qqq', 1, 200000, 'non1.jpg'),
(1, 2, 'Áo khoác nam lny', 1, 280000, 'AOKHOACNAMQSE.jpg'),
(1, 14, 'Áo somi a1w', 1, 45000, 'AOSOMINAMTG7.jpg'),
(2, 43, 'BALO YEY', 2, 120000, 'BALO3.jpg');

CREATE TABLE groupsp (
  id int(11) NOT NULL,
  name varchar(45) NOT NULL,
  content text NOT NULL,
  image varchar(200) NOT NULL,
  status int(11) NOT NULL,
  created_at int(11) NOT NULL,
  updated_at int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO groupsp (id, name, content, image, status, created_at, updated_at) VALUES
(1, 'Áo khoác', '', '', 0, 0, 0),
(2, 'Áo thun , somi', '', '', 0, 0, 0),
(3, 'Quần', '', '', 0, 0, 0),
(4, 'Phụ kiện', '', '', 0, 0, 2021);

CREATE TABLE product (
  id int(11) NOT NULL,
  name varchar(45) NOT NULL,
  detail text NOT NULL,
  price float NOT NULL,
  soluong int(11) NOT NULL,
  image varchar(200) NOT NULL,
  pricenew float NOT NULL,
  updated_at datetime NOT NULL,
  status int(11) NOT NULL,
  groupid int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO product (id, name, detail, price, soluong, image, pricenew, updated_at, status, groupid) VALUES
(0, 'Áo khoác nam tgh', '', 350000, 49, 'AOKHOACNAM1.jpg', 280000, '2022-05-02 20:28:10', 1, 1),
(1, 'Áo khoác nam ujt', '', 300000, 100, 'AOKHOACNAMEPO.jpg', 280000, '2022-05-02 17:59:39', 1, 1),
(2, 'Áo khoác nam lny', '', 300000, 99, 'AOKHOACNAMQSE.jpg', 280000, '2022-04-03 07:49:00', 1, 1),
(3, 'Áo khoác nam der', '', 500000, 100, 'AOKHOACNAMRF.jpg', 380000, '2021-04-13 07:49:00', 1, 1),
(4, 'Áo khoác nam klo', '', 50000, 100, 'AOKHOACNAMTAFT.jpg', 45000, '2022-04-03 07:49:00', 1, 1),
(5, 'Áo khoác nam aws', '', 15000, 100, 'AOKHOACNAMTH4.jpg', 12000, '2022-04-03 07:49:00', 1, 1),
(6, 'Áo khoác nam axd', '', 100000, 97, 'AOKHOACNAMTH5.jpg', 95000, '2022-04-03 07:49:00', 1, 1),
(7, 'Áo khoác nam mby ', '', 40000, 99, 'AOKHOACNAMTY10.jpg', 30000, '2022-04-03 07:49:00', 1, 1),
(8, 'Áo khoác nam tcf', '', 30000, 100, 'AOKHOACNAMTY10.jpg', 28000, '2022-05-02 17:51:40', 1, 1),
(9, 'Áo khoác nam mxb', '', 500000, 99, 'AOKHOACNAMTYY4.jpg', 500000, '2022-04-03 07:49:00', 1, 1),
(10, 'Áo somi 4hj', '', 200000, 100, 'aosomiblue.jpg', 190000, '2022-04-03 07:49:00', 1, 2),
(11, 'Áo somi rt7h', '', 20000, 100, 'aosomicaro.jpg', 20000, '2022-04-02 07:49:00', 1, 2),
(12, 'Áo somi e4c', '', 350000, 10, 'aosomiden.jpg', 350000, '2022-04-03 07:49:00', 1, 2),
(13, 'Áo somi c9p', '', 290000, 100, 'AOSOMINAMTG6.jpg', 285000, '2022-04-03 07:49:00', 1, 2),
(14, 'Áo somi a1w', '', 50000, 99, 'AOSOMINAMTG7.jpg', 45000, '2022-04-04 07:49:00', 1, 2),
(15, 'Áo somi x36', '', 450000, 100, 'AOSOMINAMTG8.jpg', 430000, '2022-04-03 07:49:00', 1, 2),
(16, 'Quần jean nam p10', '', 35000, 100, 'quan_jean_nam_M1QJ203.jpg', 30000, '2022-04-03 07:49:00', 1, 3),
(17, 'Quần jean nam upu', '', 180000, 100, 'quan_jean_nam_M1QJ1.jpg', 150000, '2022-04-03 07:49:00', 1, 3),
(18, 'Áo somi 743', '', 25000, 100, 'AOSOMINAMTT4.jpg', 22000, '2022-04-03 07:49:00', 1, 2),
(19, 'Áo somi e1e', '', 500000, 100, 'aosomisacmau.jpg', 48000, '2022-04-04 07:49:00', 1, 2),
(20, 'Áo thun 1ll', '', 100000, 100, 'aothundensoctrang.jpg', 900000, '2022-04-03 07:49:00', 1, 2),
(21, 'Áo thun aqq', '', 20000, 100, 'AOTHUNNAMIO4.jpg', 20000, '2022-04-03 07:49:00', 1, 2),
(22, 'Áo thun zmz', '', 10000, 100, 'AOTHUNNAMKUNH.jpg', 10000, '2022-04-03 07:49:00', 1, 2),
(23, 'Áo thun t92', '', 30000, 100, 'AOTHUNNAMLP3.jpg', 28000, '2022-04-03 07:49:00', 1, 2),
(24, 'Áo thun d41', '', 70000, 100, 'AOTHUNNAMRD1.jpg', 65000, '2022-04-03 07:49:00', 1, 2),
(25, 'Quần jean nam 145', '', 20000, 100, 'quan_jean_nam_04FSFTR.jpg', 19000, '2022-04-03 07:49:00', 1, 3),
(26, 'Quần jean nam cfe', '', 50000, 100, 'quan_jean_nam_M1QJN.jpg', 46000, '2022-04-04 07:49:00', 1, 3),
(27, 'Quần jean nam mp1', '', 80000, 100, 'quan_jean_nam_M1QJN02.jpg', 69000, '2022-04-04 07:49:00', 1, 3),
(28, 'Quần short nam vcx', '', 300000, 100, 'quan_short_FSFRI.jpg', 280000, '2022-04-04 07:49:00', 1, 3),
(29, 'Quần jean nam ery', '', 35000, 100, 'QUANJEAN_NAMFBDS.jpg', 30000, '2022-04-04 07:49:00', 1, 3),
(30, 'Quần jean nam 2m1', '', 20000, 100, 'QUANJEAN_NAMFBGRI.jpg', 20000, '2022-04-03 07:49:00', 1, 3),
(31, 'Quần jean nam qa4', '', 290000, 100, 'QUANJEAN_NAMFBGRIER.jpg', 290000, '2022-04-04 07:49:00', 1, 3),
(32, 'Quần jean nam lza', '', 50000, 100, 'QUANJEAN_NAMFBGRIH.jpg', 40000, '2022-04-04 07:49:00', 1, 3),
(33, 'Quần jean nam o99', '', 24000, 100, 'QUANJEAN_NAMFBYH.jpg', 24000, '2022-04-04 07:49:00', 1, 3),
(34, 'Quần jean nam qym', '', 100000, 100, 'QUANJEAN_NAMFBGRK.jpg', 98000, '2022-04-04 07:49:00', 1, 3),
(35, 'Quần jean nam 2l4', '', 44000, 100, 'QUANJEAN_NAMFBGRU.jpg', 40000, '2022-04-04 07:49:00', 1, 3),
(36, 'Quần short nam bgh', '', 90000, 100, 'QUANSHORTGIK.jpg', 90000, '2022-04-04 07:49:00', 1, 3),
(37, 'Quần short nam 5hy', '', 80000, 100, 'QUANSHORTHYU.jpg', 75000, '2022-04-04 07:49:00', 1, 3),
(38, 'Quần short nam c5c', '', 130000, 100, 'QUANSHORTKOP.jpg', 130000, '2022-04-04 07:49:00', 1, 3),
(39, 'Áo nam tyh4lk', '', 80000, 100, 'ao14.jpg', 75000, '2022-04-03 07:49:00', 1, 2),
(40, 'BALO 5jk', '', 100000, 100, 'BALO2.jpg', 80000, '2022-04-04 07:49:00', 1, 4),
(41, 'BALO 444', '', 170000, 99, 'BALO2.jpg', 145000, '2022-04-01 07:49:00', 1, 4),
(42, 'BALO 78P', '', 50000, 100, 'BALO1.jpg', 50000, '2022-04-02 07:49:00', 1, 4),
(43, 'BALO YEY', '', 150000, 98, 'BALO3.jpg', 120000, '2021-04-13 07:49:00', 1, 4),
(44, 'Nón qqq', '', 220000, 98, 'non1.jpg', 200000, '2022-04-03 07:49:00', 1, 4),
(45, 'Nón sss', '', 40000, 100, 'non2.jpg', 30000, '2022-04-04 07:49:00', 1, 4),
(46, 'Nón AAA', '', 50000, 94, 'non3.jpg', 45000, '2022-05-02 18:45:49', 0, 4),
(47, 'Nón fjj', '', 175000, 100, 'non4.jpg', 140000, '2022-04-03 07:49:00', 1, 4),
(123456, 'Banh mi', '', 123456, 23, 'images.jpg', 0, '2022-05-27 08:26:37', 0, 1);

CREATE TABLE `user` (
  id int(11) NOT NULL,
  name varchar(200) NOT NULL,
  password varchar(100) NOT NULL,
  email varchar(100) NOT NULL,
  address varchar(200) NOT NULL,
  phone varchar(20) NOT NULL,
  created_at datetime NOT NULL,
  updated_at datetime NOT NULL,
  position int(1) NOT NULL,
  username varchar(200) NOT NULL,
  tinhtrang int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO user (id, name, password, email, address, phone, created_at, updated_at, position, username, tinhtrang) VALUES
(1, 'Nguyễn Hoàng Sơn Kha', '25f9e794323b453885f5181f1b624d0b', 'kha123@gmail.com', 'TPHCM', '0964635913', '2022-04-01 18:18:27', '2022-05-26 20:07:16', 1, 'kha123', 0),
(2, 'Hồ Thanh Khang', '659ae7b7a6aeb65d00346f1afeaff123', '123456789@gmail.com', 'TPHCM', '0384054122', '2022-04-04 18:19:27', '2022-05-26 20:20:16', 2, 'hothanh123', 0),
(3, 'Nguyễn Linh Khánh', 'e10adc3949ba59abbe56e057f20f883e', 'linhkhanh@gmail.com', 'TPHCM', '0168405412', '2022-04-03 18:18:27', '2022-05-26 20:44:16', 2, 'linhkhanh123', 0),
(4, 'mi mi', 'e10adc3949ba59abbe56e057f20f883e', 'nhuyhuynh@gmail.com', 'TPHCM', '5166262623', '2022-05-03 20:53:45', '2021-05-14 20:53:45', 2, 'hotran123', 0),
(5, 'ADMIN', '3f7caa3d471688b704b73e9a77b1107f', 'kha123@gmai.com', 'TPHCM', '0383604306', '2022-05-26 21:11:18', '2022-05-26 21:17:13', 1, 'ADMIN', 0),
(6, 'user123', '6ad14ba9986e3615423dfca256d04e3f', 'kha123@gmai.com', 'TPHCM', '0254157889', '2022-05-27 07:12:41', '2022-05-27 07:12:41', 2, 'user123', 0),
(7, 'Ho Thanh Khang', '50fbc43eacbf152023a54eb1dd8a58cc', 'hothanh2092002@gmail.com', 'TPHCM', '0123456789', '2022-05-27 07:23:50', '2022-05-27 07:53:25', 1, 'khang234', 0);


ALTER TABLE cart
  ADD UNIQUE KEY Id (Id);

ALTER TABLE groupsp
  ADD PRIMARY KEY (id);

ALTER TABLE product
  ADD PRIMARY KEY (id),
  ADD KEY groupid (groupid);

ALTER TABLE user
  ADD PRIMARY KEY (id);
