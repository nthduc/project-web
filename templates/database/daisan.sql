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
INSERT INTO `banner` VALUES ('banner01', 'Hàng mới', 'Keo Ốp Lát RubyMax', 'assets/images/sliders/slider2.jpg');