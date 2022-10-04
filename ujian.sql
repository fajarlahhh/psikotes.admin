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

 Date: 04/10/2022 21:19:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for jawaban_pengguna
-- ----------------------------
DROP TABLE IF EXISTS `jawaban_pengguna`;
CREATE TABLE `jawaban_pengguna` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pengguna_id` bigint DEFAULT NULL,
  `materi_satu_id` bigint DEFAULT NULL,
  `ujian_id` bigint DEFAULT NULL,
  `jawaban` char(1) DEFAULT NULL,
  `waktu` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `materi_satu_id` (`materi_satu_id`),
  KEY `pengguna_id` (`pengguna_id`),
  CONSTRAINT `jawaban_pengguna_ibfk_1` FOREIGN KEY (`materi_satu_id`) REFERENCES `materi_satu` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `jawaban_pengguna_ibfk_2` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of jawaban_pengguna
-- ----------------------------
BEGIN;
INSERT INTO `jawaban_pengguna` VALUES (5, 2, 1, 15, 'd', 0, '2022-10-04 12:46:36', '2022-10-04 13:18:50');
INSERT INTO `jawaban_pengguna` VALUES (6, 2, 2, 15, 'c', 16, '2022-10-04 12:46:36', '2022-10-04 13:02:59');
INSERT INTO `jawaban_pengguna` VALUES (7, 2, 4, 15, 'b', 16, '2022-10-04 12:46:36', '2022-10-04 13:03:01');
INSERT INTO `jawaban_pengguna` VALUES (8, 2, 3, 15, 'b', 16, '2022-10-04 12:46:36', '2022-10-04 13:03:17');
COMMIT;

-- ----------------------------
-- Table structure for materi_satu
-- ----------------------------
DROP TABLE IF EXISTS `materi_satu`;
CREATE TABLE `materi_satu` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `soal` longtext,
  `a` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `b` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `c` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `d` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `e` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `kunci` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of materi_satu
-- ----------------------------
BEGIN;
INSERT INTO `materi_satu` VALUES (1, '<p>Aku X ….</p>', '<p>Kronis</p>', '<p>Normal</p>', '<p>Sadar</p>', '<p>Parah</p>', '<p>Kanker</p>', 'a', NULL, '2022-10-03 12:30:06', '2022-10-03 12:45:59', NULL);
INSERT INTO `materi_satu` VALUES (2, '<p>Berapakah jumlah bangun yang tersusun pada gambar dibawah ini ?&nbsp;</p><p><img src=\"http://ujian.test/media/image_1664801297.png\"></p>', '<p>16</p>', '<p>17</p>', '<p>18</p>', '<p>19</p>', '<p>20</p>', 'a', NULL, '2022-10-03 12:49:15', '2022-10-03 12:49:15', NULL);
INSERT INTO `materi_satu` VALUES (3, '<p>Delusi&nbsp; X&nbsp; …..</p>', '<p>lusi</p>', '<p>asdf</p>', '<p>asdf</p>', '<p>asdf</p>', '<p>asdf</p>', 'a', NULL, '2022-10-03 12:51:23', '2022-10-03 12:51:23', NULL);
INSERT INTO `materi_satu` VALUES (4, '<p>asdfasd</p>', '<p>fasd</p>', '<p>fasdfasd</p>', '<p>fasdf asd</p>', '<p>f asd fas</p>', '<p>dfa sd</p>', 'a', NULL, '2022-10-03 12:51:32', '2022-10-03 12:51:32', NULL);
COMMIT;

-- ----------------------------
-- Table structure for pengguna
-- ----------------------------
DROP TABLE IF EXISTS `pengguna`;
CREATE TABLE `pengguna` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `no_peserta` varchar(255) DEFAULT NULL,
  `kata_sandi` varchar(255) DEFAULT NULL,
  `level` tinyint DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of pengguna
-- ----------------------------
BEGIN;
INSERT INTO `pengguna` VALUES (1, 'Administrator', 'admin', '$2y$10$OelHxQ.8nYcCohkpG587F.zzHvoxDkRcJ44O0CBlA3QMjLwCSls5u', 1, NULL, '2022-09-01 00:00:00', '2022-10-04 09:43:51');
INSERT INTO `pengguna` VALUES (2, 'Andi Fajar Nugraha', '123456789', '$2y$10$YdbFohs6SmIQks7koQHlXOZGeDeAqE9jcQh.R7781TqP0dJY4vU0W', 2, NULL, '2022-09-01 00:00:00', '2022-10-04 09:49:49');
COMMIT;

-- ----------------------------
-- Table structure for ujian
-- ----------------------------
DROP TABLE IF EXISTS `ujian`;
CREATE TABLE `ujian` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT ' ',
  `materi` tinyint DEFAULT NULL,
  `waktu` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `deleted_at` (`deleted_at`,`materi`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of ujian
-- ----------------------------
BEGIN;
INSERT INTO `ujian` VALUES (2, 1, 200, '2022-10-03 13:24:18', '2022-10-03 13:27:51', '2022-10-03 13:27:51');
INSERT INTO `ujian` VALUES (3, 1, 200, '2022-10-03 13:28:19', '2022-10-03 13:28:21', '2022-10-03 13:28:21');
INSERT INTO `ujian` VALUES (4, 1, 0, '2022-10-03 13:28:24', '2022-10-03 13:28:57', '2022-10-03 13:28:57');
INSERT INTO `ujian` VALUES (5, 1, 1200, '2022-10-03 13:29:02', '2022-10-03 13:37:35', '2022-10-03 13:37:35');
INSERT INTO `ujian` VALUES (11, 2, 122, '2022-10-03 13:37:14', '2022-10-03 13:37:31', '2022-10-03 13:37:31');
INSERT INTO `ujian` VALUES (12, 2, 0, '2022-10-03 13:37:37', '2022-10-03 13:37:46', '2022-10-03 13:37:46');
INSERT INTO `ujian` VALUES (13, 1, 0, '2022-10-03 13:37:44', '2022-10-03 13:37:48', '2022-10-03 13:37:48');
INSERT INTO `ujian` VALUES (14, 2, 0, '2022-10-03 13:37:49', '2022-10-03 13:38:38', '2022-10-03 13:38:38');
INSERT INTO `ujian` VALUES (15, 1, 20, '2022-10-03 13:38:34', '2022-10-03 13:38:34', NULL);
INSERT INTO `ujian` VALUES (16, 2, 123, '2022-10-03 13:38:39', '2022-10-03 13:40:46', '2022-10-03 13:40:46');
INSERT INTO `ujian` VALUES (17, 3, 1200, '2022-10-03 13:40:45', '2022-10-03 13:40:45', NULL);
COMMIT;

-- ----------------------------
-- Table structure for ujian_soal
-- ----------------------------
DROP TABLE IF EXISTS `ujian_soal`;
CREATE TABLE `ujian_soal` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ujian_id` bigint DEFAULT NULL,
  `materi_satu_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ujian_id` (`ujian_id`),
  CONSTRAINT `ujian_soal_ibfk_1` FOREIGN KEY (`ujian_id`) REFERENCES `ujian` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of ujian_soal
-- ----------------------------
BEGIN;
INSERT INTO `ujian_soal` VALUES (1, 15, 1, '2022-10-04 00:00:00', '2022-10-04 00:00:00');
INSERT INTO `ujian_soal` VALUES (2, 15, 2, '2022-10-04 00:00:00', '2022-10-04 00:00:00');
INSERT INTO `ujian_soal` VALUES (3, 15, 3, '2022-10-04 00:00:00', '2022-10-04 00:00:00');
INSERT INTO `ujian_soal` VALUES (4, 15, 4, '2022-10-04 00:00:00', '2022-10-04 00:00:00');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
