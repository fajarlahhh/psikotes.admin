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

 Date: 23/11/2022 09:52:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for materi_dua
-- ----------------------------
DROP TABLE IF EXISTS `materi_dua`;
CREATE TABLE `materi_dua` (
  `id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of materi_dua
-- ----------------------------
BEGIN;
INSERT INTO `materi_dua` VALUES (1, '2022-11-21 20:03:59', '2022-11-21 20:03:59');
INSERT INTO `materi_dua` VALUES (2, '2022-11-21 19:40:10', '2022-11-21 19:40:10');
INSERT INTO `materi_dua` VALUES (3, '2022-11-21 19:47:52', '2022-11-21 19:47:52');
INSERT INTO `materi_dua` VALUES (4, '2022-11-21 19:47:28', '2022-11-21 19:47:28');
INSERT INTO `materi_dua` VALUES (5, '2022-11-21 19:50:01', '2022-11-21 19:50:01');
COMMIT;

-- ----------------------------
-- Table structure for materi_dua_detail
-- ----------------------------
DROP TABLE IF EXISTS `materi_dua_detail`;
CREATE TABLE `materi_dua_detail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `materi_dua_id` bigint NOT NULL,
  `soal` longtext,
  `kunci` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `aspek` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `materi_dua_id` (`materi_dua_id`),
  CONSTRAINT `materi_dua_detail_ibfk_1` FOREIGN KEY (`materi_dua_id`) REFERENCES `materi_dua` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1083 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of materi_dua_detail
-- ----------------------------
BEGIN;
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
COMMIT;

-- ----------------------------
-- Table structure for materi_satu
-- ----------------------------
DROP TABLE IF EXISTS `materi_satu`;
CREATE TABLE `materi_satu` (
  `id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of materi_satu
-- ----------------------------
BEGIN;
INSERT INTO `materi_satu` VALUES (1, '2022-11-22 19:18:14', '2022-11-22 19:18:14');
INSERT INTO `materi_satu` VALUES (2, '2022-11-22 19:18:17', '2022-11-22 19:18:17');
INSERT INTO `materi_satu` VALUES (3, '2022-11-22 20:20:43', '2022-11-22 20:20:43');
COMMIT;

-- ----------------------------
-- Table structure for materi_satu_detail
-- ----------------------------
DROP TABLE IF EXISTS `materi_satu_detail`;
CREATE TABLE `materi_satu_detail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `materi_satu_id` bigint DEFAULT NULL,
  `aspek` varchar(255) DEFAULT NULL,
  `soal` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `kunci` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `materi_satu_id` (`materi_satu_id`),
  CONSTRAINT `materi_satu_detail_ibfk_1` FOREIGN KEY (`materi_satu_id`) REFERENCES `materi_satu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of materi_satu_detail
-- ----------------------------
BEGIN;
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
COMMIT;

-- ----------------------------
-- Table structure for materi_tiga
-- ----------------------------
DROP TABLE IF EXISTS `materi_tiga`;
CREATE TABLE `materi_tiga` (
  `id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of materi_tiga
-- ----------------------------
BEGIN;
INSERT INTO `materi_tiga` VALUES (1, '2022-11-21 00:00:00', '2022-11-21 00:00:00');
INSERT INTO `materi_tiga` VALUES (2, '2022-11-21 18:31:56', '2022-11-21 18:31:56');
INSERT INTO `materi_tiga` VALUES (3, '2022-11-21 00:00:00', '2022-11-21 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for materi_tiga_detail
-- ----------------------------
DROP TABLE IF EXISTS `materi_tiga_detail`;
CREATE TABLE `materi_tiga_detail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `materi_tiga_id` bigint NOT NULL,
  `kolom` tinyint DEFAULT NULL,
  `a` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `b` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `c` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `d` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `e` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `materi_tiga_detail_ibfk_1` (`materi_tiga_id`),
  CONSTRAINT `materi_tiga_detail_ibfk_1` FOREIGN KEY (`materi_tiga_id`) REFERENCES `materi_tiga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of materi_tiga_detail
-- ----------------------------
BEGIN;
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
COMMIT;

-- ----------------------------
-- Table structure for materi_tiga_sub_detail
-- ----------------------------
DROP TABLE IF EXISTS `materi_tiga_sub_detail`;
CREATE TABLE `materi_tiga_sub_detail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `materi_tiga_detail_id` bigint NOT NULL,
  `a` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `b` char(255) DEFAULT NULL,
  `c` char(255) DEFAULT NULL,
  `d` char(255) DEFAULT NULL,
  `kunci` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `materi_tiga_id` (`materi_tiga_detail_id`),
  CONSTRAINT `materi_tiga_sub_detail_ibfk_1` FOREIGN KEY (`materi_tiga_detail_id`) REFERENCES `materi_tiga_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1510 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of materi_tiga_sub_detail
-- ----------------------------
BEGIN;
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `no_peserta` (`no_peserta`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of pengguna
-- ----------------------------
BEGIN;
INSERT INTO `pengguna` VALUES (1, 'Administrator', 'admin', '$2y$10$0.YO1eP38ur8IQtMWoZwTe8rDMAoog24U610x5/wLWGC0.fnFDUpu', 1, NULL, '2022-09-01 00:00:00', '2022-11-22 19:10:37');
INSERT INTO `pengguna` VALUES (2, 'Andi Fajar Nugraha', '123456789', '$2y$10$A78If89AYC.C4cpkKT2oNu.hVC4hOmpEcqhpZam3on72Kl6dPruo6', 2, NULL, '2022-09-01 00:00:00', '2022-11-21 18:39:26');
COMMIT;

-- ----------------------------
-- Table structure for petunjuk
-- ----------------------------
DROP TABLE IF EXISTS `petunjuk`;
CREATE TABLE `petunjuk` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `materi` int DEFAULT NULL,
  `isi` longtext,
  `operator` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `materi` (`materi`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of petunjuk
-- ----------------------------
BEGIN;
INSERT INTO `petunjuk` VALUES (1, 1, '<p><strong>PETUNJUK PENGERJAAN&nbsp;</strong></p><p><strong>&nbsp;</strong></p><p>Sebelum mengerjakan tes, bacalah petunjuk pengerjaan tes ini dengan saksama.</p><p>Anda diminta untuk membaca setiap <strong>Soal</strong> yang ada, lalu pilih satu jawab dari lima pilihan jawaban yang menurut Anda paling benar. Adapun petunjuk untuk mengerjakan soal berpedoman pada beberapa tipe soal yang dicontohkan berikut ini ;</p><figure class=\"table\"><table><tbody><tr><td><strong>Contoh&nbsp; 1.</strong></td><td><p>Mudah&nbsp; =&nbsp; ……..............&nbsp;</p><p>a) Gampang&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;b) Buruk&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;c) Sulit&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;d) Sedih&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;e) Jelek</p></td></tr></tbody></table></figure><p>Pada tipe soal ini Anda diminta untuk mencari satu kata dari pilihan jawaban yang <strong>mempunyai arti sama&nbsp;</strong>atau <strong>yang paling dekat dengan arti kata soal</strong>. Pada contoh soal diatas terdapat kata <i>”Mudah”</i> dan pilihan jawaban yang memiliki arti sama dengan kata mudah adalah kata ”<i>Gampang</i>”&nbsp;maka klik huruf&nbsp; <strong>a</strong>.</p><figure class=\"image\"><img src=\"http://ujian.test/media/image_1666270411.png\"></figure><figure class=\"table\"><table><tbody><tr><td><strong>Contoh 2.</strong></td><td><p>&nbsp; &nbsp; &nbsp;Keras&nbsp; X&nbsp; &nbsp;……..............</p><p>&nbsp; &nbsp; &nbsp;a) Batu&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; b) Lembut&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; c) Licin&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;d) Lemas&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; e) Kaku</p></td></tr></tbody></table></figure><p>Pada tipe soal ini Anda diminta untuk mencari satu kata dari pilihan jawaban yang <strong>mempunyai arti berlawanan&nbsp;</strong>atau <strong>yang paling jauh dengan arti kata soal</strong>. Pada contoh soal diatas terdapat kata \"<i>Keras”</i> dan pilihan jawaban yang memiliki arti berlawanan dengan kata keras adalah kata ”<i>Lembut</i>”,&nbsp;maka klik huruf&nbsp; <strong>b</strong>.</p><figure class=\"image\"><img src=\"http://ujian.test/media/image_1666270419.png\"></figure><figure class=\"table\"><table><tbody><tr><td><strong>Contoh 3.</strong></td><td><p>Basah : Kering&nbsp; &nbsp;= ………&nbsp; :&nbsp; ……….</p><p>a)Baik, Buruk&nbsp; &nbsp; &nbsp;b)Basi, Busuk&nbsp; &nbsp;c)Bagus, Indah&nbsp; &nbsp;d)Tipis, Rentan&nbsp; &nbsp;e)Halus, Lembut</p></td></tr></tbody></table></figure><p>Pada tipe soal ini Anda akan menemui <strong>pasangan kata yang memiliki hubungan</strong>, dan Anda diminta untuk <strong>mencari jawaban pasangan kata yang memiliki hubungan yang sama dengan pasangan kata pada soal</strong>. Pada contoh diatas, hubungan dari kata ”<i>Basah”</i> dan <i>”Kering”</i> adalah lawan katanya, maka dari pilihan jawaban yang memiliki hubungan lawan kata adalah <i>”Baik”&nbsp;</i>dan<i> ”Buruk”.</i> Sesuai dengan pilihan jawaban, maka klik&nbsp;huruf&nbsp; <strong>a</strong>.</p><figure class=\"image\"><img src=\"http://ujian.test/media/image_1666270427.png\"></figure><figure class=\"table\"><table><tbody><tr><td><strong>Contoh 4.</strong></td><td><p>Semua pelamar kerja adalah lulusan S1 .</p><p>Sarjana pasti datang dengan membawa ijazahnya.</p><p>Maka kesimpulan yang dapat ditarik dari kedua kalimat diatas adalah .........</p><p>a) Ada pelamar kerja yang berijazah SMA&nbsp; &nbsp; &nbsp;</p><p>b) Semua pelamar membawa ijazah S1.</p><p>c) Semua pelamar tidak diharuskan membawa ijazah.</p><p>d) Pelamar kerja minimal membawa ijazahnya.&nbsp;</p><p>e) Tidak ada kesimpulan</p></td></tr></tbody></table></figure><p>Pada tipe soal ini, terdapat dua buah kalimat. Tugas Anda adalah <strong>mencari kesimpulan yang paling tepat dari kedua kalimat tersebut</strong>. Pada contoh soal diatas maka jawaban yang benar adalah ”Semua pelamar membawa ijazah S1”, sehingga&nbsp;klik huruf&nbsp; <strong>b</strong>.</p><figure class=\"image\"><img src=\"http://ujian.test/media/image_1666270439.png\"></figure><figure class=\"table\"><table><tbody><tr><td><strong>Contoh 5.</strong></td><td><p>3 x 5 - 2 = ……</p><p>a) 10&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; b) 11&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;c) 12&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; d) 13&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;e) 15</p></td></tr></tbody></table></figure><p>Pada tipe soal ini Anda akan menemui <strong>perhitungan matematika sederhana</strong>. Anda diminta untuk <strong>mencari angka yang tepat</strong> dari pilihan jawaban untuk <strong>melengkapi perhitungan soal sehingga menjadi perhitungan yang benar</strong>. Pada contoh soal diatas, angka 13 adalah angka yang tepat dari hasil perhitungan matematika tersebut. Maka&nbsp;klik huruf&nbsp; <strong>d</strong>.</p><figure class=\"image\"><img src=\"http://ujian.test/media/image_1666270464.png\"></figure><figure class=\"table\"><table><tbody><tr><td><strong>Contoh 6.</strong></td><td><p>Bila Orin membeli sepasang sepatu seharga Rp.50.000,-, berapakah yang harus Orin bayarkan jika ia membeli 3 pasang sepatu?</p><p>a)Rp.50.000,-&nbsp; &nbsp; &nbsp;b)Rp.75.000,-&nbsp; &nbsp;c)Rp.100.000,-&nbsp; &nbsp; d)Rp.120.000,-&nbsp; &nbsp; e)Rp.150.000,-</p></td></tr></tbody></table></figure><p>Pada tipe soal ini Anda akan menemui <strong>soal cerita matematika sederhana</strong>, dan Anda diminta untuk <strong>mencari jawaban yang benar dari perhitungan soal tersebut</strong>. Pada contoh soal cerita diatas, maka perhitungannya adalah Rp. 50.000,- x 3 pasang = Rp. 150.000,-. Sesuai dengan pilihan jawaban, maka klik huruf&nbsp;<strong>e</strong>.</p><figure class=\"image\"><img src=\"http://ujian.test/media/image_1666270471.png\"></figure><figure class=\"table\"><table><tbody><tr><td><strong>Contoh 7.</strong></td><td><p><img src=\"http://ujian.test/media/image_1666270478.png\"></p><p>a) 6, 8&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;b) 7, 9&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;c) 6, 10&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; d) 7, 8&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; e) 6, 9</p></td></tr></tbody></table></figure><p>Pada tipe soal ini, terdapat sebuah gambar deret angka dan tugas anda adalah <strong>melengkapi kotak X dan Y tersebut dengan angka yang tepat sesuai dengan pola yang ada</strong>.&nbsp;</p><p><strong>Pada tipe gambar ini dapat berisi jenis deret angka, huruf maupun kombinasi diantara keduanya dengan tugas melengkapi kotak X dan Y maupun kotak titik titik untuk diisi dengan jawaban yang tepat.</strong></p><p>Pada contoh soal diatas pola deret angka atas (kotak X) antara satu angka dengan lainnya adalah +1, dan pada pola deret angka bawah (kotak Y) adalah +2, maka jawaban yang tepat untuk mengisi kotak X dan Y berturut -turut adalah 6, 12. Oleh karena itu&nbsp;klik huruf&nbsp; <strong>c</strong>.</p><figure class=\"image\"><img src=\"http://ujian.test/media/image_1666270503.png\"></figure><figure class=\"table\"><table><tbody><tr><td><p><strong>Contoh 8.</strong></p><p>&nbsp;</p></td><td><img src=\"http://ujian.test/media/image_1666270539.png\"></td></tr></tbody></table></figure><p>Pada tipe soal ini, terdapat sebuah pola gambar dimana pola gambar kiri dan kanan memiliki persamaan pola pengerjaannya. Tugas anda adalah <strong>melengkapi kotak tanda tanya tersebut dengan gambar yang tepat sehingga menjadi pola yang tepat</strong>.&nbsp;</p><p><strong>Pada tipe gambar ini dapat berisi jenis pola gambar maupun pola angka.</strong></p><p>Pada contoh soal diatas pola gambar kiri adalah gambar dengan jumlah bertambah 1 dengan bentuk yang sama, maka jawaban yang tepat untuk mengisi kotak tanda tanya tersebut adalah dengan bentuk yang sama dan jumlah berambah satu (segitiga berjumlah 4). Oleh karena itu&nbsp;maka klik huruf&nbsp; <strong>c</strong>.</p><figure class=\"image\"><img src=\"http://ujian.test/media/image_1666270515.png\"></figure><p><strong>Apabila Anda telah selesai, periksalah kembali jawaban Anda.&nbsp;</strong></p><p><strong>SELAMAT MENGERJAKAN</strong></p>', NULL, '2022-10-20 12:56:43', '2022-10-20 12:57:08');
INSERT INTO `petunjuk` VALUES (2, 2, '<p><strong>PETUNJUK MENJAWAB</strong></p><p>Bacalah&nbsp;petunjuk cara menjawab&nbsp;dengan&nbsp;saksama.</p><p>Pada&nbsp;tes&nbsp;ini&nbsp;anda&nbsp;akan&nbsp;dihadapkan dengan beberapa persoalan/pernyataan<strong>.&nbsp;</strong>Anda disarankan&nbsp;membaca&nbsp;pernyataan&nbsp;dalam&nbsp;setiap&nbsp;soal dan&nbsp;menjawabnya&nbsp;dengan&nbsp;segera,&nbsp;secara&nbsp;spontan&nbsp;dan&nbsp;jujur&nbsp;sesuai&nbsp;dengan&nbsp;apa&nbsp;yang&nbsp;anda&nbsp;anggap&nbsp;paling&nbsp;sesuai&nbsp;dengan diri anda.&nbsp;</p><p><strong>Berikut adalah cara&nbsp;menjawab soal</strong>:</p><p><i>Klik <strong>A </strong>bila&nbsp;anda&nbsp;merasa pernyataan&nbsp;tersebut&nbsp;<strong>SANGAT TIDAK SESUAI&nbsp;</strong>dengan&nbsp;diri anda.</i></p><p><i>Klik <strong>B </strong>bila&nbsp;anda&nbsp;merasa pernyataan&nbsp;tersebut&nbsp;<strong>TIDAK SESUAI&nbsp;</strong>dengan&nbsp;diri anda.</i></p><p><i>Klik <strong>C&nbsp;</strong>bila&nbsp;anda&nbsp;merasa pernyataan&nbsp;tersebut&nbsp;<strong>SESUAI&nbsp;</strong>dengan diri anda.</i></p><p><i>Klik <strong>D&nbsp;</strong>bila&nbsp;anda&nbsp;merasa pernyataan&nbsp;tersebut&nbsp;<strong>SANGAT SESUAI&nbsp;</strong>dengan&nbsp;diri anda.</i></p><p><strong>CONTOH :</strong></p><figure class=\"table\"><table><tbody><tr><td>&nbsp;</td><td><strong>NO</strong></td><td>&nbsp;</td><td><strong>PERNYATAAN</strong></td><td>&nbsp;</td></tr><tr><td colspan=\"5\">1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dengan&nbsp;kemampuan&nbsp;yang&nbsp;saya&nbsp;miliki,&nbsp;saya&nbsp;turut&nbsp;serta&nbsp;membantu&nbsp;pemerintah&nbsp;dalam&nbsp;penanganan pandemi Covid-19&nbsp;di wilayah&nbsp;saya.</td></tr></tbody></table></figure><p>Jika&nbsp;anda&nbsp;merasa&nbsp;bahwa&nbsp;<strong>Pernyataan&nbsp;</strong>dalam&nbsp;soal&nbsp;tersebut&nbsp;<strong>SESUAI&nbsp;</strong>dengan&nbsp;diri&nbsp;anda,&nbsp;maka&nbsp;klik&nbsp;<strong>jawaban&nbsp;C </strong>dan otomatis jawaban akan tersimpan dan tidak bisa dirubah serta otomatis akan tampil pernyataan nomor berikujtnya. Anda tidak bisa mengerjakan nomor berikutnya sebelum anda menjawab.</p><p><strong>“Selamat&nbsp;Bekerja”</strong></p>', NULL, '2022-10-20 13:02:08', '2022-10-20 13:02:26');
INSERT INTO `petunjuk` VALUES (3, 3, '<p>PETUNJUK PENGERJAAN</p><ul><li>&nbsp;SUBTES INI TERDIRI DARI 10 KOLOM DENGAN MASING-MASING KOLOM DIBERIKAN WAKTU 1 MENIT UNTUK MENJAWAB.</li><li>TUGAS ANDA ADALAH MENCARI ANGKA/HURUF/SIMBOL YANG HILANG/TIDAK ADA PADA PERSOALAN PADA PILIHAN JAWABAN YANG ADA.&nbsp;</li><li>CARA MENJAWABNYA, DENGAN MENEKAN PILIHAN JAWABAN YG DIANGGAP BENAR DAN AKAN LANGSUNG BERPINDAH KE NOMOR SOAL BERIKUTNYA.&nbsp;</li><li>PADA SUBTES INI DIBUTUHKAN KECEPATAN DAN KECERMATAN DALAM MENJAWAB.&nbsp;</li><li>ADA INDIKATOR WAKTU DAN KOLOM DI LAYAR MONITOR MASING-MASING PESERTA</li></ul>', NULL, '2022-10-20 13:02:49', '2022-10-20 13:02:54');
COMMIT;

-- ----------------------------
-- Table structure for ruang_kerja
-- ----------------------------
DROP TABLE IF EXISTS `ruang_kerja`;
CREATE TABLE `ruang_kerja` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT ' ',
  `deskripsi` text,
  `materi_satu_id` bigint DEFAULT NULL,
  `materi_dua_id` bigint DEFAULT NULL,
  `materi_tiga_id` bigint DEFAULT NULL,
  `waktu` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `deleted_at` (`deleted_at`) USING BTREE,
  KEY `materi_dua_id` (`materi_dua_id`),
  KEY `materi_tiga_id` (`materi_tiga_id`),
  KEY `ruang_kerja_ibfk_1` (`materi_satu_id`),
  CONSTRAINT `ruang_kerja_ibfk_1` FOREIGN KEY (`materi_satu_id`) REFERENCES `materi_satu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ruang_kerja_ibfk_2` FOREIGN KEY (`materi_dua_id`) REFERENCES `materi_dua` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ruang_kerja_ibfk_3` FOREIGN KEY (`materi_tiga_id`) REFERENCES `materi_tiga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of ruang_kerja
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ruang_kerja_materi_dua
-- ----------------------------
DROP TABLE IF EXISTS `ruang_kerja_materi_dua`;
CREATE TABLE `ruang_kerja_materi_dua` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ruang_kerja_id` bigint NOT NULL,
  `soal` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `kunci` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `aspek` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ruang_kerja_id` (`ruang_kerja_id`),
  CONSTRAINT `ruang_kerja_materi_dua_ibfk_1` FOREIGN KEY (`ruang_kerja_id`) REFERENCES `ruang_kerja` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of ruang_kerja_materi_dua
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ruang_kerja_materi_tiga
-- ----------------------------
DROP TABLE IF EXISTS `ruang_kerja_materi_tiga`;
CREATE TABLE `ruang_kerja_materi_tiga` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ruang_kerja_id` bigint NOT NULL,
  `kolom` tinyint DEFAULT NULL,
  `a` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `b` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `c` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `d` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `e` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ruang_kerja_id` (`ruang_kerja_id`),
  CONSTRAINT `ruang_kerja_materi_tiga_ibfk_1` FOREIGN KEY (`ruang_kerja_id`) REFERENCES `ruang_kerja` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of ruang_kerja_materi_tiga
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ruang_kerja_materi_tiga_detail
-- ----------------------------
DROP TABLE IF EXISTS `ruang_kerja_materi_tiga_detail`;
CREATE TABLE `ruang_kerja_materi_tiga_detail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ruang_kerja_materi_tiga_id` bigint NOT NULL,
  `a` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `b` char(255) DEFAULT NULL,
  `c` char(255) DEFAULT NULL,
  `d` char(255) DEFAULT NULL,
  `kunci` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `materi_tiga_id` (`ruang_kerja_materi_tiga_id`),
  CONSTRAINT `ruang_kerja_materi_tiga_detail_ibfk_1` FOREIGN KEY (`ruang_kerja_materi_tiga_id`) REFERENCES `ruang_kerja_materi_tiga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of ruang_kerja_materi_tiga_detail
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ruang_kerja_peserta
-- ----------------------------
DROP TABLE IF EXISTS `ruang_kerja_peserta`;
CREATE TABLE `ruang_kerja_peserta` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nomor` bigint DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `kata_sandi` varchar(255) DEFAULT NULL,
  `ruang_kerja_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ruang_kerja_id` (`ruang_kerja_id`),
  CONSTRAINT `ruang_kerja_peserta_ibfk_1` FOREIGN KEY (`ruang_kerja_id`) REFERENCES `ruang_kerja` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of ruang_kerja_peserta
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
