/*
 Navicat Premium Data Transfer

 Source Server         : daisan
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : daisan

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 20/12/2022 15:59:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for banners
-- ----------------------------
DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners`  (
  `banner_ID` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_URL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`banner_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banners
-- ----------------------------
INSERT INTO `banners` VALUES (1, 'Flash sale 11/11', 'Flash sale', 'assets/images/sliders/20_t_i_a_400kweb-03.jpg');
INSERT INTO `banners` VALUES (2, 'Hàng mới', 'Arcord & Silva', 'assets/images/sliders/aspenn-new-slider.png');

-- ----------------------------
-- Table structure for blogdetails
-- ----------------------------
DROP TABLE IF EXISTS `blogdetails`;
CREATE TABLE `blogdetails`  (
  `detail_ID` int NOT NULL AUTO_INCREMENT,
  `blog_ID` int NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_release` date NOT NULL,
  PRIMARY KEY (`detail_ID`) USING BTREE,
  INDEX `blog`(`blog_ID` ASC) USING BTREE,
  CONSTRAINT `blog` FOREIGN KEY (`blog_ID`) REFERENCES `blogs` (`blog_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blogdetails
-- ----------------------------
INSERT INTO `blogdetails` VALUES (1, 1, 'Gạch lát nền - Cách lựa chọn gạch lát nền phòng khách đẹp chuẩn xu hướng nhà đẹp 2022', '2022-11-08');

-- ----------------------------
-- Table structure for blogs
-- ----------------------------
DROP TABLE IF EXISTS `blogs`;
CREATE TABLE `blogs`  (
  `blog_ID` int NOT NULL AUTO_INCREMENT,
  `user_ID` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`blog_ID`) USING BTREE,
  INDEX `user`(`user_ID` ASC) USING BTREE,
  CONSTRAINT `user` FOREIGN KEY (`user_ID`) REFERENCES `users` (`user_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blogs
-- ----------------------------
INSERT INTO `blogs` VALUES (1, 1, 'Gạch khổ lớn và ứng dụng', 'assets/images/blog/1.jpeg', 'Trên thế giới, xu hướng thiết kế mang dấu ấn cá nhân vô cùng phổ biến trong các lĩnh vực, từ thời trang\\r\\n                đến xe hơi và đặc biệt trong lĩnh vực thiết kế nội thất. ');
INSERT INTO `blogs` VALUES (2, 1, 'TỔ ẤM 3 THẾ HỆ', 'assets/images/blog/3.jpeg', 'Giữa lòng thành phố ồn ào, có một nơi trong trẻo tiếng cười\\r\\n                                                đùa, những chuyện trò an nhiên cùng gia đình sum họp trong không khí\\r\\n                                                thượng lưu xưa cũ và tinh tế.');
INSERT INTO `blogs` VALUES (3, 1, 'PHONG CÁCH & ĐA NĂNG', 'assets/images/blog/4.jpeg', 'Những tiện nghi hiện đại trong không gian tập trung hiệu quả\\r\\n                                                & thư giãn tối đa cho căn hộ office-tel đa chức năng.');
INSERT INTO `blogs` VALUES (4, 2, 'BST PHÒNG KHÁCH - TRỌN VẸN TỪNG KHOẢNH KHẮC', 'assets/images/blog/5.jpeg', 'Không chỉ là nơi tiếp đón, phòng khách còn là không gian sum\\r\\n                                                vầy và thư giãn cho mọi thành viên trong gia đình. Hãy để BAYA chăm chút\\r\\n                                                trọn vẹn từng khoảnh khắc gặp gỡ, giờ nghỉ ban trưa hay phút quây quần\\r\\n                                                buổi tối của gia đình bạn.');
INSERT INTO `blogs` VALUES (5, 2, 'Gạch khổ lớn, mở ra không gian lớn trong ngôi nhà của bạn', 'assets/images/blog/2.jpeg', 'Trước đây, gạch khổ lớn chỉ được sử dụng chủ yếu ở các công trình lớn và sang trọng như sảnh tại các\\r\\n                trung tâm thương mại, khách sạn… thì hiện nay ta đã thấy loại gạch này được ứng dụng phổ biến hơn trong\\r\\n                nhiều không gian khác nhau như nhà ở, chung cư… Gạch khổ lớn đang là xu hướng thết kế, xây dựng thịnh\\r\\n                hành nhất hiện nay...');

-- ----------------------------
-- Table structure for order_details
-- ----------------------------
DROP TABLE IF EXISTS `order_details`;
CREATE TABLE `order_details`  (
  `od_ID` int NOT NULL AUTO_INCREMENT,
  `order_ID` int NOT NULL,
  `product_ID` int NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`od_ID`) USING BTREE,
  INDEX `order`(`order_ID` ASC) USING BTREE,
  INDEX `product`(`product_ID` ASC) USING BTREE,
  CONSTRAINT `order` FOREIGN KEY (`order_ID`) REFERENCES `orders` (`order_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `product` FOREIGN KEY (`product_ID`) REFERENCES `products` (`product_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_details
-- ----------------------------
INSERT INTO `order_details` VALUES (1, 1, 1, 1, 600.00);
INSERT INTO `order_details` VALUES (2, 2, 3, 2, 1640.00);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `order_ID` int NOT NULL AUTO_INCREMENT,
  `user_ID` int NOT NULL,
  `num_item` int NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `payment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_date` date NOT NULL,
  `recept_date` date NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`order_ID`) USING BTREE,
  INDEX `userfk`(`user_ID` ASC) USING BTREE,
  CONSTRAINT `userfk` FOREIGN KEY (`user_ID`) REFERENCES `users` (`user_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 3, 1, 600.00, 'Cash', '2022-12-05', '2022-12-14', 'done');
INSERT INTO `orders` VALUES (2, 4, 2, 1640.00, 'Cash', '2022-12-19', '2022-12-30', 'shipping');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `product_ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_URL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `sale_price` decimal(10, 2) NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` int NOT NULL,
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_ID` int NOT NULL,
  PRIMARY KEY (`product_ID`) USING BTREE,
  INDEX `tag`(`tag_ID` ASC) USING BTREE,
  CONSTRAINT `tag` FOREIGN KEY (`tag_ID`) REFERENCES `tags` (`tag_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'Cửa Nhôm Xingfa Mô Quay', 'assets/images/productss/cuaso/p1.jpg', 640.00, 600.00, 'Daisan', 0, 'Xingfa', 9);
INSERT INTO `products` VALUES (2, 'Cửa Nhôm Xingfa Mô Quay2', 'assets/images/productss/cuaso/p2.jpg', 640.00, 600.00, 'Daisan', 0, 'Xingfa', 9);
INSERT INTO `products` VALUES (3, 'Cửa nhôm APC', 'assets/images/productss/cuaso/p3.jpg', 900.00, 820.00, 'Daisan', 0, 'AFC', 9);
INSERT INTO `products` VALUES (4, 'Của Nhôm Mở Quay 3 Cánh', 'assets/images/productss/cuaso/p4.jpg', 1150.00, 1100.00, 'Daisan', 0, 'EBM', 9);
INSERT INTO `products` VALUES (5, 'Cửa Sổ Nhôm Lùa 2 Cánh', 'assets/images/productss/cuaso/p5.png', 1100.00, 1067.00, 'Daisan', 0, 'EBM', 9);
INSERT INTO `products` VALUES (6, 'Cửa Sổ Nhôm 1 Cánh PV', 'assets/images/productss/cuaso/p6.png', 1000.00, 670.00, 'Daisan', 0, 'EBM', 9);
INSERT INTO `products` VALUES (7, 'Cửa Sổ Sắt Giã Gỗ Giá Rẻ 80x100', 'assets/images/productss/cuaso/p7.jpg', 800.00, 720.00, 'Daisan', 0, 'EBM', 9);
INSERT INTO `products` VALUES (8, 'Cửa sổ nhôm hệ 55 Vát Cạnh', 'assets/images/productss/cuaso/p8.jpg', 1800.00, 1741.00, 'Daisan', 0, 'EBM', 9);
INSERT INTO `products` VALUES (9, 'Cửa Sổ Nhôm Xingfa Mở Hất', 'assets/images/productss/cuaso/p9.jpg', 830.00, 800.00, 'Daisan', 0, 'Xingfa', 9);
INSERT INTO `products` VALUES (10, 'Cửa sổ nhôm Xingfa mở quay', 'assets/images/productss/cuaso/p10.jpg', 2000.00, 1920.00, 'Daisan', 0, 'Xingfa', 9);
INSERT INTO `products` VALUES (11, 'Cửa Sổ Xếp Trượt Nhôm Xingfa', 'assets/images/productss/cuaso/p11.jpgassets/images/productss/cuaso/p12.jpg', 2000.00, 1918.00, 'Daisan', 0, 'Xingfa', 9);
INSERT INTO `products` VALUES (12, 'Cửa Sổ Nhôm Hất Xingfa', 'assets/images/productss/cuaso/p12.jpg', 1440.00, 1220.00, 'Daisan', 0, 'Xingfa', 9);
INSERT INTO `products` VALUES (13, 'Cửa Sổ Nhôm Xingfa Mở Trượt', 'assets/images/productss/cuaso/p13.jpg', 1100.00, 1067.00, 'Daisan', 0, 'Xingfa', 9);
INSERT INTO `products` VALUES (14, 'Cửa sổ Sắt Hoa Văn', 'assets/images/productss/cuaso/p14.jpg', 1500.00, 1120.00, 'Daisan', 0, 'EBM', 9);
INSERT INTO `products` VALUES (15, 'Cửa Sổ 2 Cánh PC', 'assets/images/productss/cuaso/15.jpg', 900.00, 800.00, 'Daisan', 0, 'EBM', 9);
INSERT INTO `products` VALUES (16, 'Cửa Sổ Cánh Đóng', 'assets/images/productss/cuaso/p16.jpg', 1000.00, 800.00, 'Daisan', 0, 'EBM', 9);
INSERT INTO `products` VALUES (17, 'Cửa ssor Tell Hiện Đại', 'assets/images/productss/cuaso/p17.png', 1200.00, 1120.00, 'Daisan', 0, 'EBM', 9);
INSERT INTO `products` VALUES (18, 'Cửa sổ Trượt', 'assets/images/productss/cuaso/p18.png', 900.00, 820.00, 'Daisan', 0, 'EBM', 9);
INSERT INTO `products` VALUES (19, 'Cửa Sổ Nhôm Mái Hiên', 'assets/images/productss/cuaso/p19.png', 1000.00, 820.00, 'Daisan', 0, 'EBM', 9);
INSERT INTO `products` VALUES (20, 'Cửa Sổ 2 Cánh', 'assets/images/productss/cuaso/p20.png', 500.00, 475.00, 'Daisan', 0, 'EBM', 9);
INSERT INTO `products` VALUES (21, 'Đá ốp tường BVMV 15x30', 'assets/images/productss/daoplat/p1.jpeg', 140.60, 138.60, '', 0, 'BVMV', 2);
INSERT INTO `products` VALUES (22, 'Đá ghép Nghệ An vàng độ dày 1-1.5cm', 'assets/images/productss/daoplat/p2.jpeg', 188.00, 145.00, 'Daisan', 0, 'Daisan', 2);
INSERT INTO `products` VALUES (23, 'Đá chẻ vàng Nghệ An ốp tường trang trí', 'assets/images/productss/daoplat/p3.jpeg', 500.00, 440.80, 'Daisan', 0, 'Nghệ An', 2);
INSERT INTO `products` VALUES (24, 'Đá Ghép Đà Nẵng vàng-đen ốp tường trang trí\r\n                              THK-H02', 'assets/images/productss/daoplat/p4.jpeg', 299.00, 230.00, 'Daisan', 0, 'Đà Nẵng', 2);
INSERT INTO `products` VALUES (25, 'Đá chẻ đen muối Nghệ An ốp tường trang trí', 'assets/images/productss/daoplat/p5.jpeg', 500.00, 140.00, 'Daisan', 0, 'Nghệ An', 2);
INSERT INTO `products` VALUES (26, 'Đá ghép Đà Nẵng vàng lai ốp tường trang trí', 'assets/images/productss/daoplat/p6.jpeg', 300.00, 240.00, 'Daisan', 0, 'Đà Nẵng', 2);
INSERT INTO `products` VALUES (27, 'Đá ong đen, đá ong xám kích thước 5x30x1cm', 'assets/images/productss/daoplat/p7.jpeg', 400.00, 320.85, 'Daisan', 0, 'Daisan', 2);
INSERT INTO `products` VALUES (28, 'Đá Ghép Lai Châu đa sắc ốp tường trang trí', 'assets/images/productss/daoplat/p8.jpeg', 5400.00, 4900.00, 'Daisan', 0, 'Lai Châu', 2);
INSERT INTO `products` VALUES (29, 'Đá chẻ đen muối Nghệ An ốp tường trang trí', 'assets/images/productss/daoplat/p9.jpeg', 860.00, 720.85, 'Daisan', 0, 'Nghệ An', 2);
INSERT INTO `products` VALUES (30, 'Đá mài vát cạnh vàng, đá soi cạnh trang trí sân\r\n                              vườn', 'assets/images/productss/daoplat/p10.png', 570.00, 520.85, 'Daisan', 0, 'Daisan', 2);
INSERT INTO `products` VALUES (31, 'Đá an niên bề mặt ANN G04', 'assets/images/productss/daoplat/p11.jpeg', 700.00, 600.85, 'Daisan', 0, 'Daisan', 2);
INSERT INTO `products` VALUES (32, 'Đá ong đen ( ít lỗ) ốp lát trang trí nhiều kích\r\n                              thước', 'assets/images/productss/daoplat/p12.jpeg', 300.00, 180.00, 'Daisan', 0, 'Daisan', 2);
INSERT INTO `products` VALUES (33, 'Đá vọng cát bề mặt VOC H03', 'assets/images/productss/daoplat/p13.jpeg', 400.00, 370.85, 'Daisan', 0, 'Daisan', 2);
INSERT INTO `products` VALUES (34, 'Đá vọng cát bề mặt VOC H05', 'assets/images/productss/daoplat/p14.jpeg', 400.00, 300.85, 'Daisan', 0, 'Daisan', 2);
INSERT INTO `products` VALUES (35, 'Đá vọng cát bề mặt VOC H05', 'assets/images/productss/daoplat/p15.png', 500.00, 380.85, 'Daisan', 0, 'Daisan', 2);
INSERT INTO `products` VALUES (36, 'Đá bóc xanh rêu Nghệ An ốp trang trí', 'assets/images/productss/daoplat/p16.jpeg', 653.00, 550.85, 'Daisan', 0, 'Daisan', 2);
INSERT INTO `products` VALUES (37, 'Đá chẻ trắng muối Nghệ An ốp tường trang trí', 'assets/images/productss/daoplat/p17.jpeg', 900.00, 820.00, 'Daisan', 0, 'Daisan', 2);
INSERT INTO `products` VALUES (38, 'Đá vọng cát bề mặt VOC H01', 'assets/images/productss/daoplat/p18.jpeg', 970.00, 760.00, 'Daisan', 0, 'Daisan', 2);
INSERT INTO `products` VALUES (39, 'Đá Bazan ốp tường', 'assets/images/productss/daoplat/p19.jpeg', 700.00, 620.00, 'Daisan', 0, 'Daisan', 2);
INSERT INTO `products` VALUES (40, 'Đá an niên bề mặt ANN G01', 'assets/images/productss/daoplat/p20.jpeg', 800.00, 755.00, 'Daisan', 0, 'Daisan', 2);
INSERT INTO `products` VALUES (41, 'Gạch ốp lát Eurotile BST Vọng Cát 600*600mm\r\n                                VOC-H03', 'assets/images/productss/gachoplat/p6.jpeg', 500.00, 420.85, 'Daisan', 0, 'Eurotile', 1);
INSERT INTO `products` VALUES (42, 'Gạch ốp lát Eurotile BST Vọng Cát 600*600mm\r\n                                VOC-H02', 'assets/images/productss/gachoplat/p7.jpeg', 500.00, 420.85, 'Daisan', 0, 'Eurotile', 1);
INSERT INTO `products` VALUES (43, 'Gạch ốp lát Eurotile BST Vọng Cát 600*600mm VOC-H01', 'assets/images/productss/gachoplat/p8.jpeg', 500.00, 420.85, 'Daisan', 0, 'Eurotile', 1);
INSERT INTO `products` VALUES (44, 'Gạch ốp lát Eurotile BST Thạch Khuê 600*600mm\r\n                              THK-H02', 'assets/images/productss/gachoplat/p9.jpeg', 500.00, 420.85, 'Daisan', 0, 'Eurotile', 1);
INSERT INTO `products` VALUES (45, 'Gạch ốp lát Eurotile BST Thạch Khuê 600*600mm\r\n                              THK-H01', 'assets/images/productss/gachoplat/p10.jpeg', 500.00, 420.85, 'Daisan', 0, 'Eurotile', 1);
INSERT INTO `products` VALUES (46, 'Gạch ốp lát Eurotile BST Sa Thạch 600*600mm\r\n                                SAT-H03', 'assets/images/productss/gachoplat/p11.jpeg', 500.00, 420.85, 'Daisan', 0, 'Eurotile', 1);
INSERT INTO `products` VALUES (47, 'Gạch ốp lát Eurotile BST Sa Thạch 600*600mm SAT-H02', 'assets/images/productss/gachoplat/p12.jpeg', 500.00, 420.85, 'Daisan', 0, 'Eurotile', 1);
INSERT INTO `products` VALUES (48, 'Gạch ốp lát Eurotile BST Sa Thạch 600*600mm SAT-H01', 'assets/images/productss/gachoplat/p13.jpeg', 500.00, 420.85, 'Daisan', 0, 'Eurotile', 1);
INSERT INTO `products` VALUES (49, 'Gạch ốp lát Eurotile BST Sa Thạch 600*600mm SAT-H01', 'assets/images/productss/gachoplat/p14.jpeg', 500.00, 420.85, 'Daisan', 0, 'Eurotile', 1);
INSERT INTO `products` VALUES (50, 'Gạch ốp lát Eurotile BST Thiên Di 600*600mm THD-H03', 'assets/images/productss/gachoplat/p15.jpeg', 500.00, 420.85, 'Daisan', 0, 'Eurotile', 1);
INSERT INTO `products` VALUES (51, 'Gạch ốp lát Eurotile BST Thiên Di 600*600mm THD-H02', 'assets/images/productss/gachoplat/p16.jpeg', 500.00, 420.85, 'Daisan', 0, 'Eurotile', 1);
INSERT INTO `products` VALUES (52, 'Gạch ốp lát Eurotile BST Đan Vi 600*600mm DAV-H03', 'assets/images/productss/gachoplat/p1.jpg', 500.00, 420.85, 'Daisan', 0, 'Eurotile', 1);
INSERT INTO `products` VALUES (53, 'Gạch ốp lát Eurotile BST Đan Vi 600*600mm DAV-H04', 'assets/images/productss/gachoplat/p2.jpg', 500.00, 420.85, 'Daisan', 0, 'Eurotile', 1);
INSERT INTO `products` VALUES (54, 'Gạch ốp lát Eurotile BST Đan Vi 600*600mm DAV-H02', 'assets/images/productss/gachoplat/p3.jpg', 500.00, 420.85, 'Daisan', 0, 'Eurotile', 1);
INSERT INTO `products` VALUES (55, 'Gạch ốp lát Eurotile BST Đan Vi 600*600mm DAV-H01', 'assets/images/productss/gachoplat/p4.jpg', 500.00, 420.85, 'Daisan', 0, 'Eurotile', 1);
INSERT INTO `products` VALUES (56, 'Gạch ốp lát Eurotile BST Vọng Cát 600*600mm VOC-H05\r\n                              RAVENNA', 'assets/images/productss/gachoplat/p5.jpg', 500.00, 420.85, 'Daisan', 0, 'Eurotile', 1);
INSERT INTO `products` VALUES (57, 'Gạch khổ lớn cao cấp nhập khẩu Ấn Độ men matt 60*120', 'assets/images/productss/gachoplat/p18.jpeg', 900.00, 820.00, 'Daisan', 0, 'India', 1);
INSERT INTO `products` VALUES (58, 'Gạch khổ lớn cao cấp nhập khẩu Ấn Độ Olivia Nero', 'assets/images/productss/gachoplat/p18.jpeg', 900.00, 820.00, 'Daisan', 0, 'India', 1);
INSERT INTO `products` VALUES (59, 'Gạch khổ lớn cao cấp nhập khẩu Ấn Độ Gris Pulpis', 'assets/images/productss/gachoplat/p19.jpeg', 900.00, 820.00, 'Daisan', 0, 'India', 1);
INSERT INTO `products` VALUES (60, 'Gạch khổ lớn cao cấp nhập khẩu Ấn Độ Chrometic\r\n                                Pearl', 'assets/images/productss/gachoplat/p20.jpeg', 900.00, 820.00, 'Daisan', 0, 'India', 1);
INSERT INTO `products` VALUES (61, 'Nẹp nhựa nối sàn JANMI NS-229', 'assets/images/productss/nep/p1.jpg', 50.00, 30.00, 'Daisan', 0, 'Daisan', 10);
INSERT INTO `products` VALUES (62, 'Nẹp nhựa nối sàn JANMI NS-229', 'assets/images/productss/nep/p2.jpg', 53.00, 43.85, 'Daisan', 0, 'Daisan', 10);
INSERT INTO `products` VALUES (63, 'Nẹp trát góc dương AW3-10S / A3-10S (w)', 'assets/images/productss/nep/p3.jpg', 50.00, 45.85, 'Daisan', 0, 'Daisan', 10);
INSERT INTO `products` VALUES (64, 'Nẹp chặn vữa SP-10', 'assets/images/productss/nep/p4.jpg', 24.00, 20.85, 'Daisan', 0, 'Daisan', 10);
INSERT INTO `products` VALUES (65, 'NẸP SÀN TRANG TRÍ SPC15', 'assets/images/productss/nep/p5.jpg', 30.00, 20.85, 'Daisan', 0, 'Daisan', 10);
INSERT INTO `products` VALUES (66, 'Nẹp góc nhựa ốp gạch uPVC Straight Edge Tile Trim', 'assets/images/productss/nep/p6.png', 44.00, 30.85, 'Daisan', 0, 'Daisan', 10);
INSERT INTO `products` VALUES (67, 'NẸP NHỰA SÀN GỖ SPC5', 'assets/images/productss/nep/p7.jpg', 59.00, 55.58, 'Daisan', 0, 'Daisan', 10);
INSERT INTO `products` VALUES (68, 'Nẹp góc nhựa ốp gạch (Vuông) uPVC Tile Corner Trim\r\n                              (Square)', 'assets/images/productss/nep/p8.jpeg', 70.00, 60.00, 'Daisan', 0, 'Daisan', 10);
INSERT INTO `products` VALUES (69, 'Nẹp góc nhựa vát tô trát uPVC Plaster Chamfer Bead\r\n                              (Flange)', 'assets/images/productss/nep/p9.jpeg', 80.00, 77.85, 'Daisan', 0, 'Daisan', 10);
INSERT INTO `products` VALUES (70, 'NẸP NHỰA ỐP LÁT T12', 'assets/images/productss/nep/p10.jpg', 50.00, 46.85, 'Daisan', 0, 'Daisan', 10);
INSERT INTO `products` VALUES (71, 'Nẹp cầu thang chống trơn trượt DE-1', 'assets/images/productss/nep/p11.jpeg', 70.00, 60.85, 'Daisan', 0, 'Daisan', 10);
INSERT INTO `products` VALUES (72, 'Nẹp chỉ ngắt nước GMN-01', 'assets/images/productss/nep/p12.jpeg', 88.00, 66.85, 'Daisan', 0, 'Daisan', 10);
INSERT INTO `products` VALUES (73, 'NẸP SÀN SPC8', 'assets/images/productss/nep/p13.jpg', 88.00, 77.85, 'Daisan', 0, 'Daisan', 10);
INSERT INTO `products` VALUES (74, 'NẸP NHỰA MÓC NƯỚC (CHỈ NGẮT NƯỚC)', 'assets/images/productss/nep/p14.jpeg', 36.00, 33.85, 'Daisan', 0, 'Daisan', 10);
INSERT INTO `products` VALUES (75, 'NẸP NHỰA PC', 'assets/images/productss/nep/p15.jpg', 50.00, 34.85, 'Daisan', 0, 'Daisan', 10);
INSERT INTO `products` VALUES (76, 'Nẹp khe co giãn bê tông JBT-08 (100md /40thanh\r\n                              2.5m)', 'assets/images/productss/nep/p16.jpeg', 60.00, 55.00, 'Daisan', 0, 'Daisan', 10);
INSERT INTO `products` VALUES (77, 'Nẹp góc nhựa ốp gạch uPVC Tile Trim Regular', 'assets/images/productss/nep/p17.png', 90.00, 82.00, 'Daisan', 0, 'Daisan', 10);
INSERT INTO `products` VALUES (78, 'Nẹp góc nhựa ốp gạch uPVC Tile Trim Regular', 'assets/images/productss/nep/p18.jpg', 100.00, 82.00, 'Daisan', 0, 'Daisan', 10);
INSERT INTO `products` VALUES (79, 'NẸP NHỰA ỐP LÁT TJ10', 'assets/images/productss/nep/p19.jpg', 90.00, 84.00, 'Daisan', 0, 'Daisan', 10);
INSERT INTO `products` VALUES (80, 'Nẹp vát góc G-TA-25', 'assets/images/productss/nep/p20.jpg', 90.00, 80.00, 'Daisan', 0, 'Daisan', 10);
INSERT INTO `products` VALUES (81, 'Ván Gỗ Thông Vân Bông (600 x 100 x 260 mm)', 'assets/images/productss/sango/p1.jpeg', 640.00, 600.00, 'Daisan', 0, 'Daisan', 4);
INSERT INTO `products` VALUES (82, 'Ván Gỗ Thông Walnut (500 x 100 x 260 mm)', 'assets/images/productss/sango/p2.jpeg', 555.00, 510.00, 'Daisan', 0, 'Daisan', 4);
INSERT INTO `products` VALUES (83, 'Gỗ óc chó DongSung (500 x 100 x 260 mm)', 'assets/images/productss/sango/p3.jpg', 900.00, 820.00, 'Daisan', 0, 'DongSung', 4);
INSERT INTO `products` VALUES (84, 'Ván Gỗ Thông Suôn Thẳng (1000 x 100 x 260 mm)', 'assets/images/productss/sango/p4.jpeg', 1150.00, 1100.00, 'Daisan', 0, 'Daisan', 4);
INSERT INTO `products` VALUES (85, 'Sàn gỗ tự nhiên Woodtec AlRiS α - SOL - Natural\r\n                              beige', 'assets/images/productss/sango/p5.jpeg', 1100.00, 1067.00, 'Daisan', 0, 'Daisan', 4);
INSERT INTO `products` VALUES (86, 'Sàn gỗ Marinefloor Laminate-Flooring-1 SGM05 đậm', 'assets/images/productss/sango/p6.jpeg', 1100.00, 1067.00, 'Daisan', 0, 'Marinefloor', 4);
INSERT INTO `products` VALUES (87, 'Sàn gỗ Marinefloor ENGINEERED OAK SGM07', 'assets/images/productss/sango/p7.jpeg', 800.00, 720.00, 'Daisan', 0, 'Marinefloor', 4);
INSERT INTO `products` VALUES (88, 'Gỗ phong cứng Live Natural Extra wide', 'assets/images/productss/sango/p8.jpeg', 1800.00, 1741.00, 'Daisan', 0, 'Daisan', 4);
INSERT INTO `products` VALUES (89, 'Sàn gỗ SUTRA 8mm-LH285 600*600mm', 'assets/images/productss/sango/p9.jpg', 830.00, 800.00, 'Daisan', 0, 'SUTRA', 4);
INSERT INTO `products` VALUES (90, 'Sàn gỗ tự nhiên Woodtec AlRiS α - SOL - Gỗ Cherry châu\r\n                              phi', 'assets/images/productss/sango/p10.jpeg', 2000.00, 1920.00, 'Daisan', 0, ' AlRiS', 4);
INSERT INTO `products` VALUES (91, 'Gỗ Cherry đen Live Natural Extra wide', 'assets/images/productss/sango/p12.jpeg', 2000.00, 1810.00, 'Daisan', 0, 'Daisan', 4);
INSERT INTO `products` VALUES (92, 'Sàn gỗ SUTRA 8mm-LH378 (600 x 600)mm', 'assets/images/productss/sango/p13.jpg', 1800.00, 1220.00, 'Daisan', 0, 'SUTRA', 4);
INSERT INTO `products` VALUES (93, 'Sàn gỗ tự nhiên Woodtec AC 2016-2019 - Casual Brown', 'assets/images/productss/sango/p14.jpeg', 1100.00, 1067.00, 'Daisan', 0, 'Daisan', 4);
INSERT INTO `products` VALUES (94, 'Sàn gỗ SUTRA 8mm-LH304 600*600mm DAV-H02', 'assets/images/productss/sango/p15.jpg', 1200.00, 1120.00, 'Daisan', 0, 'Daisan', 4);
INSERT INTO `products` VALUES (95, 'Sàn gỗ Kronotex D2821 (1380 x 157 x 10mm)', 'assets/images/productss/sango/p16.jpg', 900.00, 800.00, 'Daisan', 0, 'Kronotex', 4);
INSERT INTO `products` VALUES (96, 'Sàn gỗ Kronotex D2967 (1380 x 157 x 10mm)', 'assets/images/productss/sango/p18.jpg', 900.00, 800.00, 'Daisan', 0, 'Kronotex', 4);
INSERT INTO `products` VALUES (97, 'Sàn gỗ ASIAN-A8888 (1380 x 157 x 10mm)', 'assets/images/productss/sango/p19.gif', 1200.00, 1120.00, 'Daisan', 0, 'ASIA', 4);
INSERT INTO `products` VALUES (98, 'Gạch khổ lớn cao cấp nhập khẩu Ấn Độ Olivia Nero', 'assets/images/productss/sango/p19.jpg', 900.00, 820.00, 'Daisan', 0, 'Daisan', 4);
INSERT INTO `products` VALUES (99, 'Sàn gỗ KRONOTEX D3587 (1380 x 157 x 10mm)', 'assets/images/productss/sango/p20.jpeg', 900.00, 820.00, 'Daisan', 0, 'Kronotex', 4);
INSERT INTO `products` VALUES (100, 'Sàn SPC vân gỗ VFloor V601 (1380 x 157 x 10mm)', 'assets/images/productss/sango/p21.jpeg', 500.00, 475.00, 'Daisan', 0, 'Daisan', 4);
INSERT INTO `products` VALUES (101, 'Sơn Xịt Kẽm Lạnh ZG400 (Màu Bạc Sáng)', 'assets/images/productss/sonnoithat/p1.jpegassets/images/productss/sonnoithat/p1.jpeg', 200.00, 160.00, 'Daisan', 0, 'Daisan', 3);
INSERT INTO `products` VALUES (102, 'Sơn dầu JOTUN ESSENCE siêu bóng SDJ01– 2.5 lít', 'assets/images/productss/sonnoithat/p1.jpg', 220.00, 180.00, 'Daisan', 0, 'Daisan', 3);
INSERT INTO `products` VALUES (103, 'Bột trét ngoại thất cao cấp TOA Pro Putty', 'assets/images/productss/sonnoithat/p2.png', 230.00, 190.00, 'Daisan', 0, 'Daisan', 3);
INSERT INTO `products` VALUES (104, 'Bột bả xử lý tường - Nextcoat', 'assets/images/productss/sonnoithat/p1.jpeg', 10.00, 4.76, 'Daisan', 0, 'Daisan', 3);
INSERT INTO `products` VALUES (105, 'Sơn dầu AVATAR 17.5 lít', 'assets/images/productss/sonnoithat/p5.png', 1500.00, 1200.00, 'Daisan', 0, 'Daisan', 3);
INSERT INTO `products` VALUES (106, 'Sơn sàn EPOXY EXP­-LINE', 'assets/images/productss/sonnoithat/p6.png', 250.00, 230.00, 'Daisan', 0, 'Daisan', 3);
INSERT INTO `products` VALUES (107, 'Sơn sàn Kawasaki', 'assets/images/productss/sonnoithat/p22.png', 230.00, 210.00, 'Daisan', 0, 'Daisan', 3);
INSERT INTO `products` VALUES (108, 'SƠN LÓT CHỐNG GỈ OEXPO ZOCO OXIDE PRIMER', 'assets/images/productss/sonnoithat/p8.png', 210.00, 200.00, 'Daisan', 0, 'OEXPO', 3);
INSERT INTO `products` VALUES (109, 'Sơn lót ngoại thất cao cấp LOT+ CHỐNG KIỀM VƯỢT TRỘI 18', 'assets/images/productss/sonnoithat/p10.png', 3500.00, 3032.00, 'Daisan', 0, 'Daisan', 3);
INSERT INTO `products` VALUES (110, 'SƠN NỘI THẤT SIÊU TRẮNG A-5000', 'assets/images/productss/sonnoithat/p11.png', 350.00, 310.85, 'Daisan', 0, 'Daisan', 3);
INSERT INTO `products` VALUES (111, 'SƠN LÓT SKY LEGEND ALKALISEAL', 'assets/images/productss/sonnoithat/p12.jpg', 350.00, 320.00, 'Daisan', 0, 'ALKALISEAL', 3);
INSERT INTO `products` VALUES (112, 'SƠN LÓT SKY LEGEND ALKALI PRIMER', 'assets/images/productss/sonnoithat/p13.jpg', 400.00, 350.00, 'Daisan', 0, 'ALKALI', 3);
INSERT INTO `products` VALUES (113, 'Sơn siêu bóng vượt trội PROTECTOR 3+ 5 lít', 'assets/images/productss/sonnoithat/p14.png', 1300.00, 1112.00, 'Daisan', 0, 'PROTECTOR', 3);
INSERT INTO `products` VALUES (114, 'SƠN CHỐNG THẤM OEXPO ZOCO WATER PROOF', 'assets/images/productss/sonnoithat/p15.png', 350.00, 330.00, 'Daisan', 0, 'OEXPO', 3);
INSERT INTO `products` VALUES (115, 'Sơn nội thất cao cấp LANMYA BÓNG NGỌC TRAI 17 lít', 'assets/images/productss/sonnoithat/p16.png', 4000.00, 3710.00, 'Daisan', 0, 'LANMYA', 3);
INSERT INTO `products` VALUES (116, 'SƠN LÓT ALEX ULTRA PRIMER IN', 'assets/images/productss/sonnoithat/p17.jpg', 300.00, 280.00, 'Daisan', 0, 'ALEX', 3);
INSERT INTO `products` VALUES (117, 'Keo Epoxy lót sàn Orion RN-900', 'assets/images/productss/sonnoithat/p18.jpeg', 44.74, 37.85, 'Daisan', 0, 'Epoxy', 3);
INSERT INTO `products` VALUES (118, 'Sơn phủ bóng 5 lít Kokor-PB-5L', 'assets/images/productss/sonnoithat/p19.jpg', 1300.00, 1200.00, 'Daisan', 0, 'Kokor', 3);
INSERT INTO `products` VALUES (119, 'SƠN NỘI THẤT SIÊU BÓNG, SIÊU MƯỢT S3000', 'assets/images/productss/sonnoithat/p20.png', 350.00, 320.00, 'Daisan', 0, 'Daisan', 3);
INSERT INTO `products` VALUES (120, 'Sơn lót nội thất chống kiềm Cponpaint K2', 'assets/images/productss/sonnoithat/p21.png', 900.00, 820.00, 'Daisan', 0, 'Cponpaint', 3);
INSERT INTO `products` VALUES (121, 'Xốp Cuộn HS-W05', 'assets/images/productss/tamoptuong/p1.jpeg', 140.00, 110.00, 'Daisan', 0, 'Daisan', 5);
INSERT INTO `products` VALUES (122, 'Xốp Cuộn HS-W08', 'assets/images/productss/tamoptuong/p2.jpeg', 140.00, 110.00, 'Daisan', 0, 'Daisan', 5);
INSERT INTO `products` VALUES (123, 'Xốp Cuộn HS-W05', 'assets/images/productss/tamoptuong/p3.jpeg', 140.00, 110.00, 'Daisan', 0, 'Daisan', 5);
INSERT INTO `products` VALUES (124, 'Xốp Cuộn HS-W08', 'assets/images/productss/tamoptuong/p4.jpeg', 140.00, 110.00, 'Daisan', 0, 'Daisan', 5);
INSERT INTO `products` VALUES (125, 'Xốp Cuộn HS-W03', 'assets/images/productss/tamoptuong/p5.jpeg', 140.00, 110.00, 'Daisan', 0, 'Daisan', 5);
INSERT INTO `products` VALUES (126, 'Xốp Cuộn HS-W06', 'assets/images/productss/tamoptuong/p6.jpeg', 140.00, 110.00, 'Daisan', 0, 'Daisan', 5);
INSERT INTO `products` VALUES (127, 'Xốp Cuộn HS-W01', 'assets/images/productss/tamoptuong/p7.jpeg', 140.00, 110.00, '', 0, 'Daisan', 5);
INSERT INTO `products` VALUES (128, 'Tấm nhôm U-shaped ceilings', 'assets/images/productss/tamoptuong/p8.jpg', 210.00, 200.00, 'Daisan', 0, 'Daisan', 5);
INSERT INTO `products` VALUES (129, 'Tấm ốp tường vân gỗ TGW-8606', 'assets/images/productss/tamoptuong/p9.jpeg', 320.00, 307.47, 'Daisan', 0, 'Daisan', 5);
INSERT INTO `products` VALUES (130, 'Đá xuyên sáng dòng B (TGT-B805 TGT B806 TGT-B805)', 'assets/images/productss/tamoptuong/p10.jpeg', 1300.00, 1273.00, 'Daisan', 0, 'Daisan', 5);
INSERT INTO `products` VALUES (131, 'Tấm ốp tường vân gỗ 8.5mm TGW-8608', 'assets/images/productss/tamoptuong/p12.jpeg', 350.00, 307.47, 'Daisan', 0, 'Daisan', 5);
INSERT INTO `products` VALUES (132, 'Tấm ốp tường vân gỗ 8.5mm TGW-8605', 'assets/images/productss/tamoptuong/p13.jpg', 320.00, 307.47, 'Daisan', 0, 'Daisan', 5);
INSERT INTO `products` VALUES (133, 'Tấm ốp tường vân gỗ 8.5mm TGW-8604', 'assets/images/productss/tamoptuong/p14.jpeg', 400.00, 307.47, 'Daisan', 0, 'Daisan', 5);
INSERT INTO `products` VALUES (134, 'Tấm ốp tường vân gỗ 8.5mm TGW-8602', 'assets/images/productss/tamoptuong/p15.jpeg', 320.00, 307.47, 'Daisan', 0, 'Daisan', 5);
INSERT INTO `products` VALUES (135, 'Lam chắn nắng 85R kích thước lớn phù hợp', 'assets/images/productss/tamoptuong/p16.jpg', 900.00, 710.00, 'Daisan', 0, 'Daisan', 5);
INSERT INTO `products` VALUES (136, 'SƠN LÓT ALEX ULTRA PRIMER IN', 'assets/images/productss/sonnoithat/p17.jpg', 300.00, 280.00, 'Daisan', 0, 'Daisan', 5);
INSERT INTO `products` VALUES (137, 'Keo Epoxy lót sàn Orion RN-900', 'assets/images/productss/sonnoithat/p18.jpeg', 44.00, 33.00, 'Daisan', 0, 'Daisan', 5);
INSERT INTO `products` VALUES (138, 'Sơn phủ bóng 5 lít Kokor-PB-5L', 'assets/images/productss/sonnoithat/p19.jpg', 900.00, 800.00, 'Daisan', 0, 'Daisan', 5);
INSERT INTO `products` VALUES (139, 'SƠN NỘI THẤT SIÊU BÓNG, MƯỢT', 'assets/images/productss/sonnoithat/p20.png', 350.00, 320.00, 'Daisan', 0, 'Daisan', 5);
INSERT INTO `products` VALUES (140, 'Sơn lót nội thất chống kiềm Cponpaint K2', 'assets/images/productss/sonnoithat/p21.png', 900.00, 820.00, 'Daisan', 0, 'Daisan', 5);
INSERT INTO `products` VALUES (141, 'Ngói màu Lama L104', 'assets/images/productss/vatlieumai/p1.jpg', 640.00, 600.00, 'Daisan', 0, 'Daisan', 8);
INSERT INTO `products` VALUES (142, 'Ngói lợp 22', 'assets/images/productss/vatlieumai/p2.jpeg', 15.00, 10.00, 'Daisan', 0, 'Daisan', 8);
INSERT INTO `products` VALUES (143, 'Ngói giả đá Acem Xanh ghi 601', 'assets/images/productss/vatlieumai/p3.jpeg', 170.00, 160.00, 'Daisan', 0, 'Daisan', 8);
INSERT INTO `products` VALUES (144, 'Tấm lợp Sóng ngói ASA thế hệ mới', 'assets/images/productss/vatlieumai/p4.jpg', 150.00, 100.00, 'Daisan', 0, 'Daisan', 8);
INSERT INTO `products` VALUES (145, 'Ngói Vảy Cá Lớn', 'assets/images/productss/vatlieumai/p5.jpg', 200.00, 167.00, 'Daisan', 0, 'Daisan', 8);
INSERT INTO `products` VALUES (146, 'Ngói Vảy Cá Lớn', 'assets/images/productss/vatlieumai/p6.jpeg', 1000.00, 670.00, 'Daisan', 0, 'Daisan', 8);
INSERT INTO `products` VALUES (147, 'Ngói màu sóng trơn Acem 71014 Đỏ', 'assets/images/productss/vatlieumai/p7.png', 80.00, 70.00, 'Daisan', 0, 'Daisan', 8);
INSERT INTO `products` VALUES (148, 'gói màu Đồng Tâm LOPNLNS706', 'assets/images/productss/vatlieumai/p8.jpg', 50.00, 41.00, 'Daisan', 0, 'Daisan', 8);
INSERT INTO `products` VALUES (149, 'Ngói màu Lama L104t', 'assets/images/productss/vatlieumai/p9.jpg', 830.00, 800.00, 'Daisan', 0, 'Daisan', 8);
INSERT INTO `products` VALUES (150, 'Ngói cổ NG-01', 'assets/images/productss/vatlieumai/p10.png', 200.00, 100.00, 'Daisan', 0, 'Daisan', 8);
INSERT INTO `products` VALUES (151, 'Ngói màu sóng trơn Acem 847 Xanh lá', 'assets/images/productss/vatlieumai/p11.png', 200.00, 140.00, 'Daisan', 0, 'Daisan', 8);
INSERT INTO `products` VALUES (152, 'Ngói cuối mái', 'assets/images/productss/vatlieumai/p12.jpg', 340.00, 220.86, 'Daisan', 0, 'Daisan', 8);
INSERT INTO `products` VALUES (153, 'Ngói cuối mái RubyRD07', 'assets/images/productss/vatlieumai/p13.jpeg', 200.00, 167.00, 'Daisan', 0, 'Daisan', 8);
INSERT INTO `products` VALUES (154, 'Ngói màu Nhật Bản Ruby RD09', 'assets/images/productss/vatlieumai/p14.jpg', 150.00, 120.00, 'Daisan', 0, 'Daisan', 8);
INSERT INTO `products` VALUES (155, 'Ngói màu Ruby RD12 màu xám ghi', 'assets/images/productss/vatlieumai/p15.jpg', 90.00, 80.00, 'Daisan', 0, 'Daisan', 8);
INSERT INTO `products` VALUES (156, 'Ngói màu Ruby RD01 màu đỏ cam', 'assets/images/productss/vatlieumai/p16.jpg', 100.00, 80.00, 'Daisan', 0, 'Daisan', 8);
INSERT INTO `products` VALUES (157, 'Ngói màu NP 14', 'assets/images/productss/vatlieumai/p17.jpg', 140.00, 120.00, 'Daisan', 0, 'Daisan', 8);
INSERT INTO `products` VALUES (158, 'Ngói màu Đồng Tâm LOPNLLS508', 'assets/images/productss/vatlieumai/p18.jpg', 90.00, 80.00, 'Daisan', 0, 'Daisan', 8);
INSERT INTO `products` VALUES (159, 'gói màu Ruby RD05 màu xanh mực', 'assets/images/productss/vatlieumai/p19.jpg', 100.00, 80.00, 'Daisan', 0, 'Daisan', 8);
INSERT INTO `products` VALUES (160, 'Ngói màu Đồng Tâm LOPNLLS905', 'assets/images/productss/vatlieumai/p20.jpg', 80.00, 75.00, 'Daisan', 0, 'Daisan', 8);
INSERT INTO `products` VALUES (161, 'Xi măng Vicem Hà Tiên đa dụng', 'assets/images/productss/vatlieutho/ximang/p1.png', 90.00, 84.50, 'Daisan', 0, 'Vicem', 6);
INSERT INTO `products` VALUES (162, 'Xi măng Phú Thọ đa dụng', 'assets/images/productss/vatlieutho/ximang/p2.png', 89.00, 83.00, 'Daisan', 0, 'Phú Thọ', 6);
INSERT INTO `products` VALUES (163, 'Xi măng Công Thanh', 'assets/images/productss/vatlieutho/ximang/congthanh.png', 140.00, 110.00, 'Daisan', 0, 'Công Thanh', 6);
INSERT INTO `products` VALUES (164, 'Xi măng Hải Vân', 'assets/images/productss/vatlieutho/ximang/haivan.png', 110.00, 90.00, 'Daisan', 0, 'Hải Vân', 6);
INSERT INTO `products` VALUES (165, 'Xi măng Holcim đa dụng', 'assets/images/productss/vatlieutho/ximang/holcim.png', 100.00, 85.00, 'Daisan', 0, 'Holcim', 6);
INSERT INTO `products` VALUES (166, 'Cống tròn D400', 'assets/images/productss/vatlieutho/betong/p1.jpg', 640.00, 550.00, 'Daisan', 0, 'Daisan', 6);
INSERT INTO `products` VALUES (167, 'Cống hộp BTCT', 'assets/images/productss/vatlieutho/betong/conghopBTCT.png', 1400.00, 1110.00, 'Daisan', 0, 'Daisan', 6);
INSERT INTO `products` VALUES (168, 'Cống tròn âm dương', 'assets/images/productss/vatlieutho/betong/congtronamduong.png', 1210.00, 800.00, 'Daisan', 0, 'Daisan', 6);
INSERT INTO `products` VALUES (169, 'Cống tròn Minh Hạnh D200', 'assets/images/productss/vatlieutho/betong/congtronminhhanhd200.jpg', 1320.00, 1000.47, 'Daisan', 0, 'Daisan', 6);
INSERT INTO `products` VALUES (170, 'Cống trong Minh Hạnh D2000', 'assets/images/productss/vatlieutho/betong/congtronminhhanhd2000.jpg', 2300.00, 2273.00, 'Daisan', 0, 'Daisan', 6);
INSERT INTO `products` VALUES (171, 'Cống tròn minh hạnh D400', 'assets/images/productss/vatlieutho/betong/congtronminhhanhd400.jpg', 1350.00, 1307.00, 'Daisan', 0, 'Daisan', 6);
INSERT INTO `products` VALUES (172, 'Thép góc V50', 'assets/images/productss/vatlieutho/betong/thepgocv50.png', 320.00, 307.47, 'Daisan', 0, 'Daisan', 6);
INSERT INTO `products` VALUES (173, 'Thép ống công nghiệp ASTM A53', 'assets/images/productss/vatlieutho/satthep/p1.jpeg', 400.00, 320.00, 'Daisan', 0, 'Daisan', 6);
INSERT INTO `products` VALUES (174, 'Thép góc L40', 'assets/images/productss/vatlieutho/satthep/thepgocL40.png', 420.00, 320.00, 'Daisan', 0, 'Daisan', 6);
INSERT INTO `products` VALUES (175, 'Thép Hòa Phát phi 14', 'assets/images/productss/vatlieutho/satthep/thephoaphatphi14.jpg', 400.00, 300.00, 'Daisan', 0, 'Daisan', 6);
INSERT INTO `products` VALUES (176, 'Thép Hòa Phát phi 18', 'assets/images/productss/vatlieutho/satthep/thephoaphatphi18.jpg', 400.00, 300.00, 'Daisan', 0, 'Daisan', 6);
INSERT INTO `products` VALUES (177, 'Thép hộp', 'assets/images/productss/vatlieutho/satthep/thephop.jpeg', 350.00, 280.00, 'Daisan', 0, 'Daisan', 6);
INSERT INTO `products` VALUES (178, 'Thép không gỉ Minh Dức', 'assets/images/productss/vatlieutho/satthep/thepkhonggiminhduc.png', 450.00, 400.00, 'Daisan', 0, 'Daisan', 6);
INSERT INTO `products` VALUES (179, 'Thép lập là 60 x 16', 'assets/images/productss/vatlieutho/satthep/theplapla.jpg', 400.00, 300.00, 'Daisan', 0, 'Daisan', 6);
INSERT INTO `products` VALUES (180, 'Thép trong phi 10', 'assets/images/productss/vatlieutho/satthep/theptronphi10.jpg', 350.00, 320.00, 'Daisan', 0, 'Daisan', 6);
INSERT INTO `products` VALUES (181, 'LƯỠI CẮT GẠCH RUBI CEV 200 PRO', 'assets/images/productss/vattunganhda/p1.jpeg', 500.00, 470.25, 'Daisan', 0, 'Daisan', 7);
INSERT INTO `products` VALUES (182, 'Lưỡi cắt bluebird 150 đa năng', 'assets/images/productss/vattunganhda/p2.jpg', 150.00, 130.00, 'Daisan', 0, 'Daisan', 7);
INSERT INTO `products` VALUES (183, 'Bát soi phào Granite phi 300', 'assets/images/productss/vattunganhda/p3.jpg', 230.00, 190.00, 'Daisan', 0, 'Daisan', 7);
INSERT INTO `products` VALUES (184, 'Lưỡi cắt bluebird 125 đa năng', 'assets/images/productss/vattunganhda/p4.jpg', 78.00, 72.00, 'Daisan', 0, 'Daisan', 7);
INSERT INTO `products` VALUES (185, 'Lưỡi cắt kingblue 125x2.0', 'assets/images/productss/vattunganhda/p5.jpg', 74.00, 66.00, 'Daisan', 0, 'Daisan', 7);
INSERT INTO `products` VALUES (186, 'Lưỡi cắt bluebird 105x1.3 đa năng', 'assets/images/productss/vattunganhda/p6.jpg', 59.00, 53.00, 'Daisan', 0, 'Daisan', 7);
INSERT INTO `products` VALUES (187, 'Lưỡi cắt bluebird 125 đa năng', 'assets/images/productss/vattunganhda/p8.jpg', 78.00, 72.00, 'Daisan', 0, 'Daisan', 7);
INSERT INTO `products` VALUES (188, 'Nỉ đánh bóng đá hoa cương SOCHA', 'assets/images/productss/vattunganhda/p9.jpg', 30.00, 26.00, 'Daisan', 0, 'Daisan', 7);
INSERT INTO `products` VALUES (189, 'Lưỡi cắt bluebird 150 đa năng', 'assets/images/productss/vattunganhda/p10.jpg', 80.00, 75.00, 'Daisan', 0, 'Daisan', 7);
INSERT INTO `products` VALUES (190, 'Lưỡi cắt Bluebird ĐN110', 'assets/images/productss/vattunganhda/p11.jpg', 68.00, 61.00, 'Daisan', 0, 'Daisan', 7);
INSERT INTO `products` VALUES (191, 'Lưỡi cắt kingblue 125x2.0', 'assets/images/productss/vattunganhda/p12.jpg', 74.00, 66.00, 'Daisan', 0, 'Daisan', 7);
INSERT INTO `products` VALUES (192, 'Lưỡi cắt liền Kiti Ø115mm KITI-L115-B', 'assets/images/productss/vattunganhda/p13.jpeg', 85.00, 80.00, 'Daisan', 0, 'Daisan', 7);
INSERT INTO `products` VALUES (193, 'LƯỠI CẮT ƯỚT 150 NAM KIẾN', 'assets/images/productss/vattunganhda/p14.jpeg', 85.00, 82.00, 'Daisan', 0, 'Daisan', 7);
INSERT INTO `products` VALUES (194, 'LƯỠI CẮT ĐA NĂNG 105MM', 'assets/images/productss/vattunganhda/p15.jpg', 85.00, 80.00, 'Daisan', 0, 'Daisan', 7);
INSERT INTO `products` VALUES (195, 'Bát mài cạnh gạch 200 JP vàng HEC-003', 'assets/images/productss/vattunganhda/p16.jpg', 80.00, 75.00, 'Daisan', 0, 'Daisan', 7);
INSERT INTO `products` VALUES (196, 'Đá cắt GEMINI', 'assets/images/productss/vattunganhda/p17.jpeg', 70.00, 60.00, 'Daisan', 0, 'Daisan', 7);
INSERT INTO `products` VALUES (197, 'Móc ke nêm cân bằng gạch 1mm', 'assets/images/productss/vattunganhda/p18.jpeg', 200.00, 150.00, 'Daisan', 0, 'Daisan', 7);
INSERT INTO `products` VALUES (198, 'Ke nhựa ốp lát DKNC-842 1,5 mm', 'assets/images/productss/vattunganhda/p19.jpeg', 200.00, 150.00, 'Daisan', 0, 'Daisan', 7);
INSERT INTO `products` VALUES (199, 'Ke nhựa chữ thập ốp lát gạch 1mm (1kg)', 'assets/images/productss/vattunganhda/p20.png', 150.00, 120.00, 'Daisan', 0, 'Daisan', 7);
INSERT INTO `products` VALUES (200, 'Ke nhựa ốp lát gạch 4mm', 'assets/images/productss/vattunagnhda/p21.jpeg', 150.00, 120.00, 'Daisan', 0, 'Daisan', 7);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `role_ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`role_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'admin', 'quản trị viên');
INSERT INTO `roles` VALUES (2, 'customer', 'khách hàng');

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags`  (
  `tag_ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_URL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`tag_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES (1, 'Gạch ốp lát', 'assets/images/icons-products/gach-op-lat.jpeg');
INSERT INTO `tags` VALUES (2, 'Đá ốp lát', 'assets/images/icons-products/da-op-lat.jpeg');
INSERT INTO `tags` VALUES (3, 'Sơn nội thất & ngoại thất', 'assets/images/icons-products/son-noi-ngoai-that.png');
INSERT INTO `tags` VALUES (4, 'Sàn gỗ & phụ kiện', 'assets/images/icons-products/son-noi-ngoai-that.png');
INSERT INTO `tags` VALUES (5, 'Tấm ốp tường', 'assets/images/icons-products/tam-op-tuong.png');
INSERT INTO `tags` VALUES (6, 'Vật liệu thô', 'assets/images/icons-products/vat-lieu-tho.png');
INSERT INTO `tags` VALUES (7, 'Vật tư ngành đá', 'assets/images/icons-products/vat-tu-nganh-da.jpeg');
INSERT INTO `tags` VALUES (8, 'Vật liệu mái', 'assets/images/icons-products/vat-lieu-mai.png');
INSERT INTO `tags` VALUES (9, 'Cửa sổ, bản lề & phụ kiện', 'assets/images/icons-products/cua.png');
INSERT INTO `tags` VALUES (10, 'Nẹp', 'assets/images/icons-products/nep.png');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `user_ID` int NOT NULL AUTO_INCREMENT,
  `role_ID` int NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dob` date NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_ID`) USING BTREE,
  INDEX `role`(`role_ID` ASC) USING BTREE,
  CONSTRAINT `role` FOREIGN KEY (`role_ID`) REFERENCES `roles` (`role_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 1, 'anhtuan', '123456', 'tuan@gmail.com', 'Bùi Anh Tuấn', 'nam', '2000-03-08', '0374839438', 'quận 9');
INSERT INTO `users` VALUES (2, 1, 'thaiduc', '123456', 'duc@gmail.com', 'Nguyễn Thái Đức', 'nam', '2000-06-14', '0325965966', 'thủ đức');
INSERT INTO `users` VALUES (3, 2, 'mythuy', '123456', 'thuy@gmail.com', 'Trần Mỹ Thùy', 'nữ', '2010-07-01', '0345556662', 'bình thạnh');
INSERT INTO `users` VALUES (4, 2, 'test', '123456', 'test@gmail.com', 'Tester', 'nữ', '2020-07-23', '0388884526', 'Hà Nội');

-- ----------------------------
-- Table structure for wishlist_details
-- ----------------------------
DROP TABLE IF EXISTS `wishlist_details`;
CREATE TABLE `wishlist_details`  (
  `detail_ID` int NOT NULL,
  `wl_ID` int NOT NULL,
  `product_ID` int NOT NULL,
  PRIMARY KEY (`detail_ID`) USING BTREE,
  INDEX `wl`(`wl_ID` ASC) USING BTREE,
  INDEX `product_wld`(`product_ID` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wishlist_details
-- ----------------------------
INSERT INTO `wishlist_details` VALUES (1, 1, 1);
INSERT INTO `wishlist_details` VALUES (2, 1, 50);
INSERT INTO `wishlist_details` VALUES (3, 2, 3);
INSERT INTO `wishlist_details` VALUES (4, 2, 4);

-- ----------------------------
-- Table structure for wishlists
-- ----------------------------
DROP TABLE IF EXISTS `wishlists`;
CREATE TABLE `wishlists`  (
  `wl_ID` int NOT NULL AUTO_INCREMENT,
  `user_ID` int NOT NULL,
  PRIMARY KEY (`wl_ID`) USING BTREE,
  INDEX `user_wl`(`user_ID` ASC) USING BTREE,
  CONSTRAINT `user_wl` FOREIGN KEY (`user_ID`) REFERENCES `users` (`user_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wishlists
-- ----------------------------
INSERT INTO `wishlists` VALUES (1, 3);
INSERT INTO `wishlists` VALUES (2, 4);

SET FOREIGN_KEY_CHECKS = 1;
