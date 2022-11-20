/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:55000
 Source Schema         : ujian

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 20/11/2022 16:02:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for materi_tiga
-- ----------------------------
DROP TABLE IF EXISTS `materi_tiga`;
CREATE TABLE `materi_tiga` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `jenis` varchar(255) DEFAULT NULL,
  `kolom` tinyint DEFAULT NULL,
  `a` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `b` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `c` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `d` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `e` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `operator` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of materi_tiga
-- ----------------------------
BEGIN;
INSERT INTO `materi_tiga` VALUES (8, 'huruf', 1, 'K', 'R', 'Z', 'S', 'T', NULL, NULL, NULL, NULL);
INSERT INTO `materi_tiga` VALUES (9, 'huruf', 2, 'O', 'G', 'C', 'P', 'Y', NULL, NULL, NULL, NULL);
INSERT INTO `materi_tiga` VALUES (10, 'huruf', 3, 'X', 'A', 'J', 'B', 'I', NULL, NULL, NULL, NULL);
INSERT INTO `materi_tiga` VALUES (11, 'huruf', 4, 'E', 'F', 'Q', 'H', 'L', NULL, NULL, NULL, NULL);
INSERT INTO `materi_tiga` VALUES (12, 'huruf', 5, 'V', 'N', 'M', 'W', 'U', NULL, NULL, NULL, NULL);
INSERT INTO `materi_tiga` VALUES (13, 'huruf', 6, 'K', 'R', 'Z', 'S', 'T', NULL, NULL, NULL, NULL);
INSERT INTO `materi_tiga` VALUES (14, 'huruf', 7, 'O', 'G', 'C', 'P', 'Y', NULL, NULL, NULL, NULL);
INSERT INTO `materi_tiga` VALUES (15, 'huruf', 8, 'X', 'A', 'J', 'B', 'I', NULL, NULL, NULL, NULL);
INSERT INTO `materi_tiga` VALUES (16, 'huruf', 9, 'E', 'F', 'Q', 'H', 'L', NULL, NULL, NULL, NULL);
INSERT INTO `materi_tiga` VALUES (17, 'huruf', 10, 'V', 'N', 'M', 'W', 'U', NULL, NULL, NULL, NULL);
INSERT INTO `materi_tiga` VALUES (18, 'simbol', 1, '< ', '=', '»', '«', '> ', NULL, NULL, NULL, NULL);
INSERT INTO `materi_tiga` VALUES (19, 'simbol', 2, 'ƕ', '@', '±', 'Ω', '¤', NULL, NULL, NULL, NULL);
INSERT INTO `materi_tiga` VALUES (20, 'simbol', 3, '§', '©', '±', '¶', 'æ', NULL, NULL, NULL, NULL);
INSERT INTO `materi_tiga` VALUES (21, 'simbol', 4, 'ǂ', 'Ǯ', 'ɠ', 'ɮ', 'ɶ', NULL, NULL, NULL, NULL);
INSERT INTO `materi_tiga` VALUES (22, 'simbol', 5, 'ʨ', 'Ξ', 'Ϡ', 'Җ', '҂', NULL, NULL, NULL, NULL);
INSERT INTO `materi_tiga` VALUES (23, 'simbol', 6, '< ', '=', '»', '«', '> ', NULL, NULL, NULL, NULL);
INSERT INTO `materi_tiga` VALUES (24, 'simbol', 7, 'ƕ', '@', '±', 'Ω', '¤', NULL, NULL, NULL, NULL);
INSERT INTO `materi_tiga` VALUES (25, 'simbol', 8, '§', '©', '±', '¶', 'æ', NULL, NULL, NULL, NULL);
INSERT INTO `materi_tiga` VALUES (26, 'simbol', 9, 'ǂ', 'Ǯ', 'ɠ', 'ɮ', 'ɶ', NULL, NULL, NULL, NULL);
INSERT INTO `materi_tiga` VALUES (27, 'simbol', 10, 'ʨ', 'Ξ', 'Ϡ', 'Җ', '҂', NULL, NULL, NULL, NULL);
INSERT INTO `materi_tiga` VALUES (28, 'angka', 1, '6', '4', '7', '2', '1\r', NULL, NULL, NULL, NULL);
INSERT INTO `materi_tiga` VALUES (29, 'angka', 2, '0', '2', '6', '3', '7\r', NULL, NULL, NULL, NULL);
INSERT INTO `materi_tiga` VALUES (30, 'angka', 3, '0', '2', '6', '3', '7\r', NULL, NULL, NULL, NULL);
INSERT INTO `materi_tiga` VALUES (31, 'angka', 4, '7', '1', '5', '2', '4\r', NULL, NULL, NULL, NULL);
INSERT INTO `materi_tiga` VALUES (32, 'angka', 5, '8', '3', '6', '0', '9\r', NULL, NULL, NULL, NULL);
INSERT INTO `materi_tiga` VALUES (33, 'angka', 6, '6', '4', '7', '2', '1\r', NULL, NULL, NULL, NULL);
INSERT INTO `materi_tiga` VALUES (34, 'angka', 7, '0', '2', '6', '3', '7\r', NULL, NULL, NULL, NULL);
INSERT INTO `materi_tiga` VALUES (35, 'angka', 8, '5', '7', '8', '1', '3\r', NULL, NULL, NULL, NULL);
INSERT INTO `materi_tiga` VALUES (36, 'angka', 9, '7', '1', '5', '2', '4\r', NULL, NULL, NULL, NULL);
INSERT INTO `materi_tiga` VALUES (37, 'angka', 10, '8', '3', '6', '0', '9', NULL, NULL, NULL, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
