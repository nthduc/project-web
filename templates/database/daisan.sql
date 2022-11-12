/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100605
 Source Host           : localhost:3306
 Source Schema         : daisan

 Target Server Type    : MySQL
 Target Server Version : 100605
 File Encoding         : 65001

 Date: 12/11/2022 22:42:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `title2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `imgURL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`, `imgURL`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('banner01', 'Flash Sale 11/11', 'Flash Sale', 'assets/images/sliders/20_t_i_a_400kweb-03.jpg');
INSERT INTO `banner` VALUES ('banner02', 'Hàng mới', 'Accord & Silva', 'assets/images/sliders/aspenn-new-slider.png');

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog`  (
  `userid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `blogid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnailURL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `smallcontent` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`blogid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('001', 'blog001', 'assets/images/blog/1.jpeg', 'Gạch khổ lớn và ứng dụng. Những ưu điểm và nhược điểm của gạch khổ lớn', 'Trên thế giới, xu hướng thiết kế mang dấu ấn cá nhân vô cùng phổ biến trong các lĩnh vực, từ thời trang\r\n                đến xe hơi và đặc biệt trong lĩnh vực thiết kế nội thất. Không có một giới hạn phong cách nào được đặt\r\n                ra, các thiết kế gạch khổ lớn năm 2022 được kết hợp với các tiêu chí để tổng hòa nên một sắc thái mới,\r\n                độc đáo. Với các kích thước 80x80, 100x100, 120x120, 60x120.. cm, xu hướng gạch ốp lát khổ lớn như được\r\n                thổi một làn gió mới với các thiết kế bề mặt ấn tượng, độc đáo, mang đến một thông điệp mới về sự phóng\r\n                khoáng, dấu ấn riêng biệt của mỗi gia chủ.');
INSERT INTO `blog` VALUES ('002', 'blog002', 'assets/images/blog/2.jpeg', 'Gạch khổ lớn, mở ra không gian lớn trong ngôi nhà của bạn', 'Trước đây, gạch khổ lớn chỉ được sử dụng chủ yếu ở các công trình lớn và sang trọng như sảnh tại các\r\n                trung tâm thương mại, khách sạn… thì hiện nay ta đã thấy loại gạch này được ứng dụng phổ biến hơn trong\r\n                nhiều không gian khác nhau như nhà ở, chung cư… Gạch khổ lớn đang là xu hướng thết kế, xây dựng thịnh\r\n                hành nhất hiện nay...');
INSERT INTO `blog` VALUES ('003', 'blog003', 'assets/images/blog/3.jpeg', 'TỔ ẤM 3 THẾ HỆ', 'Giữa lòng thành phố ồn ào, có một nơi trong trẻo tiếng cười\r\n                                                đùa, những chuyện trò an nhiên cùng gia đình sum họp trong không khí\r\n                                                thượng lưu xưa cũ và tinh tế.');
INSERT INTO `blog` VALUES ('004', 'blog004', 'assets/images/blog/4.jpeg', 'PHONG CÁCH & ĐA NĂNG', 'Những tiện nghi hiện đại trong không gian tập trung hiệu quả\r\n                                                & thư giãn tối đa cho căn hộ office-tel đa chức năng.');
INSERT INTO `blog` VALUES ('005', 'blog005', 'assets/images/blog/5.jpeg', 'BST PHÒNG KHÁCH - TRỌN VẸN TỪNG KHOẢNH KHẮC', 'Không chỉ là nơi tiếp đón, phòng khách còn là không gian sum\r\n                                                vầy và thư giãn cho mọi thành viên trong gia đình. Hãy để BAYA chăm chút\r\n                                                trọn vẹn từng khoảnh khắc gặp gỡ, giờ nghỉ ban trưa hay phút quây quần\r\n                                                buổi tối của gia đình bạn.');

-- ----------------------------
-- Table structure for blogdetail
-- ----------------------------
DROP TABLE IF EXISTS `blogdetail`;
CREATE TABLE `blogdetail`  (
  `blogid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`blogid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blogdetail
-- ----------------------------
INSERT INTO `blogdetail` VALUES ('blog001', 'Gạch lát nền - Cách lựa chọn gạch lát nền phòng khách đẹp chuẩn xu hướng nhà đẹp 2022');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `cartid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `productid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`cartid`, `productid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('cart001', 'gachh01', 1);
INSERT INTO `cart` VALUES ('cart002', 'gachh02', 1);
INSERT INTO `cart` VALUES ('cart003', 'gachh03', 1);
INSERT INTO `cart` VALUES ('cart004', 'gachh04', 1);

-- ----------------------------
-- Table structure for container
-- ----------------------------
DROP TABLE IF EXISTS `container`;
CREATE TABLE `container`  (
  `productid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`productid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of container
-- ----------------------------
INSERT INTO `container` VALUES ('gachh01', 200);
INSERT INTO `container` VALUES ('gachh02', 200);
INSERT INTO `container` VALUES ('gachh03', 200);
INSERT INTO `container` VALUES ('gachh04', 200);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `orderid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `receptdate` datetime NULL DEFAULT NULL,
  `deliverydate` datetime NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`orderid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('nguyenthaiduc0212@gmail.com', 'order001', '2022-01-29 00:00:00', '2022-02-05 00:00:00', 'TP.HCM', NULL);
INSERT INTO `order` VALUES ('buianhtuan@gmail.com', 'order002', '2022-08-12 00:00:00', '2022-08-05 00:00:00', 'TP.HCM', '0');
INSERT INTO `order` VALUES ('tranthimythuy', 'order003', '2022-01-10 00:00:00', '2022-02-01 00:00:00', 'TP.HCM', '0');
INSERT INTO `order` VALUES ('tranthimythuy@gmail.com', 'order004', '2022-03-03 00:00:00', '2022-04-03 00:00:00', 'TP.HCM', '0');
INSERT INTO `order` VALUES ('buianhtuan@gmail.com', 'order005', '2022-10-10 00:00:00', '2022-08-05 00:00:00', 'TP.HCM', '0');
INSERT INTO `order` VALUES ('buianhtuan@gmail.com', 'order006', '2022-07-12 00:00:00', '2022-08-05 00:00:00', 'TP.HCM', '0');
INSERT INTO `order` VALUES ('buianhtuan@gmail.com', 'order007', NULL, NULL, 'TPHCM', '0');

-- ----------------------------
-- Table structure for orderdetail
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail`  (
  `orderid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `productid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NULL DEFAULT NULL,
  `totalprice` int NULL DEFAULT NULL,
  PRIMARY KEY (`orderid`, `productid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderdetail
-- ----------------------------
INSERT INTO `orderdetail` VALUES ('order001', 'gachh01', 1, 420850);
INSERT INTO `orderdetail` VALUES ('order002', 'gachh02', 1, 420850);
INSERT INTO `orderdetail` VALUES ('order003', 'gachh03', 1, 420850);
INSERT INTO `orderdetail` VALUES ('order004', 'gachh04', 1, 420850);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `productid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `imgURL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `price` decimal(10, 3) NULL DEFAULT NULL,
  `saleprice` decimal(10, 3) NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`productid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('da01', 'Đá ốp tường BVMV 15x30', 'assets/images/products/daoplat/p1.jpeg', 140.600, 138.600, '', '0', 'BVMV', 'da');
INSERT INTO `product` VALUES ('da02', 'Đá ghép Nghệ An vàng độ dày 1-1.5cm', 'assets/images/products/daoplat/p2.jpeg', 188.000, 145.000, NULL, '0', NULL, 'da');
INSERT INTO `product` VALUES ('da03', 'Đá chẻ vàng Nghệ An ốp tường trang trí', 'assets/images/products/daoplat/p3.jpeg', 500.000, 440.800, NULL, '0', 'Nghệ An', 'da');
INSERT INTO `product` VALUES ('da04', 'Đá Ghép Đà Nẵng vàng-đen ốp tường trang trí\r\n                              THK-H02', 'assets/images/products/daoplat/p4.jpeg', 299.000, 230.000, NULL, '0', 'Đà Nẵng', 'da');
INSERT INTO `product` VALUES ('da05', 'Đá chẻ đen muối Nghệ An ốp tường trang trí', 'assets/images/products/daoplat/p5.jpeg', 500.000, 140.000, NULL, '0', 'Nghệ An', 'da');
INSERT INTO `product` VALUES ('da06', 'Đá ghép Đà Nẵng vàng lai ốp tường trang trí', 'assets/images/products/daoplat/p6.jpeg', 300.000, 240.000, NULL, '0', 'Đà Nẵng', 'da');
INSERT INTO `product` VALUES ('da07', 'Đá ong đen, đá ong xám kích thước 5x30x1cm', 'assets/images/products/daoplat/p7.jpeg', 400.000, 320.850, NULL, '0', NULL, 'da');
INSERT INTO `product` VALUES ('da08', 'Đá Ghép Lai Châu đa sắc ốp tường trang trí', 'assets/images/products/daoplat/p8.jpeg', 5400.000, 4900.000, NULL, '0', 'Lai Châu', 'da');
INSERT INTO `product` VALUES ('da09', 'Đá chẻ đen muối Nghệ An ốp tường trang trí', 'assets/images/products/daoplat/p9.jpeg', 860.000, 720.850, NULL, '0', 'Nghệ An', 'da');
INSERT INTO `product` VALUES ('da10', 'Đá mài vát cạnh vàng, đá soi cạnh trang trí sân\r\n                              vườn', 'assets/images/products/daoplat/p10.png', 570.000, 520.850, NULL, '0', NULL, 'da');
INSERT INTO `product` VALUES ('da11', 'Đá an niên bề mặt ANN G04', 'assets/images/products/daoplat/p11.jpeg', 700.000, 600.850, NULL, '0', NULL, 'da');
INSERT INTO `product` VALUES ('da12', 'Đá ong đen ( ít lỗ) ốp lát trang trí nhiều kích\r\n                              thước', 'assets/images/products/daoplat/p12.jpeg', 300.000, 180.000, NULL, '0', NULL, 'da');
INSERT INTO `product` VALUES ('da13', 'Đá vọng cát bề mặt VOC H03', 'assets/images/products/daoplat/p13.jpeg', 400.000, 370.850, NULL, '0', NULL, 'da');
INSERT INTO `product` VALUES ('da14', 'Đá vọng cát bề mặt VOC H05', 'assets/images/products/daoplat/p14.jpeg', 400.000, 300.850, NULL, '0', NULL, 'da');
INSERT INTO `product` VALUES ('da15', 'Đá vọng cát bề mặt VOC H05', 'assets/images/products/daoplat/p15.png', 500.000, 380.850, NULL, '0', NULL, 'da');
INSERT INTO `product` VALUES ('da16', 'Đá bóc xanh rêu Nghệ An ốp trang trí', 'assets/images/products/daoplat/p16.jpeg', 653.000, 550.850, NULL, '0', NULL, 'da');
INSERT INTO `product` VALUES ('da17', 'Đá chẻ trắng muối Nghệ An ốp tường trang trí', 'assets/images/products/daoplat/p17.jpeg', 900.000, 820.000, NULL, '0', NULL, 'da');
INSERT INTO `product` VALUES ('da18', 'Đá vọng cát bề mặt VOC H01', 'assets/images/products/daoplat/p18.jpeg', 970.000, 760.000, NULL, '0', NULL, 'da');
INSERT INTO `product` VALUES ('da19', 'Đá Bazan ốp tường', 'assets/images/products/daoplat/p19.jpeg', 700.000, 620.000, NULL, '0', NULL, 'da');
INSERT INTO `product` VALUES ('da20', 'Đá an niên bề mặt ANN G01', 'assets/images/products/daoplat/p20.jpeg', 800.000, 755.000, NULL, '0', NULL, 'da');
INSERT INTO `product` VALUES ('gachh01', 'Gạch ốp lát Eurotile BST Vọng Cát 600*600mm\r\n                                VOC-H03', 'assets/images/products/gachoplat/p6.jpeg', 500.000, 420.850, NULL, '0', 'Eurotile', 'gach');
INSERT INTO `product` VALUES ('gachh02', 'Gạch ốp lát Eurotile BST Vọng Cát 600*600mm\r\n                                VOC-H02', 'assets/images/products/gachoplat/p7.jpeg', 500.000, 420.850, NULL, '0', 'Eurotile', 'gach');
INSERT INTO `product` VALUES ('gachh03', 'Gạch ốp lát Eurotile BST Vọng Cát 600*600mm VOC-H01', 'assets/images/products/gachoplat/p8.jpeg', 500.000, 420.850, NULL, '0', 'Eurotile', 'gach');
INSERT INTO `product` VALUES ('gachh04', 'Gạch ốp lát Eurotile BST Thạch Khuê 600*600mm\r\n                              THK-H02', 'assets/images/products/gachoplat/p9.jpeg', 500.000, 420.850, NULL, '0', 'Eurotile', 'gach');
INSERT INTO `product` VALUES ('gachh05', 'Gạch ốp lát Eurotile BST Thạch Khuê 600*600mm\r\n                              THK-H01', 'assets/images/products/gachoplat/p10.jpeg', 500.000, 420.850, NULL, '0', 'Eurotile', 'gach');
INSERT INTO `product` VALUES ('gachh06', 'Gạch ốp lát Eurotile BST Sa Thạch 600*600mm\r\n                                SAT-H03', 'assets/images/products/gachoplat/p11.jpeg', 500.000, 420.850, NULL, '0', 'Eurotile', 'gach');
INSERT INTO `product` VALUES ('gachh07', 'Gạch ốp lát Eurotile BST Sa Thạch 600*600mm SAT-H02', 'assets/images/products/gachoplat/p12.jpeg', 500.000, 420.850, NULL, '0', 'Eurotile', 'gach');
INSERT INTO `product` VALUES ('gachh08', 'Gạch ốp lát Eurotile BST Sa Thạch 600*600mm SAT-H01', 'assets/images/products/gachoplat/p13.jpeg', 500.000, 420.850, NULL, '0', 'Eurotile', 'gach');
INSERT INTO `product` VALUES ('gachh09', 'Gạch ốp lát Eurotile BST Sa Thạch 600*600mm SAT-H01', 'assets/images/products/gachoplat/p14.jpeg', 500.000, 420.850, NULL, '0', 'Eurotile', 'gach');
INSERT INTO `product` VALUES ('gachh10', 'Gạch ốp lát Eurotile BST Thiên Di 600*600mm THD-H03', 'assets/images/products/gachoplat/p15.jpeg', 500.000, 420.850, NULL, '0', 'Eurotile', 'gach');
INSERT INTO `product` VALUES ('gachh11', 'Gạch ốp lát Eurotile BST Thiên Di 600*600mm THD-H02', 'assets/images/products/gachoplat/p16.jpeg', 500.000, 420.850, NULL, '0', 'Eurotile', 'gach');
INSERT INTO `product` VALUES ('gachh12', 'Gạch ốp lát Eurotile BST Đan Vi 600*600mm DAV-H03', 'assets/images/products/gachoplat/p1.jpg', 500.000, 420.850, NULL, '0', 'Eurotile', 'gach');
INSERT INTO `product` VALUES ('gachh13', 'Gạch ốp lát Eurotile BST Đan Vi 600*600mm DAV-H04', 'assets/images/products/gachoplat/p2.jpg', 500.000, 420.850, NULL, '0', 'Eurotile', 'gach');
INSERT INTO `product` VALUES ('gachh14', 'Gạch ốp lát Eurotile BST Đan Vi 600*600mm DAV-H02', 'assets/images/products/gachoplat/p3.jpg', 500.000, 420.850, NULL, '0', 'Eurotile', 'gach');
INSERT INTO `product` VALUES ('gachh15', 'Gạch ốp lát Eurotile BST Đan Vi 600*600mm DAV-H01', 'assets/images/products/gachoplat/p4.jpg', 500.000, 420.850, NULL, '0', 'Eurotile', 'gach');
INSERT INTO `product` VALUES ('gachh16', 'Gạch ốp lát Eurotile BST Vọng Cát 600*600mm VOC-H05\r\n                              RAVENNA', 'assets/images/products/gachoplat/p5.jpg', 500.000, 420.850, NULL, '0', 'Eurotile', 'gach');
INSERT INTO `product` VALUES ('gachh17', 'Gạch khổ lớn cao cấp nhập khẩu Ấn Độ men matt 60*120', 'assets/images/products/gachoplat/p18.jpeg', 900.000, 820.000, NULL, '0', 'India', 'gach');
INSERT INTO `product` VALUES ('gachh18', 'Gạch khổ lớn cao cấp nhập khẩu Ấn Độ Olivia Nero', 'assets/images/products/gachoplat/p18.jpeg', 900.000, 820.000, NULL, '0', 'India', 'gach');
INSERT INTO `product` VALUES ('gachh19', 'Gạch khổ lớn cao cấp nhập khẩu Ấn Độ Gris Pulpis', 'assets/images/products/gachoplat/p19.jpeg', 900.000, 820.000, NULL, '0', 'India', 'gach');
INSERT INTO `product` VALUES ('gachh20', 'Gạch khổ lớn cao cấp nhập khẩu Ấn Độ Chrometic\r\n                                Pearl', 'assets/images/products/gachoplat/p20.jpeg', 900.000, 820.000, NULL, '0', 'India', 'gach');
INSERT INTO `product` VALUES ('nep01', 'Nẹp nhựa nối sàn JANMI NS-229', 'assets/images/products/nep/p1.jpg', 50.000, 30.000, NULL, '0', NULL, 'nep');
INSERT INTO `product` VALUES ('nep02', 'Nẹp nhựa nối sàn JANMI NS-229', 'assets/images/products/nep/p2.jpg', 53.000, 43.850, NULL, '0', NULL, 'nep');
INSERT INTO `product` VALUES ('nep03', 'Nẹp trát góc dương AW3-10S / A3-10S (w)', 'assets/images/products/nep/p3.jpg', 50.000, 45.850, NULL, '0', NULL, 'nep');
INSERT INTO `product` VALUES ('nep04', 'Nẹp chặn vữa SP-10', 'assets/images/products/nep/p4.jpg', 24.000, 20.850, NULL, '0', NULL, 'nep');
INSERT INTO `product` VALUES ('nep05', 'NẸP SÀN TRANG TRÍ SPC15', 'assets/images/products/nep/p5.jpg', 30.000, 20.850, NULL, '0', NULL, 'nep');
INSERT INTO `product` VALUES ('nep06', 'Nẹp góc nhựa ốp gạch uPVC Straight Edge Tile Trim', 'assets/images/products/nep/p6.png', 44.000, 30.850, NULL, '0', NULL, 'nep');
INSERT INTO `product` VALUES ('nep07', 'NẸP NHỰA SÀN GỖ SPC5', 'assets/images/products/nep/p7.jpg', 59.000, 55.580, NULL, '0', NULL, 'nep');
INSERT INTO `product` VALUES ('nep08', 'Nẹp góc nhựa ốp gạch (Vuông) uPVC Tile Corner Trim\r\n                              (Square)', 'assets/images/products/nep/p8.jpeg', 70.000, 60.000, NULL, '0', NULL, 'nep');
INSERT INTO `product` VALUES ('nep09', 'Nẹp góc nhựa vát tô trát uPVC Plaster Chamfer Bead\r\n                              (Flange)', 'assets/images/products/nep/p9.jpeg', 80.000, 77.850, NULL, '0', NULL, 'nep');
INSERT INTO `product` VALUES ('nep10', 'NẸP NHỰA ỐP LÁT T12', 'assets/images/products/nep/p10.jpg', 50.000, 46.850, NULL, '0', NULL, 'nep');
INSERT INTO `product` VALUES ('nep11', 'Nẹp cầu thang chống trơn trượt DE-1', 'assets/images/products/nep/p11.jpeg', 70.000, 60.850, NULL, '0', NULL, 'nep');
INSERT INTO `product` VALUES ('nep12', 'Nẹp chỉ ngắt nước GMN-01', 'assets/images/products/nep/p12.jpeg', 88.000, 66.850, NULL, '0', NULL, 'nep');
INSERT INTO `product` VALUES ('nep13', 'NẸP SÀN SPC8', 'assets/images/products/nep/p13.jpg', 88.000, 77.850, NULL, '0', NULL, 'nep');
INSERT INTO `product` VALUES ('nep14', 'NẸP NHỰA MÓC NƯỚC (CHỈ NGẮT NƯỚC)', 'assets/images/products/nep/p14.jpeg', 36.000, 33.850, NULL, '0', NULL, 'nep');
INSERT INTO `product` VALUES ('nep15', 'NẸP NHỰA PC', 'assets/images/products/nep/p15.jpg', 50.000, 34.850, NULL, '0', NULL, 'nep');
INSERT INTO `product` VALUES ('nep16', 'Nẹp khe co giãn bê tông JBT-08 (100md /40thanh\r\n                              2.5m)', 'assets/images/products/nep/p16.jpeg', 60.000, 55.000, NULL, '0', NULL, 'nep');
INSERT INTO `product` VALUES ('nep17', 'Nẹp góc nhựa ốp gạch uPVC Tile Trim Regular', 'assets/images/products/nep/p17.png', 90.000, 82.000, NULL, '0', NULL, 'nep');
INSERT INTO `product` VALUES ('nep18', 'Nẹp góc nhựa ốp gạch uPVC Tile Trim Regular', 'assets/images/products/nep/p18.jpg', 100.000, 82.000, NULL, '0', NULL, 'nep');
INSERT INTO `product` VALUES ('nep19', 'NẸP NHỰA ỐP LÁT TJ10', 'assets/images/products/nep/p19.jpg', 90.000, 84.000, NULL, '0', NULL, 'nep');
INSERT INTO `product` VALUES ('nep20', 'Nẹp vát góc G-TA-25', 'assets/images/products/nep/p20.jpg', 90.000, 80.000, NULL, '0', NULL, 'nep');
INSERT INTO `product` VALUES ('sango01', 'Ván Gỗ Thông Vân Bông (600 x 100 x 260 mm)', 'assets/images/products/sango/p1.jpeg', 640.000, 600.000, NULL, '0', NULL, 'sango');
INSERT INTO `product` VALUES ('sango02', 'Ván Gỗ Thông Walnut (500 x 100 x 260 mm)', 'assets/images/products/sango/p2.jpeg', 555.000, 510.000, NULL, '0', NULL, 'sango');
INSERT INTO `product` VALUES ('sango03', 'Gỗ óc chó DongSung (500 x 100 x 260 mm)', 'assets/images/products/sango/p3.jpg', 900.000, 820.000, NULL, '0', 'DongSung', 'sango');
INSERT INTO `product` VALUES ('sango04', 'Ván Gỗ Thông Suôn Thẳng (1000 x 100 x 260 mm)', 'assets/images/products/sango/p4.jpeg', 1150.000, 1100.000, NULL, '0', NULL, 'sango');
INSERT INTO `product` VALUES ('sango05', 'Sàn gỗ tự nhiên Woodtec AlRiS α - SOL - Natural\r\n                              beige', 'assets/images/products/sango/p5.jpeg', 1100.000, 1067.000, NULL, '0', NULL, 'sango');
INSERT INTO `product` VALUES ('sango06', 'Sàn gỗ Marinefloor Laminate-Flooring-1 SGM05 đậm', 'assets/images/products/sango/p6.jpeg', 1100.000, 1067.000, NULL, '0', 'Marinefloor', 'sango');
INSERT INTO `product` VALUES ('sango07', 'Sàn gỗ Marinefloor ENGINEERED OAK SGM07', 'assets/images/products/sango/p7.jpeg', 800.000, 720.000, NULL, '0', 'Marinefloor', 'sango');
INSERT INTO `product` VALUES ('sango08', 'Gỗ phong cứng Live Natural Extra wide', 'assets/images/products/sango/p8.jpeg', 1800.000, 1741.000, NULL, '0', NULL, 'sango');
INSERT INTO `product` VALUES ('sango09', 'Sàn gỗ SUTRA 8mm-LH285 600*600mm', 'assets/images/products/sango/p9.jpg', 830.000, 800.000, NULL, '0', 'SUTRA', 'sango');
INSERT INTO `product` VALUES ('sango10', 'Sàn gỗ tự nhiên Woodtec AlRiS α - SOL - Gỗ Cherry châu\r\n                              phi', 'assets/images/products/sango/p10.jpeg', 2000.000, 1920.000, NULL, '0', ' AlRiS', 'sango');
INSERT INTO `product` VALUES ('sango11', 'Gỗ Cherry đen Live Natural Extra wide', 'assets/images/products/sango/p12.jpeg', 2000.000, 1810.000, NULL, '0', NULL, 'sango');
INSERT INTO `product` VALUES ('sango12', 'Sàn gỗ SUTRA 8mm-LH378 (600 x 600)mm', 'assets/images/products/sango/p13.jpg', 1800.000, 1220.000, NULL, '0', 'SUTRA', 'sango');
INSERT INTO `product` VALUES ('sango13', 'Sàn gỗ tự nhiên Woodtec AC 2016-2019 - Casual Brown', 'assets/images/products/sango/p14.jpeg', 1100.000, 1067.000, NULL, '0', NULL, 'sango');
INSERT INTO `product` VALUES ('sango14', 'Sàn gỗ SUTRA 8mm-LH304 600*600mm DAV-H02', 'assets/images/products/sango/p15.jpg', 1200.000, 1120.000, NULL, '0', NULL, 'sango');
INSERT INTO `product` VALUES ('sango15', 'Sàn gỗ Kronotex D2821 (1380 x 157 x 10mm)', 'assets/images/products/sango/p16.jpg', 900.000, 800.000, NULL, '0', 'Kronotex', 'sango');
INSERT INTO `product` VALUES ('sango16', 'Sàn gỗ Kronotex D2967 (1380 x 157 x 10mm)', 'assets/images/products/sango/p18.jpg', 900.000, 800.000, NULL, '0', 'Kronotex', 'sango');
INSERT INTO `product` VALUES ('sango17', 'Sàn gỗ ASIAN-A8888 (1380 x 157 x 10mm)', 'assets/images/products/sango/p19.gif', 1200.000, 1120.000, NULL, '0', 'ASIA', 'sango');
INSERT INTO `product` VALUES ('sango18', 'Gạch khổ lớn cao cấp nhập khẩu Ấn Độ Olivia Nero', 'assets/images/products/sango/p19.jpg', 900.000, 820.000, NULL, '0', NULL, 'sango');
INSERT INTO `product` VALUES ('sango19', 'Sàn gỗ KRONOTEX D3587 (1380 x 157 x 10mm)', 'assets/images/products/sango/p20.jpeg', 900.000, 820.000, NULL, '0', 'Kronotex', 'sango');
INSERT INTO `product` VALUES ('sango20', 'Sàn SPC vân gỗ VFloor V601 (1380 x 157 x 10mm)', 'assets/images/products/sango/p21.jpeg', 500.000, 475.000, NULL, '0', NULL, 'sango');
INSERT INTO `product` VALUES ('son01', 'Sơn Xịt Kẽm Lạnh ZG400 (Màu Bạc Sáng)', 'assets/images/products/sonnoithat/p1.jpegassets/images/products/sonnoithat/p1.jpeg', 200.000, 160.000, NULL, '0', NULL, 'son');
INSERT INTO `product` VALUES ('son02', 'Sơn dầu JOTUN ESSENCE siêu bóng SDJ01– 2.5 lít', 'assets/images/products/sonnoithat/p1.jpg', 220.000, 180.000, NULL, '0', NULL, 'son');
INSERT INTO `product` VALUES ('son03', 'Bột trét ngoại thất cao cấp TOA Pro Putty', 'assets/images/products/sonnoithat/p2.png', 230.000, 190.000, NULL, '0', NULL, 'son');
INSERT INTO `product` VALUES ('son04', 'Bột bả xử lý tường - Nextcoat', 'assets/images/products/sonnoithat/p1.jpeg', 10.000, 4.760, NULL, '0', NULL, 'son');
INSERT INTO `product` VALUES ('son05', 'Sơn dầu AVATAR 17.5 lít', 'assets/images/products/sonnoithat/p5.png', 1500.000, 1200.000, NULL, '0', NULL, 'son');
INSERT INTO `product` VALUES ('son06', 'Sơn sàn EPOXY EXP­-LINE', 'assets/images/products/sonnoithat/p6.png', 250.000, 230.000, NULL, '0', NULL, 'son');
INSERT INTO `product` VALUES ('son07', 'Sơn sàn Kawasaki', 'assets/images/products/sonnoithat/p22.png', 230.000, 210.000, NULL, '0', NULL, 'son');
INSERT INTO `product` VALUES ('son08', 'SƠN LÓT CHỐNG GỈ OEXPO ZOCO OXIDE PRIMER', 'assets/images/products/sonnoithat/p8.png', 210.000, 200.000, NULL, '0', 'OEXPO', 'son');
INSERT INTO `product` VALUES ('son09', 'Sơn lót ngoại thất cao cấp LOT+ CHỐNG KIỀM VƯỢT TRỘI 18', 'assets/images/products/sonnoithat/p10.png', 3500.000, 3032.000, NULL, '0', NULL, 'son');
INSERT INTO `product` VALUES ('son10', 'SƠN NỘI THẤT SIÊU TRẮNG A-5000', 'assets/images/products/sonnoithat/p11.png', 350.000, 310.850, NULL, '0', NULL, 'son');
INSERT INTO `product` VALUES ('son11', 'SƠN LÓT SKY LEGEND ALKALISEAL', 'assets/images/products/sonnoithat/p12.jpg', 350.000, 320.000, NULL, '0', 'ALKALISEAL', 'son');
INSERT INTO `product` VALUES ('son12', 'SƠN LÓT SKY LEGEND ALKALI PRIMER', 'assets/images/products/sonnoithat/p13.jpg', 400.000, 350.000, NULL, '0', 'ALKALI', 'son');
INSERT INTO `product` VALUES ('son13', 'Sơn siêu bóng vượt trội PROTECTOR 3+ 5 lít', 'assets/images/products/sonnoithat/p14.png', 1300.000, 1112.000, NULL, '0', 'PROTECTOR', 'son');
INSERT INTO `product` VALUES ('son14', 'SƠN CHỐNG THẤM OEXPO ZOCO WATER PROOF', 'assets/images/products/sonnoithat/p15.png', 350.000, 330.000, NULL, '0', 'OEXPO', 'son');
INSERT INTO `product` VALUES ('son15', 'Sơn nội thất cao cấp LANMYA BÓNG NGỌC TRAI 17 lít', 'assets/images/products/sonnoithat/p16.png', 4000.000, 3710.000, NULL, '0', 'LANMYA', 'son');
INSERT INTO `product` VALUES ('son16', 'SƠN LÓT ALEX ULTRA PRIMER IN', 'assets/images/products/sonnoithat/p17.jpg', 300.000, 280.000, NULL, '0', 'ALEX', 'son');
INSERT INTO `product` VALUES ('son17', 'Keo Epoxy lót sàn Orion RN-900', 'assets/images/products/sonnoithat/p18.jpeg', 44.735, 37.853, NULL, '0', 'Epoxy', 'son');
INSERT INTO `product` VALUES ('son18', 'Sơn phủ bóng 5 lít Kokor-PB-5L', 'assets/images/products/sonnoithat/p19.jpg', 1300.000, 1200.000, NULL, '0', 'Kokor', 'son');
INSERT INTO `product` VALUES ('son19', 'SƠN NỘI THẤT SIÊU BÓNG, SIÊU MƯỢT S3000', 'assets/images/products/sonnoithat/p20.png', 350.000, 320.000, NULL, '0', NULL, 'son');
INSERT INTO `product` VALUES ('son20', 'Sơn lót nội thất chống kiềm Cponpaint K2', 'assets/images/products/sonnoithat/p21.png', 900.000, 820.000, NULL, '0', 'Cponpaint', 'son');
INSERT INTO `product` VALUES ('tamoptuong01', 'Xốp Cuộn HS-W05', 'assets/images/products/tamoptuong/p1.jpeg', 140.000, 110.000, NULL, '0', NULL, 'tamoptuong');
INSERT INTO `product` VALUES ('tamoptuong02', 'Xốp Cuộn HS-W08', 'assets/images/products/tamoptuong/p2.jpeg', 140.000, 110.000, NULL, '0', NULL, 'tamoptuong');
INSERT INTO `product` VALUES ('tamoptuong03', 'Xốp Cuộn HS-W05', 'assets/images/products/tamoptuong/p3.jpeg', 140.000, 110.000, NULL, '0', NULL, 'tamoptuong');
INSERT INTO `product` VALUES ('tamoptuong04', 'Xốp Cuộn HS-W08', 'assets/images/products/tamoptuong/p4.jpeg', 140.000, 110.000, NULL, '0', NULL, 'tamoptuong');
INSERT INTO `product` VALUES ('tamoptuong05', 'Xốp Cuộn HS-W03', 'assets/images/products/tamoptuong/p5.jpeg', 140.000, 110.000, NULL, '0', NULL, 'tamoptuong');
INSERT INTO `product` VALUES ('tamoptuong06', 'Xốp Cuộn HS-W06', 'assets/images/products/tamoptuong/p6.jpeg', 140.000, 110.000, NULL, '0', NULL, 'tamoptuong');
INSERT INTO `product` VALUES ('tamoptuong07', 'Xốp Cuộn HS-W01', 'assets/images/products/tamoptuong/p7.jpeg', 140.000, 110.000, '', '0', NULL, 'tamoptuong');
INSERT INTO `product` VALUES ('tamoptuong08', 'Tấm nhôm U-shaped ceilings', 'assets/images/products/tamoptuong/p8.jpg', 210.000, 200.000, NULL, '0', NULL, 'tamoptuong');
INSERT INTO `product` VALUES ('tamoptuong09', 'Tấm ốp tường vân gỗ TGW-8606', 'assets/images/products/tamoptuong/p9.jpeg', 320.000, 307.471, NULL, '0', NULL, 'tamoptuong');
INSERT INTO `product` VALUES ('tamoptuong10', 'Đá xuyên sáng dòng B (TGT-B805 TGT B806 TGT-B805)', 'assets/images/products/tamoptuong/p10.jpeg', 1300.000, 1273.000, NULL, '0', NULL, 'tamoptuong');
INSERT INTO `product` VALUES ('tamoptuong11', 'Tấm ốp tường vân gỗ 8.5mm TGW-8608', 'assets/images/products/tamoptuong/p12.jpeg', 350.000, 307.471, NULL, '0', NULL, 'tamoptuong');
INSERT INTO `product` VALUES ('tamoptuong12', 'Tấm ốp tường vân gỗ 8.5mm TGW-8605', 'assets/images/products/tamoptuong/p13.jpg', 320.000, 307.471, NULL, '0', NULL, 'tamoptuong');
INSERT INTO `product` VALUES ('tamoptuong13', 'Tấm ốp tường vân gỗ 8.5mm TGW-8604', 'assets/images/products/tamoptuong/p14.jpeg', 400.000, 307.471, NULL, '0', NULL, 'tamoptuong');
INSERT INTO `product` VALUES ('tamoptuong14', 'Tấm ốp tường vân gỗ 8.5mm TGW-8602', 'assets/images/products/tamoptuong/p15.jpeg', 320.000, 307.471, NULL, '0', NULL, 'tamoptuong');
INSERT INTO `product` VALUES ('tamoptuong15', 'Lam chắn nắng 85R kích thước lớn phù hợp', 'assets/images/products/tamoptuong/p16.jpg', 900.000, 710.000, NULL, '0', NULL, 'tamoptuong');
INSERT INTO `product` VALUES ('tamoptuong16', 'SƠN LÓT ALEX ULTRA PRIMER IN', 'assets/images/products/sonnoithat/p17.jpg', 300.000, 280.000, NULL, '0', NULL, 'tamoptuong');
INSERT INTO `product` VALUES ('tamoptuong17', 'Keo Epoxy lót sàn Orion RN-900', 'assets/images/products/sonnoithat/p18.jpeg', 44.000, 33.000, NULL, '0', NULL, 'tamoptuong');
INSERT INTO `product` VALUES ('tamoptuong18', 'Sơn phủ bóng 5 lít Kokor-PB-5L', 'assets/images/products/sonnoithat/p19.jpg', 900.000, 800.000, NULL, '0', NULL, 'tamoptuong');
INSERT INTO `product` VALUES ('tamoptuong19', 'SƠN NỘI THẤT SIÊU BÓNG, MƯỢT', 'assets/images/products/sonnoithat/p20.png', 350.000, 320.000, NULL, '0', NULL, 'tamoptuong');
INSERT INTO `product` VALUES ('tamoptuong20', 'Sơn lót nội thất chống kiềm Cponpaint K2', 'assets/images/products/sonnoithat/p21.png', 900.000, 820.000, NULL, '0', NULL, 'tamoptuong');
INSERT INTO `product` VALUES ('vatlieumai01', 'Ngói màu Lama L104', 'assets/images/products/vatlieumai/p1.jpg', 640.000, 600.000, NULL, '0', NULL, 'vatlieumai');
INSERT INTO `product` VALUES ('vatlieumai02', 'Ngói lợp 22', 'assets/images/products/vatlieumai/p2.jpeg', 15.000, 10.000, NULL, '0', NULL, 'vatlieumai');
INSERT INTO `product` VALUES ('vatlieumai03', 'Ngói giả đá Acem Xanh ghi 601', 'assets/images/products/vatlieumai/p3.jpeg', 170.000, 160.000, NULL, '0', NULL, 'vatlieumai');
INSERT INTO `product` VALUES ('vatlieumai04', 'Tấm lợp Sóng ngói ASA thế hệ mới', 'assets/images/products/vatlieumai/p4.jpg', 150.000, 100.000, NULL, '0', NULL, 'vatlieumai');
INSERT INTO `product` VALUES ('vatlieumai05', 'Ngói Vảy Cá Lớn', 'assets/images/products/vatlieumai/p5.jpg', 200.000, 167.000, NULL, '0', NULL, 'vatlieumai');
INSERT INTO `product` VALUES ('vatlieumai06', 'Ngói Vảy Cá Lớn', 'assets/images/products/vatlieumai/p6.jpeg', 1000.000, 670.000, NULL, '0', NULL, 'vatlieumai');
INSERT INTO `product` VALUES ('vatlieumai07', 'Ngói màu sóng trơn Acem 71014 Đỏ', 'assets/images/products/vatlieumai/p7.png', 80.000, 70.000, NULL, '0', NULL, 'vatlieumai');
INSERT INTO `product` VALUES ('vatlieumai08', 'gói màu Đồng Tâm LOPNLNS706', 'assets/images/products/vatlieumai/p8.jpg', 50.000, 41.000, NULL, '0', NULL, 'vatlieumai');
INSERT INTO `product` VALUES ('vatlieumai09', 'Ngói màu Lama L104t', 'assets/images/products/vatlieumai/p9.jpg', 830.000, 800.000, NULL, '0', NULL, 'vatlieumai');
INSERT INTO `product` VALUES ('vatlieumai10', 'Ngói cổ NG-01', 'assets/images/products/vatlieumai/p10.png', 200.000, 100.000, NULL, '0', NULL, 'vatlieumai');
INSERT INTO `product` VALUES ('vatlieumai11', 'Ngói màu sóng trơn Acem 847 Xanh lá', 'assets/images/products/vatlieumai/p11.png', 200.000, 140.000, NULL, '0', NULL, 'vatlieumai');
INSERT INTO `product` VALUES ('vatlieumai12', 'Ngói cuối mái', 'assets/images/products/vatlieumai/p12.jpg', 340.000, 220.855, NULL, '0', NULL, 'vatlieumai');
INSERT INTO `product` VALUES ('vatlieumai13', 'Ngói cuối mái RubyRD07', 'assets/images/products/vatlieumai/p13.jpeg', 200.000, 167.000, NULL, '0', NULL, 'vatlieumai');
INSERT INTO `product` VALUES ('vatlieumai14', 'Ngói màu Nhật Bản Ruby RD09', 'assets/images/products/vatlieumai/p14.jpg', 150.000, 120.000, NULL, '0', NULL, 'vatlieumai');
INSERT INTO `product` VALUES ('vatlieumai15', 'Ngói màu Ruby RD12 màu xám ghi', 'assets/images/products/vatlieumai/p15.jpg', 90.000, 80.000, NULL, '0', NULL, 'vatlieumai');
INSERT INTO `product` VALUES ('vatlieumai16', 'Ngói màu Ruby RD01 màu đỏ cam', 'assets/images/products/vatlieumai/p16.jpg', 100.000, 80.000, NULL, '0', NULL, 'vatlieumai');
INSERT INTO `product` VALUES ('vatlieumai17', 'Ngói màu NP 14', 'assets/images/products/vatlieumai/p17.jpg', 140.000, 120.000, NULL, '0', NULL, 'vatlieumai');
INSERT INTO `product` VALUES ('vatlieumai18', 'Ngói màu Đồng Tâm LOPNLLS508', 'assets/images/products/vatlieumai/p18.jpg', 90.000, 80.000, NULL, '0', NULL, 'vatlieumai');
INSERT INTO `product` VALUES ('vatlieumai19', 'gói màu Ruby RD05 màu xanh mực', 'assets/images/products/vatlieumai/p19.jpg', 100.000, 80.000, NULL, '0', NULL, 'vatlieumai');
INSERT INTO `product` VALUES ('vatlieumai20', 'Ngói màu Đồng Tâm LOPNLLS905', 'assets/images/products/vatlieumai/p20.jpg', 80.000, 75.000, NULL, '0', NULL, 'vatlieumai');
INSERT INTO `product` VALUES ('vatlieutho01', 'Xi măng Vicem Hà Tiên đa dụng', 'assets/images/products/vatlieutho/ximang/p1.png', 90.000, 84.500, NULL, '0', 'Vicem', 'vatlieutho');
INSERT INTO `product` VALUES ('vatlieutho02', 'Xi măng Phú Thọ đa dụng', 'assets/images/products/vatlieutho/ximang/p2.png', 89.000, 83.000, NULL, '0', 'Phú Thọ', 'vatlieutho');
INSERT INTO `product` VALUES ('vatlieutho03', 'Xi măng Công Thanh', 'assets/images/products/vatlieutho/ximang/congthanh.png', 140.000, 110.000, NULL, '0', 'Công Thanh', 'vatlieutho');
INSERT INTO `product` VALUES ('vatlieutho04', 'Xi măng Hải Vân', 'assets/images/products/vatlieutho/ximang/haivan.png', 110.000, 90.000, NULL, '0', 'Hải Vân', 'vatlieutho');
INSERT INTO `product` VALUES ('vatlieutho05', 'Xi măng Holcim đa dụng', 'assets/images/products/vatlieutho/ximang/holcim.png', 100.000, 85.000, NULL, '0', 'Holcim', 'vatlieutho');
INSERT INTO `product` VALUES ('vatlieutho06', 'Cống tròn D400', 'assets/images/products/vatlieutho/betong/p1.jpg', 640.000, 550.000, NULL, '0', NULL, 'vatlieutho');
INSERT INTO `product` VALUES ('vatlieutho07', 'Cống hộp BTCT', 'assets/images/products/vatlieutho/betong/conghopBTCT.png', 1400.000, 1110.000, NULL, '0', NULL, 'vatlieutho');
INSERT INTO `product` VALUES ('vatlieutho08', 'Cống tròn âm dương', 'assets/images/products/vatlieutho/betong/congtronamduong.png', 1210.000, 800.000, NULL, '0', NULL, 'vatlieutho');
INSERT INTO `product` VALUES ('vatlieutho09', 'Cống tròn Minh Hạnh D200', 'assets/images/products/vatlieutho/betong/congtronminhhanhd200.jpg', 1320.000, 1000.471, NULL, '0', NULL, 'vatlieutho');
INSERT INTO `product` VALUES ('vatlieutho10', 'Cống trong Minh Hạnh D2000', 'assets/images/products/vatlieutho/betong/congtronminhhanhd2000.jpg', 2300.000, 2273.000, NULL, '0', NULL, 'vatlieutho');
INSERT INTO `product` VALUES ('vatlieutho11', 'Cống tròn minh hạnh D400', 'assets/images/products/vatlieutho/betong/congtronminhhanhd400.jpg', 1350.000, 1307.000, NULL, '0', NULL, 'vatlieutho');
INSERT INTO `product` VALUES ('vatlieutho12 ', 'Thép góc V50', 'assets/images/products/vatlieutho/betong/thepgocv50.png', 320.000, 307.471, NULL, '0', NULL, 'vatlieutho');
INSERT INTO `product` VALUES ('vatlieutho13', 'Thép ống công nghiệp ASTM A53', 'assets/images/products/vatlieutho/satthep/p1.jpeg', 400.000, 320.000, NULL, '0', NULL, 'vatlieutho');
INSERT INTO `product` VALUES ('vatlieutho14', 'Thép góc L40', 'assets/images/products/vatlieutho/satthep/thepgocL40.png', 420.000, 320.000, NULL, '0', NULL, 'vatlieutho');
INSERT INTO `product` VALUES ('vatlieutho15', 'Thép Hòa Phát phi 14', 'assets/images/products/vatlieutho/satthep/thephoaphatphi14.jpg', 400.000, 300.000, NULL, '0', NULL, 'vatlieutho');
INSERT INTO `product` VALUES ('vatlieutho16', 'Thép Hòa Phát phi 18', 'assets/images/products/vatlieutho/satthep/thephoaphatphi18.jpg', 400.000, 300.000, NULL, '0', NULL, 'vatlieutho');
INSERT INTO `product` VALUES ('vatlieutho17', 'Thép hộp', 'assets/images/products/vatlieutho/satthep/thephop.jpeg', 350.000, 280.000, NULL, '0', NULL, 'vatlieutho');
INSERT INTO `product` VALUES ('vatlieutho18', 'Thép không gỉ Minh Dức', 'assets/images/products/vatlieutho/satthep/thepkhonggiminhduc.png', 450.000, 400.000, NULL, '0', NULL, 'vatlieutho');
INSERT INTO `product` VALUES ('vatlieutho19', 'Thép lập là 60 x 16', 'assets/images/products/vatlieutho/satthep/theplapla.jpg', 400.000, 300.000, NULL, '0', NULL, 'vatlieutho');
INSERT INTO `product` VALUES ('vatlieutho20', 'Thép trong phi 10', 'assets/images/products/vatlieutho/satthep/theptronphi10.jpg', 350.000, 320.000, NULL, '0', NULL, 'vatlieutho');
INSERT INTO `product` VALUES ('vattunganhda01', 'LƯỠI CẮT GẠCH RUBI CEV 200 PRO', 'assets/images/products/vattunganhda/p1.jpeg', 500.000, 470.250, NULL, '0', NULL, 'vattunganhda');
INSERT INTO `product` VALUES ('vattunganhda02', 'Lưỡi cắt bluebird 150 đa năng', 'assets/images/products/vattunganhda/p2.jpg', 150.000, 130.000, NULL, '0', NULL, 'vattunganhda');
INSERT INTO `product` VALUES ('vattunganhda03', 'Bát soi phào Granite phi 300', 'assets/images/products/vattunganhda/p3.jpg', 230.000, 190.000, NULL, '0', NULL, 'vattunganhda');
INSERT INTO `product` VALUES ('vattunganhda04', 'Lưỡi cắt bluebird 125 đa năng', 'assets/images/products/vattunganhda/p4.jpg', 78.000, 72.000, NULL, '0', NULL, 'vattunganhda');
INSERT INTO `product` VALUES ('vattunganhda05', 'Lưỡi cắt kingblue 125x2.0', 'assets/images/products/vattunganhda/p5.jpg', 74.000, 66.000, NULL, '0', NULL, 'vattunganhda');
INSERT INTO `product` VALUES ('vattunganhda06', 'Lưỡi cắt bluebird 105x1.3 đa năng', 'assets/images/products/vattunganhda/p6.jpg', 59.000, 53.000, NULL, '0', NULL, 'vattunganhda');
INSERT INTO `product` VALUES ('vattunganhda07', 'Lưỡi cắt bluebird 125 đa năng', 'assets/images/products/vattunganhda/p8.jpg', 78.000, 72.000, NULL, '0', NULL, 'vattunganhda');
INSERT INTO `product` VALUES ('vattunganhda08', 'Nỉ đánh bóng đá hoa cương SOCHA', 'assets/images/products/vattunganhda/p9.jpg', 30.000, 26.000, NULL, '0', NULL, 'vattunganhda');
INSERT INTO `product` VALUES ('vattunganhda09', 'Lưỡi cắt bluebird 150 đa năng', 'assets/images/products/vattunganhda/p10.jpg', 80.000, 75.000, NULL, '0', NULL, 'vattunganhda');
INSERT INTO `product` VALUES ('vattunganhda10', 'Lưỡi cắt Bluebird ĐN110', 'assets/images/products/vattunganhda/p11.jpg', 68.000, 61.000, NULL, '0', NULL, 'vattunganhda');
INSERT INTO `product` VALUES ('vattunganhda11', 'Lưỡi cắt kingblue 125x2.0', 'assets/images/products/vattunganhda/p12.jpg', 74.000, 66.000, NULL, '0', NULL, 'vattunganhda');
INSERT INTO `product` VALUES ('vattunganhda12', 'Lưỡi cắt liền Kiti Ø115mm KITI-L115-B', 'assets/images/products/vattunganhda/p13.jpeg', 85.000, 80.000, NULL, '0', NULL, 'vattunganhda');
INSERT INTO `product` VALUES ('vattunganhda13', 'LƯỠI CẮT ƯỚT 150 NAM KIẾN', 'assets/images/products/vattunganhda/p14.jpeg', 85.000, 82.000, NULL, '0', NULL, 'vattunganhda');
INSERT INTO `product` VALUES ('vattunganhda14', 'LƯỠI CẮT ĐA NĂNG 105MM', 'assets/images/products/vattunganhda/p15.jpg', 85.000, 80.000, NULL, '0', NULL, 'vattunganhda');
INSERT INTO `product` VALUES ('vattunganhda15', 'Bát mài cạnh gạch 200 JP vàng HEC-003', 'assets/images/products/vattunganhda/p16.jpg', 80.000, 75.000, NULL, '0', NULL, 'vattunganhda');
INSERT INTO `product` VALUES ('vattunganhda16', 'Đá cắt GEMINI', 'assets/images/products/vattunganhda/p17.jpeg', 70.000, 60.000, NULL, '0', NULL, 'vattunganhda');
INSERT INTO `product` VALUES ('vattunganhda17', 'Móc ke nêm cân bằng gạch 1mm', 'assets/images/products/vattunganhda/p18.jpeg', 200.000, 150.000, NULL, '0', NULL, 'vattunganhda');
INSERT INTO `product` VALUES ('vattunganhda18', 'Ke nhựa ốp lát DKNC-842 1,5 mm', 'assets/images/products/vattunganhda/p19.jpeg', 200.000, 150.000, NULL, '0', NULL, 'vattunganhda');
INSERT INTO `product` VALUES ('vattunganhda19', 'Ke nhựa chữ thập ốp lát gạch 1mm (1kg)', 'assets/images/products/vattunganhda/p20.png', 150.000, 120.000, NULL, '0', NULL, 'vattunganhda');
INSERT INTO `product` VALUES ('vattunganhda20', 'Ke nhựa ốp lát gạch 4mm', 'assets/images/products/vattunganhda/p21.jpeg', 150.000, 120.000, NULL, '0', NULL, 'vattunganhda');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `role` int NULL DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dob` date NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `card` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `wishlist` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cartid` varbinary(255) NULL DEFAULT NULL,
  `orderid` int NULL DEFAULT NULL,
  PRIMARY KEY (`userid`, `email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('user001', 'nguyenthaiduc0212@gmail.com', 'ntduc', '123456', 1, 'male', '2002-10-10', '012345678', 'Tp.HCM', NULL, '0x63617274303032', NULL, NULL);
INSERT INTO `user` VALUES ('user002', 'buianhtuan@gmail.com', 'juan`', '123456', 1, 'male', '2002-09-09', '012398765', 'Tp.HCM', NULL, '0x47827482', NULL, NULL);
INSERT INTO `user` VALUES ('user003', 'tranthimythuy@gmail.com', 'mthuy', '123456', 1, 'female', '2002-07-07', '012332324', 'Tp.HCM', NULL, '0x4274374334', NULL, NULL);
INSERT INTO `user` VALUES ('user004', 'test@gmail.com', 'test', '123456', 2, NULL, NULL, NULL, 'Hà Nội', NULL, '0x9999999999', NULL, NULL);

-- ----------------------------
-- Table structure for wishlist
-- ----------------------------
DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE `wishlist`  (
  `userid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `productid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`userid`, `productid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wishlist
-- ----------------------------
INSERT INTO `wishlist` VALUES ('user002', 'da06');
INSERT INTO `wishlist` VALUES ('user002', 'da07');
INSERT INTO `wishlist` VALUES ('user002', 'gachh02');
INSERT INTO `wishlist` VALUES ('user002', 'nep04');
INSERT INTO `wishlist` VALUES ('user002', 'vatlieutho02');
INSERT INTO `wishlist` VALUES ('user002', 'vattunganhda03');
INSERT INTO `wishlist` VALUES ('user004', 'gachh01');

SET FOREIGN_KEY_CHECKS = 1;
