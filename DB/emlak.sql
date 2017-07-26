/*
MySQL Data Transfer
Source Host: localhost
Source Database: emlak
Target Host: localhost
Target Database: emlak
Date: 17.12.2014 13:56:08
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for il
-- ----------------------------
DROP TABLE IF EXISTS `il`;
CREATE TABLE `il` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Il` varchar(255) DEFAULT NULL,
  `Tarih` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin5;

-- ----------------------------
-- Table structure for ilce
-- ----------------------------
DROP TABLE IF EXISTS `ilce`;
CREATE TABLE `ilce` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IlId` int(11) DEFAULT NULL,
  `Ilce` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin5;

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `KategoriAdi` varchar(50) DEFAULT NULL,
  `Aciklama` varchar(255) DEFAULT NULL,
  `tarih` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin5;

-- ----------------------------
-- Table structure for tipler
-- ----------------------------
DROP TABLE IF EXISTS `tipler`;
CREATE TABLE `tipler` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TipAdi` varchar(100) DEFAULT NULL,
  `TipAciklama` varchar(255) DEFAULT NULL,
  `tarih` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin5;

-- ----------------------------
-- Table structure for turler
-- ----------------------------
DROP TABLE IF EXISTS `turler`;
CREATE TABLE `turler` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TurAdi` varchar(100) DEFAULT NULL,
  `TurAciklama` varchar(255) DEFAULT NULL,
  `tarih` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin5;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `il` VALUES ('1', 'İstanbul', null);
INSERT INTO `il` VALUES ('7', 'ankara', null);
INSERT INTO `il` VALUES ('8', 'Bolu', null);
INSERT INTO `il` VALUES ('9', 'İzmir', null);
INSERT INTO `il` VALUES ('10', 'Antalya', null);
INSERT INTO `ilce` VALUES ('1', '1', 'Maltepe');
INSERT INTO `ilce` VALUES ('3', '1', 'Mengen');
INSERT INTO `ilce` VALUES ('4', '1', 'Çankaya');
INSERT INTO `ilce` VALUES ('5', '10', 'Lara');
INSERT INTO `ilce` VALUES ('6', '7', 'Etimesgut');
INSERT INTO `ilce` VALUES ('7', '9', 'Karşıyaka');
INSERT INTO `ilce` VALUES ('8', '9', 'Göztepe');
INSERT INTO `ilce` VALUES ('9', '1', 'Kadıköy');
INSERT INTO `kategori` VALUES ('5', 'Satılık', 'aa', null);
INSERT INTO `kategori` VALUES ('6', 'Kiralık', 'aa', null);
INSERT INTO `tipler` VALUES ('1', 'Deneme Tip 1', 'aa', null);
INSERT INTO `tipler` VALUES ('2', 'Deneme Tip 2', 'aa', null);
INSERT INTO `turler` VALUES ('1', 'Daire', 'aa', null);
INSERT INTO `turler` VALUES ('3', 'Müstakil', 'aa', null);
