/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : xiaoxiao

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2016-02-18 13:36:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `curry`
-- ----------------------------
DROP TABLE IF EXISTS `curry`;
CREATE TABLE `curry` (
  `id` bigint(20) NOT NULL auto_increment,
  `href` char(255) default NULL,
  `picsrc` char(255) default NULL,
  `price` char(16) default NULL,
  `name` char(255) default NULL,
  `dealtype` tinyint(10) NOT NULL default '6',
  `dealid` char(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of curry
-- ----------------------------
INSERT INTO `curry` VALUES ('1', 'goods-28992.html', 'http://img.52xie.com/images/201509/thumb_img/28992_thumb_G_1463318346.jpg', '949', '耐克/Nike Kyrie 1 Green Glow 欧文1 3M反光 705277-001 705278-001', '6', '28992');
INSERT INTO `curry` VALUES ('2', 'goods-31252.html', 'http://img.52xie.com/images/201601/thumb_img/31252_thumb_G_1480276572.jpg', '1099', '耐克/Nike Kyrie 2 BHM 欧文2 黑人月 男子篮球鞋 828376-099 828375-099', '6', '31252');
INSERT INTO `curry` VALUES ('3', 'goods-31414.html', 'http://img.52xie.com/images/201601/thumb_img/31414_thumb_G_1521977565.jpg', '999', '预售 耐克/Nike Kyrie 2 ASG 欧文2 全明星 男子篮球鞋 835922-307', '6', '31414');
INSERT INTO `curry` VALUES ('4', 'goods-30864.html', 'http://img.52xie.com/images/201601/thumb_img/30864_thumb_G_1488311242.jpg', '899', '耐克/Nike Kyrie 2 EP“Inferno”欧文2 红 男子篮球鞋 820537-680', '6', '30864');
INSERT INTO `curry` VALUES ('5', 'goods-29032.html', 'http://img.52xie.com/images/201508/thumb_img/29032_thumb_G_1511539074.jpg', '899', '耐克/Nike Kyrie 1 Green Glow 欧文1 绿色705278-333 705277-333', '6', '29032');
INSERT INTO `curry` VALUES ('6', 'goods-30529.html', 'http://img.52xie.com/images/201511/thumb_img/30529_thumb_G_1505573123.jpg', '1099', '耐克/NIKE KYRIE 1 LIMITED EP 欧文1 开赛夜 812653-160', '6', '30529');
INSERT INTO `curry` VALUES ('7', 'goods-28889.html', 'http://img.52xie.com/images/201508/thumb_img/28889_thumb_G_1446163880.jpg', '849', '耐克/Nike KYRIE 1 LMTD EP 欧文 打出名堂 812653-071', '6', '28889');
INSERT INTO `curry` VALUES ('8', 'goods-30865.html', 'http://img.52xie.com/images/201512/thumb_img/30865_thumb_G_1487720639.jpg', '1599', '耐克/Nike Kyrie 2 EP 欧文2 炫彩配色 820537-901', '6', '30865');
INSERT INTO `curry` VALUES ('9', 'goods-28452.html', 'http://img.52xie.com/images/201507/thumb_img/28452_thumb_G_1458247055.jpg', '1399', '耐克/Nike Kyrie 1 欧文 美国队 独立日 705278-401 705277-401', '6', '28452');
INSERT INTO `curry` VALUES ('10', 'goods-27602.html', 'http://img.52xie.com/images/201505/thumb_img/27602_thumb_G_1448258135.jpg', '799', '耐克/Nike Kyrie 1 EP Easter 欧文1 球鞋 白红外线 705278-100', '6', '27602');
INSERT INTO `curry` VALUES ('11', 'goods-26706.html', 'http://img.52xie.com/images/201502/thumb_img/26706_thumb_G_1516075726.jpg', '699', '耐克/NIKE ZOOM HYPERREV 2015 保罗乔治乳腺癌限量 705370-606', '6', '26706');
INSERT INTO `curry` VALUES ('12', 'goods-24896.html', 'http://img.52xie.com/images/201407/thumb_img/24896_thumb_G_1473901636.jpg', '599', '耐克/Nike Zoom Hyperrev 欧文示范 630913-009', '6', '24896');
INSERT INTO `curry` VALUES ('13', 'goods-26883.html', 'http://img.52xie.com/images/201502/thumb_img/26883_thumb_G_1497653782.jpg', '899', '耐克/Nike Kyrie 1 EP 薄荷绿欧文签名鞋 705278-313', '6', '26883');
INSERT INTO `curry` VALUES ('14', 'goods-27268.html', 'http://img.52xie.com/images/201504/thumb_img/27268_thumb_G_1458447602.jpg', '999', '耐克/Nike Kyrie 1 Brotherhood 欧文1 黑蓝 705278-400', '6', '27268');
INSERT INTO `curry` VALUES ('15', 'goods-30951.html', 'http://img.52xie.com/images/201512/thumb_img/30951_thumb_G_1536177248.jpg', '999', '耐克/Nike Kyrie 2 Christmas 欧文2 圣诞 823108-144 823109-144', '6', '30951');
INSERT INTO `curry` VALUES ('16', 'goods-26602.html', 'http://img.52xie.com/images/201501/thumb_img/26602_thumb_G_1466400516.jpg', '1299', '耐克/NIKE KYRIE 1 EP Dream 欧文1迷幻红 705278-606', '6', '26602');
INSERT INTO `curry` VALUES ('17', 'goods-27252.html', 'http://img.52xie.com/images/201505/thumb_img/27252_thumb_G_1445920221.jpg', '1049', '耐克/Nike Kyrie 1 EP Easter 欧文1 复活节 球鞋 705278-508', '6', '27252');
INSERT INTO `curry` VALUES ('18', 'goods-28122.html', 'http://img.52xie.com/images/201506/thumb_img/28122_thumb_G_1489959826.jpg', '1049', '耐克/Nike Kyrie 1 Yellow Light 欧文1 黄蓝 705278-737', '6', '28122');

-- ----------------------------
-- Table structure for `dealall`
-- ----------------------------
DROP TABLE IF EXISTS `dealall`;
CREATE TABLE `dealall` (
  `id` bigint(20) NOT NULL auto_increment,
  `href` char(255) default NULL,
  `picsrc` char(255) default NULL,
  `price` char(16) default NULL,
  `name` char(255) default NULL,
  `dealtype` tinyint(10) default NULL,
  `dealid` char(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=951 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dealall
-- ----------------------------
INSERT INTO `dealall` VALUES ('500', 'goods-24711.html', 'http://img.52xie.com/images/201408/thumb_img/24711_thumb_G_1479615979.jpg', '1799', '乔丹/Air Jordan 3Lab5 “Metallic Silver” 乔丹AJ5代黑爆裂 599581-003', '1', '24711');
INSERT INTO `dealall` VALUES ('499', 'goods-23669.html', 'http://img.52xie.com/images/201405/thumb_img/23669_thumb_G_1485993862.jpg', '2299', 'Air Jordan 6 Retro Carmine AJ6 乔6胭脂红情侣款 384664-160', '1', '23669');
INSERT INTO `dealall` VALUES ('498', 'goods-30067.html', 'http://img.52xie.com/images/201512/thumb_img/30067_thumb_G_1508771393.jpg', '1699', '乔丹/Air Jordan 6 Maroon AJ6 魔力红 384664-116', '1', '30067');
INSERT INTO `dealall` VALUES ('497', 'goods-28915.html', 'http://img.52xie.com/images/201509/thumb_img/28915_thumb_G_1535994534.jpg', '1749', '乔丹/Air Jordan 6 Low 黑银男鞋 304401-003', '1', '28915');
INSERT INTO `dealall` VALUES ('496', 'goods-22724.html', 'http://img.52xie.com/images/201402/thumb_img/22724_thumb_G_1466001629.jpg', '1599', '乔丹/Air Jordan 6 Infrared AJ6 乔6白红樱木 情侣限量 384664-123', '1', '22724');
INSERT INTO `dealall` VALUES ('495', 'goods-23320.html', 'http://img.52xie.com/images/201404/thumb_img/23308_thumb_G_1480074621.jpg', '1699', '乔丹/Jordan True Flight AJ7+ 乔7加强版 342964-023', '1', '23320');
INSERT INTO `dealall` VALUES ('494', 'goods-31250.html', 'http://img.52xie.com/images/201601/thumb_img/31250_thumb_G_1465873675.jpg', '1999', '乔丹/Air Jordan 4 White Cement AJ4 白水泥 840606-192 308496-104', '1', '31250');
INSERT INTO `dealall` VALUES ('493', 'goods-12147.html', 'http://img.52xie.com/images/201211/thumb_img/12147_thumb_G_1352339254749.jpg', '1499', 'Air Jordan 7 Retro olympic 乔丹7代奥运2012复刻情侣 篮球鞋 304775-135', '1', '12147');
INSERT INTO `dealall` VALUES ('492', 'goods-21829.html', 'http://img.52xie.com/images/201309/thumb_img/21829_thumb_G_1461421640.jpg', '1899', '乔丹/Air Jordan 5 Retro AJ5 白红黑火焰红 情侣款 136027-120', '1', '21829');
INSERT INTO `dealall` VALUES ('491', 'goods-30822.html', 'http://img.52xie.com/images/201512/thumb_img/30822_thumb_G_1500093069.jpg', '1099', '乔丹/JORDAN JUMPMAN TEAM II 乔13鞋底 819175-101', '1', '30822');
INSERT INTO `dealall` VALUES ('490', 'goods-28561.html', 'http://img.52xie.com/images/201507/thumb_img/28561_thumb_G_1465614887.jpg', '1399', '乔丹/Air Jordan 7 Bordeaux AJ7 波尔多 情侣款 304775-034', '1', '28561');
INSERT INTO `dealall` VALUES ('489', 'goods-27272.html', 'http://img.52xie.com/images/201504/thumb_img/27272_thumb_G_1480132073.jpg', '1499', '乔丹/Air Jordan XX9 Playoff Pack 乔29季后赛套 黑蓝 749143-014', '1', '27272');
INSERT INTO `dealall` VALUES ('488', 'goods-26813.html', 'http://img.52xie.com/images/201503/thumb_img/26813_thumb_G_1455011250.jpg', '1599', '乔丹/Air Jordan 10 Bull Over Broad way 乔10情侣大红 705178-601', '1', '26813');
INSERT INTO `dealall` VALUES ('487', 'goods-25190.html', 'http://img.52xie.com/images/201409/thumb_img/25190_thumb_G_1436476896.jpg', '1599', '乔丹/Air Jordan XX9 AJ29 Gym Red 乔29爆裂原色 695515-023', '1', '25190');
INSERT INTO `dealall` VALUES ('486', 'goods-27275.html', 'http://img.52xie.com/images/201504/thumb_img/27275_thumb_G_1443950804.jpg', '1899', '乔丹/Air Jordan 11 Low AJ11 乔11 乔11乔治城情侣 528895-007', '1', '27275');
INSERT INTO `dealall` VALUES ('485', 'goods-15612.html', 'http://img.52xie.com/images/201212/thumb_img/15612_thumb_G_1356658344956.jpg', '4099', 'Air Jordan 11 Retro 乔丹11黑红2012复刻情侣 篮球鞋 378037-010', '1', '15612');
INSERT INTO `dealall` VALUES ('484', 'goods-22478.html', 'http://img.52xie.com/images/201312/thumb_img/22478_thumb_G_1475071953.jpg', '1999', '乔丹/Air Jordan Retro 11 Gamma 乔11 情侣款伽马蓝 378037-006', '1', '22478');
INSERT INTO `dealall` VALUES ('483', 'goods-23405.html', 'http://img.52xie.com/images/201405/thumb_img/23405_thumb_G_1409962662.jpg', '2699', '乔丹/Air Jordan 11 Low Concord AJ11 LOW 乔11低帮白黑情侣 528895-153', '1', '23405');
INSERT INTO `dealall` VALUES ('482', 'goods-26300.html', 'http://img.52xie.com/images/201412/thumb_img/26300_thumb_G_1484106942.jpg', '2099', '乔丹/Air Jordan11Legend Blue 乔11传奇蓝 378037-117', '1', '26300');
INSERT INTO `dealall` VALUES ('481', 'goods-30391.html', 'http://img.52xie.com/images/201511/thumb_img/30391_thumb_G_1516243161.jpg', '1599', '乔丹/Air Jordan 7 Nothing But Net AJ7 白紫毛衣情侣款 304775-142', '1', '30391');
INSERT INTO `dealall` VALUES ('480', 'goods-30892.html', 'http://img.52xie.com/images/201512/thumb_img/30892_thumb_G_1463749169.jpg', '1599', '乔丹/Air Jordan 5 Low Alternate 90 AJ5 黑红 819171-001', '1', '30892');
INSERT INTO `dealall` VALUES ('479', 'goods-23271.html', 'http://img.52xie.com/images/201404/thumb_img/23271_thumb_G_1493308499.jpg', '1399', 'AIR JORDAN 2 RETRO 乔丹2代篮球鞋 黑爆裂 情侣款385475-023', '1', '23271');
INSERT INTO `dealall` VALUES ('478', 'goods-26560.html', 'http://img.52xie.com/images/201601/thumb_img/26560_thumb_G_1498933619.jpg', '1599', '乔丹/Air Jordan XX9 AJ29 Gym Red 乔29黑红爆裂 695515-001', '1', '26560');
INSERT INTO `dealall` VALUES ('477', 'goods-24442.html', 'http://img.52xie.com/images/201407/thumb_img/24442_thumb_G_1498706144.jpg', '539', '乔丹/Air Jordan CP3.VII AE 保罗7代篮球鞋 季后赛涂鸦 669612-070', '1', '24442');
INSERT INTO `dealall` VALUES ('476', 'goods-30726.html', 'http://img.52xie.com/images/201512/thumb_img/30726_thumb_G_1533992840.jpg', '1649', '乔丹/AIR JORDAN XX9 RW 威少限定 男子篮球鞋 827175-160', '1', '30726');
INSERT INTO `dealall` VALUES ('475', 'goods-30073.html', 'http://img.52xie.com/images/201510/thumb_img/30073_thumb_G_1506239887.jpg', '1599', '乔丹/Air Jordan XX9 Hornets AJ29 风水黄蜂 822227-154', '1', '30073');
INSERT INTO `dealall` VALUES ('474', 'goods-23273.html', 'http://img.52xie.com/images/201404/thumb_img/23273_thumb_G_1399948163.jpg', '2499', 'Air Jordan 11 Low Green Snake 乔11低帮绿蛇 528895-033', '1', '23273');
INSERT INTO `dealall` VALUES ('473', 'goods-25699.html', 'http://img.52xie.com/images/201410/thumb_img/25699_thumb_G_1440858299.jpg', '1999', '乔丹/Air Jordan XX9 29 River Walk AJ29 乔丹29代篮球鞋 695515-625', '1', '25699');
INSERT INTO `dealall` VALUES ('472', 'goods-31407.html', 'http://img.52xie.com/images/201601/thumb_img/31407_thumb_G_1553384201.jpg', '1999', '预售 乔丹/Air Jordan XXX AJ30 首发 白灰黑 篮球鞋 811006-101', '1', '31407');
INSERT INTO `dealall` VALUES ('471', 'goods-28843.html', 'http://img.52xie.com/images/201507/thumb_img/28843_thumb_G_1452893242.jpg', '899', '乔丹/AIR JORDAN CP3.VIII AE X 保罗8代 篮球鞋 725212-064', '1', '28843');
INSERT INTO `dealall` VALUES ('470', 'goods-24060.html', 'http://img.52xie.com/images/201406/thumb_img/24060_thumb_G_1432256119.jpg', '2199', '乔丹/Air Jordan 11 Low AJ11 乔11低帮黑红外线 528895-023', '1', '24060');
INSERT INTO `dealall` VALUES ('469', 'goods-27719.html', 'http://img.52xie.com/images/201505/thumb_img/27719_thumb_G_1502012163.jpg', '1899', '乔丹/Air Jordan 11 Low Bred 乔11黑红低帮 528895-012', '1', '27719');
INSERT INTO `dealall` VALUES ('468', 'goods-28035.html', 'http://img.52xie.com/images/201505/thumb_img/28035_thumb_G_1465252793.jpg', '1599', '乔丹/Air Jordan 20 Playoffs 乔20季后赛奥利奥 310455-003', '1', '28035');
INSERT INTO `dealall` VALUES ('467', 'goods-28920.html', 'http://img.52xie.com/images/201508/thumb_img/28920_thumb_G_1512520485.jpg', '1499', '乔丹/Air Jordan 7 Marvin The Martian 乔7火星人马文 304775-029', '1', '28920');
INSERT INTO `dealall` VALUES ('466', 'goods-26994.html', 'http://img.52xie.com/images/201503/thumb_img/26994_thumb_G_1460953495.jpg', '1799', '乔丹/Air Jordan 7 Retro AJ7 火星人马文巴塞罗那之夜 705350-007', '1', '26994');
INSERT INTO `dealall` VALUES ('465', 'goods-30817.html', 'http://img.52xie.com/images/201601/thumb_img/30817_thumb_G_1478208235.jpg', '1499', '乔丹/Air Jordan 8 chrome AJ8 乔8黑银 305381-003', '1', '30817');
INSERT INTO `dealall` VALUES ('464', 'goods-29677.html', 'http://img.52xie.com/images/201601/thumb_img/29677_thumb_G_1482645512.jpg', '799', '乔丹/Air Jordan 1 Mid 乔1中帮白灰 554724-112', '1', '29677');
INSERT INTO `dealall` VALUES ('463', 'goods-25787.html', 'http://img.52xie.com/images/201410/thumb_img/25787_thumb_G_1475870156.jpg', '3299', '乔丹/AIR JORDAN 6 SLAM DUNK AJ6 乔6灌篮高手樱木花道 717302-600', '1', '25787');
INSERT INTO `dealall` VALUES ('462', 'goods-27751.html', 'http://img.52xie.com/images/201505/thumb_img/27751_thumb_G_1454521982.jpg', '699', '乔丹/Air Jordan Cp3.VIII X 保罗8季后赛 加强 篮球鞋 725212-101', '1', '27751');
INSERT INTO `dealall` VALUES ('461', 'goods-30531.html', 'http://img.52xie.com/images/201512/thumb_img/30531_thumb_G_1545435601.jpg', '2699', '乔丹/Air Jordan 11 Retro 72-10 乔11大魔王情侣 378037-002', '1', '30531');
INSERT INTO `dealall` VALUES ('820', 'goods-24882.html', 'http://img.52xie.com/images/201407/thumb_img/24882_thumb_G_1459607220.jpg', '1199', '耐克/Nike Kobe IX 9 EM XDR 科比9青花瓷 蓝金 646701-414', '2', '24882');
INSERT INTO `dealall` VALUES ('819', 'goods-30594.html', 'http://img.52xie.com/images/201512/thumb_img/30594_thumb_G_1455310166.jpg', '1299', '耐克/Nike Kobe 10 High EXT White Gum 科比10 全白 822950-100', '2', '30594');
INSERT INTO `dealall` VALUES ('818', 'goods-26597.html', 'http://img.52xie.com/images/201505/thumb_img/26597_thumb_G_1493061840.jpg', '599', '耐克/NIKE KB MENTALITY 科比简版篮球鞋 704942-400', '2', '26597');
INSERT INTO `dealall` VALUES ('817', 'goods-29020.html', 'http://img.52xie.com/images/201508/thumb_img/29020_thumb_G_1529448945.jpg', '1399', '耐克/Nike Kobe 10 Elite Low Dark Atomic 科比10精英 747212-303', '2', '29020');
INSERT INTO `dealall` VALUES ('816', 'goods-30285.html', 'http://img.52xie.com/images/201510/thumb_img/30285_thumb_G_1490153155.jpg', '799', '耐克/NIKE ZOOM KOBE Venomenon 5 EP 科比毒液5 815757-604', '2', '30285');
INSERT INTO `dealall` VALUES ('815', 'goods-27186.html', 'http://img.52xie.com/images/201503/thumb_img/27186_thumb_G_1431369952.jpg', '999', '耐克/Kobe 10 Poison Green Vino ZK10 科比10毒液 745334-333', '2', '27186');
INSERT INTO `dealall` VALUES ('814', 'goods-22746.html', 'http://img.52xie.com/images/201402/thumb_img/22746_thumb_G_1421373038.jpg', '2999', '耐克/Nike Kobe 9 Elite ALL STAR 科比9代篮球鞋 全明星夜光 630847-002', '2', '22746');
INSERT INTO `dealall` VALUES ('813', 'goods-30614.html', 'http://img.52xie.com/images/201511/thumb_img/30614_thumb_G_1513170030.jpg', '1499', '耐克/Nike Kobe10 Elite USA 科比10 美国配色 718763-614', '2', '30614');
INSERT INTO `dealall` VALUES ('812', 'goods-27278.html', 'http://img.52xie.com/images/201510/thumb_img/27278_thumb_G_1542266624.jpg', '899', '耐克/Nike Kobe 10 Silk Road 科比10 丝绸之路705317-676  745334-676', '2', '27278');
INSERT INTO `dealall` VALUES ('811', 'goods-27923.html', 'http://img.52xie.com/images/201505/thumb_img/27923_thumb_G_1519516828.jpg', '599', '耐克/Nike KB MENTALITY 科比简版曼巴精神冰橙 704942-007', '2', '27923');
INSERT INTO `dealall` VALUES ('810', 'goods-30526.html', 'http://img.52xie.com/images/201511/thumb_img/30526_thumb_G_1510713231.jpg', '1499', '耐克/Nike Kobe10 Elite Coda 科比10 开赛夜  802762-707', '2', '30526');
INSERT INTO `dealall` VALUES ('809', 'goods-30127.html', 'http://img.52xie.com/images/201511/thumb_img/30127_thumb_G_1501915889.jpg', '1399', '耐克/Nike Kobe 10 Elite Low 科比10精英 开赛夜 747212-505 747212-515', '2', '30127');
INSERT INTO `dealall` VALUES ('808', 'goods-26598.html', 'http://img.52xie.com/images/201505/thumb_img/26598_thumb_G_1468214936.jpg', '499', '耐克/NIKE KB MENTALITY 科比简版篮球鞋 小丑配色704942-601', '2', '26598');
INSERT INTO `dealall` VALUES ('807', 'goods-25116.html', 'http://img.52xie.com/images/201411/thumb_img/25116_thumb_G_1440871869.jpg', '999', '耐克/NIKE KOBE 9 EM BRIGHT MANGO ZK9火焰科比9火花 653972-880', '2', '25116');
INSERT INTO `dealall` VALUES ('806', 'goods-23613.html', 'http://img.52xie.com/images/201405/thumb_img/23613_thumb_G_1452134820.jpg', '1199', '耐克/NIKE KOBE IX科比9 ZK9精英酷彩篮球鞋641714-005', '2', '23613');
INSERT INTO `dealall` VALUES ('805', 'goods-27153.html', 'http://img.52xie.com/images/201503/thumb_img/27153_thumb_G_1485660252.jpg', '499', '耐克/Nike Kobe KB Mentality 科比简版篮球鞋 704942-401', '2', '27153');
INSERT INTO `dealall` VALUES ('804', 'goods-25279.html', 'http://img.52xie.com/images/201410/thumb_img/25279_thumb_G_1480037986.jpg', '999', '耐克/Nike Kobe 9 Mid EXT “Black Snakeskin” 科比9黑曼巴 704286-001', '2', '25279');
INSERT INTO `dealall` VALUES ('803', 'goods-26140.html', 'http://img.52xie.com/images/201411/thumb_img/26140_thumb_G_1498650080.jpg', '1699', '耐克/Nike Kobe 9 Elite EXT Snakeskin 科比9蛇皮 716616-001', '2', '26140');
INSERT INTO `dealall` VALUES ('802', 'goods-26815.html', 'http://img.52xie.com/images/201502/thumb_img/26815_thumb_G_1488687797.jpg', '899', '耐克/Nike Kobe 10 All Star 科比10全明星 742546-097', '2', '26815');
INSERT INTO `dealall` VALUES ('801', 'goods-29376.html', 'http://img.52xie.com/images/201509/thumb_img/29376_thumb_G_1500296277.jpg', '1199', '耐克/NIKE Kobe 10“Overcome”科比10 745334-305 705317-305', '2', '29376');
INSERT INTO `dealall` VALUES ('800', 'goods-26505.html', 'http://img.52xie.com/images/201501/thumb_img/26505_thumb_G_1449136159.jpg', '1199', '耐克/Nike Kobe 9 Silk EM 科比9丝绸之路 653972-676', '2', '26505');
INSERT INTO `dealall` VALUES ('799', 'goods-27152.html', 'http://img.52xie.com/images/201503/thumb_img/27152_thumb_G_1500839684.jpg', '469', '耐克/Nike Kobe KB Mentality 科比简版篮球鞋 704942-300', '2', '27152');
INSERT INTO `dealall` VALUES ('798', 'goods-31371.html', 'http://img.52xie.com/images/201601/thumb_img/31371_thumb_G_1537550372.jpg', '1449', '耐克/nike zoom huarache 2k4 2016 复刻 全明星配色 308475-100', '2', '31371');
INSERT INTO `dealall` VALUES ('797', 'goods-30927.html', 'http://img.52xie.com/images/201601/thumb_img/30927_thumb_G_1519742890.jpg', '1399', '耐克/Nike KOBE11 ZP XI 科比11代低帮篮球鞋 822675-670', '2', '30927');
INSERT INTO `dealall` VALUES ('796', 'goods-30952.html', 'http://img.52xie.com/images/201601/thumb_img/30952_thumb_G_1502630300.jpg', '1699', '耐克/Nike Kobe 10 Elite Low 科比10 圣诞 802560-076', '2', '30952');
INSERT INTO `dealall` VALUES ('795', 'goods-30947.html', 'http://img.52xie.com/images/201601/thumb_img/30947_thumb_G_1510622337.jpg', '1699', '耐克/Nike Kobe 10 What The Kobe10 科比10鸳鸯 815810-900', '2', '30947');
INSERT INTO `dealall` VALUES ('794', 'goods-28283.html', 'http://img.52xie.com/images/201506/thumb_img/28283_thumb_G_1521810321.jpg', '599', '耐克/NIKE ZOOM KOBE Venomenon 5 科比毒液5 815757-706', '2', '28283');
INSERT INTO `dealall` VALUES ('793', 'goods-31254.html', 'http://img.52xie.com/images/201601/thumb_img/31254_thumb_G_1462267060.jpg', '1499', '耐克/Nike Kobe 11 Elite Low BHM 科比11 黑人月 822522-914', '2', '31254');
INSERT INTO `dealall` VALUES ('792', 'goods-22480.html', 'http://img.52xie.com/images/201312/thumb_img/22480_thumb_G_1419953448.jpg', '5499', '耐克/Nike Zoom Kobe 1 Prelude ZK1 科比1 复刻 蛇纹 640221-001', '2', '22480');
INSERT INTO `dealall` VALUES ('791', 'goods-29118.html', 'http://img.52xie.com/images/201509/thumb_img/29118_thumb_G_1508392219.jpg', '1399', '耐克/Nike Kobe10 Elite Low 科比10 黑粉刺客 747212-010', '2', '29118');
INSERT INTO `dealall` VALUES ('790', 'goods-31273.html', 'http://img.52xie.com/images/201601/thumb_img/31273_thumb_G_1513662702.jpg', '1399', '耐克/Nike Kobe 11 Elite Low 科比11黑灰配色 822675-105', '2', '31273');
INSERT INTO `dealall` VALUES ('789', 'goods-28627.html', 'http://img.52xie.com/images/201507/thumb_img/28627_thumb_G_1443208428.jpg', '999', '耐克/Nike Kobe 10 ZK10 科比10篮球鞋 鸽子灰 745334-001 705317-001', '2', '28627');
INSERT INTO `dealall` VALUES ('788', 'goods-27814.html', 'http://img.52xie.com/images/201506/thumb_img/27814_thumb_G_1512865630.jpg', '899', '耐克/Nike Kobe X EP Flight Pack 科比10篮球鞋 745334-308', '2', '27814');
INSERT INTO `dealall` VALUES ('787', 'goods-28284.html', 'http://img.52xie.com/images/201508/thumb_img/28284_thumb_G_1484903658.jpg', '599', '耐克/NIKE ZOOM KOBE Venomenon 5 EP 科比毒液5 815757-001', '2', '28284');
INSERT INTO `dealall` VALUES ('786', 'goods-31417.html', 'http://img.52xie.com/images/201602/thumb_img/31417_thumb_G_1454531889665.jpg', '1599', '耐克/NIKE KOBE 11 ELITE AS 科比11 ZK11 全明星 822521-305', '2', '31417');
INSERT INTO `dealall` VALUES ('785', 'goods-23337.html', 'http://img.52xie.com/images/201407/thumb_img/23337_thumb_G_1433815211.jpg', '2799', '耐克/NIKE KOBE IX ELTE 科比9 愚人节 630847-300', '2', '23337');
INSERT INTO `dealall` VALUES ('784', 'goods-28628.html', 'http://img.52xie.com/images/201601/thumb_img/28628_thumb_G_1532665084.jpg', '1299', '耐克/Nike Kobe 10 Elite Sunset 科比10飞线 日落 747212-818', '2', '28628');
INSERT INTO `dealall` VALUES ('783', 'goods-27346.html', 'http://img.52xie.com/images/201506/thumb_img/27346_thumb_G_1479916652.jpg', '1099', '耐克/Nike Kobe X Elite 科10 精英紫 科比 718763-505', '2', '27346');
INSERT INTO `dealall` VALUES ('782', 'goods-26967.html', 'http://img.52xie.com/images/201503/thumb_img/26967_thumb_G_1505025108.jpg', '899', '耐克/Nike Kobe 10 Blue Lagoon ZK10 科比10代篮球鞋 745334-005 705317-005', '2', '26967');
INSERT INTO `dealall` VALUES ('781', 'goods-30593.html', 'http://img.52xie.com/images/201512/thumb_img/30593_thumb_G_1461342254.jpg', '1099', '耐克/Nike Kobe 10 red KOBE10 科比10 大红 745334-616', '2', '30593');
INSERT INTO `dealall` VALUES ('780', 'goods-22620.html', 'http://img.52xie.com/images/201401/thumb_img/22620_thumb_G_1486767481.jpg', '1199', '耐克/NIKE LEBRON XI 詹姆斯 橘色 熔岩 LBJ11 626374-800  616175-800', '3', '22620');
INSERT INTO `dealall` VALUES ('779', 'goods-26035.html', 'http://img.52xie.com/images/201412/thumb_img/26035_thumb_G_1435860225.jpg', '1499', '耐克/NIKE LEBRON 12 LBJ12 詹12狮王雄心情侣款 684593-601 707781-601', '3', '26035');
INSERT INTO `dealall` VALUES ('778', 'goods-28150.html', 'http://img.52xie.com/images/201506/thumb_img/28150_thumb_G_1471800732.jpg', '999', '耐克/Nike Zoom Soldier IX Premium EP 战士9迷彩 749491-303', '3', '28150');
INSERT INTO `dealall` VALUES ('777', 'goods-31109.html', 'http://img.52xie.com/images/201601/thumb_img/31109_thumb_G_1469898645.jpg', '1199', '耐克/Nike Lebron 13 Black Lion LBJ13 黑生胶 807220-001', '3', '31109');
INSERT INTO `dealall` VALUES ('776', 'goods-30527.html', 'http://img.52xie.com/images/201511/thumb_img/30527_thumb_G_1545029984.jpg', '1499', '耐克/Nike Lebron 13 Fine Wine LBJ13 詹姆斯13 开赛夜 823301-060', '3', '30527');
INSERT INTO `dealall` VALUES ('775', 'goods-28703.html', 'http://img.52xie.com/images/201507/thumb_img/28703_thumb_G_1438463474.jpg', '1099', '耐克/Nike Zoom Soldier IX Kay Yow 战士9 乳腺癌 749420-601', '3', '28703');
INSERT INTO `dealall` VALUES ('774', 'goods-28072.html', 'http://img.52xie.com/images/201507/thumb_img/28072_thumb_G_1482731332.jpg', '799', '耐克/Nike Zoom Soldier 9 战士9黄蜂 749420-510', '3', '28072');
INSERT INTO `dealall` VALUES ('773', 'goods-27282.html', 'http://img.52xie.com/images/201504/thumb_img/27282_thumb_G_1483794214.jpg', '1099', '耐克/Nike Lebron XII Low EP LBJ12 Low 美国队 724558-174', '3', '27282');
INSERT INTO `dealall` VALUES ('772', 'goods-30353.html', 'http://img.52xie.com/images/201510/thumb_img/30353_thumb_G_1446539535.jpg', '1199', '耐克/Nike Zoom Soldier 9 战士9 青花瓷篮球鞋 812571-014', '3', '30353');
INSERT INTO `dealall` VALUES ('771', 'goods-30950.html', 'http://img.52xie.com/images/201601/thumb_img/30950_thumb_G_1549639296.jpg', '1499', '耐克/Nike Lebron 13 Christmas LBJ13圣诞 816279-144 816278-144', '3', '30950');
INSERT INTO `dealall` VALUES ('770', 'goods-30818.html', 'http://img.52xie.com/images/201512/thumb_img/30818_thumb_G_1461094781.jpg', '849', '耐克/Nike Ambassador 8 USA 使节八代 黑灰配色 818678-001', '3', '30818');
INSERT INTO `dealall` VALUES ('769', 'goods-30048.html', 'http://img.52xie.com/images/201509/thumb_img/30048_thumb_G_1446689910.jpg', '799', '耐克/Nike Lebron Soldier 战士9 酒红色 749491-670', '3', '30048');
INSERT INTO `dealall` VALUES ('768', 'goods-27134.html', 'http://img.52xie.com/images/201503/thumb_img/27134_thumb_G_1453364648.jpg', '1249', '耐克/Nike LeBron 12 EXT Wheat LBJ12 小麦 744287-700', '3', '27134');
INSERT INTO `dealall` VALUES ('767', 'goods-30674.html', 'http://img.52xie.com/images/201512/thumb_img/30674_thumb_G_1474764774.jpg', '1499', '耐克/Nike LeBron 13 Blue Lagoon 詹姆斯13 狼灰 807220-014 807219-014', '3', '30674');
INSERT INTO `dealall` VALUES ('766', 'goods-27704.html', 'http://img.52xie.com/images/201505/thumb_img/27704_thumb_G_1505098337.jpg', '1399', '耐克/Nike LEBRON XII ELITE Elevate 詹姆斯12精英 724559-488', '3', '27704');
INSERT INTO `dealall` VALUES ('765', 'goods-22686.html', 'http://img.52xie.com/images/201403/thumb_img/22686_thumb_G_1426401224.jpg', '899', '耐克/Nkie LEBRON XI XDR LBJ11 詹姆斯11 Hornets 黄蜂 616175-500  626374-500', '3', '22686');
INSERT INTO `dealall` VALUES ('764', 'goods-24431.html', 'http://img.52xie.com/images/201407/thumb_img/24431_thumb_G_1405564624.jpg', '999', '耐克/NIKE LeBron XI South Beach LBJ11 詹姆斯南海岸篮球鞋 616175-330', '3', '24431');
INSERT INTO `dealall` VALUES ('763', 'goods-27345.html', 'http://img.52xie.com/images/201505/thumb_img/27345_thumb_G_1521465982.jpg', '1499', '耐克/Nike LEBRON XII ELITE LBJ12 詹姆斯12精英 724559-618', '3', '27345');
INSERT INTO `dealall` VALUES ('762', 'goods-31380.html', 'http://img.52xie.com/images/201601/thumb_img/31380_thumb_G_1536651653.jpg', '799', '耐克/NIKE AMBASSADOR VIII 使节8篮球鞋 818678-601', '3', '31380');
INSERT INTO `dealall` VALUES ('761', 'goods-26710.html', 'http://img.52xie.com/images/201501/thumb_img/26710_thumb_G_1458902158.jpg', '1799', '耐克/Nike LeBron 12 BHM 詹姆斯12黑人月 744697-001', '3', '26710');
INSERT INTO `dealall` VALUES ('760', 'goods-29138.html', 'http://img.52xie.com/images/201510/thumb_img/29138_thumb_G_1543580860.jpg', '1899', '耐克/Nike What The LeBron 12 詹姆斯12 鸳鸯 802193-909  812511-909', '3', '29138');
INSERT INTO `dealall` VALUES ('759', 'goods-31255.html', 'http://img.52xie.com/images/201601/thumb_img/31255_thumb_G_1507883875.jpg', '1499', '耐克/Nike Lebron 13 BHM LBJ13 詹姆斯13 黑人月 828378-910 807219-999', '3', '31255');
INSERT INTO `dealall` VALUES ('758', 'goods-28734.html', 'http://img.52xie.com/images/201509/thumb_img/28734_thumb_G_1503519121.jpg', '549', '耐克/Nike Zoom Soldier 9 战士9白红 749500-601', '3', '28734');
INSERT INTO `dealall` VALUES ('757', 'goods-29703.html', 'http://img.52xie.com/images/201508/thumb_img/29703_thumb_G_1473988750.jpg', '999', '耐克/NIKE Zoom Soldier 詹姆斯 战士9 749491-016', '3', '29703');
INSERT INTO `dealall` VALUES ('756', 'goods-29119.html', 'http://img.52xie.com/images/201508/thumb_img/29119_thumb_G_1494088627.jpg', '999', '耐克/Nike LeBron 12 Low 詹姆斯12低帮黑金碳纤维 724558-070', '3', '29119');
INSERT INTO `dealall` VALUES ('755', 'goods-26601.html', 'http://img.52xie.com/images/201501/thumb_img/26601_thumb_G_1499526433.jpg', '1299', '耐克/NIKE LEBRON 12 23 Chambers 詹姆斯12 南海岸 707781-006 684593-006', '3', '26601');
INSERT INTO `dealall` VALUES ('754', 'goods-30678.html', 'http://img.52xie.com/images/201512/thumb_img/30678_thumb_G_1502050512.jpg', '1299', '耐克/Nike LeBron13 “Pot of Gold”詹姆斯13 黑金配色 807220-007', '3', '30678');
INSERT INTO `dealall` VALUES ('753', 'goods-28802.html', 'http://img.52xie.com/images/201507/thumb_img/28802_thumb_G_1484364524.jpg', '1099', '耐克/Nike Lebron XII Low LBJ12低帮 紫红 724558-565', '3', '28802');
INSERT INTO `dealall` VALUES ('752', 'goods-30207.html', 'http://img.52xie.com/images/201512/thumb_img/30207_thumb_G_1499713825.jpg', '1199', '耐克/Nike LeBron 13“Gym Red” LBJ13 詹姆斯13黑红骑士客场配色807220-600  807219-610', '3', '30207');
INSERT INTO `dealall` VALUES ('751', 'goods-31410.html', 'http://img.52xie.com/images/201601/thumb_img/31410_thumb_G_1477906022.jpg', '1499', '预售 耐克/Nike LeBron 13 ASG LBJ13 全明星 835659-309', '3', '31410');
INSERT INTO `dealall` VALUES ('750', 'goods-30891.html', 'http://img.52xie.com/images/201512/thumb_img/30891_thumb_G_1458516997.jpg', '1199', '耐克/Nike Lebron 13 USA LBJ13 詹姆斯13美国配色 807220-461', '3', '30891');
INSERT INTO `dealall` VALUES ('749', 'goods-28528.html', 'http://img.52xie.com/images/201507/thumb_img/28528_thumb_G_1444174354.jpg', '799', '耐克/Nike Zoom Soldier 9 战士9 雪碧 749420-441', '3', '28528');
INSERT INTO `dealall` VALUES ('748', 'goods-28583.html', 'http://img.52xie.com/images/201508/thumb_img/28583_thumb_G_1511080112.jpg', '1799', '耐克/Nike LeBron 12 EXT Prism 詹姆斯12多棱镜 彩虹 748861-900', '3', '28583');
INSERT INTO `dealall` VALUES ('747', 'goods-30111.html', 'http://img.52xie.com/images/201510/thumb_img/30111_thumb_G_1528452007.jpg', '1199', '耐克/Nike LeBron 13 LBJ13 詹姆斯13 首发配色 807219-500 807220-500', '3', '30111');
INSERT INTO `dealall` VALUES ('746', 'goods-30252.html', 'http://img.52xie.com/images/201510/thumb_img/30252_thumb_G_1445904777.jpg', '799', '耐克/Nike Zoom Soldier 9 战士9 黑红配色 749420-084', '3', '30252');
INSERT INTO `dealall` VALUES ('745', 'goods-30929.html', 'http://img.52xie.com/images/201512/thumb_img/30929_thumb_G_1488833230.jpg', '849', '耐克/Nike Ambassador 8 USA 使节八代 美国配色 818678-416', '3', '30929');
INSERT INTO `dealall` VALUES ('744', 'goods-30555.html', 'http://img.52xie.com/images/201601/thumb_img/30555_thumb_G_1476233146.jpg', '1399', '耐克/Nike LeBron 13 Akronite LBJ13 彩虹 807220-008', '3', '30555');
INSERT INTO `dealall` VALUES ('743', 'goods-26477.html', 'http://img.52xie.com/images/201412/thumb_img/26477_thumb_G_1418941063639.jpg', '1699', '耐克/NIKE LEBRON XII 詹12黑红糖果 707781-068', '3', '26477');
INSERT INTO `dealall` VALUES ('742', 'goods-28921.html', 'http://img.52xie.com/images/201509/thumb_img/28921_thumb_G_1540042598.jpg', '899', '耐克/Nike Lebron 12 Low Bright Citrus LBJ12 柑橘 724558-838  724557-838', '3', '28921');
INSERT INTO `dealall` VALUES ('741', 'goods-30371.html', 'http://img.52xie.com/images/201512/thumb_img/30371_thumb_G_1483710372.jpg', '1599', '耐克/Nike LeBron 13 Friday the 詹姆斯13 万圣节配色 807220-106 807219-106', '3', '30371');
INSERT INTO `dealall` VALUES ('821', 'goods-28140.html', 'http://img.52xie.com/images/201507/thumb_img/28140_thumb_G_1514103772.jpg', '1799', '耐克/Nike KD7 SE EP What The KD 7 杜兰特7 鸳鸯 812329-944', '4', '28140');
INSERT INTO `dealall` VALUES ('822', 'goods-31129.html', 'http://img.52xie.com/images/201601/thumb_img/31129_thumb_G_1552642043.jpg', '1199', '预售/耐克/Nike KD8 BHM 杜兰特8 黑人月 824421-090', '4', '31129');
INSERT INTO `dealall` VALUES ('823', 'goods-31416.html', 'http://img.52xie.com/images/201601/thumb_img/31416_thumb_G_1495825986.jpg', '1299', '预售 耐克/Nike KD8 ASG 杜兰特8 全明星 829207-100', '4', '31416');
INSERT INTO `dealall` VALUES ('824', 'goods-30948.html', 'http://img.52xie.com/images/201512/thumb_img/30948_thumb_G_1523403398.jpg', '1399', '耐克/Nike KD 8 Christmas 杜兰特8圣诞 822948-106', '4', '30948');
INSERT INTO `dealall` VALUES ('825', 'goods-25061.html', 'http://img.52xie.com/images/201409/thumb_img/25061_thumb_G_1437672730.jpg', '699', '耐克/Nike KD VII KD7 Easy Money 杜兰7 653997-330', '4', '25061');
INSERT INTO `dealall` VALUES ('826', 'goods-30284.html', 'http://img.52xie.com/images/201510/thumb_img/30284_thumb_G_1489791558.jpg', '449', '耐克/NIKE KD TREY 5 III EP 杜兰特篮球鞋 749378-002', '4', '30284');
INSERT INTO `dealall` VALUES ('827', 'goods-25885.html', 'http://img.52xie.com/images/201410/thumb_img/25885_thumb_G_1455966735.jpg', '499', '耐克/NIKE KD TREY 5 II EP XDR 杜兰特简版 679865-004', '4', '25885');
INSERT INTO `dealall` VALUES ('828', 'goods-27003.html', 'http://img.52xie.com/images/201503/thumb_img/27003_thumb_G_1515897352.jpg', '999', '耐克/Nike KD VII KD7 Weatherman 杜兰特7气象员 653997-303', '4', '27003');
INSERT INTO `dealall` VALUES ('829', 'goods-26412.html', 'http://img.52xie.com/images/201412/thumb_img/26395_thumb_G_1501012777.jpg', '1099', '耐克/Nike KD VII KD7 Texas KD7 杜兰特7德州长角牛 653997-080', '4', '26412');
INSERT INTO `dealall` VALUES ('830', 'goods-22674.html', 'http://img.52xie.com/images/201406/thumb_img/22674_thumb_G_1417722427.jpg', '2399', '耐克/NIKE KD VI SUPREME KD6 乳腺癌 618216-600', '4', '22674');
INSERT INTO `dealall` VALUES ('831', 'goods-29863.html', 'http://img.52xie.com/images/201509/thumb_img/29863_thumb_G_1482610668.jpg', '499', '耐克/NIKE KD TREY 5 III EP 杜兰特篮球鞋 749378-046', '4', '29863');
INSERT INTO `dealall` VALUES ('832', 'goods-26880.html', 'http://img.52xie.com/images/201504/thumb_img/26880_thumb_G_1514896410.jpg', '1799', '耐克/Nike KD7 Aunt Pearl 杜兰特7乳腺癌 706858-176  744984-176', '4', '26880');
INSERT INTO `dealall` VALUES ('833', 'goods-20022.html', 'http://img.52xie.com/images/201306/thumb_img/20022_thumb_G_1429347131.jpg', '599', '耐克/Nike Zoom KD V ELITE 杜兰特5精英Team Orange DMV 585386-800', '4', '20022');
INSERT INTO `dealall` VALUES ('834', 'goods-28061.html', 'http://img.52xie.com/images/201506/thumb_img/28061_thumb_G_1510273615.jpg', '999', '耐克/Nike KD VII ELITE 杜7精英 724349-090', '4', '28061');
INSERT INTO `dealall` VALUES ('835', 'goods-26564.html', 'http://img.52xie.com/images/201501/thumb_img/26564_thumb_G_1508637206.jpg', '999', '耐克/Nike KD7 EXT Suede QS 杜兰特7黑麂皮 717593-001', '4', '26564');
INSERT INTO `dealall` VALUES ('836', 'goods-24625.html', 'http://img.52xie.com/images/201407/thumb_img/24625_thumb_G_1432670528.jpg', '1099', '耐克/NIKE KD VII KD7 35,000 Degrees 杜兰特7男子篮球鞋 情侣款 653997-840', '4', '24625');
INSERT INTO `dealall` VALUES ('837', 'goods-30169.html', 'http://img.52xie.com/images/201601/thumb_img/30169_thumb_G_1544082589.jpg', '1199', '耐克/Nike KD8 EXT Black Gum 杜兰特8 编织 806393-001', '4', '30169');
INSERT INTO `dealall` VALUES ('838', 'goods-30167.html', 'http://img.52xie.com/images/201601/thumb_img/30167_thumb_G_1460147274.jpg', '999', '耐克/Nike KD8 Easy Euro 杜兰特8 灰红 800259-033', '4', '30167');
INSERT INTO `dealall` VALUES ('839', 'goods-26645.html', 'http://img.52xie.com/images/201501/thumb_img/26645_thumb_G_1424219121.jpg', '999', '耐克/Nike KD VII Clearwater KD7 杜兰特7水蓝 653997-414', '4', '26645');
INSERT INTO `dealall` VALUES ('840', 'goods-25135.html', 'http://img.52xie.com/images/201411/thumb_img/25135_thumb_G_1434103320.jpg', '899', '耐克/Nike KD VII“Calm Before the Storm”暴雨前的宁静杜兰特 7 653997-060', '4', '25135');
INSERT INTO `dealall` VALUES ('841', 'goods-28407.html', 'http://img.52xie.com/images/201506/thumb_img/28407_thumb_G_1511095418.jpg', '1249', '耐克/NIKE KD VII EXT CNVS QS 杜兰特7 苏格兰 726439-600', '4', '28407');
INSERT INTO `dealall` VALUES ('842', 'goods-26223.html', 'http://img.52xie.com/images/201412/thumb_img/26223_thumb_G_1446777695.jpg', '999', '耐克/NIKE KD VII 杜兰特7纽约帝国大厦紫葡萄 653997-535', '4', '26223');
INSERT INTO `dealall` VALUES ('843', 'goods-25311.html', 'http://img.52xie.com/images/201409/thumb_img/25311_thumb_G_1509803218.jpg', '399', '耐克/Nike KD Trey 5 II 杜兰特训练鞋 679865-060', '4', '25311');
INSERT INTO `dealall` VALUES ('844', 'goods-22295.html', 'http://img.52xie.com/images/201311/thumb_img/22295_thumb_G_1396766175.jpg', '549', '耐克/Nike KD VI PBJ 杜兰特篮球鞋 花生酱与果冻 599424-801', '4', '22295');
INSERT INTO `dealall` VALUES ('845', 'goods-28403.html', 'http://img.52xie.com/images/201507/thumb_img/28403_thumb_G_1505003773.jpg', '1049', '耐克/Nike KD8 “Bright Crimson” KD8 杜兰特8 749375-610 800259-610', '4', '28403');
INSERT INTO `dealall` VALUES ('846', 'goods-26563.html', 'http://img.52xie.com/images/201501/thumb_img/26563_thumb_G_1460743047.jpg', '1299', '耐克/NIKE KD VII EXT QS KD7 豹纹马毛德克萨斯 716654-001', '4', '26563');
INSERT INTO `dealall` VALUES ('847', 'goods-25855.html', 'http://img.52xie.com/images/201410/thumb_img/25855_thumb_G_1510329726.jpg', '1099', '耐克/NIKE KD 7 “Uprising” 杜兰特7松绿 653997-370', '4', '25855');
INSERT INTO `dealall` VALUES ('848', 'goods-27276.html', 'http://img.52xie.com/images/201504/thumb_img/27276_thumb_G_1445836775.jpg', '999', '耐克/Nike KD 7 Elite 杜兰特7 精英 灰橙 724349-478', '4', '27276');
INSERT INTO `dealall` VALUES ('849', 'goods-30528.html', 'http://img.52xie.com/images/201511/thumb_img/30528_thumb_G_1491206294.jpg', '1099', '耐克/NIKE KD 8 LMTD EP 杜兰特8 开赛夜 篮球鞋 822888-081', '4', '30528');
INSERT INTO `dealall` VALUES ('850', 'goods-28891.html', 'http://img.52xie.com/images/201601/thumb_img/28891_thumb_G_1521274671.jpg', '1099', '耐克/Nike KD 8 Suit 杜兰特8 MVP西装 749375-535/800259-535', '4', '28891');
INSERT INTO `dealall` VALUES ('851', 'goods-25194.html', 'http://img.52xie.com/images/201409/thumb_img/25194_thumb_G_1452852095.jpg', '1199', '耐克/Nike KD7 “Global Game” KD7 限量大红配色653996-660 653997-660', '4', '25194');
INSERT INTO `dealall` VALUES ('852', 'goods-28233.html', 'http://img.52xie.com/images/201507/thumb_img/28233_thumb_G_1441407208.jpg', '699', '耐克/NIKE KD TREY 5 III EP杜兰特篮球鞋 749378-606', '4', '28233');
INSERT INTO `dealall` VALUES ('853', 'goods-28232.html', 'http://img.52xie.com/images/201507/thumb_img/28232_thumb_G_1533594919.jpg', '599', '耐克/NIKE KD TREY 5 III EP杜兰特篮球鞋 749378-536', '4', '28232');
INSERT INTO `dealall` VALUES ('854', 'goods-30166.html', 'http://img.52xie.com/images/201601/thumb_img/30166_thumb_G_1502556401.jpg', '999', '耐克/Nike KD8 Easy Euro 杜兰特8 雷霆 800259-480', '4', '30166');
INSERT INTO `dealall` VALUES ('855', 'goods-30027.html', 'http://img.52xie.com/images/201509/thumb_img/30027_thumb_G_1443880678.jpg', '999', '耐克/NIKE KD 8 VINARY 杜兰特8 800259-013', '4', '30027');
INSERT INTO `dealall` VALUES ('856', 'goods-25886.html', 'http://img.52xie.com/images/201410/thumb_img/25886_thumb_G_1418980300.jpg', '699', '耐克/NIKE KD TREY 5 II EP 杜兰特实战篮球鞋 红绿 679865-603', '4', '25886');
INSERT INTO `dealall` VALUES ('857', 'goods-28406.html', 'http://img.52xie.com/images/201507/thumb_img/28406_thumb_G_1531618518.jpg', '1399', '耐克/Nike KD 8 USA 杜兰特8 美国独立日 蓝红 泼墨 800259-446', '4', '28406');
INSERT INTO `dealall` VALUES ('858', 'goods-26816.html', 'http://img.52xie.com/images/201501/thumb_img/26816_thumb_G_1521534795.jpg', '1199', '耐克/Nike KD7 All Star 杜兰特7全明星  742548-090', '4', '26816');
INSERT INTO `dealall` VALUES ('859', 'goods-24199.html', 'http://img.52xie.com/images/201408/thumb_img/24199_thumb_G_1453127393.jpg', '1799', '耐克/Nike What The KD6 杜兰特6代 鸳鸯鞋 复活节 669809-500', '4', '24199');
INSERT INTO `dealall` VALUES ('860', 'goods-27773.html', 'http://img.52xie.com/images/201506/thumb_img/27773_thumb_G_1513422482.jpg', '999', '耐克/NIKE KD VII KD7 杜兰特7闪电 653997-005', '4', '27773');
INSERT INTO `dealall` VALUES ('861', 'goods-28843.html', 'http://img.52xie.com/images/201507/thumb_img/28843_thumb_G_1452893242.jpg', '899', '乔丹/AIR JORDAN CP3.VIII AE X 保罗8代 篮球鞋 725212-064', '5', '28843');
INSERT INTO `dealall` VALUES ('862', 'goods-27751.html', 'http://img.52xie.com/images/201505/thumb_img/27751_thumb_G_1454521982.jpg', '699', '乔丹/Air Jordan Cp3.VIII X 保罗8季后赛 加强 篮球鞋 725212-101', '5', '27751');
INSERT INTO `dealall` VALUES ('863', 'goods-24442.html', 'http://img.52xie.com/images/201407/thumb_img/24442_thumb_G_1498706144.jpg', '539', '乔丹/Air Jordan CP3.VII AE 保罗7代篮球鞋 季后赛涂鸦 669612-070', '5', '24442');
INSERT INTO `dealall` VALUES ('864', 'goods-28564.html', 'http://img.52xie.com/images/201507/thumb_img/28564_thumb_G_1461521992.jpg', '799', '乔丹/AIR JORDAN CP3.VIII AE X 篮球鞋 725212-113', '5', '28564');
INSERT INTO `dealall` VALUES ('865', 'goods-28800.html', 'http://img.52xie.com/images/201507/thumb_img/28800_thumb_G_1473427895.jpg', '899', '乔丹/Jordan CP3 VIII AE 保罗8 小丑水冰蓝 725173-404', '5', '28800');
INSERT INTO `dealall` VALUES ('866', 'goods-27204.html', 'http://img.52xie.com/images/201503/thumb_img/27204_thumb_G_1498518155.jpg', '799', '乔丹/Air Jordan CP3.VIII AE X 保罗3 乔丹团队 725212-107', '5', '27204');
INSERT INTO `dealall` VALUES ('867', 'goods-30868.html', 'http://img.52xie.com/images/201512/thumb_img/30868_thumb_G_1473278727.jpg', '899', '乔丹/JORDAN CP3.IX 保罗9 黑灰 男子篮球鞋 829217-003', '5', '30868');
INSERT INTO `dealall` VALUES ('868', 'goods-30867.html', 'http://img.52xie.com/images/201512/thumb_img/30867_thumb_G_1466710575.jpg', '949', '乔丹/JORDAN CP3.IX 保罗9 黑橘 男子篮球鞋 829217-802', '5', '30867');
INSERT INTO `dealall` VALUES ('869', 'goods-26060.html', 'http://img.52xie.com/images/201411/thumb_img/26060_thumb_G_1501473012.jpg', '599', '乔丹/AIR JORDAN CP3.VIII X 保罗8篮球鞋 717099-327', '5', '26060');
INSERT INTO `dealall` VALUES ('870', 'goods-30953.html', 'http://img.52xie.com/images/201512/thumb_img/30953_thumb_G_1543990237.jpg', '949', '乔丹/Air Jordan CP3.IX 保罗9 实战篮球鞋 829217-605', '5', '30953');
INSERT INTO `dealall` VALUES ('871', 'goods-23846.html', 'http://img.52xie.com/images/201407/thumb_img/23846_thumb_G_1495980865.jpg', '649', '耐克/NIKE JORDAN CP3 保罗中国行 644805-601', '5', '23846');
INSERT INTO `dealall` VALUES ('872', 'goods-27176.html', 'http://img.52xie.com/images/201504/thumb_img/27176_thumb_G_1480197218.jpg', '799', '乔丹/Air Jordan CP3.VIII AE X 保罗3 乔丹团队 725212-025', '5', '27176');
INSERT INTO `dealall` VALUES ('873', 'goods-26429.html', 'http://img.52xie.com/images/201507/thumb_img/26429_thumb_G_1520397537.jpg', '899', '乔丹/AIR JORDAN CP3.VIII X CP8 保罗8大红 717099-605', '5', '26429');
INSERT INTO `dealall` VALUES ('874', 'goods-30249.html', 'http://img.52xie.com/images/201510/thumb_img/30249_thumb_G_1502349165.jpg', '899', '乔丹/Air Jordan CP3.IX  保罗9 黄龙配色篮球鞋 810868-012', '5', '30249');
INSERT INTO `dealall` VALUES ('875', 'goods-30372.html', 'http://img.52xie.com/images/201510/thumb_img/30372_thumb_G_1510323190.jpg', '999', '乔丹/Air Jordan CP3.IX 保罗9代 黑色篮球鞋 810868-010', '5', '30372');
INSERT INTO `dealall` VALUES ('876', 'goods-30248.html', 'http://img.52xie.com/images/201510/thumb_img/30248_thumb_G_1510196475.jpg', '999', '乔丹/Air Jordan CP3.IX  保罗9 黑蓝快船配色篮球鞋 829217-406', '5', '30248');
INSERT INTO `dealall` VALUES ('877', 'goods-29973.html', 'http://img.52xie.com/images/201510/thumb_img/29973_thumb_G_1458414464.jpg', '999', '乔丹/Air Jordan CP3.IX China 保罗9 中国 810868-308 725173-777', '5', '29973');
INSERT INTO `dealall` VALUES ('878', 'goods-26107.html', 'http://img.52xie.com/images/201411/thumb_img/26107_thumb_G_1465311659.jpg', '949', '乔丹/AIR JORDAN CP3.VIII X 保罗8代 717099-003', '5', '26107');
INSERT INTO `dealall` VALUES ('879', 'goods-30306.html', 'http://img.52xie.com/images/201510/thumb_img/30306_thumb_G_1520013741.jpg', '999', '乔丹/Air Jordan CP3.IX 保罗9 黑紫篮球鞋 829217-035', '5', '30306');
INSERT INTO `dealall` VALUES ('880', 'goods-26446.html', 'http://img.52xie.com/images/201507/thumb_img/26446_thumb_G_1521323999.jpg', '799', '乔丹/Air Jordan CP3.VIII X 保罗8绿巨人 717099-350', '5', '26446');
INSERT INTO `dealall` VALUES ('881', 'goods-28699.html', 'http://img.52xie.com/images/201507/thumb_img/28699_thumb_G_1450732993.jpg', '949', '乔丹/AIR JORDAN CP3.VIII 保罗8代 篮球鞋 黑绿红配 684855-035', '5', '28699');
INSERT INTO `dealall` VALUES ('882', 'goods-29032.html', 'http://img.52xie.com/images/201508/thumb_img/29032_thumb_G_1511539074.jpg', '899', '耐克/Nike Kyrie 1 Green Glow 欧文1 绿色705278-333 705277-333', '6', '29032');
INSERT INTO `dealall` VALUES ('883', 'goods-30864.html', 'http://img.52xie.com/images/201601/thumb_img/30864_thumb_G_1488311242.jpg', '899', '耐克/Nike Kyrie 2 EP“Inferno”欧文2 红 男子篮球鞋 820537-680', '6', '30864');
INSERT INTO `dealall` VALUES ('884', 'goods-28992.html', 'http://img.52xie.com/images/201509/thumb_img/28992_thumb_G_1463318346.jpg', '949', '耐克/Nike Kyrie 1 Green Glow 欧文1 3M反光 705277-001 705278-001', '6', '28992');
INSERT INTO `dealall` VALUES ('885', 'goods-28889.html', 'http://img.52xie.com/images/201508/thumb_img/28889_thumb_G_1446163880.jpg', '849', '耐克/Nike KYRIE 1 LMTD EP 欧文 打出名堂 812653-071', '6', '28889');
INSERT INTO `dealall` VALUES ('886', 'goods-31252.html', 'http://img.52xie.com/images/201601/thumb_img/31252_thumb_G_1480276572.jpg', '1099', '耐克/Nike Kyrie 2 BHM 欧文2 黑人月 男子篮球鞋 828376-099 828375-099', '6', '31252');
INSERT INTO `dealall` VALUES ('887', 'goods-30865.html', 'http://img.52xie.com/images/201512/thumb_img/30865_thumb_G_1487720639.jpg', '1599', '耐克/Nike Kyrie 2 EP 欧文2 炫彩配色 820537-901', '6', '30865');
INSERT INTO `dealall` VALUES ('888', 'goods-24896.html', 'http://img.52xie.com/images/201407/thumb_img/24896_thumb_G_1473901636.jpg', '599', '耐克/Nike Zoom Hyperrev 欧文示范 630913-009', '6', '24896');
INSERT INTO `dealall` VALUES ('889', 'goods-28452.html', 'http://img.52xie.com/images/201507/thumb_img/28452_thumb_G_1458247055.jpg', '1399', '耐克/Nike Kyrie 1 欧文 美国队 独立日 705278-401 705277-401', '6', '28452');
INSERT INTO `dealall` VALUES ('890', 'goods-31414.html', 'http://img.52xie.com/images/201601/thumb_img/31414_thumb_G_1521977565.jpg', '999', '预售 耐克/Nike Kyrie 2 ASG 欧文2 全明星 男子篮球鞋 835922-307', '6', '31414');
INSERT INTO `dealall` VALUES ('891', 'goods-30529.html', 'http://img.52xie.com/images/201511/thumb_img/30529_thumb_G_1505573123.jpg', '1099', '耐克/NIKE KYRIE 1 LIMITED EP 欧文1 开赛夜 812653-160', '6', '30529');
INSERT INTO `dealall` VALUES ('892', 'goods-27252.html', 'http://img.52xie.com/images/201505/thumb_img/27252_thumb_G_1445920221.jpg', '1049', '耐克/Nike Kyrie 1 EP Easter 欧文1 复活节 球鞋 705278-508', '6', '27252');
INSERT INTO `dealall` VALUES ('893', 'goods-27602.html', 'http://img.52xie.com/images/201505/thumb_img/27602_thumb_G_1448258135.jpg', '799', '耐克/Nike Kyrie 1 EP Easter 欧文1 球鞋 白红外线 705278-100', '6', '27602');
INSERT INTO `dealall` VALUES ('894', 'goods-26706.html', 'http://img.52xie.com/images/201502/thumb_img/26706_thumb_G_1516075726.jpg', '699', '耐克/NIKE ZOOM HYPERREV 2015 保罗乔治乳腺癌限量 705370-606', '6', '26706');
INSERT INTO `dealall` VALUES ('895', 'goods-26883.html', 'http://img.52xie.com/images/201502/thumb_img/26883_thumb_G_1497653782.jpg', '899', '耐克/Nike Kyrie 1 EP 薄荷绿欧文签名鞋 705278-313', '6', '26883');
INSERT INTO `dealall` VALUES ('896', 'goods-27268.html', 'http://img.52xie.com/images/201504/thumb_img/27268_thumb_G_1458447602.jpg', '999', '耐克/Nike Kyrie 1 Brotherhood 欧文1 黑蓝 705278-400', '6', '27268');
INSERT INTO `dealall` VALUES ('897', 'goods-30951.html', 'http://img.52xie.com/images/201512/thumb_img/30951_thumb_G_1536177248.jpg', '999', '耐克/Nike Kyrie 2 Christmas 欧文2 圣诞 823108-144 823109-144', '6', '30951');
INSERT INTO `dealall` VALUES ('898', 'goods-28122.html', 'http://img.52xie.com/images/201506/thumb_img/28122_thumb_G_1489959826.jpg', '1049', '耐克/Nike Kyrie 1 Yellow Light 欧文1 黄蓝 705278-737', '6', '28122');
INSERT INTO `dealall` VALUES ('899', 'goods-26602.html', 'http://img.52xie.com/images/201501/thumb_img/26602_thumb_G_1466400516.jpg', '1299', '耐克/NIKE KYRIE 1 EP Dream 欧文1迷幻红 705278-606', '6', '26602');
INSERT INTO `dealall` VALUES ('900', 'goods-25930.html', 'http://img.52xie.com/images/201410/thumb_img/25930_thumb_G_1463327490.jpg', '879', '耐克/NIKE ZOOM CRUSADER OUTDOOR 哈登篮球鞋 642855-002', '7', '25930');
INSERT INTO `dealall` VALUES ('901', 'goods-27699.html', 'http://img.52xie.com/images/201505/thumb_img/27699_thumb_G_1444185994.jpg', '699', '耐克/NIKE HYPERCHASE EP 哈登篮球鞋 705364-480', '7', '27699');
INSERT INTO `dealall` VALUES ('902', 'goods-27560.html', 'http://img.52xie.com/images/201504/thumb_img/27560_thumb_G_1498487204.jpg', '849', '耐克/Nike Zoom Crusader 哈登复活节 642855-300', '7', '27560');
INSERT INTO `dealall` VALUES ('903', 'goods-30403.html', 'http://img.52xie.com/images/201511/thumb_img/30403_thumb_G_1543779144.jpg', '699', '耐克/Nike HyperChase EP 哈登 实战篮球鞋 蓝色 806797-401', '7', '30403');
INSERT INTO `dealall` VALUES ('904', 'goods-27702.html', 'http://img.52xie.com/images/201505/thumb_img/27702_thumb_G_1443681552.jpg', '699', '耐克/NIKE HYPERCHASE EP 哈登篮球鞋 705364-700', '7', '27702');
INSERT INTO `dealall` VALUES ('905', 'goods-30402.html', 'http://img.52xie.com/images/201511/thumb_img/30402_thumb_G_1496782423.jpg', '799', '耐克/Nike HyperChase EP 哈登 实战篮球鞋 黑色 806797-001', '7', '30402');
INSERT INTO `dealall` VALUES ('906', 'goods-27561.html', 'http://img.52xie.com/images/201505/thumb_img/27561_thumb_G_1439722025.jpg', '599', '耐克/Nike Zoom Crusader 哈登复活节 642855-800', '7', '27561');
INSERT INTO `dealall` VALUES ('907', 'goods-28447.html', 'http://img.52xie.com/images/201506/thumb_img/28447_thumb_G_1477380517.jpg', '699', '耐克/Nike Hyperchase Ep 哈登 雪碧 705364-413', '7', '28447');
INSERT INTO `dealall` VALUES ('908', 'goods-27173.html', 'http://img.52xie.com/images/201504/thumb_img/27173_thumb_G_1508050114.jpg', '699', '耐克/NIKE ZOOM RUN THE ONE EP 哈登篮球鞋 红色 705364-600', '7', '27173');
INSERT INTO `dealall` VALUES ('909', 'goods-30404.html', 'http://img.52xie.com/images/201511/thumb_img/30404_thumb_G_1483736510.jpg', '949', '耐克/Nike HyperChase EP 哈登 乳腺癌 骚粉 705363-602', '7', '30404');
INSERT INTO `dealall` VALUES ('910', 'goods-28446.html', 'http://img.52xie.com/images/201506/thumb_img/28446_thumb_G_1439704472.jpg', '699', '耐克/Nike Hyperchase Ep 哈登 荧光橙 705364-810', '7', '28446');
INSERT INTO `dealall` VALUES ('911', 'goods-29032.html', 'http://img.52xie.com/images/201508/thumb_img/29032_thumb_G_1511539074.jpg', '899', '耐克/Nike Kyrie 1 Green Glow 欧文1 绿色705278-333 705277-333', '8', '29032');
INSERT INTO `dealall` VALUES ('912', 'goods-28992.html', 'http://img.52xie.com/images/201509/thumb_img/28992_thumb_G_1463318346.jpg', '949', '耐克/Nike Kyrie 1 Green Glow 欧文1 3M反光 705277-001 705278-001', '8', '28992');
INSERT INTO `dealall` VALUES ('913', 'goods-28889.html', 'http://img.52xie.com/images/201508/thumb_img/28889_thumb_G_1446163880.jpg', '849', '耐克/Nike KYRIE 1 LMTD EP 欧文 打出名堂 812653-071', '8', '28889');
INSERT INTO `dealall` VALUES ('914', 'goods-27906.html', 'http://img.52xie.com/images/201505/thumb_img/27906_thumb_G_1456803998.jpg', '599', '耐克/NIKE AIR FLIGHT LITE HIGH 巴克利灰紫篮球鞋 329984-005', '8', '27906');
INSERT INTO `dealall` VALUES ('915', 'goods-31274.html', 'http://img.52xie.com/images/201601/thumb_img/31274_thumb_G_1532887513.jpg', '1199', '耐克/Nike Air 2 Strong Mid 黑白巴克利 权志龙 805892-001', '8', '31274');
INSERT INTO `dealall` VALUES ('916', 'goods-17559.html', 'http://img.52xie.com/images/201305/thumb_img/17559_thumb_G_1376618355.jpg', '1899', '耐克/Nike Air Foamposite One white 哈达威 白喷 篮球鞋 314996-100', '8', '17559');
INSERT INTO `dealall` VALUES ('917', 'goods-27561.html', 'http://img.52xie.com/images/201505/thumb_img/27561_thumb_G_1439722025.jpg', '599', '耐克/Nike Zoom Crusader 哈登复活节 642855-800', '8', '27561');
INSERT INTO `dealall` VALUES ('918', 'goods-30864.html', 'http://img.52xie.com/images/201601/thumb_img/30864_thumb_G_1488311242.jpg', '899', '耐克/Nike Kyrie 2 EP“Inferno”欧文2 红 男子篮球鞋 820537-680', '8', '30864');
INSERT INTO `dealall` VALUES ('919', 'goods-31252.html', 'http://img.52xie.com/images/201601/thumb_img/31252_thumb_G_1480276572.jpg', '1099', '耐克/Nike Kyrie 2 BHM 欧文2 黑人月 男子篮球鞋 828376-099 828375-099', '8', '31252');
INSERT INTO `dealall` VALUES ('920', 'goods-31414.html', 'http://img.52xie.com/images/201601/thumb_img/31414_thumb_G_1521977565.jpg', '999', '预售 耐克/Nike Kyrie 2 ASG 欧文2 全明星 男子篮球鞋 835922-307', '8', '31414');
INSERT INTO `dealall` VALUES ('921', 'goods-30529.html', 'http://img.52xie.com/images/201511/thumb_img/30529_thumb_G_1505573123.jpg', '1099', '耐克/NIKE KYRIE 1 LIMITED EP 欧文1 开赛夜 812653-160', '8', '30529');
INSERT INTO `dealall` VALUES ('922', 'goods-28452.html', 'http://img.52xie.com/images/201507/thumb_img/28452_thumb_G_1458247055.jpg', '1399', '耐克/Nike Kyrie 1 欧文 美国队 独立日 705278-401 705277-401', '8', '28452');
INSERT INTO `dealall` VALUES ('923', 'goods-26955.html', 'http://img.52xie.com/images/201502/thumb_img/26955_thumb_G_1427459145.jpg', '799', '耐克/Nike Pippen 6 Denim 皮蓬6 牛仔 705065-400', '8', '26955');
INSERT INTO `dealall` VALUES ('924', 'goods-18171.html', 'http://img.52xie.com/images/201304/thumb_img/18171_thumb_G_1372363833.jpg', '899', '耐克/Nike Barkley Posite Max Eggplant 巴克利 夜光蓝 555097-300', '8', '18171');
INSERT INTO `dealall` VALUES ('925', 'goods-24896.html', 'http://img.52xie.com/images/201407/thumb_img/24896_thumb_G_1473901636.jpg', '599', '耐克/Nike Zoom Hyperrev 欧文示范 630913-009', '8', '24896');
INSERT INTO `dealall` VALUES ('926', 'goods-23224.html', 'http://img.52xie.com/images/201404/thumb_img/23224_thumb_G_1406366456.jpg', '799', '耐克/NIKE ZOOM SONIC FLIGHT GP佩顿 男子篮球鞋 641333-001', '8', '23224');
INSERT INTO `dealall` VALUES ('927', 'goods-27602.html', 'http://img.52xie.com/images/201505/thumb_img/27602_thumb_G_1448258135.jpg', '799', '耐克/Nike Kyrie 1 EP Easter 欧文1 球鞋 白红外线 705278-100', '8', '27602');
INSERT INTO `dealall` VALUES ('928', 'goods-23250.html', 'http://img.52xie.com/images/201404/thumb_img/23250_thumb_G_1418505136.jpg', '599', '耐克/Nike zoom sonic flight GP佩顿限量签名 复刻篮球641333-002', '8', '23250');
INSERT INTO `dealall` VALUES ('929', 'goods-26706.html', 'http://img.52xie.com/images/201502/thumb_img/26706_thumb_G_1516075726.jpg', '699', '耐克/NIKE ZOOM HYPERREV 2015 保罗乔治乳腺癌限量 705370-606', '8', '26706');
INSERT INTO `dealall` VALUES ('930', 'goods-476.html', 'http://img.52xie.com/images/201201/thumb_img/476_thumb_G_1325700616502.jpg', '1399', '耐克/Nike Air Flightposite 2 LE 香槟风2篮球鞋 386160-001', '8', '476');
INSERT INTO `dealall` VALUES ('931', 'goods-28201.html', 'http://img.52xie.com/images/201506/thumb_img/28201_thumb_G_1478692260.jpg', '3999', '耐克/Nike Air Penny One Pack QS 哈达威套装 800180-001', '8', '28201');
INSERT INTO `dealall` VALUES ('932', 'goods-30865.html', 'http://img.52xie.com/images/201512/thumb_img/30865_thumb_G_1487720639.jpg', '1599', '耐克/Nike Kyrie 2 EP 欧文2 炫彩配色 820537-901', '8', '30865');
INSERT INTO `dealall` VALUES ('933', 'goods-25930.html', 'http://img.52xie.com/images/201410/thumb_img/25930_thumb_G_1463327490.jpg', '879', '耐克/NIKE ZOOM CRUSADER OUTDOOR 哈登篮球鞋 642855-002', '8', '25930');
INSERT INTO `dealall` VALUES ('934', 'goods-26157.html', 'http://img.52xie.com/images/201411/thumb_img/26157_thumb_G_1432285118.jpg', '599', '耐克/NIKE AIR ZOOM FLIGHT 96 哈达威专属篮球鞋 317980-400', '8', '26157');
INSERT INTO `dealall` VALUES ('935', 'goods-28200.html', 'http://img.52xie.com/images/201506/thumb_img/28200_thumb_G_1482715251.jpg', '999', '耐克/Nike zoom penny 6 哈达威6铜喷 749629-001', '8', '28200');
INSERT INTO `dealall` VALUES ('936', 'goods-30288.html', 'http://img.52xie.com/images/201510/thumb_img/30288_thumb_G_1490402699.jpg', '999', '耐克/Nike zoom penny 6 哈达威6 铜银 749629-002', '8', '30288');
INSERT INTO `dealall` VALUES ('937', 'goods-27699.html', 'http://img.52xie.com/images/201505/thumb_img/27699_thumb_G_1444185994.jpg', '699', '耐克/NIKE HYPERCHASE EP 哈登篮球鞋 705364-480', '8', '27699');
INSERT INTO `dealall` VALUES ('938', 'goods-27281.html', 'http://img.52xie.com/images/201504/thumb_img/27281_thumb_G_1470297711.jpg', '1449', '耐克/Nike Chuck Posite 巴克利 白色 684758-400', '8', '27281');
INSERT INTO `dealall` VALUES ('939', 'goods-30403.html', 'http://img.52xie.com/images/201511/thumb_img/30403_thumb_G_1543779144.jpg', '699', '耐克/Nike HyperChase EP 哈登 实战篮球鞋 蓝色 806797-401', '8', '30403');
INSERT INTO `dealall` VALUES ('940', 'goods-26883.html', 'http://img.52xie.com/images/201502/thumb_img/26883_thumb_G_1497653782.jpg', '899', '耐克/Nike Kyrie 1 EP 薄荷绿欧文签名鞋 705278-313', '8', '26883');
INSERT INTO `dealall` VALUES ('941', 'goods-27252.html', 'http://img.52xie.com/images/201505/thumb_img/27252_thumb_G_1445920221.jpg', '1049', '耐克/Nike Kyrie 1 EP Easter 欧文1 复活节 球鞋 705278-508', '8', '27252');
INSERT INTO `dealall` VALUES ('942', 'goods-22915.html', 'http://img.52xie.com/images/201404/thumb_img/22915_thumb_G_1482647111.jpg', '899', '耐克/Nike Flight Sonic 白黑原色 佩顿 复刻 641333-100', '8', '22915');
INSERT INTO `dealall` VALUES ('943', 'goods-21127.html', 'http://img.52xie.com/images/201308/thumb_img/21127_thumb_G_1375300639449.jpg', '1899', '耐克/Nike Air Foamposite One white 哈达威 篮球鞋 蓝灰 314996-401', '8', '21127');
INSERT INTO `dealall` VALUES ('944', 'goods-27280.html', 'http://img.52xie.com/images/201504/thumb_img/27280_thumb_G_1460702064.jpg', '1399', '耐克/Nike Chuck Posite 巴克利 银色 684758-001', '8', '27280');
INSERT INTO `dealall` VALUES ('945', 'goods-27560.html', 'http://img.52xie.com/images/201504/thumb_img/27560_thumb_G_1498487204.jpg', '849', '耐克/Nike Zoom Crusader 哈登复活节 642855-300', '8', '27560');
INSERT INTO `dealall` VALUES ('946', 'goods-27268.html', 'http://img.52xie.com/images/201504/thumb_img/27268_thumb_G_1458447602.jpg', '999', '耐克/Nike Kyrie 1 Brotherhood 欧文1 黑蓝 705278-400', '8', '27268');
INSERT INTO `dealall` VALUES ('947', 'goods-29472.html', 'http://img.52xie.com/images/201508/thumb_img/29472_thumb_G_1441840250.jpg', '899', '耐克/Nike Pippen 6 Denim 皮蓬6  705065-610', '8', '29472');
INSERT INTO `dealall` VALUES ('948', 'goods-30402.html', 'http://img.52xie.com/images/201511/thumb_img/30402_thumb_G_1496782423.jpg', '799', '耐克/Nike HyperChase EP 哈登 实战篮球鞋 黑色 806797-001', '8', '30402');
INSERT INTO `dealall` VALUES ('949', 'goods-27702.html', 'http://img.52xie.com/images/201505/thumb_img/27702_thumb_G_1443681552.jpg', '699', '耐克/NIKE HYPERCHASE EP 哈登篮球鞋 705364-700', '8', '27702');
INSERT INTO `dealall` VALUES ('950', 'goods-28447.html', 'http://img.52xie.com/images/201506/thumb_img/28447_thumb_G_1477380517.jpg', '699', '耐克/Nike Hyperchase Ep 哈登 雪碧 705364-413', '8', '28447');

-- ----------------------------
-- Table structure for `dealcoll`
-- ----------------------------
DROP TABLE IF EXISTS `dealcoll`;
CREATE TABLE `dealcoll` (
  `id` bigint(20) NOT NULL auto_increment,
  `dealid` char(255) default NULL,
  `nickname` char(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dealcoll
-- ----------------------------
INSERT INTO `dealcoll` VALUES ('11', '26967', 'xiaoxiao');
INSERT INTO `dealcoll` VALUES ('3', '26967', 'xiaohua');
INSERT INTO `dealcoll` VALUES ('5', '30593', 'xiaohua');

-- ----------------------------
-- Table structure for `durant`
-- ----------------------------
DROP TABLE IF EXISTS `durant`;
CREATE TABLE `durant` (
  `id` bigint(20) NOT NULL auto_increment,
  `href` char(255) default NULL,
  `picsrc` char(255) default NULL,
  `price` char(16) default NULL,
  `name` char(255) default NULL,
  `dealtype` tinyint(10) NOT NULL default '4',
  `dealid` char(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of durant
-- ----------------------------
INSERT INTO `durant` VALUES ('1', 'goods-30948.html', 'http://img.52xie.com/images/201512/thumb_img/30948_thumb_G_1523403398.jpg', '1399', '耐克/Nike KD 8 Christmas 杜兰特8圣诞 822948-106', '4', '30948');
INSERT INTO `durant` VALUES ('2', 'goods-31129.html', 'http://img.52xie.com/images/201601/thumb_img/31129_thumb_G_1552642043.jpg', '1199', '预售/耐克/Nike KD8 BHM 杜兰特8 黑人月 824421-090', '4', '31129');
INSERT INTO `durant` VALUES ('3', 'goods-28140.html', 'http://img.52xie.com/images/201507/thumb_img/28140_thumb_G_1514103772.jpg', '1799', '耐克/Nike KD7 SE EP What The KD 7 杜兰特7 鸳鸯 812329-944', '4', '28140');
INSERT INTO `durant` VALUES ('4', 'goods-31416.html', 'http://img.52xie.com/images/201601/thumb_img/31416_thumb_G_1495825986.jpg', '1299', '预售 耐克/Nike KD8 ASG 杜兰特8 全明星 829207-100', '4', '31416');
INSERT INTO `durant` VALUES ('5', 'goods-28061.html', 'http://img.52xie.com/images/201506/thumb_img/28061_thumb_G_1510273615.jpg', '999', '耐克/Nike KD VII ELITE 杜7精英 724349-090', '4', '28061');
INSERT INTO `durant` VALUES ('6', 'goods-25855.html', 'http://img.52xie.com/images/201410/thumb_img/25855_thumb_G_1510329726.jpg', '1099', '耐克/NIKE KD 7 “Uprising” 杜兰特7松绿 653997-370', '4', '25855');
INSERT INTO `durant` VALUES ('7', 'goods-24625.html', 'http://img.52xie.com/images/201407/thumb_img/24625_thumb_G_1432670528.jpg', '1099', '耐克/NIKE KD VII KD7 35,000 Degrees 杜兰特7男子篮球鞋 情侣款 653997-840', '4', '24625');
INSERT INTO `durant` VALUES ('8', 'goods-25061.html', 'http://img.52xie.com/images/201409/thumb_img/25061_thumb_G_1437672730.jpg', '699', '耐克/Nike KD VII KD7 Easy Money 杜兰7 653997-330', '4', '25061');
INSERT INTO `durant` VALUES ('9', 'goods-25311.html', 'http://img.52xie.com/images/201409/thumb_img/25311_thumb_G_1509803218.jpg', '399', '耐克/Nike KD Trey 5 II 杜兰特训练鞋 679865-060', '4', '25311');
INSERT INTO `durant` VALUES ('10', 'goods-28403.html', 'http://img.52xie.com/images/201507/thumb_img/28403_thumb_G_1505003773.jpg', '1049', '耐克/Nike KD8 “Bright Crimson” KD8 杜兰特8 749375-610 800259-610', '4', '28403');
INSERT INTO `durant` VALUES ('11', 'goods-25885.html', 'http://img.52xie.com/images/201410/thumb_img/25885_thumb_G_1455966735.jpg', '499', '耐克/NIKE KD TREY 5 II EP XDR 杜兰特简版 679865-004', '4', '25885');
INSERT INTO `durant` VALUES ('12', 'goods-26880.html', 'http://img.52xie.com/images/201504/thumb_img/26880_thumb_G_1514896410.jpg', '1799', '耐克/Nike KD7 Aunt Pearl 杜兰特7乳腺癌 706858-176  744984-176', '4', '26880');
INSERT INTO `durant` VALUES ('13', 'goods-22295.html', 'http://img.52xie.com/images/201311/thumb_img/22295_thumb_G_1396766175.jpg', '549', '耐克/Nike KD VI PBJ 杜兰特篮球鞋 花生酱与果冻 599424-801', '4', '22295');
INSERT INTO `durant` VALUES ('14', 'goods-29863.html', 'http://img.52xie.com/images/201509/thumb_img/29863_thumb_G_1482610668.jpg', '499', '耐克/NIKE KD TREY 5 III EP 杜兰特篮球鞋 749378-046', '4', '29863');
INSERT INTO `durant` VALUES ('15', 'goods-20022.html', 'http://img.52xie.com/images/201306/thumb_img/20022_thumb_G_1429347131.jpg', '599', '耐克/Nike Zoom KD V ELITE 杜兰特5精英Team Orange DMV 585386-800', '4', '20022');
INSERT INTO `durant` VALUES ('16', 'goods-25135.html', 'http://img.52xie.com/images/201411/thumb_img/25135_thumb_G_1434103320.jpg', '899', '耐克/Nike KD VII“Calm Before the Storm”暴雨前的宁静杜兰特 7 653997-060', '4', '25135');
INSERT INTO `durant` VALUES ('17', 'goods-26645.html', 'http://img.52xie.com/images/201501/thumb_img/26645_thumb_G_1424219121.jpg', '999', '耐克/Nike KD VII Clearwater KD7 杜兰特7水蓝 653997-414', '4', '26645');
INSERT INTO `durant` VALUES ('18', 'goods-25886.html', 'http://img.52xie.com/images/201410/thumb_img/25886_thumb_G_1418980300.jpg', '699', '耐克/NIKE KD TREY 5 II EP 杜兰特实战篮球鞋 红绿 679865-603', '4', '25886');
INSERT INTO `durant` VALUES ('19', 'goods-30027.html', 'http://img.52xie.com/images/201509/thumb_img/30027_thumb_G_1443880678.jpg', '999', '耐克/NIKE KD 8 VINARY 杜兰特8 800259-013', '4', '30027');
INSERT INTO `durant` VALUES ('20', 'goods-26564.html', 'http://img.52xie.com/images/201501/thumb_img/26564_thumb_G_1508637206.jpg', '999', '耐克/Nike KD7 EXT Suede QS 杜兰特7黑麂皮 717593-001', '4', '26564');
INSERT INTO `durant` VALUES ('21', 'goods-28407.html', 'http://img.52xie.com/images/201506/thumb_img/28407_thumb_G_1511095418.jpg', '1249', '耐克/NIKE KD VII EXT CNVS QS 杜兰特7 苏格兰 726439-600', '4', '28407');
INSERT INTO `durant` VALUES ('22', 'goods-27003.html', 'http://img.52xie.com/images/201503/thumb_img/27003_thumb_G_1515897352.jpg', '999', '耐克/Nike KD VII KD7 Weatherman 杜兰特7气象员 653997-303', '4', '27003');
INSERT INTO `durant` VALUES ('23', 'goods-30284.html', 'http://img.52xie.com/images/201510/thumb_img/30284_thumb_G_1489791558.jpg', '449', '耐克/NIKE KD TREY 5 III EP 杜兰特篮球鞋 749378-002', '4', '30284');
INSERT INTO `durant` VALUES ('24', 'goods-26816.html', 'http://img.52xie.com/images/201501/thumb_img/26816_thumb_G_1521534795.jpg', '1199', '耐克/Nike KD7 All Star 杜兰特7全明星  742548-090', '4', '26816');
INSERT INTO `durant` VALUES ('25', 'goods-26223.html', 'http://img.52xie.com/images/201412/thumb_img/26223_thumb_G_1446777695.jpg', '999', '耐克/NIKE KD VII 杜兰特7纽约帝国大厦紫葡萄 653997-535', '4', '26223');
INSERT INTO `durant` VALUES ('26', 'goods-26563.html', 'http://img.52xie.com/images/201501/thumb_img/26563_thumb_G_1460743047.jpg', '1299', '耐克/NIKE KD VII EXT QS KD7 豹纹马毛德克萨斯 716654-001', '4', '26563');
INSERT INTO `durant` VALUES ('27', 'goods-28233.html', 'http://img.52xie.com/images/201507/thumb_img/28233_thumb_G_1441407208.jpg', '699', '耐克/NIKE KD TREY 5 III EP杜兰特篮球鞋 749378-606', '4', '28233');
INSERT INTO `durant` VALUES ('28', 'goods-28891.html', 'http://img.52xie.com/images/201601/thumb_img/28891_thumb_G_1521274671.jpg', '1099', '耐克/Nike KD 8 Suit 杜兰特8 MVP西装 749375-535/800259-535', '4', '28891');
INSERT INTO `durant` VALUES ('29', 'goods-25194.html', 'http://img.52xie.com/images/201409/thumb_img/25194_thumb_G_1452852095.jpg', '1199', '耐克/Nike KD7 “Global Game” KD7 限量大红配色653996-660 653997-660', '4', '25194');
INSERT INTO `durant` VALUES ('30', 'goods-27276.html', 'http://img.52xie.com/images/201504/thumb_img/27276_thumb_G_1445836775.jpg', '999', '耐克/Nike KD 7 Elite 杜兰特7 精英 灰橙 724349-478', '4', '27276');
INSERT INTO `durant` VALUES ('31', 'goods-30528.html', 'http://img.52xie.com/images/201511/thumb_img/30528_thumb_G_1491206294.jpg', '1099', '耐克/NIKE KD 8 LMTD EP 杜兰特8 开赛夜 篮球鞋 822888-081', '4', '30528');
INSERT INTO `durant` VALUES ('32', 'goods-30169.html', 'http://img.52xie.com/images/201601/thumb_img/30169_thumb_G_1544082589.jpg', '1199', '耐克/Nike KD8 EXT Black Gum 杜兰特8 编织 806393-001', '4', '30169');
INSERT INTO `durant` VALUES ('33', 'goods-28232.html', 'http://img.52xie.com/images/201507/thumb_img/28232_thumb_G_1533594919.jpg', '599', '耐克/NIKE KD TREY 5 III EP杜兰特篮球鞋 749378-536', '4', '28232');
INSERT INTO `durant` VALUES ('34', 'goods-30166.html', 'http://img.52xie.com/images/201601/thumb_img/30166_thumb_G_1502556401.jpg', '999', '耐克/Nike KD8 Easy Euro 杜兰特8 雷霆 800259-480', '4', '30166');
INSERT INTO `durant` VALUES ('35', 'goods-24199.html', 'http://img.52xie.com/images/201408/thumb_img/24199_thumb_G_1453127393.jpg', '1799', '耐克/Nike What The KD6 杜兰特6代 鸳鸯鞋 复活节 669809-500', '4', '24199');
INSERT INTO `durant` VALUES ('36', 'goods-30167.html', 'http://img.52xie.com/images/201601/thumb_img/30167_thumb_G_1460147274.jpg', '999', '耐克/Nike KD8 Easy Euro 杜兰特8 灰红 800259-033', '4', '30167');
INSERT INTO `durant` VALUES ('37', 'goods-26412.html', 'http://img.52xie.com/images/201412/thumb_img/26395_thumb_G_1501012777.jpg', '1099', '耐克/Nike KD VII KD7 Texas KD7 杜兰特7德州长角牛 653997-080', '4', '26412');
INSERT INTO `durant` VALUES ('38', 'goods-27773.html', 'http://img.52xie.com/images/201506/thumb_img/27773_thumb_G_1513422482.jpg', '999', '耐克/NIKE KD VII KD7 杜兰特7闪电 653997-005', '4', '27773');
INSERT INTO `durant` VALUES ('39', 'goods-28406.html', 'http://img.52xie.com/images/201507/thumb_img/28406_thumb_G_1531618518.jpg', '1399', '耐克/Nike KD 8 USA 杜兰特8 美国独立日 蓝红 泼墨 800259-446', '4', '28406');
INSERT INTO `durant` VALUES ('40', 'goods-22674.html', 'http://img.52xie.com/images/201406/thumb_img/22674_thumb_G_1417722427.jpg', '2399', '耐克/NIKE KD VI SUPREME KD6 乳腺癌 618216-600', '4', '22674');

-- ----------------------------
-- Table structure for `harden`
-- ----------------------------
DROP TABLE IF EXISTS `harden`;
CREATE TABLE `harden` (
  `id` bigint(20) NOT NULL auto_increment,
  `href` char(255) default NULL,
  `picsrc` char(255) default NULL,
  `price` char(16) default NULL,
  `name` char(255) default NULL,
  `dealtype` tinyint(10) NOT NULL default '7',
  `dealid` char(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of harden
-- ----------------------------
INSERT INTO `harden` VALUES ('1', 'goods-25930.html', 'http://img.52xie.com/images/201410/thumb_img/25930_thumb_G_1463327490.jpg', '879', '耐克/NIKE ZOOM CRUSADER OUTDOOR 哈登篮球鞋 642855-002', '7', '25930');
INSERT INTO `harden` VALUES ('2', 'goods-30403.html', 'http://img.52xie.com/images/201511/thumb_img/30403_thumb_G_1543779144.jpg', '699', '耐克/Nike HyperChase EP 哈登 实战篮球鞋 蓝色 806797-401', '7', '30403');
INSERT INTO `harden` VALUES ('3', 'goods-27561.html', 'http://img.52xie.com/images/201505/thumb_img/27561_thumb_G_1439722025.jpg', '599', '耐克/Nike Zoom Crusader 哈登复活节 642855-800', '7', '27561');
INSERT INTO `harden` VALUES ('4', 'goods-27560.html', 'http://img.52xie.com/images/201504/thumb_img/27560_thumb_G_1498487204.jpg', '849', '耐克/Nike Zoom Crusader 哈登复活节 642855-300', '7', '27560');
INSERT INTO `harden` VALUES ('5', 'goods-27699.html', 'http://img.52xie.com/images/201505/thumb_img/27699_thumb_G_1444185994.jpg', '699', '耐克/NIKE HYPERCHASE EP 哈登篮球鞋 705364-480', '7', '27699');
INSERT INTO `harden` VALUES ('6', 'goods-30402.html', 'http://img.52xie.com/images/201511/thumb_img/30402_thumb_G_1496782423.jpg', '799', '耐克/Nike HyperChase EP 哈登 实战篮球鞋 黑色 806797-001', '7', '30402');
INSERT INTO `harden` VALUES ('7', 'goods-27702.html', 'http://img.52xie.com/images/201505/thumb_img/27702_thumb_G_1443681552.jpg', '699', '耐克/NIKE HYPERCHASE EP 哈登篮球鞋 705364-700', '7', '27702');
INSERT INTO `harden` VALUES ('8', 'goods-28447.html', 'http://img.52xie.com/images/201506/thumb_img/28447_thumb_G_1477380517.jpg', '699', '耐克/Nike Hyperchase Ep 哈登 雪碧 705364-413', '7', '28447');
INSERT INTO `harden` VALUES ('9', 'goods-27173.html', 'http://img.52xie.com/images/201504/thumb_img/27173_thumb_G_1508050114.jpg', '699', '耐克/NIKE ZOOM RUN THE ONE EP 哈登篮球鞋 红色 705364-600', '7', '27173');
INSERT INTO `harden` VALUES ('10', 'goods-30404.html', 'http://img.52xie.com/images/201511/thumb_img/30404_thumb_G_1483736510.jpg', '949', '耐克/Nike HyperChase EP 哈登 乳腺癌 骚粉 705363-602', '7', '30404');
INSERT INTO `harden` VALUES ('11', 'goods-28446.html', 'http://img.52xie.com/images/201506/thumb_img/28446_thumb_G_1439704472.jpg', '699', '耐克/Nike Hyperchase Ep 哈登 荧光橙 705364-810', '7', '28446');

-- ----------------------------
-- Table structure for `james`
-- ----------------------------
DROP TABLE IF EXISTS `james`;
CREATE TABLE `james` (
  `id` bigint(20) NOT NULL auto_increment,
  `href` char(255) default NULL,
  `picsrc` char(255) default NULL,
  `price` char(16) default NULL,
  `name` char(255) default NULL,
  `dealtype` tinyint(10) NOT NULL default '3',
  `dealid` char(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of james
-- ----------------------------
INSERT INTO `james` VALUES ('1', 'goods-28921.html', 'http://img.52xie.com/images/201509/thumb_img/28921_thumb_G_1540042598.jpg', '899', '耐克/Nike Lebron 12 Low Bright Citrus LBJ12 柑橘 724558-838  724557-838', '3', '28921');
INSERT INTO `james` VALUES ('2', 'goods-30818.html', 'http://img.52xie.com/images/201512/thumb_img/30818_thumb_G_1461094781.jpg', '849', '耐克/Nike Ambassador 8 USA 使节八代 黑灰配色 818678-001', '3', '30818');
INSERT INTO `james` VALUES ('3', 'goods-30371.html', 'http://img.52xie.com/images/201512/thumb_img/30371_thumb_G_1483710372.jpg', '1599', '耐克/Nike LeBron 13 Friday the 詹姆斯13 万圣节配色 807220-106 807219-106', '3', '30371');
INSERT INTO `james` VALUES ('4', 'goods-29119.html', 'http://img.52xie.com/images/201508/thumb_img/29119_thumb_G_1494088627.jpg', '999', '耐克/Nike LeBron 12 Low 詹姆斯12低帮黑金碳纤维 724558-070', '3', '29119');
INSERT INTO `james` VALUES ('5', 'goods-28583.html', 'http://img.52xie.com/images/201508/thumb_img/28583_thumb_G_1511080112.jpg', '1799', '耐克/Nike LeBron 12 EXT Prism 詹姆斯12多棱镜 彩虹 748861-900', '3', '28583');
INSERT INTO `james` VALUES ('6', 'goods-26601.html', 'http://img.52xie.com/images/201501/thumb_img/26601_thumb_G_1499526433.jpg', '1299', '耐克/NIKE LEBRON 12 23 Chambers 詹姆斯12 南海岸 707781-006 684593-006', '3', '26601');
INSERT INTO `james` VALUES ('7', 'goods-30891.html', 'http://img.52xie.com/images/201512/thumb_img/30891_thumb_G_1458516997.jpg', '1199', '耐克/Nike Lebron 13 USA LBJ13 詹姆斯13美国配色 807220-461', '3', '30891');
INSERT INTO `james` VALUES ('8', 'goods-26477.html', 'http://img.52xie.com/images/201412/thumb_img/26477_thumb_G_1418941063639.jpg', '1699', '耐克/NIKE LEBRON XII 詹12黑红糖果 707781-068', '3', '26477');
INSERT INTO `james` VALUES ('9', 'goods-30252.html', 'http://img.52xie.com/images/201510/thumb_img/30252_thumb_G_1445904777.jpg', '799', '耐克/Nike Zoom Soldier 9 战士9 黑红配色 749420-084', '3', '30252');
INSERT INTO `james` VALUES ('10', 'goods-29703.html', 'http://img.52xie.com/images/201508/thumb_img/29703_thumb_G_1473988750.jpg', '999', '耐克/NIKE Zoom Soldier 詹姆斯 战士9 749491-016', '3', '29703');
INSERT INTO `james` VALUES ('11', 'goods-30678.html', 'http://img.52xie.com/images/201512/thumb_img/30678_thumb_G_1502050512.jpg', '1299', '耐克/Nike LeBron13 “Pot of Gold”詹姆斯13 黑金配色 807220-007', '3', '30678');
INSERT INTO `james` VALUES ('12', 'goods-31410.html', 'http://img.52xie.com/images/201601/thumb_img/31410_thumb_G_1477906022.jpg', '1499', '预售 耐克/Nike LeBron 13 ASG LBJ13 全明星 835659-309', '3', '31410');
INSERT INTO `james` VALUES ('13', 'goods-28802.html', 'http://img.52xie.com/images/201507/thumb_img/28802_thumb_G_1484364524.jpg', '1099', '耐克/Nike Lebron XII Low LBJ12低帮 紫红 724558-565', '3', '28802');
INSERT INTO `james` VALUES ('14', 'goods-31255.html', 'http://img.52xie.com/images/201601/thumb_img/31255_thumb_G_1507883875.jpg', '1499', '耐克/Nike Lebron 13 BHM LBJ13 詹姆斯13 黑人月 828378-910 807219-999', '3', '31255');
INSERT INTO `james` VALUES ('15', 'goods-30950.html', 'http://img.52xie.com/images/201601/thumb_img/30950_thumb_G_1549639296.jpg', '1499', '耐克/Nike Lebron 13 Christmas LBJ13圣诞 816279-144 816278-144', '3', '30950');
INSERT INTO `james` VALUES ('16', 'goods-30555.html', 'http://img.52xie.com/images/201601/thumb_img/30555_thumb_G_1476233146.jpg', '1399', '耐克/Nike LeBron 13 Akronite LBJ13 彩虹 807220-008', '3', '30555');
INSERT INTO `james` VALUES ('17', 'goods-30929.html', 'http://img.52xie.com/images/201512/thumb_img/30929_thumb_G_1488833230.jpg', '849', '耐克/Nike Ambassador 8 USA 使节八代 美国配色 818678-416', '3', '30929');
INSERT INTO `james` VALUES ('18', 'goods-24431.html', 'http://img.52xie.com/images/201407/thumb_img/24431_thumb_G_1405564624.jpg', '999', '耐克/NIKE LeBron XI South Beach LBJ11 詹姆斯南海岸篮球鞋 616175-330', '3', '24431');
INSERT INTO `james` VALUES ('19', 'goods-30353.html', 'http://img.52xie.com/images/201510/thumb_img/30353_thumb_G_1446539535.jpg', '1199', '耐克/Nike Zoom Soldier 9 战士9 青花瓷篮球鞋 812571-014', '3', '30353');
INSERT INTO `james` VALUES ('20', 'goods-27134.html', 'http://img.52xie.com/images/201503/thumb_img/27134_thumb_G_1453364648.jpg', '1249', '耐克/Nike LeBron 12 EXT Wheat LBJ12 小麦 744287-700', '3', '27134');
INSERT INTO `james` VALUES ('21', 'goods-30048.html', 'http://img.52xie.com/images/201509/thumb_img/30048_thumb_G_1446689910.jpg', '799', '耐克/Nike Lebron Soldier 战士9 酒红色 749491-670', '3', '30048');
INSERT INTO `james` VALUES ('22', 'goods-28734.html', 'http://img.52xie.com/images/201509/thumb_img/28734_thumb_G_1503519121.jpg', '549', '耐克/Nike Zoom Soldier 9 战士9白红 749500-601', '3', '28734');
INSERT INTO `james` VALUES ('23', 'goods-29138.html', 'http://img.52xie.com/images/201510/thumb_img/29138_thumb_G_1543580860.jpg', '1899', '耐克/Nike What The LeBron 12 詹姆斯12 鸳鸯 802193-909  812511-909', '3', '29138');
INSERT INTO `james` VALUES ('24', 'goods-26710.html', 'http://img.52xie.com/images/201501/thumb_img/26710_thumb_G_1458902158.jpg', '1799', '耐克/Nike LeBron 12 BHM 詹姆斯12黑人月 744697-001', '3', '26710');
INSERT INTO `james` VALUES ('25', 'goods-27282.html', 'http://img.52xie.com/images/201504/thumb_img/27282_thumb_G_1483794214.jpg', '1099', '耐克/Nike Lebron XII Low EP LBJ12 Low 美国队 724558-174', '3', '27282');
INSERT INTO `james` VALUES ('26', 'goods-31380.html', 'http://img.52xie.com/images/201601/thumb_img/31380_thumb_G_1536651653.jpg', '799', '耐克/NIKE AMBASSADOR VIII 使节8篮球鞋 818678-601', '3', '31380');
INSERT INTO `james` VALUES ('27', 'goods-28072.html', 'http://img.52xie.com/images/201507/thumb_img/28072_thumb_G_1482731332.jpg', '799', '耐克/Nike Zoom Soldier 9 战士9黄蜂 749420-510', '3', '28072');
INSERT INTO `james` VALUES ('28', 'goods-28703.html', 'http://img.52xie.com/images/201507/thumb_img/28703_thumb_G_1438463474.jpg', '1099', '耐克/Nike Zoom Soldier IX Kay Yow 战士9 乳腺癌 749420-601', '3', '28703');
INSERT INTO `james` VALUES ('29', 'goods-30527.html', 'http://img.52xie.com/images/201511/thumb_img/30527_thumb_G_1545029984.jpg', '1499', '耐克/Nike Lebron 13 Fine Wine LBJ13 詹姆斯13 开赛夜 823301-060', '3', '30527');
INSERT INTO `james` VALUES ('30', 'goods-31109.html', 'http://img.52xie.com/images/201601/thumb_img/31109_thumb_G_1469898645.jpg', '1199', '耐克/Nike Lebron 13 Black Lion LBJ13 黑生胶 807220-001', '3', '31109');
INSERT INTO `james` VALUES ('31', 'goods-28150.html', 'http://img.52xie.com/images/201506/thumb_img/28150_thumb_G_1471800732.jpg', '999', '耐克/Nike Zoom Soldier IX Premium EP 战士9迷彩 749491-303', '3', '28150');
INSERT INTO `james` VALUES ('32', 'goods-26035.html', 'http://img.52xie.com/images/201412/thumb_img/26035_thumb_G_1435860225.jpg', '1499', '耐克/NIKE LEBRON 12 LBJ12 詹12狮王雄心情侣款 684593-601 707781-601', '3', '26035');
INSERT INTO `james` VALUES ('33', 'goods-27345.html', 'http://img.52xie.com/images/201505/thumb_img/27345_thumb_G_1521465982.jpg', '1499', '耐克/Nike LEBRON XII ELITE LBJ12 詹姆斯12精英 724559-618', '3', '27345');
INSERT INTO `james` VALUES ('34', 'goods-30674.html', 'http://img.52xie.com/images/201512/thumb_img/30674_thumb_G_1474764774.jpg', '1499', '耐克/Nike LeBron 13 Blue Lagoon 詹姆斯13 狼灰 807220-014 807219-014', '3', '30674');
INSERT INTO `james` VALUES ('35', 'goods-30207.html', 'http://img.52xie.com/images/201512/thumb_img/30207_thumb_G_1499713825.jpg', '1199', '耐克/Nike LeBron 13“Gym Red” LBJ13 詹姆斯13黑红骑士客场配色807220-600  807219-610', '3', '30207');
INSERT INTO `james` VALUES ('36', 'goods-30111.html', 'http://img.52xie.com/images/201510/thumb_img/30111_thumb_G_1528452007.jpg', '1199', '耐克/Nike LeBron 13 LBJ13 詹姆斯13 首发配色 807219-500 807220-500', '3', '30111');
INSERT INTO `james` VALUES ('37', 'goods-22686.html', 'http://img.52xie.com/images/201403/thumb_img/22686_thumb_G_1426401224.jpg', '899', '耐克/Nkie LEBRON XI XDR LBJ11 詹姆斯11 Hornets 黄蜂 616175-500  626374-500', '3', '22686');
INSERT INTO `james` VALUES ('38', 'goods-27704.html', 'http://img.52xie.com/images/201505/thumb_img/27704_thumb_G_1505098337.jpg', '1399', '耐克/Nike LEBRON XII ELITE Elevate 詹姆斯12精英 724559-488', '3', '27704');
INSERT INTO `james` VALUES ('39', 'goods-28528.html', 'http://img.52xie.com/images/201507/thumb_img/28528_thumb_G_1444174354.jpg', '799', '耐克/Nike Zoom Soldier 9 战士9 雪碧 749420-441', '3', '28528');
INSERT INTO `james` VALUES ('40', 'goods-22620.html', 'http://img.52xie.com/images/201401/thumb_img/22620_thumb_G_1486767481.jpg', '1199', '耐克/NIKE LEBRON XI 詹姆斯 橘色 熔岩 LBJ11 626374-800  616175-800', '3', '22620');

-- ----------------------------
-- Table structure for `jordan`
-- ----------------------------
DROP TABLE IF EXISTS `jordan`;
CREATE TABLE `jordan` (
  `id` bigint(20) NOT NULL auto_increment,
  `href` char(255) default NULL,
  `picsrc` char(255) default NULL,
  `price` char(255) default NULL,
  `name` char(255) default NULL,
  `dealtype` tinyint(10) NOT NULL default '1',
  `dealid` char(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jordan
-- ----------------------------
INSERT INTO `jordan` VALUES ('1', 'goods-25787.html', 'http://img.52xie.com/images/201410/thumb_img/25787_thumb_G_1475870156.jpg', '3299', '乔丹/AIR JORDAN 6 SLAM DUNK AJ6 乔6灌篮高手樱木花道 717302-600', '1', '25787');
INSERT INTO `jordan` VALUES ('2', 'goods-30531.html', 'http://img.52xie.com/images/201512/thumb_img/30531_thumb_G_1545435601.jpg', '2699', '乔丹/Air Jordan 11 Retro 72-10 乔11大魔王情侣 378037-002', '1', '30531');
INSERT INTO `jordan` VALUES ('3', 'goods-29677.html', 'http://img.52xie.com/images/201601/thumb_img/29677_thumb_G_1482645512.jpg', '799', '乔丹/Air Jordan 1 Mid 乔1中帮白灰 554724-112', '1', '29677');
INSERT INTO `jordan` VALUES ('4', 'goods-27751.html', 'http://img.52xie.com/images/201505/thumb_img/27751_thumb_G_1454521982.jpg', '699', '乔丹/Air Jordan Cp3.VIII X 保罗8季后赛 加强 篮球鞋 725212-101', '1', '27751');
INSERT INTO `jordan` VALUES ('5', 'goods-23271.html', 'http://img.52xie.com/images/201404/thumb_img/23271_thumb_G_1493308499.jpg', '1399', 'AIR JORDAN 2 RETRO 乔丹2代篮球鞋 黑爆裂 情侣款385475-023', '1', '23271');
INSERT INTO `jordan` VALUES ('6', 'goods-28561.html', 'http://img.52xie.com/images/201507/thumb_img/28561_thumb_G_1465614887.jpg', '1399', '乔丹/Air Jordan 7 Bordeaux AJ7 波尔多 情侣款 304775-034', '1', '28561');
INSERT INTO `jordan` VALUES ('7', 'goods-26560.html', 'http://img.52xie.com/images/201601/thumb_img/26560_thumb_G_1498933619.jpg', '1599', '乔丹/Air Jordan XX9 AJ29 Gym Red 乔29黑红爆裂 695515-001', '1', '26560');
INSERT INTO `jordan` VALUES ('8', 'goods-25190.html', 'http://img.52xie.com/images/201409/thumb_img/25190_thumb_G_1436476896.jpg', '1599', '乔丹/Air Jordan XX9 AJ29 Gym Red 乔29爆裂原色 695515-023', '1', '25190');
INSERT INTO `jordan` VALUES ('9', 'goods-22478.html', 'http://img.52xie.com/images/201312/thumb_img/22478_thumb_G_1475071953.jpg', '1999', '乔丹/Air Jordan Retro 11 Gamma 乔11 情侣款伽马蓝 378037-006', '1', '22478');
INSERT INTO `jordan` VALUES ('10', 'goods-28843.html', 'http://img.52xie.com/images/201507/thumb_img/28843_thumb_G_1452893242.jpg', '899', '乔丹/AIR JORDAN CP3.VIII AE X 保罗8代 篮球鞋 725212-064', '1', '28843');
INSERT INTO `jordan` VALUES ('11', 'goods-27272.html', 'http://img.52xie.com/images/201504/thumb_img/27272_thumb_G_1480132073.jpg', '1499', '乔丹/Air Jordan XX9 Playoff Pack 乔29季后赛套 黑蓝 749143-014', '1', '27272');
INSERT INTO `jordan` VALUES ('12', 'goods-30817.html', 'http://img.52xie.com/images/201601/thumb_img/30817_thumb_G_1478208235.jpg', '1499', '乔丹/Air Jordan 8 chrome AJ8 乔8黑银 305381-003', '1', '30817');
INSERT INTO `jordan` VALUES ('13', 'goods-31250.html', 'http://img.52xie.com/images/201601/thumb_img/31250_thumb_G_1465873675.jpg', '1999', '乔丹/Air Jordan 4 White Cement AJ4 白水泥 840606-192 308496-104', '1', '31250');
INSERT INTO `jordan` VALUES ('14', 'goods-26994.html', 'http://img.52xie.com/images/201503/thumb_img/26994_thumb_G_1460953495.jpg', '1799', '乔丹/Air Jordan 7 Retro AJ7 火星人马文巴塞罗那之夜 705350-007', '1', '26994');
INSERT INTO `jordan` VALUES ('15', 'goods-28920.html', 'http://img.52xie.com/images/201508/thumb_img/28920_thumb_G_1512520485.jpg', '1499', '乔丹/Air Jordan 7 Marvin The Martian 乔7火星人马文 304775-029', '1', '28920');
INSERT INTO `jordan` VALUES ('16', 'goods-27719.html', 'http://img.52xie.com/images/201505/thumb_img/27719_thumb_G_1502012163.jpg', '1899', '乔丹/Air Jordan 11 Low Bred 乔11黑红低帮 528895-012', '1', '27719');
INSERT INTO `jordan` VALUES ('17', 'goods-24060.html', 'http://img.52xie.com/images/201406/thumb_img/24060_thumb_G_1432256119.jpg', '2199', '乔丹/Air Jordan 11 Low AJ11 乔11低帮黑红外线 528895-023', '1', '24060');
INSERT INTO `jordan` VALUES ('18', 'goods-15612.html', 'http://img.52xie.com/images/201212/thumb_img/15612_thumb_G_1356658344956.jpg', '4099', 'Air Jordan 11 Retro 乔丹11黑红2012复刻情侣 篮球鞋 378037-010', '1', '15612');
INSERT INTO `jordan` VALUES ('19', 'goods-27275.html', 'http://img.52xie.com/images/201504/thumb_img/27275_thumb_G_1443950804.jpg', '1899', '乔丹/Air Jordan 11 Low AJ11 乔11 乔11乔治城情侣 528895-007', '1', '27275');
INSERT INTO `jordan` VALUES ('20', 'goods-24442.html', 'http://img.52xie.com/images/201407/thumb_img/24442_thumb_G_1498706144.jpg', '539', '乔丹/Air Jordan CP3.VII AE 保罗7代篮球鞋 季后赛涂鸦 669612-070', '1', '24442');
INSERT INTO `jordan` VALUES ('21', 'goods-30822.html', 'http://img.52xie.com/images/201512/thumb_img/30822_thumb_G_1500093069.jpg', '1099', '乔丹/JORDAN JUMPMAN TEAM II 乔13鞋底 819175-101', '1', '30822');
INSERT INTO `jordan` VALUES ('22', 'goods-21829.html', 'http://img.52xie.com/images/201309/thumb_img/21829_thumb_G_1461421640.jpg', '1899', '乔丹/Air Jordan 5 Retro AJ5 白红黑火焰红 情侣款 136027-120', '1', '21829');
INSERT INTO `jordan` VALUES ('23', 'goods-30892.html', 'http://img.52xie.com/images/201512/thumb_img/30892_thumb_G_1463749169.jpg', '1599', '乔丹/Air Jordan 5 Low Alternate 90 AJ5 黑红 819171-001', '1', '30892');
INSERT INTO `jordan` VALUES ('24', 'goods-30391.html', 'http://img.52xie.com/images/201511/thumb_img/30391_thumb_G_1516243161.jpg', '1599', '乔丹/Air Jordan 7 Nothing But Net AJ7 白紫毛衣情侣款 304775-142', '1', '30391');
INSERT INTO `jordan` VALUES ('25', 'goods-26300.html', 'http://img.52xie.com/images/201412/thumb_img/26300_thumb_G_1484106942.jpg', '2099', '乔丹/Air Jordan11Legend Blue 乔11传奇蓝 378037-117', '1', '26300');
INSERT INTO `jordan` VALUES ('26', 'goods-23405.html', 'http://img.52xie.com/images/201405/thumb_img/23405_thumb_G_1409962662.jpg', '2699', '乔丹/Air Jordan 11 Low Concord AJ11 LOW 乔11低帮白黑情侣 528895-153', '1', '23405');
INSERT INTO `jordan` VALUES ('27', 'goods-23273.html', 'http://img.52xie.com/images/201404/thumb_img/23273_thumb_G_1399948163.jpg', '2499', 'Air Jordan 11 Low Green Snake 乔11低帮绿蛇 528895-033', '1', '23273');
INSERT INTO `jordan` VALUES ('28', 'goods-28035.html', 'http://img.52xie.com/images/201505/thumb_img/28035_thumb_G_1465252793.jpg', '1599', '乔丹/Air Jordan 20 Playoffs 乔20季后赛奥利奥 310455-003', '1', '28035');
INSERT INTO `jordan` VALUES ('29', 'goods-30073.html', 'http://img.52xie.com/images/201510/thumb_img/30073_thumb_G_1506239887.jpg', '1599', '乔丹/Air Jordan XX9 Hornets AJ29 风水黄蜂 822227-154', '1', '30073');
INSERT INTO `jordan` VALUES ('30', 'goods-30726.html', 'http://img.52xie.com/images/201512/thumb_img/30726_thumb_G_1533992840.jpg', '1649', '乔丹/AIR JORDAN XX9 RW 威少限定 男子篮球鞋 827175-160', '1', '30726');
INSERT INTO `jordan` VALUES ('31', 'goods-26813.html', 'http://img.52xie.com/images/201503/thumb_img/26813_thumb_G_1455011250.jpg', '1599', '乔丹/Air Jordan 10 Bull Over Broad way 乔10情侣大红 705178-601', '1', '26813');
INSERT INTO `jordan` VALUES ('32', 'goods-31407.html', 'http://img.52xie.com/images/201601/thumb_img/31407_thumb_G_1553384201.jpg', '1999', '预售 乔丹/Air Jordan XXX AJ30 首发 白灰黑 篮球鞋 811006-101', '1', '31407');
INSERT INTO `jordan` VALUES ('33', 'goods-25699.html', 'http://img.52xie.com/images/201410/thumb_img/25699_thumb_G_1440858299.jpg', '1999', '乔丹/Air Jordan XX9 29 River Walk AJ29 乔丹29代篮球鞋 695515-625', '1', '25699');
INSERT INTO `jordan` VALUES ('34', 'goods-23320.html', 'http://img.52xie.com/images/201404/thumb_img/23308_thumb_G_1480074621.jpg', '1699', '乔丹/Jordan True Flight AJ7+ 乔7加强版 342964-023', '1', '23320');
INSERT INTO `jordan` VALUES ('35', 'goods-12147.html', 'http://img.52xie.com/images/201211/thumb_img/12147_thumb_G_1352339254749.jpg', '1499', 'Air Jordan 7 Retro olympic 乔丹7代奥运2012复刻情侣 篮球鞋 304775-135', '1', '12147');
INSERT INTO `jordan` VALUES ('36', 'goods-28915.html', 'http://img.52xie.com/images/201509/thumb_img/28915_thumb_G_1535994534.jpg', '1749', '乔丹/Air Jordan 6 Low 黑银男鞋 304401-003', '1', '28915');
INSERT INTO `jordan` VALUES ('37', 'goods-30067.html', 'http://img.52xie.com/images/201512/thumb_img/30067_thumb_G_1508771393.jpg', '1699', '乔丹/Air Jordan 6 Maroon AJ6 魔力红 384664-116', '1', '30067');
INSERT INTO `jordan` VALUES ('38', 'goods-22724.html', 'http://img.52xie.com/images/201402/thumb_img/22724_thumb_G_1466001629.jpg', '1599', '乔丹/Air Jordan 6 Infrared AJ6 乔6白红樱木 情侣限量 384664-123', '1', '22724');
INSERT INTO `jordan` VALUES ('39', 'goods-23669.html', 'http://img.52xie.com/images/201405/thumb_img/23669_thumb_G_1485993862.jpg', '2299', 'Air Jordan 6 Retro Carmine AJ6 乔6胭脂红情侣款 384664-160', '1', '23669');
INSERT INTO `jordan` VALUES ('40', 'goods-24711.html', 'http://img.52xie.com/images/201408/thumb_img/24711_thumb_G_1479615979.jpg', '1799', '乔丹/Air Jordan 3Lab5 “Metallic Silver” 乔丹AJ5代黑爆裂 599581-003', '1', '24711');

-- ----------------------------
-- Table structure for `jorge`
-- ----------------------------
DROP TABLE IF EXISTS `jorge`;
CREATE TABLE `jorge` (
  `id` bigint(20) NOT NULL auto_increment,
  `href` char(255) default NULL,
  `picsrc` char(255) default NULL,
  `price` char(16) default NULL,
  `name` char(255) default NULL,
  `dealtype` tinyint(10) NOT NULL default '5',
  `dealid` char(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jorge
-- ----------------------------
INSERT INTO `jorge` VALUES ('1', 'goods-28843.html', 'http://img.52xie.com/images/201507/thumb_img/28843_thumb_G_1452893242.jpg', '899', '乔丹/AIR JORDAN CP3.VIII AE X 保罗8代 篮球鞋 725212-064', '5', '28843');
INSERT INTO `jorge` VALUES ('2', 'goods-27751.html', 'http://img.52xie.com/images/201505/thumb_img/27751_thumb_G_1454521982.jpg', '699', '乔丹/Air Jordan Cp3.VIII X 保罗8季后赛 加强 篮球鞋 725212-101', '5', '27751');
INSERT INTO `jorge` VALUES ('3', 'goods-24442.html', 'http://img.52xie.com/images/201407/thumb_img/24442_thumb_G_1498706144.jpg', '539', '乔丹/Air Jordan CP3.VII AE 保罗7代篮球鞋 季后赛涂鸦 669612-070', '5', '24442');
INSERT INTO `jorge` VALUES ('4', 'goods-30867.html', 'http://img.52xie.com/images/201512/thumb_img/30867_thumb_G_1466710575.jpg', '949', '乔丹/JORDAN CP3.IX 保罗9 黑橘 男子篮球鞋 829217-802', '5', '30867');
INSERT INTO `jorge` VALUES ('5', 'goods-23846.html', 'http://img.52xie.com/images/201407/thumb_img/23846_thumb_G_1495980865.jpg', '649', '耐克/NIKE JORDAN CP3 保罗中国行 644805-601', '5', '23846');
INSERT INTO `jorge` VALUES ('6', 'goods-27204.html', 'http://img.52xie.com/images/201503/thumb_img/27204_thumb_G_1498518155.jpg', '799', '乔丹/Air Jordan CP3.VIII AE X 保罗3 乔丹团队 725212-107', '5', '27204');
INSERT INTO `jorge` VALUES ('7', 'goods-28564.html', 'http://img.52xie.com/images/201507/thumb_img/28564_thumb_G_1461521992.jpg', '799', '乔丹/AIR JORDAN CP3.VIII AE X 篮球鞋 725212-113', '5', '28564');
INSERT INTO `jorge` VALUES ('8', 'goods-27176.html', 'http://img.52xie.com/images/201504/thumb_img/27176_thumb_G_1480197218.jpg', '799', '乔丹/Air Jordan CP3.VIII AE X 保罗3 乔丹团队 725212-025', '5', '27176');
INSERT INTO `jorge` VALUES ('9', 'goods-28800.html', 'http://img.52xie.com/images/201507/thumb_img/28800_thumb_G_1473427895.jpg', '899', '乔丹/Jordan CP3 VIII AE 保罗8 小丑水冰蓝 725173-404', '5', '28800');
INSERT INTO `jorge` VALUES ('10', 'goods-26060.html', 'http://img.52xie.com/images/201411/thumb_img/26060_thumb_G_1501473012.jpg', '599', '乔丹/AIR JORDAN CP3.VIII X 保罗8篮球鞋 717099-327', '5', '26060');
INSERT INTO `jorge` VALUES ('11', 'goods-30953.html', 'http://img.52xie.com/images/201512/thumb_img/30953_thumb_G_1543990237.jpg', '949', '乔丹/Air Jordan CP3.IX 保罗9 实战篮球鞋 829217-605', '5', '30953');
INSERT INTO `jorge` VALUES ('12', 'goods-30868.html', 'http://img.52xie.com/images/201512/thumb_img/30868_thumb_G_1473278727.jpg', '899', '乔丹/JORDAN CP3.IX 保罗9 黑灰 男子篮球鞋 829217-003', '5', '30868');
INSERT INTO `jorge` VALUES ('13', 'goods-26429.html', 'http://img.52xie.com/images/201507/thumb_img/26429_thumb_G_1520397537.jpg', '899', '乔丹/AIR JORDAN CP3.VIII X CP8 保罗8大红 717099-605', '5', '26429');
INSERT INTO `jorge` VALUES ('14', 'goods-30249.html', 'http://img.52xie.com/images/201510/thumb_img/30249_thumb_G_1502349165.jpg', '899', '乔丹/Air Jordan CP3.IX  保罗9 黄龙配色篮球鞋 810868-012', '5', '30249');
INSERT INTO `jorge` VALUES ('15', 'goods-30372.html', 'http://img.52xie.com/images/201510/thumb_img/30372_thumb_G_1510323190.jpg', '999', '乔丹/Air Jordan CP3.IX 保罗9代 黑色篮球鞋 810868-010', '5', '30372');
INSERT INTO `jorge` VALUES ('16', 'goods-30248.html', 'http://img.52xie.com/images/201510/thumb_img/30248_thumb_G_1510196475.jpg', '999', '乔丹/Air Jordan CP3.IX  保罗9 黑蓝快船配色篮球鞋 829217-406', '5', '30248');
INSERT INTO `jorge` VALUES ('17', 'goods-30306.html', 'http://img.52xie.com/images/201510/thumb_img/30306_thumb_G_1520013741.jpg', '999', '乔丹/Air Jordan CP3.IX 保罗9 黑紫篮球鞋 829217-035', '5', '30306');
INSERT INTO `jorge` VALUES ('18', 'goods-26446.html', 'http://img.52xie.com/images/201507/thumb_img/26446_thumb_G_1521323999.jpg', '799', '乔丹/Air Jordan CP3.VIII X 保罗8绿巨人 717099-350', '5', '26446');
INSERT INTO `jorge` VALUES ('19', 'goods-29973.html', 'http://img.52xie.com/images/201510/thumb_img/29973_thumb_G_1458414464.jpg', '999', '乔丹/Air Jordan CP3.IX China 保罗9 中国 810868-308 725173-777', '5', '29973');
INSERT INTO `jorge` VALUES ('20', 'goods-26107.html', 'http://img.52xie.com/images/201411/thumb_img/26107_thumb_G_1465311659.jpg', '949', '乔丹/AIR JORDAN CP3.VIII X 保罗8代 717099-003', '5', '26107');
INSERT INTO `jorge` VALUES ('21', 'goods-28699.html', 'http://img.52xie.com/images/201507/thumb_img/28699_thumb_G_1450732993.jpg', '949', '乔丹/AIR JORDAN CP3.VIII 保罗8代 篮球鞋 黑绿红配 684855-035', '5', '28699');

-- ----------------------------
-- Table structure for `kobe`
-- ----------------------------
DROP TABLE IF EXISTS `kobe`;
CREATE TABLE `kobe` (
  `id` bigint(20) NOT NULL auto_increment,
  `href` char(255) default NULL,
  `picsrc` char(255) default NULL,
  `price` char(16) default NULL,
  `name` char(255) default NULL,
  `dealtype` tinyint(10) NOT NULL default '2',
  `dealid` char(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kobe
-- ----------------------------
INSERT INTO `kobe` VALUES ('1', 'goods-30593.html', 'http://img.52xie.com/images/201512/thumb_img/30593_thumb_G_1461342254.jpg', '1099', '耐克/Nike Kobe 10 red KOBE10 科比10 大红 745334-616', '2', '30593');
INSERT INTO `kobe` VALUES ('2', 'goods-26967.html', 'http://img.52xie.com/images/201503/thumb_img/26967_thumb_G_1505025108.jpg', '899', '耐克/Nike Kobe 10 Blue Lagoon ZK10 科比10代篮球鞋 745334-005 705317-005', '2', '26967');
INSERT INTO `kobe` VALUES ('3', 'goods-28628.html', 'http://img.52xie.com/images/201601/thumb_img/28628_thumb_G_1532665084.jpg', '1299', '耐克/Nike Kobe 10 Elite Sunset 科比10飞线 日落 747212-818', '2', '28628');
INSERT INTO `kobe` VALUES ('4', 'goods-23337.html', 'http://img.52xie.com/images/201407/thumb_img/23337_thumb_G_1433815211.jpg', '2799', '耐克/NIKE KOBE IX ELTE 科比9 愚人节 630847-300', '2', '23337');
INSERT INTO `kobe` VALUES ('5', 'goods-31417.html', 'http://img.52xie.com/images/201602/thumb_img/31417_thumb_G_1454531889665.jpg', '1599', '耐克/NIKE KOBE 11 ELITE AS 科比11 ZK11 全明星 822521-305', '2', '31417');
INSERT INTO `kobe` VALUES ('6', 'goods-28284.html', 'http://img.52xie.com/images/201508/thumb_img/28284_thumb_G_1484903658.jpg', '599', '耐克/NIKE ZOOM KOBE Venomenon 5 EP 科比毒液5 815757-001', '2', '28284');
INSERT INTO `kobe` VALUES ('7', 'goods-27814.html', 'http://img.52xie.com/images/201506/thumb_img/27814_thumb_G_1512865630.jpg', '899', '耐克/Nike Kobe X EP Flight Pack 科比10篮球鞋 745334-308', '2', '27814');
INSERT INTO `kobe` VALUES ('8', 'goods-28627.html', 'http://img.52xie.com/images/201507/thumb_img/28627_thumb_G_1443208428.jpg', '999', '耐克/Nike Kobe 10 ZK10 科比10篮球鞋 鸽子灰 745334-001 705317-001', '2', '28627');
INSERT INTO `kobe` VALUES ('9', 'goods-31273.html', 'http://img.52xie.com/images/201601/thumb_img/31273_thumb_G_1513662702.jpg', '1399', '耐克/Nike Kobe 11 Elite Low 科比11黑灰配色 822675-105', '2', '31273');
INSERT INTO `kobe` VALUES ('10', 'goods-29118.html', 'http://img.52xie.com/images/201509/thumb_img/29118_thumb_G_1508392219.jpg', '1399', '耐克/Nike Kobe10 Elite Low 科比10 黑粉刺客 747212-010', '2', '29118');
INSERT INTO `kobe` VALUES ('11', 'goods-22480.html', 'http://img.52xie.com/images/201312/thumb_img/22480_thumb_G_1419953448.jpg', '5499', '耐克/Nike Zoom Kobe 1 Prelude ZK1 科比1 复刻 蛇纹 640221-001', '2', '22480');
INSERT INTO `kobe` VALUES ('12', 'goods-30947.html', 'http://img.52xie.com/images/201601/thumb_img/30947_thumb_G_1510622337.jpg', '1699', '耐克/Nike Kobe 10 What The Kobe10 科比10鸳鸯 815810-900', '2', '30947');
INSERT INTO `kobe` VALUES ('13', 'goods-30927.html', 'http://img.52xie.com/images/201601/thumb_img/30927_thumb_G_1519742890.jpg', '1399', '耐克/Nike KOBE11 ZP XI 科比11代低帮篮球鞋 822675-670', '2', '30927');
INSERT INTO `kobe` VALUES ('14', 'goods-27346.html', 'http://img.52xie.com/images/201506/thumb_img/27346_thumb_G_1479916652.jpg', '1099', '耐克/Nike Kobe X Elite 科10 精英紫 科比 718763-505', '2', '27346');
INSERT INTO `kobe` VALUES ('15', 'goods-30952.html', 'http://img.52xie.com/images/201601/thumb_img/30952_thumb_G_1502630300.jpg', '1699', '耐克/Nike Kobe 10 Elite Low 科比10 圣诞 802560-076', '2', '30952');
INSERT INTO `kobe` VALUES ('16', 'goods-31254.html', 'http://img.52xie.com/images/201601/thumb_img/31254_thumb_G_1462267060.jpg', '1499', '耐克/Nike Kobe 11 Elite Low BHM 科比11 黑人月 822522-914', '2', '31254');
INSERT INTO `kobe` VALUES ('17', 'goods-28283.html', 'http://img.52xie.com/images/201506/thumb_img/28283_thumb_G_1521810321.jpg', '599', '耐克/NIKE ZOOM KOBE Venomenon 5 科比毒液5 815757-706', '2', '28283');
INSERT INTO `kobe` VALUES ('18', 'goods-27152.html', 'http://img.52xie.com/images/201503/thumb_img/27152_thumb_G_1500839684.jpg', '469', '耐克/Nike Kobe KB Mentality 科比简版篮球鞋 704942-300', '2', '27152');
INSERT INTO `kobe` VALUES ('19', 'goods-26505.html', 'http://img.52xie.com/images/201501/thumb_img/26505_thumb_G_1449136159.jpg', '1199', '耐克/Nike Kobe 9 Silk EM 科比9丝绸之路 653972-676', '2', '26505');
INSERT INTO `kobe` VALUES ('20', 'goods-29376.html', 'http://img.52xie.com/images/201509/thumb_img/29376_thumb_G_1500296277.jpg', '1199', '耐克/NIKE Kobe 10“Overcome”科比10 745334-305 705317-305', '2', '29376');
INSERT INTO `kobe` VALUES ('21', 'goods-26815.html', 'http://img.52xie.com/images/201502/thumb_img/26815_thumb_G_1488687797.jpg', '899', '耐克/Nike Kobe 10 All Star 科比10全明星 742546-097', '2', '26815');
INSERT INTO `kobe` VALUES ('22', 'goods-31371.html', 'http://img.52xie.com/images/201601/thumb_img/31371_thumb_G_1537550372.jpg', '1449', '耐克/nike zoom huarache 2k4 2016 复刻 全明星配色 308475-100', '2', '31371');
INSERT INTO `kobe` VALUES ('23', 'goods-26140.html', 'http://img.52xie.com/images/201411/thumb_img/26140_thumb_G_1498650080.jpg', '1699', '耐克/Nike Kobe 9 Elite EXT Snakeskin 科比9蛇皮 716616-001', '2', '26140');
INSERT INTO `kobe` VALUES ('24', 'goods-25116.html', 'http://img.52xie.com/images/201411/thumb_img/25116_thumb_G_1440871869.jpg', '999', '耐克/NIKE KOBE 9 EM BRIGHT MANGO ZK9火焰科比9火花 653972-880', '2', '25116');
INSERT INTO `kobe` VALUES ('25', 'goods-27153.html', 'http://img.52xie.com/images/201503/thumb_img/27153_thumb_G_1485660252.jpg', '499', '耐克/Nike Kobe KB Mentality 科比简版篮球鞋 704942-401', '2', '27153');
INSERT INTO `kobe` VALUES ('26', 'goods-25279.html', 'http://img.52xie.com/images/201410/thumb_img/25279_thumb_G_1480037986.jpg', '999', '耐克/Nike Kobe 9 Mid EXT “Black Snakeskin” 科比9黑曼巴 704286-001', '2', '25279');
INSERT INTO `kobe` VALUES ('27', 'goods-23613.html', 'http://img.52xie.com/images/201405/thumb_img/23613_thumb_G_1452134820.jpg', '1199', '耐克/NIKE KOBE IX科比9 ZK9精英酷彩篮球鞋641714-005', '2', '23613');
INSERT INTO `kobe` VALUES ('28', 'goods-30127.html', 'http://img.52xie.com/images/201511/thumb_img/30127_thumb_G_1501915889.jpg', '1399', '耐克/Nike Kobe 10 Elite Low 科比10精英 开赛夜 747212-505 747212-515', '2', '30127');
INSERT INTO `kobe` VALUES ('29', 'goods-30526.html', 'http://img.52xie.com/images/201511/thumb_img/30526_thumb_G_1510713231.jpg', '1499', '耐克/Nike Kobe10 Elite Coda 科比10 开赛夜  802762-707', '2', '30526');
INSERT INTO `kobe` VALUES ('30', 'goods-27923.html', 'http://img.52xie.com/images/201505/thumb_img/27923_thumb_G_1519516828.jpg', '599', '耐克/Nike KB MENTALITY 科比简版曼巴精神冰橙 704942-007', '2', '27923');
INSERT INTO `kobe` VALUES ('31', 'goods-30614.html', 'http://img.52xie.com/images/201511/thumb_img/30614_thumb_G_1513170030.jpg', '1499', '耐克/Nike Kobe10 Elite USA 科比10 美国配色 718763-614', '2', '30614');
INSERT INTO `kobe` VALUES ('32', 'goods-26598.html', 'http://img.52xie.com/images/201505/thumb_img/26598_thumb_G_1468214936.jpg', '499', '耐克/NIKE KB MENTALITY 科比简版篮球鞋 小丑配色704942-601', '2', '26598');
INSERT INTO `kobe` VALUES ('33', 'goods-27186.html', 'http://img.52xie.com/images/201503/thumb_img/27186_thumb_G_1431369952.jpg', '999', '耐克/Kobe 10 Poison Green Vino ZK10 科比10毒液 745334-333', '2', '27186');
INSERT INTO `kobe` VALUES ('34', 'goods-22746.html', 'http://img.52xie.com/images/201402/thumb_img/22746_thumb_G_1421373038.jpg', '2999', '耐克/Nike Kobe 9 Elite ALL STAR 科比9代篮球鞋 全明星夜光 630847-002', '2', '22746');
INSERT INTO `kobe` VALUES ('35', 'goods-27278.html', 'http://img.52xie.com/images/201510/thumb_img/27278_thumb_G_1542266624.jpg', '899', '耐克/Nike Kobe 10 Silk Road 科比10 丝绸之路705317-676  745334-676', '2', '27278');
INSERT INTO `kobe` VALUES ('36', 'goods-24882.html', 'http://img.52xie.com/images/201407/thumb_img/24882_thumb_G_1459607220.jpg', '1199', '耐克/Nike Kobe IX 9 EM XDR 科比9青花瓷 蓝金 646701-414', '2', '24882');
INSERT INTO `kobe` VALUES ('37', 'goods-30285.html', 'http://img.52xie.com/images/201510/thumb_img/30285_thumb_G_1490153155.jpg', '799', '耐克/NIKE ZOOM KOBE Venomenon 5 EP 科比毒液5 815757-604', '2', '30285');
INSERT INTO `kobe` VALUES ('38', 'goods-29020.html', 'http://img.52xie.com/images/201508/thumb_img/29020_thumb_G_1529448945.jpg', '1399', '耐克/Nike Kobe 10 Elite Low Dark Atomic 科比10精英 747212-303', '2', '29020');
INSERT INTO `kobe` VALUES ('39', 'goods-26597.html', 'http://img.52xie.com/images/201505/thumb_img/26597_thumb_G_1493061840.jpg', '599', '耐克/NIKE KB MENTALITY 科比简版篮球鞋 704942-400', '2', '26597');
INSERT INTO `kobe` VALUES ('40', 'goods-30594.html', 'http://img.52xie.com/images/201512/thumb_img/30594_thumb_G_1455310166.jpg', '1299', '耐克/Nike Kobe 10 High EXT White Gum 科比10 全白 822950-100', '2', '30594');

-- ----------------------------
-- Table structure for `morestar`
-- ----------------------------
DROP TABLE IF EXISTS `morestar`;
CREATE TABLE `morestar` (
  `id` bigint(20) NOT NULL auto_increment,
  `href` char(255) default NULL,
  `picsrc` char(255) default NULL,
  `price` char(16) default NULL,
  `name` char(255) default NULL,
  `dealtype` tinyint(10) NOT NULL default '8',
  `dealid` char(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of morestar
-- ----------------------------
INSERT INTO `morestar` VALUES ('1', 'goods-29032.html', 'http://img.52xie.com/images/201508/thumb_img/29032_thumb_G_1511539074.jpg', '899', '耐克/Nike Kyrie 1 Green Glow 欧文1 绿色705278-333 705277-333', '8', '29032');
INSERT INTO `morestar` VALUES ('2', 'goods-17559.html', 'http://img.52xie.com/images/201305/thumb_img/17559_thumb_G_1376618355.jpg', '1899', '耐克/Nike Air Foamposite One white 哈达威 白喷 篮球鞋 314996-100', '8', '17559');
INSERT INTO `morestar` VALUES ('3', 'goods-31274.html', 'http://img.52xie.com/images/201601/thumb_img/31274_thumb_G_1532887513.jpg', '1199', '耐克/Nike Air 2 Strong Mid 黑白巴克利 权志龙 805892-001', '8', '31274');
INSERT INTO `morestar` VALUES ('4', 'goods-27561.html', 'http://img.52xie.com/images/201505/thumb_img/27561_thumb_G_1439722025.jpg', '599', '耐克/Nike Zoom Crusader 哈登复活节 642855-800', '8', '27561');
INSERT INTO `morestar` VALUES ('5', 'goods-28992.html', 'http://img.52xie.com/images/201509/thumb_img/28992_thumb_G_1463318346.jpg', '949', '耐克/Nike Kyrie 1 Green Glow 欧文1 3M反光 705277-001 705278-001', '8', '28992');
INSERT INTO `morestar` VALUES ('6', 'goods-28889.html', 'http://img.52xie.com/images/201508/thumb_img/28889_thumb_G_1446163880.jpg', '849', '耐克/Nike KYRIE 1 LMTD EP 欧文 打出名堂 812653-071', '8', '28889');
INSERT INTO `morestar` VALUES ('7', 'goods-27906.html', 'http://img.52xie.com/images/201505/thumb_img/27906_thumb_G_1456803998.jpg', '599', '耐克/NIKE AIR FLIGHT LITE HIGH 巴克利灰紫篮球鞋 329984-005', '8', '27906');
INSERT INTO `morestar` VALUES ('8', 'goods-30864.html', 'http://img.52xie.com/images/201601/thumb_img/30864_thumb_G_1488311242.jpg', '899', '耐克/Nike Kyrie 2 EP“Inferno”欧文2 红 男子篮球鞋 820537-680', '8', '30864');
INSERT INTO `morestar` VALUES ('9', 'goods-31252.html', 'http://img.52xie.com/images/201601/thumb_img/31252_thumb_G_1480276572.jpg', '1099', '耐克/Nike Kyrie 2 BHM 欧文2 黑人月 男子篮球鞋 828376-099 828375-099', '8', '31252');
INSERT INTO `morestar` VALUES ('10', 'goods-31414.html', 'http://img.52xie.com/images/201601/thumb_img/31414_thumb_G_1521977565.jpg', '999', '预售 耐克/Nike Kyrie 2 ASG 欧文2 全明星 男子篮球鞋 835922-307', '8', '31414');
INSERT INTO `morestar` VALUES ('11', 'goods-30529.html', 'http://img.52xie.com/images/201511/thumb_img/30529_thumb_G_1505573123.jpg', '1099', '耐克/NIKE KYRIE 1 LIMITED EP 欧文1 开赛夜 812653-160', '8', '30529');
INSERT INTO `morestar` VALUES ('12', 'goods-26955.html', 'http://img.52xie.com/images/201502/thumb_img/26955_thumb_G_1427459145.jpg', '799', '耐克/Nike Pippen 6 Denim 皮蓬6 牛仔 705065-400', '8', '26955');
INSERT INTO `morestar` VALUES ('13', 'goods-24896.html', 'http://img.52xie.com/images/201407/thumb_img/24896_thumb_G_1473901636.jpg', '599', '耐克/Nike Zoom Hyperrev 欧文示范 630913-009', '8', '24896');
INSERT INTO `morestar` VALUES ('14', 'goods-23224.html', 'http://img.52xie.com/images/201404/thumb_img/23224_thumb_G_1406366456.jpg', '799', '耐克/NIKE ZOOM SONIC FLIGHT GP佩顿 男子篮球鞋 641333-001', '8', '23224');
INSERT INTO `morestar` VALUES ('15', 'goods-23250.html', 'http://img.52xie.com/images/201404/thumb_img/23250_thumb_G_1418505136.jpg', '599', '耐克/Nike zoom sonic flight GP佩顿限量签名 复刻篮球641333-002', '8', '23250');
INSERT INTO `morestar` VALUES ('16', 'goods-26706.html', 'http://img.52xie.com/images/201502/thumb_img/26706_thumb_G_1516075726.jpg', '699', '耐克/NIKE ZOOM HYPERREV 2015 保罗乔治乳腺癌限量 705370-606', '8', '26706');
INSERT INTO `morestar` VALUES ('17', 'goods-28201.html', 'http://img.52xie.com/images/201506/thumb_img/28201_thumb_G_1478692260.jpg', '3999', '耐克/Nike Air Penny One Pack QS 哈达威套装 800180-001', '8', '28201');
INSERT INTO `morestar` VALUES ('18', 'goods-26157.html', 'http://img.52xie.com/images/201411/thumb_img/26157_thumb_G_1432285118.jpg', '599', '耐克/NIKE AIR ZOOM FLIGHT 96 哈达威专属篮球鞋 317980-400', '8', '26157');
INSERT INTO `morestar` VALUES ('19', 'goods-28452.html', 'http://img.52xie.com/images/201507/thumb_img/28452_thumb_G_1458247055.jpg', '1399', '耐克/Nike Kyrie 1 欧文 美国队 独立日 705278-401 705277-401', '8', '28452');
INSERT INTO `morestar` VALUES ('20', 'goods-18171.html', 'http://img.52xie.com/images/201304/thumb_img/18171_thumb_G_1372363833.jpg', '899', '耐克/Nike Barkley Posite Max Eggplant 巴克利 夜光蓝 555097-300', '8', '18171');
INSERT INTO `morestar` VALUES ('21', 'goods-27602.html', 'http://img.52xie.com/images/201505/thumb_img/27602_thumb_G_1448258135.jpg', '799', '耐克/Nike Kyrie 1 EP Easter 欧文1 球鞋 白红外线 705278-100', '8', '27602');
INSERT INTO `morestar` VALUES ('22', 'goods-476.html', 'http://img.52xie.com/images/201201/thumb_img/476_thumb_G_1325700616502.jpg', '1399', '耐克/Nike Air Flightposite 2 LE 香槟风2篮球鞋 386160-001', '8', '476');
INSERT INTO `morestar` VALUES ('23', 'goods-30865.html', 'http://img.52xie.com/images/201512/thumb_img/30865_thumb_G_1487720639.jpg', '1599', '耐克/Nike Kyrie 2 EP 欧文2 炫彩配色 820537-901', '8', '30865');
INSERT INTO `morestar` VALUES ('24', 'goods-25930.html', 'http://img.52xie.com/images/201410/thumb_img/25930_thumb_G_1463327490.jpg', '879', '耐克/NIKE ZOOM CRUSADER OUTDOOR 哈登篮球鞋 642855-002', '8', '25930');
INSERT INTO `morestar` VALUES ('25', 'goods-28200.html', 'http://img.52xie.com/images/201506/thumb_img/28200_thumb_G_1482715251.jpg', '999', '耐克/Nike zoom penny 6 哈达威6铜喷 749629-001', '8', '28200');
INSERT INTO `morestar` VALUES ('26', 'goods-27281.html', 'http://img.52xie.com/images/201504/thumb_img/27281_thumb_G_1470297711.jpg', '1449', '耐克/Nike Chuck Posite 巴克利 白色 684758-400', '8', '27281');
INSERT INTO `morestar` VALUES ('27', 'goods-30288.html', 'http://img.52xie.com/images/201510/thumb_img/30288_thumb_G_1490402699.jpg', '999', '耐克/Nike zoom penny 6 哈达威6 铜银 749629-002', '8', '30288');
INSERT INTO `morestar` VALUES ('28', 'goods-30403.html', 'http://img.52xie.com/images/201511/thumb_img/30403_thumb_G_1543779144.jpg', '699', '耐克/Nike HyperChase EP 哈登 实战篮球鞋 蓝色 806797-401', '8', '30403');
INSERT INTO `morestar` VALUES ('29', 'goods-27560.html', 'http://img.52xie.com/images/201504/thumb_img/27560_thumb_G_1498487204.jpg', '849', '耐克/Nike Zoom Crusader 哈登复活节 642855-300', '8', '27560');
INSERT INTO `morestar` VALUES ('30', 'goods-27280.html', 'http://img.52xie.com/images/201504/thumb_img/27280_thumb_G_1460702064.jpg', '1399', '耐克/Nike Chuck Posite 巴克利 银色 684758-001', '8', '27280');
INSERT INTO `morestar` VALUES ('31', 'goods-22915.html', 'http://img.52xie.com/images/201404/thumb_img/22915_thumb_G_1482647111.jpg', '899', '耐克/Nike Flight Sonic 白黑原色 佩顿 复刻 641333-100', '8', '22915');
INSERT INTO `morestar` VALUES ('32', 'goods-27699.html', 'http://img.52xie.com/images/201505/thumb_img/27699_thumb_G_1444185994.jpg', '699', '耐克/NIKE HYPERCHASE EP 哈登篮球鞋 705364-480', '8', '27699');
INSERT INTO `morestar` VALUES ('33', 'goods-27268.html', 'http://img.52xie.com/images/201504/thumb_img/27268_thumb_G_1458447602.jpg', '999', '耐克/Nike Kyrie 1 Brotherhood 欧文1 黑蓝 705278-400', '8', '27268');
INSERT INTO `morestar` VALUES ('34', 'goods-21127.html', 'http://img.52xie.com/images/201308/thumb_img/21127_thumb_G_1375300639449.jpg', '1899', '耐克/Nike Air Foamposite One white 哈达威 篮球鞋 蓝灰 314996-401', '8', '21127');
INSERT INTO `morestar` VALUES ('35', 'goods-26883.html', 'http://img.52xie.com/images/201502/thumb_img/26883_thumb_G_1497653782.jpg', '899', '耐克/Nike Kyrie 1 EP 薄荷绿欧文签名鞋 705278-313', '8', '26883');
INSERT INTO `morestar` VALUES ('36', 'goods-30402.html', 'http://img.52xie.com/images/201511/thumb_img/30402_thumb_G_1496782423.jpg', '799', '耐克/Nike HyperChase EP 哈登 实战篮球鞋 黑色 806797-001', '8', '30402');
INSERT INTO `morestar` VALUES ('37', 'goods-29472.html', 'http://img.52xie.com/images/201508/thumb_img/29472_thumb_G_1441840250.jpg', '899', '耐克/Nike Pippen 6 Denim 皮蓬6  705065-610', '8', '29472');
INSERT INTO `morestar` VALUES ('38', 'goods-27252.html', 'http://img.52xie.com/images/201505/thumb_img/27252_thumb_G_1445920221.jpg', '1049', '耐克/Nike Kyrie 1 EP Easter 欧文1 复活节 球鞋 705278-508', '8', '27252');
INSERT INTO `morestar` VALUES ('39', 'goods-27702.html', 'http://img.52xie.com/images/201505/thumb_img/27702_thumb_G_1443681552.jpg', '699', '耐克/NIKE HYPERCHASE EP 哈登篮球鞋 705364-700', '8', '27702');
INSERT INTO `morestar` VALUES ('40', 'goods-28447.html', 'http://img.52xie.com/images/201506/thumb_img/28447_thumb_G_1477380517.jpg', '699', '耐克/Nike Hyperchase Ep 哈登 雪碧 705364-413', '8', '28447');

-- ----------------------------
-- Table structure for `user_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL auto_increment,
  `nickname` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `password` varchar(128) NOT NULL,
  `status` int(11) default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', 'sky', 'hubcarl@126.com', 'E10ADC3949BA59ABBE56E057F20F883E', '0');
INSERT INTO `user_info` VALUES ('2', 'xiao', '123@qq.com', 'E10ADC3949BA59ABBE56E057F20F883E', '0');
INSERT INTO `user_info` VALUES ('3', 'hua', '123@qq.com', 'E10ADC3949BA59ABBE56E057F20F883E', '0');
INSERT INTO `user_info` VALUES ('4', 'xiaohua', 'xiaohua@126.com', 'E10ADC3949BA59ABBE56E057F20F883E', '0');
INSERT INTO `user_info` VALUES ('5', 'zhengxiaohua', 'xiaohua@126.com', 'E10ADC3949BA59ABBE56E057F20F883E', '0');
INSERT INTO `user_info` VALUES ('6', 'huangwen', 'wen@qq.com', 'E10ADC3949BA59ABBE56E057F20F883E', '0');
INSERT INTO `user_info` VALUES ('7', 'xuxiangqian', '123@qq.com', 'E10ADC3949BA59ABBE56E057F20F883E', '0');
INSERT INTO `user_info` VALUES ('8', 'angela', 'baby@qq.com', 'E10ADC3949BA59ABBE56E057F20F883E', '0');
INSERT INTO `user_info` VALUES ('9', 'huangxiaoming', '123@qq.com', 'E10ADC3949BA59ABBE56E057F20F883E', '0');
INSERT INTO `user_info` VALUES ('10', 'zhangsan', '123@qq.com', 'E10ADC3949BA59ABBE56E057F20F883E', '0');
INSERT INTO `user_info` VALUES ('11', 'xiaoxiao', 'xiao@qq.com', 'E10ADC3949BA59ABBE56E057F20F883E', '0');
INSERT INTO `user_info` VALUES ('12', 'tiantian', '123@qq.com', 'E10ADC3949BA59ABBE56E057F20F883E', '0');
INSERT INTO `user_info` VALUES ('13', 'yanjiabo', '123@qq.com', 'E10ADC3949BA59ABBE56E057F20F883E', '0');
