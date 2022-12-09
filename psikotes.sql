/*
 Navicat Premium Data Transfer

 Source Server         : Localhost MySQL
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : psikotes

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 09/12/2022 16:03:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for materi_dua
-- ----------------------------
DROP TABLE IF EXISTS `materi_dua`;
CREATE TABLE `materi_dua`  (
  `id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of materi_dua
-- ----------------------------
INSERT INTO `materi_dua` VALUES (1, '2022-11-21 14:03:59', '2022-11-21 14:03:59');
INSERT INTO `materi_dua` VALUES (2, '2022-11-21 13:40:10', '2022-11-21 13:40:10');
INSERT INTO `materi_dua` VALUES (3, '2022-11-21 13:47:52', '2022-11-21 13:47:52');
INSERT INTO `materi_dua` VALUES (4, '2022-11-21 13:47:28', '2022-11-21 13:47:28');
INSERT INTO `materi_dua` VALUES (5, '2022-11-21 13:50:01', '2022-11-21 13:50:01');

-- ----------------------------
-- Table structure for materi_dua_detail
-- ----------------------------
DROP TABLE IF EXISTS `materi_dua_detail`;
CREATE TABLE `materi_dua_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `materi_dua_id` bigint(20) NOT NULL,
  `soal` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `kunci` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `aspek` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `materi_dua_id`(`materi_dua_id`) USING BTREE,
  CONSTRAINT `materi_dua_detail_ibfk_1` FOREIGN KEY (`materi_dua_id`) REFERENCES `materi_dua` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1203 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of materi_dua_detail
-- ----------------------------
INSERT INTO `materi_dua_detail` VALUES (963, 1, 'Saat sedang bermain game online di handphone, saya merasa marah bila ada orang yang menanyakan sesuatu karena skor saya jadi hilang.', '-', 'STABILITAS EMOSI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (964, 1, 'Saya  pasti  menyumbang  korban  bencana  lebih  besar  jika  nama  saya  turut  dicatat  dan dipublikasikan di media.', '-', 'PROSOSIAL', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (965, 1, 'Dalam suatu acara sekolah, saya menunggu orang lain untuk lebih dahulu menyapa agar tidak dikatakan sok akrab.', '-', 'PENYESUAIAN DIRI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (966, 1, 'Saya hanya berani tampil ketika semua teman memberikan dorongan.', '-', 'KEPERCAYAAN DIRI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (967, 1, 'Saya terbiasa belajar pada waktu dini hari saat orang masih terlelap tidur.', '+', 'MOTIF BERPRESTASI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (968, 1, 'Saya menyiapkan diri untuk mendaftar Bintara Polri dengan sebaik-baiknya sejak awal masuk SMA', '+', 'PENGAMBILAN KEPUTUSAN', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (969, 1, 'Ketika ada kegiatan sekolah yang akan dilaksanakan pada hari libur, maka saya mengikuti seluruh kegiatan', '+', 'LOYALITAS', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (970, 1, 'Setiap orang memiliki target pribadi, sehingga rasanya tidak perlu mengurusi pekerjaan rekan satu tim.', '-', 'KERJASAMA', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (971, 1, 'Saat diajak oleh teman-teman sekelas untuk merayakan kelulusan, saya lebih memilih pulang mendahului meskipun dinilai tidak kompak.', '+', 'STABILITAS EMOSI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (972, 1, 'Saya tidak memberikan uang kepada pengemis yang badannya terlihat bugar karena saya anggap ia masih sanggup bekerja.', '-', 'PROSOSIAL', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (973, 1, 'Saya mudah akrab ketika bertemu dengan orang yang baru saya kenal.', '+', 'PENYESUAIAN DIRI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (974, 1, 'Banyak hal yang bisa saya banggakan di hadapan teman-teman.', '+', 'KEPERCAYAAN DIRI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (975, 1, 'Saya tidak bisa menunda pekerjaan, meskipun harus mengabaikan teman yang datang.', '+', 'MOTIF BERPRESTASI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (976, 1, 'Saya kurang yakin dengan berbagai informasi tentang pilihan-pilihan pekerjaan kedinasan dari brosur atau pamflet.', '-', 'PENGAMBILAN KEPUTUSAN', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (977, 1, 'Saya memberikan waktu lebih untuk mengerjakan tugas-tugas kelompok.', '+', 'LOYALITAS', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (978, 1, 'Jika  harus  memilih,  saya  akan  mengerjakan  tugas  sekolah  sendirian  daripada  harus melibatkan teman yang lain.', '+', 'KERJASAMA', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (979, 1, 'Ketika berada di suatu acara dengan banyak orang yang belum dikenal, saya merasa gelisah. ', '-', 'STABILITAS EMOSI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (980, 1, 'Saat terjadi kecelakaan di jalan, saya tidak perlu membantu lagi karena sudah banyak orang yang membantu.', '-', 'PROSOSIAL', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (981, 1, 'Saya sulit untuk menghafalkan jalan di tempat tinggal saya yang baru.', '-', 'PENYESUAIAN DIRI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (982, 1, 'Kegagalan yang sering saya hadapi cukup wajar bila membuat saya merasa pesimis.', '-', 'KEPERCAYAAN DIRI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (983, 1, 'Menurut saya, mengevaluasi diri akan sia-sia belaka karena pada hakekatnya pekerjaan yang ada hanyalah pengulangan dari pekerjaan sebelumnya.', '-', 'MOTIF BERPRESTASI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (984, 1, 'Beberapa pilihan pekerjaan yang ada saat ini sama-sama menarik bagi saya.', '-', 'PENGAMBILAN KEPUTUSAN', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (985, 1, ' Saya  tidak  suka  jika  waktu  istirahat  masih  digunakan  untuk  menyelesaikan  tugas-tugas kelompok', '-', 'LOYALITAS', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (986, 1, 'Ketua tim adalah orang yang paling pantas disalahkan ketika tujuan tim tidak tercapai.', '-', 'KERJASAMA', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (987, 1, 'Saya jengkel kepada teman yang pernah merebut sahabat saya saat di sekolah dulu.', '-', 'STABILITAS EMOSI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (988, 1, 'Banyak teman yang menilai saya dermawan karena saya mudah bila dimintai bantuan.', '+', 'PROSOSIAL', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (989, 1, 'Saya mengalami kesulitan tidur di komplek rumah yang baru karena tetangga saya cukup berisik.', '-', 'PENYESUAIAN DIRI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (990, 1, 'Rasanya malu kalau harus menyampaikan pendapat dalam forum rapat di awal waktu.', '-', 'KEPERCAYAAN DIRI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (991, 1, 'Buat apa mengerjakan tugas dengan maksimal apabila guru hanya melihat dari prosesnya bukan dari hasil.', '-', 'MOTIF BERPRESTASI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (992, 1, 'Saya tidak ragu berkonsultasi dengan banyak orang ketika harus memilih karir yang paling baik untuk masa depan saya.', '+', 'PENGAMBILAN KEPUTUSAN', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (993, 1, 'Saya bersedia mencukupi kekurangan apabila ada kebutuhan kelompok asal sesuai dengan kemampuan saya.', '-', 'LOYALITAS', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (994, 1, 'Begitu  tugas  saya  selesai,  saya  akan  meninggalkan  tim  yang  masih  bekerja  dengan pekerjaannya.', '-', 'KERJASAMA', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (995, 1, 'Saya merasa marah dan kesal ketika kalah dalam permainan online.', '-', 'STABILITAS EMOSI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (996, 1, 'Saya merasa senang apabila dapat membantu orang lain, meskipun orang tersebut bersikap buruk terhadap saya.', '+', 'PROSOSIAL', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (997, 1, 'Ketika berlibur bersama keluarga dan harus menginap di lingkungan baru, saya termasuk yang susah untuk tidur.', '-', 'PENYESUAIAN DIRI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (998, 1, 'Tidak masalah ketika saya diminta melakukan debat dengan sekolah lain.', '+', 'KEPERCAYAAN DIRI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (999, 1, 'Saya merasa sebagian besar pilihan yang saya buat berasal dari pengaruh orang tua saya. ', '-', 'MOTIF BERPRESTASI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1000, 1, 'Saya mengetahui dengan pasti risiko dari setiap keputusan yang saya ambil.', '+', 'PENGAMBILAN KEPUTUSAN', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1001, 1, 'Saya  keberatan  ketika  banyak  hal  yang  tidak  sesuai  antara  keinginan  pribadi  dengan keputusan kelompok.', '-', 'LOYALITAS', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1002, 1, 'Demi kemajuan tim, saya rela pendapat saya diabaikan.', '+', 'KERJASAMA', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1003, 1, 'Ketika ada teman yang mengajak berkelahi, maka saya menasehatinya', '+', 'STABILITAS EMOSI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1004, 1, 'Walau tidak dibayar saya akan ikut andil dalam tim yang bekerja untuk memadamkan api di hutan yang terbakar.', '+', 'PROSOSIAL', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1005, 1, 'Saya langsung memperkenalkan diri kepada orang-orang di lingkungan yang baru.', '+', 'PENYESUAIAN DIRI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1006, 1, 'Saya yakin dapat mengerjakan tugas-tugas yang menantang dan sulit walaupun sebagian besar teman sekelas menghindarinya.', '+', 'KEPERCAYAAN DIRI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1007, 1, 'Mempelajari metode baru dalam pelajaran hanya menghabiskan waktu.', '-', 'MOTIF BERPRESTASI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1008, 1, 'Setiap kali berbelanja, saya sulit memilih model pakaian yang akan saya beli.', '-', 'PENGAMBILAN KEPUTUSAN', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1009, 1, 'Saya akan tetap menjalankan keputusan kelompok meskipun tidak sesuai dengan prinsip diri saya.', '+', 'LOYALITAS', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1010, 1, 'Mengerjakan tugas secara bersama-sama justru akan menghambat selesainya pekerjaan. ', '-', 'KERJASAMA', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1011, 1, 'Saya mudah larut dalam keharuan ketika menonton film yang bertema kesedihan.', '-', 'STABILITAS EMOSI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1012, 1, 'Saya mengumpulkan sumbangan dari para donatur untuk dibagikan kepada orang lain yang berhak.', '-', 'PROSOSIAL', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1013, 1, 'Apabila saya tidak diterima menjadi anggota Polri, saya akan mencari pekerjaan lainnya.', '+', 'PENYESUAIAN DIRI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1014, 1, 'Lebih  baik  saya  tidak  berbicara  dihadapan  orang  banyak,  karena  saya  takut  melakukan kesalahan.', '-', 'KEPERCAYAAN DIRI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1015, 1, 'Saya merasa tidak semangat ketika tugas sekolah yang diberikan kepada saya terasa sulit. ', '-', 'MOTIF BERPRESTASI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1016, 1, 'Saya merasa sebagian besar keputusan yang saya ambil berasal dari pengaruh orang-orang terdekat saya.', '-', 'PENGAMBILAN KEPUTUSAN', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1017, 1, 'Selama tidak bersifat prinsip, saya mau dipersalahkan akibat kesalahan teman-teman sekelas. ', '+', 'LOYALITAS', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1018, 1, 'Ada kalanya saya tidak ingin diskusi saat menyelesaikan pekerjaan kelompok.', '-', 'KERJASAMA', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1019, 1, 'Saat tidak diterima di sekolah favorit yang saya dambakan, saya mampu menenangkan diri dengan baik.', '+', 'STABILITAS EMOSI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1020, 1, 'Sebagai ketua kelas, saya bertanya langsung kepada teman yang tidak masuk sekolah tentang alasannya agar lebih jelas.', '+', 'PROSOSIAL', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1021, 1, 'Saya hanya suka dengan kegiatan yang sudah biasa dilakukan.', '-', 'PENYESUAIAN DIRI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1022, 1, 'Saya senang mencoba dan mempelajari hal-hal baru.', '+', 'KEPERCAYAAN DIRI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1023, 1, 'Saya cenderung mengerjakan tugas sekolah melampui harapan dari orang tua dan guru. ', '+', 'MOTIF BERPRESTASI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1024, 1, 'Saya percaya dengan informasi di media massa tentang pilihan-pilihan pekerjaan dengan berbagai karakteristiknya.', '+', 'PENGAMBILAN KEPUTUSAN', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1025, 1, 'Saya akan tetap bersama dengan kelompok walaupun tugas saya sudah selesai.', '+', 'LOYALITAS', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1026, 1, 'Dalam sebuah kelompok kerja, setiap anggota berkewajiban memastikan tugas terselesaikan sesuai perintah.', '+', 'KERJASAMA', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1027, 1, 'Ketika menjelang ujian dimulai, saya beberapa kali ke kamar mandi karena merasakan sakit perut.', '-', 'STABILITAS EMOSI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1028, 1, 'Saya juga termasuk korban musibah kali ini, oleh karenanya tidak menjadi masalah bila tidak ikut memberikan bantuan kepada korban lainnya.', '-', 'PROSOSIAL', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1029, 1, 'Saya cukup terkejut ketika di sekolah ada ujian mendadak  sehingga membuat nilai saya tidak optimal.', '-', 'PENYESUAIAN DIRI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1030, 1, 'Saya takut mendapatkan ejekan dari teman saat harus melakukan presentasi di depan kelas.', '-', 'KEPERCAYAAN DIRI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1031, 1, 'Saya menunda tugas sekolah yang tidak begitu penting walaupun ada waktu senggang. ', '-', 'MOTIF BERPRESTASI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1032, 1, 'Saya  tidak  suka  mencari  alternatif  pilihan  pekerjaan,  karena  prinsip  hidup  saya  adalah mensyukuri apa yang sudah dimiliki.', '-', 'PENGAMBILAN KEPUTUSAN', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1033, 1, 'Saya  menjunjung  tinggi  peraturan  yang  ada  di  kelompok,  walaupun  tidak  ses', '+', 'LOYALITAS', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1034, 1, 'Bekerja dalam kelompok membuat pelaksanaan tugas lebih menyenangkan dan pekerjaan lebih cepat selesai.', '+', 'KERJASAMA', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1035, 1, 'Saya tetap menjalani hobi bersepeda meskipun suasana hati sedang galau.', '+', 'STABILITAS EMOSI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1036, 1, 'Saat libur sekolah, kegiatan saya membantu orang tua', '+', 'PROSOSIAL', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1037, 1, 'Untuk menjaga keselamatan diri dan mengurangi kemacetan di jalan raya, saya berangkat ke sekolah dengan menggunakan kendaraan umum', '+', 'PENYESUAIAN DIRI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1038, 1, 'Apabila  saya  diminta  menyampaikan  pendapat  dalam  suatu  diskusi,  saya  mempersilakan teman yang lebih pandai terlebih dahulu.', '-', 'KEPERCAYAAN DIRI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1039, 1, 'Saya tetap menyelesaikan pekerjaan yang diberikan guru tanpa harus diawasi.', '+', 'MOTIF BERPRESTASI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1040, 1, 'Saya  merasa  membutuhkan  kemampuan  lebih  dari orang  lain  dalam  menentukan  pilihan pekerjaan saat ini.', '+', 'PENGAMBILAN KEPUTUSAN', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1041, 1, 'Saya akan menjaga kewibawaan kelompok walaupun hal tersebut menurunkan kewibawaan saya.', '+', 'LOYALITAS', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1042, 1, 'Saya lebih menyukai olahraga sepakbola', '+', 'KERJASAMA', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1043, 1, 'Saya menjadi jengkel ketika mendadak diminta naik ke atas panggung di acara perpisahan sekolah untuk memberi sambutan.', '-', 'STABILITAS EMOSI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1044, 1, 'Saya  datang  untuk  menemani  dan  menghibur  ketika  ada  anak  kelas  lain  yang  sedang mengalami musibah.', '+', 'PROSOSIAL', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1045, 1, 'Saya sulit tidur karena memikirkan masalah yang tidak kunjung selesai.', '-', 'PENYESUAIAN DIRI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1046, 1, 'Apapun yang saya capai akan saya hargai sebagai sebuah kesuksesan.', '+', 'KEPERCAYAAN DIRI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1047, 1, 'Apapun akibatnya, saya lebih suka memilih tantangan yang memberi kesempatan lebih baik.', '+', 'MOTIF BERPRESTASI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1048, 1, 'Saya tidak percaya dengan berbagai informasi tentang alternatif pilihan karir yang diberikan lembaga-lembaga yang kurang terkenal.', '-', 'PENGAMBILAN KEPUTUSAN', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1049, 1, 'Saya mendukung keputusan kelompok walaupun tidak meguntungkan saya.', '+', 'LOYALITAS', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1050, 1, 'Hampir setiap saat, saya menghabiskan waktu bersama kelompok belajar di sekolah maupun di luar sekolah.', '+', 'KERJASAMA', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1051, 1, 'Pada  saat  tidak  menemukan  barang  yang  saya  cari,  saya  kerapkali  merasa  kesal  dan mengacak-acak barang-barang yang ada di kamar.', '-', 'STABILITAS EMOSI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1052, 1, 'Saya prihatin bila menyaksikan pengemis anak-anak di jalanan serta bisa marasakan apa yang mereka rasakan.', '+', 'PROSOSIAL', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1053, 1, 'Saya senang berada di kelas yang baru bersama orang-orang yang baru.', '+', 'PENYESUAIAN DIRI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1054, 1, 'Setiap mengikuti seleksi, saya merasa ragu untuk dapat lulus.', '-', 'KEPERCAYAAN DIRI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1055, 1, 'Saya bisa menunda belajar, karena ada teman lama yang datang.', '-', 'MOTIF BERPRESTASI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1056, 1, 'Saya merasa ragu tentang diri pribadi terkait pilihan profesi yang saat ini sedang saya lamar. ', '-', 'PENGAMBILAN KEPUTUSAN', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1057, 1, 'Kepentingan kelompok/organisasi di atas segalanya.', '+', 'LOYALITAS', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1058, 1, 'Saya lebih menyukai jenis permainan yang melibatkan banyak orang dibandingkan dengan game online.', '+', 'KERJASAMA', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1059, 1, 'Saya ikut merasakan bahagia ketika orang lain/teman mendapatkan prestasi.', '+', 'STABILITAS EMOSI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1060, 1, 'Saya memilih memiliki banyak teman di media sosial daripada di dunia nyata.', '-', 'PROSOSIAL', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1061, 1, 'Saya  merasa tidak berat bangun dini hari untuk proses seleksi ini karena sudah tebiasa melakukannya.', '+', 'PENYESUAIAN DIRI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1062, 1, 'Saya lebih suka mencoba daripada mengharapkan keberuntungan.', '+', 'KEPERCAYAAN DIRI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1063, 1, 'Buat apa memaksakan diri mengerjakan tugas sekolah sampai larut malam jika pada akhirnya kesehatan akan terganggu.', '-', 'MOTIF BERPRESTASI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1064, 1, 'Saya yakin kemampuan yang saya miliki cocok dengan keputusan untuk memilih profesi ini.', '+', 'PENGAMBILAN KEPUTUSAN', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1065, 1, 'Rugi rasanya jika saya harus mengorbankan segalanya untuk kelompok, karena kelompok belum tentu membantu saya ketika mengalami masalah.', '-', 'LOYALITAS', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1066, 1, 'Saya merasa sulit mencari donatur untuk kegiatan yang akan diselenggarakan oleh sekolah. ', '-', 'KERJASAMA', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1067, 1, 'Ketika mendapat kritik dalam diskusi kelompok, saya akan segera mengkritiknya kembali.', '-', 'STABILITAS EMOSI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1068, 1, 'Saya merasa iri jika sesuatu hal yang dilakukan itu meringankan beban orang lain, namun bukan kepada saya.', '-', 'PROSOSIAL', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1069, 1, 'Dalam membentuk kelompok belajar di sekolah, saya lebih suka dengan teman-teman yang sudah akrab agar tidak repot mengaturnya.', '-', 'PENYESUAIAN DIRI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1070, 1, 'Yang penting mengutarakan pendapat walaupun salah daripada dianggap bodoh.', '+', 'KEPERCAYAAN DIRI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1071, 1, 'Saya berupaya menyelesaikan tugas sekolah dengan santai sesuai waktu yang efektif saja.', '-', 'MOTIF BERPRESTASI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1072, 1, 'Dukungan dan informasi dari orang terdekat belum mampu membuat saya yakin dengan masa depan saya.', '-', 'PENGAMBILAN KEPUTUSAN', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1073, 1, 'Saya tidak akan membela kelompok saya walaupun ada yang menjatuhkan.', '-', 'LOYALITAS', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1074, 1, 'Saya menyukai pekerjaan yang diselesaikan sendiri daripada bersama anggota kelompok. ', '-', 'KERJASAMA', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1075, 1, 'Saya merasa lebih tenang ketika sudah mempersiapkan segala sesuatunya terlebih dahulu sebelum melakukan aktivitas.', '+', 'STABILITAS EMOSI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1076, 1, 'Menurut saya berbuat baik membutuhkan berbagai macam pertimbangan.', '-', 'PROSOSIAL', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1077, 1, 'Ketika bertemu dengan orang yang pernah bermasalah dengan saya, saya tetap menyapa :', '+', 'PENYESUAIAN DIRI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1078, 1, 'Saat menghadapi soal ujian yang sulit saya merasa tertantang.', '+', 'KEPERCAYAAN DIRI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1079, 1, 'Sesulit apapun tugas yang diberikan, saya berupaya sekuat tenaga untuk mencari cara yang tepat dan cepat.', '+', 'MOTIF BERPRESTASI', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1080, 1, 'Saya yakin dengan pilihan saya sendiri tentang apapun.', '+', 'PENGAMBILAN KEPUTUSAN', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1081, 1, 'Saya tidak ragu berpindah ke kelompok lain, kalau kelompok saya yang lama sudah tidak membutuhkan.', '-', 'LOYALITAS', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1082, 1, 'Saya lebih menyukai mengerjakan tugas secara masing-masing.', '-', 'KERJASAMA', '2022-11-21 14:04:03', '2022-11-21 14:04:03');
INSERT INTO `materi_dua_detail` VALUES (1083, 2, 'Saya memilih meluapkan perasaan pada orang yang saya temui ketika sedang memiliki persoalan.', '-', 'STABILITAS EMOSI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1084, 2, 'Saya memilih terjun langsung menjadi sukarelawan bencana alam.', '+', 'PROSOSIAL', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1085, 2, 'Saya memandang media sosial yang saat ini sedang tren di masyarakat adalah solusi untuk mengusir kesepian saya.', '-', 'PENYESUAIAN DIRI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1086, 2, 'Saat saya melakukan kesalahan saya akan terlebih dahulu mengevaluasi diri daripada harus berusaha mencari kesalahan dari orang lain.', '+', 'KEPERCAYAAN DIRI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1087, 2, 'Saya menyadari kekurangan saya dan berusaha berprestasi pada bidang lain.', '+', 'MOTIF BERPRESTASI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1088, 2, 'Saya mengerjakan tugas sekolah sesuai prinsip mengalir seperti air. ', '-', 'PENGAMBILAN KEPUTUSAN', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1089, 2, 'Kadang-kadang saya suka menyembunyikan suatu hal kepada orang tua saya.', '-', 'LOYALITAS', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1090, 2, 'Jika tidak masuk sekolah saya perlu memberitahukan kepada guru meskipun akan menjadi catatan absensi saya.', '+', 'KERJASAMA', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1091, 2, 'Bagi saya tidak masalah jika tugas saya dikritisi orang lain. ', '+', 'STABILITAS EMOSI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1092, 2, 'Apabila terjadi kecelakaan di jalan raya saya akan melapor ke pos polisi terdekat.  ', '+', 'PROSOSIAL', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1093, 2, 'Saya memilih mencari teman secara langsung bukan melalui media sosial. ', '+', 'PENYESUAIAN DIRI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1094, 2, 'Ketika seseorang mencoba menyerobot antrian, saya akan berusaha memberikan pengertian agar tetap sesuai dengan urutannya.', '+', 'KEPERCAYAAN DIRI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1095, 2, 'Saya pikir satu tahun belakangan ini hidup saya cenderung kurang bervariasi.', '-', 'MOTIF BERPRESTASI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1096, 2, 'Meskipun terkesan berlebihan, saya tetap pada keinginan yang kuat untuk mencapai apa yang sudah menjadi tujuan saya.', '+', 'PENGAMBILAN KEPUTUSAN', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1097, 2, 'Saya tidak akan mengembalikan kelebihan uang kembalian jika si penjual tidak menyadari', '-', 'LOYALITAS', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1098, 2, 'Saya tidak terlalu mempermasalahkan kualitas tugas sekolah saya.', '-', 'KERJASAMA', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1099, 2, 'Bagi saya bukan hal serius jika ada yang mengkritisi tugas saya dengan kurang santun. ', '+', 'STABILITAS EMOSI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1100, 2, 'Saya ingin melakukan tugas apa saja sebaik mungkin.', '+', 'PROSOSIAL', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1101, 2, 'Saya akan mempertimbangkan kritik orang lain tentang penampilan saya yang dianggap kurang rapi. ', '+', 'PENYESUAIAN DIRI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1102, 2, 'Saya ikut membolos bersama teman pada saat pelajaran yang tidak saya sukai.', '-', 'KEPERCAYAAN DIRI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1103, 2, 'Bagi saya tidak mudah ketika memberi informasi kepada orang yang lebih tua.', '-', 'MOTIF BERPRESTASI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1104, 2, 'Saya selalu bersemangat dalam menghadapi hidup ini. ', '+', 'PENGAMBILAN KEPUTUSAN', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1105, 2, 'Saya merasa takut untuk mengakui kesalahan saya.', '-', 'LOYALITAS', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1106, 2, 'Saya jarang membuat perencanaan secara detail dalam mengerjakan sesuatu karena situasi yang sering berubah-ubah.', '-', 'KERJASAMA', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1107, 2, 'Saya biasanya menjadi marah dan tersinggung apabila ada yang mengkritik tugas yang sudah saya kerjakan dengan susah payah.', '-', 'STABILITAS EMOSI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1108, 2, 'Saya tidak ikhlas jika sesuatu hal yang dilakukan itu menguntungkan orang lain.', '-', 'PROSOSIAL', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1109, 2, 'Saya mudah tersinggung jika ada orang yang mengkritik penampilan saya.', '-', 'PENYESUAIAN DIRI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1110, 2, 'Ketika saya merasa lelah saya memilih beristirahat sejenak sambil minum teh.', '+', 'KEPERCAYAAN DIRI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1111, 2, 'Sekeras apapun usaha saya pasti kurang berhasil karena saya pernah gagal.', '-', 'MOTIF BERPRESTASI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1112, 2, 'Saya terbiasa membuat target dan mengikuti ketentuan-ketentuan untuk kelancaran sekolah saya.', '+', 'PENGAMBILAN KEPUTUSAN', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1113, 2, 'Ada perasaan lega ketika saya berani mengakui kesalahan. ', '+', 'LOYALITAS', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1114, 2, 'Adanya perencanaan dalam menyelesaikan suatu tugas seringkali mengekang kreativitas. ', '-', 'KERJASAMA', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1115, 2, 'Saat suasana hati saya sedang resah secara tidak langsung menurunkan semangat saya.', '-', 'STABILITAS EMOSI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1116, 2, 'Menolong sesama teman yang sering mengecewakan diri sendiri adalah perbuatan yang sia-sia.', '-', 'PROSOSIAL', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1117, 2, 'Saya akan menyamakan perlakuan ketika berbicara kepada orang yang lebih tua maupun dengan teman sebaya. ', '-', 'PENYESUAIAN DIRI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1118, 2, 'Saya kurang mampu menghadapi banyak beban tugas.', '-', 'KEPERCAYAAN DIRI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1119, 2, 'Saya sering merasa tidak mampu ketika harus melakukan hal-hal yang baru.', '-', 'MOTIF BERPRESTASI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1120, 2, 'Saya sulit untuk memulai  sesuatu yang baru. ', '-', 'PENGAMBILAN KEPUTUSAN', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1121, 2, 'Ada rasa bersalah apabila saya tidak mengatakan suatu hal yang sebenarnya.', '+', 'LOYALITAS', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1122, 2, 'Adanya target dalam suatu kegiatan memudahkan saya dalam mencapai tujuan.', '+', 'KERJASAMA', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1123, 2, 'Saya memilih tidak berkomentar ketika ada permasalahan dengan rekan diskusi.', '-', 'STABILITAS EMOSI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1124, 2, 'Saya banyak berperan dalam memberikan bantuan kepada lingkungan sekitar.', '+', 'PROSOSIAL', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1125, 2, 'Saya akan menunjukkan kelebihan diri dalam setiap kesempatan. ', '+', 'PENYESUAIAN DIRI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1126, 2, 'Saya dapat menahan perasaan ketika mendapat cemoohan dari orang lain. ', '+', 'KEPERCAYAAN DIRI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1127, 2, 'Ketika berdiri di depan kelas, kaki saya terasa bergetar.', '-', 'MOTIF BERPRESTASI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1128, 2, 'Menurut saya, mengevaluasi diri hanya teori belaka karena pada hakekatnya tugas yang ada hanyalah pengulangan dari tugas sebelumnya.', '-', 'PENGAMBILAN KEPUTUSAN', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1129, 2, 'Terkadang ada hal-hal yang tidak dapat saya ceritakan kepada guru demi kebaikan teman teman di sekolah walaupun perbuatan mereka itu salah.', '-', 'LOYALITAS', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1130, 2, 'Pada awal sekolah dipagi hari saya akan membaca koran terlebih dahulu untuk mengetahui berita terkini.', '-', 'KERJASAMA', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1131, 2, 'Saya akan berterus terang berbicara menyampaikan informasi kepada teman saat ada permasalahan.', '+', 'STABILITAS EMOSI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1132, 2, 'Saya akan memberikan pertolongan kepada orang-orang yang tercatat dalam daftar penerima bantuan tanpa permintaan. ', '-', 'PROSOSIAL', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1133, 2, 'Saya merasa lebih percaya diri jika bekerjasama dengan orang yang dikenal.', '-', 'PENYESUAIAN DIRI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1134, 2, 'Apabila ada seseorang yang memaki maka saya akan membalas dengan memukul. ', '-', 'KEPERCAYAAN DIRI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1135, 2, 'Saya akan teguh mempertahankan apa yang menjadi keinginan saya. ', '+', 'MOTIF BERPRESTASI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1136, 2, 'Mempelajari metode baru hanya menghabiskan waktu.', '-', 'PENGAMBILAN KEPUTUSAN', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1137, 2, 'Saya akan bicara apa adanya bila ditanya suatu peristiwa yang saya ketahui. ', '+', 'LOYALITAS', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1138, 2, 'Mengulang pelajaran sesaat sebelum pelajaran dimulai adalah hal yang perlu dilakukan.', '+', 'KERJASAMA', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1139, 2, 'Ketika tugas pertama belum selesai kemudian diberikan tugas tambahan membuat saya merasa resah. ', '-', 'STABILITAS EMOSI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1140, 2, 'Saya berharap bantuan yang saya berikan berguna bagi saya di kemudian hari. ', '-', 'PROSOSIAL', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1141, 2, 'Susana hati saya dipengaruhi oleh tempat dan orang yang terlibat dalam suatu kegiatan. ', '-', 'PENYESUAIAN DIRI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1142, 2, 'Saya lebih baik terlambat sampai di sekolah asalkan tidak melanggar lalu lintas. ', '+', 'KEPERCAYAAN DIRI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1143, 2, 'Sebagian besar orang menilai saya pribadi yang mandiri.', '+', 'MOTIF BERPRESTASI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1144, 2, 'Saya merasa tidak semangat ketika tugas yang diberikan kepada saya terasa sulit.', '-', 'PENGAMBILAN KEPUTUSAN', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1145, 2, 'Setiap tindakan yang saya lakukan saya pikirkan matang-matang demi keberhasilan dalam tugas saya.', '+', 'LOYALITAS', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1146, 2, 'Saya terbiasa membuat rencana belajar di awal kegiatan setiap harinya.', '+', 'KERJASAMA', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1147, 2, 'Saya menggerutu karena jengkel melihat orang sering meninggalkan tugasnya.', '-', 'STABILITAS EMOSI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1148, 2, 'Menurut saya dalam setiap tindakan menolong pasti ada kepentingan lain.', '-', 'PROSOSIAL', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1149, 2, 'Saya menyampaikan permasalahan yang bersifat pribadi kepada teman dekat.', '+', 'PENYESUAIAN DIRI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1150, 2, 'Sebisa mungkin saya tidak berbohong walaupun untuk kebaikan.', '+', 'KEPERCAYAAN DIRI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1151, 2, 'Saya selalu memiliki cara membuat sesuatu menjadi lebih menarik.', '+', 'MOTIF BERPRESTASI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1152, 2, 'Saya cenderung mengerjakan tugas melampaui harapan orang tua.', '+', 'PENGAMBILAN KEPUTUSAN', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1153, 2, 'Bila saya ditanya tentang tugas oleh guru, maka untuk menunjukkan kemampuan saya akan mengatakan sudah siap walaupun pada kenyataannya belum selesai.', '-', 'LOYALITAS', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1154, 2, 'Saya terbiasa masuk kelas lebih awal untuk menyelesaikan tugas yang tertunda kemarin.', '-', 'KERJASAMA', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1155, 2, 'Biasanya saya akan menjadi panik saat mendapatkan tugas yang sifatnya mendadak.', '-', 'STABILITAS EMOSI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1156, 2, 'Apa yang saya lakukan pasti berguna bagi orang lain.', '+', 'PROSOSIAL', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1157, 2, 'Saya memilih bekerja sendiri dibandingkan bekerjasama dengan  orang lain.', '-', 'PENYESUAIAN DIRI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1158, 2, 'Terkadang untuk mempertahankan apa yang saya miliki saya bisa berbuat kasar kepada siapapun.', '-', 'KEPERCAYAAN DIRI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1159, 2, 'Saya selalu memiliki cara membuat sesuatu menjadi lebih menarik.', '+', 'MOTIF BERPRESTASI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1160, 2, 'Saya menunda tugas yang tidak begitu penting walaupun ada waktu senggang.', '-', 'PENGAMBILAN KEPUTUSAN', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1161, 2, 'Adalah sangat wajar bila saya lupa atas ucapan dan tindakan saya.', '-', 'LOYALITAS', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1162, 2, 'Saya akan mengerjakan hal-hal lain diluar tugas saya saat waktu luang.', '+', 'KERJASAMA', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1163, 2, 'Apabila saya sudah kehilangan kesabaran saya akan langsung menegur orang tersebut.', '-', 'STABILITAS EMOSI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1164, 2, 'Saya perlu mengetahui tujuan pasti dari setiap bantuan yang diberikan. ', '-', 'PROSOSIAL', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1165, 2, 'Saya merasa enggan berbagi cerita atau permasalahan saya dengan teman.', '-', 'PENYESUAIAN DIRI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1166, 2, 'Pada saat saya sedang marah saya dapat menjaga perilaku dan ucapan saya.', '+', 'KEPERCAYAAN DIRI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1167, 2, 'Lebih penting bagi saya mengikuti pendapat teman pada umumnya daripada mencoba hal baru yang belum tentu manfaatnya.', '-', 'MOTIF BERPRESTASI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1168, 2, 'Kegagalan adalah suatu kesempatan untuk melakukan introspeksi dan memperbaiki diri.', '+', 'PENGAMBILAN KEPUTUSAN', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1169, 2, 'Saya menghindari berkata tidak benar kepada ibu', '+', 'LOYALITAS', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1170, 2, 'Saya merasa tertekan bila gagal dalam mengerjakan tugas yang diberikan', '-', 'KERJASAMA', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1171, 2, 'Saya merasa tertekan jika banyak desakan dari orang lain, hal tersebut menyulut emosi saya. ', '-', 'STABILITAS EMOSI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1172, 2, 'Ketika saya memberi bantuan saya tidak pernah berharap pamrih.', '+', 'PROSOSIAL', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1173, 2, 'Saya menyempatkan diri melakukan aktivitas lain diluar jam sekolah.', '+', 'PENYESUAIAN DIRI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1174, 2, 'Ketika saya marah saya mudah melempar barang yang berada di dekat saya.', '-', 'KEPERCAYAAN DIRI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1175, 2, 'Saya memilih mencoba hal-hal baru, daripada menjalankan kebiasaan yang ada.', '+', 'MOTIF BERPRESTASI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1176, 2, 'Apapun akibatnya, saya lebih suka memilih tantangan yang memberi kesempatan lebih baik.', '+', 'PENGAMBILAN KEPUTUSAN', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1177, 2, 'Menurut saya sesekali berbohong tidak apa apa demi kebaikan.', '-', 'LOYALITAS', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1178, 2, 'Menurut saya bekerja akan membuat hidup seseorang lebih nyaman.', '+', 'KERJASAMA', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1179, 2, 'Saya tahu telah berbuat kesalahan namun saya menjadi semakin kesal jika disalahkan berulang-ulang.', '-', 'STABILITAS EMOSI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1180, 2, 'Saya akan memberikan bantuan kalau saya mampu.', '-', 'PROSOSIAL', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1181, 2, 'Untuk menjaga kesehatan, saya memilih tidak banyak beraktivitas di luar rumah.', '-', 'PENYESUAIAN DIRI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1182, 2, 'Saya memilih tidak ikut ikutan dengan teman yang terbiasa merokok. ', '+', 'KEPERCAYAAN DIRI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1183, 2, 'Jika saya tak mampu menyelesaikan pelajaran yang saya tidak kuasai lebih baik saya menyalin tugas teman.', '-', 'MOTIF BERPRESTASI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1184, 2, 'Saya akan membersihkan rumah jika ada sahabat lama berkunjung.', '+', 'PENGAMBILAN KEPUTUSAN', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1185, 2, 'Hati saya sering berontak apa bila perbuatan yang saya lakukan tidak sesuai dengan perkataan saya.', '+', 'LOYALITAS', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1186, 2, 'Perasaan saya jadi serba salah belum menyelesaikan tugas.', '+', 'KERJASAMA', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1187, 2, 'Saya sulit mengambil keputusan saat saya sedang merasa tertekan.', '-', 'STABILITAS EMOSI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1188, 2, 'Saya tidak memberikan uang kepada pengemis.', '+', 'PROSOSIAL', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1189, 2, 'Saya memerlukan waktu lebih lama untuk bisa beradaptasi dengan teman yang baru dikenal. ', '-', 'PENYESUAIAN DIRI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1190, 2, 'Saya memilih berteriak dalam mobil ketika terjebak kemacetan.', '-', 'KEPERCAYAAN DIRI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1191, 2, 'Jika tidak lulus dalam sebuah seleksi saya belum memikirkan rencana lain. ', '-', 'MOTIF BERPRESTASI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1192, 2, 'Saya tidak menunda tugas walaupun  ada teman yang berkunjung. ', '+', 'PENGAMBILAN KEPUTUSAN', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1193, 2, 'Saya akan menyampaikan bahwa saya yang mengerjakan tugas yang diberikan guru, padahal teman saya yang mengerjakannya. ', '-', 'LOYALITAS', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1194, 2, 'Terkadang ada untungnya tidak terlalu taat terhadap peraturan di sekolah.', '-', 'KERJASAMA', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1195, 2, 'Jika saya merasa tertekan saat melakukan tugas saya akan mengabaikannya.', '-', 'STABILITAS EMOSI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1196, 2, 'Saya merasa iba kepada pengemis tua di pinggir jalan.', '+', 'PROSOSIAL', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1197, 2, 'Saya merasa agak ragu ketika bergaul di tengah lingkungan yang baru.', '-', 'PENYESUAIAN DIRI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1198, 2, 'Saya memilih diam dibandingkan harus melawan jika berada dalam situasi konflik.   ', '+', 'KEPERCAYAAN DIRI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1199, 2, 'Sebenarnya saya kurang yakin ketika berdebat mempertahankan argumen dalam diskusi. ', '-', 'MOTIF BERPRESTASI', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1200, 2, 'Saya berusaha ingin bekerja dengan tuntas. ', '+', 'PENGAMBILAN KEPUTUSAN', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1201, 2, 'Saya terkadang mengatakan sesuatu tidak sebenarnya untuk melindungi teman yang berbuat salah.', '-', 'LOYALITAS', '2022-12-04 12:10:16', '2022-12-04 12:10:16');
INSERT INTO `materi_dua_detail` VALUES (1202, 2, 'Dalam menghadapi ujian sekolah, saya biasa belajar sampai larut malam.', '+', 'KERJASAMA', '2022-12-04 12:10:16', '2022-12-04 12:10:16');

-- ----------------------------
-- Table structure for materi_satu
-- ----------------------------
DROP TABLE IF EXISTS `materi_satu`;
CREATE TABLE `materi_satu`  (
  `id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of materi_satu
-- ----------------------------
INSERT INTO `materi_satu` VALUES (1, '2022-11-22 13:18:14', '2022-11-22 13:18:14');
INSERT INTO `materi_satu` VALUES (2, '2022-11-22 13:18:17', '2022-11-22 13:18:17');
INSERT INTO `materi_satu` VALUES (3, '2022-11-22 14:20:43', '2022-11-22 14:20:43');

-- ----------------------------
-- Table structure for materi_satu_detail
-- ----------------------------
DROP TABLE IF EXISTS `materi_satu_detail`;
CREATE TABLE `materi_satu_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `materi_satu_id` bigint(20) NULL DEFAULT NULL,
  `aspek` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `soal` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `kunci` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `materi_satu_id`(`materi_satu_id`) USING BTREE,
  CONSTRAINT `materi_satu_detail_ibfk_1` FOREIGN KEY (`materi_satu_id`) REFERENCES `materi_satu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 236 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of materi_satu_detail
-- ----------------------------
INSERT INTO `materi_satu_detail` VALUES (16, 1, 'VERBAL\r', '<p>DEPORTASI&nbsp;persamaan&nbsp;kata&nbsp;dari …</p><p>a.&nbsp;Orientasi&nbsp;</p><p>b. Penahanan</p><p>c. Pengecualian</p><p>d.&nbsp;Isolasi</p><p>e. Pengasingan</p>', 'E', '2022-11-22 14:04:44', '2022-11-22 14:04:44');
INSERT INTO `materi_satu_detail` VALUES (17, 1, 'VERBAL\r', '<p>DISKREDIT persamaan&nbsp;kata dari …</p><p>a.&nbsp;Menghalau</p><p>b.&nbsp;Menepikan</p><p>c.&nbsp;Meminggirkan</p><p>d.&nbsp;Memojokkan</p><p>e.&nbsp;Merusak</p>', 'D', '2022-11-22 14:05:20', '2022-11-22 14:05:20');
INSERT INTO `materi_satu_detail` VALUES (18, 1, 'VERBAL\r', '<p>MARGIN persamaan&nbsp;dari&nbsp;…</p><p>a.&nbsp;Jeda</p><p>b. Spasi</p><p>c. Sudut</p><p>d.&nbsp;Titik</p><p>e. Batas</p>', 'E', '2022-11-22 14:06:08', '2022-11-22 14:06:08');
INSERT INTO `materi_satu_detail` VALUES (20, 1, 'LOGIS\r', '<p>Semua&nbsp;siswa&nbsp;bersuka&nbsp;cita&nbsp;jika&nbsp;mereka&nbsp;lulus bersama.&nbsp;Hari ini,mereka&nbsp;lulus bersama.</p><p>Kesimpulan&nbsp;paling&nbsp;tepat&nbsp;yang&nbsp;dapat ditarik berdasarkan&nbsp;kedua&nbsp;pernyataan&nbsp;di atas&nbsp;adalah&nbsp;…</p><p>a. &nbsp;Siswa&nbsp;yang&nbsp;tidak ikut&nbsp;lulus ikut&nbsp;bersuka&nbsp;cita.</p><p>b. &nbsp;Beberapa&nbsp;siswa&nbsp;yang&nbsp;tidak lulus bersama&nbsp;tetap&nbsp;ikut&nbsp;bersuka&nbsp;cita.&nbsp;</p><p>c. &nbsp;Beberapa&nbsp;siswa&nbsp;yang&nbsp;lulus&nbsp;bersama,&nbsp;tetapi sedih.</p><p>d. &nbsp;Tidak ada&nbsp;siswa&nbsp;yang&nbsp;tidak&nbsp;bersuka&nbsp;cita.&nbsp;</p><p>e. &nbsp;Beberapa&nbsp;tidak&nbsp;bersuka&nbsp;cita.</p>', 'D', '2022-11-22 14:06:55', '2022-11-22 14:06:55');
INSERT INTO `materi_satu_detail` VALUES (21, 1, 'LOGIS\r', '<p>Kota&nbsp;yang&nbsp;indah&nbsp;akan&nbsp;banyak&nbsp;dikunjungi&nbsp;wisatawan.&nbsp;Kota&nbsp;A&nbsp;adalah&nbsp;kota&nbsp;yang&nbsp;indah,&nbsp;sedangkan&nbsp;kota&nbsp;B</p><p>tidak.</p><p>Kesimpulan&nbsp;paling&nbsp;tepat&nbsp;yang&nbsp;dapat ditarik berdasarkan&nbsp;kedua&nbsp;pernyataan&nbsp;di atas&nbsp;adalah&nbsp;…</p><p>a. &nbsp;Kota&nbsp;A&nbsp;dan&nbsp;kota&nbsp;B akan&nbsp;banyak dikunjungi wisatawan.&nbsp;</p><p>b. &nbsp;Kota&nbsp;A&nbsp;dan&nbsp;kota&nbsp;B&nbsp;tidak banyak dikunjungi wisatawan.</p><p>c. &nbsp;Kota&nbsp;A akan&nbsp;tidak&nbsp;banyak dikunjungi wisatawan&nbsp;dan&nbsp;kota&nbsp;B akan&nbsp;banyak&nbsp;dikunjungi&nbsp;wisatawan.</p><p>d. &nbsp;Kota&nbsp;A akan&nbsp;banyak dikunjungi wisatawan&nbsp;dan&nbsp;kota&nbsp;B&nbsp;tidak banyak dikunjungi wisatawan.</p><p>e. &nbsp;Kota&nbsp;A&nbsp;dan&nbsp;kota&nbsp;B&nbsp;sama&nbsp;banyak dikunjungi wisatawan.</p>', 'D', '2022-11-22 14:07:22', '2022-11-22 14:07:22');
INSERT INTO `materi_satu_detail` VALUES (22, 1, 'LOGIS\r', '<p>Semua &nbsp;yang&nbsp; &nbsp;melakukan&nbsp; &nbsp;kecurangan &nbsp;akan &nbsp;diberi&nbsp; &nbsp;sanksi. &nbsp;Sebagian &nbsp;peserta&nbsp; &nbsp;terbukti &nbsp;melakukan&nbsp;kecurangan.</p><p>Kesimpulan&nbsp;paling&nbsp;tepat&nbsp;yang&nbsp;dapat ditarik berdasarkan&nbsp;kedua&nbsp;pernyataan&nbsp;di atas&nbsp;adalah&nbsp;…</p><p>a. &nbsp;Tidak ada&nbsp;peserta&nbsp;yang&nbsp;terbukti melakukan&nbsp;kecurangan&nbsp;di hukum.&nbsp;</p><p>b. &nbsp;Tidak ada&nbsp;peserta&nbsp;yang dihukum karena&nbsp;melakukan&nbsp;kecurangan.&nbsp;</p><p>c.&nbsp; Peserta&nbsp;yang&nbsp;tidak terbukti&nbsp;melakukan&nbsp;kecurangan&nbsp;dihukum.</p><p>d. &nbsp;Peserta&nbsp;tidak&nbsp;dihukum meskipun&nbsp;melakukan&nbsp;kecurangan.</p><p>e. &nbsp;Peserta&nbsp;yang&nbsp;tidak terbukti&nbsp;melakukan&nbsp;kecurangan&nbsp;tidak dihukum.</p>', 'E', '2022-11-22 14:07:45', '2022-11-22 14:07:45');
INSERT INTO `materi_satu_detail` VALUES (23, 1, 'PRAKTIS\r', '<p><strong>30&nbsp;: 5&nbsp;+&nbsp;10&nbsp;–&nbsp;8 &nbsp;=&nbsp;</strong>...</p><p>a. 10</p><p>b. 14</p><p>c. 12</p><p>d. 8</p><p>e. 16</p>', 'D', '2022-11-22 14:12:01', '2022-11-22 14:12:01');
INSERT INTO `materi_satu_detail` VALUES (24, 1, 'PRAKTIS\r', '<p><strong>12&nbsp;x&nbsp;4&nbsp;: 2&nbsp;–&nbsp;15&nbsp;=&nbsp;</strong>...</p><p>a. 8</p><p>b. 9</p><p>c. 10</p><p>d. 11</p><p>e. 12</p>', 'B', '2022-11-22 14:12:30', '2022-11-22 14:12:30');
INSERT INTO `materi_satu_detail` VALUES (25, 1, 'PRAKTIS\r', '<p><strong>25&nbsp;x&nbsp;25&nbsp;: 25–&nbsp;10&nbsp;=&nbsp;</strong>...</p><p>a. 5</p><p>b.&nbsp;10&nbsp;</p><p>c. 15</p><p>d. 20</p><p>e. 25</p>', 'C', '2022-11-22 14:15:36', '2022-11-22 14:15:36');
INSERT INTO `materi_satu_detail` VALUES (26, 1, 'VERBAL\r', '<p>GUBRIS lawan kata dari ...</p><p>a. Antipati</p><p>b. Derma</p><p>c. Peduli</p><p>d. Angkuh</p><p>e. Cuek</p>', 'E', '2022-11-22 14:16:08', '2022-11-22 14:16:08');
INSERT INTO `materi_satu_detail` VALUES (27, 1, 'VERBAL\r', '<p>KOLEKTIF lawan kata dari ...</p><p>a. Kerjasama</p><p>b. Individual</p><p>c. Kumpulan</p><p>d. Bersama</p><p>e. Penerimaan</p>', 'B', '2022-11-22 14:17:11', '2022-11-22 14:17:11');
INSERT INTO `materi_satu_detail` VALUES (28, 1, 'VERBAL\r', '<p>DEMOSI lawan kata dari ...</p><p>a. Mosi</p><p>b. Pindah</p><p>c. Turun</p><p>d. Tidak Percaya</p><p>e. Promosi</p>', 'E', '2022-11-22 14:17:41', '2022-11-22 14:17:41');
INSERT INTO `materi_satu_detail` VALUES (29, 1, 'LOGIS\r', '<p>Sam adalah siswa yang paling pandai di kelasnya. Joe kalah pandai dibanding Dan, tetapi Dan sama pandainya sama dengan Ari. Ari lebih pandai dari Dono.<br>Kesimpulan paling tepat yang dapat ditarik berdasarkan kedua pernyataan di atas adalah ...</p><p>a. Dan tidak lebih pandai daripada Joe.&nbsp;</p><p>b. Joe tidak kalah pandai dari Sam.</p><p>c. Ari lebih pandai daripada Sam.</p><p>d. Ari lebih pandai daripada Joe.</p><p>e. Dono lebih pandai daripada Dan.</p>', 'D', '2022-11-22 14:18:21', '2022-11-22 14:18:21');
INSERT INTO `materi_satu_detail` VALUES (30, 1, 'LOGIS\r', '<p>Salah&nbsp;satu&nbsp;syarat&nbsp;diterimanya&nbsp;sebagai&nbsp;Polisi&nbsp;adalah&nbsp;lulus&nbsp;seleksi.&nbsp;Sam&nbsp;adalah&nbsp;salah&nbsp;satu&nbsp;peserta&nbsp;yang akan&nbsp;mengikuti seleksi.</p><p>Kesimpulan&nbsp;paling&nbsp;tepat&nbsp;yang&nbsp;dapat ditarik berdasarkan&nbsp;kedua&nbsp;pernyataan&nbsp;di atas&nbsp;adalah&nbsp;…</p><p>a. &nbsp;Sam belum tentu&nbsp;diterima&nbsp;sebagai Polisi.&nbsp;</p><p>b. &nbsp;Sam tidak&nbsp;lulus seleksi Polisi.</p><p>c. &nbsp;Sam tidak&nbsp;diterima&nbsp;sebagai&nbsp;Polisi.&nbsp;</p><p>d. &nbsp;Sam diterima&nbsp;sebagai Polisi.</p><p>e. &nbsp;Sam mampu&nbsp;melalui seluruh&nbsp;kegiatan&nbsp;seleksi.</p>', 'A', '2022-11-22 14:18:43', '2022-11-22 14:18:43');
INSERT INTO `materi_satu_detail` VALUES (31, 1, 'LOGIS\r', '<figure class=\"image\"><img src=\"https://admin.pintarpsi.com/media/Screenshot 2022-11-22 at 9.19.07 PM_1669123155.png\"></figure>', 'E', '2022-11-22 14:19:17', '2022-11-22 14:19:17');
INSERT INTO `materi_satu_detail` VALUES (32, 1, 'PRAKTIS\r', '<p>4 gros +&nbsp;6lusin&nbsp;+&nbsp;12&nbsp;kodi =&nbsp;…</p><p>a. 887&nbsp;buah</p><p>b. 72&nbsp;lusin</p><p>c. 74&nbsp;lusin</p><p>d. 33&nbsp;buah</p><p>e. 885&nbsp;buah</p>', 'C', '2022-11-29 20:54:57', '2022-11-29 20:54:57');
INSERT INTO `materi_satu_detail` VALUES (34, 1, 'PRAKTIS\r', '<p>2&nbsp;milenium +&nbsp;5abad&nbsp;+&nbsp;30 dasawarsa =</p><p>a.26&nbsp;abad</p><p>b.&nbsp;250&nbsp;dasawarsa</p><p>c. 2400&nbsp;tahun</p><p>d.&nbsp;28&nbsp;abad</p><p>e.&nbsp;230&nbsp;dasawarsa</p>', 'D', '2022-11-29 20:55:19', '2022-11-29 20:55:19');
INSERT INTO `materi_satu_detail` VALUES (35, 1, 'PRAKTIS\r', '<p>Kecepatan&nbsp;mobil&nbsp;Bayu&nbsp;90&nbsp;km&nbsp;per&nbsp;jam.&nbsp;Jarak&nbsp;Sukabumi&nbsp;–&nbsp;Tasikmalaya&nbsp;60&nbsp;km.&nbsp;Jika&nbsp;Sam&nbsp;berangkat dari Sukabumi pukul&nbsp;10.00,&nbsp;pukul&nbsp;berapa&nbsp;Sam akan&nbsp;tiba&nbsp;di Tasikmalaya&nbsp;?</p><p>a. 10.30&nbsp;</p><p>b.&nbsp;11.00</p><p>c. 10.40</p><p>d.&nbsp;11.30&nbsp;</p><p>e.&nbsp;10.20</p>', 'C', '2022-11-29 20:55:37', '2022-11-29 20:55:37');
INSERT INTO `materi_satu_detail` VALUES (36, 1, 'VERBAL\r', '<p>Aries :&nbsp;Zodiak =&nbsp;… :&nbsp;Batu&nbsp;Mulia</p><p>a.&nbsp;Logam</p><p>b.&nbsp;Mahal</p><p>c. Perhiasan</p><p>d. Berlian</p><p>e. Keras</p>', 'D', '2022-11-29 20:56:19', '2022-11-29 20:56:19');
INSERT INTO `materi_satu_detail` VALUES (37, 1, 'VERBAL\r', '<p>Hujan&nbsp;:&nbsp;Air = Kilat&nbsp;:&nbsp;…</p><p>a. Awan</p><p>b. Gemuruh</p><p>c. Cahaya</p><p>d. Petir</p><p>e. Gelap</p>', 'C', '2022-11-29 20:56:59', '2022-11-29 20:56:59');
INSERT INTO `materi_satu_detail` VALUES (38, 1, 'VERBAL\r', '<p>Suara&nbsp;:&nbsp;Desibel =&nbsp;… :&nbsp;…</p><p>a. Temperature&nbsp;:&nbsp;Suhu</p><p>b. Berat&nbsp;:&nbsp;Kalori</p><p>c. Jarak :&nbsp;Gram</p><p>d. Merah&nbsp;: Warna</p><p>e. Tegangan&nbsp;:&nbsp;Volt</p>', 'E', '2022-11-29 20:57:43', '2022-11-29 20:57:43');
INSERT INTO `materi_satu_detail` VALUES (39, 1, 'LOGIS\r', '<figure class=\"image\"><img src=\"https://admin.pintarpsi.com/media/Screenshot 2022-11-29 at 8.58.19 PM_1669726708.png\"></figure>', 'B', '2022-11-29 20:58:29', '2022-11-29 20:58:29');
INSERT INTO `materi_satu_detail` VALUES (40, 1, 'LOGIS\r', '<figure class=\"image\"><img src=\"https://admin.pintarpsi.com/media/Screenshot 2022-11-29 at 8.58.41 PM_1669726729.png\"></figure>', 'E', '2022-11-29 20:58:51', '2022-11-29 20:58:51');
INSERT INTO `materi_satu_detail` VALUES (41, 1, 'LOGIS\r', '<figure class=\"image\"><img src=\"https://admin.pintarpsi.com/media/Screenshot 2022-11-29 at 8.58.58 PM_1669726745.png\"></figure>', 'A', '2022-11-29 20:59:07', '2022-11-29 20:59:07');
INSERT INTO `materi_satu_detail` VALUES (42, 1, 'PRAKTIS\r', '<p>Seorang&nbsp;penjual&nbsp;domba&nbsp;membeli&nbsp;50&nbsp;ekor&nbsp;domba&nbsp;seharga&nbsp;Rp.&nbsp;600.000,-&nbsp;per&nbsp;ekor.&nbsp;Setelah&nbsp;dua&nbsp;bulan kemudian&nbsp;membeli&nbsp;25&nbsp;ekor domba&nbsp;seharga&nbsp;Rp. 560.000,-&nbsp;per ekor.&nbsp;Jika&nbsp;penjual&nbsp;tersebut&nbsp;menghendaki harga&nbsp;rata-rata dombanya&nbsp;Rp.&nbsp;580.000,-&nbsp;per ekor,&nbsp;berapakah&nbsp;harga per ekor&nbsp;yang&nbsp;harus dibayar untuk membeli 25&nbsp;domba&nbsp;tambahan&nbsp;?</p><p>a.&nbsp;Rp.&nbsp;500.000,-</p><p>b.&nbsp;Rp.&nbsp;520.000,-</p><p>c.&nbsp;Rp.&nbsp;540.000,-</p><p>d.&nbsp;Rp.&nbsp;560.000,-</p><p>e.&nbsp;Rp.&nbsp;580.000,-</p>', 'D', '2022-11-29 20:59:25', '2022-11-29 20:59:25');
INSERT INTO `materi_satu_detail` VALUES (43, 1, 'PRAKTIS\r', '<p>Jika&nbsp;C&nbsp;rupiah&nbsp;dibagi&nbsp;sama&nbsp;rata&nbsp;pada&nbsp;N&nbsp;orang,&nbsp;maka&nbsp;setiap&nbsp;orang&nbsp;memperoleh&nbsp;bagian&nbsp;yang&nbsp;sama&nbsp;besar Rp.&nbsp;63.000,-. Kemudian&nbsp;datang&nbsp;seseorang&nbsp;ikut bergabung pada&nbsp;kelompok tersebut dan&nbsp;jika&nbsp;C&nbsp;rupiah dibagikan&nbsp;merata,&nbsp;maka&nbsp;setiap orang&nbsp;kini mendapat&nbsp;bagian&nbsp;sebesar Rp.52.500,-.&nbsp;Berapa&nbsp;rupiahkah&nbsp;C ?</p><p>a.&nbsp;Rp.&nbsp;350.000,-</p><p>b.&nbsp;Rp.&nbsp;275.000,-</p><p>c.&nbsp;Rp.&nbsp;330.000,-</p><p>d.&nbsp;Rp.&nbsp;345.000,-</p><p>e.&nbsp;Rp.&nbsp;315.000,-</p>', 'E', '2022-11-29 20:59:36', '2022-11-29 20:59:36');
INSERT INTO `materi_satu_detail` VALUES (44, 1, 'PRAKTIS\r', '<p>Sam&nbsp;membeli&nbsp;kemeja&nbsp;dengan&nbsp;harga&nbsp;Rp.&nbsp;80.000,-&nbsp;dan&nbsp;mendapat&nbsp;diskon&nbsp;15%.&nbsp;Setelah&nbsp;itu&nbsp;karena&nbsp;Sam sedang berulang&nbsp;tahun, dia&nbsp;mendapat diskon&nbsp;tambahan&nbsp;sebesar 25%. Berapakah harga&nbsp;kemeja&nbsp;yang harus dibayar&nbsp;Sam ?</p><p>a.&nbsp;Rp.&nbsp;36.000,-&nbsp;</p><p>b.&nbsp;Rp.&nbsp;51.000,-</p><p>c.&nbsp;Rp.&nbsp;54.000,-</p><p>d.&nbsp;Rp.&nbsp;22.000,-</p><p>e.&nbsp;Rp.&nbsp;16.000,-</p>', 'B', '2022-11-29 20:59:49', '2022-11-29 20:59:49');
INSERT INTO `materi_satu_detail` VALUES (45, 1, 'VERBAL\r', '<p>EKSPANSI&nbsp;persamaan&nbsp;kata&nbsp;dari …</p><p>a. Penyempitan</p><p>b. Perluasan</p><p>c. Penahanan</p><p>d. Perang</p><p>e. Pemusnahan</p>', 'B', '2022-11-29 21:00:14', '2022-11-29 21:00:14');
INSERT INTO `materi_satu_detail` VALUES (46, 1, 'VERBAL\r', '<p>REKOGNISI persamaan kata dari ...&nbsp;</p><p>a. Mengingat</p><p>b. Pemberitahuan&nbsp;</p><p>c. Pengakuan</p><p>d. Tuntutan</p><p>e. Hadiah</p>', 'C', '2022-11-29 21:01:17', '2022-11-29 21:01:17');
INSERT INTO `materi_satu_detail` VALUES (47, 1, 'VERBAL\r', '<p>REBAH lawan kata dari ...&nbsp;</p><p>a. Binasa</p><p>b. Kosong</p><p>c. Rapi</p><p>d. Tegak</p><p>e. Cemerlang</p>', 'D', '2022-11-29 21:01:26', '2022-11-29 21:01:26');
INSERT INTO `materi_satu_detail` VALUES (48, 1, 'LOGIS\r', '<p>Sam selalu libur dihari Senin, ia menggantikan jadwal rekan kerjanya dihari Minggu. Joe adalah rekan kerja Sam yang minta digantikan jadwalnya di hari Minggu.<br>Kesimpulan paling tepat yang dapat ditarik berdasarkan kedua pernyataan di atas adalah …</p><p>a. Sam libur dihari Senin minggu depan.</p><p>b. SamlemburdihariSenin.</p><p>c. Samtidaklibursamasekaliminggudepan.</p><p>d. Joe tidak libur sama sekali.</p><p>e. Sam dan Joe tidak libur sama sekali.</p>', 'A', '2022-11-29 21:01:41', '2022-11-29 21:01:41');
INSERT INTO `materi_satu_detail` VALUES (49, 1, 'LOGIS\r', '<p>Setiap pemain marathon larinya cepat. Sam adalah seorang pemain marathon sekaligus seorang pemain tinju. Pemain bola ada yang larinya lambat.<br>Kesimpulan paling tepat yang dapat ditarik berdasarkan ketiga pernyataan di atas adalah ...<br>a. Sam larinya lambat.</p><p>b. Lari Sam cepat jika bermain marathon, tetapi lambat ketika bermain tinju.&nbsp;</p><p>c. Semuapemainlarinyaharuscepat,baikdalammaratonmaupuntinju.</p><p>d. Sam larinya cepat.</p><p>e. Sam larinya kadang cepat dan kadang lambat.</p>', 'D', '2022-11-29 21:01:53', '2022-11-29 21:01:53');
INSERT INTO `materi_satu_detail` VALUES (50, 1, 'LOGIS\r', '<p>Jika Sam mendapatkan pekerjaan tahun ini, ia akan berlibur ke luar negeri. Sam berlibur ke Thailand akhir tahun ini.<br>Kesimpulan paling tepat yang dapat ditarik berdasarkan ketiga pernyataan di atas adalah …</p><p>a. Sam mendapatkan pekerjaan tahun depan.</p><p>b. Sam belum tentu mendapatkan pekerjaan tahun ini.</p><p>c. Sam mendapatkan pekerjaan tahun ini.</p><p>d. Sam mendapatkan pekerjaan tahun depan, tetapi tetap berlibur ke luar negeri.</p><p>e. Sam berlibur ke luar negeri.</p>', 'B', '2022-11-29 21:02:25', '2022-11-29 21:02:25');
INSERT INTO `materi_satu_detail` VALUES (51, 1, 'PRAKTIS\r', '<p>Apabila suatu pekerjaan diselesaikan oleh 64 orang dalam waktu 1/2 hari, berapakah orang yang dibutuhkan untuk menyelesaikan pekerjaan tersebut dalam waktu 4 hari ?<br>a. 8 orang<br>b. 16 orang<br>c. 32 orang&nbsp;<br>d. 24 orang&nbsp;<br>e. 48 orang</p>', 'A', '2022-11-29 21:03:00', '2022-11-29 21:03:00');
INSERT INTO `materi_satu_detail` VALUES (52, 1, 'PRAKTIS\r', '<p>Sam membeli dua buah buku dan sebatang pulpen dengan harga Rp. 4.000,-. Sedangkan Joe membeli tiga buah buku dan empat batang pulpen dengan harga Rp. 8.500,-. Berapakah harga satu batang pulpen ?<br>a. Rp.1.000,-<br>b. Rp.2.000,-&nbsp;<br>c. Rp.3.000,-&nbsp;<br>d. Rp.3.500,-&nbsp;<br>e. Rp.4.500,-</p>', 'A', '2022-11-29 21:03:16', '2022-11-29 21:03:16');
INSERT INTO `materi_satu_detail` VALUES (53, 1, 'PRAKTIS\r', '<p>Sam akan menerima komisi sebesar 15% setiap penjualan barang elektronik senilai Rp. 7.000.000,-. Pada bulan ini Sam telah menerima komisi sebesar Rp. 5.250.000,- setelah menjual beberapa speaker<br>seharga Rp. 500.000,- per unit dan kamera digital seharga Rp. 700.000,- per unit. Berapa unit kamera digital yang dijual oleh Sam jika perbandingan speaker dan kamera digital yang terjual adalah 2 : 3 ?<br>a. 26 unit<br>b. 27 unit<br>c. 28 unit<br>d. 29 unit<br>e. 30 unit</p>', 'E', '2022-11-29 21:03:30', '2022-11-29 21:03:30');
INSERT INTO `materi_satu_detail` VALUES (54, 1, 'VERBAL\r', '<p>Hari itu ayahmu akan pergi ke Makassar, ketika itu seluruh anggota keluarga tidak ada di rumah. Ibu sedang di pasar, sedangkan adik masih di sekolah. Ayahmu menitipkan kunci rumah kepada tetangga. Sesuai kebiasaan keluarga, jika salah satu anggota keluarga pergi dan tidak ada yang menunggu rumah, mereka cukup menulis pesan ke anggota keluarga yang lain.<br>Isi pesan singkat sesuai ilustrasi di atas adalah ...<br>a. Ayah berangkat ke Makassar, kunci rumah akan ayah titipkan.<br>b. Kunci rumah ayah titipkan kepada tetangga jika ayah berangkat ke Makassar.<br>c. Ayah mau berangkat,Ibu tidak ada di rumah, Kunci ayaht itipkan kepada adik.<br>d. Hari ini ayah ke Makassar, Ibu ke pasar, Adik ke sekolah, Kunci dititipkan oleh ibu kepada tetangga ya.&nbsp;<br>e. Ayah ke Makassar, Tidak ada orang di rumah, Kunci rumah ayah titipkan kepada tetangga.</p>', 'E', '2022-11-29 21:04:05', '2022-11-29 21:04:05');
INSERT INTO `materi_satu_detail` VALUES (55, 1, 'VERBAL\r', '<p>Penguasaan yang mendalam mengenai bahasa merupakan tolok ukur keberhasilan seorang wartawan. Kemahiran berbahasa wartawan akan memudahkannya memanipulasi bahasa sesuai dengan tujuan yang ingin dicapainya. Pilihan kata yang tepat dapat membangkitkan emosi pembaca. Sebaliknya, pilihan kata yang ceroboh dapat menimbulkan reaksi yang tidak diharapkan.<br>Simpulan isi paragraf tersebut adalah ...<br>a. Wartawan memang harus menguasai bahasa.<br>b. Wartawan pandai mengolah bahasa.<br>c. Wartawanharusterampilberbahasa.<br>d. Wartawan pintar memanipulasi bahasa.<br>e. Kemampuan berbahasa memudahkan wartawan mencapai tujuan yang diharapkan.</p>', 'C', '2022-11-29 21:04:15', '2022-11-29 21:04:15');
INSERT INTO `materi_satu_detail` VALUES (56, 1, 'VERBAL\r', '<p>Sejumlah pengusaha sepatu kecil menengah di Kabupaten Pati mengalami kesulitan menghadapi aturan perdagangan bebas atau Free Trade Agreement (FTA) ASEAN - China. Mereka mengaku merugi sejak isu digulirkannya aturan perdagangan tersebut. Para pedagang mengalami dampak negatif aturan itu. Pada sektor usaha kecil sepatu misalnya, pengusaha merugi sampai 50%. Sepinya order terjadi karena sebagian besar pelanggan tidak melakukan pemesanan karena menunggu masuknya produk sepatu impor. Alasannya, harga produk impor lebih murah daripada harga produk lokal.<br>Pernyataan berikut yang tidak sesuai dengan isi paragraf di atas adalah ...<br>a. FTA ASEAN - China membuat panik sejumlah pengusaha sepatu kecil menengah di Kabupaten Pati.<br>b. Akibat FTA ASEAN - China kerugian para pengusaha kecil di Kabupaten Pati mencapai sekitar 50%.<br>c. Sejakmunculnyaisudigulirkannyaperaturanperdagangan,kerugianakibatFTAASEAN-China dirasakan para pengusaha sepatu kecil menengah di Kabupaten Pati.<br>d. Para pelanggan pengusaha sepatu di Kabupaten Pati lebih memilih produk sepatu impor daripada membeli sepatu lokal.<br>e. Banyak pelanggan pengusaha sepatu di Kabupaten Pati menghentikan permintaan pesanan karena menunggu pelaksanaan FTA ASEAN - China.</p>', 'E', '2022-11-29 21:04:38', '2022-11-29 21:04:38');
INSERT INTO `materi_satu_detail` VALUES (57, 1, 'LOGIS\r', '<figure class=\"image\"><img src=\"https://admin.pintarpsi.com/media/Screenshot 2022-11-29 at 9.04.47 PM_1669727100.png\"></figure>', 'C', '2022-11-29 21:05:01', '2022-11-29 21:05:01');
INSERT INTO `materi_satu_detail` VALUES (58, 1, 'LOGIS\r', '<figure class=\"image\"><img src=\"https://admin.pintarpsi.com/media/Screenshot 2022-11-29 at 9.05.08 PM_1669727115.png\"></figure>', 'D', '2022-11-29 21:05:17', '2022-11-29 21:05:17');
INSERT INTO `materi_satu_detail` VALUES (59, 1, 'LOGIS\r', '<figure class=\"image\"><img src=\"https://admin.pintarpsi.com/media/Screenshot 2022-11-29 at 9.05.23 PM_1669727131.png\"></figure>', 'D', '2022-11-29 21:05:33', '2022-11-29 21:05:33');
INSERT INTO `materi_satu_detail` VALUES (60, 1, 'PRAKTIS\r', '<p>8kodi+5lusin+2gross = ...&nbsp;<br>a. 508 buah<br>b. 25 kodi&nbsp;<br>c. 47 lusin&nbsp;<br>d. 512 buah&nbsp;<br>e. 45 lusin</p>', 'A', '2022-11-29 21:05:48', '2022-11-29 21:05:48');
INSERT INTO `materi_satu_detail` VALUES (61, 1, 'PRAKTIS\r', '<p>2 abad + 3,5 milenium + 12 lustrum + 15 windu + 4 dasawarsa = ...&nbsp;<br>a. 782 lustrum<br>b. 784 lustrum<br>c. 3942 tahun<br>d. 3952 tahun<br>e. 390 dasawarsa</p>', 'B', '2022-11-29 21:06:04', '2022-11-29 21:06:04');
INSERT INTO `materi_satu_detail` VALUES (62, 1, 'PRAKTIS\r', '<p>1 milenium + 5 abad + 10 dasawarsa + 3 windu + 6 lustrum = ...&nbsp;<br>a. 1650 tahun<br>b. 1652 tahun&nbsp;<br>c. 1654 tahun&nbsp;<br>d. 1656 tahun&nbsp;<br>e. 1658 tahun</p>', 'C', '2022-11-29 21:06:19', '2022-11-29 21:06:19');
INSERT INTO `materi_satu_detail` VALUES (63, 1, 'VERBAL\r', '<p>Jantung : ... = Otak : Memikir&nbsp;<br>a. Pompa<br>b. Dada&nbsp;<br>c. Kepala&nbsp;<br>d. Setral&nbsp;<br>e. Denyut</p>', 'A', '2022-11-29 21:06:35', '2022-11-29 21:06:35');
INSERT INTO `materi_satu_detail` VALUES (64, 1, 'VERBAL\r', '<p>..... : Lensa = Manusia : Mata&nbsp;<br>a. Cermin<br>b. Cekung&nbsp;<br>c. Fotografi&nbsp;<br>d. Kamera&nbsp;<br>e. Kontak</p>', 'D', '2022-11-29 21:06:57', '2022-11-29 21:06:57');
INSERT INTO `materi_satu_detail` VALUES (65, 1, 'VERBAL\r', '<p>Dana : Penggelapan = ... : ...&nbsp;<br>a. Karya Tulis : Penjiplakan<br>b. Sopir : Kernet<br>c. Penjiplakan : Plagiat<br>d. Teller : Bank<br>e. Karya Tulis : Karya Ilmiah</p>', 'A', '2022-11-29 21:07:10', '2022-11-29 21:07:10');
INSERT INTO `materi_satu_detail` VALUES (66, 1, 'LOGIS\r', '<p>Jika Sam membeli kue, maka ia juga membeli permen. Jika Sam membeli permen, maka Joe membeli cokelat.<br>Kesimpulan paling tepat yang dapat ditarik berdasarkan ketiga pernyataan di atas adalah ............&nbsp;<br>a. Sam membeli permen dan cokelat.<br>b. Sam dan Joe membeli sepatu.<br>c. Sammembelikuedanpermen.<br>d. Sam membeli kue dan Joe membeli cokelat.&nbsp;<br>e. Joe dan Sam membeli kue.</p>', 'E', '2022-11-29 21:07:24', '2022-11-29 21:07:24');
INSERT INTO `materi_satu_detail` VALUES (67, 1, 'LOGIS\r', '<p>Anaknya Sam adalah saudara sepupuku. Jika demikian, bagaimana hubungan kekeluargaan antara aku dan Sam ?<br>a. Aku adalah Ibu dari Sam.<br>b. Aku adalah anak dari Sam.<br>c. Aku adalah Bibi dari Sam.<br>d. Aku adalah sepupu Sam.<br>e. Aku adalah keponakan Sam.</p>', 'E', '2022-11-29 21:07:36', '2022-11-29 21:07:36');
INSERT INTO `materi_satu_detail` VALUES (68, 1, 'LOGIS\r', '<p>Semua pengunjung pameran adalah ilmuwan. Semua ilmuwan adalah orang introvert. Sam adalah pengunjung pameran.<br>Kesimpulan paling tepat yang dapat ditarik berdasarkan ketiga pernyataan di atas adalah ...&nbsp;<br>a. Sam bukan ilmuwan.<br>b. Selain Sam ada ilmuwan yang tidak datang ke pameran.<br>c. Samadalahorangyangintrovert.<br>d. Jika Sam adalah orang yang introvert maka Sam bukan ilmuwan.&nbsp;<br>e. Sam bukan orang yang introvert.</p>', 'C', '2022-11-29 21:07:50', '2022-11-29 21:07:50');
INSERT INTO `materi_satu_detail` VALUES (69, 1, 'PRAKTIS\r', '<p>Sam bekerja 8 jam sehari. Dalam satu minggu ia bekerja selama 5 hari dengan bayaran Rp. 20.000,- per jam kerja dan Rp. 25.000,- per jam lembur. Setelah bekerja selama sebulan penuh, ia menerima gaji sebesar Rp. 3.550.000,-. Berapakah jumlah jam lembur dalam sebulan ?<br>a. 12 jam<br>b. 14 jam<br>c. 16 jam&nbsp;<br>d. 18 jam&nbsp;<br>e. 20 jam</p>', 'B', '2022-11-29 21:08:04', '2022-11-29 21:08:04');
INSERT INTO `materi_satu_detail` VALUES (70, 1, 'PRAKTIS\r', '<p>PT Luar Indah memanggil 50 pelamar pria dan 70 pelamar perempuan. Hanya 75% pelamar pria dan 40% pelamar perempuan yang datang untuk diwawancarai. Peserta diwawancarai dalam tiga gelombang. Berapa pewawancara yang dibutuhkan, jika satu orang pewawancara paling banyak mewawancarai 3<br>pelamar ?<br>a. 3 pewawancara<br>b. 4 pewawancara<br>c. 5 pewawancara<br>d. 7 pewawancara<br>e. 8 pewawancara</p>', 'D', '2022-11-29 21:08:24', '2022-11-29 21:08:24');
INSERT INTO `materi_satu_detail` VALUES (71, 1, 'PRAKTIS\r', '<p>Pada sebuah komunitas olahraga, terdapat 22 orang yang senang olahraga lari, 28 orang senang olahraga basket, 20 orang senang olahraga lari dan juga senang olahraga basket. Berapa banyak orang yang ada di komunitas tersebut ?<br>a. 30 orang</p><p>b. 40 orang&nbsp;</p><p>c. 50 orang&nbsp;</p><p>d. 60 orang&nbsp;</p><p>e. 70 orang</p>', 'A', '2022-11-29 21:08:38', '2022-11-29 21:08:38');
INSERT INTO `materi_satu_detail` VALUES (72, 1, 'VERBAL\r', '<p>LUMAT persamaan dari kata ...&nbsp;</p><p>a. Telan</p><p>b. Halus&nbsp;</p><p>c. Habis&nbsp;</p><p>d. Makan&nbsp;</p><p>e. Kunyah</p>', 'B', '2022-11-29 21:08:47', '2022-11-29 21:08:47');
INSERT INTO `materi_satu_detail` VALUES (73, 1, 'VERBAL\r', '<p>GEGAP lawan kata dari ...&nbsp;</p><p>a. Gemetar</p><p>b. Gugup&nbsp;</p><p>c. Gempita&nbsp;</p><p>d. Lancar</p><p>e. Ramai</p>', 'D', '2022-11-29 21:09:02', '2022-11-29 21:09:02');
INSERT INTO `materi_satu_detail` VALUES (74, 1, 'VERBAL\r', '<p>SUPERVISI persamaan kata dari ...&nbsp;</p><p>a. Pengawasan</p><p>b. Pengesahan</p><p>c. Pembuktian</p><p>d. Pemberitahuan&nbsp;</p><p>e. Larangan</p>', 'A', '2022-11-29 21:09:14', '2022-11-29 21:09:14');
INSERT INTO `materi_satu_detail` VALUES (75, 1, 'LOGIS\r', '<p>Setiap siswa kelas X memiliki kalkulator grafik. Setiap orang yang memiliki kalkulator grafik mengerti tentang fungsi trigonometri. Sam adalah siswa kelas X.<br>Kesimpulan paling tepat yang dapat ditarik berdasarkan ketiga pernyataan di atas adalah ...<br>a. Sam mengerti tentang fungsi trigonometri tetapi tidak memiliki kalkulator.<br>b. Sam mengerti tentang fungsi trigonometri.<br>c. Sam memiliki kalkulator grafik.<br>d. Sam belum tentu mengerti tentang fungsi trigonometri.<br>e. Sam mengerti tentang fungsi trigonometri.</p>', 'B', '2022-11-29 21:09:32', '2022-11-29 21:09:32');
INSERT INTO `materi_satu_detail` VALUES (76, 1, 'LOGIS\r', '<p>Jika harga bahan baku semakin tinggi maka keuntungan berkurang. Jika subsidi UKM meningkat maka biaya produksi tercukupi. Harga bahan baku semakin tinggi atau biaya produksi tidak tercukupi. Kesimpulan paling tepat yang dapat ditarik berdasarkan ketiga pernyataan di atas adalah ...<br>a. Harga bahan baku semakin tinggi dan biaya produksi tidak tercukupi.<br>b. Jika keuntungan berkurang maka subsidi UKM tidak meningkat.<br>c. Keuntungan berkurang atau subsidi UKM tidak meningkat.<br>d. Jika harga bahan baku semakin tinggi maka biaya produksi tidak tercukupi.<br>e. Subsidi UKM tidak meningkat dan keuntungan berkurang.</p>', 'C', '2022-11-29 21:09:47', '2022-11-29 21:09:47');
INSERT INTO `materi_satu_detail` VALUES (77, 1, 'LOGIS\r', '<figure class=\"image\"><img src=\"https://admin.pintarpsi.com/media/Screenshot 2022-11-29 at 9.09.58 PM_1669727406.png\"></figure>', 'A', '2022-11-29 21:10:08', '2022-11-29 21:10:08');
INSERT INTO `materi_satu_detail` VALUES (78, 1, 'PRAKTIS\r', '<p><strong>4x8:5-12 = </strong>...&nbsp;</p><p>a. 9</p><p>b. 0</p><p>c. 6,5&nbsp;</p><p>d. – 6,5&nbsp;</p><p>e. – 5,6</p>', 'E', '2022-11-29 21:10:20', '2022-11-29 21:10:20');
INSERT INTO `materi_satu_detail` VALUES (79, 1, 'PRAKTIS\r', '<p><strong>30,1:0,7=</strong>...&nbsp;</p><p>a. 43</p><p>b. 45&nbsp;</p><p>c. 4,3&nbsp;</p><p>d. 4,5&nbsp;</p><p>e. 0,43</p>', 'A', '2022-11-29 21:10:32', '2022-11-29 21:10:32');
INSERT INTO `materi_satu_detail` VALUES (80, 1, 'PRAKTIS\r', '<p>Sam menjual anggur dengan harga Rp. 12.000,- per kg. Dia memiliki 4 boks anggur yang masing-masing boks berisi 20 kg anggur. Boks anggur tersebut dapat dijual dengan harga Rp. 5.000,- per boks. Berapa uang yang dapat diterima Sam dari hasil penjualan seluruh anggur dan boks tersebut ?<br>a. Rp. 896.000,-</p><p>b. Rp. 720.000,-&nbsp;</p><p>c. Rp. 930.000,-&nbsp;</p><p>d. Rp. 980.000,-&nbsp;</p><p>e. Rp. 821.000,-</p>', 'D', '2022-11-29 21:10:41', '2022-11-29 21:10:41');
INSERT INTO `materi_satu_detail` VALUES (81, 1, 'VERBAL\r', '<p>Mengerem : Berhenti = ... : Tidur&nbsp;</p><p>a. Mobil</p><p>b. Obat</p><p>c. Kecelakaan&nbsp;</p><p>d. Bius</p><p>e. Sadar</p>', 'D', '2022-11-29 21:11:01', '2022-11-29 21:11:01');
INSERT INTO `materi_satu_detail` VALUES (82, 1, 'VERBAL\r', '<p>Menara Eiffel : ... = Taj Mahal : ...&nbsp;</p><p>a. Inggris, India</p><p>b. Perancis, Mesir&nbsp;</p><p>c. Perancis, India</p><p>d. Italia, Pakistan</p><p>e. Jerman, Pakistan</p>', 'C', '2022-11-29 21:11:15', '2022-11-29 21:11:15');
INSERT INTO `materi_satu_detail` VALUES (83, 1, 'VERBAL\r', '<p>HIRAU lawan kata dari ...&nbsp;</p><p>a. Lalai</p><p>b. Acuh&nbsp;</p><p>c. Peduli&nbsp;</p><p>d. Lupa&nbsp;</p><p>e. Suka</p>', 'D', '2022-11-29 21:11:39', '2022-11-29 21:11:39');
INSERT INTO `materi_satu_detail` VALUES (84, 1, 'LOGIS\r', '<figure class=\"image\"><img src=\"https://admin.pintarpsi.com/media/Screenshot 2022-11-29 at 9.11.44 PM_1669727511.png\"></figure>', 'C', '2022-11-29 21:11:53', '2022-11-29 21:11:53');
INSERT INTO `materi_satu_detail` VALUES (85, 1, 'LOGIS\r', '<figure class=\"image\"><img src=\"https://admin.pintarpsi.com/media/Screenshot 2022-11-29 at 9.12.03 PM_1669727530.png\"></figure>', 'A', '2022-11-29 21:12:11', '2022-11-29 21:12:11');
INSERT INTO `materi_satu_detail` VALUES (86, 1, 'LOGIS\r', '<figure class=\"image\"><img src=\"https://admin.pintarpsi.com/media/Screenshot 2022-11-29 at 9.12.16 PM_1669727543.png\"></figure>', 'B', '2022-11-29 21:12:24', '2022-11-29 21:12:24');
INSERT INTO `materi_satu_detail` VALUES (87, 1, 'PRAKTIS\r', '<p><strong>(–20)+8x5–18:(–3) = </strong>...</p><p>a. –26&nbsp;</p><p>b. –14&nbsp;</p><p>c. 14&nbsp;</p><p>d. 26&nbsp;</p><p>e. 12</p>', 'D', '2022-11-29 21:12:43', '2022-11-29 21:12:43');
INSERT INTO `materi_satu_detail` VALUES (88, 1, 'PRAKTIS\r', '<p><strong>27x4–15:3+4 = </strong>...</p><p>a. 103</p><p>b. 105&nbsp;</p><p>c. 109&nbsp;</p><p>d. 97&nbsp;</p><p>e. 107</p>', 'E', '2022-11-29 21:13:01', '2022-11-29 21:13:01');
INSERT INTO `materi_satu_detail` VALUES (89, 1, 'PRAKTIS\r', '<p>Jam tangan Sam yang setiap jamnya terlalu cepat 5 menit dicocokkan dengan jam tangan Joe yang setiap jamnya terlambat 4 menit, tepat pada jam 12 siang. Berapa jam perbedaan antara kedua jam itu bila jam yang tepat waktu menunjukkan tepat pada tengah malam ?<br>a. 25 menit<br>b. 40 menit<br>c. 1 jam 32 menit&nbsp;<br>d. 1 jam 48 menit&nbsp;<br>e. 2 jam 15 menit</p>', 'D', '2022-11-29 21:13:16', '2022-11-29 21:13:16');
INSERT INTO `materi_satu_detail` VALUES (90, 1, 'VERBAL\r', '<p>ESTIMASI persamaan kata dari ...&nbsp;</p><p>a. Kepastian</p><p>b. Kekuatan&nbsp;</p><p>c. Orasi</p><p>d. Perkiraan&nbsp;</p><p>e. Kenyataan</p>', 'D', '2022-11-29 21:13:32', '2022-11-29 21:13:32');
INSERT INTO `materi_satu_detail` VALUES (91, 1, 'VERBAL\r', '<p>SAHAJA persamaan dari ...<br>a. Jujur<br>b. Tanggung Jawab<br>c. Sederhana<br>d. Mewah<br>e. Pandai</p>', 'C', '2022-11-29 21:13:49', '2022-11-29 21:13:49');
INSERT INTO `materi_satu_detail` VALUES (92, 1, 'VERBAL\r', '<p>TENTATIF lawan kata dari ...&nbsp;<br>a. Pasti<br>b. Langsung&nbsp;<br>c. Relatif<br>d. Tepat<br>e. Jelas</p>', 'A', '2022-11-29 21:14:00', '2022-11-29 21:14:00');
INSERT INTO `materi_satu_detail` VALUES (93, 1, 'LOGIS\r', '<p>Semua siswa di SMA X wajib mengenakan dasi. Sam seorang anak yang rajin. Joe adalah adik laki-laki Sam yang masih bersekolah di SMA X<br>Kesimpulan paling tepat yang dapat ditarik berdasarkan ketiga pernyataan di atas adalah ...<br>a. Sam hanya mengenakan dasi ketika bersekolah<br>b. Joe sudah lulus SMA<br>c. Samselalumengenakandasi<br>d. Sam memakai dasi ketika bersekolah<br>e. Semua adik Sam rajin.</p>', 'C', '2022-11-29 21:14:22', '2022-11-29 21:14:22');
INSERT INTO `materi_satu_detail` VALUES (94, 1, 'LOGIS\r', '<figure class=\"image\"><img src=\"https://admin.pintarpsi.com/media/Screenshot 2022-11-29 at 9.14.28 PM_1669727676.png\"></figure>', 'D', '2022-11-29 21:14:38', '2022-11-29 21:14:38');
INSERT INTO `materi_satu_detail` VALUES (95, 1, 'LOGIS\r', '<figure class=\"image\"><img src=\"https://admin.pintarpsi.com/media/Screenshot 2022-11-29 at 9.14.43 PM_1669727690.png\"></figure>', 'D', '2022-11-29 21:14:52', '2022-11-29 21:14:52');
INSERT INTO `materi_satu_detail` VALUES (96, 1, 'PRAKTIS\r', '<p><strong>73x2:73–5 = </strong>...&nbsp;</p><p>a. –3</p><p>b. –6&nbsp;</p><p>c. 0&nbsp;</p><p>d. 3&nbsp;</p><p>e. 6</p>', 'A', '2022-11-29 21:15:02', '2022-11-29 21:15:02');
INSERT INTO `materi_satu_detail` VALUES (97, 1, 'PRAKTIS\r', '<p><strong>536x782x0-73+108=.......&nbsp;</strong></p><p>a. 15</p><p>b. 20&nbsp;</p><p>c. 35&nbsp;</p><p>d. 45&nbsp;</p><p>e. 55</p>', 'C', '2022-11-29 21:15:14', '2022-11-29 21:15:14');
INSERT INTO `materi_satu_detail` VALUES (98, 1, 'PRAKTIS\r', '<p>Sam membeli 40 kantong beras. Setiap kantong berisi 7 kg beras. Sebanyak 25 kg diberikan kepada kakek buyut. Diberikan kepada sepuluh anak jalanan masing-masing sebanyak 5 kg. Tujuh orang tukang ojek dan tukang parkir di depan komplek rumahnya diberikan masing-masing 6 kg beras. Kemudian dibagikan kepada 30 orang di panti sosial dekat rumahnya masing-masing 5 kg beras.</p><p>Berapa kg beras yang masih tersisa?&nbsp;</p><p>a. 13kg</p><p>b. 14kg</p><p>c. 15kg</p><p>d. 24kg&nbsp;</p><p>e. 27kg</p>', 'A', '2022-11-29 21:15:33', '2022-11-29 21:15:33');
INSERT INTO `materi_satu_detail` VALUES (99, 1, 'VERBAL\r', '<p>Pengembangan Danau Toba sebagai destinasi wisata dunia dengan konsep Monaco of Asia, menjadi pusat perhatian. Namun, baru-baru ini nelayan keramba jaring apung di Danau Toba merugi karena ribuan ton ikan mati mendadak. Hasil penelitian menyebutkan matinya ikan-ikan itu disebabkan kurangnya oksigen. Persoalan itu menjadi sorotan dan langsung memengaruhi jumlah kunjungan wisata. Upaya penanganan pun mulai dilakukan, namun upaya tersebut tidak maksimal karena faktor kurangnya dukungan dari masyarakat sekitar. Selain itu, perusahaan asing yang menjalankan usaha di sekitaran Danau Toba pun seolah-olah terkesan belum paham bahwa perputaran bisnis mereka bergantung pada Danau Toba.<br>Pesan tersirat yang ingin disampaikan penulis dalam teks di atas adalah ...<br>a. Pemerintah sebaiknya serius berupaya menjadikan Danau Toba sebagai destinasi wisata dunia.<br>b. Wisatawan dunia seharusnya mendapat informasi lengkap tentang penanganan Danau Toba.<br>c. Masyarakat dan pebisnis seharusnya membantu pemerintah dalam mengatasi masalah lingkungan Danau Toba.<br>d. Pemerintah perlu bersikap keras dalam menertibkan keramba jaring apung yang dibuat oleh nelayan.<br>e. Perusahaan asing yang tidak mau terlibat dalam pemeliharaan lingkungan Danau Toba perlu ditindak tegas.</p>', 'C', '2022-11-29 21:15:51', '2022-11-29 21:15:51');
INSERT INTO `materi_satu_detail` VALUES (100, 1, 'VERBAL\r', '<p>Dirjen Aplikasi dan Informatika (Aptika) Kementrian Komunikasi dan Informatika (Kemenkominfo) Semuel Abrijani mengakatan pihaknya akan memblokir gim Player Unknown’s Battlegrounds (PUBG). Ia mengatakan permintaan pemblokiran harus dilalui oleh pengkajian terlebih dahulu oleh Majelis Ulama Indonesia (MUI). Langkah pemblokiran menurutnya dilakukan sebagai tindak lanjut permintaan pemblokiran gim PUBG yang awalnya diwacanakan oleh MUI Jawa Barat. MUI Jabar mewacanakan untuk mengeluarkan fatwa haram terhadap PUBG usai kasus penembakan masjid di Selandia Baru yang terinspirasi dari gim tersebut. PUBG saat ini menjadi gim terpopuler di Steam dengan satu juta pemain. (Sumber : cnnindonesia.com).<br>Ide pokok dalam teks di atas adalah ...<br>a. Pihak Kominfo telah memblokir gim Player Unknown’s Battlegrounds (PUBG).&nbsp;<br>b. Gim PUBG berdampak negatif bagi pemainnya.<br>c. KominfoakanblokirPUBGusaiadakajiandariMajelisUlamaIndonesia(MUI).&nbsp;<br>d. PUBG saat ini menjadi gim terpopuler di Steam dengan satu juta pemain.<br>e. MUI Jawa Barat telah mengeluarkan fatwa haram terhadap PUBG.</p>', 'C', '2022-11-29 21:16:13', '2022-11-29 21:16:13');
INSERT INTO `materi_satu_detail` VALUES (101, 1, 'VERBAL\r', '<p>Turbin : Air = ... : ...&nbsp;<br>a. Ban : Roda<br>b. Telepon : Genggam&nbsp;<br>c. Senter : Batu baterai&nbsp;<br>d. Tinta : Hitam<br>e. Sarjana : Wisuda</p>', 'C', '2022-11-29 21:16:33', '2022-11-29 21:16:33');
INSERT INTO `materi_satu_detail` VALUES (102, 1, 'LOGIS\r', '<p>Sebuah bus menempuh perjalanan dari Solo ke Yogyakarta selama 2,5 jam dengan kecepatan 70 km/jam. Sam mengendarai sepeda motor mampu menempuh jarak yang sama namun hanya dalam waktu 2 jam.<br>Kesimpulan paling tepat yang dapat ditarik berdasarkan kedua pernyataan di atas adalah ...<br>a. Antara bus dan Sam tidak bisa dibandingkan kecepatan tempuhnya.<br>b. Kecepatan sepeda motor Sam tidak jauh berbeda dengan kecepatan bus.<br>c. Kecepatan sepeda motor Sam lebih cepat dibanding kecepatan bus.<br>d. Kecepatan bus sama dengan kecepatan sepeda motor Sam.<br>e. Kecepatan sepeda motor Sam lebih kecil dibanding kecepatan bus.</p>', 'C', '2022-11-29 21:16:47', '2022-11-29 21:16:47');
INSERT INTO `materi_satu_detail` VALUES (103, 1, 'LOGIS\r', '<p>Mobil yang berkualitas baik ramah lingkungan dan hemat bahan bakar. Sebagian mobil di kota Y berkualitas buruk.<br>Kesimpulan paling tepat yang dapat ditarik berdasarkan kedua pernyataan di atas adalah ...<br>a. Semua mobil di kota Y ramah lingkungan dan hemat bahan bakar.<br>b. Di kota Y ada mobil yang ramah lingkungan dan hemat bahan bakar.<br>c. Tidak ada satupun orang di kota Y yang memiliki mobil berkualitas baik.<br>d. Sebagian orang di kota Y tidak memiliki mobil berkualitas baik.<br>e. Tidak ada mobil yang berkualitas buruk di kota Y.</p>', 'B', '2022-11-29 21:16:56', '2022-11-29 21:16:56');
INSERT INTO `materi_satu_detail` VALUES (104, 1, 'LOGIS\r', '<p>Tempat nongkrong yang bergaya klasik lebih mahal harganya dibanding tempat nongkrong yang bergaya tradisional. Tempat makan yang lebih mahal harganya lebih banyak dikunjungi anak-anak muda. Kesimpulan paling tepat yang dapat ditarik berdasarkan kedua pernyataan di atas adalah ............<br>a. Tempat nongkrong yang bergaya klasik dan tradisional jumlah anak-anak muda yang datang sama<br>b. Tempat nongkrong yang bergaya tradisional lebih banyak didatangi anak-anak muda karena harganya murah<br>c. Tidak bisa ditentukan banyaknya anak-anak muda yang datang di tempat nongkrong bergaya klasik dan bergaya tradisional<br>d. Tempat nongkrong yang bergaya klasik lebih banyak didatangi anak-anak muda<br>e. Tempat nongkrong bergaya klasik dan tradisional harganya sama</p>', 'D', '2022-11-29 21:17:12', '2022-11-29 21:17:12');
INSERT INTO `materi_satu_detail` VALUES (105, 1, 'PRAKTIS\r', '<p>Sebuah tempat penyewaan buku memasang tarif penyewaan buku sebesar Rp. 1.000,- untuk 3 hari pertama dan untuk selanjutnya Rp. 600,- per hari. Jika Sam membayar tarif sewa Rp. 11.800,- untuk sebuah buku, maka berapa harikah Sam menyewa buku tersebut ?<br>a. 13 hari<br>b. 15 hari&nbsp;<br>c. 18 hari&nbsp;<br>d. 21 hari&nbsp;<br>e. 24 hari</p>', 'D', '2022-11-29 21:17:30', '2022-11-29 21:17:30');
INSERT INTO `materi_satu_detail` VALUES (106, 1, 'PRAKTIS\r', '<p>Sebuah gudang pakan ayam menyusun tumpukan pakan ayam dengan menggunakan cara sebagai berikut :<br>Tumpukan pakan ayam paling atas 17 sak, tumpukan pakan ayam di bawahnya 21 sak, dan seterusnya setiap tumpukan di bawahnya selalu lebih banyak 4 sak dari tumpukan di atasnya. Jika ada 23 tumpukan<br>pakan ayam, berapa banyak tumpukan pakan ayam paling bawah ?&nbsp;<br>a. 103 sak<br>b. 105 sak<br>c. 107 sak<br>d. 109 sak&nbsp;<br>e. 111 sak</p>', 'B', '2022-11-29 21:17:50', '2022-11-29 21:17:50');
INSERT INTO `materi_satu_detail` VALUES (107, 1, 'PRAKTIS\r', '<p><strong>8,1x4,3+6,9–1,02 = </strong>...&nbsp;</p><p>a. 39,38</p><p>b. 38,77&nbsp;</p><p>c. 43,96&nbsp;</p><p>d. 37,21&nbsp;</p><p>e. 40,71</p>', 'E', '2022-11-29 21:18:08', '2022-11-29 21:18:08');
INSERT INTO `materi_satu_detail` VALUES (108, 1, 'VERBAL\r', '<p>DEPENDEN lawan kata dari ...&nbsp;</p><p>a. Keterkaitan</p><p>b. Mandiri</p><p>c. Korelasi&nbsp;</p><p>d. Valid&nbsp;</p><p>e. Nekat</p>', 'B', '2022-11-29 21:18:18', '2022-11-29 21:18:18');
INSERT INTO `materi_satu_detail` VALUES (109, 1, 'VERBAL\r', '<p>ANTERO lawan kata dari ...&nbsp;</p><p>a. Sejagad</p><p>b. Sebagian&nbsp;</p><p>c. Serata</p><p>d. Semua&nbsp;</p><p>e. Searah</p>', 'B', '2022-11-29 21:18:27', '2022-11-29 21:18:27');
INSERT INTO `materi_satu_detail` VALUES (110, 1, 'VERBAL\r', '<p>Bintang:Galaksi:AlamSemesta = ... : ...: ...&nbsp;</p><p>a. Huruf , Kata, Kalimat</p><p>b. Aku, Kau, Kita</p><p>c. Jarang, Sering, Selalu&nbsp;</p><p>d. Makan, Minum, Berdoa</p><p>e. Air, Hujan, Deras</p>', 'A', '2022-11-29 21:18:42', '2022-11-29 21:18:42');
INSERT INTO `materi_satu_detail` VALUES (111, 1, 'VERBAL\r', '<p>Tukang:Gergaji:Palu = ... : ...: ...&nbsp;</p><p>a. Penari, Topi, Selendang</p><p>b. Guru, Kapur, Topi</p><p>c. Montir, Obeng, Tang</p><p>d. Tukang, Stetoskop, Obat&nbsp;</p><p>e. Penulis, Kuas, Cat</p>', 'C', '2022-11-29 21:18:54', '2022-11-29 21:18:54');
INSERT INTO `materi_satu_detail` VALUES (112, 1, 'VERBAL\r', '<p>Setiap kenaikan harga bahan bakar minyak pasti diikuti oleh kenaikan tarif angkutan umum. Setiap kenaikan tarif angkutan umum selalu diikuti kenaikan permintaan bahan bakar minyak.<br>Kesimpulan paling tepat yang dapat ditarik berdasarkan kedua pernyataan di atas adalah ...</p><p>a. Setiap kenaikan permintaan bahan bakar minyak selalu diikuti kenaikan tariff angkutan umum.</p><p>b. Setiap terjadi kenaikan harga BBM belum tentu diikuti kenaikan permintaan bahan bakar minyak.&nbsp;</p><p>c. Permintaan bahan bakar minyak hanya naik jika ada kenaikan tarif angkutan umum.</p><p>d. Setiap terjadi kenaikan harga BBM pasti diikuti kenaikan permintaan BBM.</p><p>e. Kenaikan tarif angkutan umum selalu disebabkan kenaikan harga BBM.</p>', 'D', '2022-11-29 21:19:06', '2022-11-29 21:19:06');
INSERT INTO `materi_satu_detail` VALUES (113, 1, 'PRAKTIS\r', '<figure class=\"image\"><img src=\"https://admin.pintarpsi.com/media/Screenshot 2022-11-29 at 9.19.23 PM_1669727970.png\"></figure>', 'E', '2022-11-29 21:19:32', '2022-11-29 21:19:32');
INSERT INTO `materi_satu_detail` VALUES (114, 1, 'PRAKTIS\r', '<figure class=\"image\"><img src=\"https://admin.pintarpsi.com/media/Screenshot 2022-11-29 at 9.19.39 PM_1669727986.png\"></figure>', 'A', '2022-11-29 21:19:47', '2022-11-29 21:19:47');
INSERT INTO `materi_satu_detail` VALUES (115, 1, 'PRAKTIS\r', '<p><strong>16 x 3 :2+7–14= </strong>...</p><p>a. 26</p><p>b. 31</p><p>c. 27</p><p>d. 17</p><p>e. 24</p>', 'D', '2022-11-29 21:20:38', '2022-11-29 21:20:38');
INSERT INTO `materi_satu_detail` VALUES (116, 1, 'PRAKTIS\r', '<p>Kota Bajo mempunyai jumlah penduduk sebanyak 350.000 orang yang setiap tahun penduduknya bertambah 15.000 orang. Kota Tuban mempunyai penduduk 1.050.000 orang yang setiap tahun penduduknya berkurang 20.000 orang. Berapa tahun lagikah kedua kota tersebut menjadi sama ?&nbsp;</p><p>a. 12 tahun</p><p>b. 14 tahun&nbsp;</p><p>c. 16 tahun&nbsp;</p><p>d. 18 tahun&nbsp;</p><p>e. 20 tahun</p>', 'E', '2022-11-29 21:20:48', '2022-11-29 21:20:48');
INSERT INTO `materi_satu_detail` VALUES (117, 1, 'PRAKTIS', '<p>3 abad + 7 dasawarsa + 5 windu =.......</p><p>a. 400 tahun<br>b. 43 dasawarsa<br>c. 390 tahun<br>d. 380 tahun<br>e. 41 dasawarsa</p>', 'E', '2022-11-29 21:21:15', '2022-11-29 21:21:15');
INSERT INTO `materi_satu_detail` VALUES (118, 2, 'VERBAL', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670044657.png\"></p>', 'D', '2022-12-03 13:18:42', '2022-12-03 13:18:42');
INSERT INTO `materi_satu_detail` VALUES (119, 2, 'VERBAL', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670044776.png\"></p>', 'E', '2022-12-03 13:20:01', '2022-12-03 13:20:01');
INSERT INTO `materi_satu_detail` VALUES (120, 2, 'VERBAL', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670044850.png\"></p>', 'D', '2022-12-03 13:21:09', '2022-12-03 13:21:09');
INSERT INTO `materi_satu_detail` VALUES (121, 2, 'VERBAL', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670044908.png\"></p>', 'B', '2022-12-03 13:22:09', '2022-12-03 13:22:09');
INSERT INTO `materi_satu_detail` VALUES (122, 2, 'VERBAL', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670044962.png\"></p>', 'B', '2022-12-03 13:22:48', '2022-12-03 13:22:48');
INSERT INTO `materi_satu_detail` VALUES (123, 2, 'VERBAL', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670044997.png\"></p>', 'A', '2022-12-03 13:23:36', '2022-12-03 13:23:36');
INSERT INTO `materi_satu_detail` VALUES (124, 2, 'LOGIS', '<figure class=\"image\"><img src=\"https://admin.pintarpsi.com/media/image_1670076091.png\"></figure>', 'A', '2022-12-03 22:02:20', '2022-12-03 22:02:20');
INSERT INTO `materi_satu_detail` VALUES (125, 2, 'LOGIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670076174.png\"></p>', 'C', '2022-12-03 22:03:11', '2022-12-03 22:03:11');
INSERT INTO `materi_satu_detail` VALUES (126, 2, 'LOGIS', '<figure class=\"image\"><img src=\"https://admin.pintarpsi.com/media/image_1670076214.png\"></figure>', 'C', '2022-12-03 22:03:38', '2022-12-03 22:03:38');
INSERT INTO `materi_satu_detail` VALUES (127, 2, 'LOGIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670076261.png\"></p>', 'E', '2022-12-03 22:04:38', '2022-12-03 22:04:38');
INSERT INTO `materi_satu_detail` VALUES (128, 2, 'LOGIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670076302.png\"></p>', 'A', '2022-12-03 22:05:16', '2022-12-03 22:05:16');
INSERT INTO `materi_satu_detail` VALUES (129, 2, 'LOGIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670076335.png\"></p>', 'C', '2022-12-03 22:05:45', '2022-12-03 22:05:45');
INSERT INTO `materi_satu_detail` VALUES (130, 2, 'PRAKTIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670076382.png\"></p>', 'E', '2022-12-03 22:06:41', '2022-12-03 22:06:41');
INSERT INTO `materi_satu_detail` VALUES (131, 2, 'PRAKTIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670076419.png\"></p>', 'C', '2022-12-03 22:07:12', '2022-12-03 22:07:12');
INSERT INTO `materi_satu_detail` VALUES (132, 2, 'PRAKTIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670076501.png\"></p>', 'C', '2022-12-03 22:08:33', '2022-12-03 22:08:33');
INSERT INTO `materi_satu_detail` VALUES (133, 2, 'PRAKTIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670076534.png\"></p>', 'D', '2022-12-03 22:09:14', '2022-12-03 22:09:14');
INSERT INTO `materi_satu_detail` VALUES (134, 2, 'PRAKTIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670076580.png\"></p>', 'E', '2022-12-03 22:09:58', '2022-12-03 22:09:58');
INSERT INTO `materi_satu_detail` VALUES (135, 2, 'PRAKTIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670076617.png\"></p>', 'D', '2022-12-03 22:10:32', '2022-12-03 22:10:32');
INSERT INTO `materi_satu_detail` VALUES (136, 2, 'VERBAL', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670076657.png\"></p>', 'C', '2022-12-03 22:11:14', '2022-12-03 22:11:14');
INSERT INTO `materi_satu_detail` VALUES (137, 2, 'VERBAL', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670076690.png\"></p>', 'D', '2022-12-03 22:11:38', '2022-12-03 22:11:38');
INSERT INTO `materi_satu_detail` VALUES (138, 2, 'VERBAL', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670076714.png\"></p>', 'E', '2022-12-03 22:12:04', '2022-12-03 22:12:04');
INSERT INTO `materi_satu_detail` VALUES (141, 2, 'VERBAL', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670076897.png\"></p>', 'B', '2022-12-03 22:15:05', '2022-12-03 22:15:05');
INSERT INTO `materi_satu_detail` VALUES (142, 2, 'LOGIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670076928.png\"></p>', 'D', '2022-12-03 22:16:15', '2022-12-03 22:16:15');
INSERT INTO `materi_satu_detail` VALUES (143, 2, 'LOGIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670077002.png\"></p>', 'E', '2022-12-03 22:16:53', '2022-12-03 22:16:53');
INSERT INTO `materi_satu_detail` VALUES (144, 2, 'LOGIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670077040.png\"></p>', 'B', '2022-12-03 22:17:30', '2022-12-03 22:17:30');
INSERT INTO `materi_satu_detail` VALUES (145, 2, 'LOGIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670077307.png\"></p>', 'B', '2022-12-03 22:22:11', '2022-12-03 22:22:11');
INSERT INTO `materi_satu_detail` VALUES (146, 2, 'LOGIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670077358.png\"></p>', 'A', '2022-12-03 22:22:55', '2022-12-03 22:22:55');
INSERT INTO `materi_satu_detail` VALUES (147, 2, 'LOGIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670077431.png\"></p>', 'B', '2022-12-03 22:24:00', '2022-12-03 22:24:00');
INSERT INTO `materi_satu_detail` VALUES (148, 2, 'PRAKTIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670077459.png\"></p>', 'C', '2022-12-03 22:24:36', '2022-12-03 22:24:36');
INSERT INTO `materi_satu_detail` VALUES (149, 2, 'PRAKTIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670077502.png\"></p>', 'A', '2022-12-03 22:25:09', '2022-12-03 22:25:09');
INSERT INTO `materi_satu_detail` VALUES (150, 2, 'PRAKTIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670077531.png\"></p>', 'E', '2022-12-03 22:25:42', '2022-12-03 22:25:42');
INSERT INTO `materi_satu_detail` VALUES (154, 2, 'VERBAL', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670077670.png\"></p>', 'A', '2022-12-03 22:28:10', '2022-12-03 22:28:10');
INSERT INTO `materi_satu_detail` VALUES (155, 2, 'VERBAL', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670077713.png\"></p>', 'C', '2022-12-03 22:28:42', '2022-12-03 22:28:42');
INSERT INTO `materi_satu_detail` VALUES (156, 2, 'VERBAL', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670077734.png\"></p>', 'B', '2022-12-03 22:29:04', '2022-12-03 22:29:04');
INSERT INTO `materi_satu_detail` VALUES (157, 2, 'VERBAL', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670077765.png\"></p>', 'B', '2022-12-03 22:29:32', '2022-12-03 22:29:32');
INSERT INTO `materi_satu_detail` VALUES (158, 2, 'VERBAL', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670077787.png\"></p>', 'A', '2022-12-03 22:29:56', '2022-12-03 22:29:56');
INSERT INTO `materi_satu_detail` VALUES (159, 2, 'VERBAL', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670077816.png\"></p>', 'B', '2022-12-03 22:30:24', '2022-12-03 22:30:24');
INSERT INTO `materi_satu_detail` VALUES (160, 2, 'LOGIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670077849.png\"></p>', 'D', '2022-12-03 22:31:01', '2022-12-03 22:31:01');
INSERT INTO `materi_satu_detail` VALUES (161, 2, 'LOGIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670077928.png\"></p>', 'D', '2022-12-03 22:32:13', '2022-12-03 22:32:13');
INSERT INTO `materi_satu_detail` VALUES (162, 2, 'LOGIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670077952.png\"></p>', 'D', '2022-12-03 22:32:42', '2022-12-03 22:32:42');
INSERT INTO `materi_satu_detail` VALUES (163, 2, 'LOGIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670078021.png\"></p>', 'D', '2022-12-03 22:33:51', '2022-12-03 22:33:51');
INSERT INTO `materi_satu_detail` VALUES (164, 2, 'LOGIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670078062.png\"></p>', 'E', '2022-12-03 22:34:39', '2022-12-03 22:34:39');
INSERT INTO `materi_satu_detail` VALUES (165, 2, 'LOGIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670078111.png\"></p>', 'A', '2022-12-03 22:35:26', '2022-12-03 22:35:26');
INSERT INTO `materi_satu_detail` VALUES (169, 2, 'PRAKTIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670124098.png\"></p>', 'D', '2022-12-04 11:21:49', '2022-12-04 11:21:49');
INSERT INTO `materi_satu_detail` VALUES (170, 2, 'PRAKTIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670124138.png\"></p>', 'C', '2022-12-04 11:22:30', '2022-12-04 11:22:30');
INSERT INTO `materi_satu_detail` VALUES (171, 2, 'PRAKTIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670124165.png\"></p>', 'C', '2022-12-04 11:22:57', '2022-12-04 11:22:57');
INSERT INTO `materi_satu_detail` VALUES (175, 2, 'VERBAL', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670124427.png\"></p>', 'C', '2022-12-04 11:27:21', '2022-12-04 11:27:21');
INSERT INTO `materi_satu_detail` VALUES (176, 2, 'VERBAL', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670124464.png\"></p>', 'E', '2022-12-04 11:27:54', '2022-12-04 11:27:54');
INSERT INTO `materi_satu_detail` VALUES (177, 2, 'VERBAL', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670124499.png\"></p>', 'A', '2022-12-04 11:28:30', '2022-12-04 11:28:30');
INSERT INTO `materi_satu_detail` VALUES (178, 2, 'LOGIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670124527.png\"></p>', 'C', '2022-12-04 11:29:04', '2022-12-04 11:29:04');
INSERT INTO `materi_satu_detail` VALUES (179, 2, 'LOGIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670124570.png\"></p>', 'A', '2022-12-04 11:29:44', '2022-12-04 11:29:44');
INSERT INTO `materi_satu_detail` VALUES (180, 2, 'LOGIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670124609.png\"></p>', 'D', '2022-12-04 11:30:24', '2022-12-04 11:30:24');
INSERT INTO `materi_satu_detail` VALUES (181, 2, 'LOGIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670124648.png\"></p>', 'C', '2022-12-04 11:31:01', '2022-12-04 11:31:01');
INSERT INTO `materi_satu_detail` VALUES (182, 2, 'LOGIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670124685.png\"></p>', 'D', '2022-12-04 11:31:35', '2022-12-04 11:31:35');
INSERT INTO `materi_satu_detail` VALUES (183, 2, 'LOGIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670124732.png\"></p>', 'E', '2022-12-04 11:32:31', '2022-12-04 11:32:31');
INSERT INTO `materi_satu_detail` VALUES (184, 2, 'PRAKTIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670124781.png\"></p>', 'D', '2022-12-04 11:33:25', '2022-12-04 11:33:25');
INSERT INTO `materi_satu_detail` VALUES (185, 2, 'PRAKTIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670124817.png\"></p>', 'E', '2022-12-04 11:34:00', '2022-12-04 11:34:00');
INSERT INTO `materi_satu_detail` VALUES (186, 2, 'PRAKTIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670124856.png\"></p>', 'C', '2022-12-04 11:34:28', '2022-12-04 11:34:28');
INSERT INTO `materi_satu_detail` VALUES (187, 2, 'PRAKTIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670124887.png\"></p>', 'B', '2022-12-04 11:35:02', '2022-12-04 11:35:02');
INSERT INTO `materi_satu_detail` VALUES (188, 2, 'PRAKTIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670124935.png\"></p>', 'B', '2022-12-04 11:36:48', '2022-12-04 11:36:48');
INSERT INTO `materi_satu_detail` VALUES (189, 2, 'PRAKTIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670125023.png\"></p>', 'A', '2022-12-04 11:37:16', '2022-12-04 11:37:16');
INSERT INTO `materi_satu_detail` VALUES (190, 2, 'VERBAL', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670125050.png\"></p>', 'E', '2022-12-04 11:37:51', '2022-12-04 11:37:51');
INSERT INTO `materi_satu_detail` VALUES (191, 2, 'VERBAL', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670125105.png\"></p>', 'D', '2022-12-04 11:38:41', '2022-12-04 11:38:41');
INSERT INTO `materi_satu_detail` VALUES (192, 2, 'VERBAL', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670125134.png\"></p>', 'B', '2022-12-04 11:39:04', '2022-12-04 11:39:04');
INSERT INTO `materi_satu_detail` VALUES (193, 2, 'VERBAL', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670125164.png\"></p>', 'E', '2022-12-04 11:39:37', '2022-12-04 11:39:37');
INSERT INTO `materi_satu_detail` VALUES (194, 2, 'VERBAL', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670125223.png\"></p>', 'C', '2022-12-04 11:40:46', '2022-12-04 11:40:46');
INSERT INTO `materi_satu_detail` VALUES (195, 2, 'VERBAL', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670125271.png\"></p>', 'B', '2022-12-04 11:41:19', '2022-12-04 11:41:19');
INSERT INTO `materi_satu_detail` VALUES (196, 2, 'VERBAL', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670125327.png\"></p>', 'D', '2022-12-04 11:42:13', '2022-12-04 11:42:13');
INSERT INTO `materi_satu_detail` VALUES (197, 2, 'LOGIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670125357.png\"></p>', 'E', '2022-12-04 11:43:05', '2022-12-04 11:43:05');
INSERT INTO `materi_satu_detail` VALUES (198, 2, 'LOGIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670125399.png\"></p>', 'E', '2022-12-04 11:43:23', '2022-12-04 11:43:23');
INSERT INTO `materi_satu_detail` VALUES (199, 2, 'LOGIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670125429.png\"></p>', 'E', '2022-12-04 11:43:57', '2022-12-04 11:43:57');
INSERT INTO `materi_satu_detail` VALUES (200, 2, 'LOGIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670125459.png\"></p>', 'D', '2022-12-04 11:44:28', '2022-12-04 11:44:28');
INSERT INTO `materi_satu_detail` VALUES (201, 2, 'LOGIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670125501.png\"></p>', 'E', '2022-12-04 11:45:17', '2022-12-04 11:45:17');
INSERT INTO `materi_satu_detail` VALUES (202, 2, 'PRAKTIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670125544.png\"></p>', 'B', '2022-12-04 11:46:11', '2022-12-04 11:46:11');
INSERT INTO `materi_satu_detail` VALUES (206, 2, 'PRAKTIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670125776.png\"></p>', 'E', '2022-12-04 11:49:48', '2022-12-04 11:49:48');
INSERT INTO `materi_satu_detail` VALUES (207, 2, 'PRAKTIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670125817.png\"></p>', 'C', '2022-12-04 11:50:28', '2022-12-04 11:50:28');
INSERT INTO `materi_satu_detail` VALUES (208, 2, 'PRAKTIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670125848.png\"></p>', 'B', '2022-12-04 11:51:20', '2022-12-04 11:51:20');
INSERT INTO `materi_satu_detail` VALUES (210, 2, 'VERBAL', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670125953.png\"></p>', 'D', '2022-12-04 11:52:39', '2022-12-04 11:52:39');
INSERT INTO `materi_satu_detail` VALUES (211, 2, 'VERBAL', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670126062.png\"></p>', 'B', '2022-12-04 11:54:46', '2022-12-04 11:54:46');
INSERT INTO `materi_satu_detail` VALUES (212, 2, 'VERBAL', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670126110.png\"></p>', 'C', '2022-12-04 11:55:57', '2022-12-04 11:55:57');
INSERT INTO `materi_satu_detail` VALUES (213, 2, 'LOGIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670126176.png\"></p>', 'D', '2022-12-04 11:56:53', '2022-12-04 11:56:53');
INSERT INTO `materi_satu_detail` VALUES (214, 2, 'LOGIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670126232.png\"></p>', 'B', '2022-12-04 11:57:32', '2022-12-04 11:57:32');
INSERT INTO `materi_satu_detail` VALUES (215, 2, 'LOGIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670126292.png\"></p>', 'A', '2022-12-04 11:58:25', '2022-12-04 11:58:25');
INSERT INTO `materi_satu_detail` VALUES (216, 2, 'LOGIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670126343.png\"></p>', 'E', '2022-12-04 11:59:15', '2022-12-04 11:59:15');
INSERT INTO `materi_satu_detail` VALUES (217, 2, 'LOGIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670126630.png\"></p>', 'D', '2022-12-04 12:04:03', '2022-12-04 12:04:03');
INSERT INTO `materi_satu_detail` VALUES (218, 2, 'LOGIS', '<p><img src=\"https://admin.pintarpsi.com/media/image_1670126662.png\"></p>', 'C', '2022-12-04 12:04:33', '2022-12-04 12:04:33');
INSERT INTO `materi_satu_detail` VALUES (219, 2, 'VERBAL', '<p>Jika tidak makan maka tubuh akan lemas. Jika tubuh lemas maka mudah sakit.&nbsp;</p><p>Kesimpulan yang paling tepat pada dari kedua kalimat diatas adalah ....................&nbsp;</p><p>a. Jika sakit maka tubuh lemas.&nbsp;</p><p>b. Tubuh mudah sakit.&nbsp;</p><p>c. Jika tidak makan maka tidak mudah sakit.&nbsp;</p><p>d. Jika makan maka tubuh akan sakit.&nbsp;</p><p>e. Jika tidak makan maka mudah sakit.</p>', 'E', '2022-12-05 13:17:40', '2022-12-05 13:17:40');
INSERT INTO `materi_satu_detail` VALUES (220, 2, 'VERBAL', '<p>Semua kopi murni terasa pahit dan berwarna hitam. Kopi yang dibuat Reza rasanya manis.&nbsp;</p><p>Kesimpulan yang paling tepat pada kedua kalimat diatas adalah ....................&nbsp;</p><p>a. Kopi yang dibuat Reza sudah ditambah gula.&nbsp;</p><p>b. Kopi yang dibuat Reza tidak berwarna hitam.&nbsp;</p><p>c. Kopi yang dibuat Reza bukan kopi murni.&nbsp;</p><p>d. Kopi yang dibuat Reza tetap berwarna hitam.&nbsp;</p><p>e. Kopi yang dibuat Reza sudah ditambah susu.</p>', 'C', '2022-12-05 13:24:00', '2022-12-05 13:24:00');
INSERT INTO `materi_satu_detail` VALUES (224, 2, 'PRAKTIS', '<p>Shinta lahir pada tanggal 17 Mei 1991, dia merupakan salah satu mahasiswi di perguruan tinggi Negeri di Jakarta.&nbsp;</p><p>Jika hari ini adalah tanggal 12 April 2017, berapa tepatnya usia Shinta minggu depan?&nbsp;</p><p>a. 25 Tahun 11 Bulan 28 Hari&nbsp;</p><p>b. 26 Tahun 10 Bulan 31 Hari&nbsp;</p><p>c. 26 Tahun 11 Bulan 3 Hari&nbsp;</p><p>d. 25 Tahun 10 Bulan 32 Hari&nbsp;</p><p>e. 24 Tahun 11 Bulan 10 Har</p>', 'D', '2022-12-05 13:47:53', '2022-12-05 13:47:53');
INSERT INTO `materi_satu_detail` VALUES (225, 2, 'PRAKTIS', '<p>Untuk mengunduh sebuah video berkapasitas 2 Gb komputer membutuhkan waktu selama 1 jam 35 menit,&nbsp;</p><p>apabila komputer mulai mengunduh video tersebut pada pukul 12.47 WIB.&nbsp;</p><p>Pukul berapakah video tersebut selesai di unduh ?&nbsp;</p><p>a.13.22 WIB&nbsp;</p><p>b.15.22 WIB&nbsp;</p><p>c.14.23 WIB&nbsp;</p><p>d.14.24 WIB&nbsp;</p><p>e.14.22 WIB</p>', 'E', '2022-12-05 13:48:39', '2022-12-05 13:48:39');
INSERT INTO `materi_satu_detail` VALUES (226, 2, 'PRAKTIS', '<p>Tarif parkir mobil di sebuah mall sebesar Rp. 2.000,-/jam untuk 2 jam pertama, selanjutnya Rp.1.500,-/jam.&nbsp;</p><p>Jika Mutia masuk kedalam mall tersebut pada pukul 13.40 WIB untuk membeli keperluan rumah tangga selama 2 jam,&nbsp;</p><p>kemudian Mutia makan 30 menit lalu ke salon selama 1 jam 20 menit dan terakhir Mutia nonton bioskop dengan durasi film 120 menit.&nbsp;</p><p>Mutia turun dari gedung bioskop sampai ke parkiran menghabiskan waktu 10 menit,&nbsp;</p><p>maka berapa kira-kira tarif parkir yang harus dibayar oleh Mutia?&nbsp;</p><p>a.Rp. 11.000,-&nbsp;</p><p>b.Rp. 9.500,-&nbsp;</p><p>c.Rp. 13.000,-&nbsp;</p><p>d.Rp. 10.000,-&nbsp;</p><p>e.Rp. 10.500,-</p>', 'D', '2022-12-05 13:49:31', '2022-12-05 13:49:31');
INSERT INTO `materi_satu_detail` VALUES (227, 2, 'PRAKTIS', '<p>Dari 40 orang anggota Karang Taruna, 21 orang gemar olahraga tenis meja, 27 orang gemar olahraga bulu tangkis, dan 15 orang gemar kedua olahraga baik tenis meja maupun bulu tangkis.&nbsp;</p><p>Banyak anggota Karang Taruna yang tidak gemar tenis meja maupun bulu tangkis adalah ................&nbsp;</p><p>a.8 orang&nbsp;</p><p>b.25 orang&nbsp;</p><p>c.17 orang&nbsp;</p><p>d.18 orang&nbsp;</p><p>e.7 orang</p>', 'E', '2022-12-05 13:50:49', '2022-12-05 13:50:49');
INSERT INTO `materi_satu_detail` VALUES (228, 2, 'PRAKTIS', '<p>Anji mampu memeriksa mobil dalam waktu 20 menit, sementara Riko hanya butuh 18 menit.&nbsp;</p><p>Mereka mulai bekerja pada jam 09.00 WIB,&nbsp;</p><p>pada jam berapa kira kira mereka pertama kali bersamaan menyelesaikan pemeriksaan mobil?&nbsp;</p><p>a.11.00 WIB&nbsp;</p><p>b.09.30 WIB&nbsp;</p><p>c.12.00 WIB&nbsp;</p><p>d.13.00 WIB&nbsp;</p><p>e.10.00 WIB</p>', 'C', '2022-12-05 13:51:46', '2022-12-05 13:51:46');
INSERT INTO `materi_satu_detail` VALUES (229, 2, 'PRAKTIS', '<p>Seorang pedagang beras membeli beras tipe A sebanyak 20 kg dengan harga Rp. 6000 / kg,&nbsp;</p><p>dan beras tipe B sebanyak 30 kg dengan harga Rp. 4000 / kg, kemudian beras tersebut dicampur.&nbsp;</p><p>Apabila pedagang tersebut ingin menjual kembali beras yang sudah dicampur tersebut dengan untung 4%,&nbsp;</p><p>maka berapa harga per kilo beras yang harus dijual?&nbsp;</p><p>a.Rp. 4.500&nbsp;</p><p>b.Rp. 6.700&nbsp;</p><p>c.Rp. 5.300&nbsp;</p><p>d.Rp. 4.750&nbsp;</p><p>e.Rp. 4.992</p>', 'E', '2022-12-05 13:58:08', '2022-12-05 13:58:08');
INSERT INTO `materi_satu_detail` VALUES (230, 2, 'VERBAL', '<p>Di sebuah rumah sedang berlangsung acara arisan keluarga. Ada 13 orang yang hadir pada cara tersebut.&nbsp;</p><p>Hubungan diantara mereka sebagai berikut :&nbsp;</p><p>• J dan K adalah cucu dari G.&nbsp;</p><p>• C adalah nenek dari H, A, dan F.&nbsp;</p><p>• D dan M adalah menantu perempuan dari G.&nbsp;</p><p>• G adalah suami dari C.&nbsp;</p><p>• B adalah ibu dari H dan istri dari L.&nbsp;</p><p>• M adalah istri dari E dan ibu dari J dan A.&nbsp;</p><p>• K adalah adik perempuan F dan putra D.</p><p>Siapakah kakek dari A?&nbsp;</p><p>a. I&nbsp;</p><p>b. E&nbsp;</p><p>c. L&nbsp;</p><p>d. G&nbsp;</p><p>e. M</p>', 'D', '2022-12-05 14:01:27', '2022-12-05 14:01:27');
INSERT INTO `materi_satu_detail` VALUES (231, 2, 'VERBAL', '<p>Di sebuah rumah sedang berlangsung acara arisan keluarga. Ada 13 orang yang hadir pada cara tersebut.&nbsp;</p><p>Hubungan diantara mereka sebagai berikut :&nbsp;</p><p>• J dan K adalah cucu dari G.&nbsp;</p><p>• C adalah nenek dari H, A, dan F.&nbsp;</p><p>• D dan M adalah menantu perempuan dari G.&nbsp;</p><p>• G adalah suami dari C.&nbsp;</p><p>• B adalah ibu dari H dan istri dari L.&nbsp;</p><p>• M adalah istri dari E dan ibu dari J dan A.&nbsp;</p><p>• K adalah adik perempuan F dan putra D.</p><p>Jika I adalah suami D, manakah dari pernyataan berikut yang benar?&nbsp;</p><p>a. I adalah anak C.&nbsp;</p><p>b. E adalah sepupu I.&nbsp;</p><p>c. H adalah sepupu I.&nbsp;</p><p>d. F adalah anak kandung dari I.&nbsp;</p><p>e. D adalah saudara kandung E.</p>', 'D', '2022-12-05 14:02:16', '2022-12-05 14:02:16');
INSERT INTO `materi_satu_detail` VALUES (232, 2, 'VERBAL', '<p>Di sebuah rumah sedang berlangsung acara arisan keluarga. Ada 13 orang yang hadir pada cara tersebut.&nbsp;</p><p>Hubungan diantara mereka sebagai berikut :&nbsp;</p><p>• J dan K adalah cucu dari G.&nbsp;</p><p>• C adalah nenek dari H, A, dan F.&nbsp;</p><p>• D dan M adalah menantu perempuan dari G.&nbsp;</p><p>• G adalah suami dari C.&nbsp;</p><p>• B adalah ibu dari H dan istri dari L.&nbsp;</p><p>• M adalah istri dari E dan ibu dari J dan A.</p><p>&nbsp;• K adalah adik perempuan F dan putra D.</p><p>Siapa saja saudara sepupu dari F?&nbsp;</p><p>a. A, J dan K.&nbsp;</p><p>b. A, H dan J.&nbsp;</p><p>c. H, J dan K.&nbsp;</p><p>d. H, I dan J.&nbsp;</p><p>e. A, B dan K</p><p>&nbsp;</p>', 'B', '2022-12-05 14:03:25', '2022-12-05 14:03:25');
INSERT INTO `materi_satu_detail` VALUES (233, 2, 'PRAKTIS', '<p>Tahun ini sebuah restoran yang sedang berkembang mempekerjakan empat kali jumlah karyawan dari tahun lalu.&nbsp;</p><p>Tahun lalu jumlah karyawan adalah 75 orang.&nbsp;</p><p>Saat ini karyawan yang mengundurkan diri sebanyak 3 orang dan&nbsp;</p><p>karyawan baru berjumlah tiga kali jumlah karyawan yang mengundurkan diri.&nbsp;</p><p>Berapakah jumlah karyawan di restoran saat ini?</p><p>a. 134 orang&nbsp;</p><p>b. 153 orang&nbsp;</p><p>c. 324 orang&nbsp;</p><p>d. 300 orang&nbsp;</p><p>e. 306 orang</p>', 'E', '2022-12-05 14:06:13', '2022-12-05 14:06:13');
INSERT INTO `materi_satu_detail` VALUES (234, 2, 'PRAKTIS', '<p>Budi memiliki uang Rp. 32.000,- lebih banyak dari Sintha, sementara Anto memiliki uang yang jumlahnya dua kali uang Shinta,&nbsp;</p><p>sedangkan uang Jono hanya seperempat uang Shinta, dan uang Shinta sendiri adalah Rp. 84.000,-.&nbsp;</p><p>Berapa uang mereka ber empat jika digabungkan ?&nbsp;</p><p>a. Rp. 410.000,-&nbsp;</p><p>b. Rp. 389.000,-&nbsp;</p><p>c. Rp. 370.000,-&nbsp;</p><p>d. Rp. 360.000,-&nbsp;</p><p>e. Rp. 320.000,-</p>', 'B', '2022-12-05 14:07:06', '2022-12-05 14:07:06');
INSERT INTO `materi_satu_detail` VALUES (235, 2, 'PRAKTIS', '<p>Pak Reza memiliki penghasilan Rp.4.700.000,- / bulan, dia berkomitmen untuk menyisihkan 15% setiap bulannya untuk tabungan kuliah anaknya nanti.&nbsp;</p><p>Biaya listrik per bulan yang harus dibayar sebanyak Rp.350.000,- dan uang saku anaknya per minggu Rp.70.000,-.&nbsp;</p><p>Berapa sisa penghasilan Pak Reza yang akan digunakan untuk keperluan rumah tangga lainnya?&nbsp;</p><p>a. Rp. 3.435.000,-&nbsp;</p><p>b. Rp. 1.265.000,-&nbsp;</p><p>c. Rp. 3.365.000,-&nbsp;</p><p>d. Rp. 4.153.000,-&nbsp;</p><p>e. Rp. 1.335.000,-</p>', 'C', '2022-12-05 14:07:56', '2022-12-05 14:07:56');

-- ----------------------------
-- Table structure for materi_tiga
-- ----------------------------
DROP TABLE IF EXISTS `materi_tiga`;
CREATE TABLE `materi_tiga`  (
  `id` bigint(20) NOT NULL,
  `tipe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of materi_tiga
-- ----------------------------
INSERT INTO `materi_tiga` VALUES (1, 'Huruf', '2022-11-20 18:00:00', '2022-12-09 14:39:35');
INSERT INTO `materi_tiga` VALUES (4, 'Huruf', '2022-12-09 13:53:50', '2022-12-09 13:53:50');
INSERT INTO `materi_tiga` VALUES (5, NULL, '2022-12-09 13:21:11', '2022-12-09 13:21:11');
INSERT INTO `materi_tiga` VALUES (7, 'Huruf', '2022-12-09 13:54:28', '2022-12-09 14:27:23');
INSERT INTO `materi_tiga` VALUES (11, 'Simbol', '2022-11-21 12:31:56', '2022-12-09 14:27:33');
INSERT INTO `materi_tiga` VALUES (21, 'Angka', '2022-11-20 18:00:00', '2022-12-09 14:27:32');
INSERT INTO `materi_tiga` VALUES (26, 'Angka', '2022-12-09 14:58:16', '2022-12-09 14:58:16');

-- ----------------------------
-- Table structure for materi_tiga_detail
-- ----------------------------
DROP TABLE IF EXISTS `materi_tiga_detail`;
CREATE TABLE `materi_tiga_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `materi_tiga_id` bigint(20) NOT NULL,
  `kolom` tinyint(4) NULL DEFAULT NULL,
  `a` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `b` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `c` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `d` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `e` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `materi_tiga_detail_ibfk_1`(`materi_tiga_id`) USING BTREE,
  CONSTRAINT `materi_tiga_detail_ibfk_1` FOREIGN KEY (`materi_tiga_id`) REFERENCES `materi_tiga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of materi_tiga_detail
-- ----------------------------
INSERT INTO `materi_tiga_detail` VALUES (8, 1, 1, 'K', 'R', 'Z', 'S', 'T', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_detail` VALUES (9, 1, 2, 'O', 'G', 'C', 'P', 'Y', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_detail` VALUES (10, 1, 3, 'X', 'A', 'J', 'B', 'I', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_detail` VALUES (11, 1, 4, 'E', 'F', 'Q', 'H', 'L', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_detail` VALUES (12, 1, 5, 'V', 'N', 'M', 'W', 'U', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_detail` VALUES (13, 1, 6, 'K', 'R', 'Z', 'S', 'T', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_detail` VALUES (14, 1, 7, 'O', 'G', 'C', 'P', 'Y', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_detail` VALUES (15, 1, 8, 'X', 'A', 'J', 'B', 'I', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_detail` VALUES (16, 1, 9, 'E', 'F', 'Q', 'H', 'L', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_detail` VALUES (17, 1, 10, 'V', 'N', 'M', 'W', 'U', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_detail` VALUES (18, 11, 1, '< ', '=', '»', '«', '> ', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_detail` VALUES (19, 11, 2, 'ƕ', '@', '±', 'Ω', '¤', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_detail` VALUES (20, 11, 3, '§', '©', '±', '¶', 'æ', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_detail` VALUES (21, 11, 4, 'ǂ', 'Ǯ', 'ɠ', 'ɮ', 'ɶ', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_detail` VALUES (22, 11, 5, 'ʨ', 'Ξ', 'Ϡ', 'Җ', '҂', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_detail` VALUES (23, 11, 6, '< ', '=', '»', '«', '> ', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_detail` VALUES (24, 11, 7, 'ƕ', '@', '±', 'Ω', '¤', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_detail` VALUES (25, 11, 8, '§', '©', '±', '¶', 'æ', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_detail` VALUES (26, 11, 9, 'ǂ', 'Ǯ', 'ɠ', 'ɮ', 'ɶ', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_detail` VALUES (27, 11, 10, 'ʨ', 'Ξ', 'Ϡ', 'Җ', '҂', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_detail` VALUES (28, 21, 1, '6', '4', '7', '2', '1\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_detail` VALUES (29, 21, 2, '0', '2', '6', '3', '7\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_detail` VALUES (30, 21, 3, '5', '7', '8', '1', '3', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_detail` VALUES (31, 21, 4, '7', '1', '5', '2', '4\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_detail` VALUES (32, 21, 5, '8', '3', '6', '0', '9\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_detail` VALUES (33, 21, 6, '6', '4', '7', '2', '1\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_detail` VALUES (34, 21, 7, '0', '2', '6', '3', '7\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_detail` VALUES (35, 21, 8, '5', '7', '8', '1', '3\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_detail` VALUES (36, 21, 9, '7', '1', '5', '2', '4\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_detail` VALUES (37, 21, 10, '8', '3', '6', '0', '9', '2022-11-20 18:00:00', '2022-11-20 18:00:00');

-- ----------------------------
-- Table structure for materi_tiga_sub_detail
-- ----------------------------
DROP TABLE IF EXISTS `materi_tiga_sub_detail`;
CREATE TABLE `materi_tiga_sub_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `materi_tiga_detail_id` bigint(20) NOT NULL,
  `a` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `b` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `c` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `d` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kunci` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `materi_tiga_id`(`materi_tiga_detail_id`) USING BTREE,
  CONSTRAINT `materi_tiga_sub_detail_ibfk_1` FOREIGN KEY (`materi_tiga_detail_id`) REFERENCES `materi_tiga_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1710 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of materi_tiga_sub_detail
-- ----------------------------
INSERT INTO `materi_tiga_sub_detail` VALUES (9, 8, 'R', 'K', 'S', 'T', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (10, 8, 'Z', 'R', 'S', 'K', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (11, 8, 'K', 'R', 'Z', 'T', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (12, 8, 'Z', 'K', 'R', 'T', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (13, 8, 'T', 'R', 'Z', 'S', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (14, 8, 'K', 'Z', 'S', 'R', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (15, 8, 'T', 'K', 'R', 'S', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (16, 8, 'K', 'Z', 'S', 'R', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (17, 8, 'R', 'S', 'T', 'Z', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (18, 8, 'T', 'R', 'K', 'S', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (19, 8, 'T', 'S', 'K', 'R', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (20, 8, 'S', 'K', 'Z', 'T', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (21, 8, 'K', 'R', 'S', 'T', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (22, 8, 'R', 'Z', 'S', 'K', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (23, 8, 'Z', 'R', 'S', 'T', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (24, 8, 'T', 'K', 'Z', 'S', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (25, 8, 'Z', 'R', 'S', 'K', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (26, 8, 'R', 'T', 'Z', 'S', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (27, 8, 'Z', 'R', 'K', 'T', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (28, 8, 'T', 'Z', 'R', 'S', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (29, 8, 'K', 'Z', 'T', 'R', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (30, 8, 'S', 'Z', 'R', 'K', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (31, 8, 'K', 'Z', 'T', 'R', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (32, 8, 'Z', 'T', 'K', 'S', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (33, 8, 'K', 'Z', 'T', 'R', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (34, 8, 'S', 'R', 'K', 'T', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (35, 8, 'Z', 'R', 'T', 'S', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (36, 8, 'T', 'R', 'K', 'Z', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (37, 8, 'K', 'S', 'Z', 'T', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (38, 8, 'R', 'Z', 'T', 'K', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (39, 8, 'Z', 'K', 'S', 'R', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (40, 8, 'R', 'Z', 'S', 'T', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (41, 8, 'S', 'Z', 'T', 'K', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (42, 8, 'K', 'S', 'R', 'Z', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (43, 8, 'S', 'K', 'T', 'Z', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (44, 8, 'R', 'S', 'K', 'T', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (45, 8, 'S', 'Z', 'T', 'R', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (46, 8, 'R', 'K', 'Z', 'T', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (47, 8, 'T', 'S', 'K', 'Z', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (48, 8, 'R', 'Z', 'S', 'K', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (49, 8, 'S', 'K', 'T', 'R', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (50, 8, 'R', 'Z', 'S', 'K', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (51, 8, 'K', 'Z', 'T', 'S', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (52, 8, 'R', 'S', 'K', 'T', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (53, 8, 'S', 'T', 'R', 'Z', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (54, 8, 'S', 'K', 'Z', 'T', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (55, 8, 'R', 'T', 'K', 'S', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (56, 8, 'S', 'K', 'Z', 'T', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (57, 8, 'R', 'Z', 'T', 'K', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (58, 8, 'R', 'S', 'Z', 'T', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (59, 9, 'Y', 'P', 'C', 'O', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (60, 9, 'O', 'G', 'Y', 'P', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (61, 9, 'P', 'G', 'C', 'Y', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (62, 9, 'O', 'Y', 'P', 'C', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (63, 9, 'Y', 'C', 'O', 'G', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (64, 9, 'Y', 'P', 'G', 'C', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (65, 9, 'O', 'C', 'P', 'Y', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (66, 9, 'Y', 'P', 'G', 'C', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (67, 9, 'O', 'G', 'C', 'P', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (68, 9, 'O', 'Y', 'G', 'C', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (69, 9, 'O', 'P', 'Y', 'C', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (70, 9, 'G', 'O', 'Y', 'P', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (71, 9, 'P', 'O', 'G', 'C', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (72, 9, 'G', 'P', 'O', 'C', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (73, 9, 'C', 'O', 'G', 'Y', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (74, 9, 'C', 'Y', 'P', 'O', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (75, 9, 'Y', 'P', 'G', 'C', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (76, 9, 'P', 'O', 'Y', 'C', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (77, 9, 'O', 'G', 'Y', 'P', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (78, 9, 'G', 'O', 'Y', 'C', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (79, 9, 'P', 'G', 'Y', 'O', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (80, 9, 'C', 'P', 'O', 'Y', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (81, 9, 'P', 'G', 'Y', 'O', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (82, 9, 'O', 'Y', 'C', 'G', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (83, 9, 'C', 'O', 'P', 'Y', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (84, 9, 'C', 'P', 'G', 'Y', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (85, 9, 'G', 'O', 'Y', 'P', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (86, 9, 'O', 'C', 'G', 'Y', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (87, 9, 'G', 'O', 'P', 'C', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (88, 9, 'C', 'G', 'O', 'Y', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (89, 9, 'P', 'G', 'C', 'O', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (90, 9, 'Y', 'G', 'O', 'P', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (91, 9, 'P', 'G', 'C', 'O', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (92, 9, 'G', 'C', 'P', 'Y', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (93, 9, 'P', 'G', 'C', 'O', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (94, 9, 'Y', 'O', 'P', 'C', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (95, 9, 'G', 'O', 'C', 'Y', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (96, 9, 'C', 'O', 'P', 'G', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (97, 9, 'P', 'Y', 'G', 'C', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (98, 9, 'O', 'G', 'C', 'P', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (99, 9, 'G', 'P', 'Y', 'O', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (100, 9, 'O', 'G', 'Y', 'C', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (101, 9, 'Y', 'G', 'C', 'P', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (102, 9, 'P', 'Y', 'O', 'G', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (103, 9, 'Y', 'P', 'C', 'G', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (104, 9, 'O', 'Y', 'P', 'C', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (105, 9, 'Y', 'G', 'C', 'O', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (106, 9, 'O', 'P', 'G', 'C', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (107, 9, 'C', 'Y', 'P', 'G', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (108, 9, 'O', 'G', 'Y', 'P', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (109, 10, 'A', 'X', 'B', 'I', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (110, 10, 'I', 'X', 'J', 'A', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (111, 10, 'X', 'I', 'J', 'A', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (112, 10, 'A', 'X', 'J', 'B', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (113, 10, 'J', 'X', 'B', 'I', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (114, 10, 'I', 'J', 'A', 'X', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (115, 10, 'J', 'I', 'B', 'X', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (116, 10, 'A', 'J', 'I', 'B', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (117, 10, 'J', 'X', 'B', 'A', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (118, 10, 'A', 'I', 'X', 'B', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (119, 10, 'J', 'X', 'A', 'I', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (120, 10, 'I', 'X', 'B', 'A', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (121, 10, 'X', 'B', 'I', 'J', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (122, 10, 'I', 'X', 'B', 'A', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (123, 10, 'J', 'A', 'I', 'B', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (124, 10, 'X', 'A', 'B', 'J', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (125, 10, 'B', 'A', 'I', 'X', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (126, 10, 'I', 'J', 'X', 'B', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (127, 10, 'A', 'X', 'J', 'I', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (128, 10, 'I', 'X', 'B', 'A', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (129, 10, 'A', 'J', 'B', 'X', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (130, 10, 'B', 'A', 'X', 'J', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (131, 10, 'B', 'J', 'I', 'A', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (132, 10, 'J', 'I', 'X', 'B', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (133, 10, 'I', 'A', 'J', 'B', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (134, 10, 'A', 'X', 'J', 'I', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (135, 10, 'X', 'A', 'J', 'B', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (136, 10, 'J', 'I', 'B', 'A', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (137, 10, 'A', 'X', 'J', 'I', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (138, 10, 'I', 'X', 'B', 'J', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (139, 10, 'B', 'J', 'I', 'X', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (140, 10, 'B', 'A', 'I', 'J', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (141, 10, 'B', 'I', 'X', 'J', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (142, 10, 'X', 'A', 'J', 'I', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (143, 10, 'A', 'B', 'X', 'J', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (144, 10, 'X', 'A', 'I', 'B', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (145, 10, 'B', 'X', 'A', 'J', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (146, 10, 'A', 'I', 'J', 'B', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (147, 10, 'X', 'A', 'J', 'I', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (148, 10, 'I', 'A', 'X', 'B', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (149, 10, 'X', 'I', 'A', 'B', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (150, 10, 'A', 'J', 'I', 'B', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (151, 10, 'J', 'B', 'A', 'X', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (152, 10, 'J', 'I', 'X', 'B', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (153, 10, 'A', 'B', 'I', 'J', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (154, 10, 'J', 'I', 'X', 'B', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (155, 10, 'A', 'X', 'B', 'I', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (156, 10, 'A', 'J', 'X', 'B', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (157, 10, 'B', 'I', 'A', 'J', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (158, 10, 'I', 'X', 'J', 'A', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (159, 11, 'F', 'E', 'Q', 'L', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (160, 11, 'F', 'H', 'Q', 'E', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (161, 11, 'F', 'Q', 'L', 'E', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (162, 11, 'L', 'H', 'E', 'Q', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (163, 11, 'H', 'F', 'L', 'E', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (164, 11, 'L', 'H', 'Q', 'F', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (165, 11, 'F', 'L', 'H', 'E', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (166, 11, 'H', 'Q', 'E', 'F', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (167, 11, 'L', 'H', 'E', 'Q', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (168, 11, 'Q', 'H', 'L', 'F', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (169, 11, 'E', 'L', 'H', 'Q', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (170, 11, 'Q', 'L', 'F', 'H', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (171, 11, 'L', 'F', 'Q', 'E', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (172, 11, 'Q', 'L', 'F', 'H', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (173, 11, 'E', 'H', 'Q', 'F', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (174, 11, 'L', 'H', 'F', 'E', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (175, 11, 'F', 'H', 'Q', 'L', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (176, 11, 'Q', 'E', 'L', 'F', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (177, 11, 'H', 'L', 'E', 'Q', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (178, 11, 'Q', 'L', 'F', 'H', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (179, 11, 'H', 'L', 'F', 'Q', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (180, 11, 'Q', 'L', 'E', 'H', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (181, 11, 'L', 'Q', 'E', 'H', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (182, 11, 'H', 'L', 'E', 'F', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (183, 11, 'E', 'L', 'F', 'Q', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (184, 11, 'Q', 'E', 'H', 'L', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (185, 11, 'E', 'Q', 'F', 'L', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (186, 11, 'H', 'E', 'Q', 'F', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (187, 11, 'E', 'L', 'F', 'H', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (188, 11, 'H', 'Q', 'L', 'F', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (189, 11, 'L', 'Q', 'H', 'F', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (190, 11, 'H', 'E', 'Q', 'F', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (191, 11, 'E', 'F', 'H', 'L', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (192, 11, 'E', 'Q', 'L', 'F', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (193, 11, 'H', 'F', 'Q', 'E', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (194, 11, 'E', 'Q', 'L', 'F', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (195, 11, 'H', 'L', 'F', 'Q', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (196, 11, 'H', 'E', 'L', 'F', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (197, 11, 'F', 'Q', 'H', 'E', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (198, 11, 'Q', 'L', 'E', 'H', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (199, 11, 'H', 'E', 'F', 'L', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (200, 11, 'F', 'H', 'L', 'E', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (201, 11, 'F', 'E', 'Q', 'H', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (202, 11, 'E', 'Q', 'L', 'F', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (203, 11, 'Q', 'H', 'E', 'F', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (204, 11, 'H', 'L', 'E', 'Q', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (205, 11, 'L', 'H', 'E', 'F', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (206, 11, 'E', 'Q', 'F', 'H', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (207, 11, 'H', 'L', 'E', 'Q', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (208, 11, 'Q', 'L', 'F', 'E', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (209, 12, 'U', 'V', 'M', 'W', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (210, 12, 'W', 'V', 'N', 'U', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (211, 12, 'V', 'W', 'N', 'U', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (212, 12, 'U', 'V', 'N', 'M', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (213, 12, 'N', 'V', 'M', 'W', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (214, 12, 'W', 'N', 'U', 'V', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (215, 12, 'N', 'W', 'M', 'V', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (216, 12, 'U', 'N', 'W', 'M', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (217, 12, 'N', 'V', 'M', 'U', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (218, 12, 'U', 'W', 'V', 'M', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (219, 12, 'M', 'N', 'W', 'V', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (220, 12, 'M', 'U', 'W', 'N', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (221, 12, 'M', 'W', 'V', 'N', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (222, 12, 'V', 'U', 'N', 'W', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (223, 12, 'U', 'M', 'V', 'N', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (224, 12, 'V', 'U', 'W', 'M', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (225, 12, 'M', 'V', 'U', 'N', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (226, 12, 'U', 'W', 'N', 'M', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (227, 12, 'V', 'U', 'N', 'W', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (228, 12, 'W', 'U', 'V', 'M', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (229, 12, 'N', 'V', 'U', 'W', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (230, 12, 'W', 'V', 'M', 'U', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (231, 12, 'V', 'M', 'W', 'N', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (232, 12, 'W', 'V', 'M', 'U', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (233, 12, 'N', 'U', 'W', 'M', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (234, 12, 'V', 'U', 'M', 'N', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (235, 12, 'M', 'U', 'W', 'V', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (236, 12, 'W', 'N', 'V', 'M', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (237, 12, 'U', 'V', 'N', 'W', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (238, 12, 'W', 'V', 'M', 'U', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (239, 12, 'U', 'N', 'M', 'V', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (240, 12, 'M', 'U', 'V', 'N', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (241, 12, 'M', 'N', 'W', 'U', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (242, 12, 'N', 'W', 'V', 'M', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (243, 12, 'W', 'U', 'N', 'M', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (244, 12, 'U', 'V', 'N', 'W', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (245, 12, 'V', 'U', 'N', 'M', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (246, 12, 'N', 'W', 'M', 'U', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (247, 12, 'U', 'V', 'N', 'W', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (248, 12, 'W', 'V', 'M', 'N', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (249, 12, 'V', 'W', 'U', 'M', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (250, 12, 'U', 'N', 'W', 'M', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (251, 12, 'N', 'M', 'U', 'V', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (252, 12, 'N', 'W', 'V', 'M', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (253, 12, 'U', 'M', 'W', 'N', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (254, 12, 'N', 'W', 'V', 'M', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (255, 12, 'U', 'V', 'M', 'W', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (256, 12, 'U', 'N', 'V', 'M', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (257, 12, 'M', 'W', 'U', 'N', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (258, 12, 'W', 'V', 'N', 'U', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (259, 13, 'S', 'K', 'Z', 'T', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (260, 13, 'R', 'T', 'K', 'S', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (261, 13, 'S', 'K', 'Z', 'T', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (262, 13, 'R', 'Z', 'T', 'K', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (263, 13, 'R', 'S', 'Z', 'T', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (264, 13, 'R', 'K', 'S', 'T', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (265, 13, 'Z', 'R', 'S', 'K', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (266, 13, 'K', 'R', 'Z', 'T', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (267, 13, 'Z', 'K', 'R', 'T', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (268, 13, 'T', 'R', 'Z', 'S', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (269, 13, 'S', 'K', 'T', 'R', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (270, 13, 'R', 'Z', 'S', 'K', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (271, 13, 'K', 'Z', 'T', 'S', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (272, 13, 'R', 'S', 'K', 'T', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (273, 13, 'S', 'T', 'R', 'Z', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (274, 13, 'T', 'S', 'K', 'R', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (275, 13, 'S', 'K', 'Z', 'T', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (276, 13, 'K', 'R', 'S', 'T', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (277, 13, 'R', 'Z', 'S', 'K', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (278, 13, 'Z', 'R', 'S', 'T', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (279, 13, 'Z', 'K', 'S', 'R', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (280, 13, 'R', 'Z', 'S', 'T', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (281, 13, 'S', 'Z', 'T', 'K', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (282, 13, 'K', 'S', 'R', 'Z', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (283, 13, 'S', 'K', 'T', 'Z', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (284, 13, 'K', 'Z', 'T', 'R', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (285, 13, 'S', 'Z', 'R', 'K', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (286, 13, 'K', 'Z', 'T', 'R', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (287, 13, 'Z', 'T', 'K', 'S', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (288, 13, 'K', 'Z', 'T', 'R', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (289, 13, 'R', 'S', 'K', 'T', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (290, 13, 'S', 'Z', 'T', 'R', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (291, 13, 'R', 'K', 'Z', 'T', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (292, 13, 'T', 'S', 'K', 'Z', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (293, 13, 'R', 'Z', 'S', 'K', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (294, 13, 'S', 'R', 'K', 'T', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (295, 13, 'Z', 'R', 'T', 'S', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (296, 13, 'T', 'R', 'K', 'Z', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (297, 13, 'K', 'S', 'Z', 'T', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (298, 13, 'R', 'Z', 'T', 'K', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (299, 13, 'T', 'K', 'Z', 'S', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (300, 13, 'Z', 'R', 'S', 'K', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (301, 13, 'R', 'T', 'Z', 'S', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (302, 13, 'Z', 'R', 'K', 'T', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (303, 13, 'T', 'Z', 'R', 'S', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (304, 13, 'K', 'Z', 'S', 'R', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (305, 13, 'T', 'K', 'R', 'S', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (306, 13, 'K', 'Z', 'S', 'R', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (307, 13, 'R', 'S', 'T', 'Z', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (308, 13, 'T', 'R', 'K', 'S', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (309, 14, 'G', 'P', 'Y', 'O', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (310, 14, 'O', 'G', 'Y', 'C', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (311, 14, 'Y', 'G', 'C', 'P', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (312, 14, 'P', 'Y', 'O', 'G', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (313, 14, 'Y', 'P', 'C', 'G', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (314, 14, 'O', 'Y', 'P', 'C', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (315, 14, 'Y', 'G', 'C', 'O', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (316, 14, 'O', 'P', 'G', 'C', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (317, 14, 'C', 'Y', 'P', 'G', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (318, 14, 'O', 'G', 'Y', 'P', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (319, 14, 'P', 'G', 'Y', 'O', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (320, 14, 'C', 'P', 'O', 'Y', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (321, 14, 'P', 'G', 'Y', 'O', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (322, 14, 'O', 'Y', 'C', 'G', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (323, 14, 'C', 'O', 'P', 'Y', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (324, 14, 'C', 'P', 'G', 'Y', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (325, 14, 'G', 'O', 'Y', 'P', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (326, 14, 'O', 'C', 'G', 'Y', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (327, 14, 'G', 'O', 'P', 'C', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (328, 14, 'C', 'G', 'O', 'Y', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (329, 14, 'C', 'Y', 'P', 'O', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (330, 14, 'Y', 'P', 'G', 'C', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (331, 14, 'P', 'O', 'Y', 'C', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (332, 14, 'O', 'G', 'Y', 'P', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (333, 14, 'G', 'O', 'Y', 'C', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (334, 14, 'Y', 'O', 'P', 'C', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (335, 14, 'G', 'O', 'C', 'Y', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (336, 14, 'C', 'O', 'P', 'G', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (337, 14, 'P', 'Y', 'G', 'C', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (338, 14, 'O', 'G', 'C', 'P', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (339, 14, 'Y', 'P', 'G', 'C', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (340, 14, 'O', 'C', 'P', 'Y', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (341, 14, 'Y', 'P', 'G', 'C', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (342, 14, 'O', 'G', 'C', 'P', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (343, 14, 'O', 'Y', 'G', 'C', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (344, 14, 'O', 'P', 'Y', 'C', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (345, 14, 'G', 'O', 'Y', 'P', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (346, 14, 'P', 'O', 'G', 'C', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (347, 14, 'G', 'P', 'O', 'C', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (348, 14, 'C', 'O', 'G', 'Y', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (349, 14, 'Y', 'P', 'C', 'O', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (350, 14, 'O', 'G', 'Y', 'P', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (351, 14, 'P', 'G', 'C', 'Y', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (352, 14, 'O', 'Y', 'P', 'C', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (353, 14, 'Y', 'C', 'O', 'G', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (354, 14, 'P', 'G', 'C', 'O', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (355, 14, 'Y', 'G', 'O', 'P', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (356, 14, 'P', 'G', 'C', 'O', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (357, 14, 'G', 'C', 'P', 'Y', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (358, 14, 'P', 'G', 'C', 'O', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (359, 15, 'B', 'J', 'I', 'X', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (360, 15, 'B', 'A', 'I', 'J', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (361, 15, 'B', 'I', 'X', 'J', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (362, 15, 'X', 'A', 'J', 'I', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (363, 15, 'A', 'B', 'X', 'J', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (364, 15, 'X', 'A', 'I', 'B', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (365, 15, 'B', 'X', 'A', 'J', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (366, 15, 'A', 'I', 'J', 'B', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (367, 15, 'X', 'A', 'J', 'I', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (368, 15, 'I', 'A', 'X', 'B', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (369, 15, 'A', 'J', 'B', 'X', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (370, 15, 'B', 'A', 'X', 'J', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (371, 15, 'B', 'J', 'I', 'A', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (372, 15, 'J', 'I', 'X', 'B', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (373, 15, 'I', 'A', 'J', 'B', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (374, 15, 'A', 'X', 'J', 'I', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (375, 15, 'X', 'A', 'J', 'B', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (376, 15, 'J', 'I', 'B', 'A', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (377, 15, 'A', 'X', 'J', 'I', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (378, 15, 'I', 'X', 'B', 'J', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (379, 15, 'X', 'I', 'A', 'B', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (380, 15, 'A', 'J', 'I', 'B', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (381, 15, 'J', 'B', 'A', 'X', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (382, 15, 'J', 'I', 'X', 'B', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (383, 15, 'A', 'B', 'I', 'J', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (384, 15, 'J', 'I', 'X', 'B', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (385, 15, 'A', 'X', 'B', 'I', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (386, 15, 'A', 'J', 'X', 'B', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (387, 15, 'B', 'I', 'A', 'J', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (388, 15, 'I', 'X', 'J', 'A', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (389, 15, 'A', 'X', 'B', 'I', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (390, 15, 'I', 'X', 'J', 'A', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (391, 15, 'X', 'I', 'J', 'A', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (392, 15, 'A', 'X', 'J', 'B', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (393, 15, 'J', 'X', 'B', 'I', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (394, 15, 'I', 'J', 'A', 'X', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (395, 15, 'J', 'I', 'B', 'X', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (396, 15, 'A', 'J', 'I', 'B', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (397, 15, 'J', 'X', 'B', 'A', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (398, 15, 'A', 'I', 'X', 'B', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (399, 15, 'J', 'X', 'A', 'I', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (400, 15, 'I', 'X', 'B', 'A', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (401, 15, 'X', 'B', 'I', 'J', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (402, 15, 'I', 'X', 'B', 'A', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (403, 15, 'J', 'A', 'I', 'B', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (404, 15, 'X', 'A', 'B', 'J', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (405, 15, 'B', 'A', 'I', 'X', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (406, 15, 'I', 'J', 'X', 'B', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (407, 15, 'A', 'X', 'J', 'I', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (408, 15, 'I', 'X', 'B', 'A', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (409, 16, 'H', 'L', 'F', 'Q', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (410, 16, 'Q', 'L', 'E', 'H', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (411, 16, 'L', 'Q', 'E', 'H', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (412, 16, 'H', 'L', 'E', 'F', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (413, 16, 'E', 'L', 'F', 'Q', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (414, 16, 'L', 'H', 'F', 'E', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (415, 16, 'F', 'H', 'Q', 'L', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (416, 16, 'Q', 'E', 'L', 'F', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (417, 16, 'H', 'L', 'E', 'Q', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (418, 16, 'Q', 'L', 'F', 'H', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (419, 16, 'Q', 'E', 'H', 'L', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (420, 16, 'E', 'Q', 'F', 'L', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (421, 16, 'H', 'E', 'Q', 'F', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (422, 16, 'E', 'L', 'F', 'H', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (423, 16, 'H', 'Q', 'L', 'F', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (424, 16, 'E', 'L', 'H', 'Q', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (425, 16, 'Q', 'L', 'F', 'H', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (426, 16, 'L', 'F', 'Q', 'E', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (427, 16, 'Q', 'L', 'F', 'H', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (428, 16, 'E', 'H', 'Q', 'F', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (429, 16, 'H', 'E', 'F', 'L', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (430, 16, 'F', 'H', 'L', 'E', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (431, 16, 'F', 'E', 'Q', 'H', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (432, 16, 'E', 'Q', 'L', 'F', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (433, 16, 'Q', 'H', 'E', 'F', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (434, 16, 'H', 'L', 'E', 'Q', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (435, 16, 'L', 'H', 'E', 'F', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (436, 16, 'E', 'Q', 'F', 'H', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (437, 16, 'H', 'L', 'E', 'Q', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (438, 16, 'Q', 'L', 'F', 'E', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (439, 16, 'F', 'E', 'Q', 'L', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (440, 16, 'F', 'H', 'Q', 'E', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (441, 16, 'F', 'Q', 'L', 'E', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (442, 16, 'L', 'H', 'E', 'Q', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (443, 16, 'H', 'F', 'L', 'E', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (444, 16, 'L', 'H', 'Q', 'F', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (445, 16, 'F', 'L', 'H', 'E', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (446, 16, 'H', 'Q', 'E', 'F', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (447, 16, 'L', 'H', 'E', 'Q', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (448, 16, 'Q', 'H', 'L', 'F', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (449, 16, 'L', 'Q', 'H', 'F', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (450, 16, 'H', 'E', 'Q', 'F', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (451, 16, 'E', 'F', 'H', 'L', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (452, 16, 'E', 'Q', 'L', 'F', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (453, 16, 'H', 'F', 'Q', 'E', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (454, 16, 'E', 'Q', 'L', 'F', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (455, 16, 'H', 'L', 'F', 'Q', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (456, 16, 'H', 'E', 'L', 'F', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (457, 16, 'F', 'Q', 'H', 'E', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (458, 16, 'Q', 'L', 'E', 'H', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (459, 17, 'U', 'N', 'M', 'V', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (460, 17, 'M', 'U', 'V', 'N', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (461, 17, 'M', 'N', 'W', 'U', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (462, 17, 'N', 'W', 'V', 'M', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (463, 17, 'W', 'U', 'N', 'M', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (464, 17, 'U', 'V', 'N', 'W', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (465, 17, 'V', 'U', 'N', 'M', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (466, 17, 'N', 'W', 'M', 'U', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (467, 17, 'U', 'V', 'N', 'W', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (468, 17, 'W', 'V', 'M', 'N', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (469, 17, 'N', 'V', 'U', 'W', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (470, 17, 'W', 'V', 'M', 'U', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (471, 17, 'V', 'M', 'W', 'N', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (472, 17, 'W', 'V', 'M', 'U', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (473, 17, 'N', 'U', 'W', 'M', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (474, 17, 'V', 'U', 'M', 'N', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (475, 17, 'M', 'U', 'W', 'V', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (476, 17, 'W', 'N', 'V', 'M', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (477, 17, 'U', 'V', 'N', 'W', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (478, 17, 'W', 'V', 'M', 'U', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (479, 17, 'V', 'W', 'U', 'M', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (480, 17, 'U', 'N', 'W', 'M', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (481, 17, 'N', 'M', 'U', 'V', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (482, 17, 'N', 'W', 'V', 'M', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (483, 17, 'U', 'M', 'W', 'N', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (484, 17, 'N', 'W', 'V', 'M', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (485, 17, 'U', 'V', 'M', 'W', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (486, 17, 'U', 'N', 'V', 'M', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (487, 17, 'M', 'W', 'U', 'N', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (488, 17, 'W', 'V', 'N', 'U', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (489, 17, 'U', 'V', 'M', 'W', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (490, 17, 'W', 'V', 'N', 'U', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (491, 17, 'V', 'W', 'N', 'U', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (492, 17, 'U', 'V', 'N', 'M', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (493, 17, 'N', 'V', 'M', 'W', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (494, 17, 'W', 'N', 'U', 'V', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (495, 17, 'N', 'W', 'M', 'V', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (496, 17, 'U', 'N', 'W', 'M', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (497, 17, 'N', 'V', 'M', 'U', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (498, 17, 'U', 'W', 'V', 'M', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (499, 17, 'M', 'N', 'W', 'V', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (500, 17, 'M', 'U', 'W', 'N', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (501, 17, 'M', 'W', 'V', 'N', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (502, 17, 'V', 'U', 'N', 'W', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (503, 17, 'U', 'M', 'V', 'N', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (504, 17, 'V', 'U', 'W', 'M', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (505, 17, 'M', 'V', 'U', 'N', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (506, 17, 'U', 'W', 'N', 'M', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (507, 17, 'V', 'U', 'N', 'W', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (508, 17, 'W', 'U', 'V', 'M', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (510, 18, '«', '»', '=', '> ', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (511, 18, '> ', '< ', '«', '»', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (512, 18, '»', '< ', '=', '«', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (513, 18, '> ', '«', '»', '=', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (514, 18, '«', '=', '> ', '< ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (515, 18, '«', '»', '< ', '=', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (516, 18, '> ', '=', '»', '«', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (517, 18, '«', '»', '< ', '=', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (518, 18, '> ', '< ', '=', '»', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (519, 18, '> ', '«', '< ', '=', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (520, 18, '> ', '»', '«', '=', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (521, 18, '< ', '> ', '«', '»', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (522, 18, '»', '> ', '< ', '=', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (523, 18, '< ', '»', '> ', '=', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (524, 18, '=', '> ', '< ', '«', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (525, 18, '=', '«', '»', '> ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (526, 18, '«', '»', '< ', '=', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (527, 18, '»', '> ', '«', '=', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (528, 18, '> ', '< ', '«', '»', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (529, 18, '< ', '> ', '«', '=', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (530, 18, '< ', '»', '«', '> ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (531, 18, '> ', '< ', '«', '=', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (532, 18, '«', '< ', '=', '»', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (533, 18, '»', '«', '> ', '< ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (534, 18, '«', '»', '=', '< ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (535, 18, '> ', '«', '»', '=', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (536, 18, '«', '< ', '=', '> ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (537, 18, '> ', '»', '< ', '=', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (538, 18, '=', '«', '»', '< ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (539, 18, '> ', '< ', '«', '»', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (540, 18, '»', '< ', '=', '> ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (541, 18, '«', '< ', '> ', '»', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (542, 18, '»', '< ', '=', '> ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (543, 18, '< ', '=', '»', '«', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (544, 18, '»', '< ', '=', '> ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (545, 18, '«', '> ', '»', '=', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (546, 18, '< ', '> ', '=', '«', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (547, 18, '=', '> ', '»', '< ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (548, 18, '»', '«', '< ', '=', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (549, 18, '> ', '< ', '=', '»', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (550, 18, '»', '< ', '«', '> ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (551, 18, '=', '»', '> ', '«', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (552, 18, '»', '< ', '«', '> ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (553, 18, '> ', '«', '=', '< ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (554, 18, '=', '> ', '»', '«', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (555, 18, '=', '»', '< ', '«', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (556, 18, '< ', '> ', '«', '»', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (557, 18, '> ', '=', '< ', '«', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (558, 18, '< ', '> ', '»', '=', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (559, 18, '=', '< ', '> ', '«', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (560, 19, 'Ω', '@', '¤', 'ƕ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (561, 19, '¤', 'Ω', 'ƕ', '@', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (562, 19, '¤', '@', '±', 'Ω', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (563, 19, '@', '±', 'ƕ', '¤', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (564, 19, '±', 'Ω', '@', '¤', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (565, 19, 'Ω', 'ƕ', '@', '±', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (566, 19, 'ƕ', 'Ω', '@', '¤', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (567, 19, '@', '±', '¤', 'Ω', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (568, 19, 'Ω', 'ƕ', '@', '±', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (569, 19, '±', 'ƕ', '¤', '@', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (570, 19, 'ƕ', '±', 'Ω', '¤', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (571, 19, 'Ω', '@', '±', '¤', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (572, 19, '@', '¤', 'Ω', 'ƕ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (573, 19, '@', '±', 'ƕ', '¤', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (574, 19, 'Ω', '¤', '±', '@', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (575, 19, '@', '±', 'ƕ', '¤', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (576, 19, 'Ω', 'ƕ', '¤', '±', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (577, 19, 'Ω', '@', 'ƕ', '¤', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (578, 19, '¤', '±', 'Ω', '@', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (579, 19, '±', 'ƕ', '@', 'Ω', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (580, 19, '@', 'ƕ', 'Ω', '±', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (581, 19, '±', 'ƕ', '¤', 'Ω', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (582, 19, 'ƕ', '¤', '±', '@', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (583, 19, '±', 'ƕ', '¤', 'Ω', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (584, 19, '@', 'Ω', '±', '¤', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (585, 19, 'ƕ', 'Ω', '¤', '@', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (586, 19, '¤', 'Ω', '±', 'ƕ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (587, 19, '±', '@', 'ƕ', '¤', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (588, 19, 'Ω', 'ƕ', '@', '±', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (589, 19, '±', 'ƕ', '¤', 'Ω', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (590, 19, 'Ω', 'ƕ', '¤', '±', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (591, 19, '±', 'ƕ', '@', 'Ω', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (592, 19, 'ƕ', '±', '@', 'Ω', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (593, 19, 'Ω', 'ƕ', '@', '¤', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (594, 19, '@', 'ƕ', '¤', '±', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (595, 19, '±', '@', 'Ω', 'ƕ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (596, 19, '@', '±', '¤', 'ƕ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (597, 19, 'Ω', '@', '±', '¤', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (598, 19, '@', 'ƕ', '¤', 'Ω', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (599, 19, 'Ω', '±', 'ƕ', '¤', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (600, 19, '¤', '@', '±', 'ƕ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (601, 19, '¤', 'Ω', '±', '@', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (602, 19, '¤', '±', 'ƕ', '@', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (603, 19, 'ƕ', 'Ω', '@', '±', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (604, 19, 'Ω', '¤', 'ƕ', '@', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (605, 19, 'ƕ', 'Ω', '±', '¤', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (606, 19, '¤', 'ƕ', 'Ω', '@', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (607, 19, 'Ω', '±', '@', '¤', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (608, 19, 'ƕ', 'Ω', '@', '±', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (609, 19, '±', 'Ω', 'ƕ', '¤', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (610, 20, '§', '©', '±', '¶', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (611, 20, '¶', '§', '±', 'æ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (612, 20, '±', '§', 'æ', '©', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (613, 20, '©', '±', '¶', '§', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (614, 20, '±', '©', 'æ', '§', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (615, 20, '¶', '±', '©', 'æ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (616, 20, '±', '§', 'æ', '¶', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (617, 20, '¶', '©', '§', 'æ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (618, 20, 'æ', '±', '©', '§', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (619, 20, '¶', '§', '±', '©', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (620, 20, '©', '§', 'æ', '¶', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (621, 20, '±', '§', '¶', '©', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (622, 20, '©', '§', 'æ', '¶', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (623, 20, '§', 'æ', '©', '±', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (624, 20, '©', '§', 'æ', '¶', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (625, 20, '±', '¶', '©', 'æ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (626, 20, '§', '¶', 'æ', '±', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (627, 20, 'æ', '¶', '©', '§', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (628, 20, '©', '±', '§', 'æ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (629, 20, '¶', '§', 'æ', '©', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (630, 20, '©', '§', '±', '¶', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (631, 20, 'æ', '©', '¶', '±', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (632, 20, '©', '§', '±', '¶', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (633, 20, '¶', '±', 'æ', '§', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (634, 20, 'æ', '¶', '©', '±', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (635, 20, 'æ', '©', '§', '±', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (636, 20, '§', '¶', '±', '©', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (637, 20, '¶', 'æ', '§', '±', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (638, 20, '§', '¶', '©', 'æ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (639, 20, 'æ', '§', '¶', '±', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (640, 20, '¶', '©', '±', 'æ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (641, 20, '§', '¶', '±', '©', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (642, 20, '©', '¶', '§', 'æ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (643, 20, '§', '©', '¶', 'æ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (644, 20, 'æ', '¶', '§', '±', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (645, 20, 'æ', '±', '©', '¶', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (646, 20, '±', '©', '§', 'æ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (647, 20, '©', '¶', '±', 'æ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (648, 20, '¶', '§', '±', '©', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (649, 20, '§', '¶', '±', 'æ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (650, 20, '±', '©', 'æ', '¶', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (651, 20, '¶', '§', '±', '©', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (652, 20, '©', '§', 'æ', '±', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (653, 20, '¶', '±', '©', 'æ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (654, 20, '±', 'æ', '¶', '§', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (655, 20, '±', '©', '§', 'æ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (656, 20, '¶', 'æ', '©', '±', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (657, 20, '±', '©', '§', 'æ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (658, 20, '¶', '§', 'æ', '©', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (659, 20, '¶', '±', '§', 'æ', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (660, 21, 'ǂ', 'Ǯ', 'ɠ', 'ɮ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (661, 21, 'ɮ', 'ɶ', 'ǂ', 'Ǯ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (662, 21, 'Ǯ', 'ɶ', 'ɠ', 'ǂ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (663, 21, 'ɮ', 'ǂ', 'Ǯ', 'ɠ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (664, 21, 'ǂ', 'ɠ', 'ɮ', 'ɶ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (665, 21, 'ǂ', 'Ǯ', 'ɶ', 'ɠ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (666, 21, 'ɮ', 'ɠ', 'Ǯ', 'ǂ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (667, 21, 'ǂ', 'Ǯ', 'ɶ', 'ɠ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (668, 21, 'ɮ', 'ɶ', 'ɠ', 'Ǯ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (669, 21, 'ɮ', 'ǂ', 'ɶ', 'ɠ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (670, 21, 'ɮ', 'Ǯ', 'ǂ', 'ɠ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (671, 21, 'ɶ', 'ɮ', 'ǂ', 'Ǯ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (672, 21, 'Ǯ', 'ɮ', 'ɶ', 'ɠ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (673, 21, 'ɶ', 'Ǯ', 'ɮ', 'ɠ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (674, 21, 'ɠ', 'ɮ', 'ɶ', 'ǂ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (675, 21, 'ɠ', 'ǂ', 'Ǯ', 'ɮ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (676, 21, 'ǂ', 'Ǯ', 'ɶ', 'ɠ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (677, 21, 'Ǯ', 'ɮ', 'ǂ', 'ɠ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (678, 21, 'ɮ', 'ɶ', 'ǂ', 'Ǯ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (679, 21, 'ɶ', 'ɮ', 'ǂ', 'ɠ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (680, 21, 'ɶ', 'Ǯ', 'ǂ', 'ɮ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (681, 21, 'ɮ', 'ɶ', 'ǂ', 'ɠ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (682, 21, 'ǂ', 'ɶ', 'ɠ', 'Ǯ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (683, 21, 'Ǯ', 'ǂ', 'ɮ', 'ɶ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (684, 21, 'ǂ', 'Ǯ', 'ɠ', 'ɶ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (685, 21, 'ɮ', 'ǂ', 'Ǯ', 'ɠ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (686, 21, 'ǂ', 'ɶ', 'ɠ', 'ɮ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (687, 21, 'ɮ', 'Ǯ', 'ɶ', 'ɠ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (688, 21, 'ɠ', 'ǂ', 'Ǯ', 'ɶ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (689, 21, 'ɮ', 'ɶ', 'ǂ', 'Ǯ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (690, 21, 'Ǯ', 'ɶ', 'ɠ', 'ɮ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (691, 21, 'ǂ', 'ɶ', 'ɮ', 'Ǯ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (692, 21, 'Ǯ', 'ɶ', 'ɠ', 'ɮ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (693, 21, 'ɶ', 'ɠ', 'Ǯ', 'ǂ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (694, 21, 'Ǯ', 'ɶ', 'ɠ', 'ɮ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (695, 21, 'ǂ', 'ɮ', 'Ǯ', 'ɠ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (696, 21, 'ɶ', 'ɮ', 'ɠ', 'ǂ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (697, 21, 'ɠ', 'ɮ', 'Ǯ', 'ɶ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (698, 21, 'Ǯ', 'ǂ', 'ɶ', 'ɠ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (699, 21, 'ɮ', 'ɶ', 'ɠ', 'Ǯ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (700, 21, 'Ǯ', 'ɶ', 'ǂ', 'ɮ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (701, 21, 'ɠ', 'Ǯ', 'ɮ', 'ǂ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (702, 21, 'Ǯ', 'ɶ', 'ǂ', 'ɮ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (703, 21, 'ɮ', 'ǂ', 'ɠ', 'ɶ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (704, 21, 'ɠ', 'ɮ', 'Ǯ', 'ǂ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (705, 21, 'ɠ', 'Ǯ', 'ɶ', 'ǂ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (706, 21, 'ɶ', 'ɮ', 'ǂ', 'Ǯ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (707, 21, 'ɮ', 'ɠ', 'ɶ', 'ǂ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (708, 21, 'ɶ', 'ɮ', 'Ǯ', 'ɠ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (709, 21, 'ɠ', 'ɶ', 'ɮ', 'ǂ', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (710, 23, '»', '< ', '=', '> ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (711, 23, '«', '< ', '> ', '»', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (712, 23, '»', '< ', '=', '> ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (713, 23, '< ', '=', '»', '«', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (714, 23, '»', '< ', '=', '> ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (715, 23, '«', '> ', '»', '=', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (716, 23, '< ', '> ', '=', '«', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (717, 23, '=', '> ', '»', '< ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (718, 23, '»', '«', '< ', '=', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (719, 23, '> ', '< ', '=', '»', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (720, 23, '»', '< ', '«', '> ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (721, 23, '=', '»', '> ', '«', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (722, 23, '»', '< ', '«', '> ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (723, 23, '> ', '«', '=', '< ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (724, 23, '=', '> ', '»', '«', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (725, 23, '=', '»', '< ', '«', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (726, 23, '< ', '> ', '«', '»', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (727, 23, '> ', '=', '< ', '«', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (728, 23, '< ', '> ', '»', '=', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (729, 23, '=', '< ', '> ', '«', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (730, 23, '«', '»', '=', '> ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (731, 23, '> ', '< ', '«', '»', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (732, 23, '»', '< ', '=', '«', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (733, 23, '> ', '«', '»', '=', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (734, 23, '«', '=', '> ', '< ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (735, 23, '«', '»', '< ', '=', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (736, 23, '> ', '=', '»', '«', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (737, 23, '«', '»', '< ', '=', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (738, 23, '> ', '< ', '=', '»', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (739, 23, '> ', '«', '< ', '=', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (740, 23, '> ', '»', '«', '=', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (741, 23, '< ', '> ', '«', '»', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (742, 23, '»', '> ', '< ', '=', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (743, 23, '< ', '»', '> ', '=', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (744, 23, '=', '> ', '< ', '«', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (745, 23, '=', '«', '»', '> ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (746, 23, '«', '»', '< ', '=', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (747, 23, '»', '> ', '«', '=', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (748, 23, '> ', '< ', '«', '»', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (749, 23, '< ', '> ', '«', '=', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (750, 23, '< ', '»', '«', '> ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (751, 23, '> ', '< ', '«', '=', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (752, 23, '«', '< ', '=', '»', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (753, 23, '»', '«', '> ', '< ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (754, 23, '«', '»', '=', '< ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (755, 23, '> ', '«', '»', '=', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (756, 23, '«', '< ', '=', '> ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (757, 23, '> ', '»', '< ', '=', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (758, 23, '=', '«', '»', '< ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (759, 23, '> ', '< ', '«', '»', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (760, 24, 'Ω', 'ƕ', '¤', '±', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (761, 24, '±', 'ƕ', '@', 'Ω', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (762, 24, 'ƕ', '±', '@', 'Ω', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (763, 24, 'Ω', 'ƕ', '@', '¤', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (764, 24, '@', 'ƕ', '¤', '±', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (765, 24, '±', '@', 'Ω', 'ƕ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (766, 24, '@', '±', '¤', 'ƕ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (767, 24, 'Ω', '@', '±', '¤', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (768, 24, '@', 'ƕ', '¤', 'Ω', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (769, 24, 'Ω', '±', 'ƕ', '¤', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (770, 24, '¤', '@', '±', 'ƕ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (771, 24, '¤', 'Ω', '±', '@', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (772, 24, '¤', '±', 'ƕ', '@', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (773, 24, 'ƕ', 'Ω', '@', '±', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (774, 24, 'Ω', '¤', 'ƕ', '@', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (775, 24, 'ƕ', 'Ω', '±', '¤', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (776, 24, '¤', 'ƕ', 'Ω', '@', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (777, 24, 'Ω', '±', '@', '¤', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (778, 24, 'ƕ', 'Ω', '@', '±', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (779, 24, '±', 'Ω', 'ƕ', '¤', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (780, 24, 'Ω', '@', '¤', 'ƕ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (781, 24, '¤', 'Ω', 'ƕ', '@', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (782, 24, '¤', '@', '±', 'Ω', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (783, 24, '@', '±', 'ƕ', '¤', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (784, 24, '±', 'Ω', '@', '¤', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (785, 24, 'Ω', 'ƕ', '@', '±', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (786, 24, 'ƕ', 'Ω', '@', '¤', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (787, 24, '@', '±', '¤', 'Ω', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (788, 24, 'Ω', 'ƕ', '@', '±', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (789, 24, '±', 'ƕ', '¤', '@', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (790, 24, 'ƕ', '±', 'Ω', '¤', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (791, 24, 'Ω', '@', '±', '¤', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (792, 24, '@', '¤', 'Ω', 'ƕ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (793, 24, '@', '±', 'ƕ', '¤', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (794, 24, 'Ω', '¤', '±', '@', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (795, 24, '@', '±', 'ƕ', '¤', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (796, 24, 'Ω', 'ƕ', '¤', '±', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (797, 24, 'Ω', '@', 'ƕ', '¤', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (798, 24, '¤', '±', 'Ω', '@', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (799, 24, '±', 'ƕ', '@', 'Ω', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (800, 24, '@', 'ƕ', 'Ω', '±', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (801, 24, '±', 'ƕ', '¤', 'Ω', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (802, 24, 'ƕ', '¤', '±', '@', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (803, 24, '±', 'ƕ', '¤', 'Ω', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (804, 24, '@', 'Ω', '±', '¤', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (805, 24, 'ƕ', 'Ω', '¤', '@', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (806, 24, '¤', 'Ω', '±', 'ƕ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (807, 24, '±', '@', 'ƕ', '¤', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (808, 24, 'Ω', 'ƕ', '@', '±', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (809, 24, '±', 'ƕ', '¤', 'Ω', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (810, 25, '©', '§', '±', '¶', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (811, 25, 'æ', '©', '¶', '±', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (812, 25, '©', '§', '±', '¶', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (813, 25, '¶', '±', 'æ', '§', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (814, 25, 'æ', '¶', '©', '±', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (815, 25, 'æ', '©', '§', '±', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (816, 25, '§', '¶', '±', '©', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (817, 25, '¶', 'æ', '§', '±', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (818, 25, '§', '¶', '©', 'æ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (819, 25, 'æ', '§', '¶', '±', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (820, 25, '¶', '©', '±', 'æ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (821, 25, '§', '¶', '±', '©', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (822, 25, '©', '¶', '§', 'æ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (823, 25, '§', '©', '¶', 'æ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (824, 25, 'æ', '¶', '§', '±', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (825, 25, 'æ', '±', '©', '¶', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (826, 25, '±', '©', '§', 'æ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (827, 25, '©', '¶', '±', 'æ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (828, 25, '¶', '§', '±', '©', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (829, 25, '§', '¶', '±', 'æ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (830, 25, '±', '©', 'æ', '¶', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (831, 25, '¶', '§', '±', '©', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (832, 25, '©', '§', 'æ', '±', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (833, 25, '¶', '±', '©', 'æ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (834, 25, '±', 'æ', '¶', '§', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (835, 25, '±', '©', '§', 'æ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (836, 25, '¶', 'æ', '©', '±', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (837, 25, '±', '©', '§', 'æ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (838, 25, '¶', '§', 'æ', '©', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (839, 25, '¶', '±', '§', 'æ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (840, 25, '§', '©', '±', '¶', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (841, 25, '¶', '§', '±', 'æ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (842, 25, '±', '§', 'æ', '©', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (843, 25, '©', '±', '¶', '§', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (844, 25, '±', '©', 'æ', '§', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (845, 25, '¶', '±', '©', 'æ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (846, 25, '±', '§', 'æ', '¶', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (847, 25, '¶', '©', '§', 'æ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (848, 25, 'æ', '±', '©', '§', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (849, 25, '¶', '§', '±', '©', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (850, 25, '©', '§', 'æ', '¶', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (851, 25, '±', '§', '¶', '©', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (852, 25, '©', '§', 'æ', '¶', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (853, 25, '§', 'æ', '©', '±', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (854, 25, '©', '§', 'æ', '¶', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (855, 25, '±', '¶', '©', 'æ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (856, 25, '§', '¶', 'æ', '±', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (857, 25, 'æ', '¶', '©', '§', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (858, 25, '©', '±', '§', 'æ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (859, 25, '¶', '§', 'æ', '©', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (860, 26, 'ɶ', 'Ǯ', 'ǂ', 'ɮ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (861, 26, 'ɮ', 'ɶ', 'ǂ', 'ɠ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (862, 26, 'ǂ', 'ɶ', 'ɠ', 'Ǯ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (863, 26, 'Ǯ', 'ǂ', 'ɮ', 'ɶ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (864, 26, 'ǂ', 'Ǯ', 'ɠ', 'ɶ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (865, 26, 'ɮ', 'ǂ', 'Ǯ', 'ɠ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (866, 26, 'ǂ', 'ɶ', 'ɠ', 'ɮ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (867, 26, 'ɮ', 'Ǯ', 'ɶ', 'ɠ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (868, 26, 'ɠ', 'ǂ', 'Ǯ', 'ɶ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (869, 26, 'ɮ', 'ɶ', 'ǂ', 'Ǯ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (870, 26, 'Ǯ', 'ɶ', 'ɠ', 'ɮ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (871, 26, 'ǂ', 'ɶ', 'ɮ', 'Ǯ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (872, 26, 'Ǯ', 'ɶ', 'ɠ', 'ɮ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (873, 26, 'ɶ', 'ɠ', 'Ǯ', 'ǂ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (874, 26, 'Ǯ', 'ɶ', 'ɠ', 'ɮ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (875, 26, 'ǂ', 'ɮ', 'Ǯ', 'ɠ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (876, 26, 'ɶ', 'ɮ', 'ɠ', 'ǂ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (877, 26, 'ɠ', 'ɮ', 'Ǯ', 'ɶ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (878, 26, 'Ǯ', 'ǂ', 'ɶ', 'ɠ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (879, 26, 'ɮ', 'ɶ', 'ɠ', 'Ǯ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (880, 26, 'Ǯ', 'ɶ', 'ǂ', 'ɮ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (881, 26, 'ɠ', 'Ǯ', 'ɮ', 'ǂ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (882, 26, 'Ǯ', 'ɶ', 'ǂ', 'ɮ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (883, 26, 'ɮ', 'ǂ', 'ɠ', 'ɶ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (884, 26, 'ɠ', 'ɮ', 'Ǯ', 'ǂ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (885, 26, 'ɠ', 'Ǯ', 'ɶ', 'ǂ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (886, 26, 'ɶ', 'ɮ', 'ǂ', 'Ǯ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (887, 26, 'ɮ', 'ɠ', 'ɶ', 'ǂ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (888, 26, 'ɶ', 'ɮ', 'Ǯ', 'ɠ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (889, 26, 'ɠ', 'ɶ', 'ɮ', 'ǂ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (890, 26, 'ǂ', 'Ǯ', 'ɠ', 'ɮ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (891, 26, 'ɮ', 'ɶ', 'ǂ', 'Ǯ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (892, 26, 'Ǯ', 'ɶ', 'ɠ', 'ǂ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (893, 26, 'ɮ', 'ǂ', 'Ǯ', 'ɠ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (894, 26, 'ǂ', 'ɠ', 'ɮ', 'ɶ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (895, 26, 'ǂ', 'Ǯ', 'ɶ', 'ɠ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (896, 26, 'ɮ', 'ɠ', 'Ǯ', 'ǂ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (897, 26, 'ǂ', 'Ǯ', 'ɶ', 'ɠ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (898, 26, 'ɮ', 'ɶ', 'ɠ', 'Ǯ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (899, 26, 'ɮ', 'ǂ', 'ɶ', 'ɠ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (900, 26, 'ɮ', 'Ǯ', 'ǂ', 'ɠ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (901, 26, 'ɶ', 'ɮ', 'ǂ', 'Ǯ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (902, 26, 'Ǯ', 'ɮ', 'ɶ', 'ɠ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (903, 26, 'ɶ', 'Ǯ', 'ɮ', 'ɠ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (904, 26, 'ɠ', 'ɮ', 'ɶ', 'ǂ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (905, 26, 'ɠ', 'ǂ', 'Ǯ', 'ɮ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (906, 26, 'ǂ', 'Ǯ', 'ɶ', 'ɠ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (907, 26, 'Ǯ', 'ɮ', 'ǂ', 'ɠ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (908, 26, 'ɮ', 'ɶ', 'ǂ', 'Ǯ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (909, 26, 'ɶ', 'ɮ', 'ǂ', 'ɠ', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (910, 27, 'Ξ', 'Җ', 'ʨ', '҂', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (911, 27, '҂', 'Җ', 'Ϡ', 'ʨ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (912, 27, 'Җ', 'Ϡ', '҂', 'Ξ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (913, 27, '҂', 'Җ', 'Ϡ', 'ʨ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (914, 27, 'Ξ', 'ʨ', '҂', 'Ϡ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (915, 27, 'Җ', 'ʨ', 'Ϡ', 'Ξ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (916, 27, 'Ϡ', 'ʨ', '҂', 'Җ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (917, 27, '҂', 'Ξ', 'Җ', 'Ϡ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (918, 27, 'ʨ', 'Җ', 'Ξ', '҂', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (919, 27, '҂', 'Җ', 'Ϡ', 'ʨ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (920, 27, 'ʨ', 'Җ', 'Ϡ', '҂', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (921, 27, '҂', 'Җ', 'Ξ', 'ʨ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (922, 27, 'Җ', '҂', 'Ξ', 'ʨ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (923, 27, 'ʨ', 'Җ', 'Ξ', 'Ϡ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (924, 27, 'Ξ', 'Җ', 'Ϡ', '҂', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (925, 27, '҂', 'Ξ', 'ʨ', 'Җ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (926, 27, 'Ξ', '҂', 'Ϡ', 'Җ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (927, 27, 'ʨ', 'Ξ', '҂', 'Ϡ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (928, 27, 'Ξ', 'Җ', 'Ϡ', 'ʨ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (929, 27, 'ʨ', '҂', 'Җ', 'Ϡ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (930, 27, 'Ϡ', 'Ξ', '҂', 'Җ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (931, 27, 'Ϡ', 'ʨ', '҂', 'Ξ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (932, 27, 'Ϡ', '҂', 'Җ', 'Ξ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (933, 27, 'Җ', 'ʨ', 'Ξ', '҂', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (934, 27, 'ʨ', 'Ϡ', 'Җ', 'Ξ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (935, 27, 'Җ', 'ʨ', '҂', 'Ϡ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (936, 27, 'Ϡ', 'Җ', 'ʨ', 'Ξ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (937, 27, 'ʨ', '҂', 'Ξ', 'Ϡ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (938, 27, 'Җ', 'ʨ', 'Ξ', '҂', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (939, 27, '҂', 'ʨ', 'Җ', 'Ϡ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (940, 27, 'ʨ', 'Ξ', 'Ϡ', 'Җ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (941, 27, 'Ϡ', 'ʨ', 'Җ', 'Ξ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (942, 27, 'Ϡ', 'Ξ', '҂', 'ʨ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (943, 27, 'Ξ', '҂', 'Җ', 'Ϡ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (944, 27, '҂', 'ʨ', 'Ξ', 'Ϡ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (945, 27, 'ʨ', 'Җ', 'Ξ', '҂', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (946, 27, 'Җ', 'ʨ', 'Ξ', 'Ϡ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (947, 27, 'Ξ', '҂', 'Ϡ', 'ʨ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (948, 27, 'ʨ', 'Җ', 'Ξ', '҂', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (949, 27, '҂', 'Җ', 'Ϡ', 'Ξ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (950, 27, 'Җ', '҂', 'ʨ', 'Ϡ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (951, 27, 'ʨ', 'Ξ', '҂', 'Ϡ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (952, 27, 'Ξ', 'Ϡ', 'ʨ', 'Җ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (953, 27, 'Ξ', '҂', 'Җ', 'Ϡ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (954, 27, 'ʨ', 'Ϡ', '҂', 'Ξ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (955, 27, 'Ξ', '҂', 'Җ', 'Ϡ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (956, 27, 'ʨ', 'Җ', 'Ϡ', '҂', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (957, 27, 'ʨ', 'Ξ', 'Җ', 'Ϡ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (958, 27, 'Ϡ', '҂', 'ʨ', 'Ξ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (959, 27, '҂', 'Җ', 'Ξ', 'ʨ', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (960, 28, '2', '6', '7', '1', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (961, 28, '4', '1', '6', '2', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (962, 28, '2', '6', '7', '1', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (963, 28, '4', '7', '1', '6', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (964, 28, '4', '2', '7', '1', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (965, 28, '4', '6', '2', '1', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (966, 28, '7', '4', '2', '6', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (967, 28, '6', '4', '7', '1', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (968, 28, '7', '6', '4', '1', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (969, 28, '1', '4', '7', '2', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (970, 28, '2', '6', '1', '4', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (971, 28, '4', '7', '2', '6', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (972, 28, '6', '7', '1', '2', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (973, 28, '4', '2', '6', '1', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (974, 28, '2', '1', '4', '7', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (975, 28, '1', '2', '6', '4', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (976, 28, '2', '6', '7', '1', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (977, 28, '6', '4', '2', '1', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (978, 28, '4', '7', '2', '6', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (979, 28, '7', '4', '2', '1', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (980, 28, '7', '6', '2', '4', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (981, 28, '4', '7', '2', '1', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (982, 28, '2', '7', '1', '6', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (983, 28, '6', '2', '4', '7', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (984, 28, '2', '6', '1', '7', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (985, 28, '6', '7', '1', '4', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (986, 28, '2', '7', '4', '6', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (987, 28, '6', '7', '1', '4', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (988, 28, '7', '1', '6', '2', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (989, 28, '6', '7', '1', '4', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (990, 28, '4', '2', '6', '1', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (991, 28, '2', '7', '1', '4', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (992, 28, '4', '6', '7', '1', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (993, 28, '1', '2', '6', '7', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (994, 28, '4', '7', '2', '6', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (995, 28, '2', '4', '6', '1', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (996, 28, '7', '4', '1', '2', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (997, 28, '1', '4', '6', '7', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (998, 28, '6', '2', '7', '1', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (999, 28, '4', '7', '1', '6', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1000, 28, '1', '6', '7', '2', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1001, 28, '7', '4', '2', '6', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1002, 28, '4', '1', '7', '2', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1003, 28, '7', '4', '6', '1', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1004, 28, '1', '7', '4', '2', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1005, 28, '6', '7', '2', '4', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1006, 28, '1', '6', '4', '2', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1007, 28, '6', '7', '2', '4', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1008, 28, '4', '2', '1', '7', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1009, 28, '1', '4', '6', '2', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1010, 29, '2', '3', '7', '0', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1011, 29, '0', '2', '7', '6', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1012, 29, '7', '2', '6', '3', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1013, 29, '3', '7', '0', '2', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1014, 29, '7', '3', '6', '2', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1015, 29, '0', '7', '3', '6', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1016, 29, '7', '2', '6', '0', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1017, 29, '0', '3', '2', '6', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1018, 29, '6', '7', '3', '2', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1019, 29, '0', '2', '7', '3', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1020, 29, '3', '2', '7', '0', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1021, 29, '6', '3', '0', '7', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1022, 29, '3', '2', '7', '0', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1023, 29, '0', '7', '6', '2', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1024, 29, '6', '0', '3', '7', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1025, 29, '6', '3', '2', '7', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1026, 29, '2', '0', '7', '3', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1027, 29, '0', '6', '2', '7', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1028, 29, '2', '0', '3', '6', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1029, 29, '6', '2', '0', '7', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1030, 29, '6', '7', '3', '0', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1031, 29, '7', '3', '2', '6', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1032, 29, '3', '0', '7', '6', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1033, 29, '0', '2', '7', '3', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1034, 29, '2', '0', '7', '6', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1035, 29, '7', '0', '3', '6', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1036, 29, '2', '0', '6', '7', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1037, 29, '6', '0', '3', '2', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1038, 29, '3', '7', '2', '6', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1039, 29, '0', '2', '6', '3', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1040, 29, '7', '3', '2', '6', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1041, 29, '0', '6', '3', '7', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1042, 29, '7', '3', '2', '6', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1043, 29, '0', '2', '6', '3', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1044, 29, '0', '7', '2', '6', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1045, 29, '0', '3', '7', '6', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1046, 29, '2', '0', '7', '3', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1047, 29, '3', '0', '2', '6', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1048, 29, '2', '3', '0', '6', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1049, 29, '6', '0', '2', '7', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1050, 29, '7', '3', '6', '0', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1051, 29, '0', '2', '7', '3', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1052, 29, '3', '2', '6', '7', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1053, 29, '0', '7', '3', '6', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1054, 29, '7', '6', '0', '2', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1055, 29, '3', '2', '6', '0', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1056, 29, '7', '2', '0', '3', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1057, 29, '3', '2', '6', '0', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1058, 29, '2', '6', '3', '7', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1059, 29, '3', '2', '6', '0', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1060, 30, '1', '8', '3', '5', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1061, 30, '1', '7', '3', '8', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1062, 30, '1', '3', '5', '8', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1063, 30, '5', '7', '8', '3', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1064, 30, '7', '1', '5', '8', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1065, 30, '5', '7', '3', '1', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1066, 30, '1', '5', '7', '8', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1067, 30, '7', '3', '8', '1', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1068, 30, '5', '7', '8', '3', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1069, 30, '3', '7', '5', '1', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1070, 30, '7', '8', '1', '5', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1071, 30, '1', '7', '5', '8', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1072, 30, '1', '8', '3', '7', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1073, 30, '8', '3', '5', '1', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1074, 30, '3', '7', '8', '1', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1075, 30, '7', '5', '8', '3', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1076, 30, '5', '7', '8', '1', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1077, 30, '8', '3', '1', '7', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1078, 30, '7', '5', '8', '3', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1079, 30, '3', '5', '1', '8', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1080, 30, '5', '3', '7', '1', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1081, 30, '7', '8', '3', '1', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1082, 30, '8', '1', '7', '5', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1083, 30, '8', '3', '5', '1', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1084, 30, '7', '1', '3', '8', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1085, 30, '8', '3', '5', '1', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1086, 30, '7', '5', '1', '3', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1087, 30, '7', '8', '5', '1', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1088, 30, '1', '3', '7', '8', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1089, 30, '3', '5', '8', '7', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1090, 30, '7', '5', '1', '3', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1091, 30, '3', '5', '8', '7', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1092, 30, '5', '3', '8', '7', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1093, 30, '7', '5', '8', '1', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1094, 30, '8', '5', '1', '3', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1095, 30, '3', '8', '7', '5', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1096, 30, '8', '3', '1', '5', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1097, 30, '7', '8', '3', '1', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1098, 30, '8', '5', '1', '7', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1099, 30, '7', '3', '5', '1', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1100, 30, '8', '5', '7', '3', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1101, 30, '3', '5', '1', '7', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1102, 30, '5', '1', '3', '8', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1103, 30, '3', '5', '1', '7', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1104, 30, '8', '7', '3', '1', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1105, 30, '5', '7', '1', '8', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1106, 30, '1', '7', '3', '5', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1107, 30, '3', '8', '5', '1', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1108, 30, '7', '5', '8', '3', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1109, 30, '3', '5', '1', '7', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1110, 31, '2', '4', '1', '5', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1111, 31, '5', '4', '7', '2', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1112, 31, '4', '5', '7', '2', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1113, 31, '2', '4', '7', '1', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1114, 31, '7', '4', '1', '5', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1115, 31, '4', '2', '1', '7', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1116, 31, '1', '2', '5', '4', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1117, 31, '5', '7', '4', '1', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1118, 31, '2', '4', '7', '5', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1119, 31, '5', '4', '1', '2', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1120, 31, '5', '7', '2', '4', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1121, 31, '7', '5', '1', '4', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1122, 31, '2', '7', '5', '1', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1123, 31, '7', '4', '1', '2', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1124, 31, '2', '5', '4', '1', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1125, 31, '7', '4', '2', '5', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1126, 31, '5', '4', '1', '2', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1127, 31, '4', '1', '5', '7', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1128, 31, '5', '4', '1', '2', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1129, 31, '7', '2', '5', '1', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1130, 31, '2', '7', '1', '4', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1131, 31, '1', '2', '4', '7', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1132, 31, '1', '7', '5', '2', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1133, 31, '7', '5', '4', '1', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1134, 31, '5', '2', '7', '1', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1135, 31, '2', '4', '7', '5', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1136, 31, '4', '2', '7', '1', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1137, 31, '7', '5', '1', '2', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1138, 31, '2', '4', '7', '5', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1139, 31, '5', '4', '1', '7', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1140, 31, '1', '7', '5', '4', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1141, 31, '1', '2', '5', '7', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1142, 31, '1', '5', '4', '7', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1143, 31, '4', '2', '7', '5', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1144, 31, '2', '1', '4', '7', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1145, 31, '4', '2', '5', '1', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1146, 31, '1', '4', '2', '7', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1147, 31, '2', '5', '7', '1', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1148, 31, '4', '2', '7', '5', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1149, 31, '5', '2', '4', '1', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1150, 31, '4', '5', '2', '1', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1151, 31, '2', '7', '5', '1', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1152, 31, '7', '1', '2', '4', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1153, 31, '7', '5', '4', '1', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1154, 31, '2', '1', '5', '7', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1155, 31, '7', '5', '4', '1', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1156, 31, '2', '4', '1', '5', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1157, 31, '2', '7', '4', '1', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1158, 31, '1', '5', '2', '7', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1159, 31, '5', '4', '7', '2', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1160, 32, '9', '3', '6', '8', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1161, 32, '6', '9', '8', '3', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1162, 32, '6', '3', '0', '9', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1163, 32, '3', '0', '8', '6', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1164, 32, '0', '9', '3', '6', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1165, 32, '9', '8', '3', '0', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1166, 32, '8', '9', '3', '6', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1167, 32, '3', '0', '6', '9', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1168, 32, '9', '8', '3', '0', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1169, 32, '0', '8', '6', '3', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1170, 32, '3', '8', '9', '0', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1171, 32, '0', '8', '6', '9', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1172, 32, '8', '6', '0', '3', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1173, 32, '0', '8', '6', '9', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1174, 32, '3', '9', '0', '6', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1175, 32, '8', '9', '6', '3', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1176, 32, '6', '9', '0', '8', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1177, 32, '0', '3', '8', '6', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1178, 32, '9', '8', '3', '0', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1179, 32, '0', '8', '6', '9', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1180, 32, '8', '0', '9', '6', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1181, 32, '9', '3', '0', '6', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1182, 32, '3', '6', '9', '8', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1183, 32, '3', '0', '8', '6', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1184, 32, '9', '6', '0', '3', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1185, 32, '3', '0', '8', '6', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1186, 32, '9', '8', '6', '0', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1187, 32, '9', '3', '8', '6', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1188, 32, '6', '0', '9', '3', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1189, 32, '0', '8', '3', '9', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1190, 32, '9', '8', '6', '0', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1191, 32, '0', '8', '3', '9', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1192, 32, '8', '0', '3', '9', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1193, 32, '9', '8', '3', '6', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1194, 32, '3', '8', '6', '0', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1195, 32, '0', '3', '9', '8', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1196, 32, '3', '0', '6', '8', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1197, 32, '9', '3', '0', '6', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1198, 32, '3', '8', '6', '9', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1199, 32, '9', '0', '8', '6', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1200, 32, '6', '3', '0', '8', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1201, 32, '6', '9', '0', '3', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1202, 32, '6', '0', '8', '3', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1203, 32, '8', '9', '3', '0', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1204, 32, '9', '6', '8', '3', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1205, 32, '8', '9', '0', '6', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1206, 32, '6', '8', '9', '3', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1207, 32, '9', '0', '3', '6', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1208, 32, '8', '9', '3', '0', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1209, 32, '0', '9', '8', '6', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1210, 33, '4', '6', '2', '1', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1211, 33, '7', '4', '2', '6', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1212, 33, '6', '4', '7', '1', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1213, 33, '7', '6', '4', '1', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1214, 33, '1', '4', '7', '2', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1215, 33, '6', '7', '2', '4', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1216, 33, '1', '6', '4', '2', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1217, 33, '6', '7', '2', '4', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1218, 33, '4', '2', '1', '7', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1219, 33, '1', '4', '6', '2', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1220, 33, '1', '2', '6', '4', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1221, 33, '2', '6', '7', '1', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1222, 33, '6', '4', '2', '1', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1223, 33, '4', '7', '2', '6', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1224, 33, '7', '4', '2', '1', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1225, 33, '1', '6', '7', '2', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1226, 33, '7', '4', '2', '6', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1227, 33, '4', '1', '7', '2', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1228, 33, '7', '4', '6', '1', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1229, 33, '1', '7', '4', '2', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1230, 33, '6', '7', '1', '4', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1231, 33, '2', '7', '4', '6', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1232, 33, '6', '7', '1', '4', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1233, 33, '7', '1', '6', '2', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1234, 33, '6', '7', '1', '4', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1235, 33, '2', '4', '6', '1', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1236, 33, '7', '4', '1', '2', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1237, 33, '1', '4', '6', '7', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1238, 33, '6', '2', '7', '1', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1239, 33, '4', '7', '1', '6', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1240, 33, '7', '6', '2', '4', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1241, 33, '4', '7', '2', '1', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1242, 33, '2', '7', '1', '6', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1243, 33, '6', '2', '4', '7', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1244, 33, '2', '6', '1', '7', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1245, 33, '4', '2', '6', '1', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1246, 33, '2', '7', '1', '4', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1247, 33, '4', '6', '7', '1', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1248, 33, '1', '2', '6', '7', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1249, 33, '4', '7', '2', '6', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1250, 33, '2', '6', '1', '4', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1251, 33, '4', '7', '2', '6', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1252, 33, '6', '7', '1', '2', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1253, 33, '4', '2', '6', '1', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1254, 33, '2', '1', '4', '7', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1255, 33, '2', '6', '7', '1', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1256, 33, '4', '1', '6', '2', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1257, 33, '2', '6', '7', '1', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1258, 33, '4', '7', '1', '6', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1259, 33, '4', '2', '7', '1', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1260, 34, '7', '3', '6', '0', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1261, 34, '0', '2', '7', '3', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1262, 34, '3', '2', '6', '7', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1263, 34, '0', '7', '3', '6', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1264, 34, '7', '6', '0', '2', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1265, 34, '7', '3', '2', '6', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1266, 34, '0', '6', '3', '7', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1267, 34, '7', '3', '2', '6', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1268, 34, '0', '2', '6', '3', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1269, 34, '0', '7', '2', '6', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1270, 34, '0', '3', '7', '6', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1271, 34, '2', '0', '7', '3', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1272, 34, '3', '0', '2', '6', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1273, 34, '2', '3', '0', '6', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1274, 34, '6', '0', '2', '7', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1275, 34, '6', '7', '3', '0', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1276, 34, '7', '3', '2', '6', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1277, 34, '3', '0', '7', '6', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1278, 34, '0', '2', '7', '3', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1279, 34, '2', '0', '7', '6', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1280, 34, '3', '2', '7', '0', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1281, 34, '6', '3', '0', '7', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1282, 34, '3', '2', '7', '0', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1283, 34, '0', '7', '6', '2', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1284, 34, '6', '0', '3', '7', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1285, 34, '6', '3', '2', '7', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1286, 34, '2', '0', '7', '3', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1287, 34, '0', '6', '2', '7', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1288, 34, '2', '0', '3', '6', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1289, 34, '6', '2', '0', '7', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1290, 34, '3', '2', '6', '0', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1291, 34, '7', '2', '0', '3', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1292, 34, '3', '2', '6', '0', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1293, 34, '2', '6', '3', '7', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1294, 34, '3', '2', '6', '0', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1295, 34, '7', '0', '3', '6', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1296, 34, '2', '0', '6', '7', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1297, 34, '6', '0', '3', '2', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1298, 34, '3', '7', '2', '6', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1299, 34, '0', '2', '6', '3', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1300, 34, '2', '3', '7', '0', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1301, 34, '0', '2', '7', '6', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1302, 34, '7', '2', '6', '3', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1303, 34, '3', '7', '0', '2', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1304, 34, '7', '3', '6', '2', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1305, 34, '0', '7', '3', '6', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1306, 34, '7', '2', '6', '0', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1307, 34, '0', '3', '2', '6', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1308, 34, '6', '7', '3', '2', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1309, 34, '0', '2', '7', '3', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1310, 35, '7', '5', '1', '3', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1311, 35, '3', '5', '8', '7', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1312, 35, '5', '3', '8', '7', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1313, 35, '7', '5', '8', '1', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1314, 35, '8', '5', '1', '3', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1315, 35, '3', '8', '7', '5', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1316, 35, '8', '3', '1', '5', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1317, 35, '7', '8', '3', '1', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1318, 35, '8', '5', '1', '7', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1319, 35, '7', '3', '5', '1', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1320, 35, '8', '5', '7', '3', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1321, 35, '3', '5', '1', '7', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1322, 35, '5', '1', '3', '8', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1323, 35, '3', '5', '1', '7', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1324, 35, '8', '7', '3', '1', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1325, 35, '5', '7', '1', '8', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1326, 35, '1', '7', '3', '5', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1327, 35, '3', '8', '5', '1', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1328, 35, '7', '5', '8', '3', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1329, 35, '3', '5', '1', '7', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1330, 35, '7', '8', '1', '5', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1331, 35, '1', '7', '5', '8', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1332, 35, '1', '8', '3', '7', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1333, 35, '8', '3', '5', '1', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1334, 35, '3', '7', '8', '1', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1335, 35, '7', '5', '8', '3', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1336, 35, '5', '7', '8', '1', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1337, 35, '8', '3', '1', '7', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1338, 35, '7', '5', '8', '3', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1339, 35, '3', '5', '1', '8', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1340, 35, '1', '8', '3', '5', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1341, 35, '1', '7', '3', '8', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1342, 35, '1', '3', '5', '8', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1343, 35, '5', '7', '8', '3', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1344, 35, '7', '1', '5', '8', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1345, 35, '5', '7', '3', '1', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1346, 35, '1', '5', '7', '8', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1347, 35, '7', '3', '8', '1', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1348, 35, '5', '7', '8', '3', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1349, 35, '3', '7', '5', '1', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1350, 35, '5', '3', '7', '1', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1351, 35, '7', '8', '3', '1', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1352, 35, '8', '1', '7', '5', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1353, 35, '8', '3', '5', '1', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1354, 35, '7', '1', '3', '8', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1355, 35, '8', '3', '5', '1', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1356, 35, '7', '5', '1', '3', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1357, 35, '7', '8', '5', '1', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1358, 35, '1', '3', '7', '8', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1359, 35, '3', '5', '8', '7', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1360, 36, '1', '7', '5', '4', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1361, 36, '1', '2', '5', '7', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1362, 36, '1', '5', '4', '7', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1363, 36, '4', '2', '7', '5', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1364, 36, '2', '1', '4', '7', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1365, 36, '4', '2', '5', '1', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1366, 36, '1', '4', '2', '7', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1367, 36, '2', '5', '7', '1', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1368, 36, '4', '2', '7', '5', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1369, 36, '5', '2', '4', '1', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1370, 36, '7', '4', '2', '5', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1371, 36, '5', '4', '1', '2', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1372, 36, '4', '1', '5', '7', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1373, 36, '5', '4', '1', '2', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1374, 36, '7', '2', '5', '1', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1375, 36, '4', '2', '1', '7', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1376, 36, '1', '2', '5', '4', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1377, 36, '5', '7', '4', '1', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1378, 36, '2', '4', '7', '5', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1379, 36, '5', '4', '1', '2', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1380, 36, '2', '4', '1', '5', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1381, 36, '5', '4', '7', '2', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1382, 36, '4', '5', '7', '2', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1383, 36, '2', '4', '7', '1', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1384, 36, '7', '4', '1', '5', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1385, 36, '5', '7', '2', '4', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1386, 36, '7', '5', '1', '4', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1387, 36, '2', '7', '5', '1', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1388, 36, '7', '4', '1', '2', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1389, 36, '2', '5', '4', '1', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1390, 36, '4', '5', '2', '1', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1391, 36, '2', '7', '5', '1', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1392, 36, '7', '1', '2', '4', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1393, 36, '7', '5', '4', '1', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1394, 36, '2', '1', '5', '7', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1395, 36, '7', '5', '4', '1', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1396, 36, '2', '4', '1', '5', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1397, 36, '2', '7', '4', '1', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1398, 36, '1', '5', '2', '7', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1399, 36, '5', '4', '7', '2', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1400, 36, '2', '7', '1', '4', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1401, 36, '1', '2', '4', '7', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1402, 36, '1', '7', '5', '2', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1403, 36, '7', '5', '4', '1', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1404, 36, '5', '2', '7', '1', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1405, 36, '2', '4', '7', '5', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1406, 36, '4', '2', '7', '1', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1407, 36, '7', '5', '1', '2', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1408, 36, '2', '4', '7', '5', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1409, 36, '5', '4', '1', '7', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1410, 37, '9', '8', '6', '0', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1411, 37, '0', '8', '3', '9', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1412, 37, '8', '0', '3', '9', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1413, 37, '9', '8', '3', '6', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1414, 37, '3', '8', '6', '0', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1415, 37, '0', '3', '9', '8', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1416, 37, '3', '0', '6', '8', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1417, 37, '9', '3', '0', '6', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1418, 37, '3', '8', '6', '9', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1419, 37, '9', '0', '8', '6', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1420, 37, '6', '3', '0', '8', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1421, 37, '6', '9', '0', '3', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1422, 37, '6', '0', '8', '3', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1423, 37, '8', '9', '3', '0', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1424, 37, '9', '6', '8', '3', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1425, 37, '8', '9', '0', '6', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1426, 37, '6', '8', '9', '3', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1427, 37, '9', '0', '3', '6', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1428, 37, '8', '9', '3', '0', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1429, 37, '0', '9', '8', '6', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1430, 37, '3', '8', '9', '0', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1431, 37, '0', '8', '6', '9', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1432, 37, '8', '6', '0', '3', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1433, 37, '0', '8', '6', '9', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1434, 37, '3', '9', '0', '6', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1435, 37, '8', '9', '6', '3', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1436, 37, '6', '9', '0', '8', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1437, 37, '0', '3', '8', '6', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1438, 37, '9', '8', '3', '0', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1439, 37, '0', '8', '6', '9', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1440, 37, '9', '3', '6', '8', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1441, 37, '6', '9', '8', '3', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1442, 37, '6', '3', '0', '9', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1443, 37, '3', '0', '8', '6', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1444, 37, '0', '9', '3', '6', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1445, 37, '9', '8', '3', '0', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1446, 37, '8', '9', '3', '6', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1447, 37, '3', '0', '6', '9', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1448, 37, '9', '8', '3', '0', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1449, 37, '0', '8', '6', '3', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1450, 37, '8', '0', '9', '6', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1451, 37, '9', '3', '0', '6', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1452, 37, '3', '6', '9', '8', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1453, 37, '3', '0', '8', '6', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1454, 37, '9', '6', '0', '3', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1455, 37, '3', '0', '8', '6', 'e', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1456, 37, '9', '8', '6', '0', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1457, 37, '9', '3', '8', '6', 'd', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1458, 37, '6', '0', '9', '3', 'a', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1459, 37, '0', '8', '3', '9', 'c', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1460, 22, 'ʨ', 'Ξ', 'Ϡ', 'Җ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1461, 22, 'Ϡ', 'ʨ', 'Җ', 'Ξ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1462, 22, 'Ϡ', 'Ξ', '҂', 'ʨ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1463, 22, 'Ξ', '҂', 'Җ', 'Ϡ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1464, 22, '҂', 'ʨ', 'Ξ', 'Ϡ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1465, 22, 'ʨ', 'Җ', 'Ξ', '҂', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1466, 22, 'Җ', 'ʨ', 'Ξ', 'Ϡ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1467, 22, 'Ξ', '҂', 'Ϡ', 'ʨ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1468, 22, 'ʨ', 'Җ', 'Ξ', '҂', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1469, 22, '҂', 'Җ', 'Ϡ', 'Ξ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1470, 22, 'Җ', '҂', 'ʨ', 'Ϡ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1471, 22, 'ʨ', 'Ξ', '҂', 'Ϡ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1472, 22, 'Ξ', 'Ϡ', 'ʨ', 'Җ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1473, 22, 'Ξ', '҂', 'Җ', 'Ϡ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1474, 22, 'ʨ', 'Ϡ', '҂', 'Ξ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1475, 22, 'Ξ', '҂', 'Җ', 'Ϡ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1476, 22, 'ʨ', 'Җ', 'Ϡ', '҂', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1477, 22, 'ʨ', 'Ξ', 'Җ', 'Ϡ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1478, 22, 'Ϡ', '҂', 'ʨ', 'Ξ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1479, 22, '҂', 'Җ', 'Ξ', 'ʨ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1480, 22, 'Ξ', 'Җ', 'ʨ', '҂', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1481, 22, '҂', 'Җ', 'Ϡ', 'ʨ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1482, 22, 'Җ', 'Ϡ', '҂', 'Ξ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1483, 22, '҂', 'Җ', 'Ϡ', 'ʨ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1484, 22, 'Ξ', 'ʨ', '҂', 'Ϡ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1485, 22, 'Җ', 'ʨ', 'Ϡ', 'Ξ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1486, 22, 'Ϡ', 'ʨ', '҂', 'Җ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1487, 22, '҂', 'Ξ', 'Җ', 'Ϡ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1488, 22, 'ʨ', 'Җ', 'Ξ', '҂', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1489, 22, '҂', 'Җ', 'Ϡ', 'ʨ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1490, 22, 'ʨ', 'Җ', 'Ϡ', '҂', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1491, 22, '҂', 'Җ', 'Ξ', 'ʨ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1492, 22, 'Җ', '҂', 'Ξ', 'ʨ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1493, 22, 'ʨ', 'Җ', 'Ξ', 'Ϡ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1494, 22, 'Ξ', 'Җ', 'Ϡ', '҂', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1495, 22, '҂', 'Ξ', 'ʨ', 'Җ', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1496, 22, 'Ξ', '҂', 'Ϡ', 'Җ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1497, 22, 'ʨ', 'Ξ', '҂', 'Ϡ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1498, 22, 'Ξ', 'Җ', 'Ϡ', 'ʨ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1499, 22, 'ʨ', '҂', 'Җ', 'Ϡ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1500, 22, 'Ϡ', 'Ξ', '҂', 'Җ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1501, 22, 'Ϡ', 'ʨ', '҂', 'Ξ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1502, 22, 'Ϡ', '҂', 'Җ', 'Ξ', 'a\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1503, 22, 'Җ', 'ʨ', 'Ξ', '҂', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1504, 22, 'ʨ', 'Ϡ', 'Җ', 'Ξ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1505, 22, 'Җ', 'ʨ', '҂', 'Ϡ', 'b\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1506, 22, 'Ϡ', 'Җ', 'ʨ', 'Ξ', 'e\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1507, 22, 'ʨ', '҂', 'Ξ', 'Ϡ', 'd\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1508, 22, 'Җ', 'ʨ', 'Ξ', '҂', 'c\r', '2022-11-20 18:00:00', '2022-11-20 18:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1509, 22, '҂', 'ʨ', 'Җ', 'Ϡ', 'b', '2022-11-20 18:00:00', '2022-11-20 18:00:00');

-- ----------------------------
-- Table structure for pengguna
-- ----------------------------
DROP TABLE IF EXISTS `pengguna`;
CREATE TABLE `pengguna`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kata_sandi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `no_peserta`(`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pengguna
-- ----------------------------
INSERT INTO `pengguna` VALUES (1, 'Administrator', 'admin', '$2y$10$cB2xms0LhCkXk7y64aNF/OWn6ZXy0b1IP.eTl2IiKDCq2vArw6VJi', NULL, '2022-08-31 18:00:00', '2022-12-09 13:21:28');

-- ----------------------------
-- Table structure for petunjuk
-- ----------------------------
DROP TABLE IF EXISTS `petunjuk`;
CREATE TABLE `petunjuk`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `materi` int(11) NULL DEFAULT NULL,
  `isi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `operator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `materi`(`materi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of petunjuk
-- ----------------------------
INSERT INTO `petunjuk` VALUES (1, 1, '<p><strong>PETUNJUK PENGERJAAN&nbsp;</strong></p><p><strong>&nbsp;</strong>Sebelum mengerjakan tes, bacalah petunjuk pengerjaan tes ini dengan saksama.</p><p>Anda diminta untuk membaca setiap <strong>Soal</strong> yang ada, lalu pilih satu jawab dari lima pilihan jawaban yang menurut Anda paling benar. Adapun petunjuk untuk mengerjakan soal berpedoman pada beberapa tipe soal yang dicontohkan berikut ini ;</p><figure class=\"table\"><table><tbody><tr><td><strong>Contoh&nbsp; 1.</strong></td><td><p>Mudah&nbsp; =&nbsp; ……..............&nbsp;</p><p>a) Gampang&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;b) Buruk&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;c) Sulit&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;d) Sedih&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;e) Jelek</p></td></tr></tbody></table></figure><p>Pada tipe soal ini Anda diminta untuk mencari satu kata dari pilihan jawaban yang <strong>mempunyai arti sama&nbsp;</strong>atau <strong>yang paling dekat dengan arti kata soal</strong>. Pada contoh soal diatas terdapat kata <i>”Mudah”</i> dan pilihan jawaban yang memiliki arti sama dengan kata mudah adalah kata ”<i>Gampang</i>”&nbsp;maka klik huruf&nbsp; <strong>a</strong>.</p><figure class=\"image\"><img src=\"https://admin.pintarpsi.com/media/image_1666270411.png\"></figure><figure class=\"table\"><table><tbody><tr><td><strong>Contoh 2.</strong></td><td><p>&nbsp; &nbsp; &nbsp;Keras&nbsp; X&nbsp; &nbsp;……..............</p><p>&nbsp; &nbsp; &nbsp;a) Batu&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; b) Lembut&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; c) Licin&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;d) Lemas&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; e) Kaku</p></td></tr></tbody></table></figure><p>Pada tipe soal ini Anda diminta untuk mencari satu kata dari pilihan jawaban yang <strong>mempunyai arti berlawanan&nbsp;</strong>atau <strong>yang paling jauh dengan arti kata soal</strong>. Pada contoh soal diatas terdapat kata \"<i>Keras”</i> dan pilihan jawaban yang memiliki arti berlawanan dengan kata keras adalah kata ”<i>Lembut</i>”,&nbsp;maka klik huruf&nbsp; <strong>b</strong>.</p><figure class=\"image\"><img src=\"https://admin.pintarpsi.com/media/image_1666270419.png\"></figure><figure class=\"table\"><table><tbody><tr><td><strong>Contoh 3.</strong></td><td><p>Basah : Kering&nbsp; &nbsp;= ………&nbsp; :&nbsp; ……….</p><p>a)Baik, Buruk&nbsp; &nbsp; &nbsp;b)Basi, Busuk&nbsp; &nbsp;c)Bagus, Indah&nbsp; &nbsp;d)Tipis, Rentan&nbsp; &nbsp;e)Halus, Lembut</p></td></tr></tbody></table></figure><p>Pada tipe soal ini Anda akan menemui <strong>pasangan kata yang memiliki hubungan</strong>, dan Anda diminta untuk <strong>mencari jawaban pasangan kata yang memiliki hubungan yang sama dengan pasangan kata pada soal</strong>. Pada contoh diatas, hubungan dari kata ”<i>Basah”</i> dan <i>”Kering”</i> adalah lawan katanya, maka dari pilihan jawaban yang memiliki hubungan lawan kata adalah <i>”Baik”&nbsp;</i>dan<i> ”Buruk”.</i> Sesuai dengan pilihan jawaban, maka klik&nbsp;huruf&nbsp; <strong>a</strong>.</p><figure class=\"image\"><img src=\"https://admin.pintarpsi.com/media/image_1666270427.png\"></figure><figure class=\"table\"><table><tbody><tr><td><strong>Contoh 4.</strong></td><td><p>Semua pelamar kerja adalah lulusan S1 .</p><p>Sarjana pasti datang dengan membawa ijazahnya.</p><p>Maka kesimpulan yang dapat ditarik dari kedua kalimat diatas adalah .........</p><p>a) Ada pelamar kerja yang berijazah SMA&nbsp; &nbsp; &nbsp;</p><p>b) Semua pelamar membawa ijazah S1.</p><p>c) Semua pelamar tidak diharuskan membawa ijazah.</p><p>d) Pelamar kerja minimal membawa ijazahnya.&nbsp;</p><p>e) Tidak ada kesimpulan</p></td></tr></tbody></table></figure><p>Pada tipe soal ini, terdapat dua buah kalimat. Tugas Anda adalah <strong>mencari kesimpulan yang paling tepat dari kedua kalimat tersebut</strong>. Pada contoh soal diatas maka jawaban yang benar adalah ”Semua pelamar membawa ijazah S1”, sehingga&nbsp;klik huruf&nbsp; <strong>b</strong>.</p><figure class=\"image\"><img src=\"https://admin.pintarpsi.com/media/image_1666270439.png\"></figure><figure class=\"table\"><table><tbody><tr><td><strong>Contoh 5.</strong></td><td><p>3 x 5 - 2 = ……</p><p>a) 10&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; b) 11&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;c) 12&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; d) 13&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;e) 15</p></td></tr></tbody></table></figure><p>Pada tipe soal ini Anda akan menemui <strong>perhitungan matematika sederhana</strong>. Anda diminta untuk <strong>mencari angka yang tepat</strong> dari pilihan jawaban untuk <strong>melengkapi perhitungan soal sehingga menjadi perhitungan yang benar</strong>. Pada contoh soal diatas, angka 13 adalah angka yang tepat dari hasil perhitungan matematika tersebut. Maka&nbsp;klik huruf&nbsp; <strong>d</strong>.</p><figure class=\"image\"><img src=\"https://admin.pintarpsi.com/media/image_1666270464.png\"></figure><figure class=\"table\"><table><tbody><tr><td><strong>Contoh 6.</strong></td><td><p>Bila Orin membeli sepasang sepatu seharga Rp.50.000,-, berapakah yang harus Orin bayarkan jika ia membeli 3 pasang sepatu?</p><p>a)Rp.50.000,-&nbsp; &nbsp; &nbsp;b)Rp.75.000,-&nbsp; &nbsp;c)Rp.100.000,-&nbsp; &nbsp; d)Rp.120.000,-&nbsp; &nbsp; e)Rp.150.000,-</p></td></tr></tbody></table></figure><p>Pada tipe soal ini Anda akan menemui <strong>soal cerita matematika sederhana</strong>, dan Anda diminta untuk <strong>mencari jawaban yang benar dari perhitungan soal tersebut</strong>. Pada contoh soal cerita diatas, maka perhitungannya adalah Rp. 50.000,- x 3 pasang = Rp. 150.000,-. Sesuai dengan pilihan jawaban, maka klik huruf&nbsp;<strong>e</strong>.</p><figure class=\"image\"><img src=\"https://admin.pintarpsi.com/media/image_1666270471.png\"></figure><figure class=\"table\"><table><tbody><tr><td><strong>Contoh 7.</strong></td><td><p><img src=\"https://admin.pintarpsi.com/media/image_1666270478.png\"></p><p>a) 6, 8&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;b) 7, 9&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;c) 6, 10&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; d) 7, 8&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; e) 6, 9</p></td></tr></tbody></table></figure><p>Pada tipe soal ini, terdapat sebuah gambar deret angka dan tugas anda adalah <strong>melengkapi kotak X dan Y tersebut dengan angka yang tepat sesuai dengan pola yang ada</strong>.&nbsp;</p><p><strong>Pada tipe gambar ini dapat berisi jenis deret angka, huruf maupun kombinasi diantara keduanya dengan tugas melengkapi kotak X dan Y maupun kotak titik titik untuk diisi dengan jawaban yang tepat.</strong></p><p>Pada contoh soal diatas pola deret angka atas (kotak X) antara satu angka dengan lainnya adalah +1, dan pada pola deret angka bawah (kotak Y) adalah +2, maka jawaban yang tepat untuk mengisi kotak X dan Y berturut -turut adalah 6, 12. Oleh karena itu&nbsp;klik huruf&nbsp; <strong>c</strong>.</p><figure class=\"image\"><img src=\"https://admin.pintarpsi.com/media/image_1666270503.png\"></figure><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td><p><strong>Contoh 8.</strong></p><p>&nbsp;</p></td><td><img src=\"https://admin.pintarpsi.com/media/image_1666270539.png\"></td></tr></tbody></table></figure><p>Pada tipe soal ini, terdapat sebuah pola gambar dimana pola gambar kiri dan kanan memiliki persamaan pola pengerjaannya. Tugas anda adalah <strong>melengkapi kotak tanda tanya tersebut dengan gambar yang tepat sehingga menjadi pola yang tepat</strong>.&nbsp;</p><p><strong>Pada tipe gambar ini dapat berisi jenis pola gambar maupun pola angka.</strong></p><p>Pada contoh soal diatas pola gambar kiri adalah gambar dengan jumlah bertambah 1 dengan bentuk yang sama, maka jawaban yang tepat untuk mengisi kotak tanda tanya tersebut adalah dengan bentuk yang sama dan jumlah berambah satu (segitiga berjumlah 4). Oleh karena itu&nbsp;maka klik huruf&nbsp; <strong>c</strong>.</p><figure class=\"image\"><img src=\"https://admin.pintarpsi.com/media/image_1666270515.png\"></figure><p><strong>Anda dapat menjawab dengan cara tidak berurutan nomor soal dan anda dapat kembali ke nomor soal yang sudah anda kerjakan.</strong></p><p><strong>Apabila Anda telah selesai, periksalah kembali jawaban Anda.&nbsp;</strong></p><p><strong>SELAMAT MENGERJAKAN</strong></p>', NULL, '2022-10-20 06:56:43', '2022-12-04 11:14:34');
INSERT INTO `petunjuk` VALUES (2, 2, '<p><strong>PETUNJUK MENJAWAB</strong></p><p>Bacalah&nbsp;petunjuk cara menjawab&nbsp;dengan&nbsp;saksama.</p><p>Pada&nbsp;tes&nbsp;ini&nbsp;anda&nbsp;akan&nbsp;dihadapkan dengan beberapa persoalan/pernyataan<strong>.&nbsp;</strong>Anda disarankan&nbsp;membaca&nbsp;pernyataan&nbsp;dalam&nbsp;setiap&nbsp;soal dan&nbsp;menjawabnya&nbsp;dengan&nbsp;segera,&nbsp;secara&nbsp;spontan&nbsp;dan&nbsp;jujur&nbsp;sesuai&nbsp;dengan&nbsp;apa&nbsp;yang&nbsp;anda&nbsp;anggap&nbsp;paling&nbsp;sesuai&nbsp;dengan diri anda.&nbsp;</p><p><strong>Berikut adalah cara&nbsp;menjawab soal</strong>:</p><p><i>Klik <strong>A </strong>bila&nbsp;anda&nbsp;merasa pernyataan&nbsp;tersebut&nbsp;<strong>SANGAT TIDAK SESUAI&nbsp;</strong>dengan&nbsp;diri anda.</i></p><p><i>Klik <strong>B </strong>bila&nbsp;anda&nbsp;merasa pernyataan&nbsp;tersebut&nbsp;<strong>TIDAK SESUAI&nbsp;</strong>dengan&nbsp;diri anda.</i></p><p><i>Klik <strong>C&nbsp;</strong>bila&nbsp;anda&nbsp;merasa pernyataan&nbsp;tersebut&nbsp;<strong>SESUAI&nbsp;</strong>dengan diri anda.</i></p><p><i>Klik <strong>D&nbsp;</strong>bila&nbsp;anda&nbsp;merasa pernyataan&nbsp;tersebut&nbsp;<strong>SANGAT SESUAI&nbsp;</strong>dengan&nbsp;diri anda.</i></p><p><strong>CONTOH :</strong></p><figure class=\"table\"><table><tbody><tr><td>&nbsp;</td><td><strong>NO</strong></td><td>&nbsp;</td><td><strong>PERNYATAAN</strong></td><td>&nbsp;</td></tr><tr><td colspan=\"5\">1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dengan&nbsp;kemampuan&nbsp;yang&nbsp;saya&nbsp;miliki,&nbsp;saya&nbsp;turut&nbsp;serta&nbsp;membantu&nbsp;pemerintah&nbsp;dalam&nbsp;penanganan pandemi Covid-19&nbsp;di wilayah&nbsp;saya.</td></tr></tbody></table></figure><p>Jika&nbsp;anda&nbsp;merasa&nbsp;bahwa&nbsp;<strong>Pernyataan&nbsp;</strong>dalam&nbsp;soal&nbsp;tersebut&nbsp;<strong>SESUAI&nbsp;</strong>dengan&nbsp;diri&nbsp;anda,&nbsp;maka&nbsp;klik&nbsp;<strong>jawaban&nbsp;C </strong>dan otomatis jawaban akan tersimpan dan tidak bisa dirubah serta otomatis akan tampil pernyataan nomor berikujtnya. Anda tidak bisa mengerjakan nomor berikutnya sebelum anda menjawab.</p><p><strong>Anda harus menjawab nomor soal secara berurutan dan anda tidak dapat kembali mengganti jawaban yang sudah anda jawab.</strong></p><p><strong>“Selamat&nbsp;Bekerja”</strong></p>', NULL, '2022-10-20 07:02:08', '2022-12-04 11:15:47');
INSERT INTO `petunjuk` VALUES (3, 3, '<p>PETUNJUK PENGERJAAN</p><ul><li>&nbsp;SUBTES INI TERDIRI DARI 10 KOLOM DENGAN MASING-MASING KOLOM DIBERIKAN WAKTU 1 MENIT UNTUK MENJAWAB.</li><li>TUGAS ANDA ADALAH MENCARI ANGKA/HURUF/SIMBOL YANG HILANG/TIDAK ADA PADA PERSOALAN PADA PILIHAN JAWABAN YANG ADA.&nbsp;</li><li>CARA MENJAWABNYA, DENGAN MENEKAN PILIHAN JAWABAN YG DIANGGAP BENAR DAN AKAN LANGSUNG BERPINDAH KE NOMOR SOAL BERIKUTNYA.&nbsp;</li><li>PADA SUBTES INI DIBUTUHKAN KECEPATAN DAN KECERMATAN DALAM MENJAWAB.&nbsp;</li><li>ADA INDIKATOR WAKTU DAN KOLOM DI LAYAR MONITOR MASING-MASING PESERTA</li></ul>', NULL, '2022-10-20 07:02:49', '2022-10-20 07:02:54');

-- ----------------------------
-- Table structure for ruang_kerja
-- ----------------------------
DROP TABLE IF EXISTS `ruang_kerja`;
CREATE TABLE `ruang_kerja`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT ' ',
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `perulangan` tinyint(4) NULL DEFAULT NULL,
  `materi_satu_id` bigint(20) NULL DEFAULT NULL,
  `materi_dua_id` bigint(20) NULL DEFAULT NULL,
  `materi_tiga_id` bigint(20) NULL DEFAULT NULL,
  `waktu_materi_satu` int(11) NULL DEFAULT NULL,
  `waktu_materi_dua` int(11) NULL DEFAULT NULL,
  `waktu_materi_tiga` int(11) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `materi_dua_id`(`materi_dua_id`) USING BTREE,
  INDEX `materi_tiga_id`(`materi_tiga_id`) USING BTREE,
  INDEX `ruang_kerja_ibfk_1`(`materi_satu_id`) USING BTREE,
  CONSTRAINT `ruang_kerja_ibfk_1` FOREIGN KEY (`materi_satu_id`) REFERENCES `materi_satu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ruang_kerja_ibfk_2` FOREIGN KEY (`materi_dua_id`) REFERENCES `materi_dua` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ruang_kerja_ibfk_3` FOREIGN KEY (`materi_tiga_id`) REFERENCES `materi_tiga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 80 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ruang_kerja
-- ----------------------------

-- ----------------------------
-- Table structure for ruang_kerja_materi_dua
-- ----------------------------
DROP TABLE IF EXISTS `ruang_kerja_materi_dua`;
CREATE TABLE `ruang_kerja_materi_dua`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ruang_kerja_id` bigint(20) NOT NULL,
  `aspek` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `soal` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `kunci` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ruang_kerja_id`(`ruang_kerja_id`) USING BTREE,
  CONSTRAINT `ruang_kerja_materi_dua_ibfk_1` FOREIGN KEY (`ruang_kerja_id`) REFERENCES `ruang_kerja` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1801 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ruang_kerja_materi_dua
-- ----------------------------

-- ----------------------------
-- Table structure for ruang_kerja_materi_satu
-- ----------------------------
DROP TABLE IF EXISTS `ruang_kerja_materi_satu`;
CREATE TABLE `ruang_kerja_materi_satu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ruang_kerja_id` bigint(20) NULL DEFAULT NULL,
  `aspek` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `soal` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `kunci` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `materi_satu_id`(`ruang_kerja_id`) USING BTREE,
  CONSTRAINT `ruang_kerja_materi_satu_ibfk_1` FOREIGN KEY (`ruang_kerja_id`) REFERENCES `ruang_kerja` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1027 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ruang_kerja_materi_satu
-- ----------------------------

-- ----------------------------
-- Table structure for ruang_kerja_materi_tiga
-- ----------------------------
DROP TABLE IF EXISTS `ruang_kerja_materi_tiga`;
CREATE TABLE `ruang_kerja_materi_tiga`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ruang_kerja_id` bigint(20) NOT NULL,
  `kolom` tinyint(4) NULL DEFAULT NULL,
  `soal` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `a` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `b` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `c` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `d` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `kunci` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ruang_kerja_id`(`ruang_kerja_id`) USING BTREE,
  CONSTRAINT `ruang_kerja_materi_tiga_ibfk_1` FOREIGN KEY (`ruang_kerja_id`) REFERENCES `ruang_kerja` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 9053 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ruang_kerja_materi_tiga
-- ----------------------------

-- ----------------------------
-- Table structure for ruang_kerja_materi_tiga_detail
-- ----------------------------
DROP TABLE IF EXISTS `ruang_kerja_materi_tiga_detail`;
CREATE TABLE `ruang_kerja_materi_tiga_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ruang_kerja_materi_tiga_id` bigint(20) NOT NULL,
  `a` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `b` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `c` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `d` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kunci` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `materi_tiga_id`(`ruang_kerja_materi_tiga_id`) USING BTREE,
  CONSTRAINT `ruang_kerja_materi_tiga_detail_ibfk_1` FOREIGN KEY (`ruang_kerja_materi_tiga_id`) REFERENCES `ruang_kerja_materi_tiga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2501 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ruang_kerja_materi_tiga_detail
-- ----------------------------
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2001, 43, 'R', 'K', 'S', 'T', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2002, 43, 'Z', 'R', 'S', 'K', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2003, 43, 'K', 'R', 'Z', 'T', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2004, 43, 'Z', 'K', 'R', 'T', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2005, 43, 'T', 'R', 'Z', 'S', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2006, 43, 'K', 'Z', 'S', 'R', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2007, 43, 'T', 'K', 'R', 'S', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2008, 43, 'K', 'Z', 'S', 'R', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2009, 43, 'R', 'S', 'T', 'Z', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2010, 43, 'T', 'R', 'K', 'S', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2011, 43, 'T', 'S', 'K', 'R', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2012, 43, 'S', 'K', 'Z', 'T', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2013, 43, 'K', 'R', 'S', 'T', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2014, 43, 'R', 'Z', 'S', 'K', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2015, 43, 'Z', 'R', 'S', 'T', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2016, 43, 'T', 'K', 'Z', 'S', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2017, 43, 'Z', 'R', 'S', 'K', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2018, 43, 'R', 'T', 'Z', 'S', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2019, 43, 'Z', 'R', 'K', 'T', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2020, 43, 'T', 'Z', 'R', 'S', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2021, 43, 'K', 'Z', 'T', 'R', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2022, 43, 'S', 'Z', 'R', 'K', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2023, 43, 'K', 'Z', 'T', 'R', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2024, 43, 'Z', 'T', 'K', 'S', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2025, 43, 'K', 'Z', 'T', 'R', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2026, 43, 'S', 'R', 'K', 'T', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2027, 43, 'Z', 'R', 'T', 'S', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2028, 43, 'T', 'R', 'K', 'Z', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2029, 43, 'K', 'S', 'Z', 'T', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2030, 43, 'R', 'Z', 'T', 'K', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2031, 43, 'Z', 'K', 'S', 'R', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2032, 43, 'R', 'Z', 'S', 'T', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2033, 43, 'S', 'Z', 'T', 'K', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2034, 43, 'K', 'S', 'R', 'Z', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2035, 43, 'S', 'K', 'T', 'Z', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2036, 43, 'R', 'S', 'K', 'T', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2037, 43, 'S', 'Z', 'T', 'R', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2038, 43, 'R', 'K', 'Z', 'T', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2039, 43, 'T', 'S', 'K', 'Z', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2040, 43, 'R', 'Z', 'S', 'K', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2041, 43, 'S', 'K', 'T', 'R', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2042, 43, 'R', 'Z', 'S', 'K', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2043, 43, 'K', 'Z', 'T', 'S', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2044, 43, 'R', 'S', 'K', 'T', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2045, 43, 'S', 'T', 'R', 'Z', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2046, 43, 'S', 'K', 'Z', 'T', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2047, 43, 'R', 'T', 'K', 'S', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2048, 43, 'S', 'K', 'Z', 'T', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2049, 43, 'R', 'Z', 'T', 'K', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2050, 43, 'R', 'S', 'Z', 'T', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2051, 44, 'Y', 'P', 'C', 'O', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2052, 44, 'O', 'G', 'Y', 'P', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2053, 44, 'P', 'G', 'C', 'Y', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2054, 44, 'O', 'Y', 'P', 'C', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2055, 44, 'Y', 'C', 'O', 'G', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2056, 44, 'Y', 'P', 'G', 'C', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2057, 44, 'O', 'C', 'P', 'Y', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2058, 44, 'Y', 'P', 'G', 'C', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2059, 44, 'O', 'G', 'C', 'P', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2060, 44, 'O', 'Y', 'G', 'C', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2061, 44, 'O', 'P', 'Y', 'C', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2062, 44, 'G', 'O', 'Y', 'P', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2063, 44, 'P', 'O', 'G', 'C', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2064, 44, 'G', 'P', 'O', 'C', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2065, 44, 'C', 'O', 'G', 'Y', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2066, 44, 'C', 'Y', 'P', 'O', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2067, 44, 'Y', 'P', 'G', 'C', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2068, 44, 'P', 'O', 'Y', 'C', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2069, 44, 'O', 'G', 'Y', 'P', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2070, 44, 'G', 'O', 'Y', 'C', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2071, 44, 'P', 'G', 'Y', 'O', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2072, 44, 'C', 'P', 'O', 'Y', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2073, 44, 'P', 'G', 'Y', 'O', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2074, 44, 'O', 'Y', 'C', 'G', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2075, 44, 'C', 'O', 'P', 'Y', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2076, 44, 'C', 'P', 'G', 'Y', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2077, 44, 'G', 'O', 'Y', 'P', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2078, 44, 'O', 'C', 'G', 'Y', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2079, 44, 'G', 'O', 'P', 'C', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2080, 44, 'C', 'G', 'O', 'Y', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2081, 44, 'P', 'G', 'C', 'O', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2082, 44, 'Y', 'G', 'O', 'P', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2083, 44, 'P', 'G', 'C', 'O', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2084, 44, 'G', 'C', 'P', 'Y', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2085, 44, 'P', 'G', 'C', 'O', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2086, 44, 'Y', 'O', 'P', 'C', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2087, 44, 'G', 'O', 'C', 'Y', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2088, 44, 'C', 'O', 'P', 'G', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2089, 44, 'P', 'Y', 'G', 'C', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2090, 44, 'O', 'G', 'C', 'P', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2091, 44, 'G', 'P', 'Y', 'O', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2092, 44, 'O', 'G', 'Y', 'C', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2093, 44, 'Y', 'G', 'C', 'P', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2094, 44, 'P', 'Y', 'O', 'G', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2095, 44, 'Y', 'P', 'C', 'G', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2096, 44, 'O', 'Y', 'P', 'C', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2097, 44, 'Y', 'G', 'C', 'O', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2098, 44, 'O', 'P', 'G', 'C', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2099, 44, 'C', 'Y', 'P', 'G', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2100, 44, 'O', 'G', 'Y', 'P', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2101, 45, 'A', 'X', 'B', 'I', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2102, 45, 'I', 'X', 'J', 'A', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2103, 45, 'X', 'I', 'J', 'A', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2104, 45, 'A', 'X', 'J', 'B', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2105, 45, 'J', 'X', 'B', 'I', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2106, 45, 'I', 'J', 'A', 'X', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2107, 45, 'J', 'I', 'B', 'X', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2108, 45, 'A', 'J', 'I', 'B', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2109, 45, 'J', 'X', 'B', 'A', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2110, 45, 'A', 'I', 'X', 'B', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2111, 45, 'J', 'X', 'A', 'I', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2112, 45, 'I', 'X', 'B', 'A', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2113, 45, 'X', 'B', 'I', 'J', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2114, 45, 'I', 'X', 'B', 'A', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2115, 45, 'J', 'A', 'I', 'B', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2116, 45, 'X', 'A', 'B', 'J', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2117, 45, 'B', 'A', 'I', 'X', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2118, 45, 'I', 'J', 'X', 'B', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2119, 45, 'A', 'X', 'J', 'I', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2120, 45, 'I', 'X', 'B', 'A', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2121, 45, 'A', 'J', 'B', 'X', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2122, 45, 'B', 'A', 'X', 'J', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2123, 45, 'B', 'J', 'I', 'A', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2124, 45, 'J', 'I', 'X', 'B', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2125, 45, 'I', 'A', 'J', 'B', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2126, 45, 'A', 'X', 'J', 'I', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2127, 45, 'X', 'A', 'J', 'B', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2128, 45, 'J', 'I', 'B', 'A', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2129, 45, 'A', 'X', 'J', 'I', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2130, 45, 'I', 'X', 'B', 'J', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2131, 45, 'B', 'J', 'I', 'X', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2132, 45, 'B', 'A', 'I', 'J', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2133, 45, 'B', 'I', 'X', 'J', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2134, 45, 'X', 'A', 'J', 'I', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2135, 45, 'A', 'B', 'X', 'J', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2136, 45, 'X', 'A', 'I', 'B', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2137, 45, 'B', 'X', 'A', 'J', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2138, 45, 'A', 'I', 'J', 'B', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2139, 45, 'X', 'A', 'J', 'I', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2140, 45, 'I', 'A', 'X', 'B', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2141, 45, 'X', 'I', 'A', 'B', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2142, 45, 'A', 'J', 'I', 'B', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2143, 45, 'J', 'B', 'A', 'X', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2144, 45, 'J', 'I', 'X', 'B', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2145, 45, 'A', 'B', 'I', 'J', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2146, 45, 'J', 'I', 'X', 'B', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2147, 45, 'A', 'X', 'B', 'I', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2148, 45, 'A', 'J', 'X', 'B', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2149, 45, 'B', 'I', 'A', 'J', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2150, 45, 'I', 'X', 'J', 'A', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2151, 46, 'F', 'E', 'Q', 'L', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2152, 46, 'F', 'H', 'Q', 'E', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2153, 46, 'F', 'Q', 'L', 'E', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2154, 46, 'L', 'H', 'E', 'Q', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2155, 46, 'H', 'F', 'L', 'E', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2156, 46, 'L', 'H', 'Q', 'F', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2157, 46, 'F', 'L', 'H', 'E', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2158, 46, 'H', 'Q', 'E', 'F', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2159, 46, 'L', 'H', 'E', 'Q', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2160, 46, 'Q', 'H', 'L', 'F', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2161, 46, 'E', 'L', 'H', 'Q', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2162, 46, 'Q', 'L', 'F', 'H', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2163, 46, 'L', 'F', 'Q', 'E', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2164, 46, 'Q', 'L', 'F', 'H', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2165, 46, 'E', 'H', 'Q', 'F', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2166, 46, 'L', 'H', 'F', 'E', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2167, 46, 'F', 'H', 'Q', 'L', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2168, 46, 'Q', 'E', 'L', 'F', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2169, 46, 'H', 'L', 'E', 'Q', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2170, 46, 'Q', 'L', 'F', 'H', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2171, 46, 'H', 'L', 'F', 'Q', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2172, 46, 'Q', 'L', 'E', 'H', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2173, 46, 'L', 'Q', 'E', 'H', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2174, 46, 'H', 'L', 'E', 'F', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2175, 46, 'E', 'L', 'F', 'Q', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2176, 46, 'Q', 'E', 'H', 'L', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2177, 46, 'E', 'Q', 'F', 'L', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2178, 46, 'H', 'E', 'Q', 'F', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2179, 46, 'E', 'L', 'F', 'H', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2180, 46, 'H', 'Q', 'L', 'F', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2181, 46, 'L', 'Q', 'H', 'F', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2182, 46, 'H', 'E', 'Q', 'F', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2183, 46, 'E', 'F', 'H', 'L', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2184, 46, 'E', 'Q', 'L', 'F', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2185, 46, 'H', 'F', 'Q', 'E', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2186, 46, 'E', 'Q', 'L', 'F', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2187, 46, 'H', 'L', 'F', 'Q', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2188, 46, 'H', 'E', 'L', 'F', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2189, 46, 'F', 'Q', 'H', 'E', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2190, 46, 'Q', 'L', 'E', 'H', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2191, 46, 'H', 'E', 'F', 'L', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2192, 46, 'F', 'H', 'L', 'E', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2193, 46, 'F', 'E', 'Q', 'H', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2194, 46, 'E', 'Q', 'L', 'F', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2195, 46, 'Q', 'H', 'E', 'F', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2196, 46, 'H', 'L', 'E', 'Q', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2197, 46, 'L', 'H', 'E', 'F', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2198, 46, 'E', 'Q', 'F', 'H', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2199, 46, 'H', 'L', 'E', 'Q', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2200, 46, 'Q', 'L', 'F', 'E', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2201, 47, 'U', 'V', 'M', 'W', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2202, 47, 'W', 'V', 'N', 'U', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2203, 47, 'V', 'W', 'N', 'U', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2204, 47, 'U', 'V', 'N', 'M', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2205, 47, 'N', 'V', 'M', 'W', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2206, 47, 'W', 'N', 'U', 'V', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2207, 47, 'N', 'W', 'M', 'V', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2208, 47, 'U', 'N', 'W', 'M', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2209, 47, 'N', 'V', 'M', 'U', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2210, 47, 'U', 'W', 'V', 'M', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2211, 47, 'M', 'N', 'W', 'V', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2212, 47, 'M', 'U', 'W', 'N', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2213, 47, 'M', 'W', 'V', 'N', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2214, 47, 'V', 'U', 'N', 'W', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2215, 47, 'U', 'M', 'V', 'N', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2216, 47, 'V', 'U', 'W', 'M', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2217, 47, 'M', 'V', 'U', 'N', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2218, 47, 'U', 'W', 'N', 'M', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2219, 47, 'V', 'U', 'N', 'W', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2220, 47, 'W', 'U', 'V', 'M', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2221, 47, 'N', 'V', 'U', 'W', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2222, 47, 'W', 'V', 'M', 'U', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2223, 47, 'V', 'M', 'W', 'N', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2224, 47, 'W', 'V', 'M', 'U', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2225, 47, 'N', 'U', 'W', 'M', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2226, 47, 'V', 'U', 'M', 'N', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2227, 47, 'M', 'U', 'W', 'V', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2228, 47, 'W', 'N', 'V', 'M', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2229, 47, 'U', 'V', 'N', 'W', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2230, 47, 'W', 'V', 'M', 'U', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2231, 47, 'U', 'N', 'M', 'V', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2232, 47, 'M', 'U', 'V', 'N', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2233, 47, 'M', 'N', 'W', 'U', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2234, 47, 'N', 'W', 'V', 'M', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2235, 47, 'W', 'U', 'N', 'M', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2236, 47, 'U', 'V', 'N', 'W', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2237, 47, 'V', 'U', 'N', 'M', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2238, 47, 'N', 'W', 'M', 'U', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2239, 47, 'U', 'V', 'N', 'W', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2240, 47, 'W', 'V', 'M', 'N', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2241, 47, 'V', 'W', 'U', 'M', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2242, 47, 'U', 'N', 'W', 'M', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2243, 47, 'N', 'M', 'U', 'V', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2244, 47, 'N', 'W', 'V', 'M', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2245, 47, 'U', 'M', 'W', 'N', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2246, 47, 'N', 'W', 'V', 'M', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2247, 47, 'U', 'V', 'M', 'W', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2248, 47, 'U', 'N', 'V', 'M', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2249, 47, 'M', 'W', 'U', 'N', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2250, 47, 'W', 'V', 'N', 'U', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2251, 48, 'S', 'K', 'Z', 'T', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2252, 48, 'R', 'T', 'K', 'S', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2253, 48, 'S', 'K', 'Z', 'T', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2254, 48, 'R', 'Z', 'T', 'K', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2255, 48, 'R', 'S', 'Z', 'T', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2256, 48, 'R', 'K', 'S', 'T', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2257, 48, 'Z', 'R', 'S', 'K', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2258, 48, 'K', 'R', 'Z', 'T', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2259, 48, 'Z', 'K', 'R', 'T', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2260, 48, 'T', 'R', 'Z', 'S', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2261, 48, 'S', 'K', 'T', 'R', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2262, 48, 'R', 'Z', 'S', 'K', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2263, 48, 'K', 'Z', 'T', 'S', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2264, 48, 'R', 'S', 'K', 'T', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2265, 48, 'S', 'T', 'R', 'Z', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2266, 48, 'T', 'S', 'K', 'R', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2267, 48, 'S', 'K', 'Z', 'T', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2268, 48, 'K', 'R', 'S', 'T', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2269, 48, 'R', 'Z', 'S', 'K', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2270, 48, 'Z', 'R', 'S', 'T', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2271, 48, 'Z', 'K', 'S', 'R', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2272, 48, 'R', 'Z', 'S', 'T', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2273, 48, 'S', 'Z', 'T', 'K', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2274, 48, 'K', 'S', 'R', 'Z', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2275, 48, 'S', 'K', 'T', 'Z', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2276, 48, 'K', 'Z', 'T', 'R', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2277, 48, 'S', 'Z', 'R', 'K', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2278, 48, 'K', 'Z', 'T', 'R', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2279, 48, 'Z', 'T', 'K', 'S', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2280, 48, 'K', 'Z', 'T', 'R', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2281, 48, 'R', 'S', 'K', 'T', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2282, 48, 'S', 'Z', 'T', 'R', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2283, 48, 'R', 'K', 'Z', 'T', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2284, 48, 'T', 'S', 'K', 'Z', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2285, 48, 'R', 'Z', 'S', 'K', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2286, 48, 'S', 'R', 'K', 'T', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2287, 48, 'Z', 'R', 'T', 'S', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2288, 48, 'T', 'R', 'K', 'Z', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2289, 48, 'K', 'S', 'Z', 'T', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2290, 48, 'R', 'Z', 'T', 'K', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2291, 48, 'T', 'K', 'Z', 'S', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2292, 48, 'Z', 'R', 'S', 'K', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2293, 48, 'R', 'T', 'Z', 'S', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2294, 48, 'Z', 'R', 'K', 'T', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2295, 48, 'T', 'Z', 'R', 'S', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2296, 48, 'K', 'Z', 'S', 'R', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2297, 48, 'T', 'K', 'R', 'S', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2298, 48, 'K', 'Z', 'S', 'R', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2299, 48, 'R', 'S', 'T', 'Z', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2300, 48, 'T', 'R', 'K', 'S', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2301, 49, 'G', 'P', 'Y', 'O', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2302, 49, 'O', 'G', 'Y', 'C', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2303, 49, 'Y', 'G', 'C', 'P', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2304, 49, 'P', 'Y', 'O', 'G', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2305, 49, 'Y', 'P', 'C', 'G', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2306, 49, 'O', 'Y', 'P', 'C', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2307, 49, 'Y', 'G', 'C', 'O', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2308, 49, 'O', 'P', 'G', 'C', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2309, 49, 'C', 'Y', 'P', 'G', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2310, 49, 'O', 'G', 'Y', 'P', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2311, 49, 'P', 'G', 'Y', 'O', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2312, 49, 'C', 'P', 'O', 'Y', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2313, 49, 'P', 'G', 'Y', 'O', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2314, 49, 'O', 'Y', 'C', 'G', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2315, 49, 'C', 'O', 'P', 'Y', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2316, 49, 'C', 'P', 'G', 'Y', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2317, 49, 'G', 'O', 'Y', 'P', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2318, 49, 'O', 'C', 'G', 'Y', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2319, 49, 'G', 'O', 'P', 'C', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2320, 49, 'C', 'G', 'O', 'Y', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2321, 49, 'C', 'Y', 'P', 'O', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2322, 49, 'Y', 'P', 'G', 'C', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2323, 49, 'P', 'O', 'Y', 'C', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2324, 49, 'O', 'G', 'Y', 'P', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2325, 49, 'G', 'O', 'Y', 'C', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2326, 49, 'Y', 'O', 'P', 'C', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2327, 49, 'G', 'O', 'C', 'Y', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2328, 49, 'C', 'O', 'P', 'G', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2329, 49, 'P', 'Y', 'G', 'C', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2330, 49, 'O', 'G', 'C', 'P', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2331, 49, 'Y', 'P', 'G', 'C', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2332, 49, 'O', 'C', 'P', 'Y', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2333, 49, 'Y', 'P', 'G', 'C', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2334, 49, 'O', 'G', 'C', 'P', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2335, 49, 'O', 'Y', 'G', 'C', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2336, 49, 'O', 'P', 'Y', 'C', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2337, 49, 'G', 'O', 'Y', 'P', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2338, 49, 'P', 'O', 'G', 'C', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2339, 49, 'G', 'P', 'O', 'C', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2340, 49, 'C', 'O', 'G', 'Y', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2341, 49, 'Y', 'P', 'C', 'O', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2342, 49, 'O', 'G', 'Y', 'P', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2343, 49, 'P', 'G', 'C', 'Y', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2344, 49, 'O', 'Y', 'P', 'C', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2345, 49, 'Y', 'C', 'O', 'G', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2346, 49, 'P', 'G', 'C', 'O', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2347, 49, 'Y', 'G', 'O', 'P', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2348, 49, 'P', 'G', 'C', 'O', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2349, 49, 'G', 'C', 'P', 'Y', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2350, 49, 'P', 'G', 'C', 'O', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2351, 50, 'B', 'J', 'I', 'X', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2352, 50, 'B', 'A', 'I', 'J', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2353, 50, 'B', 'I', 'X', 'J', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2354, 50, 'X', 'A', 'J', 'I', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2355, 50, 'A', 'B', 'X', 'J', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2356, 50, 'X', 'A', 'I', 'B', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2357, 50, 'B', 'X', 'A', 'J', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2358, 50, 'A', 'I', 'J', 'B', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2359, 50, 'X', 'A', 'J', 'I', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2360, 50, 'I', 'A', 'X', 'B', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2361, 50, 'A', 'J', 'B', 'X', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2362, 50, 'B', 'A', 'X', 'J', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2363, 50, 'B', 'J', 'I', 'A', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2364, 50, 'J', 'I', 'X', 'B', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2365, 50, 'I', 'A', 'J', 'B', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2366, 50, 'A', 'X', 'J', 'I', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2367, 50, 'X', 'A', 'J', 'B', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2368, 50, 'J', 'I', 'B', 'A', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2369, 50, 'A', 'X', 'J', 'I', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2370, 50, 'I', 'X', 'B', 'J', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2371, 50, 'X', 'I', 'A', 'B', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2372, 50, 'A', 'J', 'I', 'B', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2373, 50, 'J', 'B', 'A', 'X', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2374, 50, 'J', 'I', 'X', 'B', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2375, 50, 'A', 'B', 'I', 'J', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2376, 50, 'J', 'I', 'X', 'B', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2377, 50, 'A', 'X', 'B', 'I', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2378, 50, 'A', 'J', 'X', 'B', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2379, 50, 'B', 'I', 'A', 'J', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2380, 50, 'I', 'X', 'J', 'A', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2381, 50, 'A', 'X', 'B', 'I', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2382, 50, 'I', 'X', 'J', 'A', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2383, 50, 'X', 'I', 'J', 'A', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2384, 50, 'A', 'X', 'J', 'B', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2385, 50, 'J', 'X', 'B', 'I', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2386, 50, 'I', 'J', 'A', 'X', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2387, 50, 'J', 'I', 'B', 'X', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2388, 50, 'A', 'J', 'I', 'B', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2389, 50, 'J', 'X', 'B', 'A', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2390, 50, 'A', 'I', 'X', 'B', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2391, 50, 'J', 'X', 'A', 'I', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2392, 50, 'I', 'X', 'B', 'A', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2393, 50, 'X', 'B', 'I', 'J', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2394, 50, 'I', 'X', 'B', 'A', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2395, 50, 'J', 'A', 'I', 'B', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2396, 50, 'X', 'A', 'B', 'J', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2397, 50, 'B', 'A', 'I', 'X', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2398, 50, 'I', 'J', 'X', 'B', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2399, 50, 'A', 'X', 'J', 'I', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2400, 50, 'I', 'X', 'B', 'A', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2401, 51, 'H', 'L', 'F', 'Q', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2402, 51, 'Q', 'L', 'E', 'H', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2403, 51, 'L', 'Q', 'E', 'H', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2404, 51, 'H', 'L', 'E', 'F', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2405, 51, 'E', 'L', 'F', 'Q', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2406, 51, 'L', 'H', 'F', 'E', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2407, 51, 'F', 'H', 'Q', 'L', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2408, 51, 'Q', 'E', 'L', 'F', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2409, 51, 'H', 'L', 'E', 'Q', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2410, 51, 'Q', 'L', 'F', 'H', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2411, 51, 'Q', 'E', 'H', 'L', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2412, 51, 'E', 'Q', 'F', 'L', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2413, 51, 'H', 'E', 'Q', 'F', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2414, 51, 'E', 'L', 'F', 'H', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2415, 51, 'H', 'Q', 'L', 'F', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2416, 51, 'E', 'L', 'H', 'Q', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2417, 51, 'Q', 'L', 'F', 'H', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2418, 51, 'L', 'F', 'Q', 'E', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2419, 51, 'Q', 'L', 'F', 'H', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2420, 51, 'E', 'H', 'Q', 'F', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2421, 51, 'H', 'E', 'F', 'L', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2422, 51, 'F', 'H', 'L', 'E', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2423, 51, 'F', 'E', 'Q', 'H', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2424, 51, 'E', 'Q', 'L', 'F', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2425, 51, 'Q', 'H', 'E', 'F', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2426, 51, 'H', 'L', 'E', 'Q', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2427, 51, 'L', 'H', 'E', 'F', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2428, 51, 'E', 'Q', 'F', 'H', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2429, 51, 'H', 'L', 'E', 'Q', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2430, 51, 'Q', 'L', 'F', 'E', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2431, 51, 'F', 'E', 'Q', 'L', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2432, 51, 'F', 'H', 'Q', 'E', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2433, 51, 'F', 'Q', 'L', 'E', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2434, 51, 'L', 'H', 'E', 'Q', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2435, 51, 'H', 'F', 'L', 'E', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2436, 51, 'L', 'H', 'Q', 'F', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2437, 51, 'F', 'L', 'H', 'E', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2438, 51, 'H', 'Q', 'E', 'F', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2439, 51, 'L', 'H', 'E', 'Q', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2440, 51, 'Q', 'H', 'L', 'F', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2441, 51, 'L', 'Q', 'H', 'F', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2442, 51, 'H', 'E', 'Q', 'F', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2443, 51, 'E', 'F', 'H', 'L', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2444, 51, 'E', 'Q', 'L', 'F', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2445, 51, 'H', 'F', 'Q', 'E', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2446, 51, 'E', 'Q', 'L', 'F', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2447, 51, 'H', 'L', 'F', 'Q', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2448, 51, 'H', 'E', 'L', 'F', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2449, 51, 'F', 'Q', 'H', 'E', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2450, 51, 'Q', 'L', 'E', 'H', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2451, 52, 'U', 'N', 'M', 'V', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2452, 52, 'M', 'U', 'V', 'N', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2453, 52, 'M', 'N', 'W', 'U', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2454, 52, 'N', 'W', 'V', 'M', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2455, 52, 'W', 'U', 'N', 'M', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2456, 52, 'U', 'V', 'N', 'W', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2457, 52, 'V', 'U', 'N', 'M', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2458, 52, 'N', 'W', 'M', 'U', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2459, 52, 'U', 'V', 'N', 'W', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2460, 52, 'W', 'V', 'M', 'N', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2461, 52, 'N', 'V', 'U', 'W', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2462, 52, 'W', 'V', 'M', 'U', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2463, 52, 'V', 'M', 'W', 'N', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2464, 52, 'W', 'V', 'M', 'U', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2465, 52, 'N', 'U', 'W', 'M', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2466, 52, 'V', 'U', 'M', 'N', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2467, 52, 'M', 'U', 'W', 'V', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2468, 52, 'W', 'N', 'V', 'M', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2469, 52, 'U', 'V', 'N', 'W', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2470, 52, 'W', 'V', 'M', 'U', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2471, 52, 'V', 'W', 'U', 'M', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2472, 52, 'U', 'N', 'W', 'M', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2473, 52, 'N', 'M', 'U', 'V', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2474, 52, 'N', 'W', 'V', 'M', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2475, 52, 'U', 'M', 'W', 'N', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2476, 52, 'N', 'W', 'V', 'M', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2477, 52, 'U', 'V', 'M', 'W', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2478, 52, 'U', 'N', 'V', 'M', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2479, 52, 'M', 'W', 'U', 'N', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2480, 52, 'W', 'V', 'N', 'U', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2481, 52, 'U', 'V', 'M', 'W', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2482, 52, 'W', 'V', 'N', 'U', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2483, 52, 'V', 'W', 'N', 'U', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2484, 52, 'U', 'V', 'N', 'M', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2485, 52, 'N', 'V', 'M', 'W', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2486, 52, 'W', 'N', 'U', 'V', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2487, 52, 'N', 'W', 'M', 'V', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2488, 52, 'U', 'N', 'W', 'M', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2489, 52, 'N', 'V', 'M', 'U', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2490, 52, 'U', 'W', 'V', 'M', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2491, 52, 'M', 'N', 'W', 'V', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2492, 52, 'M', 'U', 'W', 'N', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2493, 52, 'M', 'W', 'V', 'N', 'e', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2494, 52, 'V', 'U', 'N', 'W', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2495, 52, 'U', 'M', 'V', 'N', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2496, 52, 'V', 'U', 'W', 'M', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2497, 52, 'M', 'V', 'U', 'N', 'd', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2498, 52, 'U', 'W', 'N', 'M', 'a', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2499, 52, 'V', 'U', 'N', 'W', 'c', '2022-11-23 11:43:04', '2022-11-23 11:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2500, 52, 'W', 'U', 'V', 'M', 'b', '2022-11-23 11:43:04', '2022-11-23 11:43:04');

-- ----------------------------
-- Table structure for ruang_kerja_peserta
-- ----------------------------
DROP TABLE IF EXISTS `ruang_kerja_peserta`;
CREATE TABLE `ruang_kerja_peserta`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ruang_kerja_id` bigint(20) NULL DEFAULT NULL,
  `nomor` bigint(20) NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kata_sandi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `kata_sandi_show` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `nomor`(`nomor`) USING BTREE,
  INDEX `ruang_kerja_id`(`ruang_kerja_id`) USING BTREE,
  CONSTRAINT `ruang_kerja_peserta_ibfk_1` FOREIGN KEY (`ruang_kerja_id`) REFERENCES `ruang_kerja` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2069 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ruang_kerja_peserta
-- ----------------------------

-- ----------------------------
-- Table structure for ruang_kerja_peserta_jawaban
-- ----------------------------
DROP TABLE IF EXISTS `ruang_kerja_peserta_jawaban`;
CREATE TABLE `ruang_kerja_peserta_jawaban`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ruang_kerja_peserta_id` bigint(20) NULL DEFAULT NULL,
  `jawaban` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ruang_kerja_materi_satu_id` bigint(20) NULL DEFAULT NULL,
  `ruang_kerja_materi_dua_id` bigint(20) NULL DEFAULT NULL,
  `ruang_kerja_materi_tiga_id` bigint(20) NULL DEFAULT NULL,
  `nilai` tinyint(4) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ruang_kerja_materi_satu_id`(`ruang_kerja_materi_satu_id`) USING BTREE,
  INDEX `ruang_kerja_materi_dua_id`(`ruang_kerja_materi_dua_id`) USING BTREE,
  INDEX `ruang_kerja_peserta_id`(`ruang_kerja_peserta_id`) USING BTREE,
  INDEX `ruang_kerja_materi_tiga_id`(`ruang_kerja_materi_tiga_id`) USING BTREE,
  CONSTRAINT `ruang_kerja_peserta_jawaban_ibfk_1` FOREIGN KEY (`ruang_kerja_materi_satu_id`) REFERENCES `ruang_kerja_materi_satu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ruang_kerja_peserta_jawaban_ibfk_2` FOREIGN KEY (`ruang_kerja_materi_dua_id`) REFERENCES `ruang_kerja_materi_dua` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ruang_kerja_peserta_jawaban_ibfk_4` FOREIGN KEY (`ruang_kerja_peserta_id`) REFERENCES `ruang_kerja_peserta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ruang_kerja_peserta_jawaban_ibfk_5` FOREIGN KEY (`ruang_kerja_materi_tiga_id`) REFERENCES `ruang_kerja_materi_tiga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 12119 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ruang_kerja_peserta_jawaban
-- ----------------------------

-- ----------------------------
-- Table structure for ruang_kerja_peserta_waktu
-- ----------------------------
DROP TABLE IF EXISTS `ruang_kerja_peserta_waktu`;
CREATE TABLE `ruang_kerja_peserta_waktu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ruang_kerja_peserta_id` bigint(20) NULL DEFAULT NULL,
  `waktu` int(11) NULL DEFAULT NULL,
  `materi` int(11) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ruang_kerja_peserta_id`(`ruang_kerja_peserta_id`) USING BTREE,
  CONSTRAINT `ruang_kerja_peserta_waktu_ibfk_1` FOREIGN KEY (`ruang_kerja_peserta_id`) REFERENCES `ruang_kerja_peserta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 21008 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ruang_kerja_peserta_waktu
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
