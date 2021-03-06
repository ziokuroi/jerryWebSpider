/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50617
 Source Host           : localhost:3306
 Source Schema         : spider

 Target Server Type    : MySQL
 Target Server Version : 50617
 File Encoding         : 65001

 Date: 21/02/2019 03:31:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for error_log
-- ----------------------------
DROP TABLE IF EXISTS `error_log`;
CREATE TABLE `error_log`  (
  `id` int(11) NOT NULL,
  `creator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `error_message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stack_dump` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence`  (
  `next_val` bigint(20) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES (41795);
INSERT INTO `hibernate_sequence` VALUES (41795);
INSERT INTO `hibernate_sequence` VALUES (41795);

-- ----------------------------
-- Table structure for leshe_album_images
-- ----------------------------
DROP TABLE IF EXISTS `leshe_album_images`;
CREATE TABLE `leshe_album_images`  (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `downloaded` tinyint(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for leshe_images
-- ----------------------------
DROP TABLE IF EXISTS `leshe_images`;
CREATE TABLE `leshe_images`  (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `downloaded` tinyint(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `title_unique`(`title`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for spider_task
-- ----------------------------
DROP TABLE IF EXISTS `spider_task`;
CREATE TABLE `spider_task`  (
  `id` int(11) NOT NULL,
  `task_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `success_count` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `task_name_unique`(`task_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of spider_task
-- ----------------------------
INSERT INTO `spider_task` VALUES (1318, 'tuwanDownloadTask', NULL, 0);
INSERT INTO `spider_task` VALUES (1366, 'tuwanSpiderTask', NULL, 0);
INSERT INTO `spider_task` VALUES (1595, 'lesheSpiderTask', NULL, 0);
INSERT INTO `spider_task` VALUES (1880, 'lesheDownloadTask', NULL, 0);
INSERT INTO `spider_task` VALUES (2045, 'lesheAlbumSpiderTask', NULL, 0);
INSERT INTO `spider_task` VALUES (4113, 'lesheAlbumDownloadTask', NULL, 0);
INSERT INTO `spider_task` VALUES (4114, 'tuwanAlbumSpiderTask', NULL, 0);
INSERT INTO `spider_task` VALUES (6893, 'tuwanAlbumDownloadTask', NULL, 0);

-- ----------------------------
-- Table structure for tuwan_album_images
-- ----------------------------
DROP TABLE IF EXISTS `tuwan_album_images`;
CREATE TABLE `tuwan_album_images`  (
  `id` int(11) NOT NULL,
  `album_index` int(11) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `downloaded` tinyint(4) NULL DEFAULT NULL,
  `num` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tuwan_images
-- ----------------------------
DROP TABLE IF EXISTS `tuwan_images`;
CREATE TABLE `tuwan_images`  (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `downloaded` tinyint(4) NULL DEFAULT NULL,
  `total` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tuwan_mp3
-- ----------------------------
DROP TABLE IF EXISTS `tuwan_mp3`;
CREATE TABLE `tuwan_mp3`  (
  `id` int(11) NOT NULL,
  `bgm_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bgm` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `downloaded` tinyint(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tuwan_mp3
-- ----------------------------
INSERT INTO `tuwan_mp3` VALUES (0, '涙が止まらないのは', 'https://img3.tuwandata.com/uploads/repayment/20181107/20181107_1541584613_16301.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (603, '梦', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541057210_88662.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (641, 'さよならミッドナイト', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541056763_1644.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (674, '十五の月', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541056841_4843.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (705, 'ハッピーシンセサイザ', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541057068_82741.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (726, 'レディーレ', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541055549_70724.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (754, 'with you', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541043063_27303.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (785, 'ほろよい', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541055450_2057.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (796, '心做し', 'https://img3.tuwandata.com/uploads/repayment/20181106/20181106_1541487831_76557.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (807, '言えない気持ち', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541049856_3092.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (817, '夢花火', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541054934_87217.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (832, 'dear sleeper', 'https://img3.tuwandata.com/uploads/repayment/20181106/20181106_1541492344_76825.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (845, 'ちいさなラズベリー', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541052117_66572.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (871, 'ツナガル', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541051683_45229.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (873, '竹ノ花', 'https://img3.tuwandata.com/uploads/repayment/20181106/20181106_1541488845_11227.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (895, 'パピヨン', 'https://img3.tuwandata.com/uploads/repayment/20181106/20181106_1541488151_64524.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (896, 'さくら ~あなたに出会えてよかった~', 'https://img3.tuwandata.com/uploads/repayment/20181106/20181106_1541487010_93187.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (914, 'The first ending', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541049988_70980.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (931, '帝国少女', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541049338_36343.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (943, 'ハルノユキ', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541044353_18834.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (955, 'ナツコイ', 'https://img3.tuwandata.com/uploads/repayment/20181106/20181106_1541487607_87360.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (969, '騎士王の誇り', 'https://img3.tuwandata.com/uploads/repayment/20181030/20181030_1540886846_52324.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1003, '三日月の夜', 'https://img3.tuwandata.com/uploads/repayment/20181106/20181106_1541487454_50015.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1005, 'フルール', 'https://img3.tuwandata.com/uploads/repayment/20181107/20181107_1541583966_17855.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1006, '鎖那 - 可愛くなりたい', 'https://img3.tuwandata.com/uploads/repayment/20181105/20181105_1541411122_87004.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1008, '手をギュしてね', 'https://img3.tuwandata.com/uploads/repayment/20181114/20181114_1542187247_80504.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1009, 'sweets parade', 'https://img3.tuwandata.com/uploads/repayment/20181114/20181114_1542186804_4254.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1010, 'シュレディンガー・ハート', 'https://img3.tuwandata.com/uploads/repayment/20181114/20181114_1542185994_24170.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1012, '消えない花火', 'https://img3.tuwandata.com/uploads/repayment/20181114/20181114_1542176849_80821.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1013, '동거', 'https://img3.tuwandata.com/uploads/repayment/20181114/20181114_1542175744_5362.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1014, '10年', 'https://img3.tuwandata.com/uploads/repayment/20181109/20181109_1541757794_49916.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1017, 'Sincerely', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541049500_95521.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1019, '831143', 'https://img3.tuwandata.com/uploads/repayment/20181109/20181109_1541757358_71293.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1020, '雨き声残響', 'https://img3.tuwandata.com/uploads/repayment/20181109/20181109_1541757137_24471.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1021, '恋レター', 'https://img3.tuwandata.com/uploads/repayment/20181109/20181109_1541756831_87716.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1023, 'キミといたアカシ', 'https://img3.tuwandata.com/uploads/repayment/20181109/20181109_1541756656_13541.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1024, 'そばにいるね', 'https://img3.tuwandata.com/uploads/repayment/20181109/20181109_1541756417_26453.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1025, '福寿草', 'https://img3.tuwandata.com/uploads/repayment/20181109/20181109_1541756256_66952.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1030, 'モノクロ☆HAPPY DAY', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541043536_99693.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1032, 'やさしくしないで', 'https://img3.tuwandata.com/uploads/repayment/20181109/20181109_1541756027_21477.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1033, '少女のつづき', 'https://img3.tuwandata.com/uploads/repayment/20181109/20181109_1541754475_34809.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1034, 'DAOKO,米津玄師 - 打上花火', 'https://img3.tuwandata.com/uploads/repayment/20181105/20181105_1541406703_97417.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1036, '少女たちの終わらない夜', 'https://img3.tuwandata.com/uploads/repayment/20181109/20181109_1541755475_21439.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1037, 'あったかいんだからぁ Acoustic.Ver', 'https://img3.tuwandata.com/uploads/repayment/20181108/20181108_1541662515_23021.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1038, 'Spica', 'https://img3.tuwandata.com/uploads/repayment/20181108/20181108_1541668014_27322.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1039, '朧月', 'https://img3.tuwandata.com/uploads/repayment/20181108/20181108_1541667916_96083.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1040, 'Ref:rain', 'https://img3.tuwandata.com/uploads/repayment/20181108/20181108_1541667112_76812.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1041, '最後の雨', 'https://img3.tuwandata.com/uploads/repayment/20181108/20181108_1541663044_8344.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1042, '幻くん', 'https://img3.tuwandata.com/uploads/repayment/20181108/20181108_1541660902_59399.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1043, '出逢った頃のように', 'https://img3.tuwandata.com/uploads/repayment/20181108/20181108_1541659930_98428.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1045, '夕日', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541038897_75971.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1047, '夏影 -AIRness-', 'https://img3.tuwandata.com/uploads/repayment/20181106/20181106_1541483742_41387.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1049, 'ツギハギスタッカート', 'https://img3.tuwandata.com/uploads/repayment/20181107/20181107_1541584102_81272.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1050, 'ツナガル', 'https://img3.tuwandata.com/uploads/repayment/20181107/20181107_1541584205_37685.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1051, '鏡花水月', 'https://img3.tuwandata.com/uploads/repayment/20181107/20181107_1541584322_39406.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1052, 'Forever Friends', 'https://img3.tuwandata.com/uploads/repayment/20181108/20181108_1541659382_51413.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1053, '会いたかった空', 'https://img3.tuwandata.com/uploads/repayment/20181108/20181108_1541654282_4062.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1054, 'ヒッチコック', 'https://img3.tuwandata.com/uploads/repayment/20181108/20181108_1541654078_29275.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1055, '星空☆ディスティネーション', 'https://img3.tuwandata.com/uploads/repayment/20181107/20181107_1541584805_12799.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1056, '終わりの世界から', 'https://img3.tuwandata.com/uploads/repayment/20181107/20181107_1541584706_57311.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1068, 'また あした', 'https://img3.tuwandata.com/uploads/repayment/20181106/20181106_1541483449_94832.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1070, '声', 'https://img3.tuwandata.com/uploads/repayment/20181107/20181107_1541584475_90196.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1071, '涙が止まらないのは', 'https://img3.tuwandata.com/uploads/repayment/20181107/20181107_1541584613_16301.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1072, '虚空と光明のディスクール', 'https://img3.tuwandata.com/uploads/repayment/20181102/20181102_1541152570_39408.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1073, 'Cherry Jewelry Flower', 'https://img3.tuwandata.com/uploads/repayment/20181102/20181102_1541150716_79982.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1074, 'うたうたいのうた', 'https://img3.tuwandata.com/uploads/repayment/20181030/20181030_1540884843_72379.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1075, '花たん', 'https://img3.tuwandata.com/uploads/repayment/20181102/20181102_1541149655_57460.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1076, '恋愛サーキュレーション', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541062374_1888.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1077, 'こころメッセージ', 'https://img3.tuwandata.com/uploads/repayment/20181102/20181102_1541148427_22026.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1079, 'Past Present', 'https://img3.tuwandata.com/uploads/repayment/20181107/20181107_1541583795_36742.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1080, 'ORESAMA - 少女たちの終わらない夜', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541043646_3249.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1081, '薄紅の月', 'https://img3.tuwandata.com/uploads/repayment/20181106/20181106_1541493868_22470.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1082, '世界は恋に落ちている', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541061808_37985.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1083, 'ERASE (Main Vocal Saori)', 'https://img3.tuwandata.com/uploads/repayment/20181102/20181102_1541148772_76158.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1084, '色は匂へど散りぬるを', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541060803_46380.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1086, 'No differences', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541059266_64247.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1087, '星が瞬くこんな夜に ~ゲーム', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541058960_16699.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1088, 'カラフル Diary', 'https://img3.tuwandata.com/uploads/repayment/20181102/20181102_1541149404_49097.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1089, '夢想歌 2016', 'https://img3.tuwandata.com/uploads/repayment/20181102/20181102_1541138205_59129.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1090, 'bumpy-Jumpy! ', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541057247_26361.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1091, '曖昧さ回避', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541043365_79229.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1094, 'ねぇ', 'https://img3.tuwandata.com/uploads/repayment/20181107/20181107_1541583611_14092.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1095, '涙が止まらないのは', 'https://img3.tuwandata.com/uploads/repayment/20181102/20181102_1541137432_93981.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1098, '恋の才能', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541039933_21315.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1111, 'その闇の彼方まで', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541056706_49414.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1112, 'グローリア', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541056276_92916.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1113, 'コイノシルシ', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541055673_65586.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1114, '君だけが使える魔法', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541055490_15721.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1115, 'めっせーじ!', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541054947_28388.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1116, '星空☆ディスティネーション', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541054600_98209.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1117, '恋のEveryDay☆HappyDay(フルサイズ)', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541053364_60285.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1118, 'Blooming Lily', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541053082_46284.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1120, 'ラブリーサマーちゃん - Intro', 'https://img3.tuwandata.com/uploads/repayment/20181105/20181105_1541410990_76545.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1121, 'サイ', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541038298_66129.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1123, '花澤香菜 - sweets parade', 'https://img3.tuwandata.com/uploads/repayment/20181105/20181105_1541410779_99191.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1137, 'Hello, Morning', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541052428_82876.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1138, 'future base', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541052280_24508.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1139, 'ライオン ―May&#039;n バージョン―', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541051087_49243.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1140, 'Let&#039;s not say &quot;good-bye&quot;', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541044627_27923.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1141, 'Melody in the sky', 'https://img3.tuwandata.com/uploads/repayment/20181102/20181102_1541150739_11322.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1142, '16bitガール(フルサイズ', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541043501_56659.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1143, 'フェアリーテイル', 'https://img3.tuwandata.com/uploads/repayment/20181102/20181102_1541149290_55726.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1145, 'quantum jump', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541042867_68727.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1146, 'ぼうやの夢よ', 'https://img3.tuwandata.com/uploads/repayment/20181102/20181102_1541150236_28380.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1147, '誓い', 'https://img3.tuwandata.com/uploads/repayment/20181102/20181102_1541150490_63193.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1150, '君は口内炎', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541042838_91596.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1151, 'CheerS', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541042376_26803.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1152, 'ミッション! 健・康・第・イチ', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541042172_99033.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1153, '先生あのね', 'https://img3.tuwandata.com/uploads/repayment/20181031/20181031_1540962993_46909.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1154, '二人の季節', 'https://img3.tuwandata.com/uploads/repayment/20181102/20181102_1541150119_27238.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1155, '远い梦', 'https://img3.tuwandata.com/uploads/repayment/20181031/20181031_1540957824_69057.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1156, '鳥のユメ', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541041817_64065.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1157, 'motto☆派手にね!', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541041403_84679.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1158, 'ユメミボシ★boom!boom!', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541040911_15154.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1159, '辻詩音 - Lost in wonderland', 'https://img3.tuwandata.com/uploads/repayment/20181031/20181031_1540976276_33879.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1161, '梦笑顔', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541039057_83244.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1163, 'キミと見た花 キミと見た空', 'https://img3.tuwandata.com/uploads/repayment/20181102/20181102_1541137127_41001.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1164, '恋風', 'https://img3.tuwandata.com/uploads/repayment/20181031/20181031_1540969401_64072.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1165, '想像フォレスト', 'https://img3.tuwandata.com/uploads/repayment/20181031/20181031_1540980770_410.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1166, 'world end', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541039913_1268.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1168, 'nameless - ツギハギスタッカート', 'https://img3.tuwandata.com/uploads/repayment/20181031/20181031_1540975184_83853.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1169, 'Past Present', 'https://img3.tuwandata.com/uploads/repayment/20181102/20181102_1541148324_15077.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1170, 'Intro', 'https://img3.tuwandata.com/uploads/repayment/20181031/20181031_1540980665_87226.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1171, 'Next To You', 'https://img3.tuwandata.com/uploads/repayment/20181031/20181031_1540979964_33855.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1172, 'ミニモニ.ジャンケンぴょん', 'https://img3.tuwandata.com/uploads/repayment/20181031/20181031_1540979823_995.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1173, 'wonder zone ', 'https://img3.tuwandata.com/uploads/repayment/20181031/20181031_1540979498_86755.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1174, 'あまねき祈り', 'https://img3.tuwandata.com/uploads/repayment/20181102/20181102_1541127201_29774.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1175, 'Wishing', 'https://img3.tuwandata.com/uploads/repayment/20181031/20181031_1540953882_69977.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1176, 'それが、爱でしょう', 'https://img3.tuwandata.com/uploads/repayment/20181031/20181031_1540966465_21500.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1177, '花降らし', 'https://img3.tuwandata.com/uploads/repayment/20181031/20181031_1540980506_68234.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1180, '恋音と雨空', 'https://img3.tuwandata.com/uploads/repayment/20181102/20181102_1541143189_60.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1181, 'magnet', 'https://img3.tuwandata.com/uploads/repayment/20181031/20181031_1540979956_89263.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1182, '届かない恋', 'https://img3.tuwandata.com/uploads/repayment/20181031/20181031_1540979010_3771.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1191, '届かない恋', 'https://img3.tuwandata.com/uploads/repayment/20181031/20181031_1540978902_23371.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1192, 'しゃん・だら・りん♪', 'https://img3.tuwandata.com/uploads/repayment/20181031/20181031_1540978706_23906.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1193, ' Stay Alive', 'https://img3.tuwandata.com/uploads/repayment/20181031/20181031_1540954405_43099.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1194, ' Platonic prison', 'https://img3.tuwandata.com/uploads/repayment/20181031/20181031_1540954827_61604.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1195, 'day by day', 'https://img3.tuwandata.com/uploads/repayment/20181031/20181031_1540978955_78963.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1196, '独りんぼエンヴィー', 'https://img3.tuwandata.com/uploads/repayment/20181031/20181031_1540978477_93182.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1197, '僕らの手には何もないけど', 'https://img3.tuwandata.com/uploads/repayment/20181031/20181031_1540978272_11932.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1198, 'Secret Link', 'https://img3.tuwandata.com/uploads/repayment/20181031/20181031_1540956181_88290.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1199, '恋はヒラひらり', 'https://img3.tuwandata.com/uploads/repayment/20181031/20181031_1540956985_45636.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1200, '花たん - 心做し', 'https://img3.tuwandata.com/uploads/repayment/20181031/20181031_1540975989_16466.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1206, 'ねぇ', 'https://img3.tuwandata.com/uploads/repayment/20181102/20181102_1541126341_67733.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1209, 'ワカバ - 明日、僕は君に会いに行く。', 'https://img3.tuwandata.com/uploads/repayment/20181031/20181031_1540975619_31650.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1210, 'ワルキューレ - ワルキューレがとまらない', 'https://img3.tuwandata.com/uploads/repayment/20181031/20181031_1540977546_51030.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1211, 'パズル', 'https://img3.tuwandata.com/uploads/repayment/20181030/20181030_1540890821_2529.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1212, 'Tassel', 'https://img3.tuwandata.com/uploads/repayment/20181030/20181030_1540887103_20432.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1213, 'ごはんを食べよう', 'https://img3.tuwandata.com/uploads/repayment/20181030/20181030_1540891002_93029.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1214, '可愛くなりたい', 'https://img3.tuwandata.com/uploads/repayment/20181030/20181030_1540893534_3809.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1215, '小さな恋のうた', 'https://img3.tuwandata.com/uploads/repayment/20181030/20181030_1540892278_77546.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1216, 'きみにとどけ', 'https://img3.tuwandata.com/uploads/repayment/20181030/20181030_1540888084_91892.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1217, '世界は恋に落ちている  ', 'https://img3.tuwandata.com/uploads/repayment/20181030/20181030_1540891633_41692.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1220, '太陽と向日葵', 'https://img3.tuwandata.com/uploads/repayment/20181029/20181029_1540803579_82398.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1221, '彼女は旅に出る', 'https://img3.tuwandata.com/uploads/repayment/20181030/20181030_1540891922_57534.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1222, 'あなたに愛たくて', 'https://img3.tuwandata.com/uploads/repayment/20181031/20181031_1540970079_95578.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1227, '花澤香菜 - 恋爱サーキュレーション', 'https://img3.tuwandata.com/uploads/repayment/20181101/20181101_1541074425_15006.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1229, 'Goose house - ごはんを食べよう', 'https://img3.tuwandata.com/uploads/repayment/20181105/20181105_1541404143_11213.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1230, 'ハンバート ハンバート - 日が落ちるまで', 'https://img3.tuwandata.com/uploads/repayment/20181105/20181105_1541404680_63132.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1231, 'ゆう十 - 幹物女', 'https://img3.tuwandata.com/uploads/repayment/20181105/20181105_1541403777_53837.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1232, '関取花 - 10月のあなた', 'https://img3.tuwandata.com/uploads/repayment/20181105/20181105_1541403983_27235.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1233, 'Anthem Lights - I Really Like You', 'https://img3.tuwandata.com/uploads/repayment/20181105/20181105_1541404195_21382.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1234, 'KOTOKO - room', 'https://img3.tuwandata.com/uploads/repayment/20181105/20181105_1541404085_23576.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1235, '松たか子 - 梦のしずく', 'https://img3.tuwandata.com/uploads/repayment/20181105/20181105_1541406285_33155.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1236, '美吉田月 - 残酷な天使のテーゼ', 'https://img3.tuwandata.com/uploads/repayment/20181105/20181105_1541406404_51708.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1237, 'ハンバート ハンバート - 仆はもう出ていくよ', 'https://img3.tuwandata.com/uploads/repayment/20181106/20181106_1541495773_63016.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1244, '松たか子 - 梦のしずく', 'https://img3.tuwandata.com/uploads/repayment/20181113/20181113_1542105644_49113.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1245, '夏kome - 花降らし（Cover：初音未来）', 'https://img3.tuwandata.com/uploads/repayment/20181113/20181113_1542103554_47369.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1246, 'ami amie - もう恋なんてしない', 'https://img3.tuwandata.com/uploads/repayment/20181113/20181113_1542104244_17628.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1247, 'Hari - 조으다 완전 조으다', 'https://img3.tuwandata.com/uploads/repayment/20181113/20181113_1542103673_91771.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1248, 'At least one word', 'https://img3.tuwandata.com/uploads/repayment/20181113/20181113_1542103478_73325.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1249, '福山潤 - 君にありがとう (Bonus Track)', 'https://img3.tuwandata.com/uploads/repayment/20181113/20181113_1542104170_93960.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1250, 'つじあやの - 月が泣いてる', 'https://img3.tuwandata.com/uploads/repayment/20181113/20181113_1542105440_95454.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1251, 'Snow Sound', 'https://img3.tuwandata.com/uploads/repayment/20181113/20181113_1542103145_32354.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1252, 'Allie Crystal - Burning Bright', 'https://img3.tuwandata.com/uploads/repayment/20181113/20181113_1542101633_18778.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1253, '鹿乃 - いかないで', 'https://img3.tuwandata.com/uploads/repayment/20181115/20181115_1542276860_118.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1255, 'Alice', 'https://img3.tuwandata.com/uploads/repayment/20181119/20181119_1542609956_8834.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1256, 'Hello,shooting-star', 'https://img3.tuwandata.com/uploads/repayment/20181119/20181119_1542609685_16202.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1257, '永遠に咲く花', 'https://img3.tuwandata.com/uploads/repayment/20181119/20181119_1542620399_87839.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1258, 'treasure', 'https://img3.tuwandata.com/uploads/repayment/20181119/20181119_1542620109_45388.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1259, 'Wonderland-go-round', 'https://img3.tuwandata.com/uploads/repayment/20181119/20181119_1542607846_8090.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1260, '魔法陣より愛を込めて', 'https://img3.tuwandata.com/uploads/repayment/20181119/20181119_1542619607_54613.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1261, 'エブリデイワールド', 'https://img3.tuwandata.com/uploads/repayment/20181119/20181119_1542619288_81523.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1262, 'あったかいんだからぁ', 'https://img3.tuwandata.com/uploads/repayment/20181119/20181119_1542616888_49038.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1263, 'Girls', 'https://img3.tuwandata.com/uploads/repayment/20181126/20181126_1543224184_41454.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1265, '恋をしよう', 'https://img3.tuwandata.com/uploads/repayment/20181126/20181126_1543221529_9051.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1266, 'RAIN -Arrange-', 'https://img3.tuwandata.com/uploads/repayment/20181126/20181126_1543224107_41576.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1267, '歌に形はないけれど', 'https://img3.tuwandata.com/uploads/repayment/20181126/20181126_1543222889_9056.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1268, 'あめをゆかにしいて', 'https://img3.tuwandata.com/uploads/repayment/20181126/20181126_1543222196_30662.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1269, 'オレンジ', 'https://img3.tuwandata.com/uploads/repayment/20181126/20181126_1543223162_62749.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1270, 'リペイント', 'https://img3.tuwandata.com/uploads/repayment/20181126/20181126_1543221422_14904.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1271, '君がいなくなっても', 'https://img3.tuwandata.com/uploads/repayment/20181126/20181126_1543221318_60736.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1272, '何もかも有り余っている こんな時代も', 'https://img3.tuwandata.com/uploads/repayment/20181126/20181126_1543220499_28674.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1273, '雨宿りの二人', 'https://img3.tuwandata.com/uploads/repayment/20181204/20181204_1543905228_842.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1274, 'コイノシルシ from Shiori', 'https://img3.tuwandata.com/uploads/repayment/20181204/20181204_1543905343_29885.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1276, 'summertime', 'https://img3.tuwandata.com/uploads/repayment/20181204/20181204_1543903717_89403.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1277, 'ツインズ', 'https://img3.tuwandata.com/uploads/repayment/20181204/20181204_1543905009_43076.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1278, '夕焼けサンディブラウン', 'https://img3.tuwandata.com/uploads/repayment/20181204/20181204_1543904826_69903.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1279, 'flattery?', 'https://img3.tuwandata.com/uploads/repayment/20181204/20181204_1543904495_80216.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1280, 'しあわせ色', 'https://img3.tuwandata.com/uploads/repayment/20181204/20181204_1543904180_16723.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1281, '好きな人がいること', 'https://img3.tuwandata.com/uploads/repayment/20181204/20181204_1543904067_10423.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1282, 'ヒッチコック', 'https://img3.tuwandata.com/uploads/repayment/20181204/20181204_1543903924_19671.mp3', 0);
INSERT INTO `tuwan_mp3` VALUES (1283, '願い~あの頃のキミへ~', 'https://img3.tuwandata.com/uploads/repayment/20181204/20181204_1543903839_85327.mp3', 0);

SET FOREIGN_KEY_CHECKS = 1;
