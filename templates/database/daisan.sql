SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- TABLE STRUCTURE FOR BANNER
DROP TABLE IF EXISTS 'banner';
CREATE TABLE 'banner' (
  'id' varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  'title1' varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  'title2' varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  'imgURL' varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	PRIMARY KEY (`id`, `imgURL`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;
-- INSERT VALUE BANNER
INSERT INTO `banner` VALUES ('banner01', 'Flash Sale 11/11', 'Gạch Ốp Lát Trang Trí', 'assets/images/sliders/slider1.jpg');
INSERT INTO `banner` VALUES ('banner02', 'Hàng mới', 'Keo Ốp Lát RubyMax', 'assets/images/sliders/slider2.jpg');

-- BLOG

DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog`  (
  `userid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `blogid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `thumbnailURL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `smallcontent` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`blogid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- INSERT VALUE BANNER
INSERT INTO `blog` VALUES ('001', 'blog001', 'assets/images/blog/1.jpeg', 'Gạch khổ lớn và ứng dụng. Những ưu điểm và nhược điểm của gạch khổ lớn', 'Trên thế giới, xu hướng thiết kế mang dấu ấn cá nhân vô cùng phổ biến trong các lĩnh vực, từ thời trang đến xe hơi và đặc biệt trong lĩnh vực thiết kế nội thất. Không có một giới hạn phong cách nào được đặt ra, các thiết kế gạch khổ lớn năm 2022 được kết hợp với các tiêu chí để tổng hòa nên một sắc thái mới, độc đáo. Với các kích thước 80x80, 100x100, 120x120, 60x120.. cm, xu hướng gạch ốp lát khổ lớn như được thổi một làn gió mới với các thiết kế bề mặt ấn tượng, độc đáo, mang đến một thông điệp mới về sự phóng khoáng, dấu ấn riêng biệt của mỗi gia chủ.');
INSERT INTO `blog` VALUES ('002', 'blog002', 'assets/images/blog/2.jpeg', 'Gạch khổ lớn, mở ra không gian lớn trong ngôi nhà của bạn', 'Trước đây, gạch khổ lớn chỉ được sử dụng chủ yếu ở các công trình lớn và sang trọng như sảnh tại các trung tâm thương mại, khách sạn… thì hiện nay ta đã thấy loại gạch này được ứng dụng phổ biến hơn trong nhiều không gian khác nhau như nhà ở, chung cư… Gạch khổ lớn đang là xu hướng thết kế, xây dựng thịnh hành nhất hiện nay...');
INSERT INTO `blog` VALUES ('003', 'blog003', 'assets/images/blog/3.jpeg', 'Gạch lát nền - Cách lựa chọn gạch lát nền phòng khách đẹp, chuẩn xu hướng nhà đẹp 2022', 'iện nay, gạch lát nền rất đa dạng về màu sắc, họa tiết cũng như chất liệu. Điều này khiến nhiều gia chủ băn khoăn không biết cách lựa chọn loại gạch lát nền phòng khách sao cho hợp với tổng thể nội thất căn phòng, đồng thời đảm bảo công năng sử dụng cũng như độ bền đẹp theo thời gian. Hãy cùng Daisan.vn tìm hiểu các mẫu gạch lát nền và kinh nghiệm chọn gạch lát nền cho không gian phòng khách của gia đình mình.');

-- CART
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `cartid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `productid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `quantity` int(100) NOT NULL,
  PRIMARY KEY (`cartid`, `productid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- INSERT VALUE CART
-- ----------------------------
INSERT INTO `cart` VALUES ('cart002', 'gachhw03', 1);
INSERT INTO `cart` VALUES ('cart003', 'gachhw04', 1);

-- CONTAINER 

DROP TABLE IF EXISTS `container`;
CREATE TABLE `container`  (
  `productid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `quantity` int(255) NOT NULL,
  PRIMARY KEY (`productid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;
-- ----------------------------
-- INSERT VALUE CONTAINER
-- ----------------------------
INSERT INTO `container` VALUES ('gachw03', 200);
INSERT INTO `container` VALUES ('gachhw04', 200);
INSERT INTO `container` VALUES ('gachhw05', 200);
INSERT INTO `container` VALUES ('gachhw06', 200);
INSERT INTO `container` VALUES ('gachhw07', 200);
INSERT INTO `container` VALUES ('gachhw08', 200);
INSERT INTO `container` VALUES ('gachhw09', 200);
-- Thêm sản phẩm vào đây !



-- ORDER
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `orderid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `receptdate` datetime(0) NULL DEFAULT NULL,
  `deliverydate` datetime(0) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`email`, `orderid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;
-- ----------------------------
-- INSERT VALUE ORDER
-- ----------------------------
INSERT INTO `order` VALUES ('nguyenthaiduc0212@gmail.com', 'o011', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '7,8,tphcm', NULL);
INSERT INTO `order` VALUES ('buianhtuan@gmail.com', 'o009', '2022-01-27 00:00:00', '2022-02-03 00:00:00', '3,5,tphcm', NULL);
INSERT INTO `order` VALUES ('mythuy@gmail.com', 'o003', NULL, NULL, NULL, '0');
INSERT INTO `order` VALUES ('mythuy@gmail.com', 'o004', NULL, NULL, NULL, '0');
INSERT INTO `order` VALUES ('nguyenthaiduc0212@gmail.com', 'o010', '2022-01-28 00:00:00', '2022-02-04 00:00:00', 'null,null,null', NULL);
INSERT INTO `order` VALUES ('buianhtuan@gmail.com', 'o001', NULL, NULL, NULL, '0');
INSERT INTO `order` VALUES ('buianhtuan@gmail.com', 'o002', NULL, NULL, NULL, '0');
INSERT INTO `order` VALUES ('buianhtuan@gmail.com', 'o005', NULL, NULL, NULL, '0');
INSERT INTO `order` VALUES ('buianhtuan@gmail.com', 'o006', NULL, NULL, NULL, '0');
INSERT INTO `order` VALUES ('buianhtuan@gmail.com', 'o007', NULL, NULL, NULL, '0');
INSERT INTO `order` VALUES ('buianhtuan@gmail.com', 'o008', '2022-01-24 00:00:00', '2022-01-31 00:00:00', NULL, '0');


-- ORDER DETAIL
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail`  (
  `orderid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `productid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `quantity` int(2) NULL DEFAULT NULL,
  `totalprice` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`orderid`, `productid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;
-- ----------------------------
-- INSERT VALUE DETAIL
-- ----------------------------
INSERT INTO `orderdetail` VALUES ('o001', 'gachhw01', 2, 500000);
INSERT INTO `orderdetail` VALUES ('o003', 'gachhw02', 1, 3500000);
INSERT INTO `orderdetail` VALUES ('o003', 'gachhw01', 1, 3500000);
INSERT INTO `orderdetail` VALUES ('o003', 'gachhw03', 1, 650000);
INSERT INTO `orderdetail` VALUES ('o004', 'gachhw04', 1, 3500000);
INSERT INTO `orderdetail` VALUES ('o004', 'gachw05', 1, 650000);
INSERT INTO `orderdetail` VALUES ('o005', 'gachhw06', 1, 1992000);
INSERT INTO `orderdetail` VALUES ('o005', 'gachhw07', 1, 3500000);
INSERT INTO `orderdetail` VALUES ('o005', 'gachhw08', 1, 650000);
INSERT INTO `orderdetail` VALUES ('o006', 'gachhw08', 1, 1992000);
INSERT INTO `orderdetail` VALUES ('o006', 'gachhw09', 1, 3500000);
INSERT INTO `orderdetail` VALUES ('o006', 'gachhw01', 1, 650000);
INSERT INTO `orderdetail` VALUES ('o007', 'ximang01', 1, 1992000);
INSERT INTO `orderdetail` VALUES ('o007', 'son01', 1, 3500000);
INSERT INTO `orderdetail` VALUES ('o007', 'son02', 1, 650000);
INSERT INTO `orderdetail` VALUES ('o007', 'son03', 1, 120000);
INSERT INTO `orderdetail` VALUES ('o007', 'son04', 1, 892000);
INSERT INTO `orderdetail` VALUES ('o009', 'son05', 1, 5200000);
INSERT INTO `orderdetail` VALUES ('o011', 'son06', 1, 600000);


-- PRODUCT

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `imgURL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `saleprice` int(11) NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;
-- ----------------------------
-- INSERT VALUE PRODUCT
-- ----------------------------
INSERT INTO `product` VALUES ('gachhw01', 'Gạch ốp lát Eurotile BST Vọng Cát 600*600mm VOC-H01', 'http://localhost:8080/assets/images/products/gachoplat/p1.jpg', 500000, 420850, '', '0', 'Eurotile', 'gach');
INSERT INTO `product` VALUES ('gachhw02', 'Gạch ốp lát Eurotile BST Vọng Cát 600*600mm VOC-H02', 'http://localhost:8080/assets/images/products/gachoplat/p2.jpg', 500000, 420850, '', '0', 'Eurotile', 'gach');
INSERT INTO `product` VALUES ('gachhw02', 'Gạch ốp lát Eurotile BST Vọng Cát 600*600mm VOC-H03', 'http://localhost:8080/assets/images/products/gachoplat/p3.jpg', 500000, 420850, '', '0', 'Eurotile', 'gach');
-- ADD 100 sản phẩm vào đây
-- 


-- USER
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `role` int(11) NULL DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dob` date NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `card` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `whishlist` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cartid` varbinary(255) NULL DEFAULT NULL,
  `orderid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;