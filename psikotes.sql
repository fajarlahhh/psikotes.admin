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

 Date: 23/11/2022 15:48:22
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
INSERT INTO `materi_dua` VALUES (1, '2022-11-21 20:03:59', '2022-11-21 20:03:59');
INSERT INTO `materi_dua` VALUES (2, '2022-11-21 19:40:10', '2022-11-21 19:40:10');
INSERT INTO `materi_dua` VALUES (3, '2022-11-21 19:47:52', '2022-11-21 19:47:52');
INSERT INTO `materi_dua` VALUES (4, '2022-11-21 19:47:28', '2022-11-21 19:47:28');
INSERT INTO `materi_dua` VALUES (5, '2022-11-21 19:50:01', '2022-11-21 19:50:01');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1083 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of materi_dua_detail
-- ----------------------------
INSERT INTO `materi_dua_detail` VALUES (963, 1, 'Saat sedang bermain game online di handphone, saya merasa marah bila ada orang yang menanyakan sesuatu karena skor saya jadi hilang.', '-', 'STABILITAS EMOSI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (964, 1, 'Saya  pasti  menyumbang  korban  bencana  lebih  besar  jika  nama  saya  turut  dicatat  dan dipublikasikan di media.', '-', 'PROSOSIAL', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (965, 1, 'Dalam suatu acara sekolah, saya menunggu orang lain untuk lebih dahulu menyapa agar tidak dikatakan sok akrab.', '-', 'PENYESUAIAN DIRI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (966, 1, 'Saya hanya berani tampil ketika semua teman memberikan dorongan.', '-', 'KEPERCAYAAN DIRI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (967, 1, 'Saya terbiasa belajar pada waktu dini hari saat orang masih terlelap tidur.', '+', 'MOTIF BERPRESTASI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (968, 1, 'Saya menyiapkan diri untuk mendaftar Bintara Polri dengan sebaik-baiknya sejak awal masuk SMA', '+', 'PENGAMBILAN KEPUTUSAN', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (969, 1, 'Ketika ada kegiatan sekolah yang akan dilaksanakan pada hari libur, maka saya mengikuti seluruh kegiatan', '+', 'LOYALITAS', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (970, 1, 'Setiap orang memiliki target pribadi, sehingga rasanya tidak perlu mengurusi pekerjaan rekan satu tim.', '-', 'KERJASAMA', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (971, 1, 'Saat diajak oleh teman-teman sekelas untuk merayakan kelulusan, saya lebih memilih pulang mendahului meskipun dinilai tidak kompak.', '+', 'STABILITAS EMOSI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (972, 1, 'Saya tidak memberikan uang kepada pengemis yang badannya terlihat bugar karena saya anggap ia masih sanggup bekerja.', '-', 'PROSOSIAL', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (973, 1, 'Saya mudah akrab ketika bertemu dengan orang yang baru saya kenal.', '+', 'PENYESUAIAN DIRI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (974, 1, 'Banyak hal yang bisa saya banggakan di hadapan teman-teman.', '+', 'KEPERCAYAAN DIRI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (975, 1, 'Saya tidak bisa menunda pekerjaan, meskipun harus mengabaikan teman yang datang.', '+', 'MOTIF BERPRESTASI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (976, 1, 'Saya kurang yakin dengan berbagai informasi tentang pilihan-pilihan pekerjaan kedinasan dari brosur atau pamflet.', '-', 'PENGAMBILAN KEPUTUSAN', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (977, 1, 'Saya memberikan waktu lebih untuk mengerjakan tugas-tugas kelompok.', '+', 'LOYALITAS', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (978, 1, 'Jika  harus  memilih,  saya  akan  mengerjakan  tugas  sekolah  sendirian  daripada  harus melibatkan teman yang lain.', '+', 'KERJASAMA', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (979, 1, 'Ketika berada di suatu acara dengan banyak orang yang belum dikenal, saya merasa gelisah. ', '-', 'STABILITAS EMOSI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (980, 1, 'Saat terjadi kecelakaan di jalan, saya tidak perlu membantu lagi karena sudah banyak orang yang membantu.', '-', 'PROSOSIAL', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (981, 1, 'Saya sulit untuk menghafalkan jalan di tempat tinggal saya yang baru.', '-', 'PENYESUAIAN DIRI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (982, 1, 'Kegagalan yang sering saya hadapi cukup wajar bila membuat saya merasa pesimis.', '-', 'KEPERCAYAAN DIRI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (983, 1, 'Menurut saya, mengevaluasi diri akan sia-sia belaka karena pada hakekatnya pekerjaan yang ada hanyalah pengulangan dari pekerjaan sebelumnya.', '-', 'MOTIF BERPRESTASI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (984, 1, 'Beberapa pilihan pekerjaan yang ada saat ini sama-sama menarik bagi saya.', '-', 'PENGAMBILAN KEPUTUSAN', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (985, 1, ' Saya  tidak  suka  jika  waktu  istirahat  masih  digunakan  untuk  menyelesaikan  tugas-tugas kelompok', '-', 'LOYALITAS', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (986, 1, 'Ketua tim adalah orang yang paling pantas disalahkan ketika tujuan tim tidak tercapai.', '-', 'KERJASAMA', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (987, 1, 'Saya jengkel kepada teman yang pernah merebut sahabat saya saat di sekolah dulu.', '-', 'STABILITAS EMOSI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (988, 1, 'Banyak teman yang menilai saya dermawan karena saya mudah bila dimintai bantuan.', '+', 'PROSOSIAL', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (989, 1, 'Saya mengalami kesulitan tidur di komplek rumah yang baru karena tetangga saya cukup berisik.', '-', 'PENYESUAIAN DIRI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (990, 1, 'Rasanya malu kalau harus menyampaikan pendapat dalam forum rapat di awal waktu.', '-', 'KEPERCAYAAN DIRI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (991, 1, 'Buat apa mengerjakan tugas dengan maksimal apabila guru hanya melihat dari prosesnya bukan dari hasil.', '-', 'MOTIF BERPRESTASI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (992, 1, 'Saya tidak ragu berkonsultasi dengan banyak orang ketika harus memilih karir yang paling baik untuk masa depan saya.', '+', 'PENGAMBILAN KEPUTUSAN', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (993, 1, 'Saya bersedia mencukupi kekurangan apabila ada kebutuhan kelompok asal sesuai dengan kemampuan saya.', '-', 'LOYALITAS', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (994, 1, 'Begitu  tugas  saya  selesai,  saya  akan  meninggalkan  tim  yang  masih  bekerja  dengan pekerjaannya.', '-', 'KERJASAMA', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (995, 1, 'Saya merasa marah dan kesal ketika kalah dalam permainan online.', '-', 'STABILITAS EMOSI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (996, 1, 'Saya merasa senang apabila dapat membantu orang lain, meskipun orang tersebut bersikap buruk terhadap saya.', '+', 'PROSOSIAL', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (997, 1, 'Ketika berlibur bersama keluarga dan harus menginap di lingkungan baru, saya termasuk yang susah untuk tidur.', '-', 'PENYESUAIAN DIRI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (998, 1, 'Tidak masalah ketika saya diminta melakukan debat dengan sekolah lain.', '+', 'KEPERCAYAAN DIRI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (999, 1, 'Saya merasa sebagian besar pilihan yang saya buat berasal dari pengaruh orang tua saya. ', '-', 'MOTIF BERPRESTASI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1000, 1, 'Saya mengetahui dengan pasti risiko dari setiap keputusan yang saya ambil.', '+', 'PENGAMBILAN KEPUTUSAN', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1001, 1, 'Saya  keberatan  ketika  banyak  hal  yang  tidak  sesuai  antara  keinginan  pribadi  dengan keputusan kelompok.', '-', 'LOYALITAS', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1002, 1, 'Demi kemajuan tim, saya rela pendapat saya diabaikan.', '+', 'KERJASAMA', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1003, 1, 'Ketika ada teman yang mengajak berkelahi, maka saya menasehatinya', '+', 'STABILITAS EMOSI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1004, 1, 'Walau tidak dibayar saya akan ikut andil dalam tim yang bekerja untuk memadamkan api di hutan yang terbakar.', '+', 'PROSOSIAL', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1005, 1, 'Saya langsung memperkenalkan diri kepada orang-orang di lingkungan yang baru.', '+', 'PENYESUAIAN DIRI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1006, 1, 'Saya yakin dapat mengerjakan tugas-tugas yang menantang dan sulit walaupun sebagian besar teman sekelas menghindarinya.', '+', 'KEPERCAYAAN DIRI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1007, 1, 'Mempelajari metode baru dalam pelajaran hanya menghabiskan waktu.', '-', 'MOTIF BERPRESTASI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1008, 1, 'Setiap kali berbelanja, saya sulit memilih model pakaian yang akan saya beli.', '-', 'PENGAMBILAN KEPUTUSAN', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1009, 1, 'Saya akan tetap menjalankan keputusan kelompok meskipun tidak sesuai dengan prinsip diri saya.', '+', 'LOYALITAS', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1010, 1, 'Mengerjakan tugas secara bersama-sama justru akan menghambat selesainya pekerjaan. ', '-', 'KERJASAMA', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1011, 1, 'Saya mudah larut dalam keharuan ketika menonton film yang bertema kesedihan.', '-', 'STABILITAS EMOSI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1012, 1, 'Saya mengumpulkan sumbangan dari para donatur untuk dibagikan kepada orang lain yang berhak.', '-', 'PROSOSIAL', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1013, 1, 'Apabila saya tidak diterima menjadi anggota Polri, saya akan mencari pekerjaan lainnya.', '+', 'PENYESUAIAN DIRI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1014, 1, 'Lebih  baik  saya  tidak  berbicara  dihadapan  orang  banyak,  karena  saya  takut  melakukan kesalahan.', '-', 'KEPERCAYAAN DIRI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1015, 1, 'Saya merasa tidak semangat ketika tugas sekolah yang diberikan kepada saya terasa sulit. ', '-', 'MOTIF BERPRESTASI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1016, 1, 'Saya merasa sebagian besar keputusan yang saya ambil berasal dari pengaruh orang-orang terdekat saya.', '-', 'PENGAMBILAN KEPUTUSAN', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1017, 1, 'Selama tidak bersifat prinsip, saya mau dipersalahkan akibat kesalahan teman-teman sekelas. ', '+', 'LOYALITAS', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1018, 1, 'Ada kalanya saya tidak ingin diskusi saat menyelesaikan pekerjaan kelompok.', '-', 'KERJASAMA', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1019, 1, 'Saat tidak diterima di sekolah favorit yang saya dambakan, saya mampu menenangkan diri dengan baik.', '+', 'STABILITAS EMOSI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1020, 1, 'Sebagai ketua kelas, saya bertanya langsung kepada teman yang tidak masuk sekolah tentang alasannya agar lebih jelas.', '+', 'PROSOSIAL', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1021, 1, 'Saya hanya suka dengan kegiatan yang sudah biasa dilakukan.', '-', 'PENYESUAIAN DIRI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1022, 1, 'Saya senang mencoba dan mempelajari hal-hal baru.', '+', 'KEPERCAYAAN DIRI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1023, 1, 'Saya cenderung mengerjakan tugas sekolah melampui harapan dari orang tua dan guru. ', '+', 'MOTIF BERPRESTASI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1024, 1, 'Saya percaya dengan informasi di media massa tentang pilihan-pilihan pekerjaan dengan berbagai karakteristiknya.', '+', 'PENGAMBILAN KEPUTUSAN', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1025, 1, 'Saya akan tetap bersama dengan kelompok walaupun tugas saya sudah selesai.', '+', 'LOYALITAS', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1026, 1, 'Dalam sebuah kelompok kerja, setiap anggota berkewajiban memastikan tugas terselesaikan sesuai perintah.', '+', 'KERJASAMA', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1027, 1, 'Ketika menjelang ujian dimulai, saya beberapa kali ke kamar mandi karena merasakan sakit perut.', '-', 'STABILITAS EMOSI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1028, 1, 'Saya juga termasuk korban musibah kali ini, oleh karenanya tidak menjadi masalah bila tidak ikut memberikan bantuan kepada korban lainnya.', '-', 'PROSOSIAL', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1029, 1, 'Saya cukup terkejut ketika di sekolah ada ujian mendadak  sehingga membuat nilai saya tidak optimal.', '-', 'PENYESUAIAN DIRI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1030, 1, 'Saya takut mendapatkan ejekan dari teman saat harus melakukan presentasi di depan kelas.', '-', 'KEPERCAYAAN DIRI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1031, 1, 'Saya menunda tugas sekolah yang tidak begitu penting walaupun ada waktu senggang. ', '-', 'MOTIF BERPRESTASI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1032, 1, 'Saya  tidak  suka  mencari  alternatif  pilihan  pekerjaan,  karena  prinsip  hidup  saya  adalah mensyukuri apa yang sudah dimiliki.', '-', 'PENGAMBILAN KEPUTUSAN', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1033, 1, 'Saya  menjunjung  tinggi  peraturan  yang  ada  di  kelompok,  walaupun  tidak  ses', '+', 'LOYALITAS', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1034, 1, 'Bekerja dalam kelompok membuat pelaksanaan tugas lebih menyenangkan dan pekerjaan lebih cepat selesai.', '+', 'KERJASAMA', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1035, 1, 'Saya tetap menjalani hobi bersepeda meskipun suasana hati sedang galau.', '+', 'STABILITAS EMOSI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1036, 1, 'Saat libur sekolah, kegiatan saya membantu orang tua', '+', 'PROSOSIAL', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1037, 1, 'Untuk menjaga keselamatan diri dan mengurangi kemacetan di jalan raya, saya berangkat ke sekolah dengan menggunakan kendaraan umum', '+', 'PENYESUAIAN DIRI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1038, 1, 'Apabila  saya  diminta  menyampaikan  pendapat  dalam  suatu  diskusi,  saya  mempersilakan teman yang lebih pandai terlebih dahulu.', '-', 'KEPERCAYAAN DIRI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1039, 1, 'Saya tetap menyelesaikan pekerjaan yang diberikan guru tanpa harus diawasi.', '+', 'MOTIF BERPRESTASI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1040, 1, 'Saya  merasa  membutuhkan  kemampuan  lebih  dari orang  lain  dalam  menentukan  pilihan pekerjaan saat ini.', '+', 'PENGAMBILAN KEPUTUSAN', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1041, 1, 'Saya akan menjaga kewibawaan kelompok walaupun hal tersebut menurunkan kewibawaan saya.', '+', 'LOYALITAS', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1042, 1, 'Saya lebih menyukai olahraga sepakbola', '+', 'KERJASAMA', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1043, 1, 'Saya menjadi jengkel ketika mendadak diminta naik ke atas panggung di acara perpisahan sekolah untuk memberi sambutan.', '-', 'STABILITAS EMOSI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1044, 1, 'Saya  datang  untuk  menemani  dan  menghibur  ketika  ada  anak  kelas  lain  yang  sedang mengalami musibah.', '+', 'PROSOSIAL', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1045, 1, 'Saya sulit tidur karena memikirkan masalah yang tidak kunjung selesai.', '-', 'PENYESUAIAN DIRI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1046, 1, 'Apapun yang saya capai akan saya hargai sebagai sebuah kesuksesan.', '+', 'KEPERCAYAAN DIRI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1047, 1, 'Apapun akibatnya, saya lebih suka memilih tantangan yang memberi kesempatan lebih baik.', '+', 'MOTIF BERPRESTASI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1048, 1, 'Saya tidak percaya dengan berbagai informasi tentang alternatif pilihan karir yang diberikan lembaga-lembaga yang kurang terkenal.', '-', 'PENGAMBILAN KEPUTUSAN', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1049, 1, 'Saya mendukung keputusan kelompok walaupun tidak meguntungkan saya.', '+', 'LOYALITAS', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1050, 1, 'Hampir setiap saat, saya menghabiskan waktu bersama kelompok belajar di sekolah maupun di luar sekolah.', '+', 'KERJASAMA', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1051, 1, 'Pada  saat  tidak  menemukan  barang  yang  saya  cari,  saya  kerapkali  merasa  kesal  dan mengacak-acak barang-barang yang ada di kamar.', '-', 'STABILITAS EMOSI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1052, 1, 'Saya prihatin bila menyaksikan pengemis anak-anak di jalanan serta bisa marasakan apa yang mereka rasakan.', '+', 'PROSOSIAL', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1053, 1, 'Saya senang berada di kelas yang baru bersama orang-orang yang baru.', '+', 'PENYESUAIAN DIRI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1054, 1, 'Setiap mengikuti seleksi, saya merasa ragu untuk dapat lulus.', '-', 'KEPERCAYAAN DIRI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1055, 1, 'Saya bisa menunda belajar, karena ada teman lama yang datang.', '-', 'MOTIF BERPRESTASI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1056, 1, 'Saya merasa ragu tentang diri pribadi terkait pilihan profesi yang saat ini sedang saya lamar. ', '-', 'PENGAMBILAN KEPUTUSAN', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1057, 1, 'Kepentingan kelompok/organisasi di atas segalanya.', '+', 'LOYALITAS', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1058, 1, 'Saya lebih menyukai jenis permainan yang melibatkan banyak orang dibandingkan dengan game online.', '+', 'KERJASAMA', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1059, 1, 'Saya ikut merasakan bahagia ketika orang lain/teman mendapatkan prestasi.', '+', 'STABILITAS EMOSI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1060, 1, 'Saya memilih memiliki banyak teman di media sosial daripada di dunia nyata.', '-', 'PROSOSIAL', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1061, 1, 'Saya  merasa tidak berat bangun dini hari untuk proses seleksi ini karena sudah tebiasa melakukannya.', '+', 'PENYESUAIAN DIRI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1062, 1, 'Saya lebih suka mencoba daripada mengharapkan keberuntungan.', '+', 'KEPERCAYAAN DIRI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1063, 1, 'Buat apa memaksakan diri mengerjakan tugas sekolah sampai larut malam jika pada akhirnya kesehatan akan terganggu.', '-', 'MOTIF BERPRESTASI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1064, 1, 'Saya yakin kemampuan yang saya miliki cocok dengan keputusan untuk memilih profesi ini.', '+', 'PENGAMBILAN KEPUTUSAN', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1065, 1, 'Rugi rasanya jika saya harus mengorbankan segalanya untuk kelompok, karena kelompok belum tentu membantu saya ketika mengalami masalah.', '-', 'LOYALITAS', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1066, 1, 'Saya merasa sulit mencari donatur untuk kegiatan yang akan diselenggarakan oleh sekolah. ', '-', 'KERJASAMA', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1067, 1, 'Ketika mendapat kritik dalam diskusi kelompok, saya akan segera mengkritiknya kembali.', '-', 'STABILITAS EMOSI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1068, 1, 'Saya merasa iri jika sesuatu hal yang dilakukan itu meringankan beban orang lain, namun bukan kepada saya.', '-', 'PROSOSIAL', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1069, 1, 'Dalam membentuk kelompok belajar di sekolah, saya lebih suka dengan teman-teman yang sudah akrab agar tidak repot mengaturnya.', '-', 'PENYESUAIAN DIRI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1070, 1, 'Yang penting mengutarakan pendapat walaupun salah daripada dianggap bodoh.', '+', 'KEPERCAYAAN DIRI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1071, 1, 'Saya berupaya menyelesaikan tugas sekolah dengan santai sesuai waktu yang efektif saja.', '-', 'MOTIF BERPRESTASI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1072, 1, 'Dukungan dan informasi dari orang terdekat belum mampu membuat saya yakin dengan masa depan saya.', '-', 'PENGAMBILAN KEPUTUSAN', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1073, 1, 'Saya tidak akan membela kelompok saya walaupun ada yang menjatuhkan.', '-', 'LOYALITAS', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1074, 1, 'Saya menyukai pekerjaan yang diselesaikan sendiri daripada bersama anggota kelompok. ', '-', 'KERJASAMA', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1075, 1, 'Saya merasa lebih tenang ketika sudah mempersiapkan segala sesuatunya terlebih dahulu sebelum melakukan aktivitas.', '+', 'STABILITAS EMOSI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1076, 1, 'Menurut saya berbuat baik membutuhkan berbagai macam pertimbangan.', '-', 'PROSOSIAL', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1077, 1, 'Ketika bertemu dengan orang yang pernah bermasalah dengan saya, saya tetap menyapa :', '+', 'PENYESUAIAN DIRI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1078, 1, 'Saat menghadapi soal ujian yang sulit saya merasa tertantang.', '+', 'KEPERCAYAAN DIRI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1079, 1, 'Sesulit apapun tugas yang diberikan, saya berupaya sekuat tenaga untuk mencari cara yang tepat dan cepat.', '+', 'MOTIF BERPRESTASI', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1080, 1, 'Saya yakin dengan pilihan saya sendiri tentang apapun.', '+', 'PENGAMBILAN KEPUTUSAN', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1081, 1, 'Saya tidak ragu berpindah ke kelompok lain, kalau kelompok saya yang lama sudah tidak membutuhkan.', '-', 'LOYALITAS', '2022-11-21 20:04:03', '2022-11-21 20:04:03');
INSERT INTO `materi_dua_detail` VALUES (1082, 1, 'Saya lebih menyukai mengerjakan tugas secara masing-masing.', '-', 'KERJASAMA', '2022-11-21 20:04:03', '2022-11-21 20:04:03');

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
INSERT INTO `materi_satu` VALUES (1, '2022-11-22 19:18:14', '2022-11-22 19:18:14');
INSERT INTO `materi_satu` VALUES (2, '2022-11-22 19:18:17', '2022-11-22 19:18:17');
INSERT INTO `materi_satu` VALUES (3, '2022-11-22 20:20:43', '2022-11-22 20:20:43');

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
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of materi_satu_detail
-- ----------------------------
INSERT INTO `materi_satu_detail` VALUES (16, 1, 'VERBAL\r', '<p>DEPORTASI&nbsp;persamaan&nbsp;kata&nbsp;dari …</p><p>a.&nbsp;Orientasi&nbsp;</p><p>b. Penahanan</p><p>c. Pengecualian</p><p>d.&nbsp;Isolasi</p><p>e. Pengasingan</p>', 'E', '2022-11-22 20:04:44', '2022-11-22 20:04:44');
INSERT INTO `materi_satu_detail` VALUES (17, 1, 'VERBAL\r', '<p>DISKREDIT persamaan&nbsp;kata dari …</p><p>a.&nbsp;Menghalau</p><p>b.&nbsp;Menepikan</p><p>c.&nbsp;Meminggirkan</p><p>d.&nbsp;Memojokkan</p><p>e.&nbsp;Merusak</p>', 'D', '2022-11-22 20:05:20', '2022-11-22 20:05:20');
INSERT INTO `materi_satu_detail` VALUES (18, 1, 'VERBAL\r', '<p>MARGIN persamaan&nbsp;dari&nbsp;…</p><p>a.&nbsp;Jeda</p><p>b. Spasi</p><p>c. Sudut</p><p>d.&nbsp;Titik</p><p>e. Batas</p>', 'E', '2022-11-22 20:06:08', '2022-11-22 20:06:08');
INSERT INTO `materi_satu_detail` VALUES (20, 1, 'LOGIS\r', '<p>Semua&nbsp;siswa&nbsp;bersuka&nbsp;cita&nbsp;jika&nbsp;mereka&nbsp;lulus bersama.&nbsp;Hari ini,mereka&nbsp;lulus bersama.</p><p>Kesimpulan&nbsp;paling&nbsp;tepat&nbsp;yang&nbsp;dapat ditarik berdasarkan&nbsp;kedua&nbsp;pernyataan&nbsp;di atas&nbsp;adalah&nbsp;…</p><p>a. &nbsp;Siswa&nbsp;yang&nbsp;tidak ikut&nbsp;lulus ikut&nbsp;bersuka&nbsp;cita.</p><p>b. &nbsp;Beberapa&nbsp;siswa&nbsp;yang&nbsp;tidak lulus bersama&nbsp;tetap&nbsp;ikut&nbsp;bersuka&nbsp;cita.&nbsp;</p><p>c. &nbsp;Beberapa&nbsp;siswa&nbsp;yang&nbsp;lulus&nbsp;bersama,&nbsp;tetapi sedih.</p><p>d. &nbsp;Tidak ada&nbsp;siswa&nbsp;yang&nbsp;tidak&nbsp;bersuka&nbsp;cita.&nbsp;</p><p>e. &nbsp;Beberapa&nbsp;tidak&nbsp;bersuka&nbsp;cita.</p>', 'D', '2022-11-22 20:06:55', '2022-11-22 20:06:55');
INSERT INTO `materi_satu_detail` VALUES (21, 1, 'LOGIS\r', '<p>Kota&nbsp;yang&nbsp;indah&nbsp;akan&nbsp;banyak&nbsp;dikunjungi&nbsp;wisatawan.&nbsp;Kota&nbsp;A&nbsp;adalah&nbsp;kota&nbsp;yang&nbsp;indah,&nbsp;sedangkan&nbsp;kota&nbsp;B</p><p>tidak.</p><p>Kesimpulan&nbsp;paling&nbsp;tepat&nbsp;yang&nbsp;dapat ditarik berdasarkan&nbsp;kedua&nbsp;pernyataan&nbsp;di atas&nbsp;adalah&nbsp;…</p><p>a. &nbsp;Kota&nbsp;A&nbsp;dan&nbsp;kota&nbsp;B akan&nbsp;banyak dikunjungi wisatawan.&nbsp;</p><p>b. &nbsp;Kota&nbsp;A&nbsp;dan&nbsp;kota&nbsp;B&nbsp;tidak banyak dikunjungi wisatawan.</p><p>c. &nbsp;Kota&nbsp;A akan&nbsp;tidak&nbsp;banyak dikunjungi wisatawan&nbsp;dan&nbsp;kota&nbsp;B akan&nbsp;banyak&nbsp;dikunjungi&nbsp;wisatawan.</p><p>d. &nbsp;Kota&nbsp;A akan&nbsp;banyak dikunjungi wisatawan&nbsp;dan&nbsp;kota&nbsp;B&nbsp;tidak banyak dikunjungi wisatawan.</p><p>e. &nbsp;Kota&nbsp;A&nbsp;dan&nbsp;kota&nbsp;B&nbsp;sama&nbsp;banyak dikunjungi wisatawan.</p>', 'D', '2022-11-22 20:07:22', '2022-11-22 20:07:22');
INSERT INTO `materi_satu_detail` VALUES (22, 1, 'LOGIS\r', '<p>Semua &nbsp;yang&nbsp; &nbsp;melakukan&nbsp; &nbsp;kecurangan &nbsp;akan &nbsp;diberi&nbsp; &nbsp;sanksi. &nbsp;Sebagian &nbsp;peserta&nbsp; &nbsp;terbukti &nbsp;melakukan&nbsp;kecurangan.</p><p>Kesimpulan&nbsp;paling&nbsp;tepat&nbsp;yang&nbsp;dapat ditarik berdasarkan&nbsp;kedua&nbsp;pernyataan&nbsp;di atas&nbsp;adalah&nbsp;…</p><p>a. &nbsp;Tidak ada&nbsp;peserta&nbsp;yang&nbsp;terbukti melakukan&nbsp;kecurangan&nbsp;di hukum.&nbsp;</p><p>b. &nbsp;Tidak ada&nbsp;peserta&nbsp;yang dihukum karena&nbsp;melakukan&nbsp;kecurangan.&nbsp;</p><p>c.&nbsp; Peserta&nbsp;yang&nbsp;tidak terbukti&nbsp;melakukan&nbsp;kecurangan&nbsp;dihukum.</p><p>d. &nbsp;Peserta&nbsp;tidak&nbsp;dihukum meskipun&nbsp;melakukan&nbsp;kecurangan.</p><p>e. &nbsp;Peserta&nbsp;yang&nbsp;tidak terbukti&nbsp;melakukan&nbsp;kecurangan&nbsp;tidak dihukum.</p>', 'E', '2022-11-22 20:07:45', '2022-11-22 20:07:45');
INSERT INTO `materi_satu_detail` VALUES (23, 1, 'PRAKTIS\r', '<p><strong>30&nbsp;: 5&nbsp;+&nbsp;10&nbsp;–&nbsp;8 &nbsp;=&nbsp;</strong>...</p><p>a. 10</p><p>b. 14</p><p>c. 12</p><p>d. 8</p><p>e. 16</p>', 'D', '2022-11-22 20:12:01', '2022-11-22 20:12:01');
INSERT INTO `materi_satu_detail` VALUES (24, 1, 'PRAKTIS\r', '<p><strong>12&nbsp;x&nbsp;4&nbsp;: 2&nbsp;–&nbsp;15&nbsp;=&nbsp;</strong>...</p><p>a. 8</p><p>b. 9</p><p>c. 10</p><p>d. 11</p><p>e. 12</p>', 'B', '2022-11-22 20:12:30', '2022-11-22 20:12:30');
INSERT INTO `materi_satu_detail` VALUES (25, 1, 'PRAKTIS\r', '<p><strong>25&nbsp;x&nbsp;25&nbsp;: 25–&nbsp;10&nbsp;=&nbsp;</strong>...</p><p>a. 5</p><p>b.&nbsp;10&nbsp;</p><p>c. 15</p><p>d. 20</p><p>e. 25</p>', 'C', '2022-11-22 20:15:36', '2022-11-22 20:15:36');
INSERT INTO `materi_satu_detail` VALUES (26, 1, 'VERBAL\r', '<p>GUBRIS lawan kata dari ...</p><p>a. Antipati</p><p>b. Derma</p><p>c. Peduli</p><p>d. Angkuh</p><p>e. Cuek</p>', 'E', '2022-11-22 20:16:08', '2022-11-22 20:16:08');
INSERT INTO `materi_satu_detail` VALUES (27, 1, 'VERBAL\r', '<p>KOLEKTIF lawan kata dari ...</p><p>a. Kerjasama</p><p>b. Individual</p><p>c. Kumpulan</p><p>d. Bersama</p><p>e. Penerimaan</p>', 'B', '2022-11-22 20:17:11', '2022-11-22 20:17:11');
INSERT INTO `materi_satu_detail` VALUES (28, 1, 'VERBAL\r', '<p>DEMOSI lawan kata dari ...</p><p>a. Mosi</p><p>b. Pindah</p><p>c. Turun</p><p>d. Tidak Percaya</p><p>e. Promosi</p>', 'E', '2022-11-22 20:17:41', '2022-11-22 20:17:41');
INSERT INTO `materi_satu_detail` VALUES (29, 1, 'LOGIS\r', '<p>Sam adalah siswa yang paling pandai di kelasnya. Joe kalah pandai dibanding Dan, tetapi Dan sama pandainya sama dengan Ari. Ari lebih pandai dari Dono.<br>Kesimpulan paling tepat yang dapat ditarik berdasarkan kedua pernyataan di atas adalah ...</p><p>a. Dan tidak lebih pandai daripada Joe.&nbsp;</p><p>b. Joe tidak kalah pandai dari Sam.</p><p>c. Ari lebih pandai daripada Sam.</p><p>d. Ari lebih pandai daripada Joe.</p><p>e. Dono lebih pandai daripada Dan.</p>', 'D', '2022-11-22 20:18:21', '2022-11-22 20:18:21');
INSERT INTO `materi_satu_detail` VALUES (30, 1, 'LOGIS\r', '<p>Salah&nbsp;satu&nbsp;syarat&nbsp;diterimanya&nbsp;sebagai&nbsp;Polisi&nbsp;adalah&nbsp;lulus&nbsp;seleksi.&nbsp;Sam&nbsp;adalah&nbsp;salah&nbsp;satu&nbsp;peserta&nbsp;yang akan&nbsp;mengikuti seleksi.</p><p>Kesimpulan&nbsp;paling&nbsp;tepat&nbsp;yang&nbsp;dapat ditarik berdasarkan&nbsp;kedua&nbsp;pernyataan&nbsp;di atas&nbsp;adalah&nbsp;…</p><p>a. &nbsp;Sam belum tentu&nbsp;diterima&nbsp;sebagai Polisi.&nbsp;</p><p>b. &nbsp;Sam tidak&nbsp;lulus seleksi Polisi.</p><p>c. &nbsp;Sam tidak&nbsp;diterima&nbsp;sebagai&nbsp;Polisi.&nbsp;</p><p>d. &nbsp;Sam diterima&nbsp;sebagai Polisi.</p><p>e. &nbsp;Sam mampu&nbsp;melalui seluruh&nbsp;kegiatan&nbsp;seleksi.</p>', 'A', '2022-11-22 20:18:43', '2022-11-22 20:18:43');
INSERT INTO `materi_satu_detail` VALUES (31, 1, 'LOGIS\r', '<figure class=\"image\"><img src=\"http://psikotes.admin.test/media/Screenshot 2022-11-22 at 9.19.07 PM_1669123155.png\"></figure>', 'E', '2022-11-22 20:19:17', '2022-11-22 20:19:17');

-- ----------------------------
-- Table structure for materi_tiga
-- ----------------------------
DROP TABLE IF EXISTS `materi_tiga`;
CREATE TABLE `materi_tiga`  (
  `id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of materi_tiga
-- ----------------------------
INSERT INTO `materi_tiga` VALUES (1, '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga` VALUES (2, '2022-11-21 18:31:56', '2022-11-21 18:31:56');
INSERT INTO `materi_tiga` VALUES (3, '2022-11-21 00:00:00', '2022-11-21 00:00:00');

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
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of materi_tiga_detail
-- ----------------------------
INSERT INTO `materi_tiga_detail` VALUES (8, 2, 1, 'K', 'R', 'Z', 'S', 'T', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_detail` VALUES (9, 2, 2, 'O', 'G', 'C', 'P', 'Y', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_detail` VALUES (10, 2, 3, 'X', 'A', 'J', 'B', 'I', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_detail` VALUES (11, 2, 4, 'E', 'F', 'Q', 'H', 'L', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_detail` VALUES (12, 2, 5, 'V', 'N', 'M', 'W', 'U', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_detail` VALUES (13, 2, 6, 'K', 'R', 'Z', 'S', 'T', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_detail` VALUES (14, 2, 7, 'O', 'G', 'C', 'P', 'Y', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_detail` VALUES (15, 2, 8, 'X', 'A', 'J', 'B', 'I', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_detail` VALUES (16, 2, 9, 'E', 'F', 'Q', 'H', 'L', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_detail` VALUES (17, 2, 10, 'V', 'N', 'M', 'W', 'U', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_detail` VALUES (18, 3, 1, '< ', '=', '»', '«', '> ', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_detail` VALUES (19, 3, 2, 'ƕ', '@', '±', 'Ω', '¤', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_detail` VALUES (20, 3, 3, '§', '©', '±', '¶', 'æ', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_detail` VALUES (21, 3, 4, 'ǂ', 'Ǯ', 'ɠ', 'ɮ', 'ɶ', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_detail` VALUES (22, 3, 5, 'ʨ', 'Ξ', 'Ϡ', 'Җ', '҂', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_detail` VALUES (23, 3, 6, '< ', '=', '»', '«', '> ', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_detail` VALUES (24, 3, 7, 'ƕ', '@', '±', 'Ω', '¤', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_detail` VALUES (25, 3, 8, '§', '©', '±', '¶', 'æ', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_detail` VALUES (26, 3, 9, 'ǂ', 'Ǯ', 'ɠ', 'ɮ', 'ɶ', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_detail` VALUES (27, 3, 10, 'ʨ', 'Ξ', 'Ϡ', 'Җ', '҂', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_detail` VALUES (28, 1, 1, '6', '4', '7', '2', '1\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_detail` VALUES (29, 1, 2, '0', '2', '6', '3', '7\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_detail` VALUES (30, 1, 3, '0', '2', '6', '3', '7\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_detail` VALUES (31, 1, 4, '7', '1', '5', '2', '4\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_detail` VALUES (32, 1, 5, '8', '3', '6', '0', '9\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_detail` VALUES (33, 1, 6, '6', '4', '7', '2', '1\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_detail` VALUES (34, 1, 7, '0', '2', '6', '3', '7\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_detail` VALUES (35, 1, 8, '5', '7', '8', '1', '3\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_detail` VALUES (36, 1, 9, '7', '1', '5', '2', '4\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_detail` VALUES (37, 1, 10, '8', '3', '6', '0', '9', '2022-11-21 00:00:00', '2022-11-21 00:00:00');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1510 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of materi_tiga_sub_detail
-- ----------------------------
INSERT INTO `materi_tiga_sub_detail` VALUES (9, 8, 'R', 'K', 'S', 'T', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (10, 8, 'Z', 'R', 'S', 'K', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (11, 8, 'K', 'R', 'Z', 'T', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (12, 8, 'Z', 'K', 'R', 'T', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (13, 8, 'T', 'R', 'Z', 'S', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (14, 8, 'K', 'Z', 'S', 'R', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (15, 8, 'T', 'K', 'R', 'S', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (16, 8, 'K', 'Z', 'S', 'R', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (17, 8, 'R', 'S', 'T', 'Z', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (18, 8, 'T', 'R', 'K', 'S', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (19, 8, 'T', 'S', 'K', 'R', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (20, 8, 'S', 'K', 'Z', 'T', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (21, 8, 'K', 'R', 'S', 'T', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (22, 8, 'R', 'Z', 'S', 'K', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (23, 8, 'Z', 'R', 'S', 'T', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (24, 8, 'T', 'K', 'Z', 'S', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (25, 8, 'Z', 'R', 'S', 'K', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (26, 8, 'R', 'T', 'Z', 'S', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (27, 8, 'Z', 'R', 'K', 'T', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (28, 8, 'T', 'Z', 'R', 'S', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (29, 8, 'K', 'Z', 'T', 'R', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (30, 8, 'S', 'Z', 'R', 'K', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (31, 8, 'K', 'Z', 'T', 'R', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (32, 8, 'Z', 'T', 'K', 'S', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (33, 8, 'K', 'Z', 'T', 'R', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (34, 8, 'S', 'R', 'K', 'T', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (35, 8, 'Z', 'R', 'T', 'S', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (36, 8, 'T', 'R', 'K', 'Z', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (37, 8, 'K', 'S', 'Z', 'T', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (38, 8, 'R', 'Z', 'T', 'K', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (39, 8, 'Z', 'K', 'S', 'R', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (40, 8, 'R', 'Z', 'S', 'T', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (41, 8, 'S', 'Z', 'T', 'K', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (42, 8, 'K', 'S', 'R', 'Z', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (43, 8, 'S', 'K', 'T', 'Z', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (44, 8, 'R', 'S', 'K', 'T', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (45, 8, 'S', 'Z', 'T', 'R', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (46, 8, 'R', 'K', 'Z', 'T', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (47, 8, 'T', 'S', 'K', 'Z', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (48, 8, 'R', 'Z', 'S', 'K', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (49, 8, 'S', 'K', 'T', 'R', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (50, 8, 'R', 'Z', 'S', 'K', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (51, 8, 'K', 'Z', 'T', 'S', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (52, 8, 'R', 'S', 'K', 'T', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (53, 8, 'S', 'T', 'R', 'Z', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (54, 8, 'S', 'K', 'Z', 'T', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (55, 8, 'R', 'T', 'K', 'S', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (56, 8, 'S', 'K', 'Z', 'T', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (57, 8, 'R', 'Z', 'T', 'K', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (58, 8, 'R', 'S', 'Z', 'T', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (59, 9, 'Y', 'P', 'C', 'O', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (60, 9, 'O', 'G', 'Y', 'P', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (61, 9, 'P', 'G', 'C', 'Y', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (62, 9, 'O', 'Y', 'P', 'C', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (63, 9, 'Y', 'C', 'O', 'G', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (64, 9, 'Y', 'P', 'G', 'C', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (65, 9, 'O', 'C', 'P', 'Y', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (66, 9, 'Y', 'P', 'G', 'C', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (67, 9, 'O', 'G', 'C', 'P', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (68, 9, 'O', 'Y', 'G', 'C', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (69, 9, 'O', 'P', 'Y', 'C', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (70, 9, 'G', 'O', 'Y', 'P', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (71, 9, 'P', 'O', 'G', 'C', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (72, 9, 'G', 'P', 'O', 'C', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (73, 9, 'C', 'O', 'G', 'Y', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (74, 9, 'C', 'Y', 'P', 'O', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (75, 9, 'Y', 'P', 'G', 'C', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (76, 9, 'P', 'O', 'Y', 'C', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (77, 9, 'O', 'G', 'Y', 'P', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (78, 9, 'G', 'O', 'Y', 'C', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (79, 9, 'P', 'G', 'Y', 'O', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (80, 9, 'C', 'P', 'O', 'Y', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (81, 9, 'P', 'G', 'Y', 'O', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (82, 9, 'O', 'Y', 'C', 'G', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (83, 9, 'C', 'O', 'P', 'Y', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (84, 9, 'C', 'P', 'G', 'Y', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (85, 9, 'G', 'O', 'Y', 'P', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (86, 9, 'O', 'C', 'G', 'Y', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (87, 9, 'G', 'O', 'P', 'C', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (88, 9, 'C', 'G', 'O', 'Y', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (89, 9, 'P', 'G', 'C', 'O', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (90, 9, 'Y', 'G', 'O', 'P', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (91, 9, 'P', 'G', 'C', 'O', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (92, 9, 'G', 'C', 'P', 'Y', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (93, 9, 'P', 'G', 'C', 'O', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (94, 9, 'Y', 'O', 'P', 'C', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (95, 9, 'G', 'O', 'C', 'Y', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (96, 9, 'C', 'O', 'P', 'G', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (97, 9, 'P', 'Y', 'G', 'C', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (98, 9, 'O', 'G', 'C', 'P', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (99, 9, 'G', 'P', 'Y', 'O', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (100, 9, 'O', 'G', 'Y', 'C', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (101, 9, 'Y', 'G', 'C', 'P', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (102, 9, 'P', 'Y', 'O', 'G', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (103, 9, 'Y', 'P', 'C', 'G', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (104, 9, 'O', 'Y', 'P', 'C', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (105, 9, 'Y', 'G', 'C', 'O', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (106, 9, 'O', 'P', 'G', 'C', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (107, 9, 'C', 'Y', 'P', 'G', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (108, 9, 'O', 'G', 'Y', 'P', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (109, 10, 'A', 'X', 'B', 'I', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (110, 10, 'I', 'X', 'J', 'A', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (111, 10, 'X', 'I', 'J', 'A', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (112, 10, 'A', 'X', 'J', 'B', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (113, 10, 'J', 'X', 'B', 'I', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (114, 10, 'I', 'J', 'A', 'X', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (115, 10, 'J', 'I', 'B', 'X', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (116, 10, 'A', 'J', 'I', 'B', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (117, 10, 'J', 'X', 'B', 'A', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (118, 10, 'A', 'I', 'X', 'B', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (119, 10, 'J', 'X', 'A', 'I', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (120, 10, 'I', 'X', 'B', 'A', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (121, 10, 'X', 'B', 'I', 'J', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (122, 10, 'I', 'X', 'B', 'A', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (123, 10, 'J', 'A', 'I', 'B', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (124, 10, 'X', 'A', 'B', 'J', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (125, 10, 'B', 'A', 'I', 'X', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (126, 10, 'I', 'J', 'X', 'B', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (127, 10, 'A', 'X', 'J', 'I', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (128, 10, 'I', 'X', 'B', 'A', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (129, 10, 'A', 'J', 'B', 'X', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (130, 10, 'B', 'A', 'X', 'J', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (131, 10, 'B', 'J', 'I', 'A', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (132, 10, 'J', 'I', 'X', 'B', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (133, 10, 'I', 'A', 'J', 'B', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (134, 10, 'A', 'X', 'J', 'I', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (135, 10, 'X', 'A', 'J', 'B', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (136, 10, 'J', 'I', 'B', 'A', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (137, 10, 'A', 'X', 'J', 'I', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (138, 10, 'I', 'X', 'B', 'J', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (139, 10, 'B', 'J', 'I', 'X', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (140, 10, 'B', 'A', 'I', 'J', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (141, 10, 'B', 'I', 'X', 'J', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (142, 10, 'X', 'A', 'J', 'I', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (143, 10, 'A', 'B', 'X', 'J', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (144, 10, 'X', 'A', 'I', 'B', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (145, 10, 'B', 'X', 'A', 'J', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (146, 10, 'A', 'I', 'J', 'B', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (147, 10, 'X', 'A', 'J', 'I', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (148, 10, 'I', 'A', 'X', 'B', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (149, 10, 'X', 'I', 'A', 'B', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (150, 10, 'A', 'J', 'I', 'B', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (151, 10, 'J', 'B', 'A', 'X', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (152, 10, 'J', 'I', 'X', 'B', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (153, 10, 'A', 'B', 'I', 'J', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (154, 10, 'J', 'I', 'X', 'B', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (155, 10, 'A', 'X', 'B', 'I', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (156, 10, 'A', 'J', 'X', 'B', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (157, 10, 'B', 'I', 'A', 'J', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (158, 10, 'I', 'X', 'J', 'A', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (159, 11, 'F', 'E', 'Q', 'L', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (160, 11, 'F', 'H', 'Q', 'E', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (161, 11, 'F', 'Q', 'L', 'E', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (162, 11, 'L', 'H', 'E', 'Q', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (163, 11, 'H', 'F', 'L', 'E', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (164, 11, 'L', 'H', 'Q', 'F', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (165, 11, 'F', 'L', 'H', 'E', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (166, 11, 'H', 'Q', 'E', 'F', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (167, 11, 'L', 'H', 'E', 'Q', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (168, 11, 'Q', 'H', 'L', 'F', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (169, 11, 'E', 'L', 'H', 'Q', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (170, 11, 'Q', 'L', 'F', 'H', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (171, 11, 'L', 'F', 'Q', 'E', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (172, 11, 'Q', 'L', 'F', 'H', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (173, 11, 'E', 'H', 'Q', 'F', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (174, 11, 'L', 'H', 'F', 'E', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (175, 11, 'F', 'H', 'Q', 'L', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (176, 11, 'Q', 'E', 'L', 'F', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (177, 11, 'H', 'L', 'E', 'Q', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (178, 11, 'Q', 'L', 'F', 'H', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (179, 11, 'H', 'L', 'F', 'Q', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (180, 11, 'Q', 'L', 'E', 'H', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (181, 11, 'L', 'Q', 'E', 'H', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (182, 11, 'H', 'L', 'E', 'F', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (183, 11, 'E', 'L', 'F', 'Q', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (184, 11, 'Q', 'E', 'H', 'L', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (185, 11, 'E', 'Q', 'F', 'L', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (186, 11, 'H', 'E', 'Q', 'F', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (187, 11, 'E', 'L', 'F', 'H', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (188, 11, 'H', 'Q', 'L', 'F', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (189, 11, 'L', 'Q', 'H', 'F', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (190, 11, 'H', 'E', 'Q', 'F', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (191, 11, 'E', 'F', 'H', 'L', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (192, 11, 'E', 'Q', 'L', 'F', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (193, 11, 'H', 'F', 'Q', 'E', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (194, 11, 'E', 'Q', 'L', 'F', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (195, 11, 'H', 'L', 'F', 'Q', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (196, 11, 'H', 'E', 'L', 'F', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (197, 11, 'F', 'Q', 'H', 'E', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (198, 11, 'Q', 'L', 'E', 'H', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (199, 11, 'H', 'E', 'F', 'L', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (200, 11, 'F', 'H', 'L', 'E', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (201, 11, 'F', 'E', 'Q', 'H', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (202, 11, 'E', 'Q', 'L', 'F', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (203, 11, 'Q', 'H', 'E', 'F', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (204, 11, 'H', 'L', 'E', 'Q', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (205, 11, 'L', 'H', 'E', 'F', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (206, 11, 'E', 'Q', 'F', 'H', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (207, 11, 'H', 'L', 'E', 'Q', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (208, 11, 'Q', 'L', 'F', 'E', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (209, 12, 'U', 'V', 'M', 'W', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (210, 12, 'W', 'V', 'N', 'U', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (211, 12, 'V', 'W', 'N', 'U', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (212, 12, 'U', 'V', 'N', 'M', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (213, 12, 'N', 'V', 'M', 'W', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (214, 12, 'W', 'N', 'U', 'V', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (215, 12, 'N', 'W', 'M', 'V', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (216, 12, 'U', 'N', 'W', 'M', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (217, 12, 'N', 'V', 'M', 'U', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (218, 12, 'U', 'W', 'V', 'M', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (219, 12, 'M', 'N', 'W', 'V', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (220, 12, 'M', 'U', 'W', 'N', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (221, 12, 'M', 'W', 'V', 'N', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (222, 12, 'V', 'U', 'N', 'W', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (223, 12, 'U', 'M', 'V', 'N', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (224, 12, 'V', 'U', 'W', 'M', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (225, 12, 'M', 'V', 'U', 'N', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (226, 12, 'U', 'W', 'N', 'M', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (227, 12, 'V', 'U', 'N', 'W', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (228, 12, 'W', 'U', 'V', 'M', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (229, 12, 'N', 'V', 'U', 'W', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (230, 12, 'W', 'V', 'M', 'U', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (231, 12, 'V', 'M', 'W', 'N', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (232, 12, 'W', 'V', 'M', 'U', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (233, 12, 'N', 'U', 'W', 'M', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (234, 12, 'V', 'U', 'M', 'N', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (235, 12, 'M', 'U', 'W', 'V', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (236, 12, 'W', 'N', 'V', 'M', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (237, 12, 'U', 'V', 'N', 'W', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (238, 12, 'W', 'V', 'M', 'U', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (239, 12, 'U', 'N', 'M', 'V', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (240, 12, 'M', 'U', 'V', 'N', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (241, 12, 'M', 'N', 'W', 'U', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (242, 12, 'N', 'W', 'V', 'M', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (243, 12, 'W', 'U', 'N', 'M', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (244, 12, 'U', 'V', 'N', 'W', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (245, 12, 'V', 'U', 'N', 'M', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (246, 12, 'N', 'W', 'M', 'U', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (247, 12, 'U', 'V', 'N', 'W', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (248, 12, 'W', 'V', 'M', 'N', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (249, 12, 'V', 'W', 'U', 'M', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (250, 12, 'U', 'N', 'W', 'M', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (251, 12, 'N', 'M', 'U', 'V', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (252, 12, 'N', 'W', 'V', 'M', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (253, 12, 'U', 'M', 'W', 'N', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (254, 12, 'N', 'W', 'V', 'M', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (255, 12, 'U', 'V', 'M', 'W', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (256, 12, 'U', 'N', 'V', 'M', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (257, 12, 'M', 'W', 'U', 'N', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (258, 12, 'W', 'V', 'N', 'U', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (259, 13, 'S', 'K', 'Z', 'T', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (260, 13, 'R', 'T', 'K', 'S', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (261, 13, 'S', 'K', 'Z', 'T', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (262, 13, 'R', 'Z', 'T', 'K', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (263, 13, 'R', 'S', 'Z', 'T', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (264, 13, 'R', 'K', 'S', 'T', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (265, 13, 'Z', 'R', 'S', 'K', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (266, 13, 'K', 'R', 'Z', 'T', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (267, 13, 'Z', 'K', 'R', 'T', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (268, 13, 'T', 'R', 'Z', 'S', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (269, 13, 'S', 'K', 'T', 'R', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (270, 13, 'R', 'Z', 'S', 'K', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (271, 13, 'K', 'Z', 'T', 'S', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (272, 13, 'R', 'S', 'K', 'T', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (273, 13, 'S', 'T', 'R', 'Z', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (274, 13, 'T', 'S', 'K', 'R', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (275, 13, 'S', 'K', 'Z', 'T', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (276, 13, 'K', 'R', 'S', 'T', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (277, 13, 'R', 'Z', 'S', 'K', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (278, 13, 'Z', 'R', 'S', 'T', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (279, 13, 'Z', 'K', 'S', 'R', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (280, 13, 'R', 'Z', 'S', 'T', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (281, 13, 'S', 'Z', 'T', 'K', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (282, 13, 'K', 'S', 'R', 'Z', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (283, 13, 'S', 'K', 'T', 'Z', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (284, 13, 'K', 'Z', 'T', 'R', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (285, 13, 'S', 'Z', 'R', 'K', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (286, 13, 'K', 'Z', 'T', 'R', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (287, 13, 'Z', 'T', 'K', 'S', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (288, 13, 'K', 'Z', 'T', 'R', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (289, 13, 'R', 'S', 'K', 'T', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (290, 13, 'S', 'Z', 'T', 'R', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (291, 13, 'R', 'K', 'Z', 'T', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (292, 13, 'T', 'S', 'K', 'Z', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (293, 13, 'R', 'Z', 'S', 'K', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (294, 13, 'S', 'R', 'K', 'T', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (295, 13, 'Z', 'R', 'T', 'S', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (296, 13, 'T', 'R', 'K', 'Z', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (297, 13, 'K', 'S', 'Z', 'T', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (298, 13, 'R', 'Z', 'T', 'K', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (299, 13, 'T', 'K', 'Z', 'S', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (300, 13, 'Z', 'R', 'S', 'K', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (301, 13, 'R', 'T', 'Z', 'S', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (302, 13, 'Z', 'R', 'K', 'T', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (303, 13, 'T', 'Z', 'R', 'S', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (304, 13, 'K', 'Z', 'S', 'R', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (305, 13, 'T', 'K', 'R', 'S', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (306, 13, 'K', 'Z', 'S', 'R', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (307, 13, 'R', 'S', 'T', 'Z', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (308, 13, 'T', 'R', 'K', 'S', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (309, 14, 'G', 'P', 'Y', 'O', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (310, 14, 'O', 'G', 'Y', 'C', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (311, 14, 'Y', 'G', 'C', 'P', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (312, 14, 'P', 'Y', 'O', 'G', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (313, 14, 'Y', 'P', 'C', 'G', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (314, 14, 'O', 'Y', 'P', 'C', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (315, 14, 'Y', 'G', 'C', 'O', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (316, 14, 'O', 'P', 'G', 'C', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (317, 14, 'C', 'Y', 'P', 'G', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (318, 14, 'O', 'G', 'Y', 'P', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (319, 14, 'P', 'G', 'Y', 'O', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (320, 14, 'C', 'P', 'O', 'Y', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (321, 14, 'P', 'G', 'Y', 'O', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (322, 14, 'O', 'Y', 'C', 'G', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (323, 14, 'C', 'O', 'P', 'Y', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (324, 14, 'C', 'P', 'G', 'Y', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (325, 14, 'G', 'O', 'Y', 'P', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (326, 14, 'O', 'C', 'G', 'Y', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (327, 14, 'G', 'O', 'P', 'C', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (328, 14, 'C', 'G', 'O', 'Y', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (329, 14, 'C', 'Y', 'P', 'O', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (330, 14, 'Y', 'P', 'G', 'C', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (331, 14, 'P', 'O', 'Y', 'C', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (332, 14, 'O', 'G', 'Y', 'P', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (333, 14, 'G', 'O', 'Y', 'C', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (334, 14, 'Y', 'O', 'P', 'C', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (335, 14, 'G', 'O', 'C', 'Y', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (336, 14, 'C', 'O', 'P', 'G', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (337, 14, 'P', 'Y', 'G', 'C', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (338, 14, 'O', 'G', 'C', 'P', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (339, 14, 'Y', 'P', 'G', 'C', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (340, 14, 'O', 'C', 'P', 'Y', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (341, 14, 'Y', 'P', 'G', 'C', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (342, 14, 'O', 'G', 'C', 'P', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (343, 14, 'O', 'Y', 'G', 'C', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (344, 14, 'O', 'P', 'Y', 'C', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (345, 14, 'G', 'O', 'Y', 'P', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (346, 14, 'P', 'O', 'G', 'C', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (347, 14, 'G', 'P', 'O', 'C', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (348, 14, 'C', 'O', 'G', 'Y', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (349, 14, 'Y', 'P', 'C', 'O', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (350, 14, 'O', 'G', 'Y', 'P', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (351, 14, 'P', 'G', 'C', 'Y', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (352, 14, 'O', 'Y', 'P', 'C', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (353, 14, 'Y', 'C', 'O', 'G', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (354, 14, 'P', 'G', 'C', 'O', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (355, 14, 'Y', 'G', 'O', 'P', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (356, 14, 'P', 'G', 'C', 'O', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (357, 14, 'G', 'C', 'P', 'Y', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (358, 14, 'P', 'G', 'C', 'O', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (359, 15, 'B', 'J', 'I', 'X', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (360, 15, 'B', 'A', 'I', 'J', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (361, 15, 'B', 'I', 'X', 'J', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (362, 15, 'X', 'A', 'J', 'I', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (363, 15, 'A', 'B', 'X', 'J', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (364, 15, 'X', 'A', 'I', 'B', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (365, 15, 'B', 'X', 'A', 'J', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (366, 15, 'A', 'I', 'J', 'B', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (367, 15, 'X', 'A', 'J', 'I', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (368, 15, 'I', 'A', 'X', 'B', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (369, 15, 'A', 'J', 'B', 'X', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (370, 15, 'B', 'A', 'X', 'J', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (371, 15, 'B', 'J', 'I', 'A', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (372, 15, 'J', 'I', 'X', 'B', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (373, 15, 'I', 'A', 'J', 'B', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (374, 15, 'A', 'X', 'J', 'I', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (375, 15, 'X', 'A', 'J', 'B', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (376, 15, 'J', 'I', 'B', 'A', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (377, 15, 'A', 'X', 'J', 'I', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (378, 15, 'I', 'X', 'B', 'J', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (379, 15, 'X', 'I', 'A', 'B', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (380, 15, 'A', 'J', 'I', 'B', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (381, 15, 'J', 'B', 'A', 'X', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (382, 15, 'J', 'I', 'X', 'B', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (383, 15, 'A', 'B', 'I', 'J', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (384, 15, 'J', 'I', 'X', 'B', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (385, 15, 'A', 'X', 'B', 'I', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (386, 15, 'A', 'J', 'X', 'B', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (387, 15, 'B', 'I', 'A', 'J', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (388, 15, 'I', 'X', 'J', 'A', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (389, 15, 'A', 'X', 'B', 'I', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (390, 15, 'I', 'X', 'J', 'A', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (391, 15, 'X', 'I', 'J', 'A', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (392, 15, 'A', 'X', 'J', 'B', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (393, 15, 'J', 'X', 'B', 'I', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (394, 15, 'I', 'J', 'A', 'X', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (395, 15, 'J', 'I', 'B', 'X', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (396, 15, 'A', 'J', 'I', 'B', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (397, 15, 'J', 'X', 'B', 'A', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (398, 15, 'A', 'I', 'X', 'B', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (399, 15, 'J', 'X', 'A', 'I', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (400, 15, 'I', 'X', 'B', 'A', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (401, 15, 'X', 'B', 'I', 'J', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (402, 15, 'I', 'X', 'B', 'A', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (403, 15, 'J', 'A', 'I', 'B', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (404, 15, 'X', 'A', 'B', 'J', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (405, 15, 'B', 'A', 'I', 'X', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (406, 15, 'I', 'J', 'X', 'B', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (407, 15, 'A', 'X', 'J', 'I', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (408, 15, 'I', 'X', 'B', 'A', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (409, 16, 'H', 'L', 'F', 'Q', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (410, 16, 'Q', 'L', 'E', 'H', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (411, 16, 'L', 'Q', 'E', 'H', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (412, 16, 'H', 'L', 'E', 'F', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (413, 16, 'E', 'L', 'F', 'Q', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (414, 16, 'L', 'H', 'F', 'E', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (415, 16, 'F', 'H', 'Q', 'L', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (416, 16, 'Q', 'E', 'L', 'F', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (417, 16, 'H', 'L', 'E', 'Q', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (418, 16, 'Q', 'L', 'F', 'H', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (419, 16, 'Q', 'E', 'H', 'L', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (420, 16, 'E', 'Q', 'F', 'L', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (421, 16, 'H', 'E', 'Q', 'F', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (422, 16, 'E', 'L', 'F', 'H', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (423, 16, 'H', 'Q', 'L', 'F', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (424, 16, 'E', 'L', 'H', 'Q', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (425, 16, 'Q', 'L', 'F', 'H', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (426, 16, 'L', 'F', 'Q', 'E', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (427, 16, 'Q', 'L', 'F', 'H', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (428, 16, 'E', 'H', 'Q', 'F', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (429, 16, 'H', 'E', 'F', 'L', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (430, 16, 'F', 'H', 'L', 'E', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (431, 16, 'F', 'E', 'Q', 'H', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (432, 16, 'E', 'Q', 'L', 'F', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (433, 16, 'Q', 'H', 'E', 'F', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (434, 16, 'H', 'L', 'E', 'Q', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (435, 16, 'L', 'H', 'E', 'F', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (436, 16, 'E', 'Q', 'F', 'H', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (437, 16, 'H', 'L', 'E', 'Q', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (438, 16, 'Q', 'L', 'F', 'E', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (439, 16, 'F', 'E', 'Q', 'L', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (440, 16, 'F', 'H', 'Q', 'E', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (441, 16, 'F', 'Q', 'L', 'E', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (442, 16, 'L', 'H', 'E', 'Q', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (443, 16, 'H', 'F', 'L', 'E', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (444, 16, 'L', 'H', 'Q', 'F', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (445, 16, 'F', 'L', 'H', 'E', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (446, 16, 'H', 'Q', 'E', 'F', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (447, 16, 'L', 'H', 'E', 'Q', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (448, 16, 'Q', 'H', 'L', 'F', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (449, 16, 'L', 'Q', 'H', 'F', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (450, 16, 'H', 'E', 'Q', 'F', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (451, 16, 'E', 'F', 'H', 'L', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (452, 16, 'E', 'Q', 'L', 'F', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (453, 16, 'H', 'F', 'Q', 'E', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (454, 16, 'E', 'Q', 'L', 'F', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (455, 16, 'H', 'L', 'F', 'Q', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (456, 16, 'H', 'E', 'L', 'F', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (457, 16, 'F', 'Q', 'H', 'E', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (458, 16, 'Q', 'L', 'E', 'H', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (459, 17, 'U', 'N', 'M', 'V', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (460, 17, 'M', 'U', 'V', 'N', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (461, 17, 'M', 'N', 'W', 'U', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (462, 17, 'N', 'W', 'V', 'M', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (463, 17, 'W', 'U', 'N', 'M', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (464, 17, 'U', 'V', 'N', 'W', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (465, 17, 'V', 'U', 'N', 'M', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (466, 17, 'N', 'W', 'M', 'U', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (467, 17, 'U', 'V', 'N', 'W', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (468, 17, 'W', 'V', 'M', 'N', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (469, 17, 'N', 'V', 'U', 'W', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (470, 17, 'W', 'V', 'M', 'U', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (471, 17, 'V', 'M', 'W', 'N', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (472, 17, 'W', 'V', 'M', 'U', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (473, 17, 'N', 'U', 'W', 'M', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (474, 17, 'V', 'U', 'M', 'N', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (475, 17, 'M', 'U', 'W', 'V', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (476, 17, 'W', 'N', 'V', 'M', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (477, 17, 'U', 'V', 'N', 'W', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (478, 17, 'W', 'V', 'M', 'U', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (479, 17, 'V', 'W', 'U', 'M', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (480, 17, 'U', 'N', 'W', 'M', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (481, 17, 'N', 'M', 'U', 'V', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (482, 17, 'N', 'W', 'V', 'M', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (483, 17, 'U', 'M', 'W', 'N', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (484, 17, 'N', 'W', 'V', 'M', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (485, 17, 'U', 'V', 'M', 'W', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (486, 17, 'U', 'N', 'V', 'M', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (487, 17, 'M', 'W', 'U', 'N', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (488, 17, 'W', 'V', 'N', 'U', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (489, 17, 'U', 'V', 'M', 'W', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (490, 17, 'W', 'V', 'N', 'U', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (491, 17, 'V', 'W', 'N', 'U', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (492, 17, 'U', 'V', 'N', 'M', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (493, 17, 'N', 'V', 'M', 'W', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (494, 17, 'W', 'N', 'U', 'V', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (495, 17, 'N', 'W', 'M', 'V', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (496, 17, 'U', 'N', 'W', 'M', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (497, 17, 'N', 'V', 'M', 'U', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (498, 17, 'U', 'W', 'V', 'M', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (499, 17, 'M', 'N', 'W', 'V', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (500, 17, 'M', 'U', 'W', 'N', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (501, 17, 'M', 'W', 'V', 'N', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (502, 17, 'V', 'U', 'N', 'W', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (503, 17, 'U', 'M', 'V', 'N', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (504, 17, 'V', 'U', 'W', 'M', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (505, 17, 'M', 'V', 'U', 'N', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (506, 17, 'U', 'W', 'N', 'M', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (507, 17, 'V', 'U', 'N', 'W', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (508, 17, 'W', 'U', 'V', 'M', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (510, 18, '«', '»', '=', '> ', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (511, 18, '> ', '< ', '«', '»', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (512, 18, '»', '< ', '=', '«', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (513, 18, '> ', '«', '»', '=', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (514, 18, '«', '=', '> ', '< ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (515, 18, '«', '»', '< ', '=', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (516, 18, '> ', '=', '»', '«', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (517, 18, '«', '»', '< ', '=', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (518, 18, '> ', '< ', '=', '»', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (519, 18, '> ', '«', '< ', '=', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (520, 18, '> ', '»', '«', '=', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (521, 18, '< ', '> ', '«', '»', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (522, 18, '»', '> ', '< ', '=', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (523, 18, '< ', '»', '> ', '=', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (524, 18, '=', '> ', '< ', '«', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (525, 18, '=', '«', '»', '> ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (526, 18, '«', '»', '< ', '=', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (527, 18, '»', '> ', '«', '=', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (528, 18, '> ', '< ', '«', '»', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (529, 18, '< ', '> ', '«', '=', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (530, 18, '< ', '»', '«', '> ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (531, 18, '> ', '< ', '«', '=', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (532, 18, '«', '< ', '=', '»', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (533, 18, '»', '«', '> ', '< ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (534, 18, '«', '»', '=', '< ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (535, 18, '> ', '«', '»', '=', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (536, 18, '«', '< ', '=', '> ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (537, 18, '> ', '»', '< ', '=', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (538, 18, '=', '«', '»', '< ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (539, 18, '> ', '< ', '«', '»', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (540, 18, '»', '< ', '=', '> ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (541, 18, '«', '< ', '> ', '»', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (542, 18, '»', '< ', '=', '> ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (543, 18, '< ', '=', '»', '«', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (544, 18, '»', '< ', '=', '> ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (545, 18, '«', '> ', '»', '=', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (546, 18, '< ', '> ', '=', '«', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (547, 18, '=', '> ', '»', '< ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (548, 18, '»', '«', '< ', '=', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (549, 18, '> ', '< ', '=', '»', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (550, 18, '»', '< ', '«', '> ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (551, 18, '=', '»', '> ', '«', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (552, 18, '»', '< ', '«', '> ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (553, 18, '> ', '«', '=', '< ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (554, 18, '=', '> ', '»', '«', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (555, 18, '=', '»', '< ', '«', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (556, 18, '< ', '> ', '«', '»', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (557, 18, '> ', '=', '< ', '«', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (558, 18, '< ', '> ', '»', '=', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (559, 18, '=', '< ', '> ', '«', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (560, 19, 'Ω', '@', '¤', 'ƕ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (561, 19, '¤', 'Ω', 'ƕ', '@', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (562, 19, '¤', '@', '±', 'Ω', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (563, 19, '@', '±', 'ƕ', '¤', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (564, 19, '±', 'Ω', '@', '¤', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (565, 19, 'Ω', 'ƕ', '@', '±', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (566, 19, 'ƕ', 'Ω', '@', '¤', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (567, 19, '@', '±', '¤', 'Ω', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (568, 19, 'Ω', 'ƕ', '@', '±', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (569, 19, '±', 'ƕ', '¤', '@', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (570, 19, 'ƕ', '±', 'Ω', '¤', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (571, 19, 'Ω', '@', '±', '¤', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (572, 19, '@', '¤', 'Ω', 'ƕ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (573, 19, '@', '±', 'ƕ', '¤', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (574, 19, 'Ω', '¤', '±', '@', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (575, 19, '@', '±', 'ƕ', '¤', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (576, 19, 'Ω', 'ƕ', '¤', '±', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (577, 19, 'Ω', '@', 'ƕ', '¤', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (578, 19, '¤', '±', 'Ω', '@', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (579, 19, '±', 'ƕ', '@', 'Ω', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (580, 19, '@', 'ƕ', 'Ω', '±', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (581, 19, '±', 'ƕ', '¤', 'Ω', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (582, 19, 'ƕ', '¤', '±', '@', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (583, 19, '±', 'ƕ', '¤', 'Ω', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (584, 19, '@', 'Ω', '±', '¤', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (585, 19, 'ƕ', 'Ω', '¤', '@', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (586, 19, '¤', 'Ω', '±', 'ƕ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (587, 19, '±', '@', 'ƕ', '¤', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (588, 19, 'Ω', 'ƕ', '@', '±', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (589, 19, '±', 'ƕ', '¤', 'Ω', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (590, 19, 'Ω', 'ƕ', '¤', '±', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (591, 19, '±', 'ƕ', '@', 'Ω', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (592, 19, 'ƕ', '±', '@', 'Ω', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (593, 19, 'Ω', 'ƕ', '@', '¤', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (594, 19, '@', 'ƕ', '¤', '±', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (595, 19, '±', '@', 'Ω', 'ƕ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (596, 19, '@', '±', '¤', 'ƕ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (597, 19, 'Ω', '@', '±', '¤', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (598, 19, '@', 'ƕ', '¤', 'Ω', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (599, 19, 'Ω', '±', 'ƕ', '¤', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (600, 19, '¤', '@', '±', 'ƕ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (601, 19, '¤', 'Ω', '±', '@', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (602, 19, '¤', '±', 'ƕ', '@', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (603, 19, 'ƕ', 'Ω', '@', '±', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (604, 19, 'Ω', '¤', 'ƕ', '@', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (605, 19, 'ƕ', 'Ω', '±', '¤', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (606, 19, '¤', 'ƕ', 'Ω', '@', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (607, 19, 'Ω', '±', '@', '¤', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (608, 19, 'ƕ', 'Ω', '@', '±', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (609, 19, '±', 'Ω', 'ƕ', '¤', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (610, 20, '§', '©', '±', '¶', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (611, 20, '¶', '§', '±', 'æ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (612, 20, '±', '§', 'æ', '©', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (613, 20, '©', '±', '¶', '§', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (614, 20, '±', '©', 'æ', '§', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (615, 20, '¶', '±', '©', 'æ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (616, 20, '±', '§', 'æ', '¶', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (617, 20, '¶', '©', '§', 'æ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (618, 20, 'æ', '±', '©', '§', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (619, 20, '¶', '§', '±', '©', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (620, 20, '©', '§', 'æ', '¶', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (621, 20, '±', '§', '¶', '©', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (622, 20, '©', '§', 'æ', '¶', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (623, 20, '§', 'æ', '©', '±', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (624, 20, '©', '§', 'æ', '¶', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (625, 20, '±', '¶', '©', 'æ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (626, 20, '§', '¶', 'æ', '±', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (627, 20, 'æ', '¶', '©', '§', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (628, 20, '©', '±', '§', 'æ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (629, 20, '¶', '§', 'æ', '©', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (630, 20, '©', '§', '±', '¶', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (631, 20, 'æ', '©', '¶', '±', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (632, 20, '©', '§', '±', '¶', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (633, 20, '¶', '±', 'æ', '§', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (634, 20, 'æ', '¶', '©', '±', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (635, 20, 'æ', '©', '§', '±', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (636, 20, '§', '¶', '±', '©', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (637, 20, '¶', 'æ', '§', '±', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (638, 20, '§', '¶', '©', 'æ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (639, 20, 'æ', '§', '¶', '±', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (640, 20, '¶', '©', '±', 'æ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (641, 20, '§', '¶', '±', '©', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (642, 20, '©', '¶', '§', 'æ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (643, 20, '§', '©', '¶', 'æ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (644, 20, 'æ', '¶', '§', '±', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (645, 20, 'æ', '±', '©', '¶', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (646, 20, '±', '©', '§', 'æ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (647, 20, '©', '¶', '±', 'æ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (648, 20, '¶', '§', '±', '©', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (649, 20, '§', '¶', '±', 'æ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (650, 20, '±', '©', 'æ', '¶', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (651, 20, '¶', '§', '±', '©', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (652, 20, '©', '§', 'æ', '±', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (653, 20, '¶', '±', '©', 'æ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (654, 20, '±', 'æ', '¶', '§', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (655, 20, '±', '©', '§', 'æ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (656, 20, '¶', 'æ', '©', '±', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (657, 20, '±', '©', '§', 'æ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (658, 20, '¶', '§', 'æ', '©', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (659, 20, '¶', '±', '§', 'æ', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (660, 21, 'ǂ', 'Ǯ', 'ɠ', 'ɮ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (661, 21, 'ɮ', 'ɶ', 'ǂ', 'Ǯ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (662, 21, 'Ǯ', 'ɶ', 'ɠ', 'ǂ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (663, 21, 'ɮ', 'ǂ', 'Ǯ', 'ɠ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (664, 21, 'ǂ', 'ɠ', 'ɮ', 'ɶ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (665, 21, 'ǂ', 'Ǯ', 'ɶ', 'ɠ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (666, 21, 'ɮ', 'ɠ', 'Ǯ', 'ǂ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (667, 21, 'ǂ', 'Ǯ', 'ɶ', 'ɠ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (668, 21, 'ɮ', 'ɶ', 'ɠ', 'Ǯ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (669, 21, 'ɮ', 'ǂ', 'ɶ', 'ɠ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (670, 21, 'ɮ', 'Ǯ', 'ǂ', 'ɠ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (671, 21, 'ɶ', 'ɮ', 'ǂ', 'Ǯ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (672, 21, 'Ǯ', 'ɮ', 'ɶ', 'ɠ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (673, 21, 'ɶ', 'Ǯ', 'ɮ', 'ɠ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (674, 21, 'ɠ', 'ɮ', 'ɶ', 'ǂ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (675, 21, 'ɠ', 'ǂ', 'Ǯ', 'ɮ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (676, 21, 'ǂ', 'Ǯ', 'ɶ', 'ɠ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (677, 21, 'Ǯ', 'ɮ', 'ǂ', 'ɠ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (678, 21, 'ɮ', 'ɶ', 'ǂ', 'Ǯ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (679, 21, 'ɶ', 'ɮ', 'ǂ', 'ɠ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (680, 21, 'ɶ', 'Ǯ', 'ǂ', 'ɮ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (681, 21, 'ɮ', 'ɶ', 'ǂ', 'ɠ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (682, 21, 'ǂ', 'ɶ', 'ɠ', 'Ǯ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (683, 21, 'Ǯ', 'ǂ', 'ɮ', 'ɶ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (684, 21, 'ǂ', 'Ǯ', 'ɠ', 'ɶ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (685, 21, 'ɮ', 'ǂ', 'Ǯ', 'ɠ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (686, 21, 'ǂ', 'ɶ', 'ɠ', 'ɮ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (687, 21, 'ɮ', 'Ǯ', 'ɶ', 'ɠ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (688, 21, 'ɠ', 'ǂ', 'Ǯ', 'ɶ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (689, 21, 'ɮ', 'ɶ', 'ǂ', 'Ǯ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (690, 21, 'Ǯ', 'ɶ', 'ɠ', 'ɮ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (691, 21, 'ǂ', 'ɶ', 'ɮ', 'Ǯ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (692, 21, 'Ǯ', 'ɶ', 'ɠ', 'ɮ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (693, 21, 'ɶ', 'ɠ', 'Ǯ', 'ǂ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (694, 21, 'Ǯ', 'ɶ', 'ɠ', 'ɮ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (695, 21, 'ǂ', 'ɮ', 'Ǯ', 'ɠ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (696, 21, 'ɶ', 'ɮ', 'ɠ', 'ǂ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (697, 21, 'ɠ', 'ɮ', 'Ǯ', 'ɶ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (698, 21, 'Ǯ', 'ǂ', 'ɶ', 'ɠ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (699, 21, 'ɮ', 'ɶ', 'ɠ', 'Ǯ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (700, 21, 'Ǯ', 'ɶ', 'ǂ', 'ɮ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (701, 21, 'ɠ', 'Ǯ', 'ɮ', 'ǂ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (702, 21, 'Ǯ', 'ɶ', 'ǂ', 'ɮ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (703, 21, 'ɮ', 'ǂ', 'ɠ', 'ɶ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (704, 21, 'ɠ', 'ɮ', 'Ǯ', 'ǂ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (705, 21, 'ɠ', 'Ǯ', 'ɶ', 'ǂ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (706, 21, 'ɶ', 'ɮ', 'ǂ', 'Ǯ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (707, 21, 'ɮ', 'ɠ', 'ɶ', 'ǂ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (708, 21, 'ɶ', 'ɮ', 'Ǯ', 'ɠ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (709, 21, 'ɠ', 'ɶ', 'ɮ', 'ǂ', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (710, 23, '»', '< ', '=', '> ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (711, 23, '«', '< ', '> ', '»', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (712, 23, '»', '< ', '=', '> ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (713, 23, '< ', '=', '»', '«', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (714, 23, '»', '< ', '=', '> ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (715, 23, '«', '> ', '»', '=', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (716, 23, '< ', '> ', '=', '«', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (717, 23, '=', '> ', '»', '< ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (718, 23, '»', '«', '< ', '=', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (719, 23, '> ', '< ', '=', '»', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (720, 23, '»', '< ', '«', '> ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (721, 23, '=', '»', '> ', '«', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (722, 23, '»', '< ', '«', '> ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (723, 23, '> ', '«', '=', '< ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (724, 23, '=', '> ', '»', '«', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (725, 23, '=', '»', '< ', '«', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (726, 23, '< ', '> ', '«', '»', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (727, 23, '> ', '=', '< ', '«', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (728, 23, '< ', '> ', '»', '=', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (729, 23, '=', '< ', '> ', '«', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (730, 23, '«', '»', '=', '> ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (731, 23, '> ', '< ', '«', '»', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (732, 23, '»', '< ', '=', '«', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (733, 23, '> ', '«', '»', '=', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (734, 23, '«', '=', '> ', '< ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (735, 23, '«', '»', '< ', '=', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (736, 23, '> ', '=', '»', '«', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (737, 23, '«', '»', '< ', '=', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (738, 23, '> ', '< ', '=', '»', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (739, 23, '> ', '«', '< ', '=', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (740, 23, '> ', '»', '«', '=', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (741, 23, '< ', '> ', '«', '»', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (742, 23, '»', '> ', '< ', '=', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (743, 23, '< ', '»', '> ', '=', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (744, 23, '=', '> ', '< ', '«', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (745, 23, '=', '«', '»', '> ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (746, 23, '«', '»', '< ', '=', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (747, 23, '»', '> ', '«', '=', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (748, 23, '> ', '< ', '«', '»', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (749, 23, '< ', '> ', '«', '=', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (750, 23, '< ', '»', '«', '> ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (751, 23, '> ', '< ', '«', '=', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (752, 23, '«', '< ', '=', '»', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (753, 23, '»', '«', '> ', '< ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (754, 23, '«', '»', '=', '< ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (755, 23, '> ', '«', '»', '=', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (756, 23, '«', '< ', '=', '> ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (757, 23, '> ', '»', '< ', '=', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (758, 23, '=', '«', '»', '< ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (759, 23, '> ', '< ', '«', '»', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (760, 24, 'Ω', 'ƕ', '¤', '±', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (761, 24, '±', 'ƕ', '@', 'Ω', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (762, 24, 'ƕ', '±', '@', 'Ω', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (763, 24, 'Ω', 'ƕ', '@', '¤', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (764, 24, '@', 'ƕ', '¤', '±', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (765, 24, '±', '@', 'Ω', 'ƕ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (766, 24, '@', '±', '¤', 'ƕ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (767, 24, 'Ω', '@', '±', '¤', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (768, 24, '@', 'ƕ', '¤', 'Ω', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (769, 24, 'Ω', '±', 'ƕ', '¤', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (770, 24, '¤', '@', '±', 'ƕ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (771, 24, '¤', 'Ω', '±', '@', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (772, 24, '¤', '±', 'ƕ', '@', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (773, 24, 'ƕ', 'Ω', '@', '±', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (774, 24, 'Ω', '¤', 'ƕ', '@', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (775, 24, 'ƕ', 'Ω', '±', '¤', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (776, 24, '¤', 'ƕ', 'Ω', '@', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (777, 24, 'Ω', '±', '@', '¤', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (778, 24, 'ƕ', 'Ω', '@', '±', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (779, 24, '±', 'Ω', 'ƕ', '¤', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (780, 24, 'Ω', '@', '¤', 'ƕ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (781, 24, '¤', 'Ω', 'ƕ', '@', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (782, 24, '¤', '@', '±', 'Ω', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (783, 24, '@', '±', 'ƕ', '¤', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (784, 24, '±', 'Ω', '@', '¤', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (785, 24, 'Ω', 'ƕ', '@', '±', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (786, 24, 'ƕ', 'Ω', '@', '¤', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (787, 24, '@', '±', '¤', 'Ω', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (788, 24, 'Ω', 'ƕ', '@', '±', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (789, 24, '±', 'ƕ', '¤', '@', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (790, 24, 'ƕ', '±', 'Ω', '¤', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (791, 24, 'Ω', '@', '±', '¤', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (792, 24, '@', '¤', 'Ω', 'ƕ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (793, 24, '@', '±', 'ƕ', '¤', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (794, 24, 'Ω', '¤', '±', '@', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (795, 24, '@', '±', 'ƕ', '¤', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (796, 24, 'Ω', 'ƕ', '¤', '±', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (797, 24, 'Ω', '@', 'ƕ', '¤', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (798, 24, '¤', '±', 'Ω', '@', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (799, 24, '±', 'ƕ', '@', 'Ω', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (800, 24, '@', 'ƕ', 'Ω', '±', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (801, 24, '±', 'ƕ', '¤', 'Ω', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (802, 24, 'ƕ', '¤', '±', '@', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (803, 24, '±', 'ƕ', '¤', 'Ω', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (804, 24, '@', 'Ω', '±', '¤', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (805, 24, 'ƕ', 'Ω', '¤', '@', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (806, 24, '¤', 'Ω', '±', 'ƕ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (807, 24, '±', '@', 'ƕ', '¤', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (808, 24, 'Ω', 'ƕ', '@', '±', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (809, 24, '±', 'ƕ', '¤', 'Ω', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (810, 25, '©', '§', '±', '¶', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (811, 25, 'æ', '©', '¶', '±', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (812, 25, '©', '§', '±', '¶', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (813, 25, '¶', '±', 'æ', '§', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (814, 25, 'æ', '¶', '©', '±', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (815, 25, 'æ', '©', '§', '±', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (816, 25, '§', '¶', '±', '©', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (817, 25, '¶', 'æ', '§', '±', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (818, 25, '§', '¶', '©', 'æ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (819, 25, 'æ', '§', '¶', '±', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (820, 25, '¶', '©', '±', 'æ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (821, 25, '§', '¶', '±', '©', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (822, 25, '©', '¶', '§', 'æ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (823, 25, '§', '©', '¶', 'æ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (824, 25, 'æ', '¶', '§', '±', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (825, 25, 'æ', '±', '©', '¶', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (826, 25, '±', '©', '§', 'æ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (827, 25, '©', '¶', '±', 'æ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (828, 25, '¶', '§', '±', '©', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (829, 25, '§', '¶', '±', 'æ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (830, 25, '±', '©', 'æ', '¶', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (831, 25, '¶', '§', '±', '©', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (832, 25, '©', '§', 'æ', '±', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (833, 25, '¶', '±', '©', 'æ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (834, 25, '±', 'æ', '¶', '§', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (835, 25, '±', '©', '§', 'æ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (836, 25, '¶', 'æ', '©', '±', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (837, 25, '±', '©', '§', 'æ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (838, 25, '¶', '§', 'æ', '©', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (839, 25, '¶', '±', '§', 'æ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (840, 25, '§', '©', '±', '¶', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (841, 25, '¶', '§', '±', 'æ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (842, 25, '±', '§', 'æ', '©', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (843, 25, '©', '±', '¶', '§', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (844, 25, '±', '©', 'æ', '§', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (845, 25, '¶', '±', '©', 'æ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (846, 25, '±', '§', 'æ', '¶', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (847, 25, '¶', '©', '§', 'æ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (848, 25, 'æ', '±', '©', '§', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (849, 25, '¶', '§', '±', '©', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (850, 25, '©', '§', 'æ', '¶', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (851, 25, '±', '§', '¶', '©', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (852, 25, '©', '§', 'æ', '¶', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (853, 25, '§', 'æ', '©', '±', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (854, 25, '©', '§', 'æ', '¶', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (855, 25, '±', '¶', '©', 'æ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (856, 25, '§', '¶', 'æ', '±', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (857, 25, 'æ', '¶', '©', '§', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (858, 25, '©', '±', '§', 'æ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (859, 25, '¶', '§', 'æ', '©', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (860, 26, 'ɶ', 'Ǯ', 'ǂ', 'ɮ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (861, 26, 'ɮ', 'ɶ', 'ǂ', 'ɠ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (862, 26, 'ǂ', 'ɶ', 'ɠ', 'Ǯ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (863, 26, 'Ǯ', 'ǂ', 'ɮ', 'ɶ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (864, 26, 'ǂ', 'Ǯ', 'ɠ', 'ɶ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (865, 26, 'ɮ', 'ǂ', 'Ǯ', 'ɠ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (866, 26, 'ǂ', 'ɶ', 'ɠ', 'ɮ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (867, 26, 'ɮ', 'Ǯ', 'ɶ', 'ɠ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (868, 26, 'ɠ', 'ǂ', 'Ǯ', 'ɶ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (869, 26, 'ɮ', 'ɶ', 'ǂ', 'Ǯ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (870, 26, 'Ǯ', 'ɶ', 'ɠ', 'ɮ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (871, 26, 'ǂ', 'ɶ', 'ɮ', 'Ǯ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (872, 26, 'Ǯ', 'ɶ', 'ɠ', 'ɮ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (873, 26, 'ɶ', 'ɠ', 'Ǯ', 'ǂ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (874, 26, 'Ǯ', 'ɶ', 'ɠ', 'ɮ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (875, 26, 'ǂ', 'ɮ', 'Ǯ', 'ɠ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (876, 26, 'ɶ', 'ɮ', 'ɠ', 'ǂ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (877, 26, 'ɠ', 'ɮ', 'Ǯ', 'ɶ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (878, 26, 'Ǯ', 'ǂ', 'ɶ', 'ɠ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (879, 26, 'ɮ', 'ɶ', 'ɠ', 'Ǯ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (880, 26, 'Ǯ', 'ɶ', 'ǂ', 'ɮ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (881, 26, 'ɠ', 'Ǯ', 'ɮ', 'ǂ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (882, 26, 'Ǯ', 'ɶ', 'ǂ', 'ɮ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (883, 26, 'ɮ', 'ǂ', 'ɠ', 'ɶ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (884, 26, 'ɠ', 'ɮ', 'Ǯ', 'ǂ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (885, 26, 'ɠ', 'Ǯ', 'ɶ', 'ǂ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (886, 26, 'ɶ', 'ɮ', 'ǂ', 'Ǯ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (887, 26, 'ɮ', 'ɠ', 'ɶ', 'ǂ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (888, 26, 'ɶ', 'ɮ', 'Ǯ', 'ɠ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (889, 26, 'ɠ', 'ɶ', 'ɮ', 'ǂ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (890, 26, 'ǂ', 'Ǯ', 'ɠ', 'ɮ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (891, 26, 'ɮ', 'ɶ', 'ǂ', 'Ǯ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (892, 26, 'Ǯ', 'ɶ', 'ɠ', 'ǂ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (893, 26, 'ɮ', 'ǂ', 'Ǯ', 'ɠ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (894, 26, 'ǂ', 'ɠ', 'ɮ', 'ɶ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (895, 26, 'ǂ', 'Ǯ', 'ɶ', 'ɠ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (896, 26, 'ɮ', 'ɠ', 'Ǯ', 'ǂ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (897, 26, 'ǂ', 'Ǯ', 'ɶ', 'ɠ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (898, 26, 'ɮ', 'ɶ', 'ɠ', 'Ǯ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (899, 26, 'ɮ', 'ǂ', 'ɶ', 'ɠ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (900, 26, 'ɮ', 'Ǯ', 'ǂ', 'ɠ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (901, 26, 'ɶ', 'ɮ', 'ǂ', 'Ǯ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (902, 26, 'Ǯ', 'ɮ', 'ɶ', 'ɠ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (903, 26, 'ɶ', 'Ǯ', 'ɮ', 'ɠ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (904, 26, 'ɠ', 'ɮ', 'ɶ', 'ǂ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (905, 26, 'ɠ', 'ǂ', 'Ǯ', 'ɮ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (906, 26, 'ǂ', 'Ǯ', 'ɶ', 'ɠ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (907, 26, 'Ǯ', 'ɮ', 'ǂ', 'ɠ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (908, 26, 'ɮ', 'ɶ', 'ǂ', 'Ǯ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (909, 26, 'ɶ', 'ɮ', 'ǂ', 'ɠ', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (910, 27, 'Ξ', 'Җ', 'ʨ', '҂', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (911, 27, '҂', 'Җ', 'Ϡ', 'ʨ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (912, 27, 'Җ', 'Ϡ', '҂', 'Ξ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (913, 27, '҂', 'Җ', 'Ϡ', 'ʨ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (914, 27, 'Ξ', 'ʨ', '҂', 'Ϡ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (915, 27, 'Җ', 'ʨ', 'Ϡ', 'Ξ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (916, 27, 'Ϡ', 'ʨ', '҂', 'Җ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (917, 27, '҂', 'Ξ', 'Җ', 'Ϡ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (918, 27, 'ʨ', 'Җ', 'Ξ', '҂', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (919, 27, '҂', 'Җ', 'Ϡ', 'ʨ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (920, 27, 'ʨ', 'Җ', 'Ϡ', '҂', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (921, 27, '҂', 'Җ', 'Ξ', 'ʨ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (922, 27, 'Җ', '҂', 'Ξ', 'ʨ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (923, 27, 'ʨ', 'Җ', 'Ξ', 'Ϡ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (924, 27, 'Ξ', 'Җ', 'Ϡ', '҂', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (925, 27, '҂', 'Ξ', 'ʨ', 'Җ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (926, 27, 'Ξ', '҂', 'Ϡ', 'Җ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (927, 27, 'ʨ', 'Ξ', '҂', 'Ϡ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (928, 27, 'Ξ', 'Җ', 'Ϡ', 'ʨ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (929, 27, 'ʨ', '҂', 'Җ', 'Ϡ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (930, 27, 'Ϡ', 'Ξ', '҂', 'Җ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (931, 27, 'Ϡ', 'ʨ', '҂', 'Ξ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (932, 27, 'Ϡ', '҂', 'Җ', 'Ξ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (933, 27, 'Җ', 'ʨ', 'Ξ', '҂', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (934, 27, 'ʨ', 'Ϡ', 'Җ', 'Ξ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (935, 27, 'Җ', 'ʨ', '҂', 'Ϡ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (936, 27, 'Ϡ', 'Җ', 'ʨ', 'Ξ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (937, 27, 'ʨ', '҂', 'Ξ', 'Ϡ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (938, 27, 'Җ', 'ʨ', 'Ξ', '҂', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (939, 27, '҂', 'ʨ', 'Җ', 'Ϡ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (940, 27, 'ʨ', 'Ξ', 'Ϡ', 'Җ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (941, 27, 'Ϡ', 'ʨ', 'Җ', 'Ξ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (942, 27, 'Ϡ', 'Ξ', '҂', 'ʨ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (943, 27, 'Ξ', '҂', 'Җ', 'Ϡ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (944, 27, '҂', 'ʨ', 'Ξ', 'Ϡ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (945, 27, 'ʨ', 'Җ', 'Ξ', '҂', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (946, 27, 'Җ', 'ʨ', 'Ξ', 'Ϡ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (947, 27, 'Ξ', '҂', 'Ϡ', 'ʨ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (948, 27, 'ʨ', 'Җ', 'Ξ', '҂', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (949, 27, '҂', 'Җ', 'Ϡ', 'Ξ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (950, 27, 'Җ', '҂', 'ʨ', 'Ϡ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (951, 27, 'ʨ', 'Ξ', '҂', 'Ϡ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (952, 27, 'Ξ', 'Ϡ', 'ʨ', 'Җ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (953, 27, 'Ξ', '҂', 'Җ', 'Ϡ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (954, 27, 'ʨ', 'Ϡ', '҂', 'Ξ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (955, 27, 'Ξ', '҂', 'Җ', 'Ϡ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (956, 27, 'ʨ', 'Җ', 'Ϡ', '҂', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (957, 27, 'ʨ', 'Ξ', 'Җ', 'Ϡ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (958, 27, 'Ϡ', '҂', 'ʨ', 'Ξ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (959, 27, '҂', 'Җ', 'Ξ', 'ʨ', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (960, 28, '2', '6', '7', '1', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (961, 28, '4', '1', '6', '2', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (962, 28, '2', '6', '7', '1', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (963, 28, '4', '7', '1', '6', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (964, 28, '4', '2', '7', '1', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (965, 28, '4', '6', '2', '1', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (966, 28, '7', '4', '2', '6', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (967, 28, '6', '4', '7', '1', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (968, 28, '7', '6', '4', '1', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (969, 28, '1', '4', '7', '2', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (970, 28, '2', '6', '1', '4', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (971, 28, '4', '7', '2', '6', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (972, 28, '6', '7', '1', '2', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (973, 28, '4', '2', '6', '1', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (974, 28, '2', '1', '4', '7', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (975, 28, '1', '2', '6', '4', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (976, 28, '2', '6', '7', '1', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (977, 28, '6', '4', '2', '1', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (978, 28, '4', '7', '2', '6', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (979, 28, '7', '4', '2', '1', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (980, 28, '7', '6', '2', '4', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (981, 28, '4', '7', '2', '1', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (982, 28, '2', '7', '1', '6', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (983, 28, '6', '2', '4', '7', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (984, 28, '2', '6', '1', '7', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (985, 28, '6', '7', '1', '4', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (986, 28, '2', '7', '4', '6', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (987, 28, '6', '7', '1', '4', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (988, 28, '7', '1', '6', '2', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (989, 28, '6', '7', '1', '4', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (990, 28, '4', '2', '6', '1', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (991, 28, '2', '7', '1', '4', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (992, 28, '4', '6', '7', '1', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (993, 28, '1', '2', '6', '7', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (994, 28, '4', '7', '2', '6', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (995, 28, '2', '4', '6', '1', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (996, 28, '7', '4', '1', '2', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (997, 28, '1', '4', '6', '7', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (998, 28, '6', '2', '7', '1', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (999, 28, '4', '7', '1', '6', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1000, 28, '1', '6', '7', '2', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1001, 28, '7', '4', '2', '6', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1002, 28, '4', '1', '7', '2', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1003, 28, '7', '4', '6', '1', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1004, 28, '1', '7', '4', '2', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1005, 28, '6', '7', '2', '4', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1006, 28, '1', '6', '4', '2', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1007, 28, '6', '7', '2', '4', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1008, 28, '4', '2', '1', '7', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1009, 28, '1', '4', '6', '2', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1010, 29, '2', '3', '7', '0', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1011, 29, '0', '2', '7', '6', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1012, 29, '7', '2', '6', '3', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1013, 29, '3', '7', '0', '2', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1014, 29, '7', '3', '6', '2', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1015, 29, '0', '7', '3', '6', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1016, 29, '7', '2', '6', '0', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1017, 29, '0', '3', '2', '6', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1018, 29, '6', '7', '3', '2', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1019, 29, '0', '2', '7', '3', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1020, 29, '3', '2', '7', '0', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1021, 29, '6', '3', '0', '7', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1022, 29, '3', '2', '7', '0', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1023, 29, '0', '7', '6', '2', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1024, 29, '6', '0', '3', '7', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1025, 29, '6', '3', '2', '7', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1026, 29, '2', '0', '7', '3', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1027, 29, '0', '6', '2', '7', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1028, 29, '2', '0', '3', '6', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1029, 29, '6', '2', '0', '7', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1030, 29, '6', '7', '3', '0', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1031, 29, '7', '3', '2', '6', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1032, 29, '3', '0', '7', '6', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1033, 29, '0', '2', '7', '3', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1034, 29, '2', '0', '7', '6', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1035, 29, '7', '0', '3', '6', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1036, 29, '2', '0', '6', '7', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1037, 29, '6', '0', '3', '2', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1038, 29, '3', '7', '2', '6', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1039, 29, '0', '2', '6', '3', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1040, 29, '7', '3', '2', '6', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1041, 29, '0', '6', '3', '7', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1042, 29, '7', '3', '2', '6', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1043, 29, '0', '2', '6', '3', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1044, 29, '0', '7', '2', '6', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1045, 29, '0', '3', '7', '6', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1046, 29, '2', '0', '7', '3', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1047, 29, '3', '0', '2', '6', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1048, 29, '2', '3', '0', '6', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1049, 29, '6', '0', '2', '7', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1050, 29, '7', '3', '6', '0', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1051, 29, '0', '2', '7', '3', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1052, 29, '3', '2', '6', '7', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1053, 29, '0', '7', '3', '6', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1054, 29, '7', '6', '0', '2', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1055, 29, '3', '2', '6', '0', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1056, 29, '7', '2', '0', '3', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1057, 29, '3', '2', '6', '0', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1058, 29, '2', '6', '3', '7', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1059, 29, '3', '2', '6', '0', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1060, 30, '1', '8', '3', '5', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1061, 30, '1', '7', '3', '8', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1062, 30, '1', '3', '5', '8', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1063, 30, '5', '7', '8', '3', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1064, 30, '7', '1', '5', '8', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1065, 30, '5', '7', '3', '1', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1066, 30, '1', '5', '7', '8', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1067, 30, '7', '3', '8', '1', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1068, 30, '5', '7', '8', '3', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1069, 30, '3', '7', '5', '1', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1070, 30, '7', '8', '1', '5', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1071, 30, '1', '7', '5', '8', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1072, 30, '1', '8', '3', '7', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1073, 30, '8', '3', '5', '1', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1074, 30, '3', '7', '8', '1', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1075, 30, '7', '5', '8', '3', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1076, 30, '5', '7', '8', '1', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1077, 30, '8', '3', '1', '7', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1078, 30, '7', '5', '8', '3', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1079, 30, '3', '5', '1', '8', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1080, 30, '5', '3', '7', '1', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1081, 30, '7', '8', '3', '1', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1082, 30, '8', '1', '7', '5', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1083, 30, '8', '3', '5', '1', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1084, 30, '7', '1', '3', '8', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1085, 30, '8', '3', '5', '1', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1086, 30, '7', '5', '1', '3', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1087, 30, '7', '8', '5', '1', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1088, 30, '1', '3', '7', '8', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1089, 30, '3', '5', '8', '7', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1090, 30, '7', '5', '1', '3', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1091, 30, '3', '5', '8', '7', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1092, 30, '5', '3', '8', '7', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1093, 30, '7', '5', '8', '1', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1094, 30, '8', '5', '1', '3', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1095, 30, '3', '8', '7', '5', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1096, 30, '8', '3', '1', '5', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1097, 30, '7', '8', '3', '1', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1098, 30, '8', '5', '1', '7', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1099, 30, '7', '3', '5', '1', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1100, 30, '8', '5', '7', '3', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1101, 30, '3', '5', '1', '7', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1102, 30, '5', '1', '3', '8', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1103, 30, '3', '5', '1', '7', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1104, 30, '8', '7', '3', '1', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1105, 30, '5', '7', '1', '8', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1106, 30, '1', '7', '3', '5', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1107, 30, '3', '8', '5', '1', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1108, 30, '7', '5', '8', '3', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1109, 30, '3', '5', '1', '7', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1110, 31, '2', '4', '1', '5', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1111, 31, '5', '4', '7', '2', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1112, 31, '4', '5', '7', '2', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1113, 31, '2', '4', '7', '1', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1114, 31, '7', '4', '1', '5', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1115, 31, '4', '2', '1', '7', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1116, 31, '1', '2', '5', '4', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1117, 31, '5', '7', '4', '1', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1118, 31, '2', '4', '7', '5', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1119, 31, '5', '4', '1', '2', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1120, 31, '5', '7', '2', '4', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1121, 31, '7', '5', '1', '4', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1122, 31, '2', '7', '5', '1', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1123, 31, '7', '4', '1', '2', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1124, 31, '2', '5', '4', '1', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1125, 31, '7', '4', '2', '5', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1126, 31, '5', '4', '1', '2', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1127, 31, '4', '1', '5', '7', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1128, 31, '5', '4', '1', '2', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1129, 31, '7', '2', '5', '1', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1130, 31, '2', '7', '1', '4', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1131, 31, '1', '2', '4', '7', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1132, 31, '1', '7', '5', '2', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1133, 31, '7', '5', '4', '1', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1134, 31, '5', '2', '7', '1', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1135, 31, '2', '4', '7', '5', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1136, 31, '4', '2', '7', '1', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1137, 31, '7', '5', '1', '2', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1138, 31, '2', '4', '7', '5', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1139, 31, '5', '4', '1', '7', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1140, 31, '1', '7', '5', '4', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1141, 31, '1', '2', '5', '7', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1142, 31, '1', '5', '4', '7', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1143, 31, '4', '2', '7', '5', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1144, 31, '2', '1', '4', '7', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1145, 31, '4', '2', '5', '1', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1146, 31, '1', '4', '2', '7', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1147, 31, '2', '5', '7', '1', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1148, 31, '4', '2', '7', '5', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1149, 31, '5', '2', '4', '1', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1150, 31, '4', '5', '2', '1', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1151, 31, '2', '7', '5', '1', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1152, 31, '7', '1', '2', '4', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1153, 31, '7', '5', '4', '1', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1154, 31, '2', '1', '5', '7', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1155, 31, '7', '5', '4', '1', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1156, 31, '2', '4', '1', '5', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1157, 31, '2', '7', '4', '1', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1158, 31, '1', '5', '2', '7', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1159, 31, '5', '4', '7', '2', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1160, 32, '9', '3', '6', '8', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1161, 32, '6', '9', '8', '3', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1162, 32, '6', '3', '0', '9', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1163, 32, '3', '0', '8', '6', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1164, 32, '0', '9', '3', '6', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1165, 32, '9', '8', '3', '0', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1166, 32, '8', '9', '3', '6', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1167, 32, '3', '0', '6', '9', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1168, 32, '9', '8', '3', '0', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1169, 32, '0', '8', '6', '3', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1170, 32, '3', '8', '9', '0', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1171, 32, '0', '8', '6', '9', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1172, 32, '8', '6', '0', '3', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1173, 32, '0', '8', '6', '9', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1174, 32, '3', '9', '0', '6', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1175, 32, '8', '9', '6', '3', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1176, 32, '6', '9', '0', '8', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1177, 32, '0', '3', '8', '6', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1178, 32, '9', '8', '3', '0', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1179, 32, '0', '8', '6', '9', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1180, 32, '8', '0', '9', '6', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1181, 32, '9', '3', '0', '6', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1182, 32, '3', '6', '9', '8', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1183, 32, '3', '0', '8', '6', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1184, 32, '9', '6', '0', '3', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1185, 32, '3', '0', '8', '6', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1186, 32, '9', '8', '6', '0', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1187, 32, '9', '3', '8', '6', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1188, 32, '6', '0', '9', '3', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1189, 32, '0', '8', '3', '9', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1190, 32, '9', '8', '6', '0', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1191, 32, '0', '8', '3', '9', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1192, 32, '8', '0', '3', '9', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1193, 32, '9', '8', '3', '6', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1194, 32, '3', '8', '6', '0', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1195, 32, '0', '3', '9', '8', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1196, 32, '3', '0', '6', '8', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1197, 32, '9', '3', '0', '6', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1198, 32, '3', '8', '6', '9', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1199, 32, '9', '0', '8', '6', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1200, 32, '6', '3', '0', '8', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1201, 32, '6', '9', '0', '3', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1202, 32, '6', '0', '8', '3', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1203, 32, '8', '9', '3', '0', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1204, 32, '9', '6', '8', '3', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1205, 32, '8', '9', '0', '6', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1206, 32, '6', '8', '9', '3', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1207, 32, '9', '0', '3', '6', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1208, 32, '8', '9', '3', '0', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1209, 32, '0', '9', '8', '6', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1210, 33, '4', '6', '2', '1', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1211, 33, '7', '4', '2', '6', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1212, 33, '6', '4', '7', '1', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1213, 33, '7', '6', '4', '1', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1214, 33, '1', '4', '7', '2', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1215, 33, '6', '7', '2', '4', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1216, 33, '1', '6', '4', '2', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1217, 33, '6', '7', '2', '4', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1218, 33, '4', '2', '1', '7', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1219, 33, '1', '4', '6', '2', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1220, 33, '1', '2', '6', '4', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1221, 33, '2', '6', '7', '1', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1222, 33, '6', '4', '2', '1', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1223, 33, '4', '7', '2', '6', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1224, 33, '7', '4', '2', '1', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1225, 33, '1', '6', '7', '2', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1226, 33, '7', '4', '2', '6', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1227, 33, '4', '1', '7', '2', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1228, 33, '7', '4', '6', '1', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1229, 33, '1', '7', '4', '2', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1230, 33, '6', '7', '1', '4', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1231, 33, '2', '7', '4', '6', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1232, 33, '6', '7', '1', '4', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1233, 33, '7', '1', '6', '2', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1234, 33, '6', '7', '1', '4', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1235, 33, '2', '4', '6', '1', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1236, 33, '7', '4', '1', '2', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1237, 33, '1', '4', '6', '7', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1238, 33, '6', '2', '7', '1', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1239, 33, '4', '7', '1', '6', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1240, 33, '7', '6', '2', '4', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1241, 33, '4', '7', '2', '1', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1242, 33, '2', '7', '1', '6', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1243, 33, '6', '2', '4', '7', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1244, 33, '2', '6', '1', '7', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1245, 33, '4', '2', '6', '1', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1246, 33, '2', '7', '1', '4', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1247, 33, '4', '6', '7', '1', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1248, 33, '1', '2', '6', '7', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1249, 33, '4', '7', '2', '6', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1250, 33, '2', '6', '1', '4', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1251, 33, '4', '7', '2', '6', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1252, 33, '6', '7', '1', '2', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1253, 33, '4', '2', '6', '1', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1254, 33, '2', '1', '4', '7', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1255, 33, '2', '6', '7', '1', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1256, 33, '4', '1', '6', '2', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1257, 33, '2', '6', '7', '1', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1258, 33, '4', '7', '1', '6', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1259, 33, '4', '2', '7', '1', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1260, 34, '7', '3', '6', '0', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1261, 34, '0', '2', '7', '3', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1262, 34, '3', '2', '6', '7', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1263, 34, '0', '7', '3', '6', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1264, 34, '7', '6', '0', '2', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1265, 34, '7', '3', '2', '6', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1266, 34, '0', '6', '3', '7', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1267, 34, '7', '3', '2', '6', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1268, 34, '0', '2', '6', '3', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1269, 34, '0', '7', '2', '6', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1270, 34, '0', '3', '7', '6', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1271, 34, '2', '0', '7', '3', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1272, 34, '3', '0', '2', '6', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1273, 34, '2', '3', '0', '6', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1274, 34, '6', '0', '2', '7', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1275, 34, '6', '7', '3', '0', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1276, 34, '7', '3', '2', '6', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1277, 34, '3', '0', '7', '6', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1278, 34, '0', '2', '7', '3', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1279, 34, '2', '0', '7', '6', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1280, 34, '3', '2', '7', '0', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1281, 34, '6', '3', '0', '7', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1282, 34, '3', '2', '7', '0', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1283, 34, '0', '7', '6', '2', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1284, 34, '6', '0', '3', '7', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1285, 34, '6', '3', '2', '7', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1286, 34, '2', '0', '7', '3', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1287, 34, '0', '6', '2', '7', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1288, 34, '2', '0', '3', '6', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1289, 34, '6', '2', '0', '7', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1290, 34, '3', '2', '6', '0', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1291, 34, '7', '2', '0', '3', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1292, 34, '3', '2', '6', '0', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1293, 34, '2', '6', '3', '7', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1294, 34, '3', '2', '6', '0', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1295, 34, '7', '0', '3', '6', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1296, 34, '2', '0', '6', '7', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1297, 34, '6', '0', '3', '2', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1298, 34, '3', '7', '2', '6', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1299, 34, '0', '2', '6', '3', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1300, 34, '2', '3', '7', '0', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1301, 34, '0', '2', '7', '6', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1302, 34, '7', '2', '6', '3', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1303, 34, '3', '7', '0', '2', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1304, 34, '7', '3', '6', '2', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1305, 34, '0', '7', '3', '6', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1306, 34, '7', '2', '6', '0', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1307, 34, '0', '3', '2', '6', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1308, 34, '6', '7', '3', '2', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1309, 34, '0', '2', '7', '3', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1310, 35, '7', '5', '1', '3', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1311, 35, '3', '5', '8', '7', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1312, 35, '5', '3', '8', '7', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1313, 35, '7', '5', '8', '1', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1314, 35, '8', '5', '1', '3', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1315, 35, '3', '8', '7', '5', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1316, 35, '8', '3', '1', '5', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1317, 35, '7', '8', '3', '1', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1318, 35, '8', '5', '1', '7', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1319, 35, '7', '3', '5', '1', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1320, 35, '8', '5', '7', '3', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1321, 35, '3', '5', '1', '7', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1322, 35, '5', '1', '3', '8', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1323, 35, '3', '5', '1', '7', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1324, 35, '8', '7', '3', '1', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1325, 35, '5', '7', '1', '8', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1326, 35, '1', '7', '3', '5', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1327, 35, '3', '8', '5', '1', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1328, 35, '7', '5', '8', '3', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1329, 35, '3', '5', '1', '7', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1330, 35, '7', '8', '1', '5', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1331, 35, '1', '7', '5', '8', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1332, 35, '1', '8', '3', '7', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1333, 35, '8', '3', '5', '1', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1334, 35, '3', '7', '8', '1', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1335, 35, '7', '5', '8', '3', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1336, 35, '5', '7', '8', '1', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1337, 35, '8', '3', '1', '7', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1338, 35, '7', '5', '8', '3', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1339, 35, '3', '5', '1', '8', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1340, 35, '1', '8', '3', '5', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1341, 35, '1', '7', '3', '8', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1342, 35, '1', '3', '5', '8', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1343, 35, '5', '7', '8', '3', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1344, 35, '7', '1', '5', '8', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1345, 35, '5', '7', '3', '1', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1346, 35, '1', '5', '7', '8', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1347, 35, '7', '3', '8', '1', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1348, 35, '5', '7', '8', '3', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1349, 35, '3', '7', '5', '1', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1350, 35, '5', '3', '7', '1', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1351, 35, '7', '8', '3', '1', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1352, 35, '8', '1', '7', '5', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1353, 35, '8', '3', '5', '1', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1354, 35, '7', '1', '3', '8', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1355, 35, '8', '3', '5', '1', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1356, 35, '7', '5', '1', '3', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1357, 35, '7', '8', '5', '1', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1358, 35, '1', '3', '7', '8', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1359, 35, '3', '5', '8', '7', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1360, 36, '1', '7', '5', '4', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1361, 36, '1', '2', '5', '7', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1362, 36, '1', '5', '4', '7', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1363, 36, '4', '2', '7', '5', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1364, 36, '2', '1', '4', '7', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1365, 36, '4', '2', '5', '1', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1366, 36, '1', '4', '2', '7', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1367, 36, '2', '5', '7', '1', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1368, 36, '4', '2', '7', '5', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1369, 36, '5', '2', '4', '1', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1370, 36, '7', '4', '2', '5', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1371, 36, '5', '4', '1', '2', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1372, 36, '4', '1', '5', '7', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1373, 36, '5', '4', '1', '2', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1374, 36, '7', '2', '5', '1', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1375, 36, '4', '2', '1', '7', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1376, 36, '1', '2', '5', '4', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1377, 36, '5', '7', '4', '1', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1378, 36, '2', '4', '7', '5', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1379, 36, '5', '4', '1', '2', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1380, 36, '2', '4', '1', '5', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1381, 36, '5', '4', '7', '2', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1382, 36, '4', '5', '7', '2', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1383, 36, '2', '4', '7', '1', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1384, 36, '7', '4', '1', '5', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1385, 36, '5', '7', '2', '4', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1386, 36, '7', '5', '1', '4', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1387, 36, '2', '7', '5', '1', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1388, 36, '7', '4', '1', '2', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1389, 36, '2', '5', '4', '1', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1390, 36, '4', '5', '2', '1', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1391, 36, '2', '7', '5', '1', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1392, 36, '7', '1', '2', '4', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1393, 36, '7', '5', '4', '1', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1394, 36, '2', '1', '5', '7', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1395, 36, '7', '5', '4', '1', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1396, 36, '2', '4', '1', '5', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1397, 36, '2', '7', '4', '1', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1398, 36, '1', '5', '2', '7', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1399, 36, '5', '4', '7', '2', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1400, 36, '2', '7', '1', '4', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1401, 36, '1', '2', '4', '7', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1402, 36, '1', '7', '5', '2', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1403, 36, '7', '5', '4', '1', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1404, 36, '5', '2', '7', '1', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1405, 36, '2', '4', '7', '5', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1406, 36, '4', '2', '7', '1', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1407, 36, '7', '5', '1', '2', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1408, 36, '2', '4', '7', '5', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1409, 36, '5', '4', '1', '7', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1410, 37, '9', '8', '6', '0', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1411, 37, '0', '8', '3', '9', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1412, 37, '8', '0', '3', '9', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1413, 37, '9', '8', '3', '6', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1414, 37, '3', '8', '6', '0', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1415, 37, '0', '3', '9', '8', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1416, 37, '3', '0', '6', '8', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1417, 37, '9', '3', '0', '6', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1418, 37, '3', '8', '6', '9', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1419, 37, '9', '0', '8', '6', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1420, 37, '6', '3', '0', '8', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1421, 37, '6', '9', '0', '3', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1422, 37, '6', '0', '8', '3', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1423, 37, '8', '9', '3', '0', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1424, 37, '9', '6', '8', '3', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1425, 37, '8', '9', '0', '6', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1426, 37, '6', '8', '9', '3', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1427, 37, '9', '0', '3', '6', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1428, 37, '8', '9', '3', '0', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1429, 37, '0', '9', '8', '6', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1430, 37, '3', '8', '9', '0', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1431, 37, '0', '8', '6', '9', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1432, 37, '8', '6', '0', '3', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1433, 37, '0', '8', '6', '9', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1434, 37, '3', '9', '0', '6', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1435, 37, '8', '9', '6', '3', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1436, 37, '6', '9', '0', '8', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1437, 37, '0', '3', '8', '6', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1438, 37, '9', '8', '3', '0', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1439, 37, '0', '8', '6', '9', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1440, 37, '9', '3', '6', '8', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1441, 37, '6', '9', '8', '3', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1442, 37, '6', '3', '0', '9', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1443, 37, '3', '0', '8', '6', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1444, 37, '0', '9', '3', '6', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1445, 37, '9', '8', '3', '0', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1446, 37, '8', '9', '3', '6', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1447, 37, '3', '0', '6', '9', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1448, 37, '9', '8', '3', '0', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1449, 37, '0', '8', '6', '3', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1450, 37, '8', '0', '9', '6', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1451, 37, '9', '3', '0', '6', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1452, 37, '3', '6', '9', '8', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1453, 37, '3', '0', '8', '6', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1454, 37, '9', '6', '0', '3', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1455, 37, '3', '0', '8', '6', 'e', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1456, 37, '9', '8', '6', '0', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1457, 37, '9', '3', '8', '6', 'd', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1458, 37, '6', '0', '9', '3', 'a', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1459, 37, '0', '8', '3', '9', 'c', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1460, 22, 'ʨ', 'Ξ', 'Ϡ', 'Җ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1461, 22, 'Ϡ', 'ʨ', 'Җ', 'Ξ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1462, 22, 'Ϡ', 'Ξ', '҂', 'ʨ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1463, 22, 'Ξ', '҂', 'Җ', 'Ϡ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1464, 22, '҂', 'ʨ', 'Ξ', 'Ϡ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1465, 22, 'ʨ', 'Җ', 'Ξ', '҂', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1466, 22, 'Җ', 'ʨ', 'Ξ', 'Ϡ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1467, 22, 'Ξ', '҂', 'Ϡ', 'ʨ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1468, 22, 'ʨ', 'Җ', 'Ξ', '҂', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1469, 22, '҂', 'Җ', 'Ϡ', 'Ξ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1470, 22, 'Җ', '҂', 'ʨ', 'Ϡ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1471, 22, 'ʨ', 'Ξ', '҂', 'Ϡ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1472, 22, 'Ξ', 'Ϡ', 'ʨ', 'Җ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1473, 22, 'Ξ', '҂', 'Җ', 'Ϡ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1474, 22, 'ʨ', 'Ϡ', '҂', 'Ξ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1475, 22, 'Ξ', '҂', 'Җ', 'Ϡ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1476, 22, 'ʨ', 'Җ', 'Ϡ', '҂', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1477, 22, 'ʨ', 'Ξ', 'Җ', 'Ϡ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1478, 22, 'Ϡ', '҂', 'ʨ', 'Ξ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1479, 22, '҂', 'Җ', 'Ξ', 'ʨ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1480, 22, 'Ξ', 'Җ', 'ʨ', '҂', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1481, 22, '҂', 'Җ', 'Ϡ', 'ʨ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1482, 22, 'Җ', 'Ϡ', '҂', 'Ξ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1483, 22, '҂', 'Җ', 'Ϡ', 'ʨ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1484, 22, 'Ξ', 'ʨ', '҂', 'Ϡ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1485, 22, 'Җ', 'ʨ', 'Ϡ', 'Ξ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1486, 22, 'Ϡ', 'ʨ', '҂', 'Җ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1487, 22, '҂', 'Ξ', 'Җ', 'Ϡ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1488, 22, 'ʨ', 'Җ', 'Ξ', '҂', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1489, 22, '҂', 'Җ', 'Ϡ', 'ʨ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1490, 22, 'ʨ', 'Җ', 'Ϡ', '҂', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1491, 22, '҂', 'Җ', 'Ξ', 'ʨ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1492, 22, 'Җ', '҂', 'Ξ', 'ʨ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1493, 22, 'ʨ', 'Җ', 'Ξ', 'Ϡ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1494, 22, 'Ξ', 'Җ', 'Ϡ', '҂', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1495, 22, '҂', 'Ξ', 'ʨ', 'Җ', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1496, 22, 'Ξ', '҂', 'Ϡ', 'Җ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1497, 22, 'ʨ', 'Ξ', '҂', 'Ϡ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1498, 22, 'Ξ', 'Җ', 'Ϡ', 'ʨ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1499, 22, 'ʨ', '҂', 'Җ', 'Ϡ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1500, 22, 'Ϡ', 'Ξ', '҂', 'Җ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1501, 22, 'Ϡ', 'ʨ', '҂', 'Ξ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1502, 22, 'Ϡ', '҂', 'Җ', 'Ξ', 'a\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1503, 22, 'Җ', 'ʨ', 'Ξ', '҂', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1504, 22, 'ʨ', 'Ϡ', 'Җ', 'Ξ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1505, 22, 'Җ', 'ʨ', '҂', 'Ϡ', 'b\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1506, 22, 'Ϡ', 'Җ', 'ʨ', 'Ξ', 'e\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1507, 22, 'ʨ', '҂', 'Ξ', 'Ϡ', 'd\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1508, 22, 'Җ', 'ʨ', 'Ξ', '҂', 'c\r', '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga_sub_detail` VALUES (1509, 22, '҂', 'ʨ', 'Җ', 'Ϡ', 'b', '2022-11-21 00:00:00', '2022-11-21 00:00:00');

-- ----------------------------
-- Table structure for pengguna
-- ----------------------------
DROP TABLE IF EXISTS `pengguna`;
CREATE TABLE `pengguna`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `no_peserta` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kata_sandi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `level` tinyint(4) NULL DEFAULT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `no_peserta`(`no_peserta`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pengguna
-- ----------------------------
INSERT INTO `pengguna` VALUES (1, 'Administrator', 'admin', '$2y$10$0.YO1eP38ur8IQtMWoZwTe8rDMAoog24U610x5/wLWGC0.fnFDUpu', 1, NULL, '2022-09-01 00:00:00', '2022-11-22 19:10:37');
INSERT INTO `pengguna` VALUES (2, 'Andi Fajar Nugraha', '123456789', '$2y$10$A78If89AYC.C4cpkKT2oNu.hVC4hOmpEcqhpZam3on72Kl6dPruo6', 2, NULL, '2022-09-01 00:00:00', '2022-11-21 18:39:26');

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
INSERT INTO `petunjuk` VALUES (1, 1, '<p><strong>PETUNJUK PENGERJAAN&nbsp;</strong></p><p><strong>&nbsp;</strong></p><p>Sebelum mengerjakan tes, bacalah petunjuk pengerjaan tes ini dengan saksama.</p><p>Anda diminta untuk membaca setiap <strong>Soal</strong> yang ada, lalu pilih satu jawab dari lima pilihan jawaban yang menurut Anda paling benar. Adapun petunjuk untuk mengerjakan soal berpedoman pada beberapa tipe soal yang dicontohkan berikut ini ;</p><figure class=\"table\"><table><tbody><tr><td><strong>Contoh&nbsp; 1.</strong></td><td><p>Mudah&nbsp; =&nbsp; ……..............&nbsp;</p><p>a) Gampang&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;b) Buruk&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;c) Sulit&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;d) Sedih&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;e) Jelek</p></td></tr></tbody></table></figure><p>Pada tipe soal ini Anda diminta untuk mencari satu kata dari pilihan jawaban yang <strong>mempunyai arti sama&nbsp;</strong>atau <strong>yang paling dekat dengan arti kata soal</strong>. Pada contoh soal diatas terdapat kata <i>”Mudah”</i> dan pilihan jawaban yang memiliki arti sama dengan kata mudah adalah kata ”<i>Gampang</i>”&nbsp;maka klik huruf&nbsp; <strong>a</strong>.</p><figure class=\"image\"><img src=\"http://ujian.test/media/image_1666270411.png\"></figure><figure class=\"table\"><table><tbody><tr><td><strong>Contoh 2.</strong></td><td><p>&nbsp; &nbsp; &nbsp;Keras&nbsp; X&nbsp; &nbsp;……..............</p><p>&nbsp; &nbsp; &nbsp;a) Batu&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; b) Lembut&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; c) Licin&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;d) Lemas&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; e) Kaku</p></td></tr></tbody></table></figure><p>Pada tipe soal ini Anda diminta untuk mencari satu kata dari pilihan jawaban yang <strong>mempunyai arti berlawanan&nbsp;</strong>atau <strong>yang paling jauh dengan arti kata soal</strong>. Pada contoh soal diatas terdapat kata \"<i>Keras”</i> dan pilihan jawaban yang memiliki arti berlawanan dengan kata keras adalah kata ”<i>Lembut</i>”,&nbsp;maka klik huruf&nbsp; <strong>b</strong>.</p><figure class=\"image\"><img src=\"http://ujian.test/media/image_1666270419.png\"></figure><figure class=\"table\"><table><tbody><tr><td><strong>Contoh 3.</strong></td><td><p>Basah : Kering&nbsp; &nbsp;= ………&nbsp; :&nbsp; ……….</p><p>a)Baik, Buruk&nbsp; &nbsp; &nbsp;b)Basi, Busuk&nbsp; &nbsp;c)Bagus, Indah&nbsp; &nbsp;d)Tipis, Rentan&nbsp; &nbsp;e)Halus, Lembut</p></td></tr></tbody></table></figure><p>Pada tipe soal ini Anda akan menemui <strong>pasangan kata yang memiliki hubungan</strong>, dan Anda diminta untuk <strong>mencari jawaban pasangan kata yang memiliki hubungan yang sama dengan pasangan kata pada soal</strong>. Pada contoh diatas, hubungan dari kata ”<i>Basah”</i> dan <i>”Kering”</i> adalah lawan katanya, maka dari pilihan jawaban yang memiliki hubungan lawan kata adalah <i>”Baik”&nbsp;</i>dan<i> ”Buruk”.</i> Sesuai dengan pilihan jawaban, maka klik&nbsp;huruf&nbsp; <strong>a</strong>.</p><figure class=\"image\"><img src=\"http://ujian.test/media/image_1666270427.png\"></figure><figure class=\"table\"><table><tbody><tr><td><strong>Contoh 4.</strong></td><td><p>Semua pelamar kerja adalah lulusan S1 .</p><p>Sarjana pasti datang dengan membawa ijazahnya.</p><p>Maka kesimpulan yang dapat ditarik dari kedua kalimat diatas adalah .........</p><p>a) Ada pelamar kerja yang berijazah SMA&nbsp; &nbsp; &nbsp;</p><p>b) Semua pelamar membawa ijazah S1.</p><p>c) Semua pelamar tidak diharuskan membawa ijazah.</p><p>d) Pelamar kerja minimal membawa ijazahnya.&nbsp;</p><p>e) Tidak ada kesimpulan</p></td></tr></tbody></table></figure><p>Pada tipe soal ini, terdapat dua buah kalimat. Tugas Anda adalah <strong>mencari kesimpulan yang paling tepat dari kedua kalimat tersebut</strong>. Pada contoh soal diatas maka jawaban yang benar adalah ”Semua pelamar membawa ijazah S1”, sehingga&nbsp;klik huruf&nbsp; <strong>b</strong>.</p><figure class=\"image\"><img src=\"http://ujian.test/media/image_1666270439.png\"></figure><figure class=\"table\"><table><tbody><tr><td><strong>Contoh 5.</strong></td><td><p>3 x 5 - 2 = ……</p><p>a) 10&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; b) 11&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;c) 12&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; d) 13&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;e) 15</p></td></tr></tbody></table></figure><p>Pada tipe soal ini Anda akan menemui <strong>perhitungan matematika sederhana</strong>. Anda diminta untuk <strong>mencari angka yang tepat</strong> dari pilihan jawaban untuk <strong>melengkapi perhitungan soal sehingga menjadi perhitungan yang benar</strong>. Pada contoh soal diatas, angka 13 adalah angka yang tepat dari hasil perhitungan matematika tersebut. Maka&nbsp;klik huruf&nbsp; <strong>d</strong>.</p><figure class=\"image\"><img src=\"http://ujian.test/media/image_1666270464.png\"></figure><figure class=\"table\"><table><tbody><tr><td><strong>Contoh 6.</strong></td><td><p>Bila Orin membeli sepasang sepatu seharga Rp.50.000,-, berapakah yang harus Orin bayarkan jika ia membeli 3 pasang sepatu?</p><p>a)Rp.50.000,-&nbsp; &nbsp; &nbsp;b)Rp.75.000,-&nbsp; &nbsp;c)Rp.100.000,-&nbsp; &nbsp; d)Rp.120.000,-&nbsp; &nbsp; e)Rp.150.000,-</p></td></tr></tbody></table></figure><p>Pada tipe soal ini Anda akan menemui <strong>soal cerita matematika sederhana</strong>, dan Anda diminta untuk <strong>mencari jawaban yang benar dari perhitungan soal tersebut</strong>. Pada contoh soal cerita diatas, maka perhitungannya adalah Rp. 50.000,- x 3 pasang = Rp. 150.000,-. Sesuai dengan pilihan jawaban, maka klik huruf&nbsp;<strong>e</strong>.</p><figure class=\"image\"><img src=\"http://ujian.test/media/image_1666270471.png\"></figure><figure class=\"table\"><table><tbody><tr><td><strong>Contoh 7.</strong></td><td><p><img src=\"http://ujian.test/media/image_1666270478.png\"></p><p>a) 6, 8&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;b) 7, 9&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;c) 6, 10&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; d) 7, 8&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; e) 6, 9</p></td></tr></tbody></table></figure><p>Pada tipe soal ini, terdapat sebuah gambar deret angka dan tugas anda adalah <strong>melengkapi kotak X dan Y tersebut dengan angka yang tepat sesuai dengan pola yang ada</strong>.&nbsp;</p><p><strong>Pada tipe gambar ini dapat berisi jenis deret angka, huruf maupun kombinasi diantara keduanya dengan tugas melengkapi kotak X dan Y maupun kotak titik titik untuk diisi dengan jawaban yang tepat.</strong></p><p>Pada contoh soal diatas pola deret angka atas (kotak X) antara satu angka dengan lainnya adalah +1, dan pada pola deret angka bawah (kotak Y) adalah +2, maka jawaban yang tepat untuk mengisi kotak X dan Y berturut -turut adalah 6, 12. Oleh karena itu&nbsp;klik huruf&nbsp; <strong>c</strong>.</p><figure class=\"image\"><img src=\"http://ujian.test/media/image_1666270503.png\"></figure><figure class=\"table\"><table><tbody><tr><td><p><strong>Contoh 8.</strong></p><p>&nbsp;</p></td><td><img src=\"http://ujian.test/media/image_1666270539.png\"></td></tr></tbody></table></figure><p>Pada tipe soal ini, terdapat sebuah pola gambar dimana pola gambar kiri dan kanan memiliki persamaan pola pengerjaannya. Tugas anda adalah <strong>melengkapi kotak tanda tanya tersebut dengan gambar yang tepat sehingga menjadi pola yang tepat</strong>.&nbsp;</p><p><strong>Pada tipe gambar ini dapat berisi jenis pola gambar maupun pola angka.</strong></p><p>Pada contoh soal diatas pola gambar kiri adalah gambar dengan jumlah bertambah 1 dengan bentuk yang sama, maka jawaban yang tepat untuk mengisi kotak tanda tanya tersebut adalah dengan bentuk yang sama dan jumlah berambah satu (segitiga berjumlah 4). Oleh karena itu&nbsp;maka klik huruf&nbsp; <strong>c</strong>.</p><figure class=\"image\"><img src=\"http://ujian.test/media/image_1666270515.png\"></figure><p><strong>Apabila Anda telah selesai, periksalah kembali jawaban Anda.&nbsp;</strong></p><p><strong>SELAMAT MENGERJAKAN</strong></p>', NULL, '2022-10-20 12:56:43', '2022-10-20 12:57:08');
INSERT INTO `petunjuk` VALUES (2, 2, '<p><strong>PETUNJUK MENJAWAB</strong></p><p>Bacalah&nbsp;petunjuk cara menjawab&nbsp;dengan&nbsp;saksama.</p><p>Pada&nbsp;tes&nbsp;ini&nbsp;anda&nbsp;akan&nbsp;dihadapkan dengan beberapa persoalan/pernyataan<strong>.&nbsp;</strong>Anda disarankan&nbsp;membaca&nbsp;pernyataan&nbsp;dalam&nbsp;setiap&nbsp;soal dan&nbsp;menjawabnya&nbsp;dengan&nbsp;segera,&nbsp;secara&nbsp;spontan&nbsp;dan&nbsp;jujur&nbsp;sesuai&nbsp;dengan&nbsp;apa&nbsp;yang&nbsp;anda&nbsp;anggap&nbsp;paling&nbsp;sesuai&nbsp;dengan diri anda.&nbsp;</p><p><strong>Berikut adalah cara&nbsp;menjawab soal</strong>:</p><p><i>Klik <strong>A </strong>bila&nbsp;anda&nbsp;merasa pernyataan&nbsp;tersebut&nbsp;<strong>SANGAT TIDAK SESUAI&nbsp;</strong>dengan&nbsp;diri anda.</i></p><p><i>Klik <strong>B </strong>bila&nbsp;anda&nbsp;merasa pernyataan&nbsp;tersebut&nbsp;<strong>TIDAK SESUAI&nbsp;</strong>dengan&nbsp;diri anda.</i></p><p><i>Klik <strong>C&nbsp;</strong>bila&nbsp;anda&nbsp;merasa pernyataan&nbsp;tersebut&nbsp;<strong>SESUAI&nbsp;</strong>dengan diri anda.</i></p><p><i>Klik <strong>D&nbsp;</strong>bila&nbsp;anda&nbsp;merasa pernyataan&nbsp;tersebut&nbsp;<strong>SANGAT SESUAI&nbsp;</strong>dengan&nbsp;diri anda.</i></p><p><strong>CONTOH :</strong></p><figure class=\"table\"><table><tbody><tr><td>&nbsp;</td><td><strong>NO</strong></td><td>&nbsp;</td><td><strong>PERNYATAAN</strong></td><td>&nbsp;</td></tr><tr><td colspan=\"5\">1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dengan&nbsp;kemampuan&nbsp;yang&nbsp;saya&nbsp;miliki,&nbsp;saya&nbsp;turut&nbsp;serta&nbsp;membantu&nbsp;pemerintah&nbsp;dalam&nbsp;penanganan pandemi Covid-19&nbsp;di wilayah&nbsp;saya.</td></tr></tbody></table></figure><p>Jika&nbsp;anda&nbsp;merasa&nbsp;bahwa&nbsp;<strong>Pernyataan&nbsp;</strong>dalam&nbsp;soal&nbsp;tersebut&nbsp;<strong>SESUAI&nbsp;</strong>dengan&nbsp;diri&nbsp;anda,&nbsp;maka&nbsp;klik&nbsp;<strong>jawaban&nbsp;C </strong>dan otomatis jawaban akan tersimpan dan tidak bisa dirubah serta otomatis akan tampil pernyataan nomor berikujtnya. Anda tidak bisa mengerjakan nomor berikutnya sebelum anda menjawab.</p><p><strong>“Selamat&nbsp;Bekerja”</strong></p>', NULL, '2022-10-20 13:02:08', '2022-10-20 13:02:26');
INSERT INTO `petunjuk` VALUES (3, 3, '<p>PETUNJUK PENGERJAAN</p><ul><li>&nbsp;SUBTES INI TERDIRI DARI 10 KOLOM DENGAN MASING-MASING KOLOM DIBERIKAN WAKTU 1 MENIT UNTUK MENJAWAB.</li><li>TUGAS ANDA ADALAH MENCARI ANGKA/HURUF/SIMBOL YANG HILANG/TIDAK ADA PADA PERSOALAN PADA PILIHAN JAWABAN YANG ADA.&nbsp;</li><li>CARA MENJAWABNYA, DENGAN MENEKAN PILIHAN JAWABAN YG DIANGGAP BENAR DAN AKAN LANGSUNG BERPINDAH KE NOMOR SOAL BERIKUTNYA.&nbsp;</li><li>PADA SUBTES INI DIBUTUHKAN KECEPATAN DAN KECERMATAN DALAM MENJAWAB.&nbsp;</li><li>ADA INDIKATOR WAKTU DAN KOLOM DI LAYAR MONITOR MASING-MASING PESERTA</li></ul>', NULL, '2022-10-20 13:02:49', '2022-10-20 13:02:54');

-- ----------------------------
-- Table structure for ruang_kerja
-- ----------------------------
DROP TABLE IF EXISTS `ruang_kerja`;
CREATE TABLE `ruang_kerja`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT ' ',
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
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
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ruang_kerja
-- ----------------------------
INSERT INTO `ruang_kerja` VALUES (53, 'Deskripsi-2022-11-23 10:11:04', 1, 1, 2, 120, 120, 120, '2022-11-23 10:43:04', '2022-11-23 10:43:04');

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
) ENGINE = InnoDB AUTO_INCREMENT = 961 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ruang_kerja_materi_dua
-- ----------------------------
INSERT INTO `ruang_kerja_materi_dua` VALUES (841, 53, 'STABILITAS EMOSI', 'Saat sedang bermain game online di handphone, saya merasa marah bila ada orang yang menanyakan sesuatu karena skor saya jadi hilang.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (842, 53, 'PROSOSIAL', 'Saya  pasti  menyumbang  korban  bencana  lebih  besar  jika  nama  saya  turut  dicatat  dan dipublikasikan di media.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (843, 53, 'PENYESUAIAN DIRI', 'Dalam suatu acara sekolah, saya menunggu orang lain untuk lebih dahulu menyapa agar tidak dikatakan sok akrab.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (844, 53, 'KEPERCAYAAN DIRI', 'Saya hanya berani tampil ketika semua teman memberikan dorongan.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (845, 53, 'MOTIF BERPRESTASI', 'Saya terbiasa belajar pada waktu dini hari saat orang masih terlelap tidur.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (846, 53, 'PENGAMBILAN KEPUTUSAN', 'Saya menyiapkan diri untuk mendaftar Bintara Polri dengan sebaik-baiknya sejak awal masuk SMA', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (847, 53, 'LOYALITAS', 'Ketika ada kegiatan sekolah yang akan dilaksanakan pada hari libur, maka saya mengikuti seluruh kegiatan', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (848, 53, 'KERJASAMA', 'Setiap orang memiliki target pribadi, sehingga rasanya tidak perlu mengurusi pekerjaan rekan satu tim.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (849, 53, 'STABILITAS EMOSI', 'Saat diajak oleh teman-teman sekelas untuk merayakan kelulusan, saya lebih memilih pulang mendahului meskipun dinilai tidak kompak.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (850, 53, 'PROSOSIAL', 'Saya tidak memberikan uang kepada pengemis yang badannya terlihat bugar karena saya anggap ia masih sanggup bekerja.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (851, 53, 'PENYESUAIAN DIRI', 'Saya mudah akrab ketika bertemu dengan orang yang baru saya kenal.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (852, 53, 'KEPERCAYAAN DIRI', 'Banyak hal yang bisa saya banggakan di hadapan teman-teman.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (853, 53, 'MOTIF BERPRESTASI', 'Saya tidak bisa menunda pekerjaan, meskipun harus mengabaikan teman yang datang.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (854, 53, 'PENGAMBILAN KEPUTUSAN', 'Saya kurang yakin dengan berbagai informasi tentang pilihan-pilihan pekerjaan kedinasan dari brosur atau pamflet.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (855, 53, 'LOYALITAS', 'Saya memberikan waktu lebih untuk mengerjakan tugas-tugas kelompok.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (856, 53, 'KERJASAMA', 'Jika  harus  memilih,  saya  akan  mengerjakan  tugas  sekolah  sendirian  daripada  harus melibatkan teman yang lain.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (857, 53, 'STABILITAS EMOSI', 'Ketika berada di suatu acara dengan banyak orang yang belum dikenal, saya merasa gelisah. ', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (858, 53, 'PROSOSIAL', 'Saat terjadi kecelakaan di jalan, saya tidak perlu membantu lagi karena sudah banyak orang yang membantu.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (859, 53, 'PENYESUAIAN DIRI', 'Saya sulit untuk menghafalkan jalan di tempat tinggal saya yang baru.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (860, 53, 'KEPERCAYAAN DIRI', 'Kegagalan yang sering saya hadapi cukup wajar bila membuat saya merasa pesimis.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (861, 53, 'MOTIF BERPRESTASI', 'Menurut saya, mengevaluasi diri akan sia-sia belaka karena pada hakekatnya pekerjaan yang ada hanyalah pengulangan dari pekerjaan sebelumnya.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (862, 53, 'PENGAMBILAN KEPUTUSAN', 'Beberapa pilihan pekerjaan yang ada saat ini sama-sama menarik bagi saya.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (863, 53, 'LOYALITAS', ' Saya  tidak  suka  jika  waktu  istirahat  masih  digunakan  untuk  menyelesaikan  tugas-tugas kelompok', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (864, 53, 'KERJASAMA', 'Ketua tim adalah orang yang paling pantas disalahkan ketika tujuan tim tidak tercapai.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (865, 53, 'STABILITAS EMOSI', 'Saya jengkel kepada teman yang pernah merebut sahabat saya saat di sekolah dulu.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (866, 53, 'PROSOSIAL', 'Banyak teman yang menilai saya dermawan karena saya mudah bila dimintai bantuan.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (867, 53, 'PENYESUAIAN DIRI', 'Saya mengalami kesulitan tidur di komplek rumah yang baru karena tetangga saya cukup berisik.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (868, 53, 'KEPERCAYAAN DIRI', 'Rasanya malu kalau harus menyampaikan pendapat dalam forum rapat di awal waktu.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (869, 53, 'MOTIF BERPRESTASI', 'Buat apa mengerjakan tugas dengan maksimal apabila guru hanya melihat dari prosesnya bukan dari hasil.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (870, 53, 'PENGAMBILAN KEPUTUSAN', 'Saya tidak ragu berkonsultasi dengan banyak orang ketika harus memilih karir yang paling baik untuk masa depan saya.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (871, 53, 'LOYALITAS', 'Saya bersedia mencukupi kekurangan apabila ada kebutuhan kelompok asal sesuai dengan kemampuan saya.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (872, 53, 'KERJASAMA', 'Begitu  tugas  saya  selesai,  saya  akan  meninggalkan  tim  yang  masih  bekerja  dengan pekerjaannya.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (873, 53, 'STABILITAS EMOSI', 'Saya merasa marah dan kesal ketika kalah dalam permainan online.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (874, 53, 'PROSOSIAL', 'Saya merasa senang apabila dapat membantu orang lain, meskipun orang tersebut bersikap buruk terhadap saya.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (875, 53, 'PENYESUAIAN DIRI', 'Ketika berlibur bersama keluarga dan harus menginap di lingkungan baru, saya termasuk yang susah untuk tidur.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (876, 53, 'KEPERCAYAAN DIRI', 'Tidak masalah ketika saya diminta melakukan debat dengan sekolah lain.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (877, 53, 'MOTIF BERPRESTASI', 'Saya merasa sebagian besar pilihan yang saya buat berasal dari pengaruh orang tua saya. ', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (878, 53, 'PENGAMBILAN KEPUTUSAN', 'Saya mengetahui dengan pasti risiko dari setiap keputusan yang saya ambil.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (879, 53, 'LOYALITAS', 'Saya  keberatan  ketika  banyak  hal  yang  tidak  sesuai  antara  keinginan  pribadi  dengan keputusan kelompok.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (880, 53, 'KERJASAMA', 'Demi kemajuan tim, saya rela pendapat saya diabaikan.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (881, 53, 'STABILITAS EMOSI', 'Ketika ada teman yang mengajak berkelahi, maka saya menasehatinya', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (882, 53, 'PROSOSIAL', 'Walau tidak dibayar saya akan ikut andil dalam tim yang bekerja untuk memadamkan api di hutan yang terbakar.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (883, 53, 'PENYESUAIAN DIRI', 'Saya langsung memperkenalkan diri kepada orang-orang di lingkungan yang baru.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (884, 53, 'KEPERCAYAAN DIRI', 'Saya yakin dapat mengerjakan tugas-tugas yang menantang dan sulit walaupun sebagian besar teman sekelas menghindarinya.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (885, 53, 'MOTIF BERPRESTASI', 'Mempelajari metode baru dalam pelajaran hanya menghabiskan waktu.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (886, 53, 'PENGAMBILAN KEPUTUSAN', 'Setiap kali berbelanja, saya sulit memilih model pakaian yang akan saya beli.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (887, 53, 'LOYALITAS', 'Saya akan tetap menjalankan keputusan kelompok meskipun tidak sesuai dengan prinsip diri saya.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (888, 53, 'KERJASAMA', 'Mengerjakan tugas secara bersama-sama justru akan menghambat selesainya pekerjaan. ', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (889, 53, 'STABILITAS EMOSI', 'Saya mudah larut dalam keharuan ketika menonton film yang bertema kesedihan.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (890, 53, 'PROSOSIAL', 'Saya mengumpulkan sumbangan dari para donatur untuk dibagikan kepada orang lain yang berhak.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (891, 53, 'PENYESUAIAN DIRI', 'Apabila saya tidak diterima menjadi anggota Polri, saya akan mencari pekerjaan lainnya.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (892, 53, 'KEPERCAYAAN DIRI', 'Lebih  baik  saya  tidak  berbicara  dihadapan  orang  banyak,  karena  saya  takut  melakukan kesalahan.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (893, 53, 'MOTIF BERPRESTASI', 'Saya merasa tidak semangat ketika tugas sekolah yang diberikan kepada saya terasa sulit. ', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (894, 53, 'PENGAMBILAN KEPUTUSAN', 'Saya merasa sebagian besar keputusan yang saya ambil berasal dari pengaruh orang-orang terdekat saya.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (895, 53, 'LOYALITAS', 'Selama tidak bersifat prinsip, saya mau dipersalahkan akibat kesalahan teman-teman sekelas. ', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (896, 53, 'KERJASAMA', 'Ada kalanya saya tidak ingin diskusi saat menyelesaikan pekerjaan kelompok.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (897, 53, 'STABILITAS EMOSI', 'Saat tidak diterima di sekolah favorit yang saya dambakan, saya mampu menenangkan diri dengan baik.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (898, 53, 'PROSOSIAL', 'Sebagai ketua kelas, saya bertanya langsung kepada teman yang tidak masuk sekolah tentang alasannya agar lebih jelas.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (899, 53, 'PENYESUAIAN DIRI', 'Saya hanya suka dengan kegiatan yang sudah biasa dilakukan.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (900, 53, 'KEPERCAYAAN DIRI', 'Saya senang mencoba dan mempelajari hal-hal baru.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (901, 53, 'MOTIF BERPRESTASI', 'Saya cenderung mengerjakan tugas sekolah melampui harapan dari orang tua dan guru. ', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (902, 53, 'PENGAMBILAN KEPUTUSAN', 'Saya percaya dengan informasi di media massa tentang pilihan-pilihan pekerjaan dengan berbagai karakteristiknya.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (903, 53, 'LOYALITAS', 'Saya akan tetap bersama dengan kelompok walaupun tugas saya sudah selesai.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (904, 53, 'KERJASAMA', 'Dalam sebuah kelompok kerja, setiap anggota berkewajiban memastikan tugas terselesaikan sesuai perintah.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (905, 53, 'STABILITAS EMOSI', 'Ketika menjelang ujian dimulai, saya beberapa kali ke kamar mandi karena merasakan sakit perut.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (906, 53, 'PROSOSIAL', 'Saya juga termasuk korban musibah kali ini, oleh karenanya tidak menjadi masalah bila tidak ikut memberikan bantuan kepada korban lainnya.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (907, 53, 'PENYESUAIAN DIRI', 'Saya cukup terkejut ketika di sekolah ada ujian mendadak  sehingga membuat nilai saya tidak optimal.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (908, 53, 'KEPERCAYAAN DIRI', 'Saya takut mendapatkan ejekan dari teman saat harus melakukan presentasi di depan kelas.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (909, 53, 'MOTIF BERPRESTASI', 'Saya menunda tugas sekolah yang tidak begitu penting walaupun ada waktu senggang. ', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (910, 53, 'PENGAMBILAN KEPUTUSAN', 'Saya  tidak  suka  mencari  alternatif  pilihan  pekerjaan,  karena  prinsip  hidup  saya  adalah mensyukuri apa yang sudah dimiliki.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (911, 53, 'LOYALITAS', 'Saya  menjunjung  tinggi  peraturan  yang  ada  di  kelompok,  walaupun  tidak  ses', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (912, 53, 'KERJASAMA', 'Bekerja dalam kelompok membuat pelaksanaan tugas lebih menyenangkan dan pekerjaan lebih cepat selesai.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (913, 53, 'STABILITAS EMOSI', 'Saya tetap menjalani hobi bersepeda meskipun suasana hati sedang galau.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (914, 53, 'PROSOSIAL', 'Saat libur sekolah, kegiatan saya membantu orang tua', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (915, 53, 'PENYESUAIAN DIRI', 'Untuk menjaga keselamatan diri dan mengurangi kemacetan di jalan raya, saya berangkat ke sekolah dengan menggunakan kendaraan umum', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (916, 53, 'KEPERCAYAAN DIRI', 'Apabila  saya  diminta  menyampaikan  pendapat  dalam  suatu  diskusi,  saya  mempersilakan teman yang lebih pandai terlebih dahulu.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (917, 53, 'MOTIF BERPRESTASI', 'Saya tetap menyelesaikan pekerjaan yang diberikan guru tanpa harus diawasi.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (918, 53, 'PENGAMBILAN KEPUTUSAN', 'Saya  merasa  membutuhkan  kemampuan  lebih  dari orang  lain  dalam  menentukan  pilihan pekerjaan saat ini.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (919, 53, 'LOYALITAS', 'Saya akan menjaga kewibawaan kelompok walaupun hal tersebut menurunkan kewibawaan saya.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (920, 53, 'KERJASAMA', 'Saya lebih menyukai olahraga sepakbola', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (921, 53, 'STABILITAS EMOSI', 'Saya menjadi jengkel ketika mendadak diminta naik ke atas panggung di acara perpisahan sekolah untuk memberi sambutan.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (922, 53, 'PROSOSIAL', 'Saya  datang  untuk  menemani  dan  menghibur  ketika  ada  anak  kelas  lain  yang  sedang mengalami musibah.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (923, 53, 'PENYESUAIAN DIRI', 'Saya sulit tidur karena memikirkan masalah yang tidak kunjung selesai.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (924, 53, 'KEPERCAYAAN DIRI', 'Apapun yang saya capai akan saya hargai sebagai sebuah kesuksesan.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (925, 53, 'MOTIF BERPRESTASI', 'Apapun akibatnya, saya lebih suka memilih tantangan yang memberi kesempatan lebih baik.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (926, 53, 'PENGAMBILAN KEPUTUSAN', 'Saya tidak percaya dengan berbagai informasi tentang alternatif pilihan karir yang diberikan lembaga-lembaga yang kurang terkenal.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (927, 53, 'LOYALITAS', 'Saya mendukung keputusan kelompok walaupun tidak meguntungkan saya.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (928, 53, 'KERJASAMA', 'Hampir setiap saat, saya menghabiskan waktu bersama kelompok belajar di sekolah maupun di luar sekolah.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (929, 53, 'STABILITAS EMOSI', 'Pada  saat  tidak  menemukan  barang  yang  saya  cari,  saya  kerapkali  merasa  kesal  dan mengacak-acak barang-barang yang ada di kamar.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (930, 53, 'PROSOSIAL', 'Saya prihatin bila menyaksikan pengemis anak-anak di jalanan serta bisa marasakan apa yang mereka rasakan.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (931, 53, 'PENYESUAIAN DIRI', 'Saya senang berada di kelas yang baru bersama orang-orang yang baru.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (932, 53, 'KEPERCAYAAN DIRI', 'Setiap mengikuti seleksi, saya merasa ragu untuk dapat lulus.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (933, 53, 'MOTIF BERPRESTASI', 'Saya bisa menunda belajar, karena ada teman lama yang datang.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (934, 53, 'PENGAMBILAN KEPUTUSAN', 'Saya merasa ragu tentang diri pribadi terkait pilihan profesi yang saat ini sedang saya lamar. ', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (935, 53, 'LOYALITAS', 'Kepentingan kelompok/organisasi di atas segalanya.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (936, 53, 'KERJASAMA', 'Saya lebih menyukai jenis permainan yang melibatkan banyak orang dibandingkan dengan game online.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (937, 53, 'STABILITAS EMOSI', 'Saya ikut merasakan bahagia ketika orang lain/teman mendapatkan prestasi.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (938, 53, 'PROSOSIAL', 'Saya memilih memiliki banyak teman di media sosial daripada di dunia nyata.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (939, 53, 'PENYESUAIAN DIRI', 'Saya  merasa tidak berat bangun dini hari untuk proses seleksi ini karena sudah tebiasa melakukannya.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (940, 53, 'KEPERCAYAAN DIRI', 'Saya lebih suka mencoba daripada mengharapkan keberuntungan.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (941, 53, 'MOTIF BERPRESTASI', 'Buat apa memaksakan diri mengerjakan tugas sekolah sampai larut malam jika pada akhirnya kesehatan akan terganggu.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (942, 53, 'PENGAMBILAN KEPUTUSAN', 'Saya yakin kemampuan yang saya miliki cocok dengan keputusan untuk memilih profesi ini.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (943, 53, 'LOYALITAS', 'Rugi rasanya jika saya harus mengorbankan segalanya untuk kelompok, karena kelompok belum tentu membantu saya ketika mengalami masalah.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (944, 53, 'KERJASAMA', 'Saya merasa sulit mencari donatur untuk kegiatan yang akan diselenggarakan oleh sekolah. ', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (945, 53, 'STABILITAS EMOSI', 'Ketika mendapat kritik dalam diskusi kelompok, saya akan segera mengkritiknya kembali.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (946, 53, 'PROSOSIAL', 'Saya merasa iri jika sesuatu hal yang dilakukan itu meringankan beban orang lain, namun bukan kepada saya.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (947, 53, 'PENYESUAIAN DIRI', 'Dalam membentuk kelompok belajar di sekolah, saya lebih suka dengan teman-teman yang sudah akrab agar tidak repot mengaturnya.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (948, 53, 'KEPERCAYAAN DIRI', 'Yang penting mengutarakan pendapat walaupun salah daripada dianggap bodoh.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (949, 53, 'MOTIF BERPRESTASI', 'Saya berupaya menyelesaikan tugas sekolah dengan santai sesuai waktu yang efektif saja.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (950, 53, 'PENGAMBILAN KEPUTUSAN', 'Dukungan dan informasi dari orang terdekat belum mampu membuat saya yakin dengan masa depan saya.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (951, 53, 'LOYALITAS', 'Saya tidak akan membela kelompok saya walaupun ada yang menjatuhkan.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (952, 53, 'KERJASAMA', 'Saya menyukai pekerjaan yang diselesaikan sendiri daripada bersama anggota kelompok. ', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (953, 53, 'STABILITAS EMOSI', 'Saya merasa lebih tenang ketika sudah mempersiapkan segala sesuatunya terlebih dahulu sebelum melakukan aktivitas.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (954, 53, 'PROSOSIAL', 'Menurut saya berbuat baik membutuhkan berbagai macam pertimbangan.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (955, 53, 'PENYESUAIAN DIRI', 'Ketika bertemu dengan orang yang pernah bermasalah dengan saya, saya tetap menyapa :', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (956, 53, 'KEPERCAYAAN DIRI', 'Saat menghadapi soal ujian yang sulit saya merasa tertantang.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (957, 53, 'MOTIF BERPRESTASI', 'Sesulit apapun tugas yang diberikan, saya berupaya sekuat tenaga untuk mencari cara yang tepat dan cepat.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (958, 53, 'PENGAMBILAN KEPUTUSAN', 'Saya yakin dengan pilihan saya sendiri tentang apapun.', '+', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (959, 53, 'LOYALITAS', 'Saya tidak ragu berpindah ke kelompok lain, kalau kelompok saya yang lama sudah tidak membutuhkan.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_dua` VALUES (960, 53, 'KERJASAMA', 'Saya lebih menyukai mengerjakan tugas secara masing-masing.', '-', '2022-11-23 10:43:04', '2022-11-23 10:43:04');

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
) ENGINE = InnoDB AUTO_INCREMENT = 121 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ruang_kerja_materi_satu
-- ----------------------------
INSERT INTO `ruang_kerja_materi_satu` VALUES (106, 53, 'VERBAL\r', '<p>DEPORTASI&nbsp;persamaan&nbsp;kata&nbsp;dari …</p><p>a.&nbsp;Orientasi&nbsp;</p><p>b. Penahanan</p><p>c. Pengecualian</p><p>d.&nbsp;Isolasi</p><p>e. Pengasingan</p>', 'E', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_satu` VALUES (107, 53, 'VERBAL\r', '<p>DISKREDIT persamaan&nbsp;kata dari …</p><p>a.&nbsp;Menghalau</p><p>b.&nbsp;Menepikan</p><p>c.&nbsp;Meminggirkan</p><p>d.&nbsp;Memojokkan</p><p>e.&nbsp;Merusak</p>', 'D', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_satu` VALUES (108, 53, 'VERBAL\r', '<p>MARGIN persamaan&nbsp;dari&nbsp;…</p><p>a.&nbsp;Jeda</p><p>b. Spasi</p><p>c. Sudut</p><p>d.&nbsp;Titik</p><p>e. Batas</p>', 'E', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_satu` VALUES (109, 53, 'LOGIS\r', '<p>Semua&nbsp;siswa&nbsp;bersuka&nbsp;cita&nbsp;jika&nbsp;mereka&nbsp;lulus bersama.&nbsp;Hari ini,mereka&nbsp;lulus bersama.</p><p>Kesimpulan&nbsp;paling&nbsp;tepat&nbsp;yang&nbsp;dapat ditarik berdasarkan&nbsp;kedua&nbsp;pernyataan&nbsp;di atas&nbsp;adalah&nbsp;…</p><p>a. &nbsp;Siswa&nbsp;yang&nbsp;tidak ikut&nbsp;lulus ikut&nbsp;bersuka&nbsp;cita.</p><p>b. &nbsp;Beberapa&nbsp;siswa&nbsp;yang&nbsp;tidak lulus bersama&nbsp;tetap&nbsp;ikut&nbsp;bersuka&nbsp;cita.&nbsp;</p><p>c. &nbsp;Beberapa&nbsp;siswa&nbsp;yang&nbsp;lulus&nbsp;bersama,&nbsp;tetapi sedih.</p><p>d. &nbsp;Tidak ada&nbsp;siswa&nbsp;yang&nbsp;tidak&nbsp;bersuka&nbsp;cita.&nbsp;</p><p>e. &nbsp;Beberapa&nbsp;tidak&nbsp;bersuka&nbsp;cita.</p>', 'D', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_satu` VALUES (110, 53, 'LOGIS\r', '<p>Kota&nbsp;yang&nbsp;indah&nbsp;akan&nbsp;banyak&nbsp;dikunjungi&nbsp;wisatawan.&nbsp;Kota&nbsp;A&nbsp;adalah&nbsp;kota&nbsp;yang&nbsp;indah,&nbsp;sedangkan&nbsp;kota&nbsp;B</p><p>tidak.</p><p>Kesimpulan&nbsp;paling&nbsp;tepat&nbsp;yang&nbsp;dapat ditarik berdasarkan&nbsp;kedua&nbsp;pernyataan&nbsp;di atas&nbsp;adalah&nbsp;…</p><p>a. &nbsp;Kota&nbsp;A&nbsp;dan&nbsp;kota&nbsp;B akan&nbsp;banyak dikunjungi wisatawan.&nbsp;</p><p>b. &nbsp;Kota&nbsp;A&nbsp;dan&nbsp;kota&nbsp;B&nbsp;tidak banyak dikunjungi wisatawan.</p><p>c. &nbsp;Kota&nbsp;A akan&nbsp;tidak&nbsp;banyak dikunjungi wisatawan&nbsp;dan&nbsp;kota&nbsp;B akan&nbsp;banyak&nbsp;dikunjungi&nbsp;wisatawan.</p><p>d. &nbsp;Kota&nbsp;A akan&nbsp;banyak dikunjungi wisatawan&nbsp;dan&nbsp;kota&nbsp;B&nbsp;tidak banyak dikunjungi wisatawan.</p><p>e. &nbsp;Kota&nbsp;A&nbsp;dan&nbsp;kota&nbsp;B&nbsp;sama&nbsp;banyak dikunjungi wisatawan.</p>', 'D', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_satu` VALUES (111, 53, 'LOGIS\r', '<p>Semua &nbsp;yang&nbsp; &nbsp;melakukan&nbsp; &nbsp;kecurangan &nbsp;akan &nbsp;diberi&nbsp; &nbsp;sanksi. &nbsp;Sebagian &nbsp;peserta&nbsp; &nbsp;terbukti &nbsp;melakukan&nbsp;kecurangan.</p><p>Kesimpulan&nbsp;paling&nbsp;tepat&nbsp;yang&nbsp;dapat ditarik berdasarkan&nbsp;kedua&nbsp;pernyataan&nbsp;di atas&nbsp;adalah&nbsp;…</p><p>a. &nbsp;Tidak ada&nbsp;peserta&nbsp;yang&nbsp;terbukti melakukan&nbsp;kecurangan&nbsp;di hukum.&nbsp;</p><p>b. &nbsp;Tidak ada&nbsp;peserta&nbsp;yang dihukum karena&nbsp;melakukan&nbsp;kecurangan.&nbsp;</p><p>c.&nbsp; Peserta&nbsp;yang&nbsp;tidak terbukti&nbsp;melakukan&nbsp;kecurangan&nbsp;dihukum.</p><p>d. &nbsp;Peserta&nbsp;tidak&nbsp;dihukum meskipun&nbsp;melakukan&nbsp;kecurangan.</p><p>e. &nbsp;Peserta&nbsp;yang&nbsp;tidak terbukti&nbsp;melakukan&nbsp;kecurangan&nbsp;tidak dihukum.</p>', 'E', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_satu` VALUES (112, 53, 'PRAKTIS\r', '<p><strong>30&nbsp;: 5&nbsp;+&nbsp;10&nbsp;–&nbsp;8 &nbsp;=&nbsp;</strong>...</p><p>a. 10</p><p>b. 14</p><p>c. 12</p><p>d. 8</p><p>e. 16</p>', 'D', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_satu` VALUES (113, 53, 'PRAKTIS\r', '<p><strong>12&nbsp;x&nbsp;4&nbsp;: 2&nbsp;–&nbsp;15&nbsp;=&nbsp;</strong>...</p><p>a. 8</p><p>b. 9</p><p>c. 10</p><p>d. 11</p><p>e. 12</p>', 'B', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_satu` VALUES (114, 53, 'PRAKTIS\r', '<p><strong>25&nbsp;x&nbsp;25&nbsp;: 25–&nbsp;10&nbsp;=&nbsp;</strong>...</p><p>a. 5</p><p>b.&nbsp;10&nbsp;</p><p>c. 15</p><p>d. 20</p><p>e. 25</p>', 'C', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_satu` VALUES (115, 53, 'VERBAL\r', '<p>GUBRIS lawan kata dari ...</p><p>a. Antipati</p><p>b. Derma</p><p>c. Peduli</p><p>d. Angkuh</p><p>e. Cuek</p>', 'E', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_satu` VALUES (116, 53, 'VERBAL\r', '<p>KOLEKTIF lawan kata dari ...</p><p>a. Kerjasama</p><p>b. Individual</p><p>c. Kumpulan</p><p>d. Bersama</p><p>e. Penerimaan</p>', 'B', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_satu` VALUES (117, 53, 'VERBAL\r', '<p>DEMOSI lawan kata dari ...</p><p>a. Mosi</p><p>b. Pindah</p><p>c. Turun</p><p>d. Tidak Percaya</p><p>e. Promosi</p>', 'E', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_satu` VALUES (118, 53, 'LOGIS\r', '<p>Sam adalah siswa yang paling pandai di kelasnya. Joe kalah pandai dibanding Dan, tetapi Dan sama pandainya sama dengan Ari. Ari lebih pandai dari Dono.<br>Kesimpulan paling tepat yang dapat ditarik berdasarkan kedua pernyataan di atas adalah ...</p><p>a. Dan tidak lebih pandai daripada Joe.&nbsp;</p><p>b. Joe tidak kalah pandai dari Sam.</p><p>c. Ari lebih pandai daripada Sam.</p><p>d. Ari lebih pandai daripada Joe.</p><p>e. Dono lebih pandai daripada Dan.</p>', 'D', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_satu` VALUES (119, 53, 'LOGIS\r', '<p>Salah&nbsp;satu&nbsp;syarat&nbsp;diterimanya&nbsp;sebagai&nbsp;Polisi&nbsp;adalah&nbsp;lulus&nbsp;seleksi.&nbsp;Sam&nbsp;adalah&nbsp;salah&nbsp;satu&nbsp;peserta&nbsp;yang akan&nbsp;mengikuti seleksi.</p><p>Kesimpulan&nbsp;paling&nbsp;tepat&nbsp;yang&nbsp;dapat ditarik berdasarkan&nbsp;kedua&nbsp;pernyataan&nbsp;di atas&nbsp;adalah&nbsp;…</p><p>a. &nbsp;Sam belum tentu&nbsp;diterima&nbsp;sebagai Polisi.&nbsp;</p><p>b. &nbsp;Sam tidak&nbsp;lulus seleksi Polisi.</p><p>c. &nbsp;Sam tidak&nbsp;diterima&nbsp;sebagai&nbsp;Polisi.&nbsp;</p><p>d. &nbsp;Sam diterima&nbsp;sebagai Polisi.</p><p>e. &nbsp;Sam mampu&nbsp;melalui seluruh&nbsp;kegiatan&nbsp;seleksi.</p>', 'A', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_satu` VALUES (120, 53, 'LOGIS\r', '<figure class=\"image\"><img src=\"http://psikotes.admin.test/media/Screenshot 2022-11-22 at 9.19.07 PM_1669123155.png\"></figure>', 'E', '2022-11-23 10:43:04', '2022-11-23 10:43:04');

-- ----------------------------
-- Table structure for ruang_kerja_materi_tiga
-- ----------------------------
DROP TABLE IF EXISTS `ruang_kerja_materi_tiga`;
CREATE TABLE `ruang_kerja_materi_tiga`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ruang_kerja_id` bigint(20) NOT NULL,
  `kolom` tinyint(4) NULL DEFAULT NULL,
  `a` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `b` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `c` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `d` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `e` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ruang_kerja_id`(`ruang_kerja_id`) USING BTREE,
  CONSTRAINT `ruang_kerja_materi_tiga_ibfk_1` FOREIGN KEY (`ruang_kerja_id`) REFERENCES `ruang_kerja` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ruang_kerja_materi_tiga
-- ----------------------------
INSERT INTO `ruang_kerja_materi_tiga` VALUES (43, 53, 1, 'K', 'R', 'Z', 'S', 'T', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga` VALUES (44, 53, 2, 'O', 'G', 'C', 'P', 'Y', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga` VALUES (45, 53, 3, 'X', 'A', 'J', 'B', 'I', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga` VALUES (46, 53, 4, 'E', 'F', 'Q', 'H', 'L', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga` VALUES (47, 53, 5, 'V', 'N', 'M', 'W', 'U', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga` VALUES (48, 53, 6, 'K', 'R', 'Z', 'S', 'T', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga` VALUES (49, 53, 7, 'O', 'G', 'C', 'P', 'Y', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga` VALUES (50, 53, 8, 'X', 'A', 'J', 'B', 'I', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga` VALUES (51, 53, 9, 'E', 'F', 'Q', 'H', 'L', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga` VALUES (52, 53, 10, 'V', 'N', 'M', 'W', 'U', '2022-11-23 10:43:04', '2022-11-23 10:43:04');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2501 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ruang_kerja_materi_tiga_detail
-- ----------------------------
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2001, 43, 'R', 'K', 'S', 'T', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2002, 43, 'Z', 'R', 'S', 'K', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2003, 43, 'K', 'R', 'Z', 'T', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2004, 43, 'Z', 'K', 'R', 'T', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2005, 43, 'T', 'R', 'Z', 'S', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2006, 43, 'K', 'Z', 'S', 'R', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2007, 43, 'T', 'K', 'R', 'S', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2008, 43, 'K', 'Z', 'S', 'R', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2009, 43, 'R', 'S', 'T', 'Z', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2010, 43, 'T', 'R', 'K', 'S', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2011, 43, 'T', 'S', 'K', 'R', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2012, 43, 'S', 'K', 'Z', 'T', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2013, 43, 'K', 'R', 'S', 'T', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2014, 43, 'R', 'Z', 'S', 'K', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2015, 43, 'Z', 'R', 'S', 'T', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2016, 43, 'T', 'K', 'Z', 'S', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2017, 43, 'Z', 'R', 'S', 'K', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2018, 43, 'R', 'T', 'Z', 'S', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2019, 43, 'Z', 'R', 'K', 'T', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2020, 43, 'T', 'Z', 'R', 'S', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2021, 43, 'K', 'Z', 'T', 'R', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2022, 43, 'S', 'Z', 'R', 'K', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2023, 43, 'K', 'Z', 'T', 'R', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2024, 43, 'Z', 'T', 'K', 'S', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2025, 43, 'K', 'Z', 'T', 'R', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2026, 43, 'S', 'R', 'K', 'T', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2027, 43, 'Z', 'R', 'T', 'S', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2028, 43, 'T', 'R', 'K', 'Z', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2029, 43, 'K', 'S', 'Z', 'T', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2030, 43, 'R', 'Z', 'T', 'K', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2031, 43, 'Z', 'K', 'S', 'R', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2032, 43, 'R', 'Z', 'S', 'T', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2033, 43, 'S', 'Z', 'T', 'K', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2034, 43, 'K', 'S', 'R', 'Z', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2035, 43, 'S', 'K', 'T', 'Z', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2036, 43, 'R', 'S', 'K', 'T', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2037, 43, 'S', 'Z', 'T', 'R', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2038, 43, 'R', 'K', 'Z', 'T', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2039, 43, 'T', 'S', 'K', 'Z', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2040, 43, 'R', 'Z', 'S', 'K', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2041, 43, 'S', 'K', 'T', 'R', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2042, 43, 'R', 'Z', 'S', 'K', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2043, 43, 'K', 'Z', 'T', 'S', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2044, 43, 'R', 'S', 'K', 'T', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2045, 43, 'S', 'T', 'R', 'Z', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2046, 43, 'S', 'K', 'Z', 'T', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2047, 43, 'R', 'T', 'K', 'S', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2048, 43, 'S', 'K', 'Z', 'T', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2049, 43, 'R', 'Z', 'T', 'K', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2050, 43, 'R', 'S', 'Z', 'T', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2051, 44, 'Y', 'P', 'C', 'O', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2052, 44, 'O', 'G', 'Y', 'P', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2053, 44, 'P', 'G', 'C', 'Y', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2054, 44, 'O', 'Y', 'P', 'C', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2055, 44, 'Y', 'C', 'O', 'G', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2056, 44, 'Y', 'P', 'G', 'C', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2057, 44, 'O', 'C', 'P', 'Y', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2058, 44, 'Y', 'P', 'G', 'C', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2059, 44, 'O', 'G', 'C', 'P', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2060, 44, 'O', 'Y', 'G', 'C', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2061, 44, 'O', 'P', 'Y', 'C', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2062, 44, 'G', 'O', 'Y', 'P', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2063, 44, 'P', 'O', 'G', 'C', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2064, 44, 'G', 'P', 'O', 'C', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2065, 44, 'C', 'O', 'G', 'Y', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2066, 44, 'C', 'Y', 'P', 'O', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2067, 44, 'Y', 'P', 'G', 'C', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2068, 44, 'P', 'O', 'Y', 'C', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2069, 44, 'O', 'G', 'Y', 'P', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2070, 44, 'G', 'O', 'Y', 'C', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2071, 44, 'P', 'G', 'Y', 'O', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2072, 44, 'C', 'P', 'O', 'Y', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2073, 44, 'P', 'G', 'Y', 'O', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2074, 44, 'O', 'Y', 'C', 'G', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2075, 44, 'C', 'O', 'P', 'Y', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2076, 44, 'C', 'P', 'G', 'Y', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2077, 44, 'G', 'O', 'Y', 'P', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2078, 44, 'O', 'C', 'G', 'Y', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2079, 44, 'G', 'O', 'P', 'C', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2080, 44, 'C', 'G', 'O', 'Y', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2081, 44, 'P', 'G', 'C', 'O', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2082, 44, 'Y', 'G', 'O', 'P', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2083, 44, 'P', 'G', 'C', 'O', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2084, 44, 'G', 'C', 'P', 'Y', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2085, 44, 'P', 'G', 'C', 'O', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2086, 44, 'Y', 'O', 'P', 'C', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2087, 44, 'G', 'O', 'C', 'Y', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2088, 44, 'C', 'O', 'P', 'G', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2089, 44, 'P', 'Y', 'G', 'C', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2090, 44, 'O', 'G', 'C', 'P', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2091, 44, 'G', 'P', 'Y', 'O', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2092, 44, 'O', 'G', 'Y', 'C', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2093, 44, 'Y', 'G', 'C', 'P', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2094, 44, 'P', 'Y', 'O', 'G', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2095, 44, 'Y', 'P', 'C', 'G', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2096, 44, 'O', 'Y', 'P', 'C', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2097, 44, 'Y', 'G', 'C', 'O', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2098, 44, 'O', 'P', 'G', 'C', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2099, 44, 'C', 'Y', 'P', 'G', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2100, 44, 'O', 'G', 'Y', 'P', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2101, 45, 'A', 'X', 'B', 'I', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2102, 45, 'I', 'X', 'J', 'A', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2103, 45, 'X', 'I', 'J', 'A', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2104, 45, 'A', 'X', 'J', 'B', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2105, 45, 'J', 'X', 'B', 'I', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2106, 45, 'I', 'J', 'A', 'X', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2107, 45, 'J', 'I', 'B', 'X', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2108, 45, 'A', 'J', 'I', 'B', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2109, 45, 'J', 'X', 'B', 'A', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2110, 45, 'A', 'I', 'X', 'B', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2111, 45, 'J', 'X', 'A', 'I', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2112, 45, 'I', 'X', 'B', 'A', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2113, 45, 'X', 'B', 'I', 'J', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2114, 45, 'I', 'X', 'B', 'A', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2115, 45, 'J', 'A', 'I', 'B', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2116, 45, 'X', 'A', 'B', 'J', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2117, 45, 'B', 'A', 'I', 'X', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2118, 45, 'I', 'J', 'X', 'B', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2119, 45, 'A', 'X', 'J', 'I', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2120, 45, 'I', 'X', 'B', 'A', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2121, 45, 'A', 'J', 'B', 'X', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2122, 45, 'B', 'A', 'X', 'J', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2123, 45, 'B', 'J', 'I', 'A', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2124, 45, 'J', 'I', 'X', 'B', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2125, 45, 'I', 'A', 'J', 'B', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2126, 45, 'A', 'X', 'J', 'I', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2127, 45, 'X', 'A', 'J', 'B', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2128, 45, 'J', 'I', 'B', 'A', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2129, 45, 'A', 'X', 'J', 'I', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2130, 45, 'I', 'X', 'B', 'J', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2131, 45, 'B', 'J', 'I', 'X', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2132, 45, 'B', 'A', 'I', 'J', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2133, 45, 'B', 'I', 'X', 'J', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2134, 45, 'X', 'A', 'J', 'I', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2135, 45, 'A', 'B', 'X', 'J', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2136, 45, 'X', 'A', 'I', 'B', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2137, 45, 'B', 'X', 'A', 'J', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2138, 45, 'A', 'I', 'J', 'B', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2139, 45, 'X', 'A', 'J', 'I', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2140, 45, 'I', 'A', 'X', 'B', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2141, 45, 'X', 'I', 'A', 'B', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2142, 45, 'A', 'J', 'I', 'B', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2143, 45, 'J', 'B', 'A', 'X', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2144, 45, 'J', 'I', 'X', 'B', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2145, 45, 'A', 'B', 'I', 'J', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2146, 45, 'J', 'I', 'X', 'B', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2147, 45, 'A', 'X', 'B', 'I', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2148, 45, 'A', 'J', 'X', 'B', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2149, 45, 'B', 'I', 'A', 'J', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2150, 45, 'I', 'X', 'J', 'A', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2151, 46, 'F', 'E', 'Q', 'L', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2152, 46, 'F', 'H', 'Q', 'E', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2153, 46, 'F', 'Q', 'L', 'E', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2154, 46, 'L', 'H', 'E', 'Q', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2155, 46, 'H', 'F', 'L', 'E', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2156, 46, 'L', 'H', 'Q', 'F', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2157, 46, 'F', 'L', 'H', 'E', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2158, 46, 'H', 'Q', 'E', 'F', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2159, 46, 'L', 'H', 'E', 'Q', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2160, 46, 'Q', 'H', 'L', 'F', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2161, 46, 'E', 'L', 'H', 'Q', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2162, 46, 'Q', 'L', 'F', 'H', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2163, 46, 'L', 'F', 'Q', 'E', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2164, 46, 'Q', 'L', 'F', 'H', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2165, 46, 'E', 'H', 'Q', 'F', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2166, 46, 'L', 'H', 'F', 'E', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2167, 46, 'F', 'H', 'Q', 'L', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2168, 46, 'Q', 'E', 'L', 'F', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2169, 46, 'H', 'L', 'E', 'Q', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2170, 46, 'Q', 'L', 'F', 'H', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2171, 46, 'H', 'L', 'F', 'Q', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2172, 46, 'Q', 'L', 'E', 'H', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2173, 46, 'L', 'Q', 'E', 'H', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2174, 46, 'H', 'L', 'E', 'F', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2175, 46, 'E', 'L', 'F', 'Q', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2176, 46, 'Q', 'E', 'H', 'L', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2177, 46, 'E', 'Q', 'F', 'L', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2178, 46, 'H', 'E', 'Q', 'F', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2179, 46, 'E', 'L', 'F', 'H', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2180, 46, 'H', 'Q', 'L', 'F', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2181, 46, 'L', 'Q', 'H', 'F', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2182, 46, 'H', 'E', 'Q', 'F', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2183, 46, 'E', 'F', 'H', 'L', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2184, 46, 'E', 'Q', 'L', 'F', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2185, 46, 'H', 'F', 'Q', 'E', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2186, 46, 'E', 'Q', 'L', 'F', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2187, 46, 'H', 'L', 'F', 'Q', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2188, 46, 'H', 'E', 'L', 'F', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2189, 46, 'F', 'Q', 'H', 'E', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2190, 46, 'Q', 'L', 'E', 'H', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2191, 46, 'H', 'E', 'F', 'L', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2192, 46, 'F', 'H', 'L', 'E', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2193, 46, 'F', 'E', 'Q', 'H', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2194, 46, 'E', 'Q', 'L', 'F', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2195, 46, 'Q', 'H', 'E', 'F', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2196, 46, 'H', 'L', 'E', 'Q', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2197, 46, 'L', 'H', 'E', 'F', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2198, 46, 'E', 'Q', 'F', 'H', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2199, 46, 'H', 'L', 'E', 'Q', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2200, 46, 'Q', 'L', 'F', 'E', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2201, 47, 'U', 'V', 'M', 'W', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2202, 47, 'W', 'V', 'N', 'U', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2203, 47, 'V', 'W', 'N', 'U', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2204, 47, 'U', 'V', 'N', 'M', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2205, 47, 'N', 'V', 'M', 'W', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2206, 47, 'W', 'N', 'U', 'V', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2207, 47, 'N', 'W', 'M', 'V', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2208, 47, 'U', 'N', 'W', 'M', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2209, 47, 'N', 'V', 'M', 'U', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2210, 47, 'U', 'W', 'V', 'M', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2211, 47, 'M', 'N', 'W', 'V', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2212, 47, 'M', 'U', 'W', 'N', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2213, 47, 'M', 'W', 'V', 'N', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2214, 47, 'V', 'U', 'N', 'W', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2215, 47, 'U', 'M', 'V', 'N', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2216, 47, 'V', 'U', 'W', 'M', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2217, 47, 'M', 'V', 'U', 'N', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2218, 47, 'U', 'W', 'N', 'M', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2219, 47, 'V', 'U', 'N', 'W', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2220, 47, 'W', 'U', 'V', 'M', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2221, 47, 'N', 'V', 'U', 'W', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2222, 47, 'W', 'V', 'M', 'U', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2223, 47, 'V', 'M', 'W', 'N', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2224, 47, 'W', 'V', 'M', 'U', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2225, 47, 'N', 'U', 'W', 'M', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2226, 47, 'V', 'U', 'M', 'N', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2227, 47, 'M', 'U', 'W', 'V', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2228, 47, 'W', 'N', 'V', 'M', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2229, 47, 'U', 'V', 'N', 'W', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2230, 47, 'W', 'V', 'M', 'U', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2231, 47, 'U', 'N', 'M', 'V', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2232, 47, 'M', 'U', 'V', 'N', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2233, 47, 'M', 'N', 'W', 'U', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2234, 47, 'N', 'W', 'V', 'M', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2235, 47, 'W', 'U', 'N', 'M', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2236, 47, 'U', 'V', 'N', 'W', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2237, 47, 'V', 'U', 'N', 'M', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2238, 47, 'N', 'W', 'M', 'U', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2239, 47, 'U', 'V', 'N', 'W', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2240, 47, 'W', 'V', 'M', 'N', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2241, 47, 'V', 'W', 'U', 'M', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2242, 47, 'U', 'N', 'W', 'M', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2243, 47, 'N', 'M', 'U', 'V', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2244, 47, 'N', 'W', 'V', 'M', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2245, 47, 'U', 'M', 'W', 'N', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2246, 47, 'N', 'W', 'V', 'M', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2247, 47, 'U', 'V', 'M', 'W', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2248, 47, 'U', 'N', 'V', 'M', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2249, 47, 'M', 'W', 'U', 'N', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2250, 47, 'W', 'V', 'N', 'U', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2251, 48, 'S', 'K', 'Z', 'T', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2252, 48, 'R', 'T', 'K', 'S', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2253, 48, 'S', 'K', 'Z', 'T', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2254, 48, 'R', 'Z', 'T', 'K', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2255, 48, 'R', 'S', 'Z', 'T', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2256, 48, 'R', 'K', 'S', 'T', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2257, 48, 'Z', 'R', 'S', 'K', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2258, 48, 'K', 'R', 'Z', 'T', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2259, 48, 'Z', 'K', 'R', 'T', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2260, 48, 'T', 'R', 'Z', 'S', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2261, 48, 'S', 'K', 'T', 'R', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2262, 48, 'R', 'Z', 'S', 'K', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2263, 48, 'K', 'Z', 'T', 'S', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2264, 48, 'R', 'S', 'K', 'T', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2265, 48, 'S', 'T', 'R', 'Z', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2266, 48, 'T', 'S', 'K', 'R', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2267, 48, 'S', 'K', 'Z', 'T', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2268, 48, 'K', 'R', 'S', 'T', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2269, 48, 'R', 'Z', 'S', 'K', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2270, 48, 'Z', 'R', 'S', 'T', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2271, 48, 'Z', 'K', 'S', 'R', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2272, 48, 'R', 'Z', 'S', 'T', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2273, 48, 'S', 'Z', 'T', 'K', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2274, 48, 'K', 'S', 'R', 'Z', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2275, 48, 'S', 'K', 'T', 'Z', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2276, 48, 'K', 'Z', 'T', 'R', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2277, 48, 'S', 'Z', 'R', 'K', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2278, 48, 'K', 'Z', 'T', 'R', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2279, 48, 'Z', 'T', 'K', 'S', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2280, 48, 'K', 'Z', 'T', 'R', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2281, 48, 'R', 'S', 'K', 'T', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2282, 48, 'S', 'Z', 'T', 'R', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2283, 48, 'R', 'K', 'Z', 'T', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2284, 48, 'T', 'S', 'K', 'Z', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2285, 48, 'R', 'Z', 'S', 'K', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2286, 48, 'S', 'R', 'K', 'T', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2287, 48, 'Z', 'R', 'T', 'S', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2288, 48, 'T', 'R', 'K', 'Z', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2289, 48, 'K', 'S', 'Z', 'T', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2290, 48, 'R', 'Z', 'T', 'K', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2291, 48, 'T', 'K', 'Z', 'S', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2292, 48, 'Z', 'R', 'S', 'K', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2293, 48, 'R', 'T', 'Z', 'S', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2294, 48, 'Z', 'R', 'K', 'T', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2295, 48, 'T', 'Z', 'R', 'S', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2296, 48, 'K', 'Z', 'S', 'R', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2297, 48, 'T', 'K', 'R', 'S', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2298, 48, 'K', 'Z', 'S', 'R', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2299, 48, 'R', 'S', 'T', 'Z', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2300, 48, 'T', 'R', 'K', 'S', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2301, 49, 'G', 'P', 'Y', 'O', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2302, 49, 'O', 'G', 'Y', 'C', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2303, 49, 'Y', 'G', 'C', 'P', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2304, 49, 'P', 'Y', 'O', 'G', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2305, 49, 'Y', 'P', 'C', 'G', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2306, 49, 'O', 'Y', 'P', 'C', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2307, 49, 'Y', 'G', 'C', 'O', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2308, 49, 'O', 'P', 'G', 'C', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2309, 49, 'C', 'Y', 'P', 'G', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2310, 49, 'O', 'G', 'Y', 'P', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2311, 49, 'P', 'G', 'Y', 'O', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2312, 49, 'C', 'P', 'O', 'Y', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2313, 49, 'P', 'G', 'Y', 'O', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2314, 49, 'O', 'Y', 'C', 'G', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2315, 49, 'C', 'O', 'P', 'Y', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2316, 49, 'C', 'P', 'G', 'Y', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2317, 49, 'G', 'O', 'Y', 'P', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2318, 49, 'O', 'C', 'G', 'Y', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2319, 49, 'G', 'O', 'P', 'C', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2320, 49, 'C', 'G', 'O', 'Y', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2321, 49, 'C', 'Y', 'P', 'O', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2322, 49, 'Y', 'P', 'G', 'C', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2323, 49, 'P', 'O', 'Y', 'C', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2324, 49, 'O', 'G', 'Y', 'P', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2325, 49, 'G', 'O', 'Y', 'C', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2326, 49, 'Y', 'O', 'P', 'C', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2327, 49, 'G', 'O', 'C', 'Y', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2328, 49, 'C', 'O', 'P', 'G', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2329, 49, 'P', 'Y', 'G', 'C', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2330, 49, 'O', 'G', 'C', 'P', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2331, 49, 'Y', 'P', 'G', 'C', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2332, 49, 'O', 'C', 'P', 'Y', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2333, 49, 'Y', 'P', 'G', 'C', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2334, 49, 'O', 'G', 'C', 'P', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2335, 49, 'O', 'Y', 'G', 'C', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2336, 49, 'O', 'P', 'Y', 'C', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2337, 49, 'G', 'O', 'Y', 'P', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2338, 49, 'P', 'O', 'G', 'C', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2339, 49, 'G', 'P', 'O', 'C', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2340, 49, 'C', 'O', 'G', 'Y', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2341, 49, 'Y', 'P', 'C', 'O', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2342, 49, 'O', 'G', 'Y', 'P', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2343, 49, 'P', 'G', 'C', 'Y', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2344, 49, 'O', 'Y', 'P', 'C', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2345, 49, 'Y', 'C', 'O', 'G', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2346, 49, 'P', 'G', 'C', 'O', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2347, 49, 'Y', 'G', 'O', 'P', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2348, 49, 'P', 'G', 'C', 'O', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2349, 49, 'G', 'C', 'P', 'Y', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2350, 49, 'P', 'G', 'C', 'O', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2351, 50, 'B', 'J', 'I', 'X', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2352, 50, 'B', 'A', 'I', 'J', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2353, 50, 'B', 'I', 'X', 'J', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2354, 50, 'X', 'A', 'J', 'I', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2355, 50, 'A', 'B', 'X', 'J', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2356, 50, 'X', 'A', 'I', 'B', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2357, 50, 'B', 'X', 'A', 'J', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2358, 50, 'A', 'I', 'J', 'B', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2359, 50, 'X', 'A', 'J', 'I', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2360, 50, 'I', 'A', 'X', 'B', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2361, 50, 'A', 'J', 'B', 'X', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2362, 50, 'B', 'A', 'X', 'J', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2363, 50, 'B', 'J', 'I', 'A', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2364, 50, 'J', 'I', 'X', 'B', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2365, 50, 'I', 'A', 'J', 'B', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2366, 50, 'A', 'X', 'J', 'I', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2367, 50, 'X', 'A', 'J', 'B', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2368, 50, 'J', 'I', 'B', 'A', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2369, 50, 'A', 'X', 'J', 'I', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2370, 50, 'I', 'X', 'B', 'J', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2371, 50, 'X', 'I', 'A', 'B', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2372, 50, 'A', 'J', 'I', 'B', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2373, 50, 'J', 'B', 'A', 'X', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2374, 50, 'J', 'I', 'X', 'B', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2375, 50, 'A', 'B', 'I', 'J', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2376, 50, 'J', 'I', 'X', 'B', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2377, 50, 'A', 'X', 'B', 'I', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2378, 50, 'A', 'J', 'X', 'B', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2379, 50, 'B', 'I', 'A', 'J', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2380, 50, 'I', 'X', 'J', 'A', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2381, 50, 'A', 'X', 'B', 'I', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2382, 50, 'I', 'X', 'J', 'A', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2383, 50, 'X', 'I', 'J', 'A', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2384, 50, 'A', 'X', 'J', 'B', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2385, 50, 'J', 'X', 'B', 'I', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2386, 50, 'I', 'J', 'A', 'X', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2387, 50, 'J', 'I', 'B', 'X', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2388, 50, 'A', 'J', 'I', 'B', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2389, 50, 'J', 'X', 'B', 'A', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2390, 50, 'A', 'I', 'X', 'B', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2391, 50, 'J', 'X', 'A', 'I', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2392, 50, 'I', 'X', 'B', 'A', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2393, 50, 'X', 'B', 'I', 'J', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2394, 50, 'I', 'X', 'B', 'A', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2395, 50, 'J', 'A', 'I', 'B', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2396, 50, 'X', 'A', 'B', 'J', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2397, 50, 'B', 'A', 'I', 'X', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2398, 50, 'I', 'J', 'X', 'B', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2399, 50, 'A', 'X', 'J', 'I', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2400, 50, 'I', 'X', 'B', 'A', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2401, 51, 'H', 'L', 'F', 'Q', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2402, 51, 'Q', 'L', 'E', 'H', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2403, 51, 'L', 'Q', 'E', 'H', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2404, 51, 'H', 'L', 'E', 'F', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2405, 51, 'E', 'L', 'F', 'Q', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2406, 51, 'L', 'H', 'F', 'E', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2407, 51, 'F', 'H', 'Q', 'L', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2408, 51, 'Q', 'E', 'L', 'F', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2409, 51, 'H', 'L', 'E', 'Q', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2410, 51, 'Q', 'L', 'F', 'H', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2411, 51, 'Q', 'E', 'H', 'L', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2412, 51, 'E', 'Q', 'F', 'L', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2413, 51, 'H', 'E', 'Q', 'F', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2414, 51, 'E', 'L', 'F', 'H', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2415, 51, 'H', 'Q', 'L', 'F', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2416, 51, 'E', 'L', 'H', 'Q', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2417, 51, 'Q', 'L', 'F', 'H', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2418, 51, 'L', 'F', 'Q', 'E', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2419, 51, 'Q', 'L', 'F', 'H', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2420, 51, 'E', 'H', 'Q', 'F', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2421, 51, 'H', 'E', 'F', 'L', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2422, 51, 'F', 'H', 'L', 'E', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2423, 51, 'F', 'E', 'Q', 'H', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2424, 51, 'E', 'Q', 'L', 'F', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2425, 51, 'Q', 'H', 'E', 'F', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2426, 51, 'H', 'L', 'E', 'Q', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2427, 51, 'L', 'H', 'E', 'F', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2428, 51, 'E', 'Q', 'F', 'H', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2429, 51, 'H', 'L', 'E', 'Q', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2430, 51, 'Q', 'L', 'F', 'E', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2431, 51, 'F', 'E', 'Q', 'L', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2432, 51, 'F', 'H', 'Q', 'E', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2433, 51, 'F', 'Q', 'L', 'E', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2434, 51, 'L', 'H', 'E', 'Q', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2435, 51, 'H', 'F', 'L', 'E', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2436, 51, 'L', 'H', 'Q', 'F', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2437, 51, 'F', 'L', 'H', 'E', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2438, 51, 'H', 'Q', 'E', 'F', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2439, 51, 'L', 'H', 'E', 'Q', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2440, 51, 'Q', 'H', 'L', 'F', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2441, 51, 'L', 'Q', 'H', 'F', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2442, 51, 'H', 'E', 'Q', 'F', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2443, 51, 'E', 'F', 'H', 'L', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2444, 51, 'E', 'Q', 'L', 'F', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2445, 51, 'H', 'F', 'Q', 'E', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2446, 51, 'E', 'Q', 'L', 'F', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2447, 51, 'H', 'L', 'F', 'Q', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2448, 51, 'H', 'E', 'L', 'F', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2449, 51, 'F', 'Q', 'H', 'E', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2450, 51, 'Q', 'L', 'E', 'H', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2451, 52, 'U', 'N', 'M', 'V', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2452, 52, 'M', 'U', 'V', 'N', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2453, 52, 'M', 'N', 'W', 'U', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2454, 52, 'N', 'W', 'V', 'M', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2455, 52, 'W', 'U', 'N', 'M', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2456, 52, 'U', 'V', 'N', 'W', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2457, 52, 'V', 'U', 'N', 'M', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2458, 52, 'N', 'W', 'M', 'U', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2459, 52, 'U', 'V', 'N', 'W', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2460, 52, 'W', 'V', 'M', 'N', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2461, 52, 'N', 'V', 'U', 'W', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2462, 52, 'W', 'V', 'M', 'U', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2463, 52, 'V', 'M', 'W', 'N', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2464, 52, 'W', 'V', 'M', 'U', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2465, 52, 'N', 'U', 'W', 'M', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2466, 52, 'V', 'U', 'M', 'N', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2467, 52, 'M', 'U', 'W', 'V', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2468, 52, 'W', 'N', 'V', 'M', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2469, 52, 'U', 'V', 'N', 'W', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2470, 52, 'W', 'V', 'M', 'U', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2471, 52, 'V', 'W', 'U', 'M', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2472, 52, 'U', 'N', 'W', 'M', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2473, 52, 'N', 'M', 'U', 'V', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2474, 52, 'N', 'W', 'V', 'M', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2475, 52, 'U', 'M', 'W', 'N', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2476, 52, 'N', 'W', 'V', 'M', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2477, 52, 'U', 'V', 'M', 'W', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2478, 52, 'U', 'N', 'V', 'M', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2479, 52, 'M', 'W', 'U', 'N', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2480, 52, 'W', 'V', 'N', 'U', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2481, 52, 'U', 'V', 'M', 'W', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2482, 52, 'W', 'V', 'N', 'U', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2483, 52, 'V', 'W', 'N', 'U', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2484, 52, 'U', 'V', 'N', 'M', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2485, 52, 'N', 'V', 'M', 'W', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2486, 52, 'W', 'N', 'U', 'V', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2487, 52, 'N', 'W', 'M', 'V', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2488, 52, 'U', 'N', 'W', 'M', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2489, 52, 'N', 'V', 'M', 'U', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2490, 52, 'U', 'W', 'V', 'M', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2491, 52, 'M', 'N', 'W', 'V', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2492, 52, 'M', 'U', 'W', 'N', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2493, 52, 'M', 'W', 'V', 'N', 'e', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2494, 52, 'V', 'U', 'N', 'W', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2495, 52, 'U', 'M', 'V', 'N', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2496, 52, 'V', 'U', 'W', 'M', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2497, 52, 'M', 'V', 'U', 'N', 'd', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2498, 52, 'U', 'W', 'N', 'M', 'a', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2499, 52, 'V', 'U', 'N', 'W', 'c', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_materi_tiga_detail` VALUES (2500, 52, 'W', 'U', 'V', 'M', 'b', '2022-11-23 10:43:04', '2022-11-23 10:43:04');

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
  INDEX `ruang_kerja_id`(`ruang_kerja_id`) USING BTREE,
  UNIQUE INDEX `nomor`(`nomor`) USING BTREE,
  CONSTRAINT `ruang_kerja_peserta_ibfk_1` FOREIGN KEY (`ruang_kerja_id`) REFERENCES `ruang_kerja` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1956 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ruang_kerja_peserta
-- ----------------------------
INSERT INTO `ruang_kerja_peserta` VALUES (1636, 53, 2211231011041, 'Andi', '$2y$10$uG4vn3l0oObBNYAzNkVWo.xClyULBngZdMWykjOCO73QVZ15//4vm', '101104', '2022-11-23 10:43:04', '2022-11-23 12:51:23');
INSERT INTO `ruang_kerja_peserta` VALUES (1637, 53, 2211231011042, 'Fajar', '$2y$10$DBqSMBnXR0DMJV391oDQouH6iyelp9UJjvBK82/7sZaON2g4Taqqa', '101104', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_peserta` VALUES (1638, 53, 2211231011043, 'Nugraha', '$2y$10$Wqkuc.kE64k3q9dw7Ga/.unSTvuRNtswdlCr//7HuHMgijQP6Dfaq', '101104', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_peserta` VALUES (1639, 53, 2211231011044, 'Andi', '$2y$10$5DP1NW9mHkr0rAK.kDzCGu.vET8X/ltfeXKpWcWLP2j7WJlhBRPRC', '101104', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_peserta` VALUES (1640, 53, 2211231011045, 'Fajar', '$2y$10$lQLLLvtkq6WnUzTro7S/I.A8PxsEN7MGdCcvOLnWJNNoydj4EbHCy', '101104', '2022-11-23 10:43:04', '2022-11-23 10:43:04');
INSERT INTO `ruang_kerja_peserta` VALUES (1641, 53, 2211231011046, 'Nugraha', '$2y$10$0Szdcy4i4L3SR.eeMuM94O4SKeT1Iqu0jRPRKtyTmlee6P4DpBZ76', '101105', '2022-11-23 10:43:05', '2022-11-23 10:43:05');
INSERT INTO `ruang_kerja_peserta` VALUES (1642, 53, 2211231011057, 'Andi', '$2y$10$Kvk1L4qnLvda3K5F3twqDOBBVIj7HdnjV.uLa.KsFAcuf..f4NKc2', '101105', '2022-11-23 10:43:05', '2022-11-23 10:43:05');
INSERT INTO `ruang_kerja_peserta` VALUES (1643, 53, 2211231011058, 'Fajar', '$2y$10$zHz1o46BCKcavI62awIvk.5izjPSKrz48OiIzVv8I9CLQAx8G6itG', '101105', '2022-11-23 10:43:05', '2022-11-23 10:43:05');
INSERT INTO `ruang_kerja_peserta` VALUES (1644, 53, 2211231011059, 'Nugraha', '$2y$10$cO/sKko1sMP/02mA80OywOWyVULEbxF3v8LG2nU3BsiHwuy1p7wri', '101105', '2022-11-23 10:43:05', '2022-11-23 10:43:05');
INSERT INTO `ruang_kerja_peserta` VALUES (1645, 53, 22112310110510, 'Andi', '$2y$10$FAtnTA23BUQxc6bfaMxxnuGGJLy77gq5YUs0yKk3Bi.RXiSTqXMuO', '101105', '2022-11-23 10:43:05', '2022-11-23 10:43:05');
INSERT INTO `ruang_kerja_peserta` VALUES (1646, 53, 22112310110511, 'Fajar', '$2y$10$f5IV64YV9LM1Jw9.EnPvietZaC11/qym6bgOPLO0miObno02OJ1YK', '101105', '2022-11-23 10:43:05', '2022-11-23 10:43:05');
INSERT INTO `ruang_kerja_peserta` VALUES (1647, 53, 22112310110512, 'Nugraha', '$2y$10$L7wMBT7y7vO.DV7tyZSm5.0U/6MF/j7e.zOHv0Vhb22JPI80bAjKO', '101105', '2022-11-23 10:43:05', '2022-11-23 10:43:05');
INSERT INTO `ruang_kerja_peserta` VALUES (1648, 53, 22112310110513, 'Andi', '$2y$10$HJI1i4g0c6nhs4nwwlrpKuw8upWFPxCLj3aPEFTyD7.PglU1Q90.K', '101105', '2022-11-23 10:43:05', '2022-11-23 10:43:05');
INSERT INTO `ruang_kerja_peserta` VALUES (1649, 53, 22112310110514, 'Fajar', '$2y$10$xBp82KWcJk9x0Bqv.PTPveZY/bBpee2TeDVuhItqV1k0zZ6DSMmyC', '101105', '2022-11-23 10:43:05', '2022-11-23 10:43:05');
INSERT INTO `ruang_kerja_peserta` VALUES (1650, 53, 22112310110515, 'Nugraha', '$2y$10$UzL.lxCbnv8f12hXp7pWgO9A3m5406sUDIWH.afaRCtF9wJnMR1ye', '101105', '2022-11-23 10:43:05', '2022-11-23 10:43:05');
INSERT INTO `ruang_kerja_peserta` VALUES (1651, 53, 22112310110516, 'Andi', '$2y$10$AYiWxL8L.2f.llyRZbH6YuHJtCenHn6b9rgKFDM9erphOcXTWaOzC', '101105', '2022-11-23 10:43:05', '2022-11-23 10:43:05');
INSERT INTO `ruang_kerja_peserta` VALUES (1652, 53, 22112310110517, 'Fajar', '$2y$10$5rPVLp8QjsBnVG.x1fXnPOHjYdbSAZqlRf8OsgFKU9VUhPX5njesm', '101105', '2022-11-23 10:43:05', '2022-11-23 10:43:05');
INSERT INTO `ruang_kerja_peserta` VALUES (1653, 53, 22112310110518, 'Nugraha', '$2y$10$vVz1ycoQUhInqVQ.zq5/b.QE6OMri7oCSTzqhkewrwEAY8L4lbu82', '101105', '2022-11-23 10:43:05', '2022-11-23 10:43:05');
INSERT INTO `ruang_kerja_peserta` VALUES (1654, 53, 22112310110519, 'Andi', '$2y$10$E.fRqYF1Gqc4JJlsJKN0neOUqWzRUcPo0RvrMJ7s0dphrspAMX4vS', '101105', '2022-11-23 10:43:05', '2022-11-23 10:43:05');
INSERT INTO `ruang_kerja_peserta` VALUES (1655, 53, 22112310110520, 'Fajar', '$2y$10$S5AGtpjvCaHPclYMorM8MuojNGEa18eAQ.M1sYg48HmebtDCZIfAS', '101105', '2022-11-23 10:43:05', '2022-11-23 10:43:05');
INSERT INTO `ruang_kerja_peserta` VALUES (1656, 53, 22112310110521, 'Nugraha', '$2y$10$d7q.yo.og1WWK8sMVGFhseAvl5ZSHADHmDUjQhREm34C7FzIK6o..', '101105', '2022-11-23 10:43:05', '2022-11-23 10:43:05');
INSERT INTO `ruang_kerja_peserta` VALUES (1657, 53, 22112310110522, 'Andi', '$2y$10$SWc5wPnYChpQtHt2OABQ5ebLiaIAB8ll0.URBhbrazE/DSJsn2Tqa', '101105', '2022-11-23 10:43:05', '2022-11-23 10:43:05');
INSERT INTO `ruang_kerja_peserta` VALUES (1658, 53, 22112310110523, 'Fajar', '$2y$10$OFvo.Xo1Bumd5qJYGNmeMuBYW3e0JLcNYuEjwl8c.2IB/fuPbrFme', '101105', '2022-11-23 10:43:05', '2022-11-23 10:43:05');
INSERT INTO `ruang_kerja_peserta` VALUES (1659, 53, 22112310110524, 'Nugraha', '$2y$10$UFcBmSRjE8L7zyKWIyjoZeSOqOrIMaZb8qeiF77mbFmHBRBRVR7D2', '101105', '2022-11-23 10:43:05', '2022-11-23 10:43:05');
INSERT INTO `ruang_kerja_peserta` VALUES (1660, 53, 22112310110525, 'Andi', '$2y$10$tqAtjDnxPKn6Jj429jB75.oWkFbpFwBPnmG/TZh9qOkm/bmXimh1y', '101105', '2022-11-23 10:43:05', '2022-11-23 10:43:05');
INSERT INTO `ruang_kerja_peserta` VALUES (1661, 53, 22112310110526, 'Fajar', '$2y$10$aVBDT9Qpwa6jExN8R8LXMOrg8b1SDR.Dyi3L0PSixHvbEMaLT9F/.', '101105', '2022-11-23 10:43:05', '2022-11-23 10:43:05');
INSERT INTO `ruang_kerja_peserta` VALUES (1662, 53, 22112310110527, 'Nugraha', '$2y$10$Mbf.AqsCuPLnU44fyHMA5Ogvh.Xj67dz6ox665hxJwOJ5hSlDfy9u', '101106', '2022-11-23 10:43:06', '2022-11-23 10:43:06');
INSERT INTO `ruang_kerja_peserta` VALUES (1663, 53, 22112310110628, 'Andi', '$2y$10$3KZhbeN5oqlndhBJ0vZRg.qRMwhB8cIlQveHxsUIyqKOAETqW/AQu', '101106', '2022-11-23 10:43:06', '2022-11-23 10:43:06');
INSERT INTO `ruang_kerja_peserta` VALUES (1664, 53, 22112310110629, 'Fajar', '$2y$10$Q3vaow2c9jshhEj2zI4xsubuqZvBIVzXv4.GlwUdN1Q82ERkDB/4G', '101106', '2022-11-23 10:43:06', '2022-11-23 10:43:06');
INSERT INTO `ruang_kerja_peserta` VALUES (1665, 53, 22112310110630, 'Nugraha', '$2y$10$xf1DpKqnIXiehFOhbeexZ.ORnIV1iaIdkGWnLDQKSdRjatdq25Vm6', '101106', '2022-11-23 10:43:06', '2022-11-23 10:43:06');
INSERT INTO `ruang_kerja_peserta` VALUES (1666, 53, 22112310110631, 'Fajar', '$2y$10$9EQ3b/p8MZsIius1JHLfOeipSxjGRAunUoiZdCefO1N/nXVCguOvC', '101106', '2022-11-23 10:43:06', '2022-11-23 10:43:06');
INSERT INTO `ruang_kerja_peserta` VALUES (1667, 53, 22112310110632, 'Nugraha', '$2y$10$aLZEaZ/gc385Lq7ElmML6OrF3vWK9pbnC/bkhe6qGcGKyCiARw1oW', '101106', '2022-11-23 10:43:06', '2022-11-23 10:43:06');
INSERT INTO `ruang_kerja_peserta` VALUES (1668, 53, 22112310110633, 'Andi', '$2y$10$IDJTOmLKXqgKT4WAdZlPieueFW1vA099zzvIxW403HrvM7beaH0wG', '101106', '2022-11-23 10:43:06', '2022-11-23 10:43:06');
INSERT INTO `ruang_kerja_peserta` VALUES (1669, 53, 22112310110634, 'Fajar', '$2y$10$5ppDLbzXR0TIdvGKIcoOe.KmHNg7Zg/ERAkJGIhNEagX3jJE5Y0P6', '101106', '2022-11-23 10:43:06', '2022-11-23 10:43:06');
INSERT INTO `ruang_kerja_peserta` VALUES (1670, 53, 22112310110635, 'Nugraha', '$2y$10$2FbVgLnF8L198lUSEAoyo.IJbGhlW01cZ9XevjqBXaeV3ZT0a43o.', '101106', '2022-11-23 10:43:06', '2022-11-23 10:43:06');
INSERT INTO `ruang_kerja_peserta` VALUES (1671, 53, 22112310110636, 'Nugraha', '$2y$10$N7rZvBf2AvtzY/w4QMCVnOR3II4mglkTznigWAd3MptOKeJQywvjS', '101106', '2022-11-23 10:43:06', '2022-11-23 10:43:06');
INSERT INTO `ruang_kerja_peserta` VALUES (1672, 53, 22112310110637, 'Andi', '$2y$10$4x.wmAyF5VZLe2SpfJBfdOeMK6Yd5Y03WEJ2z1zsAvrSPLY8vaf6W', '101106', '2022-11-23 10:43:06', '2022-11-23 10:43:06');
INSERT INTO `ruang_kerja_peserta` VALUES (1673, 53, 22112310110638, 'Fajar', '$2y$10$qxibAHh3Z8AalI3JoxpZQeojXb3S5rlXi6HzDZgd8S79/NanPFv3m', '101106', '2022-11-23 10:43:06', '2022-11-23 10:43:06');
INSERT INTO `ruang_kerja_peserta` VALUES (1674, 53, 22112310110639, 'Nugraha', '$2y$10$faMPMreAVDXrGdegPU2P7O878EWtacwz9oDj7QigO2cYdFPehz9Wq', '101106', '2022-11-23 10:43:06', '2022-11-23 10:43:06');
INSERT INTO `ruang_kerja_peserta` VALUES (1675, 53, 22112310110640, 'Nugraha', '$2y$10$/fQVL2d.adFLp7zKBKHFb.AnWmXcrruSd8RbHMt9A1l1/7KjdD1Jy', '101106', '2022-11-23 10:43:06', '2022-11-23 10:43:06');
INSERT INTO `ruang_kerja_peserta` VALUES (1676, 53, 22112310110641, 'Andi', '$2y$10$PEFD8aK84ftZrvXNYS.tnOmACJyLaNZfTkahDqs6OIHb1EF1WuzoO', '101106', '2022-11-23 10:43:06', '2022-11-23 10:43:06');
INSERT INTO `ruang_kerja_peserta` VALUES (1677, 53, 22112310110642, 'Fajar', '$2y$10$P2xKhkx46FMMxCkhbuy9nOfIhgrcJ7pMCYhk96DVQohXvTxOqIWAO', '101106', '2022-11-23 10:43:06', '2022-11-23 10:43:06');
INSERT INTO `ruang_kerja_peserta` VALUES (1678, 53, 22112310110643, 'Nugraha', '$2y$10$dExM0Pf.OZYUVd3xHyVprOuRJb//xKB5Dn7Y/jbarVs/zTMghKjRa', '101106', '2022-11-23 10:43:06', '2022-11-23 10:43:06');
INSERT INTO `ruang_kerja_peserta` VALUES (1679, 53, 22112310110644, 'Andi', '$2y$10$WQsgbC.BtuERRl3fvcJcMergX5Ub/YUbUEaktDF0jZ/SdyvKM82wi', '101106', '2022-11-23 10:43:06', '2022-11-23 10:43:06');
INSERT INTO `ruang_kerja_peserta` VALUES (1680, 53, 22112310110645, 'Fajar', '$2y$10$CVcDQkl9MCunKPMcLhHm2OGJ8i6lB5/B9rL8I97/il9x/UOOAbx.S', '101106', '2022-11-23 10:43:06', '2022-11-23 10:43:06');
INSERT INTO `ruang_kerja_peserta` VALUES (1681, 53, 22112310110646, 'Nugraha', '$2y$10$OAw.1FKVw1F9egvY1ZDolOoz4CtwU0NSc08KZ4kN3oiRzfG5b1kK6', '101106', '2022-11-23 10:43:06', '2022-11-23 10:43:06');
INSERT INTO `ruang_kerja_peserta` VALUES (1682, 53, 22112310110647, 'Andi', '$2y$10$H1M3nLCoLhjDT/907p/2me97lCbivO3ADRSRTgkjK64GH0q4XN0Ji', '101106', '2022-11-23 10:43:06', '2022-11-23 10:43:06');
INSERT INTO `ruang_kerja_peserta` VALUES (1683, 53, 22112310110648, 'Fajar', '$2y$10$o.oVrmjhzVHDxy90BVzlVelPwMEuqWbEgLgszIa1I6Ig5llFmUDZS', '101107', '2022-11-23 10:43:07', '2022-11-23 10:43:07');
INSERT INTO `ruang_kerja_peserta` VALUES (1684, 53, 22112310110749, 'Nugraha', '$2y$10$kcnmfZKPlIjw34Tbfzg.KODId4F6Je7LkLP9rd4230MEQFj0mxmGy', '101107', '2022-11-23 10:43:07', '2022-11-23 10:43:07');
INSERT INTO `ruang_kerja_peserta` VALUES (1685, 53, 22112310110750, 'Andi', '$2y$10$g.9/DESUKPPv9CtVrhaIV.e0ceAEl21poi84HZB3mxn2sebl0GDle', '101107', '2022-11-23 10:43:07', '2022-11-23 10:43:07');
INSERT INTO `ruang_kerja_peserta` VALUES (1686, 53, 22112310110751, 'Fajar', '$2y$10$ylGXCAncDcEbU0Q4LQ36pOFhw9n4GJmjLORLEfrmXqhf/ALn989Fi', '101107', '2022-11-23 10:43:07', '2022-11-23 10:43:07');
INSERT INTO `ruang_kerja_peserta` VALUES (1687, 53, 22112310110752, 'Nugraha', '$2y$10$tARw6hCxc8nTHlRgHYXL4u3A3s8MEgfKoUXNXqBwA0hvGndRtuFIO', '101107', '2022-11-23 10:43:07', '2022-11-23 10:43:07');
INSERT INTO `ruang_kerja_peserta` VALUES (1688, 53, 22112310110753, 'Andi', '$2y$10$9LBn2lCm.RpdRK7sjo.A7eczU5.uf776mqidL1xrOTbkgBp9W7Wwa', '101107', '2022-11-23 10:43:07', '2022-11-23 10:43:07');
INSERT INTO `ruang_kerja_peserta` VALUES (1689, 53, 22112310110754, 'Fajar', '$2y$10$gYmJMLL0uHYo7LtEBHW3qu5wUvuYk9H9gel/LTcCZWzYAlGkp5O5a', '101107', '2022-11-23 10:43:07', '2022-11-23 10:43:07');
INSERT INTO `ruang_kerja_peserta` VALUES (1690, 53, 22112310110755, 'Nugraha', '$2y$10$HrhfP1DzSoOaCfAz6AQIS.ZLsU.91aJf7DlfIW.caCzSAyt9tgtC6', '101107', '2022-11-23 10:43:07', '2022-11-23 10:43:07');
INSERT INTO `ruang_kerja_peserta` VALUES (1691, 53, 22112310110756, 'Andi', '$2y$10$1TMyhmYxX.7YR7U6.zmbCuOrDRRHSzWxRbDedbCRx4LYd3PDkTc52', '101107', '2022-11-23 10:43:07', '2022-11-23 10:43:07');
INSERT INTO `ruang_kerja_peserta` VALUES (1692, 53, 22112310110757, 'Fajar', '$2y$10$n5IC8JvNcUQpN1hIS8Yh0OkcglWU/JxsZ42/7TfXRR.vH/nNZSCqy', '101107', '2022-11-23 10:43:07', '2022-11-23 10:43:07');
INSERT INTO `ruang_kerja_peserta` VALUES (1693, 53, 22112310110758, 'Nugraha', '$2y$10$y62RmJlHeY5Dx.UcbAv7H.32DhD4HqQgFNo8nDhDqqZKQAC/geLSm', '101107', '2022-11-23 10:43:07', '2022-11-23 10:43:07');
INSERT INTO `ruang_kerja_peserta` VALUES (1694, 53, 22112310110759, 'Andi', '$2y$10$m6YjXnFHq5EjSc7eZ2QlVewwKx4RftoAhIAwWCVgtez8NqjAe/5W2', '101107', '2022-11-23 10:43:07', '2022-11-23 10:43:07');
INSERT INTO `ruang_kerja_peserta` VALUES (1695, 53, 22112310110760, 'Fajar', '$2y$10$p0pJiiUhoYpRZiJQfqF7xOMhQf1wuWIhq.FnGHraFRE3r42Gij3pG', '101107', '2022-11-23 10:43:07', '2022-11-23 10:43:07');
INSERT INTO `ruang_kerja_peserta` VALUES (1696, 53, 22112310110761, 'Nugraha', '$2y$10$I4wOph52vWSwa48QhyYvKed38M268V5pG/KaL1ePAYpPS.3/d2vtK', '101107', '2022-11-23 10:43:07', '2022-11-23 10:43:07');
INSERT INTO `ruang_kerja_peserta` VALUES (1697, 53, 22112310110762, 'Andi', '$2y$10$eVy6f3vsJMFRC2i.s2CdC.hSil32DSy4YrTcGHXjou4VsQDVmuYtG', '101107', '2022-11-23 10:43:07', '2022-11-23 10:43:07');
INSERT INTO `ruang_kerja_peserta` VALUES (1698, 53, 22112310110763, 'Fajar', '$2y$10$xH5ajULbaA8Jm5uVEKS/N.S0I6Us/ZHLNYEvvBqfjXJaCAkNG/8K2', '101107', '2022-11-23 10:43:07', '2022-11-23 10:43:07');
INSERT INTO `ruang_kerja_peserta` VALUES (1699, 53, 22112310110764, 'Nugraha', '$2y$10$WAVWq5tuNoGcAnDuFDDLjOUhDfu4fYKxq6bSqTolgUrBN4fHkHi86', '101107', '2022-11-23 10:43:07', '2022-11-23 10:43:07');
INSERT INTO `ruang_kerja_peserta` VALUES (1700, 53, 22112310110765, 'Andi', '$2y$10$BqRGPYgTaVv4PCY6UdUJDORjJMyizi2z6u8G3U/CnMzTt4OrroBm.', '101107', '2022-11-23 10:43:07', '2022-11-23 10:43:07');
INSERT INTO `ruang_kerja_peserta` VALUES (1701, 53, 22112310110766, 'Fajar', '$2y$10$NcTZ4ZA/CB8SjE.sDf/uxeI2xiowdP8zvs50DdA5gL9t5heH6E57O', '101107', '2022-11-23 10:43:07', '2022-11-23 10:43:07');
INSERT INTO `ruang_kerja_peserta` VALUES (1702, 53, 22112310110767, 'Nugraha', '$2y$10$8JW74jPLQAfSxtYO7G8WSuc5NEfIX691zRlQXW6RCFseE7IK0Ea3.', '101107', '2022-11-23 10:43:07', '2022-11-23 10:43:07');
INSERT INTO `ruang_kerja_peserta` VALUES (1703, 53, 22112310110768, 'Andi', '$2y$10$VQuL.89ixSY0IGL9Og8FZeDxs9vkWGhTNGsojZgxjoXCaz..hUVnG', '101107', '2022-11-23 10:43:07', '2022-11-23 10:43:07');
INSERT INTO `ruang_kerja_peserta` VALUES (1704, 53, 22112310110769, 'Fajar', '$2y$10$hBt4v5hK/GR.rHX3Ma448eL8q5rU9pE9ZNMV6Bgpgf9gQK7gZJBki', '101107', '2022-11-23 10:43:07', '2022-11-23 10:43:07');
INSERT INTO `ruang_kerja_peserta` VALUES (1705, 53, 22112310110770, 'Nugraha', '$2y$10$vUtPEp0m1oeOolS1NTMsbOeDDfQwqwxwF3TGpHBcwDLbUT97GhIOG', '101108', '2022-11-23 10:43:08', '2022-11-23 10:43:08');
INSERT INTO `ruang_kerja_peserta` VALUES (1706, 53, 22112310110871, 'Fajar', '$2y$10$1BCMSclF56rC2bTU0crTOe9xLdLBiLqYdcCYo1eKG6VNuXiEx1GFC', '101108', '2022-11-23 10:43:08', '2022-11-23 10:43:08');
INSERT INTO `ruang_kerja_peserta` VALUES (1707, 53, 22112310110872, 'Nugraha', '$2y$10$6yeQISk.BR62GVQ52aVPl.KE/omphw67J4BT4oYFPPWauKoOxqJKm', '101108', '2022-11-23 10:43:08', '2022-11-23 10:43:08');
INSERT INTO `ruang_kerja_peserta` VALUES (1708, 53, 22112310110873, 'Andi', '$2y$10$RTBXmoSass1.qnKi.WEave6NLAa1WnDZphyiodQc4iO2gLFWAyrSK', '101108', '2022-11-23 10:43:08', '2022-11-23 10:43:08');
INSERT INTO `ruang_kerja_peserta` VALUES (1709, 53, 22112310110874, 'Fajar', '$2y$10$HOM/jnZv0Onx7/bjei5F/.6Gofr.TKt7/h9qXb3KFizFIIujJuwuW', '101108', '2022-11-23 10:43:08', '2022-11-23 10:43:08');
INSERT INTO `ruang_kerja_peserta` VALUES (1710, 53, 22112310110875, 'Nugraha', '$2y$10$Q.wxaGbHVdbGzp5muoY4b.iCD7ktiGLoOd7lc7jktJ9VoUhpdBULS', '101108', '2022-11-23 10:43:08', '2022-11-23 10:43:08');
INSERT INTO `ruang_kerja_peserta` VALUES (1711, 53, 22112310110876, 'Nugraha', '$2y$10$9glmDVM35pBrfkQ8BNJECeo2ilFd8LcQSWlU8nWgUyqhe8e75BB72', '101108', '2022-11-23 10:43:08', '2022-11-23 10:43:08');
INSERT INTO `ruang_kerja_peserta` VALUES (1712, 53, 22112310110877, 'Andi', '$2y$10$0akq9W4UtcQXj7eIMe/07u3DA6ZPsYJAdiyO346tIdltZHzfhpN9y', '101108', '2022-11-23 10:43:08', '2022-11-23 10:43:08');
INSERT INTO `ruang_kerja_peserta` VALUES (1713, 53, 22112310110878, 'Fajar', '$2y$10$fjuc6DZL66DGVaqu6SFWdu5WTSLPo5V7u9XnpwekYvt80a9JG9lkm', '101108', '2022-11-23 10:43:08', '2022-11-23 10:43:08');
INSERT INTO `ruang_kerja_peserta` VALUES (1714, 53, 22112310110879, 'Nugraha', '$2y$10$UtwUeTEiAwmA7VWnI2jjxehu.k40/boo6jvQZ2IYC5IEvqhR6tZ2O', '101108', '2022-11-23 10:43:08', '2022-11-23 10:43:08');
INSERT INTO `ruang_kerja_peserta` VALUES (1715, 53, 22112310110880, 'Nugraha', '$2y$10$ml1AllvtUsfyYoINcyo/Hu/8bVm.5vvcBPgteGML69Zo96G6m5HgW', '101108', '2022-11-23 10:43:08', '2022-11-23 10:43:08');
INSERT INTO `ruang_kerja_peserta` VALUES (1716, 53, 22112310110881, 'Andi', '$2y$10$WyJplkmVm.CcoKr4HG1.IO.pA6/XA0h6viuZoOprjlBWnRN9ZaqBa', '101108', '2022-11-23 10:43:08', '2022-11-23 10:43:08');
INSERT INTO `ruang_kerja_peserta` VALUES (1717, 53, 22112310110882, 'Fajar', '$2y$10$I2xpvkB8/GNKVOs7gGv1juVhO/PbJ5IzAaL6BG1uSlDHb0lY0zWqu', '101108', '2022-11-23 10:43:08', '2022-11-23 10:43:08');
INSERT INTO `ruang_kerja_peserta` VALUES (1718, 53, 22112310110883, 'Nugraha', '$2y$10$dGKlqtNtNXJ7zUiQoIaVnePyxx8p/Ndkhtl6pddeDfXwrkak.wfLW', '101108', '2022-11-23 10:43:08', '2022-11-23 10:43:08');
INSERT INTO `ruang_kerja_peserta` VALUES (1719, 53, 22112310110884, 'Andi', '$2y$10$Nv8wcOG9Sky1L/FXQ.K8repqFgLR3Ixw2KAnEvFPNw13gG0SKPm.i', '101108', '2022-11-23 10:43:08', '2022-11-23 10:43:08');
INSERT INTO `ruang_kerja_peserta` VALUES (1720, 53, 22112310110885, 'Fajar', '$2y$10$a1wkLKpMYIZr30NdDOWqm.d7VJ/P3TSeDkAWBA9nN7ADUzXSZHhQK', '101108', '2022-11-23 10:43:08', '2022-11-23 10:43:08');
INSERT INTO `ruang_kerja_peserta` VALUES (1721, 53, 22112310110886, 'Nugraha', '$2y$10$/Cp40ksHNog/73SjrDfESOyx.S6WIcofen2nu/QU8j8DyYnjwk5Te', '101108', '2022-11-23 10:43:08', '2022-11-23 10:43:08');
INSERT INTO `ruang_kerja_peserta` VALUES (1722, 53, 22112310110887, 'Andi', '$2y$10$lCdNV/3azyjMPexwwNnguudXdFhcV/6SLNtNw3tWHnM/u1d2Z4gFG', '101108', '2022-11-23 10:43:08', '2022-11-23 10:43:08');
INSERT INTO `ruang_kerja_peserta` VALUES (1723, 53, 22112310110888, 'Fajar', '$2y$10$4RBjSNi1uwLTUksezUAxaOMRC6Om4YoxnxY/nqPnvPxvzGZkvrvZC', '101108', '2022-11-23 10:43:08', '2022-11-23 10:43:08');
INSERT INTO `ruang_kerja_peserta` VALUES (1724, 53, 22112310110889, 'Nugraha', '$2y$10$Mx/UsrO3.seEa8kMIoaNPukwDKr83GzIjB86KaBF3L2ggex3M8Rpu', '101108', '2022-11-23 10:43:08', '2022-11-23 10:43:08');
INSERT INTO `ruang_kerja_peserta` VALUES (1725, 53, 22112310110890, 'Andi', '$2y$10$ElZuOa22WjGZM9Y5O.adu.umsYZPAbfpv7j2VWPlDdIpKZ0QxXf6i', '101108', '2022-11-23 10:43:08', '2022-11-23 10:43:08');
INSERT INTO `ruang_kerja_peserta` VALUES (1726, 53, 22112310110891, 'Fajar', '$2y$10$a5wCKIIkGVdKI6fCnD3HXO0bj7sGVYTUoQ4AiZsXkmJgfZJF5mHKq', '101109', '2022-11-23 10:43:09', '2022-11-23 10:43:09');
INSERT INTO `ruang_kerja_peserta` VALUES (1727, 53, 22112310110992, 'Nugraha', '$2y$10$8PqQVE.OadYyYFECGSHR/.xnAd7l0XpBmU4dl2zDCdzyIxfSYMiDS', '101109', '2022-11-23 10:43:09', '2022-11-23 10:43:09');
INSERT INTO `ruang_kerja_peserta` VALUES (1728, 53, 22112310110993, 'Andi', '$2y$10$.ecEUVkXIIO2V/SKUZS6nets.cQccj4xXZddWO7qdl.fQbzMW1D9W', '101109', '2022-11-23 10:43:09', '2022-11-23 10:43:09');
INSERT INTO `ruang_kerja_peserta` VALUES (1729, 53, 22112310110994, 'Fajar', '$2y$10$Ua2eDtB0v8Sdq7Vo3VhsGOJkGAK82mZc8EiukXHmM8LKH1yit4eqe', '101109', '2022-11-23 10:43:09', '2022-11-23 10:43:09');
INSERT INTO `ruang_kerja_peserta` VALUES (1730, 53, 22112310110995, 'Nugraha', '$2y$10$bNcpuqDsLn5ASPcPajHOmuKZgN9IQ7qxPYvC2lqWR3aHBhHeK92Hq', '101109', '2022-11-23 10:43:09', '2022-11-23 10:43:09');
INSERT INTO `ruang_kerja_peserta` VALUES (1731, 53, 22112310110996, 'Andi', '$2y$10$WBZR0WUY4soy9GzYCDx9FOOcSHC2msjrxK8A9gWmo1thEd2Emu7dm', '101109', '2022-11-23 10:43:09', '2022-11-23 10:43:09');
INSERT INTO `ruang_kerja_peserta` VALUES (1732, 53, 22112310110997, 'Fajar', '$2y$10$fGzMAxp.mKmonXzJyivXtOLLjcnhbzz85Bpvqi4OQEuIgHcwPGJGO', '101109', '2022-11-23 10:43:09', '2022-11-23 10:43:09');
INSERT INTO `ruang_kerja_peserta` VALUES (1733, 53, 22112310110998, 'Nugraha', '$2y$10$OmK1SYiHXsO9l8pyCnCbueFa6.bIC136dOYFUcpQBw1hQGqGeKYBC', '101109', '2022-11-23 10:43:09', '2022-11-23 10:43:09');
INSERT INTO `ruang_kerja_peserta` VALUES (1734, 53, 22112310110999, 'Andi', '$2y$10$86/0ZIviiCMbmw9WS7ff.ubQhEzEuB8RMWX0USYYDOFhX/dvNi5.C', '101109', '2022-11-23 10:43:09', '2022-11-23 10:43:09');
INSERT INTO `ruang_kerja_peserta` VALUES (1735, 53, 221123101109100, 'Fajar', '$2y$10$dSIq6XPTXFRrGXM2uIrZ8..vC6BLPOpA.XfAgHsWQHLNB.NzbM3EO', '101109', '2022-11-23 10:43:09', '2022-11-23 10:43:09');
INSERT INTO `ruang_kerja_peserta` VALUES (1736, 53, 221123101109101, 'Nugraha', '$2y$10$iSDZryVVbGLMPWbiTrKktuIiNQa/QWfsFpL5VsrgjucBXjE8Yo8Um', '101109', '2022-11-23 10:43:09', '2022-11-23 10:43:09');
INSERT INTO `ruang_kerja_peserta` VALUES (1737, 53, 221123101109102, 'Andi', '$2y$10$YLuUKmyHBCdrZJCqzTMr5OvFmJgW4XcKOR0oW2ucCQf14jjquz35e', '101109', '2022-11-23 10:43:09', '2022-11-23 10:43:09');
INSERT INTO `ruang_kerja_peserta` VALUES (1738, 53, 221123101109103, 'Fajar', '$2y$10$BpXQ2.1Oild39MbmnLSfD.snsf5AAKFvbXvj0eaypGeitA/WNoYv.', '101109', '2022-11-23 10:43:09', '2022-11-23 10:43:09');
INSERT INTO `ruang_kerja_peserta` VALUES (1739, 53, 221123101109104, 'Nugraha', '$2y$10$PbNvHSXvgmDZFEMrcC42me78lUqc/2vaenIn4eH/HE4yZX/55NPvC', '101109', '2022-11-23 10:43:09', '2022-11-23 10:43:09');
INSERT INTO `ruang_kerja_peserta` VALUES (1740, 53, 221123101109105, 'Andi', '$2y$10$1a4nuNNr3uvWy7/dH6tQl.0l47sfSiwPH1eMFGhj1hoK02ZhgiMHm', '101109', '2022-11-23 10:43:09', '2022-11-23 10:43:09');
INSERT INTO `ruang_kerja_peserta` VALUES (1741, 53, 221123101109106, 'Fajar', '$2y$10$0C.WUEqxR9l3boseGKiZ7.JeWhhNklcK0YhPOCyNeScpPoEdxT0tW', '101109', '2022-11-23 10:43:09', '2022-11-23 10:43:09');
INSERT INTO `ruang_kerja_peserta` VALUES (1742, 53, 221123101109107, 'Nugraha', '$2y$10$TVhym8RlzSSIRInNZOvVQuaGJdooR8hNO0Xas3/GbEhzAFLhKRf/a', '101109', '2022-11-23 10:43:09', '2022-11-23 10:43:09');
INSERT INTO `ruang_kerja_peserta` VALUES (1743, 53, 221123101109108, 'Andi', '$2y$10$ifNBaDG7Glxo7lF2KzC.NuBH8wE4oJG6XXOU.Cj3.IPvPccfU5Q2K', '101109', '2022-11-23 10:43:09', '2022-11-23 10:43:09');
INSERT INTO `ruang_kerja_peserta` VALUES (1744, 53, 221123101109109, 'Fajar', '$2y$10$3tnsW1Ity9BwWjhvVZvZ6.ykk/k67OekqdNBzBGHq1u4k7DrNQrzu', '101109', '2022-11-23 10:43:09', '2022-11-23 10:43:09');
INSERT INTO `ruang_kerja_peserta` VALUES (1745, 53, 221123101109110, 'Nugraha', '$2y$10$JObyj8d1sFOE3Z.BBr2cMejJ1C18je2a6FFnMOzDRc77oaPhE31kK', '101109', '2022-11-23 10:43:09', '2022-11-23 10:43:09');
INSERT INTO `ruang_kerja_peserta` VALUES (1746, 53, 221123101109111, 'Fajar', '$2y$10$bL9YgyvNNgjbY/33TMeVieW0HIAsJBzZiDBEsYbueic9U0PkWdAom', '101109', '2022-11-23 10:43:09', '2022-11-23 10:43:09');
INSERT INTO `ruang_kerja_peserta` VALUES (1747, 53, 221123101109112, 'Nugraha', '$2y$10$hRx7J1Zjkf.p0j1ilbmEnuuxohASbGRqdLwuFb65tXWjWtXhfJZAi', '101109', '2022-11-23 10:43:09', '2022-11-23 10:43:09');
INSERT INTO `ruang_kerja_peserta` VALUES (1748, 53, 221123101109113, 'Andi', '$2y$10$o7I20x5G0m1oVC83M94nk.LT.X7ENv..VYI64dy1X2ZC/KByaDixC', '101110', '2022-11-23 10:43:10', '2022-11-23 10:43:10');
INSERT INTO `ruang_kerja_peserta` VALUES (1749, 53, 221123101110114, 'Fajar', '$2y$10$LqAzZvGf0wVAPE3nSd68Re4dLU0yzHAYie2VvSAP/qlnH55boYqYC', '101110', '2022-11-23 10:43:10', '2022-11-23 10:43:10');
INSERT INTO `ruang_kerja_peserta` VALUES (1750, 53, 221123101110115, 'Nugraha', '$2y$10$t/Kux03Nzi9Mow.ZkljyX.aX6E32sBgAx0z5zmKqYUcCaoaXYnFh2', '101110', '2022-11-23 10:43:10', '2022-11-23 10:43:10');
INSERT INTO `ruang_kerja_peserta` VALUES (1751, 53, 221123101110116, 'Nugraha', '$2y$10$pXw42DDJd4CobqLER6zrPOtZctOECS26r0hWDuiUw37U5h0jRk2jS', '101110', '2022-11-23 10:43:10', '2022-11-23 10:43:10');
INSERT INTO `ruang_kerja_peserta` VALUES (1752, 53, 221123101110117, 'Andi', '$2y$10$NVHOEzbntZDeTiR5aBoeFezZ/gUqlhhO2Hri.pCbjDTO8xcAr48By', '101110', '2022-11-23 10:43:10', '2022-11-23 10:43:10');
INSERT INTO `ruang_kerja_peserta` VALUES (1753, 53, 221123101110118, 'Fajar', '$2y$10$xq85XkV2QMFny5Xgp9y2xO3qMFtfbM6ekmQ4htQ7PIQ0CovRRZDO2', '101110', '2022-11-23 10:43:10', '2022-11-23 10:43:10');
INSERT INTO `ruang_kerja_peserta` VALUES (1754, 53, 221123101110119, 'Nugraha', '$2y$10$w9NBu3JEryqNctEDfBgVFOwFgxiEKSgEHc/nVtyU.3r6uGxFkJ/C6', '101110', '2022-11-23 10:43:10', '2022-11-23 10:43:10');
INSERT INTO `ruang_kerja_peserta` VALUES (1755, 53, 221123101110120, 'Nugraha', '$2y$10$Ub7qaVcghuMpZqvXeLDUnOgbM/n2D4YOh8ZEJwXk28P8m/PuYvsZ.', '101110', '2022-11-23 10:43:10', '2022-11-23 10:43:10');
INSERT INTO `ruang_kerja_peserta` VALUES (1756, 53, 221123101110121, 'Andi', '$2y$10$rdr50i9OQWBgpp/4Gb/n3.n0ZKCB0yXTynVuCfEkw0anDyq.m7DZq', '101110', '2022-11-23 10:43:10', '2022-11-23 10:43:10');
INSERT INTO `ruang_kerja_peserta` VALUES (1757, 53, 221123101110122, 'Fajar', '$2y$10$/dV3xeewt/7W3ce8.zw4Iuz4lTR.O542lg9L4iuUD1PF8L7bzBQhm', '101110', '2022-11-23 10:43:10', '2022-11-23 10:43:10');
INSERT INTO `ruang_kerja_peserta` VALUES (1758, 53, 221123101110123, 'Nugraha', '$2y$10$we035x4EtdVrGQOfwl7JqONMMDFHgyLvX0YjlBqf.NAMJI7y/k7Ga', '101110', '2022-11-23 10:43:10', '2022-11-23 10:43:10');
INSERT INTO `ruang_kerja_peserta` VALUES (1759, 53, 221123101110124, 'Andi', '$2y$10$Rr8/pI5HiuG757OfnK778umf2LKamO60QBAZCsmZuFDvicRuUqQc2', '101110', '2022-11-23 10:43:10', '2022-11-23 10:43:10');
INSERT INTO `ruang_kerja_peserta` VALUES (1760, 53, 221123101110125, 'Fajar', '$2y$10$Vlp1BWzCITOYcUw1ctxuP.kWM43aqyq/vvMzJRwIrxiEht6mdr./u', '101110', '2022-11-23 10:43:10', '2022-11-23 10:43:10');
INSERT INTO `ruang_kerja_peserta` VALUES (1761, 53, 221123101110126, 'Nugraha', '$2y$10$SaiQlMgss9y818EdMzeArOGeF2VlCqMS0xgSxCJiThnFLWcd4yNxS', '101110', '2022-11-23 10:43:10', '2022-11-23 10:43:10');
INSERT INTO `ruang_kerja_peserta` VALUES (1762, 53, 221123101110127, 'Andi', '$2y$10$YpyyUQKaojIm778ckGHlReQeHvZfQCTk/XH92t.eXo2SdgfFXwbo2', '101110', '2022-11-23 10:43:10', '2022-11-23 10:43:10');
INSERT INTO `ruang_kerja_peserta` VALUES (1763, 53, 221123101110128, 'Fajar', '$2y$10$o2ZfdMfj0BYLZQu0NkUhDOo66zg54NPIicKnDNYEw5TJnlDJtg7Ee', '101110', '2022-11-23 10:43:10', '2022-11-23 10:43:10');
INSERT INTO `ruang_kerja_peserta` VALUES (1764, 53, 221123101110129, 'Nugraha', '$2y$10$oafcSM6OstWJSaJ4Zxadl.1j.hd4aZyowZbZK2AiD6mltuDzJwCwu', '101110', '2022-11-23 10:43:10', '2022-11-23 10:43:10');
INSERT INTO `ruang_kerja_peserta` VALUES (1765, 53, 221123101110130, 'Andi', '$2y$10$G4/a5hNrHmrz5EDVQY1mmu2tgYW7ONF4nZH4R73BPhw8.CIBb1JiW', '101110', '2022-11-23 10:43:10', '2022-11-23 10:43:10');
INSERT INTO `ruang_kerja_peserta` VALUES (1766, 53, 221123101110131, 'Fajar', '$2y$10$/5SsvwMlAA6.gGdmzB3jlO1erAiCdGK/EhuMvwl4QQ4tbgAnU4NzK', '101110', '2022-11-23 10:43:10', '2022-11-23 10:43:10');
INSERT INTO `ruang_kerja_peserta` VALUES (1767, 53, 221123101110132, 'Nugraha', '$2y$10$rQR/iJ5CQ5kgwKhSVhN5LuiGvJgvqjMbZpyGwUk1EOEm9J5g9K5qm', '101110', '2022-11-23 10:43:10', '2022-11-23 10:43:10');
INSERT INTO `ruang_kerja_peserta` VALUES (1768, 53, 221123101110133, 'Andi', '$2y$10$VZfDQNCsCXfYXNFE4sEe0OP5/pGw4y/mEi565r/rnjCn.omaYMK/q', '101110', '2022-11-23 10:43:10', '2022-11-23 10:43:10');
INSERT INTO `ruang_kerja_peserta` VALUES (1769, 53, 221123101110134, 'Fajar', '$2y$10$4fgN/c1hiJxMkKDDDFuADeomEeoWHCAMfS/nBABM/KwUK3i8owvL.', '101111', '2022-11-23 10:43:11', '2022-11-23 10:43:11');
INSERT INTO `ruang_kerja_peserta` VALUES (1770, 53, 221123101111135, 'Nugraha', '$2y$10$dMMkIxr9gB6bJn.NolIUJO8C8jhYaXZMxrKieHQd7U.uYbMYn2hWW', '101111', '2022-11-23 10:43:11', '2022-11-23 10:43:11');
INSERT INTO `ruang_kerja_peserta` VALUES (1771, 53, 221123101111136, 'Andi', '$2y$10$BduYmQlqRxtNa56w6.xyLOFhkuWP1SUD3Iyu5n1H/KVJMIzXQUOh6', '101111', '2022-11-23 10:43:11', '2022-11-23 10:43:11');
INSERT INTO `ruang_kerja_peserta` VALUES (1772, 53, 221123101111137, 'Fajar', '$2y$10$WrOGDD9cuH21i85G/Ujj2uQlS2AOnmu/H8b8SRzyq9UTj4UGMbNiG', '101111', '2022-11-23 10:43:11', '2022-11-23 10:43:11');
INSERT INTO `ruang_kerja_peserta` VALUES (1773, 53, 221123101111138, 'Nugraha', '$2y$10$eS5fyN6BibBuaFthvuAXk.1g3U2pQ7/TaFwivCVt/rYAkMJLghh/m', '101111', '2022-11-23 10:43:11', '2022-11-23 10:43:11');
INSERT INTO `ruang_kerja_peserta` VALUES (1774, 53, 221123101111139, 'Andi', '$2y$10$v4t9SsA3TeR6JqXtv4SxMu28Z5yEgQLTEuJIvb/juY9scrfucp9Vu', '101111', '2022-11-23 10:43:11', '2022-11-23 10:43:11');
INSERT INTO `ruang_kerja_peserta` VALUES (1775, 53, 221123101111140, 'Fajar', '$2y$10$RB/qkN7K.qtB3wbcnjL2w.v35l5oJ5yk0gWPetlt1uVJUKNmyhVBa', '101111', '2022-11-23 10:43:11', '2022-11-23 10:43:11');
INSERT INTO `ruang_kerja_peserta` VALUES (1776, 53, 221123101111141, 'Nugraha', '$2y$10$kNYfa.OiOyu2ZIo62reXkuA8SvqrwuZONOhRq6xo2nRQS4QIQdAt2', '101111', '2022-11-23 10:43:11', '2022-11-23 10:43:11');
INSERT INTO `ruang_kerja_peserta` VALUES (1777, 53, 221123101111142, 'Andi', '$2y$10$Nq1GJsipoSI.iGD/iniKp.ii4kEs..TlNBNzhwC7n8ZBvQfAwiU4m', '101111', '2022-11-23 10:43:11', '2022-11-23 10:43:11');
INSERT INTO `ruang_kerja_peserta` VALUES (1778, 53, 221123101111143, 'Fajar', '$2y$10$ppRcND2Emre5a2nQUkpIpuohOvawXxSSBGjgkLbRjzOP1SvwtSEAi', '101111', '2022-11-23 10:43:11', '2022-11-23 10:43:11');
INSERT INTO `ruang_kerja_peserta` VALUES (1779, 53, 221123101111144, 'Nugraha', '$2y$10$5/QKboRdHI/.Fj.1VjpFjugAGR3Gwae0PcYR69z.ZcA51sZIJbrhW', '101111', '2022-11-23 10:43:11', '2022-11-23 10:43:11');
INSERT INTO `ruang_kerja_peserta` VALUES (1780, 53, 221123101111145, 'Andi', '$2y$10$iAkDJUoFP7BU41VPZLx.tuQ523sQ7Oo/RHqGAbWjtbOoTT.kNN6Gi', '101111', '2022-11-23 10:43:11', '2022-11-23 10:43:11');
INSERT INTO `ruang_kerja_peserta` VALUES (1781, 53, 221123101111146, 'Fajar', '$2y$10$FQ9jeAdP6pWTISp7o/O3WeFx9X4zguEVac.KQZh/nGcsE/FOgc7SS', '101111', '2022-11-23 10:43:11', '2022-11-23 10:43:11');
INSERT INTO `ruang_kerja_peserta` VALUES (1782, 53, 221123101111147, 'Nugraha', '$2y$10$Kt5VGH5u3oBtEjEayaJGbOeyqFduzDU8.I5L9TJpsQtJb4ZvSxsYm', '101111', '2022-11-23 10:43:11', '2022-11-23 10:43:11');
INSERT INTO `ruang_kerja_peserta` VALUES (1783, 53, 221123101111148, 'Andi', '$2y$10$5ltoV9S.doo//cvV39AawOX3Gz5ywTWQEqzPvEjLvU1D.QKYOYhpS', '101111', '2022-11-23 10:43:11', '2022-11-23 10:43:11');
INSERT INTO `ruang_kerja_peserta` VALUES (1784, 53, 221123101111149, 'Fajar', '$2y$10$AiBmLiSGVC.8P8FRU5Hecu6i4TjFTeWL.dr401.jzEWiDMFuf2cAi', '101111', '2022-11-23 10:43:11', '2022-11-23 10:43:11');
INSERT INTO `ruang_kerja_peserta` VALUES (1785, 53, 221123101111150, 'Nugraha', '$2y$10$wZu6rY5sR2WJykqwTSzljehh197s3fz7ha09f1rvI1G.mVNCOjnA.', '101111', '2022-11-23 10:43:11', '2022-11-23 10:43:11');
INSERT INTO `ruang_kerja_peserta` VALUES (1786, 53, 221123101111151, 'Fajar', '$2y$10$SCryHII9SXRdUdsYjkLsqOq7zhUBoisJrXZp.M1qGkBgcADNcWama', '101111', '2022-11-23 10:43:11', '2022-11-23 10:43:11');
INSERT INTO `ruang_kerja_peserta` VALUES (1787, 53, 221123101111152, 'Nugraha', '$2y$10$iuqIjTaSDKeS/nxQuSk3RuDdVWR6aYOAJjVjr5GP.8x.M4XSfh6gC', '101111', '2022-11-23 10:43:11', '2022-11-23 10:43:11');
INSERT INTO `ruang_kerja_peserta` VALUES (1788, 53, 221123101111153, 'Andi', '$2y$10$7GG0d1YewuXHqc7MTMV9Ou4QLExx26.JmIeUB/SbhSS2thOhPjIly', '101111', '2022-11-23 10:43:11', '2022-11-23 10:43:11');
INSERT INTO `ruang_kerja_peserta` VALUES (1789, 53, 221123101111154, 'Fajar', '$2y$10$RVM4RdU.40Il4Qz4NXJSU.eL.468Ixt1LWy7gCHJn7q0rfAQBGub2', '101111', '2022-11-23 10:43:11', '2022-11-23 10:43:11');
INSERT INTO `ruang_kerja_peserta` VALUES (1790, 53, 221123101111155, 'Nugraha', '$2y$10$WpnnlVU2R.XW9xJccNs00eAJODRb.9XQj0oPOD4054cxdyjGriiM6', '101111', '2022-11-23 10:43:11', '2022-11-23 10:43:11');
INSERT INTO `ruang_kerja_peserta` VALUES (1791, 53, 221123101111156, 'Nugraha', '$2y$10$9leqx5n8iEHXnqTVDPz.NuaWxGUVChW0bIwk7hvU52YIATahBw2UW', '101112', '2022-11-23 10:43:12', '2022-11-23 10:43:12');
INSERT INTO `ruang_kerja_peserta` VALUES (1792, 53, 221123101112157, 'Andi', '$2y$10$2RbEvd7AKxyqUBlAYW1qbeIXecLhD3iGGIBavHebVCBtYs0OavOuW', '101112', '2022-11-23 10:43:12', '2022-11-23 10:43:12');
INSERT INTO `ruang_kerja_peserta` VALUES (1793, 53, 221123101112158, 'Fajar', '$2y$10$VhrTGB/W1uteATxXVCtvFuViMkzvXhg7XEg9qTBTIeffa/3WA37B2', '101112', '2022-11-23 10:43:12', '2022-11-23 10:43:12');
INSERT INTO `ruang_kerja_peserta` VALUES (1794, 53, 221123101112159, 'Nugraha', '$2y$10$hRoDBvfT6IZd30iNnk7a8eSSeV46CBgnynVQ0PJtwxRcEL3g4rHy6', '101112', '2022-11-23 10:43:12', '2022-11-23 10:43:12');
INSERT INTO `ruang_kerja_peserta` VALUES (1795, 53, 221123101112160, 'Nugraha', '$2y$10$UNrPL17Xxuai0gfIkz1ONOTMxNdusLuwZ.G0YM71vixMRK523XOr.', '101112', '2022-11-23 10:43:12', '2022-11-23 10:43:12');
INSERT INTO `ruang_kerja_peserta` VALUES (1796, 53, 221123101112161, 'Andi', '$2y$10$elLb8ib9VBuMKXN.nr3N5ud3a4guOOzsquPvZT1/tEM.pTdBYMGAa', '101112', '2022-11-23 10:43:12', '2022-11-23 10:43:12');
INSERT INTO `ruang_kerja_peserta` VALUES (1797, 53, 221123101112162, 'Fajar', '$2y$10$HQyWBn1otFcSHCvNR8IyrOkY1HAcGV1g8rKM.tUAZOAj9isHTuvzG', '101112', '2022-11-23 10:43:12', '2022-11-23 10:43:12');
INSERT INTO `ruang_kerja_peserta` VALUES (1798, 53, 221123101112163, 'Nugraha', '$2y$10$yt/Jcs8Ug8apfkgS46Wg9e/JEIA/d4nbbdc1/UcJppxaXwFUgqXlm', '101112', '2022-11-23 10:43:12', '2022-11-23 10:43:12');
INSERT INTO `ruang_kerja_peserta` VALUES (1799, 53, 221123101112164, 'Andi', '$2y$10$x2Zi7pPib89D49ijPJ4Ee.Sta7vm8Q79MutQ0rpJ.4Aolzf9uAAda', '101112', '2022-11-23 10:43:12', '2022-11-23 10:43:12');
INSERT INTO `ruang_kerja_peserta` VALUES (1800, 53, 221123101112165, 'Fajar', '$2y$10$gbYl12elZ0GdV3iRuuexFe3aGV.dnTaCRwtUtoiXikPQaP9eZnVQi', '101112', '2022-11-23 10:43:12', '2022-11-23 10:43:12');
INSERT INTO `ruang_kerja_peserta` VALUES (1801, 53, 221123101112166, 'Nugraha', '$2y$10$owhyHUzmpwBI3AOO9d7qV.c056pMMwLeUpEhFOAMuQ045s8LBY3hS', '101112', '2022-11-23 10:43:12', '2022-11-23 10:43:12');
INSERT INTO `ruang_kerja_peserta` VALUES (1802, 53, 221123101112167, 'Andi', '$2y$10$ahNoqujpO3XzRXHgusAoEuNdTnvS8aYugndeTkXTGQQELqRB6rIya', '101112', '2022-11-23 10:43:12', '2022-11-23 10:43:12');
INSERT INTO `ruang_kerja_peserta` VALUES (1803, 53, 221123101112168, 'Fajar', '$2y$10$q54mPPIBPDOM/Tp1usLbd.4I.tmq.xYqDnY1jNvBcMlbids2.Pmwi', '101112', '2022-11-23 10:43:12', '2022-11-23 10:43:12');
INSERT INTO `ruang_kerja_peserta` VALUES (1804, 53, 221123101112169, 'Nugraha', '$2y$10$PKifwe1w6srlUo3BXcq6I.6S4rMyAgxYmMIOPvgskuklMSuVAqiBW', '101112', '2022-11-23 10:43:12', '2022-11-23 10:43:12');
INSERT INTO `ruang_kerja_peserta` VALUES (1805, 53, 221123101112170, 'Andi', '$2y$10$zk7dEcmrn7g6cWLw2nnkXulYaOush8pvxhTGVzVmlX/DDmyYVi5XS', '101112', '2022-11-23 10:43:12', '2022-11-23 10:43:12');
INSERT INTO `ruang_kerja_peserta` VALUES (1806, 53, 221123101112171, 'Fajar', '$2y$10$HHaVbMac1aBuKux7q7wQaOOxqHk7eUpHr77VPueRGjCyYl8fa1Aba', '101112', '2022-11-23 10:43:12', '2022-11-23 10:43:12');
INSERT INTO `ruang_kerja_peserta` VALUES (1807, 53, 221123101112172, 'Nugraha', '$2y$10$1s7SGNbzOOaRzIc7OFWcsONitQR9o3HcX54V/32AK4ixZEwahQmcy', '101112', '2022-11-23 10:43:12', '2022-11-23 10:43:12');
INSERT INTO `ruang_kerja_peserta` VALUES (1808, 53, 221123101112173, 'Andi', '$2y$10$Jw4sx1ggAEpJFW7qL6gZKu3evH5kNMM/NGG0DB1MnMwQdiZxh9vRC', '101112', '2022-11-23 10:43:12', '2022-11-23 10:43:12');
INSERT INTO `ruang_kerja_peserta` VALUES (1809, 53, 221123101112174, 'Fajar', '$2y$10$kPiHVfN0G/GjMOHGTWpxie1SDnO6LGyni8iEm89KHLpyEXiULrR4.', '101112', '2022-11-23 10:43:12', '2022-11-23 10:43:12');
INSERT INTO `ruang_kerja_peserta` VALUES (1810, 53, 221123101112175, 'Nugraha', '$2y$10$KIKd9iuQ1IwJlurQ4KEyAuGIMmv/DL69/RWhbKGXV8Ty9W3CraCei', '101112', '2022-11-23 10:43:12', '2022-11-23 10:43:12');
INSERT INTO `ruang_kerja_peserta` VALUES (1811, 53, 221123101112176, 'Andi', '$2y$10$TIfpxh0RNEuG7JN3qg7d1u2PTuLTOGhEmC8mShuSJycp8iFMjE8cq', '101112', '2022-11-23 10:43:12', '2022-11-23 10:43:12');
INSERT INTO `ruang_kerja_peserta` VALUES (1812, 53, 221123101112177, 'Fajar', '$2y$10$kGq.lWoPBueAJx.Eaw5YG.H8DK0x/1OI6HfSrahLX1fjOWjgIMquG', '101113', '2022-11-23 10:43:13', '2022-11-23 10:43:13');
INSERT INTO `ruang_kerja_peserta` VALUES (1813, 53, 221123101113178, 'Nugraha', '$2y$10$SwwMESZA8sehd3KQUqQxJeI1gJ2knunTTlZC/TkQ0OoxNUX5netp6', '101113', '2022-11-23 10:43:13', '2022-11-23 10:43:13');
INSERT INTO `ruang_kerja_peserta` VALUES (1814, 53, 221123101113179, 'Andi', '$2y$10$Y0HytVPtKURXAwPZaAJMHud4kBt1Fcp/VF8by72jcmA2x1fByq.ma', '101113', '2022-11-23 10:43:13', '2022-11-23 10:43:13');
INSERT INTO `ruang_kerja_peserta` VALUES (1815, 53, 221123101113180, 'Fajar', '$2y$10$hxLnQAh4ZLwEA6S5UXMTxuMke.Iwq2Onf9Us5oL3dhaMoxBIUomU6', '101113', '2022-11-23 10:43:13', '2022-11-23 10:43:13');
INSERT INTO `ruang_kerja_peserta` VALUES (1816, 53, 221123101113181, 'Nugraha', '$2y$10$4n0VWA4uNxCSA4794PBmZ.4ISuUL8faQT0s087gYI5pDABwWVIKve', '101113', '2022-11-23 10:43:13', '2022-11-23 10:43:13');
INSERT INTO `ruang_kerja_peserta` VALUES (1817, 53, 221123101113182, 'Andi', '$2y$10$8hGgNxTpXxxCr5txPqfqc.fs3rERJlSQlKRPinEsLD6f8WMZoGxd6', '101113', '2022-11-23 10:43:13', '2022-11-23 10:43:13');
INSERT INTO `ruang_kerja_peserta` VALUES (1818, 53, 221123101113183, 'Fajar', '$2y$10$wG6zgkbbThqqCuwhVJUC9OE.aOHl/Nq1WzG0QS2pXMgLgP04Fz0k2', '101113', '2022-11-23 10:43:13', '2022-11-23 10:43:13');
INSERT INTO `ruang_kerja_peserta` VALUES (1819, 53, 221123101113184, 'Nugraha', '$2y$10$2WLrA/zPRM3plDzmGj3e4eh/XYCje2fp5DWelnewegeLncFVpnpNm', '101113', '2022-11-23 10:43:13', '2022-11-23 10:43:13');
INSERT INTO `ruang_kerja_peserta` VALUES (1820, 53, 221123101113185, 'Andi', '$2y$10$z8pyj.pomjpPO0CPNtOD1OT5RLQyzWbqluC/zs5i0s2LSJ0ri12CG', '101113', '2022-11-23 10:43:13', '2022-11-23 10:43:13');
INSERT INTO `ruang_kerja_peserta` VALUES (1821, 53, 221123101113186, 'Fajar', '$2y$10$FQOjVNAg5J2pb8V3NWdnJezCsvauj5Hwk6fQOKWXRZldF9CrKEx.S', '101113', '2022-11-23 10:43:13', '2022-11-23 10:43:13');
INSERT INTO `ruang_kerja_peserta` VALUES (1822, 53, 221123101113187, 'Nugraha', '$2y$10$xTusP5Nanz6FngScMdLqY.5D47j1LDcDc4FPezhfWd2VpqDyHkJEO', '101113', '2022-11-23 10:43:13', '2022-11-23 10:43:13');
INSERT INTO `ruang_kerja_peserta` VALUES (1823, 53, 221123101113188, 'Andi', '$2y$10$7ZhdhXfWuGpxSWf6a2I81OgeR51QESiRE1QCxIWV7V6Gkhip70eS.', '101113', '2022-11-23 10:43:13', '2022-11-23 10:43:13');
INSERT INTO `ruang_kerja_peserta` VALUES (1824, 53, 221123101113189, 'Fajar', '$2y$10$qwrqrKUXx8PM5ZlfGwdcF.T54fyiYruwl97UHuSRM.YWbUiuCCP.m', '101113', '2022-11-23 10:43:13', '2022-11-23 10:43:13');
INSERT INTO `ruang_kerja_peserta` VALUES (1825, 53, 221123101113190, 'Nugraha', '$2y$10$s13IzUVputpIy50jft4ytO8/dLBRd3be.DMyFsskUtknfuYKBPsva', '101113', '2022-11-23 10:43:13', '2022-11-23 10:43:13');
INSERT INTO `ruang_kerja_peserta` VALUES (1826, 53, 221123101113191, 'Fajar', '$2y$10$srtD7ZQp4.nISinNKW.ose8MMpNLCr9RSrVCannmkI.s/KwGsR3v.', '101113', '2022-11-23 10:43:13', '2022-11-23 10:43:13');
INSERT INTO `ruang_kerja_peserta` VALUES (1827, 53, 221123101113192, 'Nugraha', '$2y$10$7WSDclCiCymUj5orI9.1E.MBU1HgYC6kKMsjXxX4PAnj0nGX8iJei', '101113', '2022-11-23 10:43:13', '2022-11-23 10:43:13');
INSERT INTO `ruang_kerja_peserta` VALUES (1828, 53, 221123101113193, 'Andi', '$2y$10$..4ApPD20.OxLuUFmbg6SO/u.NWdARGszmjBLdIO1lSV4y7oQ6Kh.', '101113', '2022-11-23 10:43:13', '2022-11-23 10:43:13');
INSERT INTO `ruang_kerja_peserta` VALUES (1829, 53, 221123101113194, 'Fajar', '$2y$10$bjgEwcmE5X1TCg8F.J9mQudYChKCbWzA7qOyQxwsnR0djTNEmEvLG', '101113', '2022-11-23 10:43:13', '2022-11-23 10:43:13');
INSERT INTO `ruang_kerja_peserta` VALUES (1830, 53, 221123101113195, 'Nugraha', '$2y$10$SSG/LPYldRGYi0RhN0qMC.cUEH6MzDh0pjBVIYxufNDENs4qBef4y', '101113', '2022-11-23 10:43:13', '2022-11-23 10:43:13');
INSERT INTO `ruang_kerja_peserta` VALUES (1831, 53, 221123101113196, 'Nugraha', '$2y$10$qYRi52sB4F3SbSD2R7e0Nu0v4fMufQVxAUSIBkkwvOuN4gNW6oXF.', '101113', '2022-11-23 10:43:13', '2022-11-23 10:43:13');
INSERT INTO `ruang_kerja_peserta` VALUES (1832, 53, 221123101113197, 'Andi', '$2y$10$ysm6Y1EoluyrM.TpiNBTROMXVOSdBqZ.8plv0t2RMjjKN74A/3ONq', '101113', '2022-11-23 10:43:13', '2022-11-23 10:43:13');
INSERT INTO `ruang_kerja_peserta` VALUES (1833, 53, 221123101113198, 'Fajar', '$2y$10$DC640lM/K/Lmq4rwqULYFObFSoiCvyyIOb6dEVRA9AuW8ShG7MWLO', '101114', '2022-11-23 10:43:14', '2022-11-23 10:43:14');
INSERT INTO `ruang_kerja_peserta` VALUES (1834, 53, 221123101114199, 'Nugraha', '$2y$10$yL2ylPec2gvV/zp5UfP5YuYWflLo26o3teq8JCcp3wg/0.zEyB1x2', '101114', '2022-11-23 10:43:14', '2022-11-23 10:43:14');
INSERT INTO `ruang_kerja_peserta` VALUES (1835, 53, 221123101114200, 'Nugraha', '$2y$10$o.wmFWbksHKrA9z/kpOIoOClp/mc4y0BOaOyB41plRgMSG1rr5lS2', '101114', '2022-11-23 10:43:14', '2022-11-23 10:43:14');
INSERT INTO `ruang_kerja_peserta` VALUES (1836, 53, 221123101114201, 'Andi', '$2y$10$nh6Yp7iHtg8TtnxbRiFcP.u9UACwuvX9oR6r/VH29iJewG5nlLKf6', '101114', '2022-11-23 10:43:14', '2022-11-23 10:43:14');
INSERT INTO `ruang_kerja_peserta` VALUES (1837, 53, 221123101114202, 'Fajar', '$2y$10$c4ysxEpuHPVOEbZc9.j6wu7BF31noj1Jn2zQhR0fpA3c0jzz0UBM2', '101114', '2022-11-23 10:43:14', '2022-11-23 10:43:14');
INSERT INTO `ruang_kerja_peserta` VALUES (1838, 53, 221123101114203, 'Nugraha', '$2y$10$qfcRFrZbF8B9WaICeWjSheKlkx86M0PNx/53KndOGSvlTDVUEC7n2', '101114', '2022-11-23 10:43:14', '2022-11-23 10:43:14');
INSERT INTO `ruang_kerja_peserta` VALUES (1839, 53, 221123101114204, 'Andi', '$2y$10$NASrvNcdrtlVmrZO6Tl82etpweRaOY2zG9Vqgj5VJZig3WKaTLKiO', '101114', '2022-11-23 10:43:14', '2022-11-23 10:43:14');
INSERT INTO `ruang_kerja_peserta` VALUES (1840, 53, 221123101114205, 'Fajar', '$2y$10$lmtzgKJLPDCAlAvDnxPmOOZcg35dLXZCjMMxJ0DRUFXtIILjV6DnW', '101114', '2022-11-23 10:43:14', '2022-11-23 10:43:14');
INSERT INTO `ruang_kerja_peserta` VALUES (1841, 53, 221123101114206, 'Nugraha', '$2y$10$QcUu6ciy6x043QhdqQUuFu/sOGtHhCs2AqHW0QedDQhwRnFjuzpDW', '101114', '2022-11-23 10:43:14', '2022-11-23 10:43:14');
INSERT INTO `ruang_kerja_peserta` VALUES (1842, 53, 221123101114207, 'Andi', '$2y$10$V2WHsT36zSj9EO5qNpvlcuXq/3hE2ZUsnSl6DQY2lI5hxCw0oOp.q', '101114', '2022-11-23 10:43:14', '2022-11-23 10:43:14');
INSERT INTO `ruang_kerja_peserta` VALUES (1843, 53, 221123101114208, 'Fajar', '$2y$10$eys7e1qS.Vyd8ukzYSkYz.GZLOi1p6tnGE./WsxsCFA6wiLBkJmj6', '101114', '2022-11-23 10:43:14', '2022-11-23 10:43:14');
INSERT INTO `ruang_kerja_peserta` VALUES (1844, 53, 221123101114209, 'Nugraha', '$2y$10$DVusSRTMg7OCIICkqVcpt.8KFB/huCqKRFoRyfQFvPzsRWtxDVDoa', '101114', '2022-11-23 10:43:14', '2022-11-23 10:43:14');
INSERT INTO `ruang_kerja_peserta` VALUES (1845, 53, 221123101114210, 'Andi', '$2y$10$pmNj5Q0hgjSfpWHui60cOOX7HkyzckAX1cmXBMKJNEsykw9HQleHm', '101114', '2022-11-23 10:43:14', '2022-11-23 10:43:14');
INSERT INTO `ruang_kerja_peserta` VALUES (1846, 53, 221123101114211, 'Fajar', '$2y$10$iqqCncbVdWdfTr8Xh4ehyOUYOK2auydefoGK5BNnB4Y7ffmSUECE6', '101114', '2022-11-23 10:43:14', '2022-11-23 10:43:14');
INSERT INTO `ruang_kerja_peserta` VALUES (1847, 53, 221123101114212, 'Nugraha', '$2y$10$R8KvtIPfVYnbtZmM6.YUROvr/G9xbbpRS386FmXFfdB.CH2hPstOK', '101114', '2022-11-23 10:43:14', '2022-11-23 10:43:14');
INSERT INTO `ruang_kerja_peserta` VALUES (1848, 53, 221123101114213, 'Andi', '$2y$10$UH3./ITo40JdCAcHkKKRWuQgbOmnXeHxloRgECI.zmD3/Tu.SOMPu', '101114', '2022-11-23 10:43:14', '2022-11-23 10:43:14');
INSERT INTO `ruang_kerja_peserta` VALUES (1849, 53, 221123101114214, 'Fajar', '$2y$10$F8i1Ij.pSIHJWAD97091y.FytYbNS341MsgZmRDLc3N3MdqKlU8gi', '101114', '2022-11-23 10:43:14', '2022-11-23 10:43:14');
INSERT INTO `ruang_kerja_peserta` VALUES (1850, 53, 221123101114215, 'Nugraha', '$2y$10$7IqLQRrJ6VgNtmwBJ3Myu.RvHBNRyxxs2iTlhZ2nQN5F47AFfY7ta', '101114', '2022-11-23 10:43:14', '2022-11-23 10:43:14');
INSERT INTO `ruang_kerja_peserta` VALUES (1851, 53, 221123101114216, 'Andi', '$2y$10$0ZlkAwwOZP9gH/5aDPeENOXelZHs4v.gNbHrVyIr9Mh15sQDyvoDS', '101114', '2022-11-23 10:43:14', '2022-11-23 10:43:14');
INSERT INTO `ruang_kerja_peserta` VALUES (1852, 53, 221123101114217, 'Fajar', '$2y$10$e3TZucUP3rgARqlzdHz/B.8kgzdG1dTr0waOIxjCwpojDkF/CpZFa', '101114', '2022-11-23 10:43:14', '2022-11-23 10:43:14');
INSERT INTO `ruang_kerja_peserta` VALUES (1853, 53, 221123101114218, 'Nugraha', '$2y$10$1x0QzoEUQFG58mYWMvKIy..DkYaUusRdMj6TNrk9.btpWMTkKIlxe', '101114', '2022-11-23 10:43:14', '2022-11-23 10:43:14');
INSERT INTO `ruang_kerja_peserta` VALUES (1854, 53, 221123101114219, 'Andi', '$2y$10$/FXAS/IWbCDZuMKlmbtAzuJW9tk7g7F/wNdvzm7h.oXOxWDdDZRWS', '101114', '2022-11-23 10:43:14', '2022-11-23 10:43:14');
INSERT INTO `ruang_kerja_peserta` VALUES (1855, 53, 221123101114220, 'Fajar', '$2y$10$vGi.oSrCES3engNSVXeXE.f3VoqMDbzm49fRMm4TbTMdhiilc9KY2', '101115', '2022-11-23 10:43:15', '2022-11-23 10:43:15');
INSERT INTO `ruang_kerja_peserta` VALUES (1856, 53, 221123101115221, 'Nugraha', '$2y$10$QWSt8yzcVwCsGZ7AWG7XP.CmoUhqata.cNX73LgTgnFMAbNaKOgr.', '101115', '2022-11-23 10:43:15', '2022-11-23 10:43:15');
INSERT INTO `ruang_kerja_peserta` VALUES (1857, 53, 221123101115222, 'Andi', '$2y$10$1rvOBTew4j1BdHt4r1AkL.NSytrM/oGhyXLzyICsaqBQy1SgkKWZq', '101115', '2022-11-23 10:43:15', '2022-11-23 10:43:15');
INSERT INTO `ruang_kerja_peserta` VALUES (1858, 53, 221123101115223, 'Fajar', '$2y$10$NCtdc3OzJgSpczX6IJiF6.o78qFx6I.gNCsp5cQnEnBPAc59ElfcK', '101115', '2022-11-23 10:43:15', '2022-11-23 10:43:15');
INSERT INTO `ruang_kerja_peserta` VALUES (1859, 53, 221123101115224, 'Nugraha', '$2y$10$vLTEnu5Ce7UWR95ZqbHx6.HeznzqF17Rhmxfnoi11EyrG0GprXDNi', '101115', '2022-11-23 10:43:15', '2022-11-23 10:43:15');
INSERT INTO `ruang_kerja_peserta` VALUES (1860, 53, 221123101115225, 'Andi', '$2y$10$3QEhTffr98CvZVWh5Fa9Pex7RMhUhCs.hqQPwjMH6S7XKwGjFDD.y', '101115', '2022-11-23 10:43:15', '2022-11-23 10:43:15');
INSERT INTO `ruang_kerja_peserta` VALUES (1861, 53, 221123101115226, 'Fajar', '$2y$10$Xq3WimOsslpHu/.1.d3TLefpekWe2D0lyihKoAp.AxGh9jCgHrBiu', '101115', '2022-11-23 10:43:15', '2022-11-23 10:43:15');
INSERT INTO `ruang_kerja_peserta` VALUES (1862, 53, 221123101115227, 'Nugraha', '$2y$10$5XBPHA4LY4LZ.Ml9IULLd.ouSV4RTNMJv3ROnEvlORYLLVii2Ko9e', '101115', '2022-11-23 10:43:15', '2022-11-23 10:43:15');
INSERT INTO `ruang_kerja_peserta` VALUES (1863, 53, 221123101115228, 'Andi', '$2y$10$Dup69JRkAr3/Lyb0Az.qXerYP.Do1TxoB9U1LoPUmga.v1cCHA6qu', '101115', '2022-11-23 10:43:15', '2022-11-23 10:43:15');
INSERT INTO `ruang_kerja_peserta` VALUES (1864, 53, 221123101115229, 'Fajar', '$2y$10$va21u0r6CaKY003C2LODnOf8L27cmoo/9MFmizXX4zLZDpTZuHn7q', '101115', '2022-11-23 10:43:15', '2022-11-23 10:43:15');
INSERT INTO `ruang_kerja_peserta` VALUES (1865, 53, 221123101115230, 'Nugraha', '$2y$10$X/hb7qI1S9tZFMVCTDsu/OHgG7qEQhuk0/4XpIgMa2EFbOwuPHzdO', '101115', '2022-11-23 10:43:15', '2022-11-23 10:43:15');
INSERT INTO `ruang_kerja_peserta` VALUES (1866, 53, 221123101115231, 'Fajar', '$2y$10$7gVlYBa5gaYGq0.NaCvo8ezvqkaMo1WAXn9IO08AvBPiQmTdujtF2', '101115', '2022-11-23 10:43:15', '2022-11-23 10:43:15');
INSERT INTO `ruang_kerja_peserta` VALUES (1867, 53, 221123101115232, 'Nugraha', '$2y$10$Rs0ugzRl07uJ5UFXc4KeROz2t6sQM6xHl9wZPrPTgYWzfXZGybIwi', '101115', '2022-11-23 10:43:15', '2022-11-23 10:43:15');
INSERT INTO `ruang_kerja_peserta` VALUES (1868, 53, 221123101115233, 'Andi', '$2y$10$Mo8ejwMwYpIPh0qdWs6XMO0m5.JLuJCqJlcsyQDCr0y4zAFnKX.lG', '101115', '2022-11-23 10:43:15', '2022-11-23 10:43:15');
INSERT INTO `ruang_kerja_peserta` VALUES (1869, 53, 221123101115234, 'Fajar', '$2y$10$K4tqJ3dkP7nufjSTfYkTc.OQJXnaEbjawDYkjld20HhC3QiqmQC3q', '101115', '2022-11-23 10:43:15', '2022-11-23 10:43:15');
INSERT INTO `ruang_kerja_peserta` VALUES (1870, 53, 221123101115235, 'Nugraha', '$2y$10$rQlFnBVSFrkBxLV7Q.TLiumqAgxZ9w21u/awpjHYKCE7XOlX0p4iq', '101115', '2022-11-23 10:43:15', '2022-11-23 10:43:15');
INSERT INTO `ruang_kerja_peserta` VALUES (1871, 53, 221123101115236, 'Nugraha', '$2y$10$FNnlkLqnYO5qOGvOeaNpBu5KVsuF6qb00oAA7L/owbrA5YE7RkY..', '101115', '2022-11-23 10:43:15', '2022-11-23 10:43:15');
INSERT INTO `ruang_kerja_peserta` VALUES (1872, 53, 221123101115237, 'Andi', '$2y$10$apkzo2ev7oViGn/.GBswauYlIYvaNuWiTpTZv978mH5VeG.5GLsYe', '101115', '2022-11-23 10:43:15', '2022-11-23 10:43:15');
INSERT INTO `ruang_kerja_peserta` VALUES (1873, 53, 221123101115238, 'Fajar', '$2y$10$WTHnL/weIZwWUBf7Rv.8H.3PbOAH7UdgA13bAOBfH0n1imSDVqs3u', '101115', '2022-11-23 10:43:15', '2022-11-23 10:43:15');
INSERT INTO `ruang_kerja_peserta` VALUES (1874, 53, 221123101115239, 'Nugraha', '$2y$10$18dHwxQEG8GYkDCuwG56POXmINlUVnHqZSbSb01Q5.wqf.9uBz2GS', '101115', '2022-11-23 10:43:15', '2022-11-23 10:43:15');
INSERT INTO `ruang_kerja_peserta` VALUES (1875, 53, 221123101115240, 'Nugraha', '$2y$10$zadxi6wNbWbMF5T8fpHJsOKM7V.dKQMx0RofG4J0jl9b754YSPM0u', '101115', '2022-11-23 10:43:15', '2022-11-23 10:43:15');
INSERT INTO `ruang_kerja_peserta` VALUES (1876, 53, 221123101115241, 'Andi', '$2y$10$ibIpksStUuinHlvKkHOclenaknwc8WW/CfB5IAktIHjz4fvPugrey', '101116', '2022-11-23 10:43:16', '2022-11-23 10:43:16');
INSERT INTO `ruang_kerja_peserta` VALUES (1877, 53, 221123101116242, 'Fajar', '$2y$10$U9ny1FD2tenTUnOpexnemO2wOdMZ3hNZJKEvfKBmYEEifvOO7wawG', '101116', '2022-11-23 10:43:16', '2022-11-23 10:43:16');
INSERT INTO `ruang_kerja_peserta` VALUES (1878, 53, 221123101116243, 'Nugraha', '$2y$10$zscH/t29o1nCQ9plY/FAle.Op/egGokGO8eRfefm2Dy/vVmD0rJby', '101116', '2022-11-23 10:43:16', '2022-11-23 10:43:16');
INSERT INTO `ruang_kerja_peserta` VALUES (1879, 53, 221123101116244, 'Andi', '$2y$10$O8vB57j219PFaL1R3Qy0n.6xUYr9ZT6jELqnhTIImAwDBONQz1O/O', '101116', '2022-11-23 10:43:16', '2022-11-23 10:43:16');
INSERT INTO `ruang_kerja_peserta` VALUES (1880, 53, 221123101116245, 'Fajar', '$2y$10$lv2N5tM8iKXi0s6mTJ0JkeeHqx8Oba0VqB1Iq/gQ7iQQrwmYOhrLy', '101116', '2022-11-23 10:43:16', '2022-11-23 10:43:16');
INSERT INTO `ruang_kerja_peserta` VALUES (1881, 53, 221123101116246, 'Nugraha', '$2y$10$vRSchbZh190tDSs845ZnX.vRJX6HjaMOwOhupl30jcOTNt5YdHtEq', '101116', '2022-11-23 10:43:16', '2022-11-23 10:43:16');
INSERT INTO `ruang_kerja_peserta` VALUES (1882, 53, 221123101116247, 'Andi', '$2y$10$CAXWZ8r123d8ahH39f9gJuRQ0CJU3OIy1JOk/iA24VMR6QiH2Hf3.', '101116', '2022-11-23 10:43:16', '2022-11-23 10:43:16');
INSERT INTO `ruang_kerja_peserta` VALUES (1883, 53, 221123101116248, 'Fajar', '$2y$10$V3k17pmHVcaKkM.1rJY9mOkWTur5WdWxPJVRXOPHaslasug0XTfDO', '101116', '2022-11-23 10:43:16', '2022-11-23 10:43:16');
INSERT INTO `ruang_kerja_peserta` VALUES (1884, 53, 221123101116249, 'Nugraha', '$2y$10$3l20xsjLOQ8UTCLJpBNIeOPnpvPSbyAg3sls2Anv7WpwyGKttKitS', '101116', '2022-11-23 10:43:16', '2022-11-23 10:43:16');
INSERT INTO `ruang_kerja_peserta` VALUES (1885, 53, 221123101116250, 'Andi', '$2y$10$JnzopCh6vyADYWmK7kPtku7osrUveTusuC8Tl6A2JkomRm.GFz85i', '101116', '2022-11-23 10:43:16', '2022-11-23 10:43:16');
INSERT INTO `ruang_kerja_peserta` VALUES (1886, 53, 221123101116251, 'Fajar', '$2y$10$DbyhIkblrtIV.WicMDfeGutvgHuJj0aDsWqrMwYkKctTpFoAjyROC', '101116', '2022-11-23 10:43:16', '2022-11-23 10:43:16');
INSERT INTO `ruang_kerja_peserta` VALUES (1887, 53, 221123101116252, 'Nugraha', '$2y$10$D7aQhmDblhbkaWHbGIboaetxSPDxc.Ki2KRhZunEJ9xDTHHNtXHB6', '101116', '2022-11-23 10:43:16', '2022-11-23 10:43:16');
INSERT INTO `ruang_kerja_peserta` VALUES (1888, 53, 221123101116253, 'Andi', '$2y$10$QI4a/tNKvHJrtAHAdYb5ru4acqUwmiDO3V3Zrx2C66oIJAI8z.0Ve', '101116', '2022-11-23 10:43:16', '2022-11-23 10:43:16');
INSERT INTO `ruang_kerja_peserta` VALUES (1889, 53, 221123101116254, 'Fajar', '$2y$10$IkffxfHb9Oqw0MBdNuQ//erKKoLkzcjoNz3ei1nzibwyi2cGlF1/e', '101116', '2022-11-23 10:43:16', '2022-11-23 10:43:16');
INSERT INTO `ruang_kerja_peserta` VALUES (1890, 53, 221123101116255, 'Nugraha', '$2y$10$MjbPKpZBNjOPc3bJnc1lp.d4mZOhzsClOG0DvXH.szEj4esaVrTFy', '101116', '2022-11-23 10:43:16', '2022-11-23 10:43:16');
INSERT INTO `ruang_kerja_peserta` VALUES (1891, 53, 221123101116256, 'Andi', '$2y$10$Vwop30KxiS/fz9EsYIPwHektrSWYJt/WW8wfTCbIb5seOWSiTVN8a', '101116', '2022-11-23 10:43:16', '2022-11-23 10:43:16');
INSERT INTO `ruang_kerja_peserta` VALUES (1892, 53, 221123101116257, 'Fajar', '$2y$10$IGTX95ZDXYE/xCyf5Xk8IOzjYUgarjyAPaaZx.fONgf1FVi8I8ia6', '101116', '2022-11-23 10:43:16', '2022-11-23 10:43:16');
INSERT INTO `ruang_kerja_peserta` VALUES (1893, 53, 221123101116258, 'Nugraha', '$2y$10$PxYpmzZsqMvEdmSzioaFxOyfa0r6zhUjEKicMTL6GWmJ5kb2xFRne', '101116', '2022-11-23 10:43:16', '2022-11-23 10:43:16');
INSERT INTO `ruang_kerja_peserta` VALUES (1894, 53, 221123101116259, 'Andi', '$2y$10$h85U.PAdwLJPokabluCwX.ZFzVb9tpfGuEFhmgiQ8nXtiftqrhBzm', '101116', '2022-11-23 10:43:16', '2022-11-23 10:43:16');
INSERT INTO `ruang_kerja_peserta` VALUES (1895, 53, 221123101116260, 'Fajar', '$2y$10$OUlUOrHbJlN/jwmLMqEXtO1q5KbDLv/htH/C6H.juCddGb1Qm7.rO', '101116', '2022-11-23 10:43:16', '2022-11-23 10:43:16');
INSERT INTO `ruang_kerja_peserta` VALUES (1896, 53, 221123101116261, 'Nugraha', '$2y$10$8q3wXzZOjALJ4S1i67Xqeu02EV86.pMv0fv0YrBpFyRxI8EhERkGu', '101116', '2022-11-23 10:43:16', '2022-11-23 10:43:16');
INSERT INTO `ruang_kerja_peserta` VALUES (1897, 53, 221123101116262, 'Andi', '$2y$10$WRp8U8YVm2HJeX/fhYUG5OMN4CIRXKwYznIetV4TKTqfoGz6wLYgW', '101117', '2022-11-23 10:43:17', '2022-11-23 10:43:17');
INSERT INTO `ruang_kerja_peserta` VALUES (1898, 53, 221123101117263, 'Fajar', '$2y$10$dWFvbdooHP8JUj1jJZXCuuR5yg3h.PP/Q2XWGUIuoOQZxKpLQ2gqm', '101117', '2022-11-23 10:43:17', '2022-11-23 10:43:17');
INSERT INTO `ruang_kerja_peserta` VALUES (1899, 53, 221123101117264, 'Nugraha', '$2y$10$7Rv9uKnHjmtvHg7lHYa/c.tIcxM.TW9sbCi3A.G5cBEjAJuYhY0o2', '101117', '2022-11-23 10:43:17', '2022-11-23 10:43:17');
INSERT INTO `ruang_kerja_peserta` VALUES (1900, 53, 221123101117265, 'Andi', '$2y$10$TCDuOLlC9dqsxSHddvc2Jed5ellm2Tm3Svk0QlhPBT.6.5jtSGuUu', '101117', '2022-11-23 10:43:17', '2022-11-23 10:43:17');
INSERT INTO `ruang_kerja_peserta` VALUES (1901, 53, 221123101117266, 'Fajar', '$2y$10$RCuHHF2Rk7CgrJRFokxYY.3rBZ.d8uIYFReocJoSmbGlwDjC5BvNO', '101117', '2022-11-23 10:43:17', '2022-11-23 10:43:17');
INSERT INTO `ruang_kerja_peserta` VALUES (1902, 53, 221123101117267, 'Nugraha', '$2y$10$WQEHsRXaen3e4maj.Wh.zeqQ5juv832re4HiwOq10/N7GQI8vmftW', '101117', '2022-11-23 10:43:17', '2022-11-23 10:43:17');
INSERT INTO `ruang_kerja_peserta` VALUES (1903, 53, 221123101117268, 'Andi', '$2y$10$Ft6eroAM96g90mJyQ0ZXWeeIQfkmf5xjDWKJe5HLQAt9vEj6.xb7G', '101117', '2022-11-23 10:43:17', '2022-11-23 10:43:17');
INSERT INTO `ruang_kerja_peserta` VALUES (1904, 53, 221123101117269, 'Fajar', '$2y$10$d8LV72SO5EY2.Lmt.QTf3eAcExuRlhfNAAcXPrZLxih3ychJ/AV36', '101117', '2022-11-23 10:43:17', '2022-11-23 10:43:17');
INSERT INTO `ruang_kerja_peserta` VALUES (1905, 53, 221123101117270, 'Nugraha', '$2y$10$cYC3.COJbaNZ8SVNlYMap.rwlnRt7J0uWDI6/wth5eav09pz2EQ2y', '101117', '2022-11-23 10:43:17', '2022-11-23 10:43:17');
INSERT INTO `ruang_kerja_peserta` VALUES (1906, 53, 221123101117271, 'Fajar', '$2y$10$UqlabGqALUoOi9Yc5qLOv.ZTEoME9v/WY/sKXY7NI3H0jaAzOWzh6', '101117', '2022-11-23 10:43:17', '2022-11-23 10:43:17');
INSERT INTO `ruang_kerja_peserta` VALUES (1907, 53, 221123101117272, 'Nugraha', '$2y$10$m6SGmenxXQUvoEr19pPDFuiKF7WtRl0W9FD2RndDZOEliZBtSA3LK', '101117', '2022-11-23 10:43:17', '2022-11-23 10:43:17');
INSERT INTO `ruang_kerja_peserta` VALUES (1908, 53, 221123101117273, 'Andi', '$2y$10$diOfH/C6VJiAaKuHyjJC1eZD6t9ZhglHTG8gQiaRdN1zFtVmAVWOe', '101117', '2022-11-23 10:43:17', '2022-11-23 10:43:17');
INSERT INTO `ruang_kerja_peserta` VALUES (1909, 53, 221123101117274, 'Fajar', '$2y$10$Zpurj1URPQErEp/7Af9tDuGGnvLHTc09da36gYRv1BdCjGzGAwDmq', '101117', '2022-11-23 10:43:17', '2022-11-23 10:43:17');
INSERT INTO `ruang_kerja_peserta` VALUES (1910, 53, 221123101117275, 'Nugraha', '$2y$10$Z1bveUC4nKBjN3dmp5Pu7.NJZfYSgmMSq4VX0ghNOUyyh.prEIx0e', '101117', '2022-11-23 10:43:17', '2022-11-23 10:43:17');
INSERT INTO `ruang_kerja_peserta` VALUES (1911, 53, 221123101117276, 'Nugraha', '$2y$10$Ip1MJByr7t88uzMuEAuMrOzJv6AevWOcqJbCz9dNTaS968T7uuwVW', '101117', '2022-11-23 10:43:17', '2022-11-23 10:43:17');
INSERT INTO `ruang_kerja_peserta` VALUES (1912, 53, 221123101117277, 'Andi', '$2y$10$4L8NG5.mM1YECf8cprfCNuZU5GKl0CYEA3FUb6NWM6026w/TiWr/q', '101117', '2022-11-23 10:43:17', '2022-11-23 10:43:17');
INSERT INTO `ruang_kerja_peserta` VALUES (1913, 53, 221123101117278, 'Fajar', '$2y$10$8Q50toqtPjssQr60v9RQlOWmjt4aGREMQzA3GMDiaWhPhYM5NVM/q', '101117', '2022-11-23 10:43:17', '2022-11-23 10:43:17');
INSERT INTO `ruang_kerja_peserta` VALUES (1914, 53, 221123101117279, 'Nugraha', '$2y$10$6fKQskvKdlhositdAuDL5ub/Xo40PAr3PbUV9I0LKovr1Mm4ZixFy', '101117', '2022-11-23 10:43:17', '2022-11-23 10:43:17');
INSERT INTO `ruang_kerja_peserta` VALUES (1915, 53, 221123101117280, 'Nugraha', '$2y$10$PXsFnD0kM7Gh3MR2dyTVA.gwqXhxeymE5g.BOKX2SUPPhjQMalXly', '101117', '2022-11-23 10:43:17', '2022-11-23 10:43:17');
INSERT INTO `ruang_kerja_peserta` VALUES (1916, 53, 221123101117281, 'Andi', '$2y$10$D5OI/DyUuqpEEzogM1Vcz.xOJx2JA95hjrf8OtY0MXvIjsMOaQYh.', '101117', '2022-11-23 10:43:17', '2022-11-23 10:43:17');
INSERT INTO `ruang_kerja_peserta` VALUES (1917, 53, 221123101117282, 'Fajar', '$2y$10$Kj3W9S4wGja/PF7veqsa9uTvyTjehFupoWk6dEJYrarsaZIWrpuwq', '101117', '2022-11-23 10:43:17', '2022-11-23 10:43:17');
INSERT INTO `ruang_kerja_peserta` VALUES (1918, 53, 221123101117283, 'Nugraha', '$2y$10$.ezqVIt5t0hEtF5RY.4ZmeRNwUuvryjEkDZgdvBfa7h3EsTyz09bW', '101117', '2022-11-23 10:43:17', '2022-11-23 10:43:17');
INSERT INTO `ruang_kerja_peserta` VALUES (1919, 53, 221123101117284, 'Andi', '$2y$10$7.nhqe/Q/yU5xOZZhN1Im.9qsqRJUXmTQKJd8OQ9G94l8jzgAHIta', '101118', '2022-11-23 10:43:18', '2022-11-23 10:43:18');
INSERT INTO `ruang_kerja_peserta` VALUES (1920, 53, 221123101118285, 'Fajar', '$2y$10$rA2jVSIlaxcyP4grLWS.vuoChJTcylEolcFHzyAMKwVae/qRhLiq2', '101118', '2022-11-23 10:43:18', '2022-11-23 10:43:18');
INSERT INTO `ruang_kerja_peserta` VALUES (1921, 53, 221123101118286, 'Nugraha', '$2y$10$bC31C47fiy5mCIWaIbQpT.bRWcDsP4oZS6wlk7XBhy9WX6BJseWYy', '101118', '2022-11-23 10:43:18', '2022-11-23 10:43:18');
INSERT INTO `ruang_kerja_peserta` VALUES (1922, 53, 221123101118287, 'Andi', '$2y$10$CRR3STQt4rzum1fGhw9RkuxZ36T5FAHlHyyCJD70dC0d0dOO5PsW6', '101118', '2022-11-23 10:43:18', '2022-11-23 10:43:18');
INSERT INTO `ruang_kerja_peserta` VALUES (1923, 53, 221123101118288, 'Fajar', '$2y$10$2HB.Kf25J7/CDAQDz4JV5eekR1w2eUyPxA5AX/VCmodHmMmAC2huO', '101118', '2022-11-23 10:43:18', '2022-11-23 10:43:18');
INSERT INTO `ruang_kerja_peserta` VALUES (1924, 53, 221123101118289, 'Nugraha', '$2y$10$7JkKRVzGlDj8NKdkYCVyc.eM7SUPdsV1iT2kHsFNgUE7nna5CwRiu', '101118', '2022-11-23 10:43:18', '2022-11-23 10:43:18');
INSERT INTO `ruang_kerja_peserta` VALUES (1925, 53, 221123101118290, 'Andi', '$2y$10$2X/smU7sCGtvuSFaKc4B.O5r8wD2lhzAU8iQcI6FHUkVGo9dhPsFO', '101118', '2022-11-23 10:43:18', '2022-11-23 10:43:18');
INSERT INTO `ruang_kerja_peserta` VALUES (1926, 53, 221123101118291, 'Fajar', '$2y$10$69CU.6Q8LXJ0uQm3.MSxUe44PGoabX5/imPHvAL7D1FRjR41WQyAC', '101118', '2022-11-23 10:43:18', '2022-11-23 10:43:18');
INSERT INTO `ruang_kerja_peserta` VALUES (1927, 53, 221123101118292, 'Nugraha', '$2y$10$1xgGMEwjWc3Wa2LDfiB1p.2jWQgVgU6ZjgDAHJNY/vw3AYdXZQ/nG', '101118', '2022-11-23 10:43:18', '2022-11-23 10:43:18');
INSERT INTO `ruang_kerja_peserta` VALUES (1928, 53, 221123101118293, 'Andi', '$2y$10$7U12EUDwDqgE89NHgfGZGe5sF4PR6y.bSeiw97Zwunvklbrv97GkC', '101118', '2022-11-23 10:43:18', '2022-11-23 10:43:18');
INSERT INTO `ruang_kerja_peserta` VALUES (1929, 53, 221123101118294, 'Fajar', '$2y$10$KhqILAmso0qi6IupGFbuneo6HQCBQm.JzRzl77GOTjPsHZWmjpBma', '101118', '2022-11-23 10:43:18', '2022-11-23 10:43:18');
INSERT INTO `ruang_kerja_peserta` VALUES (1930, 53, 221123101118295, 'Nugraha', '$2y$10$1QSKYC5TTouoBTQ1IcRIfOpscF1fCY3/N/R6T3301wxIp4fwDe2ji', '101118', '2022-11-23 10:43:18', '2022-11-23 10:43:18');
INSERT INTO `ruang_kerja_peserta` VALUES (1931, 53, 221123101118296, 'Andi', '$2y$10$dWXmz71/QeDrcB.eHNrbBeppRN7quBleBJrCCecQSTgKv8s0u6n0e', '101118', '2022-11-23 10:43:18', '2022-11-23 10:43:18');
INSERT INTO `ruang_kerja_peserta` VALUES (1932, 53, 221123101118297, 'Fajar', '$2y$10$DzBNkRizE1t1YPcl.LrqY.TWmKtFQyRFOjx90VVZ4hAp37paA9Y7.', '101118', '2022-11-23 10:43:18', '2022-11-23 10:43:18');
INSERT INTO `ruang_kerja_peserta` VALUES (1933, 53, 221123101118298, 'Nugraha', '$2y$10$.5gb8dGVoIH9gkQ55LJUfOzqn0QV1YL4xLVV27ahqIyGDs7FvfaX2', '101118', '2022-11-23 10:43:18', '2022-11-23 10:43:18');
INSERT INTO `ruang_kerja_peserta` VALUES (1934, 53, 221123101118299, 'Andi', '$2y$10$xxl607uFKhVSshAACD6htOyW9IRgQoavvbqGxwbluP5IDr4iTAjYe', '101118', '2022-11-23 10:43:18', '2022-11-23 10:43:18');
INSERT INTO `ruang_kerja_peserta` VALUES (1935, 53, 221123101118300, 'Fajar', '$2y$10$EBbnmclEVa823XsnqPWwt.YIgyLBnNNxM7rnyS3qTSbQVhH8DVUoS', '101118', '2022-11-23 10:43:18', '2022-11-23 10:43:18');
INSERT INTO `ruang_kerja_peserta` VALUES (1936, 53, 221123101118301, 'Nugraha', '$2y$10$CkG2oacEe2x4j3mQz7aF7esK6jYb/230hXUBDApDtyTWjpTAWzQu2', '101118', '2022-11-23 10:43:18', '2022-11-23 10:43:18');
INSERT INTO `ruang_kerja_peserta` VALUES (1937, 53, 221123101118302, 'Andi', '$2y$10$.nw658oP4eG1Av2r3dS4oOr7cLqZLI2yfXRanpVxoOdf6CPlBkwiO', '101118', '2022-11-23 10:43:18', '2022-11-23 10:43:18');
INSERT INTO `ruang_kerja_peserta` VALUES (1938, 53, 221123101118303, 'Fajar', '$2y$10$FdeU9B638ZJIgpLnFgXtGepmSBSmr8a38l.ZYg5y5DSH8D3eMVHpe', '101118', '2022-11-23 10:43:18', '2022-11-23 10:43:18');
INSERT INTO `ruang_kerja_peserta` VALUES (1939, 53, 221123101118304, 'Nugraha', '$2y$10$aeM1URzYdcCEE8tDEJfnZOlhm9.szDkWHwwG6tokazW9ovz9/wT/K', '101118', '2022-11-23 10:43:18', '2022-11-23 10:43:18');
INSERT INTO `ruang_kerja_peserta` VALUES (1940, 53, 221123101118305, 'Andi', '$2y$10$uNPNIS18VH.gBSMN4Obv2.vul5hTANkIIsncagZ6F.5MvBzNti/pK', '101119', '2022-11-23 10:43:19', '2022-11-23 10:43:19');
INSERT INTO `ruang_kerja_peserta` VALUES (1941, 53, 221123101119306, 'Fajar', '$2y$10$ksUiQ1CcuQZd/eZBCjvSJODKn8qq/1m3N3QQbzj2W306rPvt8jhKW', '101119', '2022-11-23 10:43:19', '2022-11-23 10:43:19');
INSERT INTO `ruang_kerja_peserta` VALUES (1942, 53, 221123101119307, 'Nugraha', '$2y$10$AmVX7Gc9KeqyEA15sWKNKOyk.TgaxDOOPNCGduN8oBEBXPH44x1xG', '101119', '2022-11-23 10:43:19', '2022-11-23 10:43:19');
INSERT INTO `ruang_kerja_peserta` VALUES (1943, 53, 221123101119308, 'Andi', '$2y$10$ZMJhW6X09Tbw0fjBaSlYVe3jGBlIVPAmvaVx6yb9y4nhYK4HY4gE2', '101119', '2022-11-23 10:43:19', '2022-11-23 10:43:19');
INSERT INTO `ruang_kerja_peserta` VALUES (1944, 53, 221123101119309, 'Fajar', '$2y$10$zM20Th0JJrtp5iUCBLlxguTad25IGER9VUO6ctz4tDISjJKAZUGVq', '101119', '2022-11-23 10:43:19', '2022-11-23 10:43:19');
INSERT INTO `ruang_kerja_peserta` VALUES (1945, 53, 221123101119310, 'Nugraha', '$2y$10$fEcx.ly6UtZ0Ou464RyjvOk3Avwk.sWuipR/5eAW9S6OPMLxCUDte', '101119', '2022-11-23 10:43:19', '2022-11-23 10:43:19');
INSERT INTO `ruang_kerja_peserta` VALUES (1946, 53, 221123101119311, 'Fajar', '$2y$10$X24eNGaC25ZF/0KKqs5cNuMvJDo0D7R2v9eZHu4eSlu2u.nciVA.e', '101119', '2022-11-23 10:43:19', '2022-11-23 10:43:19');
INSERT INTO `ruang_kerja_peserta` VALUES (1947, 53, 221123101119312, 'Nugraha', '$2y$10$JqCXmQ4UqIbOipqkNzaoZe4s24JvpQRAWmbo1uwjGnzbODCbq239u', '101119', '2022-11-23 10:43:19', '2022-11-23 10:43:19');
INSERT INTO `ruang_kerja_peserta` VALUES (1948, 53, 221123101119313, 'Andi', '$2y$10$OqhAmOx4QX4YsqgqvxsZRus5Z5yPQNMucVaeSHJZ5WoPP.6wkeJkS', '101119', '2022-11-23 10:43:19', '2022-11-23 10:43:19');
INSERT INTO `ruang_kerja_peserta` VALUES (1949, 53, 221123101119314, 'Fajar', '$2y$10$pw0QbDCFgedGlGk/8YT95eduyHx8JJVSrYMTv4BaaHHJhYII0Pq8a', '101119', '2022-11-23 10:43:19', '2022-11-23 10:43:19');
INSERT INTO `ruang_kerja_peserta` VALUES (1950, 53, 221123101119315, 'Nugraha', '$2y$10$ARX7F5sxCceHaiT7.6ikQeoSLKlzQZ0Uus1dLl3yQb/mPK3wOKAq2', '101119', '2022-11-23 10:43:19', '2022-11-23 10:43:19');
INSERT INTO `ruang_kerja_peserta` VALUES (1951, 53, 221123101119316, 'Nugraha', '$2y$10$7.KTWNoXjXARYmSvl4V13uh6TKCTJh1D0821jPhtFzDgo1nxrFyDK', '101119', '2022-11-23 10:43:19', '2022-11-23 10:43:19');
INSERT INTO `ruang_kerja_peserta` VALUES (1952, 53, 221123101119317, 'Andi', '$2y$10$PmBVYPCyMojdUwuKvg2/wOcvolwSNxQG44Aot7cRsPuRALgsjAlLK', '101119', '2022-11-23 10:43:19', '2022-11-23 10:43:19');
INSERT INTO `ruang_kerja_peserta` VALUES (1953, 53, 221123101119318, 'Fajar', '$2y$10$MjXYrTe8e4bjYnM/1Gm5xuZPOrwJT66fDj743Vbff3XxsNMA9saaK', '101119', '2022-11-23 10:43:19', '2022-11-23 10:43:19');
INSERT INTO `ruang_kerja_peserta` VALUES (1954, 53, 221123101119319, 'Nugraha', '$2y$10$NnJB5WmRj2oInsqz.QuBveQCS3rXSuDZ9iDeILVJzi9rp4G/MW7aq', '101119', '2022-11-23 10:43:19', '2022-11-23 10:43:19');
INSERT INTO `ruang_kerja_peserta` VALUES (1955, 53, 221123101119320, 'Nugraha', '$2y$10$5z1I9.bGVx8nC1nzl7qAZuB/vJJkiWt6e2BAgKV0TJ5XMWtpeooUi', '101119', '2022-11-23 10:43:19', '2022-11-23 10:43:19');

-- ----------------------------
-- Table structure for ruang_kerja_peserta_jawaban
-- ----------------------------
DROP TABLE IF EXISTS `ruang_kerja_peserta_jawaban`;
CREATE TABLE `ruang_kerja_peserta_jawaban`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ruang_kerja_peserta_id` bigint(20) NULL DEFAULT NULL,
  `jawaban` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ruang_kerja_materi_satu_id` bigint(20) NULL DEFAULT NULL,
  `ruang_kerja_materi_dua_id` bigint(20) NULL DEFAULT NULL,
  `ruang_kerja_materi_tiga_detail_id` bigint(20) NULL DEFAULT NULL,
  `benar` tinyint(4) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ruang_kerja_materi_satu_id`(`ruang_kerja_materi_satu_id`) USING BTREE,
  INDEX `ruang_kerja_materi_dua_id`(`ruang_kerja_materi_dua_id`) USING BTREE,
  INDEX `ruang_kerja_materi_tiga_detail_id`(`ruang_kerja_materi_tiga_detail_id`) USING BTREE,
  INDEX `ruang_kerja_peserta_id`(`ruang_kerja_peserta_id`) USING BTREE,
  CONSTRAINT `ruang_kerja_peserta_jawaban_ibfk_1` FOREIGN KEY (`ruang_kerja_materi_satu_id`) REFERENCES `ruang_kerja_materi_satu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ruang_kerja_peserta_jawaban_ibfk_2` FOREIGN KEY (`ruang_kerja_materi_dua_id`) REFERENCES `ruang_kerja_materi_dua` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ruang_kerja_peserta_jawaban_ibfk_3` FOREIGN KEY (`ruang_kerja_materi_tiga_detail_id`) REFERENCES `ruang_kerja_materi_tiga_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ruang_kerja_peserta_jawaban_ibfk_4` FOREIGN KEY (`ruang_kerja_peserta_id`) REFERENCES `ruang_kerja_peserta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ruang_kerja_peserta_jawaban
-- ----------------------------
INSERT INTO `ruang_kerja_peserta_jawaban` VALUES (1, 1636, 'A', 115, NULL, NULL, 0, '2022-11-23 13:50:09', '2022-11-23 14:33:52');
INSERT INTO `ruang_kerja_peserta_jawaban` VALUES (2, 1636, 'B', 110, NULL, NULL, 0, '2022-11-23 13:50:09', '2022-11-23 14:33:53');
INSERT INTO `ruang_kerja_peserta_jawaban` VALUES (3, 1636, 'D', 120, NULL, NULL, 0, '2022-11-23 13:50:09', '2022-11-23 14:33:54');
INSERT INTO `ruang_kerja_peserta_jawaban` VALUES (4, 1636, 'E', 111, NULL, NULL, 1, '2022-11-23 13:50:09', '2022-11-23 14:33:55');
INSERT INTO `ruang_kerja_peserta_jawaban` VALUES (5, 1636, 'B', 109, NULL, NULL, 0, '2022-11-23 13:50:09', '2022-11-23 14:33:56');
INSERT INTO `ruang_kerja_peserta_jawaban` VALUES (6, 1636, 'D', 108, NULL, NULL, 0, '2022-11-23 13:50:09', '2022-11-23 14:33:57');
INSERT INTO `ruang_kerja_peserta_jawaban` VALUES (7, 1636, 'C', 106, NULL, NULL, 0, '2022-11-23 13:50:09', '2022-11-23 14:33:58');
INSERT INTO `ruang_kerja_peserta_jawaban` VALUES (8, 1636, 'A', 114, NULL, NULL, 0, '2022-11-23 13:50:09', '2022-11-23 14:33:58');
INSERT INTO `ruang_kerja_peserta_jawaban` VALUES (9, 1636, 'C', 117, NULL, NULL, 0, '2022-11-23 13:50:09', '2022-11-23 14:33:59');
INSERT INTO `ruang_kerja_peserta_jawaban` VALUES (10, 1636, 'E', 107, NULL, NULL, 0, '2022-11-23 13:50:09', '2022-11-23 14:34:00');
INSERT INTO `ruang_kerja_peserta_jawaban` VALUES (11, 1636, 'B', 118, NULL, NULL, 0, '2022-11-23 13:50:09', '2022-11-23 14:34:00');
INSERT INTO `ruang_kerja_peserta_jawaban` VALUES (12, 1636, 'C', 116, NULL, NULL, 0, '2022-11-23 13:50:09', '2022-11-23 14:34:01');
INSERT INTO `ruang_kerja_peserta_jawaban` VALUES (13, 1636, 'D', 112, NULL, NULL, 1, '2022-11-23 13:50:09', '2022-11-23 14:34:02');
INSERT INTO `ruang_kerja_peserta_jawaban` VALUES (14, 1636, 'B', 113, NULL, NULL, 1, '2022-11-23 13:50:09', '2022-11-23 14:34:03');
INSERT INTO `ruang_kerja_peserta_jawaban` VALUES (15, 1636, 'E', 119, NULL, NULL, 0, '2022-11-23 13:50:09', '2022-11-23 14:34:03');

-- ----------------------------
-- Table structure for ruang_kerja_peserta_waktu
-- ----------------------------
DROP TABLE IF EXISTS `ruang_kerja_peserta_waktu`;
CREATE TABLE `ruang_kerja_peserta_waktu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ruang_kerja_peserta_id` bigint(20) NULL DEFAULT NULL,
  `waktu` int(11) NULL DEFAULT NULL,
  `materi` tinyint(4) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ruang_kerja_peserta_id`(`ruang_kerja_peserta_id`) USING BTREE,
  CONSTRAINT `ruang_kerja_peserta_waktu_ibfk_1` FOREIGN KEY (`ruang_kerja_peserta_id`) REFERENCES `ruang_kerja_peserta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ruang_kerja_peserta_waktu
-- ----------------------------
INSERT INTO `ruang_kerja_peserta_waktu` VALUES (3, 1636, 115, 1, '2022-11-23 14:31:53', '2022-11-23 14:31:53');
INSERT INTO `ruang_kerja_peserta_waktu` VALUES (4, 1636, 41, 1, '2022-11-23 14:33:07', '2022-11-23 14:33:07');
INSERT INTO `ruang_kerja_peserta_waktu` VALUES (5, 1636, 105, 1, '2022-11-23 14:33:16', '2022-11-23 14:33:16');
INSERT INTO `ruang_kerja_peserta_waktu` VALUES (6, 1636, 103, 1, '2022-11-23 14:33:18', '2022-11-23 14:33:18');
INSERT INTO `ruang_kerja_peserta_waktu` VALUES (7, 1636, 102, 1, '2022-11-23 14:33:19', '2022-11-23 14:33:19');
INSERT INTO `ruang_kerja_peserta_waktu` VALUES (8, 1636, 102, 1, '2022-11-23 14:33:19', '2022-11-23 14:33:19');
INSERT INTO `ruang_kerja_peserta_waktu` VALUES (9, 1636, 71, 1, '2022-11-23 14:33:50', '2022-11-23 14:33:50');
INSERT INTO `ruang_kerja_peserta_waktu` VALUES (10, 1636, 38, 1, '2022-11-23 14:33:52', '2022-11-23 14:33:52');
INSERT INTO `ruang_kerja_peserta_waktu` VALUES (11, 1636, 37, 1, '2022-11-23 14:33:53', '2022-11-23 14:33:53');
INSERT INTO `ruang_kerja_peserta_waktu` VALUES (12, 1636, 36, 1, '2022-11-23 14:33:54', '2022-11-23 14:33:54');
INSERT INTO `ruang_kerja_peserta_waktu` VALUES (13, 1636, 35, 1, '2022-11-23 14:33:55', '2022-11-23 14:33:55');
INSERT INTO `ruang_kerja_peserta_waktu` VALUES (14, 1636, 34, 1, '2022-11-23 14:33:56', '2022-11-23 14:33:56');
INSERT INTO `ruang_kerja_peserta_waktu` VALUES (15, 1636, 33, 1, '2022-11-23 14:33:57', '2022-11-23 14:33:57');
INSERT INTO `ruang_kerja_peserta_waktu` VALUES (16, 1636, 32, 1, '2022-11-23 14:33:58', '2022-11-23 14:33:58');
INSERT INTO `ruang_kerja_peserta_waktu` VALUES (17, 1636, 32, 1, '2022-11-23 14:33:58', '2022-11-23 14:33:58');
INSERT INTO `ruang_kerja_peserta_waktu` VALUES (18, 1636, 31, 1, '2022-11-23 14:33:59', '2022-11-23 14:33:59');
INSERT INTO `ruang_kerja_peserta_waktu` VALUES (19, 1636, 30, 1, '2022-11-23 14:34:00', '2022-11-23 14:34:00');
INSERT INTO `ruang_kerja_peserta_waktu` VALUES (20, 1636, 30, 1, '2022-11-23 14:34:00', '2022-11-23 14:34:00');
INSERT INTO `ruang_kerja_peserta_waktu` VALUES (21, 1636, 29, 1, '2022-11-23 14:34:01', '2022-11-23 14:34:01');
INSERT INTO `ruang_kerja_peserta_waktu` VALUES (22, 1636, 28, 1, '2022-11-23 14:34:02', '2022-11-23 14:34:02');
INSERT INTO `ruang_kerja_peserta_waktu` VALUES (23, 1636, 27, 1, '2022-11-23 14:34:03', '2022-11-23 14:34:03');
INSERT INTO `ruang_kerja_peserta_waktu` VALUES (24, 1636, 27, 1, '2022-11-23 14:34:03', '2022-11-23 14:34:03');
INSERT INTO `ruang_kerja_peserta_waktu` VALUES (25, 1636, 0, 1, '2022-11-23 14:34:34', '2022-11-23 14:34:34');

SET FOREIGN_KEY_CHECKS = 1;
