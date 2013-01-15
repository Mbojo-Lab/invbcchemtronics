/*
Navicat MySQL Data Transfer

Source Server         : lokal MySQL
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : chemtronics_invbc

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2013-01-15 08:54:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `api`
-- ----------------------------
DROP TABLE IF EXISTS `api`;
CREATE TABLE `api` (
  `KdApit` tinyint(1) NOT NULL COMMENT 'kode API/T',
  `UrApit` varchar(15) DEFAULT NULL COMMENT 'Uraian API/T',
  PRIMARY KEY (`KdApit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of api
-- ----------------------------
INSERT INTO `api` VALUES ('1', 'API');
INSERT INTO `api` VALUES ('2', 'APIT');

-- ----------------------------
-- Table structure for `jenis_barang`
-- ----------------------------
DROP TABLE IF EXISTS `jenis_barang`;
CREATE TABLE `jenis_barang` (
  `KdJnsBarang` tinyint(2) NOT NULL DEFAULT '0',
  `UrJnsBarang` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`KdJnsBarang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jenis_barang
-- ----------------------------
INSERT INTO `jenis_barang` VALUES ('0', 'Barang Jadi');
INSERT INTO `jenis_barang` VALUES ('1', 'Bahan Baku');
INSERT INTO `jenis_barang` VALUES ('2', 'Bahan Penolong');
INSERT INTO `jenis_barang` VALUES ('3', 'Mesin/Sparepart');
INSERT INTO `jenis_barang` VALUES ('4', 'Peralatan Pabrik');
INSERT INTO `jenis_barang` VALUES ('5', 'Peralatan Perkantoran');
INSERT INTO `jenis_barang` VALUES ('6', 'Peralatan Kontruksi');
INSERT INTO `jenis_barang` VALUES ('7', 'Brg Reimpor TPB');
INSERT INTO `jenis_barang` VALUES ('8', 'Barang Contoh/Tes');
INSERT INTO `jenis_barang` VALUES ('9', 'Lainnya');
INSERT INTO `jenis_barang` VALUES ('10', 'Lebih dr 1 Jenis Brg (1 s/d 6)');
INSERT INTO `jenis_barang` VALUES ('11', 'WIP');

-- ----------------------------
-- Table structure for `jenis_dok`
-- ----------------------------
DROP TABLE IF EXISTS `jenis_dok`;
CREATE TABLE `jenis_dok` (
  `KdJnsDok` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Kode TPB',
  `UrJnsDok` varchar(30) DEFAULT NULL COMMENT 'Uraian TPB',
  PRIMARY KEY (`KdJnsDok`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jenis_dok
-- ----------------------------
INSERT INTO `jenis_dok` VALUES ('1', 'BC 2.3');
INSERT INTO `jenis_dok` VALUES ('2', 'BC 2.4');
INSERT INTO `jenis_dok` VALUES ('3', 'BC 2.5');
INSERT INTO `jenis_dok` VALUES ('4', 'BC 2.6.1');
INSERT INTO `jenis_dok` VALUES ('5', 'BC 2.6.2');
INSERT INTO `jenis_dok` VALUES ('6', 'BC 2.7');
INSERT INTO `jenis_dok` VALUES ('7', 'BC 3.0');
INSERT INTO `jenis_dok` VALUES ('8', 'BC 4.0');
INSERT INTO `jenis_dok` VALUES ('9', 'BC 4.1');

-- ----------------------------
-- Table structure for `jenis_tpb`
-- ----------------------------
DROP TABLE IF EXISTS `jenis_tpb`;
CREATE TABLE `jenis_tpb` (
  `KdJnsTpb` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Kode Jenis TPB',
  `UrJnsTpb` varchar(50) DEFAULT NULL COMMENT 'Uraian Jenis TPB',
  PRIMARY KEY (`KdJnsTpb`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jenis_tpb
-- ----------------------------
INSERT INTO `jenis_tpb` VALUES ('1', 'Kawasan Berikat');
INSERT INTO `jenis_tpb` VALUES ('2', 'Gudang Berikat');
INSERT INTO `jenis_tpb` VALUES ('3', 'Tempat Penyelenggara Pameran Berikat');
INSERT INTO `jenis_tpb` VALUES ('4', 'Toko Bebas Bea');
INSERT INTO `jenis_tpb` VALUES ('5', 'Tempat Lelang Berikat');
INSERT INTO `jenis_tpb` VALUES ('6', 'Kawasan Daur Ulang Berikat');

-- ----------------------------
-- Table structure for `kantor`
-- ----------------------------
DROP TABLE IF EXISTS `kantor`;
CREATE TABLE `kantor` (
  `KdKpbc` varchar(6) NOT NULL DEFAULT '0',
  `UrKdKpbc` varchar(60) DEFAULT NULL,
  `Kota` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`KdKpbc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kantor
-- ----------------------------
INSERT INTO `kantor` VALUES ('040400', 'KANTOR PELAYANAN JAKARTA', 'JAKARTA');
INSERT INTO `kantor` VALUES ('040432', 'POS UDARA HALIM PERDANA KUSUMA', '');
INSERT INTO `kantor` VALUES ('050000', 'KANTOR WILAYAH JAWA BARAT', 'BANDUNG');
INSERT INTO `kantor` VALUES ('050100', 'KANTOR PELAYANAN SUKARNO-HATTA', 'CENGKARENG');
INSERT INTO `kantor` VALUES ('050500', 'KANTOR PELAYANAN BANDUNG', 'BANDUNG');
INSERT INTO `kantor` VALUES ('050900', 'KANTOR PELAYANAN BEKASI', 'BEKASI');

-- ----------------------------
-- Table structure for `kemasan`
-- ----------------------------
DROP TABLE IF EXISTS `kemasan`;
CREATE TABLE `kemasan` (
  `KdKemas` varchar(2) NOT NULL DEFAULT '' COMMENT 'Kode Kemasan',
  `UrKemas` varchar(60) DEFAULT NULL COMMENT 'Uraian Kemasan',
  PRIMARY KEY (`KdKemas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kemasan
-- ----------------------------
INSERT INTO `kemasan` VALUES ('AE', 'Aerosol');
INSERT INTO `kemasan` VALUES ('AM', 'Ampoule, non protected');
INSERT INTO `kemasan` VALUES ('AP', 'Ampoule, protected');
INSERT INTO `kemasan` VALUES ('AT', 'Atomizer');
INSERT INTO `kemasan` VALUES ('BA', 'Barrel');
INSERT INTO `kemasan` VALUES ('BB', 'Bobbin');
INSERT INTO `kemasan` VALUES ('BC', 'Bottlecrate, bottlerack');
INSERT INTO `kemasan` VALUES ('BD', 'Board');
INSERT INTO `kemasan` VALUES ('BE', 'Bundle');
INSERT INTO `kemasan` VALUES ('BF', 'Balloon, non-protected');
INSERT INTO `kemasan` VALUES ('BG', 'Bag');
INSERT INTO `kemasan` VALUES ('BH', 'Bunch');
INSERT INTO `kemasan` VALUES ('BI', 'Bin');
INSERT INTO `kemasan` VALUES ('BJ', 'Bucket');
INSERT INTO `kemasan` VALUES ('BK', 'Basket');
INSERT INTO `kemasan` VALUES ('BL', 'Bale, compressed');
INSERT INTO `kemasan` VALUES ('BN', 'Bale, non -compressed');
INSERT INTO `kemasan` VALUES ('BO', 'Bottle, non-protected, cylindrical');
INSERT INTO `kemasan` VALUES ('BP', 'Balloon, protected');
INSERT INTO `kemasan` VALUES ('BQ', 'Bottle, protected cylindrical');
INSERT INTO `kemasan` VALUES ('BR', 'Bar');
INSERT INTO `kemasan` VALUES ('BS', 'Bottle, non-protected, bulbous');
INSERT INTO `kemasan` VALUES ('BT', 'Bolt');
INSERT INTO `kemasan` VALUES ('BU', 'Butt');
INSERT INTO `kemasan` VALUES ('BV', 'Bottle, protected bulbous');
INSERT INTO `kemasan` VALUES ('BX', 'Box');
INSERT INTO `kemasan` VALUES ('BY', 'Board, in bundle/bunch/truss');
INSERT INTO `kemasan` VALUES ('BZ', 'Bars, in bundle/bunch/truss');
INSERT INTO `kemasan` VALUES ('CA', 'Can, rectangular');
INSERT INTO `kemasan` VALUES ('CB', 'Beer crate');
INSERT INTO `kemasan` VALUES ('CC', 'Churn');
INSERT INTO `kemasan` VALUES ('CE', 'Creel');
INSERT INTO `kemasan` VALUES ('CF', 'Coffer');
INSERT INTO `kemasan` VALUES ('CG', 'Cage');
INSERT INTO `kemasan` VALUES ('CH', 'Chest');
INSERT INTO `kemasan` VALUES ('CI', 'Canister');
INSERT INTO `kemasan` VALUES ('CJ', 'Coffin');
INSERT INTO `kemasan` VALUES ('CK', 'Cask');
INSERT INTO `kemasan` VALUES ('CL', 'Coil');
INSERT INTO `kemasan` VALUES ('CO', 'Carboy, non-protected');
INSERT INTO `kemasan` VALUES ('CP', 'Carboy, protected');
INSERT INTO `kemasan` VALUES ('CR', 'Crate');
INSERT INTO `kemasan` VALUES ('CS', 'Case');
INSERT INTO `kemasan` VALUES ('CT', 'Carton');
INSERT INTO `kemasan` VALUES ('CU', 'Cup');
INSERT INTO `kemasan` VALUES ('CV', 'Cover');
INSERT INTO `kemasan` VALUES ('CX', 'Can, cylindical');
INSERT INTO `kemasan` VALUES ('CY', 'Cylinder');
INSERT INTO `kemasan` VALUES ('CZ', 'Canvas');
INSERT INTO `kemasan` VALUES ('DJ', 'Demijohn, non-protected');
INSERT INTO `kemasan` VALUES ('DP', 'Demijohn, protected');
INSERT INTO `kemasan` VALUES ('DR', 'Drum');
INSERT INTO `kemasan` VALUES ('EN', 'Envelope');
INSERT INTO `kemasan` VALUES ('FC', 'Fruit crate');
INSERT INTO `kemasan` VALUES ('FD', 'Framed crate');
INSERT INTO `kemasan` VALUES ('FI', 'Firkin');
INSERT INTO `kemasan` VALUES ('FL', 'Flask');
INSERT INTO `kemasan` VALUES ('FO', 'Footlocker');
INSERT INTO `kemasan` VALUES ('FP', 'Filmpack');
INSERT INTO `kemasan` VALUES ('FR', 'Frame');
INSERT INTO `kemasan` VALUES ('GB', 'Gas bottle');
INSERT INTO `kemasan` VALUES ('GI', 'Girder');
INSERT INTO `kemasan` VALUES ('GZ', 'Girders, in bundle/bunch/truss');
INSERT INTO `kemasan` VALUES ('HG', 'Hogshead');
INSERT INTO `kemasan` VALUES ('HR', 'Hamper');
INSERT INTO `kemasan` VALUES ('IN', 'Ingot');
INSERT INTO `kemasan` VALUES ('IZ', 'ingots, in bundle/bunch/truss');
INSERT INTO `kemasan` VALUES ('JC', 'Jerrican, rectangular');
INSERT INTO `kemasan` VALUES ('JG', 'Jug');
INSERT INTO `kemasan` VALUES ('JR', 'Jar');
INSERT INTO `kemasan` VALUES ('JT', 'Jutebag');
INSERT INTO `kemasan` VALUES ('JY', 'Jerrican, cylindrical');
INSERT INTO `kemasan` VALUES ('KG', 'Keg');
INSERT INTO `kemasan` VALUES ('LG', 'Log');
INSERT INTO `kemasan` VALUES ('LZ', 'Logs, in bundle/bunch/truss');
INSERT INTO `kemasan` VALUES ('MB', 'Multiply bag');
INSERT INTO `kemasan` VALUES ('MC', 'milk crate');
INSERT INTO `kemasan` VALUES ('MS', 'Multiwall sack');
INSERT INTO `kemasan` VALUES ('MT', 'Mat');
INSERT INTO `kemasan` VALUES ('MX', 'Macth box');
INSERT INTO `kemasan` VALUES ('NE', 'Unpacked or unpackaged');
INSERT INTO `kemasan` VALUES ('NS', 'Nest');
INSERT INTO `kemasan` VALUES ('NT', 'Net');
INSERT INTO `kemasan` VALUES ('PA', 'Packet');
INSERT INTO `kemasan` VALUES ('PB', 'POLYBAG');
INSERT INTO `kemasan` VALUES ('PC', 'Parcel');
INSERT INTO `kemasan` VALUES ('PG', 'Plate');
INSERT INTO `kemasan` VALUES ('PH', 'Pitcher');
INSERT INTO `kemasan` VALUES ('PI', 'Pipe');
INSERT INTO `kemasan` VALUES ('PK', 'Package');
INSERT INTO `kemasan` VALUES ('PL', 'Pail');
INSERT INTO `kemasan` VALUES ('PN', 'Plank');
INSERT INTO `kemasan` VALUES ('PO', 'Pouch');
INSERT INTO `kemasan` VALUES ('PT', 'Pot');
INSERT INTO `kemasan` VALUES ('PU', 'Tray pack');
INSERT INTO `kemasan` VALUES ('PY', 'Plates, in bundle/bunch/truss');
INSERT INTO `kemasan` VALUES ('PZ', 'Planks/Pipes, in bundle/bunch/truss');
INSERT INTO `kemasan` VALUES ('RD', 'Rod');
INSERT INTO `kemasan` VALUES ('RG', 'Ring');
INSERT INTO `kemasan` VALUES ('RL', 'Reel');
INSERT INTO `kemasan` VALUES ('RO', 'Roll');
INSERT INTO `kemasan` VALUES ('RT', 'Rednet');
INSERT INTO `kemasan` VALUES ('RZ', 'Rods, in bundle/ bunch/truss');
INSERT INTO `kemasan` VALUES ('SA', 'Sack');
INSERT INTO `kemasan` VALUES ('SC', 'Shallow crate');
INSERT INTO `kemasan` VALUES ('SD', 'Spindle');
INSERT INTO `kemasan` VALUES ('SE', 'Sea-chest');
INSERT INTO `kemasan` VALUES ('SH', 'Sachet');
INSERT INTO `kemasan` VALUES ('SK', 'Skeleton case');
INSERT INTO `kemasan` VALUES ('SL', 'Slipsheet');
INSERT INTO `kemasan` VALUES ('SM', 'Sheetmetal');
INSERT INTO `kemasan` VALUES ('ST', 'Sheet');
INSERT INTO `kemasan` VALUES ('SU', 'Suitcase');
INSERT INTO `kemasan` VALUES ('SW', 'Shrinkwrapped');
INSERT INTO `kemasan` VALUES ('SZ', 'Sheets, in bundle/bunch/truss');
INSERT INTO `kemasan` VALUES ('TB', 'Tub');
INSERT INTO `kemasan` VALUES ('TC', 'Tea-chest');
INSERT INTO `kemasan` VALUES ('TD', 'Tube, collapsible');
INSERT INTO `kemasan` VALUES ('TK', 'Tank, rectangular');
INSERT INTO `kemasan` VALUES ('TN', 'Tin');
INSERT INTO `kemasan` VALUES ('TO', 'Tun');
INSERT INTO `kemasan` VALUES ('TP', 'Tray');
INSERT INTO `kemasan` VALUES ('TR', 'Trunk');
INSERT INTO `kemasan` VALUES ('TS', 'Truss');
INSERT INTO `kemasan` VALUES ('TU', 'Tube');
INSERT INTO `kemasan` VALUES ('TY', 'Tank, cylindrical');
INSERT INTO `kemasan` VALUES ('TZ', 'Tubes, in bundle/bunch/truss');
INSERT INTO `kemasan` VALUES ('UN', 'Unit');
INSERT INTO `kemasan` VALUES ('VA', 'Vat');
INSERT INTO `kemasan` VALUES ('VG', 'Bulk, gas ( at 1031 mbar and 15C )');
INSERT INTO `kemasan` VALUES ('VI', 'Vial');
INSERT INTO `kemasan` VALUES ('VL', 'Bulk, liquid');
INSERT INTO `kemasan` VALUES ('VO', 'Bulk, solid, large particles (\"nodules\")');
INSERT INTO `kemasan` VALUES ('VP', 'Vacuumpacked');
INSERT INTO `kemasan` VALUES ('VQ', 'Bulk, liquefied gas (at abnormal temperature)');
INSERT INTO `kemasan` VALUES ('VR', 'Bulk, solid, granular particles (\"grains\")');
INSERT INTO `kemasan` VALUES ('VY', 'Bulk, solid, fine particles (\"powders\")');
INSERT INTO `kemasan` VALUES ('WB', 'Wickerbottle');

-- ----------------------------
-- Table structure for `kode_jenis_dok`
-- ----------------------------
DROP TABLE IF EXISTS `kode_jenis_dok`;
CREATE TABLE `kode_jenis_dok` (
  `KdKdJnsDok` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Kode Jenis Dokumen',
  `UrKdJnsDok` varchar(15) DEFAULT NULL COMMENT 'Nama Dokumen',
  PRIMARY KEY (`KdKdJnsDok`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kode_jenis_dok
-- ----------------------------
INSERT INTO `kode_jenis_dok` VALUES ('1', 'Invoice');
INSERT INTO `kode_jenis_dok` VALUES ('2', 'Packing List');
INSERT INTO `kode_jenis_dok` VALUES ('3', 'Kontrak');
INSERT INTO `kode_jenis_dok` VALUES ('4', 'Surat Jalan');
INSERT INTO `kode_jenis_dok` VALUES ('5', 'Skep');
INSERT INTO `kode_jenis_dok` VALUES ('6', 'Lainnya');
INSERT INTO `kode_jenis_dok` VALUES ('7', 'ex BC 2.3');
INSERT INTO `kode_jenis_dok` VALUES ('8', 'ex BC 2.4');
INSERT INTO `kode_jenis_dok` VALUES ('9', 'ex BC 2.5');
INSERT INTO `kode_jenis_dok` VALUES ('10', 'ex BC 2.6.1');
INSERT INTO `kode_jenis_dok` VALUES ('11', 'ex BC 2.6.2');
INSERT INTO `kode_jenis_dok` VALUES ('12', 'ex BC 2.7');
INSERT INTO `kode_jenis_dok` VALUES ('13', 'ex BC 3.0');
INSERT INTO `kode_jenis_dok` VALUES ('14', 'ex BC 4.0');
INSERT INTO `kode_jenis_dok` VALUES ('15', 'ex BC 4.1');
INSERT INTO `kode_jenis_dok` VALUES ('16', 'LC');
INSERT INTO `kode_jenis_dok` VALUES ('17', 'BL/AWB');
INSERT INTO `kode_jenis_dok` VALUES ('18', 'BC 1.1');

-- ----------------------------
-- Table structure for `log`
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `no` int(12) NOT NULL AUTO_INCREMENT,
  `tgl` datetime DEFAULT NULL,
  `nama_user` varchar(20) DEFAULT NULL,
  `ket` text,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=1110 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('521', '2012-10-14 20:37:16', 'admin', 'Add initial balance machine & office equipment  2012-10-14 3');
INSERT INTO `log` VALUES ('522', '2012-10-14 20:37:56', 'admin', 'Delete initial balance machine & office equipment 2012-10-14 3');
INSERT INTO `log` VALUES ('523', '2012-10-16 10:33:52', 'admin', 'login');
INSERT INTO `log` VALUES ('524', '2012-10-16 13:34:35', 'admin', 'login');
INSERT INTO `log` VALUES ('525', '2012-10-16 14:13:28', 'admin', 'login');
INSERT INTO `log` VALUES ('526', '2012-10-16 15:50:40', 'admin', 'login');
INSERT INTO `log` VALUES ('527', '2012-10-16 17:29:44', 'admin', 'login');
INSERT INTO `log` VALUES ('528', '2012-10-16 20:23:45', 'admin', 'login');
INSERT INTO `log` VALUES ('529', '2012-10-17 08:19:34', 'admin', 'login');
INSERT INTO `log` VALUES ('530', '2012-10-17 09:19:18', 'admin', 'ubah data company CLARION');
INSERT INTO `log` VALUES ('531', '2012-10-17 09:21:57', 'admin', 'ubah data company CLARION');
INSERT INTO `log` VALUES ('532', '2012-10-17 09:22:52', 'admin', 'ubah data company CLARION');
INSERT INTO `log` VALUES ('533', '2012-10-17 09:34:29', 'admin', 'ubah data company PT. ALUMINDO LIGHT METAL INDUSTRY');
INSERT INTO `log` VALUES ('534', '2012-10-17 11:31:43', 'admin', 'Add initial balance material 1 2012-10-17');
INSERT INTO `log` VALUES ('535', '2012-10-17 13:39:40', 'admin', 'login');
INSERT INTO `log` VALUES ('536', '2012-10-17 14:00:24', 'admin', 'Add initial balance material 3 2012-10-17');
INSERT INTO `log` VALUES ('537', '2012-10-17 14:23:25', 'admin', 'Add initial balance wip 2 2012-10-18');
INSERT INTO `log` VALUES ('538', '2012-10-17 14:27:28', 'admin', 'Add initial balance machine & office equipment  2012-10-15 3');
INSERT INTO `log` VALUES ('539', '2012-10-17 14:29:27', 'admin', 'Add initial balance machine & office equipment  2012-10-15 5');
INSERT INTO `log` VALUES ('540', '2012-10-17 15:45:30', 'admin', 'Edit po customer 25');
INSERT INTO `log` VALUES ('541', '2012-10-17 15:45:32', 'admin', 'Edit po customer 25');
INSERT INTO `log` VALUES ('542', '2012-10-17 16:31:32', 'admin', 'login');
INSERT INTO `log` VALUES ('543', '2012-10-17 11:55:07', 'admin', 'logout');
INSERT INTO `log` VALUES ('544', '2012-10-18 08:17:16', 'admin', 'login');
INSERT INTO `log` VALUES ('545', '2012-10-18 10:06:33', 'admin', 'login');
INSERT INTO `log` VALUES ('546', '2012-10-18 10:37:19', 'admin', 'Add wip 2 2012-10-18');
INSERT INTO `log` VALUES ('547', '2012-10-18 10:43:01', 'admin', 'Add wip 2 2012-10-18');
INSERT INTO `log` VALUES ('548', '2012-10-18 10:53:28', 'admin', 'Add wip 2 2012-10-18');
INSERT INTO `log` VALUES ('549', '2012-10-18 11:12:32', 'admin', 'Add fg production result 3 2012-10-18');
INSERT INTO `log` VALUES ('550', '2012-10-18 15:34:12', 'admin', 'login');
INSERT INTO `log` VALUES ('551', '2012-10-20 20:16:29', 'admin', 'login');
INSERT INTO `log` VALUES ('552', '2012-10-20 20:40:28', 'admin', 'edit finished goods WIP1');
INSERT INTO `log` VALUES ('553', '2012-10-20 17:13:41', 'admin', 'logout');
INSERT INTO `log` VALUES ('554', '2012-10-21 09:59:30', 'admin', 'login');
INSERT INTO `log` VALUES ('555', '2012-10-21 13:29:04', 'admin', 'login');
INSERT INTO `log` VALUES ('556', '2012-10-21 15:07:29', 'admin', 'login');
INSERT INTO `log` VALUES ('557', '2012-10-22 08:47:36', 'admin', 'login');
INSERT INTO `log` VALUES ('558', '2012-10-22 11:02:16', 'admin', 'login');
INSERT INTO `log` VALUES ('559', '2012-10-22 12:33:51', 'admin', 'login');
INSERT INTO `log` VALUES ('560', '2012-10-22 13:44:32', 'admin', 'login');
INSERT INTO `log` VALUES ('561', '2012-10-22 14:32:33', 'admin', 'login');
INSERT INTO `log` VALUES ('562', '2012-10-22 16:06:24', 'admin', 'login');
INSERT INTO `log` VALUES ('563', '2012-10-22 18:21:49', 'admin', 'login');
INSERT INTO `log` VALUES ('564', '2012-10-23 17:00:48', 'admin', 'login');
INSERT INTO `log` VALUES ('565', '2012-10-23 17:10:13', 'admin', 'login');
INSERT INTO `log` VALUES ('566', '2012-10-23 17:28:42', 'admin', 'login');
INSERT INTO `log` VALUES ('567', '2012-10-23 17:34:49', 'admin', 'login');
INSERT INTO `log` VALUES ('568', '2012-10-23 18:24:06', 'admin', 'login');
INSERT INTO `log` VALUES ('569', '2012-10-24 09:02:44', 'admin', 'login');
INSERT INTO `log` VALUES ('570', '2012-10-25 08:45:43', 'admin', 'login');
INSERT INTO `log` VALUES ('571', '2012-10-25 10:05:10', 'admin', 'login');
INSERT INTO `log` VALUES ('572', '2012-10-25 11:38:40', 'admin', 'login');
INSERT INTO `log` VALUES ('573', '2012-10-26 10:25:03', 'admin', 'login');
INSERT INTO `log` VALUES ('574', '2012-10-26 11:23:46', 'admin', 'login');
INSERT INTO `log` VALUES ('575', '2012-10-26 11:26:13', 'admin', 'Edit po customer 25');
INSERT INTO `log` VALUES ('576', '2012-10-26 06:27:19', 'admin', 'logout');
INSERT INTO `log` VALUES ('577', '2012-10-26 12:19:13', 'admin', 'login');
INSERT INTO `log` VALUES ('578', '2012-10-26 15:28:35', 'admin', 'login');
INSERT INTO `log` VALUES ('579', '2012-10-27 20:34:13', 'admin', 'login');
INSERT INTO `log` VALUES ('580', '2012-10-27 21:17:04', 'admin', 'Add delivery order 3');
INSERT INTO `log` VALUES ('581', '2012-10-27 21:19:35', 'admin', 'Delete delivery order 3');
INSERT INTO `log` VALUES ('582', '2012-10-27 16:44:11', 'admin', 'logout');
INSERT INTO `log` VALUES ('583', '2012-10-28 13:54:34', 'admin', 'login');
INSERT INTO `log` VALUES ('584', '2012-10-28 14:16:03', 'admin', 'Add po 6');
INSERT INTO `log` VALUES ('585', '2012-10-28 14:17:03', 'admin', 'Add matin 2');
INSERT INTO `log` VALUES ('586', '2012-10-28 09:29:18', 'admin', 'logout');
INSERT INTO `log` VALUES ('587', '2012-10-28 16:55:22', 'admin', 'login');
INSERT INTO `log` VALUES ('588', '2012-10-28 17:03:40', 'admin', 'tambah data barang SC001');
INSERT INTO `log` VALUES ('589', '2012-10-28 17:04:25', 'admin', 'Add initial balance machine & office equipment  2012-10-28 12');
INSERT INTO `log` VALUES ('590', '2012-10-28 17:19:36', 'admin', 'Add matin 3');
INSERT INTO `log` VALUES ('591', '2012-10-28 17:36:23', 'admin', 'Add outgoing material 5');
INSERT INTO `log` VALUES ('592', '2012-10-28 17:39:39', 'admin', 'Edit initial balance machine & office equipment  2012-10-28 12');
INSERT INTO `log` VALUES ('593', '2012-10-28 17:42:47', 'admin', 'Add stock opname 3');
INSERT INTO `log` VALUES ('594', '2012-10-28 17:43:50', 'admin', 'Add stock adjustment 4');
INSERT INTO `log` VALUES ('595', '2012-10-28 18:50:40', 'admin', 'login');
INSERT INTO `log` VALUES ('596', '2012-10-28 18:51:03', 'admin', 'Edit initial balance machine & office equipment  2012-10-27 12');
INSERT INTO `log` VALUES ('597', '2012-10-28 19:07:33', 'admin', 'Delete initial balance machine & office equipment 2012-09-30 12');
INSERT INTO `log` VALUES ('598', '2012-10-28 19:08:33', 'admin', 'Add initial balance machine & office equipment 1 2012-10-28 12');
INSERT INTO `log` VALUES ('599', '2012-10-28 19:11:42', 'admin', 'Edit initial balance machine & office equipment  2012-10-28 12');
INSERT INTO `log` VALUES ('600', '2012-10-28 19:12:41', 'admin', 'Add stock adjustment 4');
INSERT INTO `log` VALUES ('601', '2012-10-28 19:20:41', 'admin', 'Edit initial balance machine & office equipment  2012-10-15 3');
INSERT INTO `log` VALUES ('602', '2012-10-28 19:21:01', 'admin', 'Edit initial balance machine & office equipment  2012-10-15 5');
INSERT INTO `log` VALUES ('603', '2012-10-28 19:22:32', 'admin', 'Edit matin 2');
INSERT INTO `log` VALUES ('604', '2012-10-28 19:24:40', 'admin', 'Add outgoing material 6');
INSERT INTO `log` VALUES ('605', '2012-10-28 19:26:34', 'admin', 'Edit stock opname 3');
INSERT INTO `log` VALUES ('606', '2012-10-28 19:27:07', 'admin', 'Add stock adjustment 4');
INSERT INTO `log` VALUES ('607', '2012-10-28 14:12:19', 'admin', 'logout');
INSERT INTO `log` VALUES ('608', '2012-10-29 08:06:12', 'admin', 'login');
INSERT INTO `log` VALUES ('609', '2012-10-29 10:53:09', 'admin', 'login');
INSERT INTO `log` VALUES ('610', '2012-10-29 11:16:19', 'admin', 'login');
INSERT INTO `log` VALUES ('611', '2012-10-29 12:47:36', 'admin', 'login');
INSERT INTO `log` VALUES ('612', '2012-10-29 13:15:20', 'admin', 'login');
INSERT INTO `log` VALUES ('613', '2012-10-29 13:52:29', 'admin', 'login');
INSERT INTO `log` VALUES ('614', '2012-10-29 15:22:45', 'admin', 'login');
INSERT INTO `log` VALUES ('615', '2012-10-29 15:53:48', 'admin', 'tambah data bc40 8 000002');
INSERT INTO `log` VALUES ('616', '2012-10-29 16:05:15', 'admin', 'ubah data bc40 8 000002');
INSERT INTO `log` VALUES ('617', '2012-10-29 16:07:09', 'admin', 'ubah data bc40 8 000002');
INSERT INTO `log` VALUES ('618', '2012-10-30 07:04:37', 'admin', 'login');
INSERT INTO `log` VALUES ('619', '2012-10-30 07:12:23', '', 'tambah data bc262  ');
INSERT INTO `log` VALUES ('620', '2012-10-30 14:15:52', 'admin', 'login');
INSERT INTO `log` VALUES ('621', '2012-10-30 14:19:50', '', 'tambah data bc262 5 000002');
INSERT INTO `log` VALUES ('622', '2012-10-30 14:20:06', '', 'hapus data bc 5 000002');
INSERT INTO `log` VALUES ('623', '2012-10-30 14:22:31', '', 'tambah data bc262 5 000002');
INSERT INTO `log` VALUES ('624', '2012-10-30 14:22:45', '', 'hapus data bc 5 000002');
INSERT INTO `log` VALUES ('625', '2012-10-30 14:23:22', '', 'tambah data bc262 5 000002');
INSERT INTO `log` VALUES ('626', '2012-10-30 14:35:39', 'admin', 'Add outgoing material 7');
INSERT INTO `log` VALUES ('627', '2012-10-30 14:43:52', '', 'tambah data bc41 9 000002');
INSERT INTO `log` VALUES ('628', '2012-10-30 14:44:17', '', 'ubah data bc41 9 000002');
INSERT INTO `log` VALUES ('629', '2012-10-30 14:44:41', '', 'ubah data bc41 9 000002');
INSERT INTO `log` VALUES ('630', '2012-10-30 14:48:05', 'admin', 'Edit outgoing material 7');
INSERT INTO `log` VALUES ('631', '2012-10-30 14:50:09', '', 'tambah data bc261 4 000002');
INSERT INTO `log` VALUES ('632', '2012-10-30 14:51:04', '', 'ubah data bc261 4 000002');
INSERT INTO `log` VALUES ('633', '2012-10-30 14:55:50', 'admin', 'Edit outgoing material 7');
INSERT INTO `log` VALUES ('634', '2012-10-30 17:13:17', 'admin', 'login');
INSERT INTO `log` VALUES ('635', '2012-10-31 08:48:12', 'admin', 'login');
INSERT INTO `log` VALUES ('636', '2012-10-31 08:49:38', '', 'tambah data bc25 3 000002');
INSERT INTO `log` VALUES ('637', '2012-10-31 09:25:54', 'admin', 'Edit matin 2');
INSERT INTO `log` VALUES ('638', '2012-10-31 09:26:34', 'admin', 'Edit outgoing material 7');
INSERT INTO `log` VALUES ('639', '2012-10-31 09:41:17', '', 'tambah data bc27 6 000002');
INSERT INTO `log` VALUES ('640', '2012-10-31 09:42:04', '', 'ubah data bc27 6 000002');
INSERT INTO `log` VALUES ('641', '2012-10-31 09:50:56', 'admin', 'Edit matin 2');
INSERT INTO `log` VALUES ('642', '2012-10-31 09:53:19', 'admin', 'tambah data bc23 1 000701');
INSERT INTO `log` VALUES ('643', '2012-10-31 09:56:16', 'admin', 'ubah data bc23 1 000701');
INSERT INTO `log` VALUES ('644', '2012-10-31 10:11:47', 'admin', 'tambah data bc30 7 000002');
INSERT INTO `log` VALUES ('645', '2012-10-31 10:13:33', '', 'hapus data bc 7 000002');
INSERT INTO `log` VALUES ('646', '2012-10-31 10:14:10', 'admin', 'tambah data bc30 7 000002');
INSERT INTO `log` VALUES ('647', '2012-10-31 10:17:59', '', 'hapus data bc 7 000002');
INSERT INTO `log` VALUES ('648', '2012-10-31 10:18:32', 'admin', 'tambah data bc30 7 000002');
INSERT INTO `log` VALUES ('649', '2012-10-31 04:18:50', 'admin', 'logout');
INSERT INTO `log` VALUES ('650', '2012-10-31 10:25:46', 'admin', 'login');
INSERT INTO `log` VALUES ('651', '2012-11-05 09:46:34', 'admin', 'login');
INSERT INTO `log` VALUES ('652', '2012-11-05 03:49:17', 'admin', 'logout');
INSERT INTO `log` VALUES ('653', '2012-11-13 09:15:41', 'admin', 'login');
INSERT INTO `log` VALUES ('654', '2012-11-13 03:19:32', 'admin', 'logout');
INSERT INTO `log` VALUES ('655', '2012-11-13 09:58:16', 'admin', 'login');
INSERT INTO `log` VALUES ('656', '2012-11-13 04:00:34', 'admin', 'logout');
INSERT INTO `log` VALUES ('657', '2012-11-13 13:22:59', 'admin', 'login');
INSERT INTO `log` VALUES ('658', '2012-11-13 14:46:37', 'admin', 'login');
INSERT INTO `log` VALUES ('659', '2012-11-13 14:48:03', 'admin', 'Add initial balance material 1 2012-11-13');
INSERT INTO `log` VALUES ('660', '2012-11-13 14:56:13', 'admin', 'Edit consumption list 123');
INSERT INTO `log` VALUES ('661', '2012-11-14 11:27:51', 'admin', 'login');
INSERT INTO `log` VALUES ('662', '2012-11-14 05:28:17', 'admin', 'logout');
INSERT INTO `log` VALUES ('663', '2012-11-14 21:26:10', 'admin', 'login');
INSERT INTO `log` VALUES ('664', '2012-11-14 16:02:22', 'admin', 'logout');
INSERT INTO `log` VALUES ('665', '2012-11-14 22:02:30', 'admin', 'login');
INSERT INTO `log` VALUES ('666', '2012-11-14 16:15:19', 'admin', 'logout');
INSERT INTO `log` VALUES ('667', '2012-11-14 22:15:28', 'admin', 'login');
INSERT INTO `log` VALUES ('668', '2012-11-14 22:40:06', 'admin', 'login');
INSERT INTO `log` VALUES ('669', '2012-11-14 16:58:12', 'admin', 'logout');
INSERT INTO `log` VALUES ('670', '2012-11-14 22:58:22', 'bc', 'login');
INSERT INTO `log` VALUES ('671', '2012-11-14 16:58:28', 'bc', 'logout');
INSERT INTO `log` VALUES ('672', '2012-11-14 22:58:42', 'exim', 'login');
INSERT INTO `log` VALUES ('673', '2012-11-14 16:58:48', 'exim', 'logout');
INSERT INTO `log` VALUES ('674', '2012-11-14 22:59:42', 'admin', 'login');
INSERT INTO `log` VALUES ('675', '2012-11-14 23:00:32', 'admin', 'ubah data user administration asep');
INSERT INTO `log` VALUES ('676', '2012-11-14 23:01:41', 'admin', 'ubah data user administration asep');
INSERT INTO `log` VALUES ('677', '2012-11-14 17:01:46', 'admin', 'logout');
INSERT INTO `log` VALUES ('678', '2012-11-14 23:02:13', 'exim', 'login');
INSERT INTO `log` VALUES ('679', '2012-11-14 17:02:21', 'exim', 'logout');
INSERT INTO `log` VALUES ('680', '2012-11-14 23:02:28', 'admin', 'login');
INSERT INTO `log` VALUES ('681', '2012-11-14 23:02:48', 'admin', 'ubah data user administration asep');
INSERT INTO `log` VALUES ('682', '2012-11-14 17:02:54', 'admin', 'logout');
INSERT INTO `log` VALUES ('683', '2012-11-14 23:03:01', 'asep', 'login');
INSERT INTO `log` VALUES ('684', '2012-11-14 17:03:08', 'asep', 'logout');
INSERT INTO `log` VALUES ('685', '2012-11-14 23:03:16', 'admin', 'login');
INSERT INTO `log` VALUES ('686', '2012-11-14 23:03:33', 'admin', 'ubah data user administration asep');
INSERT INTO `log` VALUES ('687', '2012-11-14 17:03:37', 'admin', 'logout');
INSERT INTO `log` VALUES ('688', '2012-11-14 23:03:45', 'asep', 'login');
INSERT INTO `log` VALUES ('689', '2012-11-14 17:04:00', 'asep', 'logout');
INSERT INTO `log` VALUES ('690', '2012-11-14 23:44:09', 'admin', 'login');
INSERT INTO `log` VALUES ('691', '2012-11-14 17:44:14', 'admin', 'logout');
INSERT INTO `log` VALUES ('692', '2012-11-19 16:56:59', 'admin', 'login');
INSERT INTO `log` VALUES ('693', '2012-11-21 16:33:06', 'admin', 'login');
INSERT INTO `log` VALUES ('694', '2012-11-25 13:37:08', 'admin', 'login');
INSERT INTO `log` VALUES ('695', '2012-11-26 11:16:48', 'admin', 'login');
INSERT INTO `log` VALUES ('696', '2012-11-26 11:54:53', 'admin', 'login');
INSERT INTO `log` VALUES ('697', '2012-11-26 11:58:57', 'admin', 'Edit matin 2');
INSERT INTO `log` VALUES ('698', '2012-11-26 11:59:55', 'admin', 'tambah data bc40 8 000003');
INSERT INTO `log` VALUES ('699', '2012-11-26 13:26:13', 'admin', 'login');
INSERT INTO `log` VALUES ('700', '2012-11-26 13:36:46', 'admin', 'tambah data user administration nunik');
INSERT INTO `log` VALUES ('701', '2012-11-26 13:37:21', 'admin', 'ubah data user administration nunik');
INSERT INTO `log` VALUES ('702', '2012-11-26 13:37:28', 'admin', 'hapus data user administration nunik2');
INSERT INTO `log` VALUES ('703', '2012-11-26 13:41:48', 'admin', 'add material RAE-0001');
INSERT INTO `log` VALUES ('704', '2012-11-26 13:42:26', 'admin', 'ubah data material group RAE');
INSERT INTO `log` VALUES ('705', '2012-11-26 13:44:32', 'admin', 'edit material RAE-0001');
INSERT INTO `log` VALUES ('706', '2012-11-26 13:55:33', 'admin', 'add finished goods FBI-0001');
INSERT INTO `log` VALUES ('707', '2012-11-26 13:56:15', 'admin', 'delete data finished goods WIP4');
INSERT INTO `log` VALUES ('708', '2012-11-26 13:56:20', 'admin', 'delete data finished goods WIP3');
INSERT INTO `log` VALUES ('709', '2012-11-26 13:57:30', 'admin', 'add finished goods WBI-0001');
INSERT INTO `log` VALUES ('710', '2012-11-26 13:57:35', 'admin', 'delete data finished goods WIP1');
INSERT INTO `log` VALUES ('711', '2012-11-26 13:57:41', 'admin', 'delete data finished goods WIP2');
INSERT INTO `log` VALUES ('712', '2012-11-26 14:03:44', 'admin', 'Add initial balance material 1 2012-11-26');
INSERT INTO `log` VALUES ('713', '2012-11-26 14:04:05', 'admin', 'Delete initial balance material 1 2012-11-26');
INSERT INTO `log` VALUES ('714', '2012-11-26 14:04:18', 'admin', 'Delete initial balance material 1 2012-10-17');
INSERT INTO `log` VALUES ('715', '2012-11-26 14:04:27', 'admin', 'Delete initial balance material 1 2012-11-13');
INSERT INTO `log` VALUES ('716', '2012-11-26 14:04:57', 'admin', 'Add initial balance material 1 2012-11-26');
INSERT INTO `log` VALUES ('717', '2012-11-26 14:05:16', 'admin', 'Delete initial balance material 3 2012-10-17');
INSERT INTO `log` VALUES ('718', '2012-11-26 14:05:41', 'admin', 'Add initial balance material 3 2012-11-26');
INSERT INTO `log` VALUES ('719', '2012-11-26 14:06:12', 'admin', 'Add initial balance wip 2 2012-11-26');
INSERT INTO `log` VALUES ('720', '2012-11-26 14:16:03', 'admin', 'Add initial balance machine & office equipment 1 2012-11-26 12');
INSERT INTO `log` VALUES ('721', '2012-11-26 14:16:34', 'admin', 'Delete consumption list 123');
INSERT INTO `log` VALUES ('722', '2012-11-26 14:54:10', 'admin', 'Add consumption list FBI-0001');
INSERT INTO `log` VALUES ('723', '2012-11-26 14:54:18', 'admin', 'Delete consumption list FBI-0001');
INSERT INTO `log` VALUES ('724', '2012-11-26 14:55:46', 'admin', 'Add consumption list FBI-0001');
INSERT INTO `log` VALUES ('725', '2012-11-26 09:13:41', 'admin', 'logout');
INSERT INTO `log` VALUES ('726', '2012-11-26 15:15:31', 'admin', 'login');
INSERT INTO `log` VALUES ('727', '2012-11-26 09:21:14', 'admin', 'logout');
INSERT INTO `log` VALUES ('728', '2012-11-28 13:59:00', 'admin', 'login');
INSERT INTO `log` VALUES ('729', '2012-11-28 13:59:57', 'admin', 'ubah data unit of items KGM');
INSERT INTO `log` VALUES ('730', '2012-11-28 15:28:07', 'admin', 'login');
INSERT INTO `log` VALUES ('731', '2012-11-28 09:56:18', 'admin', 'logout');
INSERT INTO `log` VALUES ('732', '2012-11-29 08:28:59', 'admin', 'login');
INSERT INTO `log` VALUES ('733', '2012-12-04 09:34:49', 'admin', 'login');
INSERT INTO `log` VALUES ('734', '2012-12-04 12:32:01', 'admin', 'login');
INSERT INTO `log` VALUES ('735', '2012-12-04 06:32:38', 'admin', 'logout');
INSERT INTO `log` VALUES ('736', '2012-12-04 19:48:03', 'admin', 'login');
INSERT INTO `log` VALUES ('737', '2012-12-04 20:16:50', 'admin', 'tambah data company PT. INDAL');
INSERT INTO `log` VALUES ('738', '2012-12-06 10:53:36', 'admin', 'login');
INSERT INTO `log` VALUES ('739', '2012-12-09 20:57:56', 'admin', 'login');
INSERT INTO `log` VALUES ('740', '2012-12-09 23:25:41', 'admin', 'login');
INSERT INTO `log` VALUES ('741', '2012-12-09 23:42:41', 'admin', 'Add matin 4');
INSERT INTO `log` VALUES ('742', '2012-12-09 23:50:32', 'admin', 'Delete matin 4');
INSERT INTO `log` VALUES ('743', '2012-12-09 23:50:45', 'admin', 'Delete matin 3');
INSERT INTO `log` VALUES ('744', '2012-12-09 23:50:56', 'admin', 'Delete matin 2');
INSERT INTO `log` VALUES ('745', '2012-12-09 23:51:05', 'admin', 'Delete matin 1');
INSERT INTO `log` VALUES ('746', '2012-12-09 23:52:42', 'admin', 'Add matin 1');
INSERT INTO `log` VALUES ('747', '2012-12-10 00:04:40', 'admin', 'Edit matin 1');
INSERT INTO `log` VALUES ('748', '2012-12-09 18:08:31', 'admin', 'logout');
INSERT INTO `log` VALUES ('749', '2012-12-10 00:08:40', 'admin', 'login');
INSERT INTO `log` VALUES ('750', '2012-12-10 00:30:22', 'admin', 'Delete delivery order 2');
INSERT INTO `log` VALUES ('751', '2012-12-10 00:35:09', 'admin', 'Add delivery order 1');
INSERT INTO `log` VALUES ('752', '2012-12-10 00:42:13', 'admin', 'Edit delivery order 1');
INSERT INTO `log` VALUES ('753', '2012-12-09 18:49:46', 'admin', 'logout');
INSERT INTO `log` VALUES ('754', '2012-12-10 00:49:52', 'bc', 'login');
INSERT INTO `log` VALUES ('755', '2012-12-09 18:49:57', 'bc', 'logout');
INSERT INTO `log` VALUES ('756', '2012-12-10 00:50:07', 'gudang', 'login');
INSERT INTO `log` VALUES ('757', '2012-12-11 08:51:49', 'admin', 'login');
INSERT INTO `log` VALUES ('758', '2012-12-11 16:05:20', 'admin', 'login');
INSERT INTO `log` VALUES ('759', '2012-12-11 20:16:49', 'admin', 'login');
INSERT INTO `log` VALUES ('760', '2012-12-11 21:28:59', 'admin', 'tambah data company PT. INDAL');
INSERT INTO `log` VALUES ('761', '2012-12-11 21:35:02', 'admin', 'ubah data company CV. Jaya Mulya Mandiri');
INSERT INTO `log` VALUES ('762', '2012-12-11 21:35:14', 'admin', 'ubah data company CV. Jaya Mulya Mandiri');
INSERT INTO `log` VALUES ('763', '2012-12-11 21:38:30', 'admin', 'Delete initial balance material 3 2012-11-26');
INSERT INTO `log` VALUES ('764', '2012-12-11 21:38:45', 'admin', 'Delete initial balance material 1 2012-11-26');
INSERT INTO `log` VALUES ('765', '2012-12-11 21:39:02', 'admin', 'Delete initial balance wip 2 2012-10-18');
INSERT INTO `log` VALUES ('766', '2012-12-11 21:39:15', 'admin', 'Delete initial balance wip 2 2012-11-26');
INSERT INTO `log` VALUES ('767', '2012-12-11 21:39:45', 'admin', 'Delete initial balance machine & office equipment 2012-09-30 3');
INSERT INTO `log` VALUES ('768', '2012-12-11 21:39:58', 'admin', 'Delete initial balance machine & office equipment 2012-11-26 12');
INSERT INTO `log` VALUES ('769', '2012-12-11 22:35:41', 'admin', 'Add initial balance material 1 2012-11-29');
INSERT INTO `log` VALUES ('770', '2012-12-11 22:36:03', 'admin', 'Edit initial balance material 1 2012-11-29');
INSERT INTO `log` VALUES ('771', '2012-12-11 22:36:16', 'admin', 'Delete initial balance material 1 2012-11-29');
INSERT INTO `log` VALUES ('772', '2012-12-11 22:38:47', 'admin', 'edit finished goods FAB-0001');
INSERT INTO `log` VALUES ('773', '2012-12-11 22:39:03', 'admin', 'edit finished goods FAB-0001');
INSERT INTO `log` VALUES ('774', '2012-12-11 22:41:46', 'admin', 'Delete initial balance wip 2 2012-10-18');
INSERT INTO `log` VALUES ('775', '2012-12-11 22:48:24', 'admin', 'Add initial balance material 3 2012-12-11');
INSERT INTO `log` VALUES ('776', '2012-12-11 22:49:31', 'admin', 'Delete initial balance material 3 2012-12-11');
INSERT INTO `log` VALUES ('777', '2012-12-11 22:51:01', 'admin', 'Add initial balance material 3 2012-12-11');
INSERT INTO `log` VALUES ('778', '2012-12-11 22:51:12', 'admin', 'Delete initial balance material 3 2012-12-11');
INSERT INTO `log` VALUES ('779', '2012-12-11 23:05:50', 'admin', 'Add initial balance wip 2 2012-11-29');
INSERT INTO `log` VALUES ('780', '2012-12-11 23:06:38', 'admin', 'Add initial balance wip 2 2012-11-30');
INSERT INTO `log` VALUES ('781', '2012-12-11 23:06:51', 'admin', 'Delete initial balance wip 2 2012-11-29');
INSERT INTO `log` VALUES ('782', '2012-12-11 23:09:30', 'admin', 'Delete initial balance wip 2 2012-11-30');
INSERT INTO `log` VALUES ('783', '2012-12-11 23:10:37', 'admin', 'Edit initial balance wip 2 2012-11-29');
INSERT INTO `log` VALUES ('784', '2012-12-11 23:11:10', 'admin', 'Delete initial balance wip 2 2012-11-29');
INSERT INTO `log` VALUES ('785', '2012-12-11 23:11:58', 'admin', 'Delete initial balance machine & office equipment 2012-11-26 12');
INSERT INTO `log` VALUES ('786', '2012-12-11 23:21:11', 'admin', 'Delete initial balance machine & office equipment 2012-11-26 12');
INSERT INTO `log` VALUES ('787', '2012-12-11 23:30:05', 'admin', 'Delete initial balance machine & office equipment 2012-09-30 5');
INSERT INTO `log` VALUES ('788', '2012-12-11 23:32:49', 'admin', 'Delete initial balance machine & office equipment 2012-09-30 5');
INSERT INTO `log` VALUES ('789', '2012-12-11 23:33:03', 'admin', 'Delete initial balance machine & office equipment 2012-09-30 5');
INSERT INTO `log` VALUES ('790', '2012-12-11 23:38:24', 'admin', 'Delete initial balance machine & office equipment 2012-09-30 5');
INSERT INTO `log` VALUES ('791', '2012-12-11 23:38:35', 'admin', 'Delete initial balance machine & office equipment 2012-09-30 3');
INSERT INTO `log` VALUES ('792', '2012-12-12 00:02:10', 'admin', 'Delete matin 1');
INSERT INTO `log` VALUES ('793', '2012-12-12 00:03:46', 'admin', 'Add matin 1');
INSERT INTO `log` VALUES ('794', '2012-12-12 00:27:32', 'admin', 'Edit matin 1');
INSERT INTO `log` VALUES ('795', '2012-12-12 00:27:51', 'admin', 'Edit matin 1');
INSERT INTO `log` VALUES ('796', '2012-12-12 00:34:48', 'admin', 'Add wip 2 2012-12-12');
INSERT INTO `log` VALUES ('797', '2012-12-12 00:35:48', 'admin', 'Delete wip 2 2012-12-12');
INSERT INTO `log` VALUES ('798', '2012-12-12 00:42:05', 'admin', 'Add fg production result 3 2012-12-12');
INSERT INTO `log` VALUES ('799', '2012-12-12 00:42:55', 'admin', 'Delete outgoing material 7');
INSERT INTO `log` VALUES ('800', '2012-12-12 00:43:06', 'admin', 'Delete outgoing material 6');
INSERT INTO `log` VALUES ('801', '2012-12-12 00:43:29', 'admin', 'Delete outgoing material 5');
INSERT INTO `log` VALUES ('802', '2012-12-12 00:43:42', 'admin', 'Delete outgoing material 3');
INSERT INTO `log` VALUES ('803', '2012-12-12 00:51:55', 'admin', 'Add outgoing material 5');
INSERT INTO `log` VALUES ('804', '2012-12-12 00:56:51', 'admin', 'Delete outgoing material 5');
INSERT INTO `log` VALUES ('805', '2012-12-12 00:59:19', 'admin', 'Add outgoing material 5');
INSERT INTO `log` VALUES ('806', '2012-12-12 01:04:44', 'admin', 'Edit outgoing material 5');
INSERT INTO `log` VALUES ('807', '2012-12-12 01:05:55', 'admin', 'Add wip 2 2012-12-12');
INSERT INTO `log` VALUES ('808', '2012-12-12 01:06:39', 'admin', 'Delete delivery order 1');
INSERT INTO `log` VALUES ('809', '2012-12-12 01:12:18', 'admin', 'Add delivery order 1');
INSERT INTO `log` VALUES ('810', '2012-12-12 01:13:33', 'admin', 'Edit delivery order 1');
INSERT INTO `log` VALUES ('811', '2012-12-12 01:15:16', 'admin', 'Edit delivery order 1');
INSERT INTO `log` VALUES ('812', '2012-12-12 01:17:52', 'admin', 'Delete stock opname 3');
INSERT INTO `log` VALUES ('813', '2012-12-12 01:18:06', 'admin', 'Delete stock opname 2');
INSERT INTO `log` VALUES ('814', '2012-12-12 01:24:12', 'admin', 'Add stock opname 2');
INSERT INTO `log` VALUES ('815', '2012-12-12 01:25:27', 'admin', 'Delete stock opname 1');
INSERT INTO `log` VALUES ('816', '2012-12-12 01:27:15', 'admin', 'Add stock opname 3');
INSERT INTO `log` VALUES ('817', '2012-12-12 01:33:29', 'admin', 'Add stock adjustment 4');
INSERT INTO `log` VALUES ('818', '2012-12-12 01:34:15', 'admin', 'Add stock adjustment 4');
INSERT INTO `log` VALUES ('819', '2012-12-12 01:38:43', 'admin', 'Add stock adjustment 4');
INSERT INTO `log` VALUES ('820', '2012-12-11 20:16:19', 'admin', 'logout');
INSERT INTO `log` VALUES ('821', '2012-12-12 07:48:23', 'admin', 'login');
INSERT INTO `log` VALUES ('822', '2012-12-12 07:49:34', 'admin', 'ubah data user administration asep');
INSERT INTO `log` VALUES ('823', '2012-12-12 07:57:43', 'admin', 'tambah data barang MAC-0001');
INSERT INTO `log` VALUES ('824', '2012-12-12 08:27:05', 'admin', 'login');
INSERT INTO `log` VALUES ('825', '2012-12-12 02:27:29', 'admin', 'logout');
INSERT INTO `log` VALUES ('826', '2012-12-12 09:41:27', 'admin', 'login');
INSERT INTO `log` VALUES ('827', '2012-12-12 09:43:55', 'admin', 'tambah data bc40 8 000004');
INSERT INTO `log` VALUES ('828', '2012-12-12 10:06:48', '', 'hapus data bc 8 000004');
INSERT INTO `log` VALUES ('829', '2012-12-12 10:11:17', 'admin', 'tambah data bc40 8 000004');
INSERT INTO `log` VALUES ('830', '2012-12-12 10:12:13', '', 'hapus data bc 8 000004');
INSERT INTO `log` VALUES ('831', '2012-12-12 10:12:43', 'admin', 'tambah data bc40 8 000004');
INSERT INTO `log` VALUES ('832', '2012-12-12 10:20:56', '', 'hapus data bc 8 000004');
INSERT INTO `log` VALUES ('833', '2012-12-12 10:21:40', 'admin', 'tambah data bc40 8 000004');
INSERT INTO `log` VALUES ('834', '2012-12-12 10:21:57', 'admin', 'ubah data bc40 8 000004');
INSERT INTO `log` VALUES ('835', '2012-12-12 10:50:17', 'admin', 'Edit outgoing material 5');
INSERT INTO `log` VALUES ('836', '2012-12-12 10:51:19', '', 'tambah data bc261 4 000003');
INSERT INTO `log` VALUES ('837', '2012-12-12 10:52:18', 'admin', 'Edit matin 1');
INSERT INTO `log` VALUES ('838', '2012-12-12 10:55:40', 'admin', 'Edit matin 1');
INSERT INTO `log` VALUES ('839', '2012-12-12 12:01:26', '', 'hapus data bc 6 000002');
INSERT INTO `log` VALUES ('840', '2012-12-12 12:01:34', '', 'hapus data bc 6 000001');
INSERT INTO `log` VALUES ('841', '2012-12-12 12:26:28', 'admin', 'Edit matin 1');
INSERT INTO `log` VALUES ('842', '2012-12-12 12:33:44', '', 'tambah data bc27 6 000001');
INSERT INTO `log` VALUES ('843', '2012-12-12 12:50:31', '', 'ubah data bc27 6 000001');
INSERT INTO `log` VALUES ('844', '2012-12-12 07:08:20', 'admin', 'logout');
INSERT INTO `log` VALUES ('845', '2012-12-12 13:14:06', 'admin', 'login');
INSERT INTO `log` VALUES ('846', '2012-12-12 07:23:32', 'admin', 'logout');
INSERT INTO `log` VALUES ('847', '2012-12-12 13:31:52', 'admin', 'login');
INSERT INTO `log` VALUES ('848', '2012-12-12 07:42:57', 'admin', 'logout');
INSERT INTO `log` VALUES ('849', '2012-12-12 13:43:40', 'gudang', 'login');
INSERT INTO `log` VALUES ('850', '2012-12-12 13:45:52', 'gudang', 'tambah data negara IND');
INSERT INTO `log` VALUES ('851', '2012-12-12 13:45:58', 'gudang', 'hapus data negara IN');
INSERT INTO `log` VALUES ('852', '2012-12-12 13:48:04', 'gudang', 'add material RACI0001');
INSERT INTO `log` VALUES ('853', '2012-12-12 13:48:28', 'gudang', 'edit material RAC-0001');
INSERT INTO `log` VALUES ('854', '2012-12-12 13:58:09', 'gudang', 'Add matin 2');
INSERT INTO `log` VALUES ('855', '2012-12-12 14:00:39', 'gudang', 'edit material RAC-0002');
INSERT INTO `log` VALUES ('856', '2012-12-12 14:00:55', 'gudang', 'edit material RAC-0002');
INSERT INTO `log` VALUES ('857', '2012-12-12 14:21:36', 'gudang', 'Add stock opname 4');
INSERT INTO `log` VALUES ('858', '2012-12-12 14:22:34', 'gudang', 'Delete wip 2 2012-12-12');
INSERT INTO `log` VALUES ('859', '2012-12-12 14:23:50', 'gudang', 'Add wip 2 2012-11-29');
INSERT INTO `log` VALUES ('860', '2012-12-12 14:30:23', 'gudang', 'Add outgoing material 6');
INSERT INTO `log` VALUES ('861', '2012-12-12 14:39:25', 'gudang', 'Add stock opname 5');
INSERT INTO `log` VALUES ('862', '2012-12-12 08:40:13', 'gudang', 'logout');
INSERT INTO `log` VALUES ('863', '2012-12-12 14:40:16', 'admin', 'login');
INSERT INTO `log` VALUES ('864', '2012-12-12 14:42:21', 'admin', 'Delete stock opname 5');
INSERT INTO `log` VALUES ('865', '2012-12-12 14:42:39', 'admin', 'Delete fg production result 3 2012-12-12');
INSERT INTO `log` VALUES ('866', '2012-12-12 14:44:20', 'admin', 'Add fg production result 3 2012-11-29');
INSERT INTO `log` VALUES ('867', '2012-12-12 14:48:22', 'admin', 'Edit delivery order 1');
INSERT INTO `log` VALUES ('868', '2012-12-12 14:49:30', 'admin', 'Delete stock opname 3');
INSERT INTO `log` VALUES ('869', '2012-12-12 14:50:10', 'admin', 'Add stock opname 5');
INSERT INTO `log` VALUES ('870', '2012-12-12 14:51:58', 'admin', 'Add stock adjustment 6');
INSERT INTO `log` VALUES ('871', '2012-12-12 15:10:24', 'admin', 'Delete fg production result 3 2012-11-29');
INSERT INTO `log` VALUES ('872', '2012-12-12 15:23:04', 'admin', 'tambah data barang ST');
INSERT INTO `log` VALUES ('873', '2012-12-12 09:34:56', 'admin', 'logout');
INSERT INTO `log` VALUES ('874', '2012-12-12 15:35:02', 'exim', 'login');
INSERT INTO `log` VALUES ('875', '2012-12-12 15:40:14', 'exim', 'tambah data bc40 8 111111');
INSERT INTO `log` VALUES ('876', '2012-12-12 09:41:38', 'exim', 'logout');
INSERT INTO `log` VALUES ('877', '2012-12-12 15:41:42', 'bc', 'login');
INSERT INTO `log` VALUES ('878', '2012-12-12 09:43:17', 'bc', 'logout');
INSERT INTO `log` VALUES ('879', '2012-12-12 15:43:26', 'exim', 'login');
INSERT INTO `log` VALUES ('880', '2012-12-12 15:44:29', 'exim', 'ubah data bc40 8 111111');
INSERT INTO `log` VALUES ('881', '2012-12-12 09:45:45', 'exim', 'logout');
INSERT INTO `log` VALUES ('882', '2012-12-12 15:46:03', 'exim', 'login');
INSERT INTO `log` VALUES ('883', '2012-12-12 15:50:13', '', 'tambah data bc41 9 000003');
INSERT INTO `log` VALUES ('884', '2012-12-12 09:53:21', 'exim', 'logout');
INSERT INTO `log` VALUES ('885', '2012-12-12 15:53:32', 'admin', 'login');
INSERT INTO `log` VALUES ('886', '2012-12-12 10:09:05', 'admin', 'logout');
INSERT INTO `log` VALUES ('887', '2012-12-17 14:16:44', 'gudang', 'login');
INSERT INTO `log` VALUES ('888', '2012-12-17 08:19:12', 'gudang', 'logout');
INSERT INTO `log` VALUES ('889', '2012-12-17 14:44:16', 'admin', 'login');
INSERT INTO `log` VALUES ('890', '2012-12-17 14:44:42', 'admin', 'Delete wip 2 2012-12-12');
INSERT INTO `log` VALUES ('891', '2012-12-17 15:23:04', 'admin', 'login');
INSERT INTO `log` VALUES ('892', '2012-12-17 16:49:54', 'admin', 'login');
INSERT INTO `log` VALUES ('893', '2012-12-17 16:50:33', 'admin', 'Edit wip 2 2012-11-29');
INSERT INTO `log` VALUES ('894', '2012-12-17 17:08:08', 'admin', 'Delete wip 2 2012-11-29');
INSERT INTO `log` VALUES ('895', '2012-12-17 17:09:28', 'admin', 'Edit wip 2 2012-12-12');
INSERT INTO `log` VALUES ('896', '2012-12-17 17:09:51', 'admin', 'Edit wip 2 2012-12-12');
INSERT INTO `log` VALUES ('897', '2012-12-17 21:32:58', 'admin', 'login');
INSERT INTO `log` VALUES ('898', '2012-12-17 23:12:17', 'admin', 'Edit wip 2 2012-12-12');
INSERT INTO `log` VALUES ('899', '2012-12-17 23:12:55', 'admin', 'Edit wip 2 2012-12-12');
INSERT INTO `log` VALUES ('900', '2012-12-17 23:28:31', 'admin', 'Edit fg production result 3 2012-12-12');
INSERT INTO `log` VALUES ('901', '2012-12-17 23:41:31', 'admin', 'Add delivery order 2');
INSERT INTO `log` VALUES ('902', '2012-12-17 23:41:49', 'admin', 'Delete delivery order 2');
INSERT INTO `log` VALUES ('903', '2012-12-17 23:55:04', 'admin', 'Edit delivery order 1');
INSERT INTO `log` VALUES ('904', '2012-12-18 00:26:05', 'admin', 'login');
INSERT INTO `log` VALUES ('905', '2012-12-18 00:35:43', 'admin', 'Edit wip 2 2012-12-12');
INSERT INTO `log` VALUES ('906', '2012-12-18 00:39:02', 'admin', 'Edit fg production result 3 2012-12-12');
INSERT INTO `log` VALUES ('907', '2012-12-17 18:41:41', 'admin', 'logout');
INSERT INTO `log` VALUES ('908', '2012-12-19 09:57:00', 'admin', 'login');
INSERT INTO `log` VALUES ('909', '2012-12-19 11:08:31', 'admin', 'login');
INSERT INTO `log` VALUES ('910', '2012-12-19 11:09:23', 'admin', 'Delete fg production result 3 2012-11-29');
INSERT INTO `log` VALUES ('911', '2012-12-19 11:09:57', 'admin', 'Edit fg production result 3 2012-12-12');
INSERT INTO `log` VALUES ('912', '2012-12-19 13:15:48', 'admin', 'login');
INSERT INTO `log` VALUES ('913', '2012-12-19 07:16:14', 'admin', 'logout');
INSERT INTO `log` VALUES ('914', '2012-12-20 08:12:10', 'admin', 'login');
INSERT INTO `log` VALUES ('915', '2012-12-21 09:17:50', 'admin', 'login');
INSERT INTO `log` VALUES ('916', '2012-12-21 03:21:15', 'admin', 'logout');
INSERT INTO `log` VALUES ('917', '2012-12-21 09:21:26', 'admin', 'login');
INSERT INTO `log` VALUES ('918', '2012-12-21 03:23:37', 'admin', 'logout');
INSERT INTO `log` VALUES ('919', '2012-12-21 05:22:29', 'admin', 'logout');
INSERT INTO `log` VALUES ('920', '2012-12-21 13:25:15', 'admin', 'login');
INSERT INTO `log` VALUES ('921', '2012-12-21 15:33:10', 'admin', 'login');
INSERT INTO `log` VALUES ('922', '2012-12-21 21:36:23', 'admin', 'login');
INSERT INTO `log` VALUES ('923', '2012-12-21 21:38:10', 'admin', 'Add delivery order 2');
INSERT INTO `log` VALUES ('924', '2012-12-21 21:38:38', 'admin', 'Delete delivery order 1');
INSERT INTO `log` VALUES ('925', '2012-12-21 16:10:36', 'admin', 'logout');
INSERT INTO `log` VALUES ('926', '2012-12-22 08:19:45', 'admin', 'login');
INSERT INTO `log` VALUES ('927', '2012-12-22 14:24:21', 'admin', 'login');
INSERT INTO `log` VALUES ('928', '2012-12-22 14:58:24', 'admin', 'tambah data barang SC-0001');
INSERT INTO `log` VALUES ('929', '2012-12-22 22:15:17', 'admin', 'login');
INSERT INTO `log` VALUES ('930', '2012-12-22 22:16:15', 'admin', 'Add scrap out 7');
INSERT INTO `log` VALUES ('931', '2012-12-22 23:07:11', 'admin', 'Edit scrap out 7');
INSERT INTO `log` VALUES ('932', '2012-12-22 17:41:08', 'admin', 'logout');
INSERT INTO `log` VALUES ('933', '2012-12-23 20:36:54', 'admin', 'login');
INSERT INTO `log` VALUES ('934', '2012-12-24 09:35:47', 'admin', 'login');
INSERT INTO `log` VALUES ('935', '2012-12-24 10:15:24', 'admin', 'login');
INSERT INTO `log` VALUES ('936', '2012-12-24 11:35:53', 'admin', 'login');
INSERT INTO `log` VALUES ('937', '2012-12-24 12:13:38', 'admin', 'Add scrap in 3');
INSERT INTO `log` VALUES ('938', '2012-12-24 13:06:29', 'admin', 'login');
INSERT INTO `log` VALUES ('939', '2012-12-24 15:40:30', 'admin', 'login');
INSERT INTO `log` VALUES ('940', '2012-12-24 18:01:38', 'admin', 'login');
INSERT INTO `log` VALUES ('941', '2012-12-24 18:15:49', 'admin', 'ubah data barang SC-0001');
INSERT INTO `log` VALUES ('942', '2012-12-24 19:36:03', 'admin', 'login');
INSERT INTO `log` VALUES ('943', '2012-12-24 14:13:57', 'admin', 'logout');
INSERT INTO `log` VALUES ('944', '2012-12-24 21:10:39', 'admin', 'login');
INSERT INTO `log` VALUES ('945', '2012-12-25 05:53:40', 'admin', 'login');
INSERT INTO `log` VALUES ('946', '2012-12-25 10:05:40', 'admin', 'login');
INSERT INTO `log` VALUES ('947', '2012-12-25 11:42:47', 'admin', 'login');
INSERT INTO `log` VALUES ('948', '2012-12-25 13:53:45', 'admin', 'Delete stock opname 4');
INSERT INTO `log` VALUES ('949', '2012-12-25 13:54:24', 'admin', 'Add stock adjustment 6');
INSERT INTO `log` VALUES ('950', '2012-12-25 13:56:21', 'admin', 'Add stock adjustment 6');
INSERT INTO `log` VALUES ('951', '2012-12-25 14:57:45', 'admin', 'Add delivery order 8');
INSERT INTO `log` VALUES ('952', '2012-12-25 15:26:10', 'admin', 'Edit stock opname 5');
INSERT INTO `log` VALUES ('953', '2012-12-25 15:31:15', 'admin', 'Edit initial balance material 3 2012-11-29');
INSERT INTO `log` VALUES ('954', '2012-12-25 15:37:35', 'admin', 'Add stock adjustment 6');
INSERT INTO `log` VALUES ('955', '2012-12-25 19:02:23', 'admin', 'login');
INSERT INTO `log` VALUES ('956', '2012-12-25 20:48:14', 'admin', 'login');
INSERT INTO `log` VALUES ('957', '2012-12-25 21:03:57', 'admin', 'Edit delivery order 8');
INSERT INTO `log` VALUES ('958', '2012-12-25 21:34:46', 'admin', 'Edit delivery order 8');
INSERT INTO `log` VALUES ('959', '2012-12-25 21:39:56', 'admin', 'Edit matin 2');
INSERT INTO `log` VALUES ('960', '2012-12-25 22:02:37', 'admin', 'Edit delivery order 8');
INSERT INTO `log` VALUES ('961', '2012-12-25 22:02:55', 'admin', 'Edit matin 2');
INSERT INTO `log` VALUES ('962', '2012-12-25 23:16:43', 'admin', 'Edit delivery order 8');
INSERT INTO `log` VALUES ('963', '2012-12-25 23:44:13', 'admin', 'Edit matin 2');
INSERT INTO `log` VALUES ('964', '2012-12-25 23:46:09', 'admin', 'Add initial balance machine & office equipment 5 2012-11-29 12');
INSERT INTO `log` VALUES ('965', '2012-12-25 23:47:04', 'admin', 'Add scrap in 4');
INSERT INTO `log` VALUES ('966', '2012-12-26 08:56:55', 'admin', 'login');
INSERT INTO `log` VALUES ('967', '2013-01-02 12:38:35', 'admin', 'login');
INSERT INTO `log` VALUES ('968', '2013-01-02 12:46:00', 'admin', 'Delete outgoing material 6');
INSERT INTO `log` VALUES ('969', '2013-01-02 12:46:09', 'admin', 'Delete outgoing material 5');
INSERT INTO `log` VALUES ('970', '2013-01-02 12:46:41', 'admin', 'Add outgoing material 9');
INSERT INTO `log` VALUES ('971', '2013-01-06 22:49:54', 'admin', 'login');
INSERT INTO `log` VALUES ('972', '2013-01-07 00:09:28', 'admin', 'login');
INSERT INTO `log` VALUES ('973', '2013-01-08 20:59:25', 'admin', 'login');
INSERT INTO `log` VALUES ('974', '2013-01-08 22:57:37', 'admin', 'login');
INSERT INTO `log` VALUES ('975', '2013-01-09 20:41:14', 'admin', 'login');
INSERT INTO `log` VALUES ('976', '2013-01-09 21:18:19', 'admin', 'tambah data unit of items MT');
INSERT INTO `log` VALUES ('977', '2013-01-09 21:18:28', 'admin', 'tambah data unit of items EA');
INSERT INTO `log` VALUES ('978', '2013-01-09 22:48:43', 'admin', 'Edit outgoing material 17');
INSERT INTO `log` VALUES ('979', '2013-01-09 23:01:10', 'admin', 'Edit matin 7');
INSERT INTO `log` VALUES ('980', '2013-01-09 23:38:09', 'admin', 'Edit outgoing material 17');
INSERT INTO `log` VALUES ('981', '2013-01-09 17:40:58', 'admin', 'logout');
INSERT INTO `log` VALUES ('982', '2013-01-10 13:10:43', 'admin', 'Add matin 20');
INSERT INTO `log` VALUES ('983', '2013-01-10 13:17:47', 'admin', 'Delete fg production result 3 2012-12-12');
INSERT INTO `log` VALUES ('984', '2013-01-10 13:18:36', 'admin', 'Delete wip 2 2012-12-12');
INSERT INTO `log` VALUES ('985', '2013-01-10 13:21:39', 'admin', 'Delete matin 21');
INSERT INTO `log` VALUES ('986', '2013-01-10 13:23:16', 'admin', 'Edit matin 7');
INSERT INTO `log` VALUES ('987', '2013-01-10 13:25:33', 'admin', 'Delete outgoing material 44');
INSERT INTO `log` VALUES ('988', '2013-01-10 13:26:41', 'admin', 'Edit outgoing material 17');
INSERT INTO `log` VALUES ('989', '2013-01-10 13:30:19', 'admin', 'Edit matin 7');
INSERT INTO `log` VALUES ('990', '2013-01-10 13:40:43', 'admin', 'Delete matin 22');
INSERT INTO `log` VALUES ('991', '2013-01-10 15:18:26', 'admin', 'login');
INSERT INTO `log` VALUES ('992', '2013-01-10 15:19:19', 'admin', 'Add initial balance material 1 2013-01-01');
INSERT INTO `log` VALUES ('993', '2013-01-10 15:58:03', 'admin', 'Edit initial balance material 3 2013-01-01');
INSERT INTO `log` VALUES ('994', '2013-01-10 15:58:28', 'admin', 'Edit initial balance material 1 2013-01-01');
INSERT INTO `log` VALUES ('995', '2013-01-10 15:58:59', 'admin', 'Edit initial balance wip 2 2013-01-01');
INSERT INTO `log` VALUES ('996', '2013-01-10 16:48:04', 'admin', 'login');
INSERT INTO `log` VALUES ('997', '2013-01-10 16:50:53', 'admin', 'login');
INSERT INTO `log` VALUES ('998', '2013-01-10 17:10:54', 'admin', 'Edit matin 7');
INSERT INTO `log` VALUES ('999', '2013-01-11 08:42:44', 'exim', 'login');
INSERT INTO `log` VALUES ('1000', '2013-01-11 02:43:44', 'exim', 'logout');
INSERT INTO `log` VALUES ('1001', '2013-01-11 13:44:39', 'admin', 'login');
INSERT INTO `log` VALUES ('1002', '2013-01-11 13:52:42', 'admin', 'Edit matin 3');
INSERT INTO `log` VALUES ('1003', '2013-01-11 13:55:34', 'admin', 'Edit matin 3');
INSERT INTO `log` VALUES ('1004', '2013-01-11 13:56:19', 'admin', 'Edit matin 3');
INSERT INTO `log` VALUES ('1005', '2013-01-11 13:58:08', 'admin', 'Edit matin 2');
INSERT INTO `log` VALUES ('1006', '2013-01-11 13:58:50', 'admin', 'Edit matin 2');
INSERT INTO `log` VALUES ('1007', '2013-01-11 14:06:12', 'admin', 'Edit matin 1');
INSERT INTO `log` VALUES ('1008', '2013-01-11 14:07:31', 'admin', 'Delete matin 1');
INSERT INTO `log` VALUES ('1009', '2013-01-11 14:07:42', 'admin', 'Delete matin 2');
INSERT INTO `log` VALUES ('1010', '2013-01-11 14:09:00', 'admin', 'Delete matin 4');
INSERT INTO `log` VALUES ('1011', '2013-01-11 14:19:37', 'admin', 'Edit matin 5');
INSERT INTO `log` VALUES ('1012', '2013-01-11 14:54:07', 'admin', 'Edit matin 3');
INSERT INTO `log` VALUES ('1013', '2013-01-11 14:59:57', 'admin', 'Edit matin 2');
INSERT INTO `log` VALUES ('1014', '2013-01-11 15:02:25', 'admin', 'Edit matin 1');
INSERT INTO `log` VALUES ('1015', '2013-01-11 15:22:56', 'admin', 'Edit matin 11');
INSERT INTO `log` VALUES ('1016', '2013-01-11 15:26:25', 'admin', 'Edit matin 14');
INSERT INTO `log` VALUES ('1017', '2013-01-11 15:29:16', 'admin', 'add material CI04-00005A');
INSERT INTO `log` VALUES ('1018', '2013-01-11 15:32:02', 'admin', 'Edit matin 14');
INSERT INTO `log` VALUES ('1019', '2013-01-11 17:01:16', 'admin', 'login');
INSERT INTO `log` VALUES ('1020', '2013-01-11 17:23:26', 'admin', 'edit material CM04-00091A');
INSERT INTO `log` VALUES ('1021', '2013-01-11 17:24:26', 'admin', 'edit material CM04-00093A');
INSERT INTO `log` VALUES ('1022', '2013-01-11 17:24:52', 'admin', 'edit material CM06-00130A');
INSERT INTO `log` VALUES ('1023', '2013-01-11 17:43:06', 'admin', 'edit material CM39-01005B');
INSERT INTO `log` VALUES ('1024', '2013-01-11 17:43:53', 'admin', 'edit material CM39-01069A');
INSERT INTO `log` VALUES ('1025', '2013-01-11 17:44:38', 'admin', 'edit material CM41-01025A');
INSERT INTO `log` VALUES ('1026', '2013-01-11 17:45:11', 'admin', 'edit material CM41-01031C');
INSERT INTO `log` VALUES ('1027', '2013-01-11 17:45:34', 'admin', 'edit material CM41-01053A');
INSERT INTO `log` VALUES ('1028', '2013-01-11 17:46:39', 'admin', 'edit material CM51-00411B');
INSERT INTO `log` VALUES ('1029', '2013-01-11 17:48:28', 'admin', 'edit material CM60-00055A');
INSERT INTO `log` VALUES ('1030', '2013-01-11 17:49:32', 'admin', 'edit material CM61-00388A');
INSERT INTO `log` VALUES ('1031', '2013-01-11 17:50:45', 'admin', 'edit material CM61-00389A');
INSERT INTO `log` VALUES ('1032', '2013-01-11 17:51:02', 'admin', 'edit material CM61-00389A');
INSERT INTO `log` VALUES ('1033', '2013-01-11 17:51:19', 'admin', 'edit material CM61-00389A');
INSERT INTO `log` VALUES ('1034', '2013-01-11 17:52:30', 'admin', 'edit material CM61-00391B');
INSERT INTO `log` VALUES ('1035', '2013-01-11 17:53:28', 'admin', 'edit material CM61-00396A');
INSERT INTO `log` VALUES ('1036', '2013-01-11 17:54:58', 'admin', 'edit material CM13-00192A');
INSERT INTO `log` VALUES ('1037', '2013-01-11 17:55:39', 'admin', 'edit material CT90-00046A-H2');
INSERT INTO `log` VALUES ('1038', '2013-01-11 17:56:54', 'admin', 'edit material CM06-00176A');
INSERT INTO `log` VALUES ('1039', '2013-01-11 17:57:21', 'admin', 'edit material CM34-00056A');
INSERT INTO `log` VALUES ('1040', '2013-01-11 17:59:14', 'admin', 'edit material CM22-00429A');
INSERT INTO `log` VALUES ('1041', '2013-01-11 18:21:52', 'admin', 'Add matin 16');
INSERT INTO `log` VALUES ('1042', '2013-01-11 18:25:50', 'admin', 'Delete matin 16');
INSERT INTO `log` VALUES ('1043', '2013-01-11 18:29:02', 'admin', 'Delete matin 15');
INSERT INTO `log` VALUES ('1044', '2013-01-11 18:31:58', 'admin', 'Edit matin 17');
INSERT INTO `log` VALUES ('1045', '2013-01-11 18:56:46', 'admin', 'Edit matin 17');
INSERT INTO `log` VALUES ('1046', '2013-01-12 08:16:00', 'admin', 'login');
INSERT INTO `log` VALUES ('1047', '2013-01-12 08:20:11', 'admin', 'Edit matin 1');
INSERT INTO `log` VALUES ('1048', '2013-01-12 08:21:02', 'admin', 'Edit matin 1');
INSERT INTO `log` VALUES ('1049', '2013-01-12 08:32:18', 'admin', 'Edit matin 1');
INSERT INTO `log` VALUES ('1050', '2013-01-12 08:32:48', 'admin', 'Edit matin 1');
INSERT INTO `log` VALUES ('1051', '2013-01-12 08:55:53', 'admin', 'Edit matin 17');
INSERT INTO `log` VALUES ('1052', '2013-01-12 08:57:09', 'admin', 'Edit matin 5');
INSERT INTO `log` VALUES ('1053', '2013-01-12 09:11:00', 'admin', 'Delete outgoing material 41');
INSERT INTO `log` VALUES ('1054', '2013-01-12 09:11:28', 'admin', 'Delete outgoing material 24');
INSERT INTO `log` VALUES ('1055', '2013-01-12 09:11:40', 'admin', 'Delete outgoing material 25');
INSERT INTO `log` VALUES ('1056', '2013-01-12 09:11:51', 'admin', 'Delete outgoing material 26');
INSERT INTO `log` VALUES ('1057', '2013-01-12 09:12:04', 'admin', 'Delete outgoing material 27');
INSERT INTO `log` VALUES ('1058', '2013-01-12 09:12:19', 'admin', 'Delete outgoing material 28');
INSERT INTO `log` VALUES ('1059', '2013-01-12 09:12:31', 'admin', 'Delete outgoing material 29');
INSERT INTO `log` VALUES ('1060', '2013-01-12 09:12:43', 'admin', 'Delete outgoing material 30');
INSERT INTO `log` VALUES ('1061', '2013-01-12 09:12:53', 'admin', 'Delete outgoing material 31');
INSERT INTO `log` VALUES ('1062', '2013-01-12 09:13:14', 'admin', 'Delete outgoing material 32');
INSERT INTO `log` VALUES ('1063', '2013-01-12 09:13:31', 'admin', 'Delete outgoing material 33');
INSERT INTO `log` VALUES ('1064', '2013-01-12 09:13:43', 'admin', 'Delete outgoing material 6');
INSERT INTO `log` VALUES ('1065', '2013-01-12 09:13:53', 'admin', 'Delete outgoing material 35');
INSERT INTO `log` VALUES ('1066', '2013-01-12 09:14:06', 'admin', 'Delete outgoing material 36');
INSERT INTO `log` VALUES ('1067', '2013-01-12 09:14:20', 'admin', 'Delete outgoing material 37');
INSERT INTO `log` VALUES ('1068', '2013-01-12 09:14:30', 'admin', 'Delete outgoing material 38');
INSERT INTO `log` VALUES ('1069', '2013-01-12 09:14:41', 'admin', 'Delete outgoing material 39');
INSERT INTO `log` VALUES ('1070', '2013-01-12 09:14:51', 'admin', 'Delete outgoing material 40');
INSERT INTO `log` VALUES ('1071', '2013-01-12 09:15:01', 'admin', 'Delete outgoing material 7');
INSERT INTO `log` VALUES ('1072', '2013-01-12 09:15:12', 'admin', 'Delete outgoing material 8');
INSERT INTO `log` VALUES ('1073', '2013-01-12 09:15:23', 'admin', 'Delete outgoing material 9');
INSERT INTO `log` VALUES ('1074', '2013-01-12 09:15:33', 'admin', 'Delete outgoing material 10');
INSERT INTO `log` VALUES ('1075', '2013-01-12 09:15:42', 'admin', 'Delete outgoing material 11');
INSERT INTO `log` VALUES ('1076', '2013-01-12 09:15:53', 'admin', 'Delete outgoing material 17');
INSERT INTO `log` VALUES ('1077', '2013-01-12 09:16:04', 'admin', 'Delete outgoing material 23');
INSERT INTO `log` VALUES ('1078', '2013-01-12 09:16:14', 'admin', 'Delete outgoing material 1');
INSERT INTO `log` VALUES ('1079', '2013-01-12 09:16:27', 'admin', 'Delete outgoing material 2');
INSERT INTO `log` VALUES ('1080', '2013-01-12 09:16:36', 'admin', 'Delete outgoing material 3');
INSERT INTO `log` VALUES ('1081', '2013-01-12 09:16:44', 'admin', 'Delete outgoing material 4');
INSERT INTO `log` VALUES ('1082', '2013-01-12 09:16:52', 'admin', 'Delete outgoing material 5');
INSERT INTO `log` VALUES ('1083', '2013-01-12 09:17:06', 'admin', 'Delete outgoing material 12');
INSERT INTO `log` VALUES ('1084', '2013-01-12 09:17:20', 'admin', 'Delete outgoing material 13');
INSERT INTO `log` VALUES ('1085', '2013-01-12 09:17:44', 'admin', 'Delete outgoing material 14');
INSERT INTO `log` VALUES ('1086', '2013-01-12 09:17:53', 'admin', 'Delete outgoing material 15');
INSERT INTO `log` VALUES ('1087', '2013-01-12 09:18:04', 'admin', 'Delete outgoing material 16');
INSERT INTO `log` VALUES ('1088', '2013-01-12 09:18:13', 'admin', 'Delete outgoing material 18');
INSERT INTO `log` VALUES ('1089', '2013-01-12 09:18:24', 'admin', 'Delete outgoing material 19');
INSERT INTO `log` VALUES ('1090', '2013-01-12 09:18:37', 'admin', 'Delete outgoing material 20');
INSERT INTO `log` VALUES ('1091', '2013-01-12 09:18:47', 'admin', 'Delete outgoing material 21');
INSERT INTO `log` VALUES ('1092', '2013-01-12 09:18:59', 'admin', 'Delete outgoing material 22');
INSERT INTO `log` VALUES ('1093', '2013-01-12 09:19:07', 'admin', 'Delete outgoing material 34');
INSERT INTO `log` VALUES ('1094', '2013-01-12 10:11:24', 'admin', 'Add delivery order 59');
INSERT INTO `log` VALUES ('1095', '2013-01-12 10:19:41', 'admin', 'Add delivery order 60');
INSERT INTO `log` VALUES ('1096', '2013-01-12 10:21:26', 'admin', 'Add delivery order 61');
INSERT INTO `log` VALUES ('1097', '2013-01-12 12:20:31', 'admin', 'login');
INSERT INTO `log` VALUES ('1098', '2013-01-12 12:24:36', 'admin', 'Edit matin 6');
INSERT INTO `log` VALUES ('1099', '2013-01-12 12:30:34', 'admin', 'login');
INSERT INTO `log` VALUES ('1100', '2013-01-12 12:33:12', 'admin', 'Edit matin 5');
INSERT INTO `log` VALUES ('1101', '2013-01-12 12:34:24', 'admin', 'Edit delivery order 61');
INSERT INTO `log` VALUES ('1102', '2013-01-14 09:09:08', 'admin', 'logout');
INSERT INTO `log` VALUES ('1103', '2013-01-14 15:11:21', 'admin', 'login');
INSERT INTO `log` VALUES ('1104', '2013-01-14 09:11:48', 'admin', 'logout');
INSERT INTO `log` VALUES ('1105', '2013-01-14 16:12:41', 'admin', 'login');
INSERT INTO `log` VALUES ('1106', '2013-01-14 10:24:03', 'admin', 'logout');
INSERT INTO `log` VALUES ('1107', '2013-01-14 16:24:17', 'admin', 'login');
INSERT INTO `log` VALUES ('1108', '2013-01-14 10:24:21', 'admin', 'logout');
INSERT INTO `log` VALUES ('1109', '2013-01-14 16:36:04', 'admin', 'login');

-- ----------------------------
-- Table structure for `mat_group`
-- ----------------------------
DROP TABLE IF EXISTS `mat_group`;
CREATE TABLE `mat_group` (
  `matgroup_code` varchar(4) NOT NULL,
  `matgroup_name` varchar(30) DEFAULT NULL,
  `HsNo` varchar(20) DEFAULT NULL,
  `desc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`matgroup_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mat_group
-- ----------------------------
INSERT INTO `mat_group` VALUES ('CNS', 'CONSUMABLES', '-', '-');
INSERT INTO `mat_group` VALUES ('HRN', 'HARNESS', '-', '-');
INSERT INTO `mat_group` VALUES ('MCH', 'MACHINE', '-', '-');
INSERT INTO `mat_group` VALUES ('PBA', 'ASSEMBLY', '-', '-');
INSERT INTO `mat_group` VALUES ('RMO', 'Others', '-', '-');

-- ----------------------------
-- Table structure for `mat_incdet`
-- ----------------------------
DROP TABLE IF EXISTS `mat_incdet`;
CREATE TABLE `mat_incdet` (
  `matin_id` int(10) NOT NULL DEFAULT '0' COMMENT 'Nomor ID Transaksi Incoming Material',
  `child_no` int(10) NOT NULL DEFAULT '0' COMMENT 'Nomor Item di Transaksi Detail',
  `mat_id` varchar(20) NOT NULL DEFAULT '0' COMMENT 'ID Material Yang Masuk',
  `weight` decimal(9,2) DEFAULT NULL,
  `qty` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT 'Jumlah Quantity Saat Masuk',
  `price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`matin_id`,`child_no`),
  CONSTRAINT `mat_incdet_ibfk_1` FOREIGN KEY (`matin_id`) REFERENCES `mat_inchdr` (`matin_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Detail Transaksi Incoming Material';

-- ----------------------------
-- Records of mat_incdet
-- ----------------------------
INSERT INTO `mat_incdet` VALUES ('1', '1', 'HA04-00084AA', null, '100000.00', '117.0000');
INSERT INTO `mat_incdet` VALUES ('1', '2', 'HA04-00091AA', null, '200000.00', '166.0000');
INSERT INTO `mat_incdet` VALUES ('1', '3', 'HA03-00024AA', null, '2800.00', '25.0000');
INSERT INTO `mat_incdet` VALUES ('1', '4', 'HA03-00039AA', null, '980000.00', '43.0000');
INSERT INTO `mat_incdet` VALUES ('1', '5', 'CM51-00411B', null, '21600.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('1', '6', 'HA09-00001AA', null, '27000.00', '75.0000');
INSERT INTO `mat_incdet` VALUES ('2', '1', 'HA02-00062AA', null, '20130.00', '2188.0000');
INSERT INTO `mat_incdet` VALUES ('2', '2', 'HA02-00049AA', null, '120170.00', '2525.0000');
INSERT INTO `mat_incdet` VALUES ('2', '3', 'HA02-00063AA', null, '30195.00', '2888.0000');
INSERT INTO `mat_incdet` VALUES ('3', '1', 'HA05-00009AB', null, '5000.00', '606.0000');
INSERT INTO `mat_incdet` VALUES ('3', '2', 'HA05-00025AB', null, '7800.00', '292.0000');
INSERT INTO `mat_incdet` VALUES ('3', '3', 'HA05-00010AB', null, '1500.00', '633.0000');
INSERT INTO `mat_incdet` VALUES ('3', '4', 'HA09-00001AA', null, '9200.00', '88.0000');
INSERT INTO `mat_incdet` VALUES ('3', '5', 'HA03-00027AA', null, '308000.00', '32.0000');
INSERT INTO `mat_incdet` VALUES ('3', '6', 'HA04-00092AA', null, '30000.00', '204.0000');
INSERT INTO `mat_incdet` VALUES ('3', '7', 'HA04-00102AA', null, '320000.00', '103.0000');
INSERT INTO `mat_incdet` VALUES ('3', '8', 'HA03-00012AA', null, '3640.00', '22.0000');
INSERT INTO `mat_incdet` VALUES ('5', '1', 'HA04-00091AA', null, '400000.00', '0.0600');
INSERT INTO `mat_incdet` VALUES ('6', '1', 'CI02-00001A', null, '26000.00', '31.9300');
INSERT INTO `mat_incdet` VALUES ('6', '2', 'CI02-00003A', null, '36000.00', '59.0200');
INSERT INTO `mat_incdet` VALUES ('7', '1', 'CI03-00003A', null, '5000.00', '380.0000');
INSERT INTO `mat_incdet` VALUES ('11', '1', 'CI08-00002A', null, '60.00', '836013.4200');
INSERT INTO `mat_incdet` VALUES ('14', '1', 'CI04-00003A', null, '7000.00', '4714.1600');
INSERT INTO `mat_incdet` VALUES ('14', '2', 'CI04-00005A', null, '6000.00', '3929.1200');
INSERT INTO `mat_incdet` VALUES ('17', '1', 'CM04-00091A', null, '162000.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '2', 'CM04-00093A', null, '100000.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '3', 'CM06-00130A', null, '20000.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '4', 'CM06-00176A', null, '42000.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '5', 'CM11-00103B', null, '26000.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '6', 'CM20-00001A', null, '65000.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '7', 'CM20-00003A', null, '50000.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '8', 'CM20-00004A', null, '40000.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '9', 'CM20-00087A', null, '160000.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '10', 'CM20-00107A', null, '40000.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '11', 'CM20-00129A', null, '40000.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '12', 'CM20-00340A', null, '40000.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '13', 'CM20-00445A', null, '20000.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '14', 'CM20-00446A', null, '60000.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '15', 'CM20-00502A', null, '40000.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '16', 'CM20-00509A', null, '120000.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '17', 'CM22-00341A', null, '20000.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '18', 'CM22-00346A', null, '40000.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '19', 'CM22-00429A', null, '40000.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '20', 'CM22-00431A', null, '40000.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '21', 'CM22-00434A', null, '28000.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '22', 'CM32-00042A', null, '46800.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '23', 'CM34-00055A', null, '20800.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '24', 'CM34-00056A', null, '12470.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '25', 'CM39-01005B', null, '14995.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '26', 'CM39-01069A', null, '13465.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '27', 'CM41-01025A', null, '19990.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '28', 'CM41-01031C', null, '25548.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '29', 'CM41-01053A', null, '15000.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '30', 'CM51-00411B', null, '20000.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '31', 'CM60-00055A', null, '26000.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '32', 'CM61-00388A', null, '50398.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '33', 'CM61-00389B', null, '51000.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '34', 'CM61-00391B', null, '15000.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '35', 'CM61-00396A', null, '20000.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '36', 'CM13-00192A', null, '27998.00', '0.0000');
INSERT INTO `mat_incdet` VALUES ('17', '37', 'CT90-00046A-H2', null, '20000.00', '0.0000');

-- ----------------------------
-- Table structure for `mat_inchdr`
-- ----------------------------
DROP TABLE IF EXISTS `mat_inchdr`;
CREATE TABLE `mat_inchdr` (
  `matin_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Nomor ID Incoming',
  `matin_type` enum('0','1','2','3') DEFAULT '0' COMMENT '0=purchase,1=replacement,2=from production,3=scrap',
  `matin_no` varchar(30) NOT NULL COMMENT 'Nomor Transaksi Masuk Barang',
  `matin_date` date NOT NULL COMMENT 'Tanggal dan Jam Kedatangan Barang',
  `mat_type` int(2) DEFAULT NULL,
  `currency` varchar(3) DEFAULT NULL,
  `po_id` int(10) NOT NULL DEFAULT '0' COMMENT 'Nomor ID Purchase Order',
  `po_no` varchar(30) DEFAULT NULL,
  `wh_id` int(2) NOT NULL DEFAULT '0' COMMENT 'Gudang Tempat Menyimpan Barang',
  `supplier` varchar(50) DEFAULT NULL,
  `supl_do` varchar(20) NOT NULL DEFAULT '' COMMENT 'Nomor Surat Jalan dari Supplier',
  `supl_inv` varchar(20) DEFAULT NULL,
  `KdJnsDok` tinyint(1) DEFAULT NULL,
  `NoDaf` varchar(6) DEFAULT NULL,
  `TgDaf` date DEFAULT NULL,
  `tot_qty` decimal(9,0) NOT NULL DEFAULT '0' COMMENT 'Jumlah Dalam Bentuang Rupiah',
  `tot_amount` decimal(15,4) DEFAULT NULL,
  `notes` varchar(80) NOT NULL DEFAULT '' COMMENT 'Catatan dari Kedatangan Barang',
  PRIMARY KEY (`matin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COMMENT='Header Incoming Material';

-- ----------------------------
-- Records of mat_inchdr
-- ----------------------------
INSERT INTO `mat_inchdr` VALUES ('1', '0', 'PM1301040001', '2013-01-04', null, 'Rp', '0', 'PO1301040002', '0', 'Hyubjin Cable(Tianjin)', '', 'HJYN1212-11A', '1', '000427', '2013-01-02', '0', null, '');
INSERT INTO `mat_inchdr` VALUES ('2', '0', 'PM1301090002', '2013-01-09', null, 'Rp', '0', 'PO1301090001', '0', 'Hyubjin Cable(Tianjin)', '', 'HJYN1212-08V-XY', '1', '000697', '2013-01-02', '0', null, '');
INSERT INTO `mat_inchdr` VALUES ('3', '0', 'PM1301090003', '2013-01-09', null, 'Rp', '0', 'PO1301090002', '0', 'Hyubjin Cable(Tianjin)', '', 'HJYN1212-02V', '1', '001040', '2013-01-03', '0', null, '');
INSERT INTO `mat_inchdr` VALUES ('5', '0', 'PM1301100001', '2013-01-10', null, 'Rp', '0', 'PO1301100001', '0', 'HYUB JIN CABLE (TIANJIN) CO., LTD', '', 'HJYN1301-5A', '1', '002913', '2013-01-08', '0', null, '');
INSERT INTO `mat_inchdr` VALUES ('6', '0', 'PM1301050006', '2013-01-05', null, 'USD', '0', 'PO1301050001', '0', 'PT. KAILO', '', '', '0', '', '0000-00-00', '0', null, '');
INSERT INTO `mat_inchdr` VALUES ('7', '0', 'PM1301030007', '2013-01-03', null, null, '0', 'PO1301030001', '0', 'CV. ARTA JAYA\n TEHNIK', '', null, null, null, null, '0', null, '');
INSERT INTO `mat_inchdr` VALUES ('11', '0', 'PM1301080011', '2013-01-10', null, 'Rp', '0', 'PO1301080003', '0', 'Chemtronics(Korea)', '', 'JK130107-A', '1', '002470', '2013-01-08', '0', null, '');
INSERT INTO `mat_inchdr` VALUES ('14', '0', 'PM1301080014', '2013-01-08', null, 'Rp', '0', 'PO1301080002', '0', 'Chemtronics(Korea)', '', 'JK121221-O', '1', '001593', '2013-01-04', '0', null, '');
INSERT INTO `mat_inchdr` VALUES ('17', '0', 'PM1301020001', '2013-01-02', null, 'Rp', '0', '', '0', 'CHEMTRONICS CO.,LTD', '', 'JKPT121210-O', '1', '153821', '2012-12-26', '0', null, '');

-- ----------------------------
-- Table structure for `mat_opnamedet`
-- ----------------------------
DROP TABLE IF EXISTS `mat_opnamedet`;
CREATE TABLE `mat_opnamedet` (
  `opname_id` int(10) NOT NULL,
  `child_no` int(10) NOT NULL,
  `mat_id` varchar(8) NOT NULL,
  `qty` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT 'jumlah stok opname',
  `qty_bal` decimal(12,2) DEFAULT NULL,
  `qty_diff` decimal(12,2) DEFAULT NULL,
  `qty_in` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT 'adjustment (tambah)',
  `qty_out` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT 'adjustment (kurang)',
  PRIMARY KEY (`opname_id`,`child_no`),
  CONSTRAINT `mat_opnamedet_ibfk_1` FOREIGN KEY (`opname_id`) REFERENCES `mat_opnamehdr` (`opname_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mat_opnamedet
-- ----------------------------

-- ----------------------------
-- Table structure for `mat_opnamehdr`
-- ----------------------------
DROP TABLE IF EXISTS `mat_opnamehdr`;
CREATE TABLE `mat_opnamehdr` (
  `opname_id` int(10) NOT NULL AUTO_INCREMENT,
  `opname_date` date NOT NULL,
  `wh_id` int(10) NOT NULL COMMENT 'Warehouse ID',
  `mat_type` enum('0','1','2') DEFAULT NULL COMMENT '0= Finished Goods, 1= material, 2=wip',
  `tot_qty` decimal(12,2) DEFAULT NULL,
  `status` enum('0','1') DEFAULT '0' COMMENT '0=opname,1=adjust',
  `notes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`opname_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mat_opnamehdr
-- ----------------------------

-- ----------------------------
-- Table structure for `mat_outdet`
-- ----------------------------
DROP TABLE IF EXISTS `mat_outdet`;
CREATE TABLE `mat_outdet` (
  `matout_id` int(10) NOT NULL DEFAULT '0' COMMENT 'ID Transaksi OutGoing Material',
  `child_no` int(10) NOT NULL DEFAULT '0' COMMENT 'Nomor Item detail OutGoing',
  `mat_id` varchar(20) NOT NULL DEFAULT '0' COMMENT 'ID Material Yang Dikeluarkan',
  `weight` decimal(9,2) DEFAULT NULL,
  `qty` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT 'Jumlah Quantity yang dikeluarkan',
  `price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`matout_id`,`child_no`),
  KEY `MAT_ID` (`matout_id`,`child_no`),
  CONSTRAINT `mat_outdet_ibfk_1` FOREIGN KEY (`matout_id`) REFERENCES `mat_outhdr` (`matout_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Detail Transaksi Outgoing Material';

-- ----------------------------
-- Records of mat_outdet
-- ----------------------------
INSERT INTO `mat_outdet` VALUES ('59', '1', 'CT11-00882B', '0.00', '9211.00', '0.1700');
INSERT INTO `mat_outdet` VALUES ('59', '2', 'CT15-00468C', '0.00', '12480.00', '0.1200');
INSERT INTO `mat_outdet` VALUES ('59', '3', 'CT15-00412J', '0.00', '5760.00', '0.4400');
INSERT INTO `mat_outdet` VALUES ('59', '4', 'CT15-00414J', '0.00', '3240.00', '0.4200');
INSERT INTO `mat_outdet` VALUES ('60', '1', 'CT11-00882B', '0.00', '10800.00', '0.1700');
INSERT INTO `mat_outdet` VALUES ('60', '2', 'CT15-00412J', '0.00', '3600.00', '0.4400');
INSERT INTO `mat_outdet` VALUES ('60', '3', 'CT15-00414J', '0.00', '2880.00', '0.4200');
INSERT INTO `mat_outdet` VALUES ('61', '1', 'CT15-00414J', '0.00', '8280.00', '0.4200');

-- ----------------------------
-- Table structure for `mat_outhdr`
-- ----------------------------
DROP TABLE IF EXISTS `mat_outhdr`;
CREATE TABLE `mat_outhdr` (
  `matout_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID Transaksi OutGoing Material',
  `matout_type` enum('0','1','2','3') DEFAULT '0' COMMENT '0=Consumption, 1=Return, 2=From Production, 3=scrap',
  `matout_no` varchar(20) NOT NULL DEFAULT '' COMMENT 'Nomor Transaksi Pengeluaran',
  `matout_date` date NOT NULL COMMENT 'Tanggal dan Jam PengeluaranMaterial',
  `mat_type` int(2) DEFAULT NULL,
  `ref_id` int(10) DEFAULT NULL,
  `ref_no` varchar(20) DEFAULT NULL,
  `cust` varchar(50) NOT NULL DEFAULT '0' COMMENT 'Digunakan Jika Out Type T',
  `vehicle_no` varchar(15) NOT NULL DEFAULT '0' COMMENT 'Digunakan Jika Out Type T',
  `driver` varchar(30) DEFAULT NULL,
  `tot_qty` decimal(12,2) DEFAULT NULL,
  `tot_amount` decimal(15,4) DEFAULT NULL,
  `notes` char(80) NOT NULL DEFAULT '' COMMENT 'Catatan Pengeluaran',
  `KdJnsDok` tinyint(1) DEFAULT NULL,
  `NoDaf` varchar(6) DEFAULT NULL,
  `TgDaf` date DEFAULT NULL,
  PRIMARY KEY (`matout_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1 COMMENT='Header Transaksi Outgoing Material';

-- ----------------------------
-- Records of mat_outhdr
-- ----------------------------
INSERT INTO `mat_outhdr` VALUES ('42', '0', 'Stock Transfer Betwe', '0000-00-00', null, null, '0\00\00', '', '0', null, null, null, '', null, null, null);
INSERT INTO `mat_outhdr` VALUES ('43', '0', 'Stock Transfer Betwe', '0000-00-00', null, null, '0\00\00', '', '0', null, null, null, '', null, null, null);
INSERT INTO `mat_outhdr` VALUES ('44', '0', 'Stock Transfer Betwe', '0000-00-00', null, null, '0\00\00', '', '0', null, null, null, '', null, null, null);
INSERT INTO `mat_outhdr` VALUES ('45', '0', 'Stock Transfer Betwe', '0000-00-00', null, null, '0\00\00', '', '0', null, null, null, '', null, null, null);
INSERT INTO `mat_outhdr` VALUES ('46', '0', 'Stock Transfer Betwe', '0000-00-00', null, null, '0\00\00', '', '0', null, null, null, '', null, null, null);
INSERT INTO `mat_outhdr` VALUES ('47', '0', 'Stock Transfer Betwe', '0000-00-00', null, null, '0\00\00', '', '0', null, null, null, '', null, null, null);
INSERT INTO `mat_outhdr` VALUES ('48', '0', 'Stock Transfer Betwe', '0000-00-00', null, null, '0\00\00', '', '0', null, null, null, '', null, null, null);
INSERT INTO `mat_outhdr` VALUES ('49', '0', 'Stock Transfer Betwe', '0000-00-00', null, null, '0\00\00', '', '0', null, null, null, '', null, null, null);
INSERT INTO `mat_outhdr` VALUES ('50', '0', 'Stock Transfer Betwe', '0000-00-00', null, null, '0\00\00', '', '0', null, null, null, '', null, null, null);
INSERT INTO `mat_outhdr` VALUES ('51', '0', 'Stock Transfer Betwe', '0000-00-00', null, null, '0\00\00', '', '0', null, null, null, '', null, null, null);
INSERT INTO `mat_outhdr` VALUES ('52', '0', 'Stock Transfer Betwe', '0000-00-00', null, null, '0\00\00', '', '0', null, null, null, '', null, null, null);
INSERT INTO `mat_outhdr` VALUES ('53', '0', 'Stock Transfer Betwe', '0000-00-00', null, null, '0\00\00', '', '0', null, null, null, '', null, null, null);
INSERT INTO `mat_outhdr` VALUES ('54', '0', 'Stock Transfer Betwe', '0000-00-00', null, null, '0\00\00', '', '0', null, null, null, '', null, null, null);
INSERT INTO `mat_outhdr` VALUES ('55', '0', 'Stock Transfer Betwe', '0000-00-00', null, null, '0\00\00', '', '0', null, null, null, '', null, null, null);
INSERT INTO `mat_outhdr` VALUES ('56', '0', 'Stock Transfer Betwe', '0000-00-00', null, null, '0\00\00', '', '0', null, null, null, '', null, null, null);
INSERT INTO `mat_outhdr` VALUES ('57', '0', 'Stock Transfer Betwe', '0000-00-00', null, null, '0\00\00', '', '0', null, null, null, '', null, null, null);
INSERT INTO `mat_outhdr` VALUES ('58', '0', '', '0000-00-00', null, null, '', '', '0', null, null, null, '', null, null, null);
INSERT INTO `mat_outhdr` VALUES ('59', '0', 'BN1301050001', '2013-01-05', '0', '0', '', 'CHEMTRONICS CO.,LTD', '', '', '30691.00', '6958.6700', '', '7', null, null);
INSERT INTO `mat_outhdr` VALUES ('60', '0', 'BN1301050002', '2013-01-05', '0', '0', '', 'CHEMTRONICS CO.,LTD', '', '', '17280.00', '4629.6000', '', '7', null, null);
INSERT INTO `mat_outhdr` VALUES ('61', '0', 'BN1301080001', '2013-01-08', '0', '0', '', 'CHEMTRONICS CO.,LTD', '', '', '8280.00', '3477.6000', '', '7', null, null);

-- ----------------------------
-- Table structure for `mat_stockcard`
-- ----------------------------
DROP TABLE IF EXISTS `mat_stockcard`;
CREATE TABLE `mat_stockcard` (
  `kd_fac` char(2) NOT NULL DEFAULT '' COMMENT 'Kode Factory',
  `wh_id` int(10) NOT NULL DEFAULT '0' COMMENT 'Warehouse ID',
  `mat_type` tinyint(2) NOT NULL DEFAULT '0',
  `mat_id` varchar(20) NOT NULL DEFAULT '0' COMMENT 'ID Material',
  `date` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Tanggal dan Waktu Transaksi',
  `type` varchar(1) NOT NULL DEFAULT 'B' COMMENT 'B=Begining,I=Incoming,O=Outgoing,R=Retur,D=Damage/Missing',
  `weight` decimal(9,2) NOT NULL DEFAULT '0.00',
  `qty` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT 'Jumlah Quantity Transaksi',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Harga Satuan Transaksi',
  `qty_bal` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT 'Jumlah Quantity Saldo',
  `amt_bal` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT 'Jumlah Amount Rupiah Saldo',
  `remark` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`kd_fac`,`wh_id`,`mat_id`,`date`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Transaksi Stock Card';

-- ----------------------------
-- Records of mat_stockcard
-- ----------------------------
INSERT INTO `mat_stockcard` VALUES ('01', '3', '0', 'BN96-26401C', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '3', '0', 'BN96-26401B', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '3', '0', 'BN96-23845E', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '3', '0', 'BN96-22413D', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '3', '0', 'BN96-22413B', '2013-01-01', 'B', '0.00', '7920.00', '0.0000', '7920.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '3', '0', 'BN96-21731B', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '3', '0', 'BN39-01629A', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'HA04-00104AA', '2013-01-01', 'B', '0.00', '11000.00', '0.0000', '11000.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'HA04-00102AA', '2013-01-01', 'B', '0.00', '200000.00', '0.0000', '200000.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'HA04-00100AA', '2013-01-01', 'B', '0.00', '32442.00', '0.0000', '32442.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'HA04-00092AA', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'HA04-00091AA', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'HA04-00090AA', '2013-01-01', 'B', '0.00', '8000.00', '0.0000', '8000.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'HA04-00073AA', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'HA04-00071AA', '2013-01-01', 'B', '0.00', '30000.00', '0.0000', '30000.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'HA03-00031AA', '2013-01-01', 'B', '0.00', '2900.00', '0.0000', '2900.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'HA03-00024AA', '2013-01-01', 'B', '0.00', '2000.00', '0.0000', '2000.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'HA03-00023AA', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'HA03-00012AA', '2013-01-01', 'B', '0.00', '1960.00', '0.0000', '1960.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'HA03-00011AA', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'HA02-00057AA', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'HA02-00055AA', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'HA02-00049AA', '2013-01-01', 'B', '0.00', '65270.00', '0.0000', '65270.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'HA02-00004AA', '2013-01-01', 'B', '0.00', '50000.00', '0.0000', '50000.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'HA01-00013AA', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'HA01-00012AA', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'HA01-00007AA', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'HA01-00006AA', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CT90-00046A-H2', '2013-01-01', 'B', '0.00', '5259.00', '0.0000', '5259.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM61-00396A', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM61-00395B', '2013-01-01', 'B', '0.00', '13998.00', '0.0000', '13998.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM61-00391B', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM61-00389B', '2013-01-01', 'B', '0.00', '5992.00', '0.0000', '5992.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM61-00388A', '2013-01-01', 'B', '0.00', '1118.00', '0.0000', '1118.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM60-00055A', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM51-00411B', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM51-00411A', '2013-01-01', 'B', '0.00', '4770.00', '0.0000', '4770.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM41-01053A', '2013-01-01', 'B', '0.00', '6132.00', '0.0000', '6132.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM41-01031C', '2013-01-01', 'B', '0.00', '5796.00', '0.0000', '5796.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM41-01025A', '2013-01-01', 'B', '0.00', '7770.00', '0.0000', '7770.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM39-01069A', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM39-01010A', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM39-01009A', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM39-01005B', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM34-00056A', '2013-01-01', 'B', '0.00', '10970.00', '0.0000', '10970.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM34-00055A', '2013-01-01', 'B', '0.00', '35097.00', '0.0000', '35097.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM34-00052C', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM32-00042A', '2013-01-01', 'B', '0.00', '7200.00', '0.0000', '7200.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM22-00434A', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM22-00431A', '2013-01-01', 'B', '0.00', '8000.00', '0.0000', '8000.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM22-00429A', '2013-01-01', 'B', '0.00', '20000.00', '0.0000', '20000.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM22-00346A', '2013-01-01', 'B', '0.00', '11540.00', '0.0000', '11540.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM22-00341A', '2013-01-01', 'B', '0.00', '19230.00', '0.0000', '19230.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM20-1608ALL', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM20-1005ALL', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM20-00509A', '2013-01-01', 'B', '0.00', '34620.00', '0.0000', '34620.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM20-00502A', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM20-00446A', '2013-01-01', 'B', '0.00', '32310.00', '0.0000', '32310.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM20-00445A', '2013-01-01', 'B', '0.00', '20770.00', '0.0000', '20770.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM20-00340A', '2013-01-01', 'B', '0.00', '11540.00', '0.0000', '11540.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM20-00129A', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM20-00107A', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM20-00087A', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM20-00004A', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM20-00003A', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM20-00001A', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM13-00192A', '2013-01-01', 'B', '0.00', '7000.00', '0.0000', '7000.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM11-00119B', '2013-01-01', 'B', '0.00', '8770.00', '0.0000', '8770.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM11-00103B', '2013-01-01', 'B', '0.00', '4500.00', '0.0000', '4500.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM11-00102B', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM06-00176A', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM06-00130A', '2013-01-01', 'B', '0.00', '2770.00', '0.0000', '2770.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM04-00093A', '2013-01-01', 'B', '0.00', '5770.00', '0.0000', '5770.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM04-00091A', '2013-01-01', 'B', '0.00', '39770.00', '0.0000', '39770.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'CM04-00005A', '2013-01-01', 'B', '0.00', '229540.00', '0.0000', '229540.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '2', '2', '0204-002420', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '2', '2', 'A', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '2', '2', 'CI01-00001A', '2013-01-01', 'B', '0.00', '50.00', '0.0000', '50.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '2', '2', 'CI01-00002A', '2013-01-01', 'B', '0.00', '182.00', '0.0000', '182.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '2', '2', 'CI01-00003A', '2013-01-01', 'B', '0.00', '2652.00', '0.0000', '2652.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '2', '2', 'CI02-00001A', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '2', '2', 'CI03-00003A', '2013-01-01', 'B', '0.00', '500.00', '0.0000', '500.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '2', '2', 'CI04-00003A', '2013-01-01', 'B', '0.00', '1530.00', '0.0000', '1530.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '2', '2', 'CI08-00001A', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '2', '2', 'CI08-00002A', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.1', '2013-01-01', 'B', '0.00', '2.00', '0.0000', '2.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.2', '2013-01-01', 'B', '0.00', '2.00', '0.0000', '2.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.3', '2013-01-01', 'B', '0.00', '4.00', '0.0000', '4.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.4', '2013-01-01', 'B', '0.00', '50.00', '0.0000', '50.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.5', '2013-01-01', 'B', '0.00', '6.00', '0.0000', '6.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.6', '2013-01-01', 'B', '0.00', '6.00', '0.0000', '6.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.7', '2013-01-01', 'B', '0.00', '6.00', '0.0000', '6.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.8', '2013-01-01', 'B', '0.00', '3.00', '0.0000', '3.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.9', '2013-01-01', 'B', '0.00', '3.00', '0.0000', '3.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.10', '2013-01-01', 'B', '0.00', '2.00', '0.0000', '2.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.11', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.12', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.13', '2013-01-01', 'B', '0.00', '4.00', '0.0000', '4.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.14', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.15', '2013-01-01', 'B', '0.00', '22.00', '0.0000', '22.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.16', '2013-01-01', 'B', '0.00', '12.00', '0.0000', '12.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.17', '2013-01-01', 'B', '0.00', '4.00', '0.0000', '4.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.18', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.19', '2013-01-01', 'B', '0.00', '12.00', '0.0000', '12.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.20', '2013-01-01', 'B', '0.00', '12.00', '0.0000', '12.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.21', '2013-01-01', 'B', '0.00', '4.00', '0.0000', '4.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.22', '2013-01-01', 'B', '0.00', '4.00', '0.0000', '4.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.23', '2013-01-01', 'B', '0.00', '32.00', '0.0000', '32.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.24', '2013-01-01', 'B', '0.00', '8.00', '0.0000', '8.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.25', '2013-01-01', 'B', '0.00', '4.00', '0.0000', '4.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.26', '2013-01-01', 'B', '0.00', '6.00', '0.0000', '6.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.27', '2013-01-01', 'B', '0.00', '4.00', '0.0000', '4.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.28', '2013-01-01', 'B', '0.00', '16.00', '0.0000', '16.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.29', '2013-01-01', 'B', '0.00', '4.00', '0.0000', '4.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.30', '2013-01-01', 'B', '0.00', '12.00', '0.0000', '12.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.31', '2013-01-01', 'B', '0.00', '7.00', '0.0000', '7.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.32', '2013-01-01', 'B', '0.00', '2.00', '0.0000', '2.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.33', '2013-01-01', 'B', '0.00', '19.00', '0.0000', '19.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.34', '2013-01-01', 'B', '0.00', '19.00', '0.0000', '19.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.35', '2013-01-01', 'B', '0.00', '2.00', '0.0000', '2.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.36', '2013-01-01', 'B', '0.00', '4.00', '0.0000', '4.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.37', '2013-01-01', 'B', '0.00', '4.00', '0.0000', '4.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.38', '2013-01-01', 'B', '0.00', '2.00', '0.0000', '2.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.39', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.40', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.41', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.42', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.43', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.44', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.45', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.46', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.47', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.48', '2013-01-01', 'B', '0.00', '2.00', '0.0000', '2.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.49', '2013-01-01', 'B', '0.00', '2.00', '0.0000', '2.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.50', '2013-01-01', 'B', '0.00', '5.00', '0.0000', '5.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.51', '2013-01-01', 'B', '0.00', '5.00', '0.0000', '5.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.52', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.53', '2013-01-01', 'B', '0.00', '2.00', '0.0000', '2.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.54', '2013-01-01', 'B', '0.00', '5.00', '0.0000', '5.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.55', '2013-01-01', 'B', '0.00', '339.00', '0.0000', '339.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.56', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.57', '2013-01-01', 'B', '0.00', '6.00', '0.0000', '6.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.58', '2013-01-01', 'B', '0.00', '6.00', '0.0000', '6.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.59', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.60', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.61', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.62', '2013-01-01', 'B', '0.00', '20.00', '0.0000', '20.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.63', '2013-01-01', 'B', '0.00', '12.00', '0.0000', '12.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.64', '2013-01-01', 'B', '0.00', '3.00', '0.0000', '3.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.65', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.66', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.67', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.68', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.69', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.70', '2013-01-01', 'B', '0.00', '2.00', '0.0000', '2.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.71', '2013-01-01', 'B', '0.00', '8.00', '0.0000', '8.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.72', '2013-01-01', 'B', '0.00', '4.00', '0.0000', '4.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.73', '2013-01-01', 'B', '0.00', '4.00', '0.0000', '4.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.74', '2013-01-01', 'B', '0.00', '4.00', '0.0000', '4.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.75', '2013-01-01', 'B', '0.00', '4.00', '0.0000', '4.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.76', '2013-01-01', 'B', '0.00', '12.00', '0.0000', '12.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.77', '2013-01-01', 'B', '0.00', '8.00', '0.0000', '8.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.78', '2013-01-01', 'B', '0.00', '27.00', '0.0000', '27.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.79', '2013-01-01', 'B', '0.00', '30.00', '0.0000', '30.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.80', '2013-01-01', 'B', '0.00', '7.00', '0.0000', '7.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.81', '2013-01-01', 'B', '0.00', '2.00', '0.0000', '2.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.82', '2013-01-01', 'B', '0.00', '9.00', '0.0000', '9.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.83', '2013-01-01', 'B', '0.00', '23.00', '0.0000', '23.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.84', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.85', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.86', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.87', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.88', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.89', '2013-01-01', 'B', '0.00', '2.00', '0.0000', '2.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.90', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.91', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.92', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.93', '2013-01-01', 'B', '0.00', '2.00', '0.0000', '2.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.94', '2013-01-01', 'B', '0.00', '4.00', '0.0000', '4.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.95', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.96', '2013-01-01', 'B', '0.00', '2.00', '0.0000', '2.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.97', '2013-01-01', 'B', '0.00', '2.00', '0.0000', '2.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.98', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.99', '2013-01-01', 'B', '0.00', '2.00', '0.0000', '2.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.100', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.101', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.102', '2013-01-01', 'B', '0.00', '4.00', '0.0000', '4.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.103', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.104', '2013-01-01', 'B', '0.00', '2.00', '0.0000', '2.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.105', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.106', '2013-01-01', 'B', '0.00', '12.00', '0.0000', '12.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.107', '2013-01-01', 'B', '0.00', '6.00', '0.0000', '6.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.108', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'JK120831-O.109', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'HC1206-9C.1', '2013-01-01', 'B', '0.00', '10.00', '0.0000', '10.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'HC1206-9C.2', '2013-01-01', 'B', '0.00', '30.00', '0.0000', '30.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'HC1206-9C.3', '2013-01-01', 'B', '0.00', '6.00', '0.0000', '6.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'HC1206-9C.4', '2013-01-01', 'B', '0.00', '2.00', '0.0000', '2.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'HC1206-9C.5', '2013-01-01', 'B', '0.00', '2.00', '0.0000', '2.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'HC1206-9C.6', '2013-01-01', 'B', '0.00', '6.00', '0.0000', '6.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'HC1206-9C.7', '2013-01-01', 'B', '0.00', '6.00', '0.0000', '6.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'HC1206-9C.8', '2013-01-01', 'B', '0.00', '10.00', '0.0000', '10.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'HC1206-9C.9', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'HC1206-9C.10', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'FOC.20120914.16', '2013-01-01', 'B', '0.00', '120.00', '0.0000', '120.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'FOC.20120914.17', '2013-01-01', 'B', '0.00', '7.00', '0.0000', '7.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'FOC.20120914.18', '2013-01-01', 'B', '0.00', '5.00', '0.0000', '5.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'F.JKPT121009-1', '2013-01-01', 'B', '0.00', '10.00', '0.0000', '10.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'F.JKPT121009-2', '2013-01-01', 'B', '0.00', '9.00', '0.0000', '9.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'F.JKPT121009-3', '2013-01-01', 'B', '0.00', '1.00', '0.0000', '1.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'F.JKPT121009-4', '2013-01-01', 'B', '0.00', '50.00', '0.0000', '50.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'F.JKPT121009-5', '2013-01-01', 'B', '0.00', '20.00', '0.0000', '20.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'F.JKPT121009-6', '2013-01-01', 'B', '0.00', '20.00', '0.0000', '20.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'F.JKPT121009-7', '2013-01-01', 'B', '0.00', '8.00', '0.0000', '8.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'F.JKPT121009-8', '2013-01-01', 'B', '0.00', '24.00', '0.0000', '24.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'HJYN121116-1.A', '2013-01-01', 'B', '0.00', '60.00', '0.0000', '60.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'HJYN121116-1.B', '2013-01-01', 'B', '0.00', '60.00', '0.0000', '60.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'HJYN121116-1.C', '2013-01-01', 'B', '0.00', '20.00', '0.0000', '20.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'HJYN121116-2.A', '2013-01-01', 'B', '0.00', '90.00', '0.0000', '90.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'HJYN121116-2.B', '2013-01-01', 'B', '0.00', '50.00', '0.0000', '50.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'HJYN121116-2.C', '2013-01-01', 'B', '0.00', '10.00', '0.0000', '10.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '4', '3', 'HJYN121116-2.D', '2013-01-01', 'B', '0.00', '5.00', '0.0000', '5.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('', '0', '0', '0', '0000-00-00', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '2', '11', 'CM04-0003K-D', '2013-01-01', 'B', '0.00', '813.00', '0.0000', '813.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '2', '11', 'CM03-0003L-C', '2013-01-01', 'B', '0.00', '704.00', '0.0000', '704.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '2', '11', 'CM02-0003L-B', '2013-01-01', 'B', '0.00', '12640.00', '0.0000', '12640.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '2', '11', 'CM02-0002L-B', '2013-01-01', 'B', '0.00', '21996.00', '0.0000', '21996.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '2', '11', 'CM02-0001L-B', '2013-01-01', 'B', '0.00', '14856.00', '0.0000', '14856.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '2', '11', 'CM01-0003L-A', '2013-01-01', 'B', '0.00', '1001.00', '0.0000', '1001.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '2', '11', 'CM01-0002L-A', '2013-01-01', 'B', '0.00', '71.00', '0.0000', '71.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '2', '11', 'CM01-0001L-A', '2013-01-01', 'B', '0.00', '0.00', '0.0000', '0.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'HA04-00236AA', '2013-01-01', 'B', '0.00', '140000.00', '0.0000', '140000.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'HA04-00237AA', '2013-01-01', 'B', '0.00', '534000.00', '0.0000', '534000.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'HA04-00238AA', '2013-01-01', 'B', '0.00', '1000.00', '0.0000', '1000.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'HA04-00239AA', '2013-01-01', 'B', '0.00', '50000.00', '0.0000', '50000.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'HA04-00240AA', '2013-01-01', 'B', '0.00', '10000.00', '0.0000', '10000.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'HA04-00249AA', '2013-01-01', 'B', '0.00', '9000.00', '0.0000', '9000.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'HA05-00009AB', '2013-01-01', 'B', '0.00', '1000.00', '0.0000', '1000.00', '0.00', null);
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'HA06-00010AB', '2013-01-01', 'B', '0.00', '1020.00', '0.0000', '1020.00', '0.00', null);

-- ----------------------------
-- Table structure for `mat_warehouse`
-- ----------------------------
DROP TABLE IF EXISTS `mat_warehouse`;
CREATE TABLE `mat_warehouse` (
  `wh_id` int(2) NOT NULL DEFAULT '0' COMMENT 'Nomor Id Warehouse',
  `wh_name` varchar(50) NOT NULL DEFAULT '' COMMENT 'Nama Warehouse',
  PRIMARY KEY (`wh_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Master Gudang';

-- ----------------------------
-- Records of mat_warehouse
-- ----------------------------
INSERT INTO `mat_warehouse` VALUES ('1', 'WAREHOUSE MATERIAL');
INSERT INTO `mat_warehouse` VALUES ('2', 'WAREHOUSE PRODUKSI');
INSERT INTO `mat_warehouse` VALUES ('3', 'WAREHOUSE FINISHED GOODS');
INSERT INTO `mat_warehouse` VALUES ('4', 'WAREHOUSE SCRAP');
INSERT INTO `mat_warehouse` VALUES ('5', 'OTHERS');

-- ----------------------------
-- Table structure for `mkt_dodet`
-- ----------------------------
DROP TABLE IF EXISTS `mkt_dodet`;
CREATE TABLE `mkt_dodet` (
  `do_id` int(10) NOT NULL DEFAULT '0' COMMENT 'Nomor ID Transaksi Sales Order',
  `child_no` int(10) NOT NULL DEFAULT '0' COMMENT 'Nomor Item Detail Transaksi',
  `fg_id` varchar(10) NOT NULL DEFAULT '0' COMMENT 'Nomor ID Finish Good',
  `weight` decimal(9,2) DEFAULT NULL,
  `qty` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT 'Quatity yang ditawarkan',
  `price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`do_id`,`child_no`),
  CONSTRAINT `mkt_dodet_ibfk_1` FOREIGN KEY (`do_id`) REFERENCES `mkt_dohdr` (`do_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Detail Transaksi Pemesanan Barang Produk dari Customer';

-- ----------------------------
-- Records of mkt_dodet
-- ----------------------------

-- ----------------------------
-- Table structure for `mkt_dohdr`
-- ----------------------------
DROP TABLE IF EXISTS `mkt_dohdr`;
CREATE TABLE `mkt_dohdr` (
  `do_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Nomor ID Transaksi Delivery Order',
  `do_no` char(25) NOT NULL DEFAULT '' COMMENT 'Nomor Delivery Order',
  `do_date` date NOT NULL COMMENT 'Tanggal dan Waktu Transaksi',
  `so_id` int(10) NOT NULL DEFAULT '0' COMMENT 'ID Work Instruction',
  `so_no` varchar(25) DEFAULT NULL,
  `cust` varchar(50) DEFAULT NULL,
  `vehicle_no` varchar(15) NOT NULL DEFAULT '' COMMENT 'Nomor Polisi Kendaraan',
  `driver` varchar(30) NOT NULL DEFAULT '' COMMENT 'Nama Sopir Pengirim',
  `tot_qty` decimal(9,2) DEFAULT NULL,
  `tot_amount` decimal(15,2) DEFAULT NULL,
  `notes` char(80) NOT NULL DEFAULT '' COMMENT 'Catatan Transaksi Pesanan',
  PRIMARY KEY (`do_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table Header Pemesanan dari Customer';

-- ----------------------------
-- Records of mkt_dohdr
-- ----------------------------

-- ----------------------------
-- Table structure for `mst_barang`
-- ----------------------------
DROP TABLE IF EXISTS `mst_barang`;
CREATE TABLE `mst_barang` (
  `KdBarang` varchar(15) NOT NULL DEFAULT '',
  `TpBarang` tinyint(2) NOT NULL DEFAULT '0',
  `MatGroup` varchar(4) NOT NULL DEFAULT '',
  `NmBarang` varchar(100) NOT NULL DEFAULT '',
  `HsNo` varchar(12) NOT NULL DEFAULT '',
  `DieNo` varchar(30) NOT NULL DEFAULT '',
  `UWm` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `LPc` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `WPcs` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `LBar` decimal(10,0) NOT NULL DEFAULT '0',
  `PcBar` decimal(10,0) NOT NULL DEFAULT '0',
  `WBar` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `Finish` varchar(10) NOT NULL DEFAULT '',
  `twhmp` varchar(25) NOT NULL DEFAULT '',
  `Sat` varchar(3) NOT NULL DEFAULT '',
  `Harga` decimal(12,5) NOT NULL DEFAULT '0.00000',
  `Treatment` varchar(15) NOT NULL DEFAULT '' COMMENT 'Support Treatment',
  `Ket` varchar(100) NOT NULL DEFAULT '',
  `cust` varchar(50) NOT NULL DEFAULT '' COMMENT 'Nama Customer',
  PRIMARY KEY (`KdBarang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_barang
-- ----------------------------
INSERT INTO `mst_barang` VALUES ('0204-002420', '2', 'CNS', 'SOLVENT (IM-1000)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'KG', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('A', '2', 'CNS', 'TOILON SHEET 300X150X0,5MM', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('BN39-01629A', '0', 'HRN', 'HARNESS UE 5000 32\"  BN39-01629A', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('BN96-21731B', '0', 'PBA', 'PCB ASSY SB300 TOUCH BN96-21731B', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('BN96-22413B', '0', 'PBA', 'PCB ASSY UE 5000 40\" BN96-22413B', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('BN96-22413D', '0', 'PBA', 'PCB ASSY UE 5000 32\" BN96-22413D', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('BN96-23845E', '0', 'PBA', 'PCB ASSY UE 4003 32\" BN96-23845E', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('BN96-26401B', '0', 'PBA', 'UF5000 22\", 32\"', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('BN96-26401C', '0', 'PBA', 'UF5000 39\", 40\",46\",50\"', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CG02-00010A', '11', 'HRN', 'Cream Solder', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'KG', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CI01-00001A', '2', 'CNS', 'SMALL BOX(W545xD360xH155)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CI01-00002A', '2', 'CNS', 'BIG BOX(W545xD360xH375)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CI01-00003A', '2', 'CNS', 'PAD(W534xD340)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CI02-00001A', '2', 'CNS', 'POLYBAG(40 x 200)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CI02-00002A', '2', 'CNS', 'POLYBAG(60 x 200)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CI02-00003A', '2', 'CNS', 'POLYBAG(65 x 200)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CI03-00003A', '2', 'CNS', 'SILICAGEL(Bening @ 10 gram)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CI04-00003A', '2', 'CNS', 'TRAY(12 TRAY)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CI04-00005A', '1', 'PBA', 'TRAY(10 TRAY)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CI08-00001A', '2', 'CNS', 'WIRE SOLDER', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CI08-00002A', '2', 'CNS', 'CREAM SOLDER', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'KG', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CI09-00001A', '2', 'CNS', 'WRAPING PLASTIC', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CI09-00002A', '2', 'CNS', 'OP TAPE CLEAR', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CI10-00001A', '2', 'CNS', 'MASK', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM01-0001L-A', '11', 'PBA', 'SMALL BOX; W545xD360xH155', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM01-0002L-A', '11', 'PBA', 'BIG BOX; W545xD360xH375', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM01-0003L-A', '11', 'PBA', 'PAD; W534xD340', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM02-0001L-B', '11', 'PBA', 'POLYBAG; 40 x 200', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM02-0002L-B', '11', 'PBA', 'POLYBAG; 60 x 200', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM02-0003L-B', '11', 'PBA', 'POLYBAG; 6,5 x 200', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM03-0003L-C', '11', 'PBA', 'SILICAGEL; Bening @ 10 gram', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM04-00005A', '1', 'PBA', 'CDS3C30GTH;SMD 1608 30V;CERA DIODE', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM04-0003K-D', '11', 'PBA', '12 TRAY; TRAY', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM04-00091A', '1', 'PBA', 'DIODE UDZS 6.2B ', '-', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM04-00093A', '1', 'PBA', 'DIODE VESD05A1-02V ', '-', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM06-00130A', '1', 'PBA', 'LED AEOBU-VOYY ', '-', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM06-00176A', '1', 'PBA', 'LED 48-213/RAC-DP2Q1VY/3C ', '-', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM11-00102B', '1', 'PBA', '12507WR-H10G;SMD ANGLE 10P 1.25mm;WAFER', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM11-00103B', '1', 'PBA', '12507WR-H08G;WAFER', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM11-00119B', '1', 'PBA', '12507WR-H05G;WAFER', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM11-00334A', '1', 'PBA', '12507WR-H09G;WAFER', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM13-00192A', '1', 'PBA', 'SENSOR NLS1006; CT802FN;SENSOR', '-', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM20-00001A', '1', 'PBA', 'RC1608J000CS;1608 0? 5%;CHIP RESISTOR', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM20-00003A', '1', 'PBA', 'RC1608J101CS;1608 100? 5%;CHIP RESISTOR', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM20-00004A', '1', 'PBA', 'RC1608J103CS 1608 10K? 5% CHIP RESISTOR', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM20-00087A', '1', 'PBA', 'RC1608J220CS;1608 22? 5%;CHIP RESISTOR', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM20-00107A', '1', 'PBA', 'RC1608J333CS;1608 33K? 5%;CHIP RESISTOR', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM20-00129A', '1', 'PBA', 'RC1608J332CS;1608 3.3K 5%;CHIP RESISTOR', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM20-00280A', '1', 'PBA', 'RC1005J101CS;1005 100? 5%;CHIP RESISTOR', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM20-00334A', '1', 'PBA', 'RC1005J103CS;1005 10K? 5%;CHIP RESISTOR', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM20-00336A', '1', 'PBA', 'RC1005J333CS;1005 33K? 5%;CHIP RESISTOR', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM20-00339A', '1', 'PBA', 'RC1005J332CS;1005 3.3K? 5%;CHIP RESISTOR', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM20-00340A', '1', 'PBA', 'RC1005J152CS;1005 1.5K? 5%;CHIP RESISTOR', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM20-00445A', '1', 'PBA', 'RC1005J104CS;1005 100K? 5%;CHIP RESISTOR', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM20-00446A', '1', 'PBA', 'RC1005J000CS;1005 0? 5%;CHIP RESISTOR', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM20-00502A', '1', 'PBA', 'RC1608J912CS;1608;9.1K?;CHIP RESISTOR', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM20-00503A', '1', 'PBA', 'RC1005J220CS;1005 22? 5%;CHIP RESISTOR', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM20-00509A', '1', 'PBA', 'RC1005J221CS;1005 220?;CHIP RESISTOR', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM20-00596A', '1', 'PBA', 'RC1005J912CS; 9.1K? CHIP RESISTOR', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM20-1005ALL', '1', 'PBA', 'RESISTOR  RC1005', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM20-1608ALL', '1', 'PBA', 'RESISTOR RC1608J103CS', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM22-00224A', '1', 'PBA', 'CL31F226ZPNE;3216 22uF;CHIP-CAPACITOR', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM22-00341A', '1', 'PBA', 'CL05B104KP5NNNC;1005 100nF;CHIP-CAPACITOR', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM22-00346A', '1', 'PBA', 'CL05A105KQ5NNNC;1005 1uF', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM22-00378A', '1', 'PBA', 'CL05B104KO5NNNC;1005;100nF', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM22-00429A', '1', 'PBA', 'CAPACITOR CL10B104KBNC', '-', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM22-00431A', '1', 'PBA', 'CL31A226KOCLNNC;22uf CAPACITOR', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM22-00434A', '1', 'PBA', 'CL10B105KQ8NNNC CAPACITOR', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM32-00042A', '1', 'PBA', 'TSOP75438TR;SMD;4P,ROM-TC338MV-R;IR MODULE', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM32-00044A', '1', 'PBA', 'RIS-AC132MH-R;ALI MODULE', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM34-00052C', '1', 'PBA', 'DHT-1502S', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM34-00055A', '1', 'PBA', 'SKRHAME010;SWITCH', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM34-00056A', '1', 'PBA', 'SWITCH JTM5116EM', '-', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM34-00059A', '1', 'PBA', 'SKRHANE010', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM39-01005B', '1', 'PBA', 'HARNESS  BN39-01442L', '-', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM39-01009A', '1', 'PBA', 'HJ12-00013A (01); 125mm HARNESS', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM39-01010A', '1', 'PBA', 'HJ12-00009A(01); HARNESS', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM39-01069A', '1', 'PBA', 'HARNESS BN39-01694D', '-', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM39-01117A', '1', 'PBA', 'HJ13-00006A (02); 170mm HARNESS', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM39-01118A', '1', 'PBA', 'HJ13-00026A (00); 290mm HARNESS', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM39-01119A', '1', 'PBA', 'HJ13-00022A (00); 170mm HARNESS', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM39-01120A', '1', 'PBA', 'HJ13-00025A (00); 290mm HARNESS', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM39-01121A', '1', 'PBA', 'HJ13-00024A (00); 520mm HARNESS', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM39-01122A', '1', 'PBA', 'HJ13-00036A (00); 720mm HARNESS', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM39-01123A', '1', 'PBA', 'HJ13-00037A (00); 860mm HARNESS', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM41-01025A', '1', 'PBA', 'PCB BN41-01808A', '-', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM41-01031C', '1', 'PBA', 'PCB BN41-01840B', '-', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM41-01053A', '1', 'PBA', 'PCB BN41-01899A', '-', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM41-01083B', '1', 'PBA', 'UF5000 PCB FR4 1.2T;REV2.0(CT121126)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM51-00411A', '1', 'PBA', 'SB300;#350RX', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM51-00411B', '1', 'PBA', 'AT TAPE; TAPE  CM51-00411A', '-', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM60-00055A', '1', 'PBA', 'SCREW CH+,B,D:5.5,H1:1,3*6,Cr3', '-', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM60-00056A', '1', 'PBA', 'CH+ DELTA PT,1.6*3.5*3 NI_PLT', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM61-00388A', '1', 'PBA', 'BRAKET BN63-09082A; PC; COVER ', '-', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM61-00389A', '1', 'PBA', 'BRAKET BN64-02028A; KNOB', '-', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM61-00389B', '1', 'PBA', 'PC; KNOB; UE5000[12.07.30]', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM61-00391B', '1', 'PBA', 'BRAKET BN64-02101A; KNOB', '-', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM61-00395B', '1', 'PBA', 'BN63-09712A[12.07.12]', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM61-00396A', '1', 'PBA', 'BRAKET BN64-02100A', '-', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM61-00409A', '1', 'PBA', 'BN64-02219A;KNOB', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM61-00412A', '1', 'PBA', 'ABS; COVER FUNCTION; UF5000', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM61-00413A', '1', 'PBA', 'PC; COVER IR(VIOLET); UF5000', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CM90-00052A', '1', 'PBA', 'CT1N08E ; Magnachip(WAFER)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CT11-00881A-HC', '11', 'PBA', 'SB300(????)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CT11-00881A-SC', '11', 'PBA', 'SB300(SMD??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CT11-00882B', '0', 'PBA', 'SB300(2012.02.09)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CT11-00946B-SC', '11', 'PBA', 'UF5000 SWITCH B/D(SMD??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CT11-00947B', '0', 'PBA', 'UF5000 32\"  SWITCH B/D (12.12.26)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CT11-00948B', '0', 'PBA', 'UF5000 40\",46\"  SWITCH B/D (12.12.26)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CT15-00411H-HC', '11', 'PBA', 'UE5000  SWITCH B/D (????)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CT15-00411H-SC', '11', 'PBA', 'UE5000  SWITCH B/D(SMD??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CT15-00412A-HC', '11', 'PBA', 'UE5000  SWITCH B/D (1) (????)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CT15-00412A-SC', '11', 'PBA', 'UE5000  SWITCH B/D (1)(SMD??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CT15-00412B-HC', '11', 'PBA', 'UE5000  SWITCH B/D (1) (????)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CT15-00412B-SC', '11', 'PBA', 'UE5000  SWITCH B/D (1)(SMD??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CT15-00412G', '0', 'PBA', 'UE5000 40\" SWITCH B/D(2012.07.18.)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CT15-00412H', '0', 'PBA', 'UE5000 40\" SWITCH B/D(12.08.29)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CT15-00412J', '0', 'PBA', 'UE5000 40\" SWITCH B/D(12.11.07)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CT15-00414J', '0', 'PBA', 'UE5000 32\" SWITCH B/D(2012.07.18.)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CT15-00464A-SC', '11', 'PBA', 'UE4003_5003 SWITCH B/D (SMD ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CT15-00464C-HC', '11', 'PBA', 'UE4003_5003 SWITCH B/D (????)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CT15-00468C', '0', 'PBA', 'UE4003 32\" PAL SWITCH B/D(12.08.08)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('CT90-00046A-H2', '1', 'PBA', 'IC CT1N08E ', '-', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('F.JKPT121009-1', '3', 'MCH', 'TEST SUB JIG', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('F.JKPT121009-2', '3', 'MCH', 'MTI-3000', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('F.JKPT121009-3', '3', 'MCH', 'KNOB AIR PRESS JIG', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('F.JKPT121009-4', '3', 'MCH', 'MAIN JIG HARNESS', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('F.JKPT121009-5', '3', 'MCH', 'EARTHRING MONITOR', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('F.JKPT121009-6', '3', 'MCH', 'EARTHRING MONITOR ADAFTER', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('F.JKPT121009-7', '3', 'MCH', 'IR TRANSMIT STAND', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('F.JKPT121009-8', '3', 'MCH', '6P CONNECTOR BOARD', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('FOC.20120914.16', '3', 'MCH', 'SUB BOARD', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('FOC.20120914.17', '3', 'MCH', 'MULTI WIRE', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('FOC.20120914.18', '3', 'MCH', 'TOTAL BOARD', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA01-00001AA', '1', 'HRN', 'Cable(UL21520 #30 2C, LTK / De Ryook)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA01-00002AA', '1', 'HRN', 'Cable(UL21520 #30 3C, LTK / De Ryook)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA01-00003AA', '1', 'HRN', 'Cable(UL21520 #30 4C, LTK / De Ryook)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA01-00004AA', '1', 'HRN', 'Cable(UL21520 #30 5C, LTK / De Ryook)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA01-00005AA', '1', 'HRN', 'Cable(UL21520 #30 6C, LTK / De Ryook)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA01-00006AA', '1', 'HRN', 'Cable(UL21520 #30 7C, LTK / De Ryook)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA01-00007AA', '1', 'HRN', 'Cable(UL21520 #30 8C, LTK / De Ryook)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA01-00008AA', '1', 'HRN', 'Cable(UL21520 #30 9C, LTK / De Ryook)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA01-00009AA', '1', 'HRN', 'Cable(UL21520 #30 10C, LTK / De Ryook)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA01-00010AA', '1', 'HRN', 'Cable(UL21520 #30 12C, LTK / De Ryook)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA01-00011AA', '1', 'HRN', 'Cable(UL21520 #30 15C, LTK / De Ryook)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA01-00012AA', '1', 'HRN', 'Cable(UL21520 #30 16C, LTK / De Ryook)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA01-00013AA', '1', 'HRN', 'Cable(UL21451 #28 1P+2C, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA01-00014AA', '1', 'HRN', 'Cable(UL21451 #28 2C, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA01-00015AA', '1', 'HRN', 'Cable(UL 2835 #28 9C, LTK / E-W)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA01-00016AA', '1', 'HRN', 'Cable(UL 2835 #28 3P, LTK / E-W)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA01-00017AA', '1', 'HRN', 'Cable(UL 2835 #28 5P, LTK / E-W)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA01-00018AA', '1', 'HRN', 'Cable(UL 2835 #30 5C, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA01-00019AA', '1', 'HRN', 'Cable(UL 2835 #30 6C, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA01-00020AA', '1', 'HRN', 'Cable(UL 2835 #30 7C, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA01-00021AA', '1', 'HRN', 'Cable(UL 2835 #30 8C, LTK / E-W)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA01-00022AA', '1', 'HRN', 'Cable(UL 2835 #30 9C, LTK / E-W)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA01-00023AA', '1', 'HRN', 'Cable(UL 2835 #30 10C, LTK / E-W)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA01-00024AA', '1', 'HRN', 'Cable(UL 2835 #30 10C(PE??-E-W), E-W)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA01-00025AA', '1', 'HRN', 'Cable(UL21520 #28 6C, De Ryook)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA01-00026AA', '1', 'HRN', 'Cable(UL 2547#26-2C+1G, LTK / E-W)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA01-00027AA', '1', 'HRN', 'Cable(UL21451 #28 12C, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA01-00028AA', '1', 'HRN', 'Cable(UL 2835 #28 12C, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA01-00029AA', '1', 'HRN', 'Cable(UL 2835 #30 3C, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA01-00030AA', '1', 'HRN', 'Cable(UL 2835 #30 12C, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA01-00031AA', '1', 'HRN', 'Cable(UL 2835 #30 15C, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA01-00032AA', '1', 'HRN', 'CABLE(UL21520 #28 8C)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00001AA', '1', 'HRN', 'Wire(UL10368 #28 BLK, LTK / De Ryook)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00002AA', '1', 'HRN', 'Wire(UL10368 #28 GRY, LTK / De Ryook)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00003AA', '1', 'HRN', 'Wire(UL10368 #26 BLK, De Ryook)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00004AA', '1', 'HRN', 'Wire(UL10368 #26 GRY, De Ryook)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00005AA', '1', 'HRN', 'Wire(UL1061 #28 BLK, LTK / H-L)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00006AA', '1', 'HRN', 'Wire(UL1061 #28 GRY, LTK / H-L)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00007AA', '1', 'HRN', 'Wire(UL1061 #28 RED, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00008AA', '1', 'HRN', 'Wire(UL1061 #28 BLU, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00009AA', '1', 'HRN', 'Wire(UL1571 #30 BLK, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00010AA', '1', 'HRN', 'Wire(UL1571 #30 GRY, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00011AA', '1', 'HRN', 'Wire(UL1571 #30 WHT, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00012AA', '1', 'HRN', 'Wire(UL 1007 #22  BLK, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00013AA', '1', 'HRN', 'Wire(UL 1007 #22  RED, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00014AA', '1', 'HRN', 'Wire(UL 1007 #22  GRY, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00015AA', '1', 'HRN', 'Wire(UL 1007 #22  BLU, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00016AA', '1', 'HRN', 'Wire(UL 1007 #22  WHT, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00017AA', '1', 'HRN', 'Wire(UL 1007 #22  YEL, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00018AA', '1', 'HRN', 'Wire(UL 1007 #24  BLK, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00019AA', '1', 'HRN', 'Wire(UL 1007 #24  BLU, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00020AA', '1', 'HRN', 'Wire(UL 1007 #24  BROW, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00021AA', '1', 'HRN', 'Wire(UL 1007 #24  GRY, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00022AA', '1', 'HRN', 'Wire(UL 1007 #24  ORANGE, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00023AA', '1', 'HRN', 'Wire(UL 1007 #24  RED, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00024AA', '1', 'HRN', 'Wire(UL 1007 #24  WHT, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00025AA', '1', 'HRN', 'Wire(UL 1007 #24  YEL, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00026AA', '1', 'HRN', 'Wire(UL 1007 #26  GRY, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00027AA', '1', 'HRN', 'Wire(UL 1007 #26  WHT, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00028AA', '1', 'HRN', 'Wire(UL 1007 #26  BLU, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00029AA', '1', 'HRN', 'Wire(UL 1007 #26  YEL, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00030AA', '1', 'HRN', 'Wire(UL1571 #28 BLK, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00031AA', '1', 'HRN', 'Wire(UL1571 #28 RED, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00032AA', '1', 'HRN', 'Wire(UL 3398 #22  BLK, E-W)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00033AA', '1', 'HRN', 'Wire(UL 3398 #22  BLUE, E-W)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00034AA', '1', 'HRN', 'Wire(UL 3398 #22  BROW, E-W)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00035AA', '1', 'HRN', 'Wire(UL 3398 #22  GRY, E-W)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00036AA', '1', 'HRN', 'Wire(UL 3398 #22  ORANGE, E-W)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00037AA', '1', 'HRN', 'Wire(UL 3398 #22  WHT, E-W)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00038AA', '1', 'HRN', 'Wire(UL 3398 #22  YELLOW, E-W)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00039AA', '1', 'HRN', 'Wire(UL 3443 #28  BLK, E-W)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00040AA', '1', 'HRN', 'Wire(UL 3443 #28  BLUE, E-W)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00041AA', '1', 'HRN', 'Wire(UL 3443 #28  BROWN, E-W)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00042AA', '1', 'HRN', 'Wire(UL 3443 #28  GREEN, E-W)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00043AA', '1', 'HRN', 'Wire(UL 3443 #28 GRY, E-W)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00044AA', '1', 'HRN', 'Wire(UL 3443 #28  ORANGE, E-W)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00045AA', '1', 'HRN', 'Wire(UL 3443 #28  RED, E-W)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00046AA', '1', 'HRN', 'Wire(UL 3443 #28  VIOLET, E-W)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00047AA', '1', 'HRN', 'Wire(UL 3443 #28  WHT, E-W)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00048AA', '1', 'HRN', 'Wire(UL 3443 #28  YELLOW, E-W)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00049AA', '1', 'HRN', 'Wire(UL 21016 #28 8C, LTK / ??? / ???)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00050AA', '1', 'HRN', 'WIRE(SRGT 0.5  (BLUE), E-W)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00051AA', '1', 'HRN', 'Wire(UL 1007 #26 BLK, LTK / H-L)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00052AA', '1', 'HRN', 'Wire(UL 1007 #26 RED, LTK / H-L)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00053AA', '1', 'HRN', 'Wire(UL 1061 #28 WHT, LTK / H-L)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00054AA', '1', 'HRN', 'Wire(UL 1571 #30 BLU, LTK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00055AA', '1', 'HRN', 'Wire(UL10368 #28 RED, YEONHO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00056AA', '1', 'HRN', 'Wire(UL10368 #28 WHT, YEONHO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00057AA', '1', 'HRN', 'WIRE(UL10368 #30 BLK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00058AA', '1', 'HRN', 'WIRE(UL10368 #30 GRY)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00062AA', '1', 'HRN', 'Wire(UL21016 #28 06C,LTK,XINYA,ELETECK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA02-00063AA', '1', 'HRN', 'Wire(UL21016 #28 09C,LTK,XINYA,ELETECK)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00001AA', '1', 'HRN', 'Terminal(A2008TOP-A2-DH, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00002AA', '1', 'HRN', 'Terminal(A2008TOP-2-DH, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00003AA', '1', 'HRN', 'Terminal(A1251TOP-2, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00004AA', '1', 'HRN', 'Terminal(A1255TOP-A2-XJ, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00005AA', '1', 'HRN', 'Terminal(A1255TOP-B2, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00006AA', '1', 'HRN', 'Terminal(A2012T1P-2, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00007AA', '1', 'HRN', 'Terminal(C1251T0P-2, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00008AA', '1', 'HRN', 'Terminal(PWT-0003, PARTRON)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00009AA', '1', 'HRN', 'Terminal(10026TS, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00010AA', '1', 'HRN', 'Terminal(12505TP, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00011AA', '1', 'HRN', 'Terminal(12507TS, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00012AA', '1', 'HRN', 'Terminal(12507TS-G1, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00013AA', '1', 'HRN', 'Terminal(12507TP-B, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00014AA', '1', 'HRN', 'Terminal(YBAT200, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00015AA', '1', 'HRN', 'Terminal(YBST200, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00016AA', '1', 'HRN', 'Terminal(YBNT250, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00017AA', '1', 'HRN', 'Terminal(YDT200, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00018AA', '1', 'HRN', 'Terminal(SMT025, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00019AA', '1', 'HRN', 'Terminal(YT250, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00020AA', '1', 'HRN', 'Terminal(YST025-L, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00021AA', '1', 'HRN', 'Terminal(YST025, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00022AA', '1', 'HRN', 'Terminal(YST200, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00023AA', '1', 'HRN', 'Terminal(YST200(0.3), YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00024AA', '1', 'HRN', 'Terminal(YST200-S, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00025AA', '1', 'HRN', 'Terminal(YST200C(S), YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00026AA', '1', 'HRN', 'Terminal(YST200-C1, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00027AA', '1', 'HRN', 'Terminal(200A1-TS, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00028AA', '1', 'HRN', 'Terminal(FMWT1211A, FOOSUNG)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00029AA', '1', 'HRN', 'Terminal(T1615E, UJU)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00030AA', '1', 'HRN', 'Terminal(T1525E, UJU)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00031AA', '1', 'HRN', 'Terminal(12505TS, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00032AA', '1', 'HRN', 'Terminal(12513TS, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00033AA', '1', 'HRN', 'Terminal(SPH002T-P0.5S, )', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00034AA', '1', 'HRN', 'Terminal(SGVH-002T-P0.2, )', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00035AA', '1', 'HRN', 'Terminal(FI-XC3A-1, )', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00036AA', '1', 'HRN', 'Terminal(FT20006, )', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00037AA', '1', 'HRN', 'Terminal(A2541T3P-2, YEONHO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00038AA', '1', 'HRN', 'Terminal(A2006T1P-2-SS,JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA03-00039AA', '1', 'HRN', 'TERMINAL(12535TS, YEONHO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00001AA', '1', 'HRN', 'Housing(A2008H00-03P-DH, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00002AA', '1', 'HRN', 'Housing(A2008H00-04P-DH, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00003AA', '1', 'HRN', 'Housing(A2008H00-05P-DH, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00004AA', '1', 'HRN', 'Housing(A2008H00-06P-DH, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00005AA', '1', 'HRN', 'Housing(A2008H00-07P-DH, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00006AA', '1', 'HRN', 'Housing(A2008H00-08P-DH, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00007AA', '1', 'HRN', 'Housing(A2008H00-09P-DH, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00008AA', '1', 'HRN', 'Housing(A2008H00-10P-DH, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00009AA', '1', 'HRN', 'Housing(A2008H00-11P-DH, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00010AA', '1', 'HRN', 'Housing(A2008H00-12P-DH, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00011AA', '1', 'HRN', 'Housing(A1255H00-A3P-HK, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00012AA', '1', 'HRN', 'Housing(A1255H00-A4P-HK, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00013AA', '1', 'HRN', 'Housing(A1255H00-A5P-HK, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00014AA', '1', 'HRN', 'Housing(A1255H00-A6P-HK, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00015AA', '1', 'HRN', 'Housing(A1255H00-A7P-HK, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00016AA', '1', 'HRN', 'Housing(A1255H00-A8P-HK, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00017AA', '1', 'HRN', 'Housing(A1255H00-A9P-HK, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00018AA', '1', 'HRN', 'Housing(A1255H00-A10P-HK, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00019AA', '1', 'HRN', 'Housing(A1255H00-A12P-HK, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00020AA', '1', 'HRN', 'Housing(A1255H00-A14P-HK, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00021AA', '1', 'HRN', 'Housing(A1255H00-A15P-HK, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00022AA', '1', 'HRN', 'Housing(A1255H00-C05P-HK, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00023AA', '1', 'HRN', 'Housing(A1255HOO-B4P-HK, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00024AA', '1', 'HRN', 'Housing(A1255HOO-B5P-HK, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00025AA', '1', 'HRN', 'Housing(A1255HOO-B6P-HK, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00026AA', '1', 'HRN', 'Housing(A1255HOO-B7P-HK, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00027AA', '1', 'HRN', 'Housing(A1255HOO-B8P-HK, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00028AA', '1', 'HRN', 'Housing(A1255HOO-B9P-HK, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00029AA', '1', 'HRN', 'Housing(A1255HOO-B10P-HK, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00030AA', '1', 'HRN', 'Housing(A1255HOO-B12P-HK, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00031AA', '1', 'HRN', 'Housing(A1255HOO-B14P-HK, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00032AA', '1', 'HRN', 'Housing(A1255HOO-B15P-HK, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00033AA', '1', 'HRN', 'Housing(A2012H00-2*9P-HK, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00034AA', '1', 'HRN', 'Housing(C1251H00-3P-HF, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00035AA', '1', 'HRN', 'Housing(C1251H00-7P-HF, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00036AA', '1', 'HRN', 'Housing(C1251H00-8P-HF, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00037AA', '1', 'HRN', 'Housing(PWH-0003-004, PARTRON)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00038AA', '1', 'HRN', 'Housing(PWH-0003-005, PARTRON)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00039AA', '1', 'HRN', 'Housing(PWH-0003-006, PARTRON)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00040AA', '1', 'HRN', 'Housing(PWH-0003-007, PARTRON)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00041AA', '1', 'HRN', 'Housing(PWH-0003-008, PARTRON)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00042AA', '1', 'HRN', 'Housing(PWH-0003-009, PARTRON)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00043AA', '1', 'HRN', 'Housing(PWH-0003-010, PARTRON)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00044AA', '1', 'HRN', 'Housing(PWH-0003-012, PARTRON)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00045AA', '1', 'HRN', 'Housing(PWH-0003-014, PARTRON)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00046AA', '1', 'HRN', 'Housing(PWH-0003-015, PARTRON)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00047AA', '1', 'HRN', 'Housing(PWH-0008-003, PARTRON)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00048AA', '1', 'HRN', 'Housing(PWH-0008-004, PARTRON)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00049AA', '1', 'HRN', 'Housing(PWH-0008-005, PARTRON)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00050AA', '1', 'HRN', 'Housing(PWH-0008-006, PARTRON)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00051AA', '1', 'HRN', 'Housing(PWH-0008-007, PARTRON)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00052AA', '1', 'HRN', 'Housing(PWH-0008-008, PARTRON)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00053AA', '1', 'HRN', 'Housing(PWH-0008-009, PARTRON)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00054AA', '1', 'HRN', 'Housing(PWH-0008-010, PARTRON)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00055AA', '1', 'HRN', 'Housing(PWH-0008-012, PARTRON)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00056AA', '1', 'HRN', 'Housing(PWH-0008-014, PARTRON)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00057AA', '1', 'HRN', 'Housing(PWH-0008-015, PARTRON)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00058AA', '1', 'HRN', 'Housing(10026HR-04, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00059AA', '1', 'HRN', 'Housing(10026HR-05, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00060AA', '1', 'HRN', 'Housing(10026HR-06, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00061AA', '1', 'HRN', 'Housing(12505HP-03, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00062AA', '1', 'HRN', 'Housing(12505HP-04, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00063AA', '1', 'HRN', 'Housing(12505HP-07, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00064AA', '1', 'HRN', 'Housing(12505HP-08, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00065AA', '1', 'HRN', 'Housing(12505HS-03, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00066AA', '1', 'HRN', 'Housing(12505HS-08, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00067AA', '1', 'HRN', 'Housing(12507HS-03L, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00068AA', '1', 'HRN', 'Housing(12507HS-04L, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00069AA', '1', 'HRN', 'Housing(12507HS-05L, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00070AA', '1', 'HRN', 'Housing(12507HS-06L, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00071AA', '1', 'HRN', 'Housing(12507HS-07L, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00072AA', '1', 'HRN', 'Housing(12507HS-08L, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00073AA', '1', 'HRN', 'Housing(12507HS-09L, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00074AA', '1', 'HRN', 'Housing(12507HS-10L, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00075AA', '1', 'HRN', 'Housing(12507HS-12L, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00076AA', '1', 'HRN', 'Housing(12507HS-14L, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00077AA', '1', 'HRN', 'Housing(12507HS-15L, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00078AA', '1', 'HRN', 'Housing(12507HS-H05L2, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00079AA', '1', 'HRN', 'Housing(12507HS-H07L3, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00080AA', '1', 'HRN', 'Housing(12507HS-H03B1, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00081AA', '1', 'HRN', 'Housing(12507HS-H03L3, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00082AA', '1', 'HRN', 'Housing(12507HS-H03G1, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00083AA', '1', 'HRN', 'Housing(12507HS-H04G1, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00084AA', '1', 'HRN', 'Housing(12507HS-H05G1, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00085AA', '1', 'HRN', 'Housing(12507HS-H05L2, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00086AA', '1', 'HRN', 'Housing(12507HS-H05L5, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00087AA', '1', 'HRN', 'Housing(12507HS-H06G1, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00088AA', '1', 'HRN', 'Housing(12507HS-H07G1, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00089AA', '1', 'HRN', 'Housing(12507HS-H07L3, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00090AA', '1', 'HRN', 'Housing(12507HS-H08G1, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00091AA', '1', 'HRN', 'Housing(12507HS-H09G1, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00092AA', '1', 'HRN', 'Housing(12507HS-H10G1, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00093AA', '1', 'HRN', 'Housing(12507HS-H12G1, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00094AA', '1', 'HRN', 'Housing(12507HS-H14G1, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00095AA', '1', 'HRN', 'Housing(12507HS-H15G1, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00096AA', '1', 'HRN', 'Housing(200A1-HS-H13, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00097AA', '1', 'HRN', 'Housing(SMH200-03, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00098AA', '1', 'HRN', 'Housing(SMH200-04, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00099AA', '1', 'HRN', 'Housing(SMH200-05, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00100AA', '1', 'HRN', 'Housing(SMH200-06, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00101AA', '1', 'HRN', 'Housing(SMH200-07, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00102AA', '1', 'HRN', 'Housing(SMH200-08, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00103AA', '1', 'HRN', 'Housing(SMH200-09, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00104AA', '1', 'HRN', 'Housing(SMH200-10, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00105AA', '1', 'HRN', 'Housing(SMH200-11, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00106AA', '1', 'HRN', 'Housing(SMH200-12, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00107AA', '1', 'HRN', 'Housing(SMH200-13, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00108AA', '1', 'HRN', 'Housing(SMH200-14, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00109AA', '1', 'HRN', 'Housing(SMH200-H14S1, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00110AA', '1', 'HRN', 'Housing(SMH200-H16S1, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00111AA', '1', 'HRN', 'Housing(SMH200-H18S1, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00112AA', '1', 'HRN', 'Housing(SMH200-H20S1, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00113AA', '1', 'HRN', 'Housing(SMH250-02(RED), YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00114AA', '1', 'HRN', 'Housing(SMH250-02, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00115AA', '1', 'HRN', 'Housing(SMH250-03, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00116AA', '1', 'HRN', 'Housing(SMH250-04, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00117AA', '1', 'HRN', 'Housing(SMH250-05, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00118AA', '1', 'HRN', 'Housing(SMH250-05(YEL), YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00119AA', '1', 'HRN', 'Housing(SMH250-06, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00120AA', '1', 'HRN', 'Housing(SMH250-07, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00121AA', '1', 'HRN', 'Housing(SMH250-08, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00122AA', '1', 'HRN', 'Housing(SMH250-09, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00123AA', '1', 'HRN', 'Housing(SMH250-10, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00124AA', '1', 'HRN', 'Housing(SMH250-11, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00125AA', '1', 'HRN', 'Housing(SMH250-12, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00126AA', '1', 'HRN', 'Housing(SMH250-15, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00127AA', '1', 'HRN', 'Housing(YBH200-02, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00128AA', '1', 'HRN', 'Housing(YBH200-03, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00129AA', '1', 'HRN', 'Housing(YBH200-04, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00130AA', '1', 'HRN', 'Housing(YBH200-05, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00131AA', '1', 'HRN', 'Housing(YBH200-06, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00132AA', '1', 'HRN', 'Housing(YBH200-07, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00133AA', '1', 'HRN', 'Housing(YBH200-08, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00134AA', '1', 'HRN', 'Housing(YBH200-09, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00135AA', '1', 'HRN', 'Housing(YBH200-10, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00136AA', '1', 'HRN', 'Housing(YBH200-11, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00137AA', '1', 'HRN', 'Housing(YBH200-12, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00138AA', '1', 'HRN', 'Housing(YBNH200-03, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00139AA', '1', 'HRN', 'Housing(YBNH200-04, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00140AA', '1', 'HRN', 'Housing(YBNH200-05, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00141AA', '1', 'HRN', 'Housing(YBNH200-06, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00142AA', '1', 'HRN', 'Housing(YBNH200-07, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00143AA', '1', 'HRN', 'Housing(YBNH200-08, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00144AA', '1', 'HRN', 'Housing(YBNH200-09, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00145AA', '1', 'HRN', 'Housing(YBNH200-10, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00146AA', '1', 'HRN', 'Housing(YBNH200-11, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00147AA', '1', 'HRN', 'Housing(SMH200-02PL, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00148AA', '1', 'HRN', 'Housing(SMH200-03PL, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00149AA', '1', 'HRN', 'Housing(SMH200-04PL, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00150AA', '1', 'HRN', 'Housing(SMH200-05PL, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00151AA', '1', 'HRN', 'Housing(SMH200-06PL, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00152AA', '1', 'HRN', 'Housing(SMH200-07PL, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00153AA', '1', 'HRN', 'Housing(SMH200-08PL, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00154AA', '1', 'HRN', 'Housing(SMH200-09PL, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00155AA', '1', 'HRN', 'Housing(SMH200-10PL, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00156AA', '1', 'HRN', 'Housing(SMH200-11PL, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00157AA', '1', 'HRN', 'Housing(SMH200-12PL, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00158AA', '1', 'HRN', 'Housing(SMH250-03L, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00159AA', '1', 'HRN', 'Housing(SMH250-04L, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00160AA', '1', 'HRN', 'Housing(SMH250-05L, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00161AA', '1', 'HRN', 'Housing(SMH250-06L, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00162AA', '1', 'HRN', 'Housing(SMH250-07L, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00163AA', '1', 'HRN', 'Housing(SMH250-08L, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00164AA', '1', 'HRN', 'Housing(SMH250-09L, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00165AA', '1', 'HRN', 'Housing(SMH250-10L, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00166AA', '1', 'HRN', 'Housing(SMH250-11L, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00167AA', '1', 'HRN', 'Housing(SMH250-12L, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00168AA', '1', 'HRN', 'Housing(SMP250-02(BLU), YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00169AA', '1', 'HRN', 'Housing(SMP250-03, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00170AA', '1', 'HRN', 'Housing(SMP250-04, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00171AA', '1', 'HRN', 'Housing(SMP250-05, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00172AA', '1', 'HRN', 'Housing(SMP250-06, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00173AA', '1', 'HRN', 'Housing(SMP250-07, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00174AA', '1', 'HRN', 'Housing(SMP250-08, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00175AA', '1', 'HRN', 'Housing(SMP250-09, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00176AA', '1', 'HRN', 'Housing(SMP250-10, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00177AA', '1', 'HRN', 'Housing(SMP250-11, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00178AA', '1', 'HRN', 'Housing(SMP250-12, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00179AA', '1', 'HRN', 'Housing(YBNH250-03, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00180AA', '1', 'HRN', 'Housing(YBNH250-04, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00181AA', '1', 'HRN', 'Housing(YBNH250-05, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00182AA', '1', 'HRN', 'Housing(YBNH250-06, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00183AA', '1', 'HRN', 'Housing(YBNH250-07, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00184AA', '1', 'HRN', 'Housing(YBNH250-08, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00185AA', '1', 'HRN', 'Housing(YBNH250-09, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00186AA', '1', 'HRN', 'Housing(YBNH250-10, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00187AA', '1', 'HRN', 'Housing(YBNH250-11, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00188AA', '1', 'HRN', 'Housing(YBNH250-12, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00189AA', '1', 'HRN', 'Housing(20022HS-02, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00190AA', '1', 'HRN', 'Housing(20022HS-03, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00191AA', '1', 'HRN', 'Housing(20022HS-04, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00192AA', '1', 'HRN', 'Housing(20022HS-05, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00193AA', '1', 'HRN', 'Housing(20022HS-06, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00194AA', '1', 'HRN', 'Housing(20022HS-07, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00195AA', '1', 'HRN', 'Housing(20022HS-08, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00196AA', '1', 'HRN', 'Housing(20022HS-09, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00197AA', '1', 'HRN', 'Housing(20022HS-10, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00198AA', '1', 'HRN', 'Housing(20022HS-11, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00199AA', '1', 'HRN', 'Housing(20022HS-12, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00200AA', '1', 'HRN', 'Housing(A2008H00-14P-DH, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00201AA', '1', 'HRN', 'Housing(20022HS-14, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00202AA', '1', 'HRN', 'Housing(20022HS-15, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00203AA', '1', 'HRN', 'Housing(T1523E-06, UJU)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00204AA', '1', 'HRN', 'Housing(T1513A-04, UJU)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00205AA', '1', 'HRN', 'Housing(T1513A-05, UJU)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00206AA', '1', 'HRN', 'Housing(T1513A-06, UJU)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00207AA', '1', 'HRN', 'Housing(FMWH1214A-03A, FOOSUNG)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00208AA', '1', 'HRN', 'Housing(FMWH1214A-04A, FOOSUNG)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00209AA', '1', 'HRN', 'Housing(FMWH1214A-05A, FOOSUNG)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00210AA', '1', 'HRN', 'Housing(FMWH1214A-06A, FOOSUNG)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00211AA', '1', 'HRN', 'Housing(FMWH1214A-07A, FOOSUNG)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00212AA', '1', 'HRN', 'Housing(FMWH1214A-08A, FOOSUNG)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00213AA', '1', 'HRN', 'Housing(FMWH1214A-09A, FOOSUNG)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00214AA', '1', 'HRN', 'Housing(FMWH1214A-10A, FOOSUNG)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00215AA', '1', 'HRN', 'Housing(FMWH1214A-12A, FOOSUNG)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00216AA', '1', 'HRN', 'Housing(A1251H02-6P-HF, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00217AA', '1', 'HRN', 'Housing(A1251H02-7P-HF, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00218AA', '1', 'HRN', 'Housing(A1251H02-8P-HF, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00219AA', '1', 'HRN', 'Housing(A2541H02-1*1P, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00220AA', '1', 'HRN', 'Housing(A2541H02-1*3P, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00221AA', '1', 'HRN', 'Housing(A2541H02-1*4P, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00222AA', '1', 'HRN', 'Housing(A2006TOP-2-SS, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00223AA', '1', 'HRN', 'Housing(A2006H00-2*6, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00224AA', '1', 'HRN', 'Housing(A2012H00-13P, JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00225AA', '1', 'HRN', 'Housing(SFVR-02V-S, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00226AA', '1', 'HRN', 'Housing(1H10030-V1 )', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00227AA', '1', 'HRN', 'Housing(DCE153B-23024 )', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00228AA', '1', 'HRN', 'Housing(FH10003-30)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00229AA', '1', 'HRN', 'Housing(FH12520-30 )', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00230AA', '1', 'HRN', 'Housing(FH2005-14 )', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00231AA', '1', 'HRN', 'Housing(YFH800-01 )', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00232AA', '1', 'HRN', 'Housing(35156-0300 )', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00233AA', '1', 'HRN', 'Housing(DF11-12DS-2C, ???)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00234AA', '1', 'HRN', 'Housing(DAC-11F)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00235AA', '1', 'HRN', 'Housing(35184-0200, MOLEX)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00236AA', '1', 'HRN', 'Housing(12505HS-02, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00237AA', '1', 'HRN', 'Housing(12505HS-04, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00238AA', '1', 'HRN', 'Housing(12505HS-05, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00239AA', '1', 'HRN', 'Housing(12505HS-06, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00240AA', '1', 'HRN', 'Housing(12505HS-07, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00241AA', '1', 'HRN', 'Housing(12507HP-H16B1, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00242AA', '1', 'HRN', 'Housing(12507HS-H07B1, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00243AA', '1', 'HRN', 'Housing(12513HS-06L, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00244AA', '1', 'HRN', 'Housing(SMH200-18C, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00245AA', '1', 'HRN', 'Housing(PWH-0003-003, PARTRON)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00246AA', '1', 'HRN', 'Housing(12505HS-09, YEONHO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00247AA', '1', 'HRN', 'Housing(12505HS-10, YEONHO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00248AA', '1', 'HRN', 'Housing(12505HS-11, YEONHO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00249AA', '1', 'HRN', 'Housing(12505HS-12)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00250AA', '1', 'HRN', 'Housing(12507HS-20L(WHT), YEONHO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00251AA', '1', 'HRN', 'Housing(SMH200-30C, YEONHO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00252AA', '1', 'HRN', 'Housing(SMH250-13, YEONHO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00253AA', '1', 'HRN', 'Housing(SMH250-14, YEONHO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00254AA', '1', 'HRN', 'HOUSING(PHR-14)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00255AA', '1', 'HRN', 'HOUSING(SMH200-12Y)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00256AA', '1', 'HRN', 'Housing(PWH-0003-002, PARTRON)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00257AA', '1', 'HRN', 'DF11-2428SCF', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00258AA', '1', 'HRN', 'Housing(A2006H00-2*9P-SS,JWT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA04-00259AA', '1', 'HRN', 'HOUSING(12535HS-H26, YEONHO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA05-00001AB', '1', 'HRN', 'Heat Tube(0.8?, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA05-00002AB', '1', 'HRN', 'Heat Tube(1.0?, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA05-00003AB', '1', 'HRN', 'Heat Tube(1.5?, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA05-00004AB', '1', 'HRN', 'Heat Tube(2.0?, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA05-00005AB', '1', 'HRN', 'Heat Tube(2.5?, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA05-00006AB', '1', 'HRN', 'Heat Tube(3.0?, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA05-00007AB', '1', 'HRN', 'Heat Tube(3.0?(RED), ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA05-00008AB', '1', 'HRN', 'Heat Tube(3.5?, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA05-00009AB', '1', 'HRN', 'Heat Tube(4.0?, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA05-00010AB', '1', 'HRN', 'Heat Tube(5.0?, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA05-00011AB', '1', 'HRN', 'Heat Tube(6.0?, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA05-00012AB', '1', 'HRN', 'Heat Tube(7.0?, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA05-00013AB', '1', 'HRN', 'Heat Tube(8.0?, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA05-00014AB', '1', 'HRN', 'Heat Tube(10.0?, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA05-00015AB', '1', 'HRN', 'Heat Tube(11.0?, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA05-00016AB', '1', 'HRN', 'Heat Tube(12.0?, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA05-00017AB', '1', 'HRN', 'Heat Tube(14.0?, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA05-00018AB', '1', 'HRN', 'Heat Tube(15.0?, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA05-00019AB', '1', 'HRN', 'Heat Tube(16.0?, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA05-00020AB', '1', 'HRN', 'Heat Tube(18.0?, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA05-00021AB', '1', 'HRN', 'Heat Tube(22.0?, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA05-00022AB', '1', 'HRN', 'Heat Tube(25.0?, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA05-00023AB', '1', 'HRN', 'Heat Tube(30.0?, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA05-00024AB', '1', 'HRN', 'PVC Tube(5.28?, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA05-00025AB', '1', 'HRN', 'Heat Tube(0.7?, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA06-00001AB', '1', 'HRN', 'AT Tape(W:05mm BLK, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA06-00002AB', '1', 'HRN', 'AT Tape(W:10mm BLK, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA06-00003AB', '1', 'HRN', 'AT Tape(W:10mm WHT, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA06-00004AB', '1', 'HRN', 'AT Tape(W:15mm WHT, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA06-00005AB', '1', 'HRN', 'AT Tape(W:15mm BLK, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA06-00006AB', '1', 'HRN', 'AT Tape(W:20mm BLK, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA06-00007AB', '1', 'HRN', 'AT Tape(W:25mm BLK, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA06-00008AB', '1', 'HRN', 'AT Tape(W:30mm BLK, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA06-00009AB', '1', 'HRN', 'AT Tape(W:40mm BLK, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA06-00010AB', '1', 'HRN', 'AT Tape(W:50mm BLK, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA06-00011AB', '1', 'HRN', 'AT Tape(W:60mm BLK, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA06-00012AB', '1', 'HRN', 'AT Tape(W:1050mm*30m, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA06-00013AB', '1', 'HRN', 'AT Tape(W:45mm BLK, ??)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA07-00001AB', '1', 'HRN', 'EMI Tape(W:15mm, ComTech / DOOSUNG)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA07-00002AB', '1', 'HRN', 'EMI Tape(W:20mm, ComTech / DOOSUNG)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA07-00003AB', '1', 'HRN', 'EMI Tape(W:30mm, ComTech / DOOSUNG)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA07-00004AB', '1', 'HRN', 'EMI Tape(W:40mm, ComTech / DOOSUNG)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA07-00005AB', '1', 'HRN', 'EMI Tape(W:50mm, ComTech / DOOSUNG)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA07-00006AB', '1', 'HRN', 'EMI Tape(W:60mm, ComTech / DOOSUNG)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA07-00007AB', '1', 'HRN', 'EMI Tape(W:70mm, ComTech / DOOSUNG)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA07-00008AB', '1', 'HRN', 'EMI Tape(ID-NRO1-0.12T-20-50)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA07-00009AB', '1', 'HRN', 'EMI Tape(ID-NRO1-0.12T-30-50)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA08-00001AB', '1', 'HRN', 'RFS Tape(RFS-011-C-E-20-40-A1, DOOSUNG)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA08-00002AB', '1', 'HRN', 'RFS Tape(RFS-011-C-E-20-70-A1, DOOSUNG)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA08-00003AB', '1', 'HRN', 'RFS Tape(RFS-011-C-E-20-80-A1, DOOSUNG)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA09-00001AA', '1', 'HRN', 'Paper Tape(W:5mm WHT, ?????)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA10-00001AA', '1', 'HRN', 'Core(91R00950480951, EMI)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA10-00002AA', '1', 'HRN', 'Core(83R01240761461, EMI)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA10-00003AA', '1', 'HRN', 'Core(83R00143093151, EMI)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA10-00004AA', '1', 'HRN', 'CORE(PC33A, SCC)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA10-00005AA', '1', 'HRN', 'Core(PC 29A 152B (29*8-10) )', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA10-00006AA', '1', 'HRN', 'Core(PC 29B 152B (29*8-15) )', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA10-00007AA', '1', 'HRN', 'Core(SC 10F, SCC)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA10-00008AA', '1', 'HRN', 'CORE(SC 12A 152B (???))', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA12-00001AA', '1', 'HRN', 'Retainer(SMH250J-02RT, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA12-00002AA', '1', 'HRN', 'Retainer(SMH250J-03RT, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA12-00003AA', '1', 'HRN', 'Retainer(SMH250J-04RT, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA12-00004AA', '1', 'HRN', 'Retainer(SMH250J-05RT, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA12-00005AA', '1', 'HRN', 'Retainer(SMH250J-06RT, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA12-00006AA', '1', 'HRN', 'Retainer(SMH250J-07RT, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA12-00007AA', '1', 'HRN', 'Retainer(SMH250J-08RT, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA12-00008AA', '1', 'HRN', 'Retainer(SMH250J-09RT, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA12-00009AA', '1', 'HRN', 'Retainer(SMH250J-10RT, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA12-00010AA', '1', 'HRN', 'Retainer(SMH250J-11RT, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA12-00011AA', '1', 'HRN', 'Retainer(SMH250J-12RT, YEON HO)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA13-00001AA', '1', 'HRN', 'BRAKET(BN61-00352A, )', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA13-00002AA', '1', 'HRN', 'BRAKET(BN61-02237A, )', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA13-00003AA', '1', 'HRN', 'BRAKET(BN61-03020A, )', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA13-00004AB', '1', 'HRN', 'BRACKET(FH2915 CLIP)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA14-00001AA', '1', 'HRN', 'IRON CLAMP(91FS29*8*15-CP, )', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA15-00001AA', '1', 'HRN', 'SLEEVE TUBE(DFF18-3.0, )', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HA15-00002AA', '1', 'HRN', 'SLEEVE TUBE(DFFY8-3.0, )', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HC1206-9C.1', '3', 'MCH', 'CRIMPING M/C', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'SET', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HC1206-9C.10', '3', 'MCH', 'DIGITAL CUTTING M/C', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'SET', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HC1206-9C.2', '3', 'MCH', 'CRIMPING M/C', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'SET', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HC1206-9C.3', '3', 'MCH', 'WIRE STRIPPING M/C', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'SET', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HC1206-9C.4', '3', 'MCH', 'WIRE STRIPPING M/C 3F', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'SET', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HC1206-9C.5', '3', 'MCH', 'WIRE STRIPPING M/C 310', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'SET', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HC1206-9C.6', '3', 'MCH', 'WIRE HARNESS TESTER HC-868B', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'SET', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HC1206-9C.7', '3', 'MCH', 'WIRE HARNESS TESTER GT-8689F', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'SET', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HC1206-9C.8', '3', 'MCH', 'MICROSCOPE TESTER 1 : 6.5', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'SET', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HC1206-9C.9', '3', 'MCH', 'WIRE SLITTING M/C', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'SET', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HJYN121116-1.A', '3', 'MCH', 'INDUSTRIAL BLADE', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HJYN121116-1.B', '3', 'MCH', 'INDUSTRIAL KNIFE CORE', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HJYN121116-1.C', '3', 'MCH', 'INDUSTRIAL BAFFLE', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HJYN121116-2.A', '3', 'MCH', 'INDUSTRIAL BLADE ', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HJYN121116-2.B', '3', 'MCH', 'INDUSTRIAL BAFFLE', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HJYN121116-2.C', '3', 'MCH', 'INDUSTRIAL SHAFT SLEEVE', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HJYN121116-2.D', '3', 'MCH', 'PCB ASSY', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HM39-01005B', '0', 'HRN', 'HJ12-00026A(02); 150mm HARNESS', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HM39-01005B-CR', '11', 'HRN', '(X)BN39-01442L(CRIMPING HALF-PRODUCT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HM39-01009A', '0', 'HRN', 'HJ12-00013A (01); 125mm HARNESS', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HM39-01009A-CR', '11', 'HRN', '(X)BN39-01629A(CRIMPING HALF-PRODUCT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HM39-01010A', '0', 'HRN', 'HJ12-00009A(01); HARNESS', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HM39-01010A-CR', '11', 'HRN', '(X)BN39-01629E(CRIMPING HALF-PRODUCT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HM39-01069A', '0', 'HRN', 'HJ12-00143A(00) 150mm HARNESS', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HM39-01069A-CR', '11', 'HRN', '(X)BN39-01694D(CRIMPING HALF-PRODUCT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HM39-01117A', '0', 'HRN', 'HJ13-00006A (02); 170mm HARNESS', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HM39-01117A-CR', '11', 'HRN', '(X)BN39-01764B(CRIMPING HALF-PRODUCT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HM39-01118A', '0', 'HRN', 'HJ13-00026A (00); 290mm HARNESS', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HM39-01118A-CR', '11', 'HRN', '(X)BN39-01764C(CRIMPING HALF-PRODUCT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HM39-01119A', '0', 'HRN', 'HJ13-00022A (00); 170mm HARNESS', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HM39-01119A-CR', '11', 'HRN', '(X)BN39-01764A(CRIMPING HALF-PRODUCT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HM39-01120A', '0', 'HRN', 'HJ13-00025A (00); 290mm HARNESS', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HM39-01120A-CR', '11', 'HRN', '(X)BN39-01765A(CRIMPING HALF-PRODUCT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HM39-01121A', '0', 'HRN', 'HJ13-00024A (00); 520mm HARNESS', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HM39-01121A-CR', '11', 'HRN', '(X)BN39-01765B(CRIMPING HALF-PRODUCT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HM39-01122A', '0', 'HRN', 'HJ13-00036A (00); 720mm HARNESS', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HM39-01122A-CR', '11', 'HRN', '(X)BN39-01765C(CRIMPING HALF-PRODUCT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HM39-01123A', '0', 'HRN', 'HJ13-00037A (00); 860mm HARNESS', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('HM39-01123A-CR', '11', 'HRN', '(X)BN39-01765D(CRIMPING HALF-PRODUCT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'EA', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.1', '3', 'MCH', 'LOADER KL -900S', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.10', '3', 'MCH', 'TRAY FEEDER STF-100D', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.100', '3', 'MCH', 'DRYER DHR-50', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.101', '3', 'MCH', 'AIR TANK HAV 100', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.102', '3', 'MCH', 'AIR FILTER', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.103', '3', 'MCH', 'REFRIGERATOR SOLDER STORAGE 465RF', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.104', '3', 'MCH', 'BELT CONVEYOR LINE 16M', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.105', '3', 'MCH', 'BELT CONVEYOR LINE 8M', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.106', '3', 'MCH', 'JIG HOLDER', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.107', '3', 'MCH', 'MAGNIFYING GLASS QUICK KOREA228B', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.108', '3', 'MCH', 'VACUM PACKAGE 380Q-H', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.109', '3', 'MCH', 'HAENDEUKA', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.11', '3', 'MCH', 'FEEDER STIRAGE RACK (20SSLOT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.12', '3', 'MCH', 'FEEDER STIRAGE RACK (52SSLOT)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.13', '3', 'MCH', 'REEL TAPE CUTTER SHCN98', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.14', '3', 'MCH', 'STEM MATERIAL TOOL', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.15', '3', 'MCH', 'MOUNTER BAEKEOPPIN', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.16', '3', 'MCH', 'MOUNTER BACK PLATE ', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.17', '3', 'MCH', 'MOUNTER BACK PLATE ', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.18', '3', 'MCH', 'MOUNTER DUMP BOX', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.19', '3', 'MCH', 'MOUNTER NOZZLE CN065', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.2', '3', 'MCH', 'UNLOADER KUP-900S', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.20', '3', 'MCH', 'MOUNTER NOZZLE CN040', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.21', '3', 'MCH', 'SM421 FILTER', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.22', '3', 'MCH', 'SMEMA CABLE ASS\'Y', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.23', '3', 'MCH', 'FUSE', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.24', '3', 'MCH', 'ACETAL ROLLER', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.25', '3', 'MCH', 'ACETAN CHAIN', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.26', '3', 'MCH', 'CONVEYOR BELT', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.27', '3', 'MCH', 'CALIBERATION PLATE', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.28', '3', 'MCH', 'PCB MAGAZIN', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.29', '3', 'MCH', 'DAN WARD SPANNER', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.3', '3', 'MCH', 'CHIP MOUNTER SM421', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.30', '3', 'MCH', 'CHAOYANG DISTRICT SPANNER', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.31', '3', 'MCH', 'MONKEY SPANER', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.32', '3', 'MCH', 'HAMMER', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.33', '3', 'MCH', 'TEE WRENCHES', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.34', '3', 'MCH', 'P-TYPE WRENCH', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.35', '3', 'MCH', 'LONG PILLOWS', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.36', '3', 'MCH', 'DRIVER', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.37', '3', 'MCH', 'TOOLS BOX', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.38', '3', 'MCH', 'WORK TABLE KIC-900S', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.39', '3', 'MCH', 'CREAM SOLDER SOFTENER SS-1000', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.4', '3', 'MCH', '8MM FEEDER (1608 ONLY)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.40', '3', 'MCH', 'JESEUPHAM DH-1200', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.41', '3', 'MCH', 'PART COUNTER DC 200', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.42', '3', 'MCH', 'ULTRA SONIC CLEANE) SD-80H', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.43', '3', 'MCH', 'ULTRA SONIC CLEANE) SD-350H', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.44', '3', 'MCH', 'VISCO TESTER  VT-04F', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.45', '3', 'MCH', 'LCR METER (TX7301)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.46', '3', 'MCH', 'COATER', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.47', '3', 'MCH', 'TENSION GUAGE TGID-S1012B', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.48', '3', 'MCH', 'SYSTEM TESTER HAKKO 498', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.49', '3', 'MCH', 'SOLDERING TEMPERATURE TESTER QUICK KOREA 191A', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.5', '3', 'MCH', '12MM FEEDER (MULTI ONLY)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.50', '3', 'MCH', 'SOLDERING IRON FX888-14BK', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.51', '3', 'MCH', 'THERMO-HYGROMETER BJ5478', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.52', '3', 'MCH', 'THERMO-HYGROMETER 608-H1', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.53', '3', 'MCH', 'CABINETS', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.54', '3', 'MCH', 'CABINET LOCKER (YURIJANG)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.55', '3', 'MCH', 'SEMI-FINISHED RACK', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.56', '3', 'MCH', 'DAI STEEL', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.57', '3', 'MCH', 'SECONDARY DAI', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.58', '3', 'MCH', 'PRODUCT STORAGE AND LOCKERS', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.59', '3', 'MCH', 'OSCILLOSCOPE DS-1510', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.6', '3', 'MCH', '16MM FEEDER (MULTI ONLY)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.60', '3', 'MCH', 'DIGITAL MICROSCOPE AM 413T', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.61', '3', 'MCH', 'DIGITAL TORQUE METER H-10l', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.62', '3', 'MCH', 'SEMI-FINISHED BALANCE ', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.63', '3', 'MCH', 'SEMI-FINISHED BALANCE ', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.64', '3', 'MCH', 'BALANCE CARRIED', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.65', '3', 'MCH', 'TR ', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.66', '3', 'MCH', 'SMD REWORK STATION QUICK KOREA990D', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.67', '3', 'MCH', 'MASK SECHEOKDAE', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.68', '3', 'MCH', 'PASTE INPECTION SP150T', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.69', '3', 'MCH', 'VISION INPECTION (AIO) TR7500DT', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.7', '3', 'MCH', '24MM FEEDER (MULTI ONLY)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.70', '3', 'MCH', 'SCREEN PRINTER PS2000XL', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.71', '3', 'MCH', 'PRINTER SQUEEZE 350MM', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.72', '3', 'MCH', 'PRINTER SQUEEZE 460MM', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.73', '3', 'MCH', 'PRINTER SQUEEZE 550MM', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.74', '3', 'MCH', 'PRINTER SQUEEZE 660MM', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.75', '3', 'MCH', 'PRINTER BACK PLATE SPECIAL', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.76', '3', 'MCH', 'PRINTER BACK PLATE  ', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.77', '3', 'MCH', 'PRINTER BACK PLATE  ', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.78', '3', 'MCH', 'PRINTER  BAEKEOPPIN', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.79', '3', 'MCH', 'PRINTER  BAEKEOPPIN', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.8', '3', 'MCH', '32MM FEEDER (MULTI ONLY)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.80', '3', 'MCH', 'PRINTER ADSORPTION BAEKEOPPIN', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.81', '3', 'MCH', 'PRINTER FLUORESCENT', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.82', '3', 'MCH', 'HAND PAPER', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.83', '3', 'MCH', 'ROLL PAPER', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.84', '3', 'MCH', 'BARCODE PRINTER B-452-TS22-QP ', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.85', '3', 'MCH', 'LABEL COMPUTER X270KN.A5MADE', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.86', '3', 'MCH', 'LABEL COMPUTER MONITOR LS-E1920XSF/KR', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.87', '3', 'MCH', 'VARIER CALIPER CD-30C', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.88', '3', 'MCH', 'DIGITAL MULTI METER ESCORT-179', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.89', '3', 'MCH', 'REFLOW ZKS-610 + ZKS-612', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.9', '3', 'MCH', '44MM FEEDER (MULTI ONLY)', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.90', '3', 'MCH', 'PROFILER MTD-205M', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.91', '3', 'MCH', 'PROFILE COMPUTER Z270V-4MADE', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.92', '3', 'MCH', 'PROFILE COMPUTER MONITOR L171S-SNN.ANKREP', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.93', '3', 'MCH', 'REFLOW BLOW MOTER', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.94', '3', 'MCH', 'REFLOW STAND COVER', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.95', '3', 'MCH', 'REFLOW CIRCUIT BREAKER', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.96', '3', 'MCH', 'RELAY', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.97', '3', 'MCH', 'RELAY', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.98', '3', 'MCH', 'HOT PLATE QUICK-KOREA870', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('JK120831-O.99', '3', 'MCH', 'KOMPUTERE OSYEO AS30EE', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', '0.00000', '', '', '');
INSERT INTO `mst_barang` VALUES ('UL10368 #28 150', '1', 'PBA', 'UL10368 #28 150*6', '', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'MT', '0.00000', '', '', '');

-- ----------------------------
-- Table structure for `mst_caraangkut`
-- ----------------------------
DROP TABLE IF EXISTS `mst_caraangkut`;
CREATE TABLE `mst_caraangkut` (
  `KdCrAngkut` tinyint(1) NOT NULL,
  `NmCrAngkut` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`KdCrAngkut`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_caraangkut
-- ----------------------------
INSERT INTO `mst_caraangkut` VALUES ('1', 'Laut');
INSERT INTO `mst_caraangkut` VALUES ('2', 'Kereta Api');
INSERT INTO `mst_caraangkut` VALUES ('3', 'Jalan Raya');
INSERT INTO `mst_caraangkut` VALUES ('4', 'Udara');
INSERT INTO `mst_caraangkut` VALUES ('5', 'POS');
INSERT INTO `mst_caraangkut` VALUES ('6', 'Multimoda');
INSERT INTO `mst_caraangkut` VALUES ('7', 'Instalasi / Pipa');
INSERT INTO `mst_caraangkut` VALUES ('8', 'Sungai');
INSERT INTO `mst_caraangkut` VALUES ('9', 'Lainnya');

-- ----------------------------
-- Table structure for `mst_carabayar`
-- ----------------------------
DROP TABLE IF EXISTS `mst_carabayar`;
CREATE TABLE `mst_carabayar` (
  `KdCrBayar` tinyint(1) NOT NULL DEFAULT '0',
  `CrBayar` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`KdCrBayar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_carabayar
-- ----------------------------
INSERT INTO `mst_carabayar` VALUES ('1', 'Dilakukan dimuka');
INSERT INTO `mst_carabayar` VALUES ('2', 'Kemudian');
INSERT INTO `mst_carabayar` VALUES ('3', 'Sight Letter of Cred');
INSERT INTO `mst_carabayar` VALUES ('4', 'Usance Letter of Cre');
INSERT INTO `mst_carabayar` VALUES ('5', 'Red Clause Letter of');
INSERT INTO `mst_carabayar` VALUES ('6', 'Wesel Inkaso');
INSERT INTO `mst_carabayar` VALUES ('7', 'Konsinyasi');
INSERT INTO `mst_carabayar` VALUES ('8', 'Interoffice Account');
INSERT INTO `mst_carabayar` VALUES ('9', 'Lainnya');

-- ----------------------------
-- Table structure for `mst_caradagang`
-- ----------------------------
DROP TABLE IF EXISTS `mst_caradagang`;
CREATE TABLE `mst_caradagang` (
  `KdCrDagang` tinyint(1) NOT NULL DEFAULT '0',
  `CrDagang` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`KdCrDagang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_caradagang
-- ----------------------------
INSERT INTO `mst_caradagang` VALUES ('1', 'Imbal dagang');
INSERT INTO `mst_caradagang` VALUES ('2', 'Lainnya');

-- ----------------------------
-- Table structure for `mst_caraserah_barang`
-- ----------------------------
DROP TABLE IF EXISTS `mst_caraserah_barang`;
CREATE TABLE `mst_caraserah_barang` (
  `KdCrSerahBrg` varchar(3) NOT NULL DEFAULT '',
  `NmCrSerahBrg` varchar(30) DEFAULT NULL,
  `KetCrSerahBrg` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`KdCrSerahBrg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_caraserah_barang
-- ----------------------------
INSERT INTO `mst_caraserah_barang` VALUES ('CFR', 'Cost And Freight', 'diikuti nama pelabuhan bongkar');
INSERT INTO `mst_caraserah_barang` VALUES ('CIF', 'Cost, Insurance, And Freight', 'diikuti nama pelabuhan bongkar');
INSERT INTO `mst_caraserah_barang` VALUES ('CIP', 'Carriage and Insurance Paid To', null);
INSERT INTO `mst_caraserah_barang` VALUES ('CPT', 'Carriage Paid To', 'nama pelabuhan tujuan');
INSERT INTO `mst_caraserah_barang` VALUES ('DAF', 'Delivered and Frontier', null);
INSERT INTO `mst_caraserah_barang` VALUES ('DDP', 'Delivered Duty Paid', null);
INSERT INTO `mst_caraserah_barang` VALUES ('DDU', 'Delivered Duty Unpai', 'nama pelabuhan tujuan');
INSERT INTO `mst_caraserah_barang` VALUES ('DEQ', 'Delivered Ex Quay', 'nama pelabuhan tujuan');
INSERT INTO `mst_caraserah_barang` VALUES ('DES', 'Delivered Ex Ship', 'nama pelabuhan tujuan');
INSERT INTO `mst_caraserah_barang` VALUES ('EXW', 'Ex Works', 'diikuti nama tempat/ pabrik penjual');
INSERT INTO `mst_caraserah_barang` VALUES ('FAS', 'Free Alongside Ship', 'nama pelabuhan muat');
INSERT INTO `mst_caraserah_barang` VALUES ('FCA', 'Free Carrier', null);
INSERT INTO `mst_caraserah_barang` VALUES ('FOB', 'Free On Board', 'diikuti nama pelabuhan muat');

-- ----------------------------
-- Table structure for `mst_daerah`
-- ----------------------------
DROP TABLE IF EXISTS `mst_daerah`;
CREATE TABLE `mst_daerah` (
  `KdDaerah` varchar(4) NOT NULL DEFAULT '',
  `NmDaerah` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`KdDaerah`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_daerah
-- ----------------------------
INSERT INTO `mst_daerah` VALUES ('3100', 'Prov. D K I Jakarta');
INSERT INTO `mst_daerah` VALUES ('3200', 'Prov. Jawa Barat');
INSERT INTO `mst_daerah` VALUES ('3204', 'Soreang');
INSERT INTO `mst_daerah` VALUES ('3205', 'Garut, Jawa Barat');
INSERT INTO `mst_daerah` VALUES ('3213', 'Subang, Jawa Barat');
INSERT INTO `mst_daerah` VALUES ('3214', 'Purwakarta, Jawa Barat');

-- ----------------------------
-- Table structure for `mst_factory`
-- ----------------------------
DROP TABLE IF EXISTS `mst_factory`;
CREATE TABLE `mst_factory` (
  `kode_fac` char(2) NOT NULL COMMENT 'kode pabrik',
  `nama_fac` varchar(50) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `fax` varchar(15) NOT NULL,
  `nm_pimp` varchar(30) NOT NULL COMMENT 'nama pimpinan',
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`kode_fac`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_factory
-- ----------------------------
INSERT INTO `mst_factory` VALUES ('01', 'PT. YANJIN INDONESIA FACTORY', '', '', '', '', '');

-- ----------------------------
-- Table structure for `mst_in_type`
-- ----------------------------
DROP TABLE IF EXISTS `mst_in_type`;
CREATE TABLE `mst_in_type` (
  `matin_type` varchar(1) NOT NULL DEFAULT '0',
  `matin_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`matin_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_in_type
-- ----------------------------
INSERT INTO `mst_in_type` VALUES ('0', 'Purchase');
INSERT INTO `mst_in_type` VALUES ('1', 'Replacement');
INSERT INTO `mst_in_type` VALUES ('2', 'From Production');

-- ----------------------------
-- Table structure for `mst_jenisbarang`
-- ----------------------------
DROP TABLE IF EXISTS `mst_jenisbarang`;
CREATE TABLE `mst_jenisbarang` (
  `KdJnsBarang` tinyint(2) NOT NULL DEFAULT '0',
  `JnsBarang` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`KdJnsBarang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_jenisbarang
-- ----------------------------
INSERT INTO `mst_jenisbarang` VALUES ('0', 'Barang Jadi');
INSERT INTO `mst_jenisbarang` VALUES ('1', 'Bahan Baku');
INSERT INTO `mst_jenisbarang` VALUES ('2', 'Bahan Penolong');
INSERT INTO `mst_jenisbarang` VALUES ('3', 'Mesin/Sparepart');
INSERT INTO `mst_jenisbarang` VALUES ('4', 'Peralatan Pabrik');
INSERT INTO `mst_jenisbarang` VALUES ('5', 'Peralatan Perkantoran');
INSERT INTO `mst_jenisbarang` VALUES ('6', 'Peralatan Kontruksi');
INSERT INTO `mst_jenisbarang` VALUES ('7', 'Brg Reimpor TPB');
INSERT INTO `mst_jenisbarang` VALUES ('8', 'Brg Contoh/Test');
INSERT INTO `mst_jenisbarang` VALUES ('9', 'Lainnya');
INSERT INTO `mst_jenisbarang` VALUES ('10', 'Lebih dr 1 Jenis Brg');
INSERT INTO `mst_jenisbarang` VALUES ('11', 'WIP');
INSERT INTO `mst_jenisbarang` VALUES ('12', 'Scrap');

-- ----------------------------
-- Table structure for `mst_jenisekspor`
-- ----------------------------
DROP TABLE IF EXISTS `mst_jenisekspor`;
CREATE TABLE `mst_jenisekspor` (
  `KdJnsEkspor` tinyint(1) NOT NULL DEFAULT '0',
  `JnsEkspor` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`KdJnsEkspor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_jenisekspor
-- ----------------------------
INSERT INTO `mst_jenisekspor` VALUES ('1', 'Biasa');
INSERT INTO `mst_jenisekspor` VALUES ('2', 'Akan Diimpor Kembali');
INSERT INTO `mst_jenisekspor` VALUES ('3', 'Reekspor');

-- ----------------------------
-- Table structure for `mst_kategoriekspor`
-- ----------------------------
DROP TABLE IF EXISTS `mst_kategoriekspor`;
CREATE TABLE `mst_kategoriekspor` (
  `KdKatEkspor` tinyint(2) NOT NULL DEFAULT '0',
  `KatEkspor` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`KdKatEkspor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_kategoriekspor
-- ----------------------------
INSERT INTO `mst_kategoriekspor` VALUES ('1', 'Umum');
INSERT INTO `mst_kategoriekspor` VALUES ('2', 'Kemudahan Impor Tujuan Ekspor (KITE) dengan pembeb');
INSERT INTO `mst_kategoriekspor` VALUES ('3', 'Kemudahan Impor Tujuan Eksporb (KITE) dengan pengembalian');
INSERT INTO `mst_kategoriekspor` VALUES ('4', 'Kemudahan Impor Tujuan Eksporb (KITE) dengan pembebasan dan pengembalian');
INSERT INTO `mst_kategoriekspor` VALUES ('5', 'Khusus barang kiriman');
INSERT INTO `mst_kategoriekspor` VALUES ('6', 'Khusus barang pindahan');
INSERT INTO `mst_kategoriekspor` VALUES ('7', 'Khusus barang perwakilan negara asing atau badan international');
INSERT INTO `mst_kategoriekspor` VALUES ('8', 'Khusus untuk keperluan ibadah untuk umum, sosial, pendidikan, kebudayaan ');
INSERT INTO `mst_kategoriekspor` VALUES ('9', 'Khusus barang cinderamata');
INSERT INTO `mst_kategoriekspor` VALUES ('10', 'Khusus barang contoh');
INSERT INTO `mst_kategoriekspor` VALUES ('11', 'Khusus barang keperluan penelitian');
INSERT INTO `mst_kategoriekspor` VALUES ('12', 'Tempat Penimbunan Berikat (TPB) dari Kawasan Berikat');
INSERT INTO `mst_kategoriekspor` VALUES ('13', 'Tempat Penimbunan Berikat (TPB) dari Gudang Berikat');
INSERT INTO `mst_kategoriekspor` VALUES ('14', 'Tempat Penimbunan Berikat (TPB) dari Tempat Pameran Berikat');
INSERT INTO `mst_kategoriekspor` VALUES ('15', 'Tempat Penimbunan Berikat (TPB) dari Toko Bebas Bea');
INSERT INTO `mst_kategoriekspor` VALUES ('16', 'Tempat Penimbunan Berikat (TPB) dari Tempat Lelang Berikat');
INSERT INTO `mst_kategoriekspor` VALUES ('17', 'Tempat Penimbunan Berikat (TPB) dari Kawasan Daur Ulang Berikat');

-- ----------------------------
-- Table structure for `mst_lokasiperiksa`
-- ----------------------------
DROP TABLE IF EXISTS `mst_lokasiperiksa`;
CREATE TABLE `mst_lokasiperiksa` (
  `KdLokPeriksa` tinyint(1) NOT NULL DEFAULT '0',
  `LokPeriksa` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`KdLokPeriksa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_lokasiperiksa
-- ----------------------------
INSERT INTO `mst_lokasiperiksa` VALUES ('1', 'Kawasan Pabean');
INSERT INTO `mst_lokasiperiksa` VALUES ('2', 'Luar Kawasan Pabean');

-- ----------------------------
-- Table structure for `mst_negara`
-- ----------------------------
DROP TABLE IF EXISTS `mst_negara`;
CREATE TABLE `mst_negara` (
  `KdNegara` varchar(2) NOT NULL DEFAULT '',
  `NmNegara` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`KdNegara`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_negara
-- ----------------------------
INSERT INTO `mst_negara` VALUES ('CN', 'Cina');
INSERT INTO `mst_negara` VALUES ('ID', 'Indonesia');
INSERT INTO `mst_negara` VALUES ('JP', 'Jepang');
INSERT INTO `mst_negara` VALUES ('KR', 'Korea, Republic Of');
INSERT INTO `mst_negara` VALUES ('US', 'United States');

-- ----------------------------
-- Table structure for `mst_out_type`
-- ----------------------------
DROP TABLE IF EXISTS `mst_out_type`;
CREATE TABLE `mst_out_type` (
  `matout_type` varchar(1) NOT NULL DEFAULT '0',
  `matout_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`matout_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_out_type
-- ----------------------------
INSERT INTO `mst_out_type` VALUES ('0', 'Consumption');
INSERT INTO `mst_out_type` VALUES ('1', 'Return');
INSERT INTO `mst_out_type` VALUES ('2', 'From Production');

-- ----------------------------
-- Table structure for `mst_pelabuhan`
-- ----------------------------
DROP TABLE IF EXISTS `mst_pelabuhan`;
CREATE TABLE `mst_pelabuhan` (
  `KdPelabuhan` varchar(5) NOT NULL DEFAULT '',
  `NmPelabuhan` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`KdPelabuhan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_pelabuhan
-- ----------------------------
INSERT INTO `mst_pelabuhan` VALUES ('IDTPP', 'Tanjung Priok');
INSERT INTO `mst_pelabuhan` VALUES ('KRPUS', 'Busan (ex Pusan)');
INSERT INTO `mst_pelabuhan` VALUES ('USFAT', 'Fresno');

-- ----------------------------
-- Table structure for `mst_penggunaanbarang`
-- ----------------------------
DROP TABLE IF EXISTS `mst_penggunaanbarang`;
CREATE TABLE `mst_penggunaanbarang` (
  `KdGuna` varchar(1) NOT NULL DEFAULT '',
  `NmGuna` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`KdGuna`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_penggunaanbarang
-- ----------------------------
INSERT INTO `mst_penggunaanbarang` VALUES ('1', 'Barang Berhubungan Langsung');
INSERT INTO `mst_penggunaanbarang` VALUES ('2', 'Barang Tidak Berhubungan Langsung');
INSERT INTO `mst_penggunaanbarang` VALUES ('3', 'Barang Konsumsi');
INSERT INTO `mst_penggunaanbarang` VALUES ('4', 'Hasil Olahan');
INSERT INTO `mst_penggunaanbarang` VALUES ('5', 'Barang Lainnya');

-- ----------------------------
-- Table structure for `mst_penimbunan`
-- ----------------------------
DROP TABLE IF EXISTS `mst_penimbunan`;
CREATE TABLE `mst_penimbunan` (
  `KdTimbun` varchar(5) NOT NULL DEFAULT '',
  `NmTimbun` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`KdTimbun`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_penimbunan
-- ----------------------------
INSERT INTO `mst_penimbunan` VALUES ('UTPK', 'UTPK III');

-- ----------------------------
-- Table structure for `mst_perusahaan`
-- ----------------------------
DROP TABLE IF EXISTS `mst_perusahaan`;
CREATE TABLE `mst_perusahaan` (
  `NmPrshn` varchar(50) NOT NULL DEFAULT '',
  `TpPrshn` enum('o','c','s','p') NOT NULL DEFAULT 'o' COMMENT '''o''=Owner, ''c''=Customer/Buyer, ''s''=Supplier,''p''=PPJK',
  `NpwpPrshn` varchar(30) DEFAULT NULL,
  `AlmtPrshn` varchar(100) DEFAULT NULL,
  `AlmtPrshn2` varchar(100) DEFAULT NULL,
  `Kota` varchar(20) DEFAULT NULL,
  `Prov` varchar(20) DEFAULT NULL,
  `Negara` varchar(20) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `tlp` varchar(30) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `StatusKB` enum('KB','Non KB') DEFAULT NULL,
  `NoTpb` varchar(50) DEFAULT NULL,
  `TgTpb` date DEFAULT NULL,
  `Niper` varchar(50) DEFAULT NULL,
  `NoTDP` varchar(10) DEFAULT NULL,
  `TgTDP` date DEFAULT NULL,
  `Cp` varchar(30) DEFAULT NULL,
  `NipCp` varchar(20) DEFAULT NULL,
  `NoPokokPpjk` varchar(20) DEFAULT NULL,
  `TgPokokPpjk` date DEFAULT NULL,
  `KdApi` enum('1','2') DEFAULT NULL,
  `NoApi` varchar(15) DEFAULT NULL,
  `KdPengguna` varchar(6) DEFAULT NULL,
  `NoReg1` varchar(6) DEFAULT NULL,
  `NoReg2` varchar(6) DEFAULT NULL,
  `KpbcPengawas` varchar(6) DEFAULT NULL,
  `NmPejabat` varchar(30) DEFAULT NULL,
  `NipPejabat` varchar(20) DEFAULT NULL,
  `Valuta` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`NmPrshn`,`TpPrshn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_perusahaan
-- ----------------------------
INSERT INTO `mst_perusahaan` VALUES ('CHEMTRONICS CO.,LTD', 'c', '', '35, Buk-ri Namsa-myeon Cheoin-gu, Yongin-si Gyeonggi-do (Seoul 449-884 Korea)', null, '', '', 'KR', '', '', '90', 'Non KB', '', null, '', null, null, '', null, '', '0000-00-00', null, null, null, null, null, null, null, null, 'USD');
INSERT INTO `mst_perusahaan` VALUES ('CHEMTRONICS CO.,LTD', 's', '', '35, Buk-ri Namsa-myeon Cheoin-gu, Yongin-si Gyeonggi-do (Seoul 449-884 Korea)', null, '', '', 'KR', '', '', '90', 'Non KB', '', null, '', null, null, '', null, '', '0000-00-00', null, null, null, null, null, null, null, null, 'USD');
INSERT INTO `mst_perusahaan` VALUES ('HYUB JIN CABLE (TIANJIN) CO., LTD', 's', '', 'NO. 1-2 FIVE BRANCH ROAD SAIDA XIQING ECONOMIC DEVELOPMENT AREA, TIANJIN', null, '', '', 'CN', '', '', '90', 'Non KB', '', null, '', null, null, '', null, '', '0000-00-00', null, null, null, null, null, null, null, null, 'USD');
INSERT INTO `mst_perusahaan` VALUES ('PT. CHEMTRONICS', 'o', null, null, '', null, 'Jawa Barat', 'Indonesia', '', '', '0', '', null, '0000-00-00', '_', null, '0000-00-00', null, '', '', '0000-00-00', null, null, '000000', null, null, '050800', '', '', 'Rp');

-- ----------------------------
-- Table structure for `mst_status`
-- ----------------------------
DROP TABLE IF EXISTS `mst_status`;
CREATE TABLE `mst_status` (
  `KdStatus` varchar(2) NOT NULL DEFAULT '',
  `NmStatus` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`KdStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_status
-- ----------------------------
INSERT INTO `mst_status` VALUES ('10', 'Koperasi');
INSERT INTO `mst_status` VALUES ('20', 'PMDN (migas)');
INSERT INTO `mst_status` VALUES ('21', 'PMDN (non migas)');
INSERT INTO `mst_status` VALUES ('30', 'PMA (migas)');
INSERT INTO `mst_status` VALUES ('31', 'PMA (non migas)');
INSERT INTO `mst_status` VALUES ('40', 'BUMN');
INSERT INTO `mst_status` VALUES ('50', 'BUMD');
INSERT INTO `mst_status` VALUES ('60', 'Perorangan');
INSERT INTO `mst_status` VALUES ('90', 'Lainnya');

-- ----------------------------
-- Table structure for `mst_status_petikemas`
-- ----------------------------
DROP TABLE IF EXISTS `mst_status_petikemas`;
CREATE TABLE `mst_status_petikemas` (
  `KdStPetiKemas` varchar(6) NOT NULL DEFAULT '',
  `NmStPetiKemas` varchar(20) DEFAULT NULL,
  `UrStPetiKemas` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`KdStPetiKemas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_status_petikemas
-- ----------------------------
INSERT INTO `mst_status_petikemas` VALUES ('1', 'FCL', 'Full Container Load');
INSERT INTO `mst_status_petikemas` VALUES ('2', 'LCL', 'Less Container Load');
INSERT INTO `mst_status_petikemas` VALUES ('3', 'Gabungan FCL dan LCL', 'Gabungan FCL dan LCL');

-- ----------------------------
-- Table structure for `penjamin`
-- ----------------------------
DROP TABLE IF EXISTS `penjamin`;
CREATE TABLE `penjamin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NmPenjamin` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of penjamin
-- ----------------------------
INSERT INTO `penjamin` VALUES ('1', 'PT.ASURANSI MEGA PRATAMA');
INSERT INTO `penjamin` VALUES ('7', '1');
INSERT INTO `penjamin` VALUES ('8', '');

-- ----------------------------
-- Table structure for `ppic_fgmatcon`
-- ----------------------------
DROP TABLE IF EXISTS `ppic_fgmatcon`;
CREATE TABLE `ppic_fgmatcon` (
  `matcon_id` varchar(20) NOT NULL COMMENT 'ID Material Consumption',
  `child_no` int(10) NOT NULL COMMENT 'Nomor Urut Detail',
  `mat_id` varchar(20) NOT NULL COMMENT 'ID Material',
  `qty` decimal(10,2) NOT NULL COMMENT 'Jumlah Pemakaian',
  PRIMARY KEY (`matcon_id`,`child_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ppic_fgmatcon
-- ----------------------------
INSERT INTO `ppic_fgmatcon` VALUES ('FBI-0001', '1', 'ALME0001', '0.01');
INSERT INTO `ppic_fgmatcon` VALUES ('FBI-0001', '2', 'ALME0003', '0.40');
INSERT INTO `ppic_fgmatcon` VALUES ('FBI-0001', '3', 'ALME0002', '0.04');

-- ----------------------------
-- Table structure for `pur_podet`
-- ----------------------------
DROP TABLE IF EXISTS `pur_podet`;
CREATE TABLE `pur_podet` (
  `po_id` int(10) NOT NULL DEFAULT '0' COMMENT 'Nomor ID Transaksi P/O ke Supplier',
  `child_no` int(10) NOT NULL DEFAULT '0' COMMENT 'Nomor Item Detail Transaksi',
  `mat_id` varchar(20) NOT NULL DEFAULT '0' COMMENT 'Nomor Id Material',
  `qty` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT 'Jumlah Qty saat pemesanan',
  `price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT 'Jumlah Harga Satuan Barang',
  PRIMARY KEY (`po_id`,`child_no`),
  CONSTRAINT `pur_podet_ibfk_1` FOREIGN KEY (`po_id`) REFERENCES `pur_pohdr` (`po_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Detail Transaksi Pemesanan Barang';

-- ----------------------------
-- Records of pur_podet
-- ----------------------------
INSERT INTO `pur_podet` VALUES ('3', '1', 'TESMAT-2', '2.00', '2.00');
INSERT INTO `pur_podet` VALUES ('4', '1', 'TESMAT-1', '1.00', '2.00');
INSERT INTO `pur_podet` VALUES ('5', '1', 'ALME0002', '200.00', '100.00');
INSERT INTO `pur_podet` VALUES ('6', '1', 'M001', '100.00', '200.00');
INSERT INTO `pur_podet` VALUES ('6', '2', 'P001', '200.00', '100.00');

-- ----------------------------
-- Table structure for `pur_pohdr`
-- ----------------------------
DROP TABLE IF EXISTS `pur_pohdr`;
CREATE TABLE `pur_pohdr` (
  `po_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Nomor ID Transaksi P/O ke Supplier',
  `po_type` enum('0','1') DEFAULT '0' COMMENT '0=po normal, 1=po return',
  `po_no` varchar(20) NOT NULL DEFAULT '' COMMENT 'Nomor Transaksi Pesanan',
  `po_date` date NOT NULL COMMENT 'Tanggal dan Jam Pemesanan',
  `ref_id` int(10) DEFAULT NULL,
  `ref_no` varchar(20) DEFAULT NULL,
  `supplier` varchar(50) NOT NULL COMMENT 'Kode Supplier Tujuan',
  `attn` varchar(40) NOT NULL DEFAULT '' COMMENT 'Contact Person Supplier',
  `currency` varchar(3) NOT NULL DEFAULT 'IDR',
  `dlv_date` datetime NOT NULL COMMENT 'Tanggal Barang akan Dikirim',
  `wh_id` int(2) DEFAULT NULL,
  `notes` varchar(80) NOT NULL DEFAULT '' COMMENT 'Catatan Transaksi Pesanan',
  `sub_total` decimal(19,2) NOT NULL COMMENT 'Total field ''amount_po'' pada tabel detailnya',
  `disc_pct` decimal(5,2) NOT NULL COMMENT 'Persentase Diskon',
  `disc_amt` decimal(15,2) NOT NULL COMMENT 'Nilai Diskon',
  `ppn` decimal(10,2) NOT NULL,
  `tot_qty` decimal(10,2) NOT NULL COMMENT 'Nilai setelah dikurangi Diskon, ditambah PPn',
  `tot_amount` decimal(12,2) DEFAULT NULL,
  `terms` varchar(30) NOT NULL DEFAULT '1',
  `spec` varchar(50) DEFAULT NULL,
  `width_tol` varchar(20) DEFAULT NULL,
  `thick_tol` varchar(20) DEFAULT NULL,
  `Wrmax` int(10) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `auth_sign` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`po_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COMMENT='Header Transaksi Pesanan Material ke Supplier';

-- ----------------------------
-- Records of pur_pohdr
-- ----------------------------
INSERT INTO `pur_pohdr` VALUES ('3', '1', '1', '2012-08-31', '2', '222', 'PT. ALUMINDO LIGHT METAL INDUSTRY', '2', 'USD', '2012-08-31 00:00:00', '1', '2', '0.00', '0.00', '0.00', '1.00', '0.00', null, '1', '1', '1', '1', '1', '2', '2');
INSERT INTO `pur_pohdr` VALUES ('4', '1', '2', '2012-08-31', '1', '111', 'PT. INDAL ALUMINIUM INDUSTRY - DIV. ISS', '1', 'USD', '2012-08-31 00:00:00', '1', '1', '0.00', '0.00', '0.00', '2.00', '0.00', null, '2', '2', '1', '1', '1', '2', '2');
INSERT INTO `pur_pohdr` VALUES ('5', '0', '001', '2012-08-06', null, null, 'PT. ALUMINDO LIGHT METAL INDUSTRY', '1', 'USD', '2012-09-13 00:00:00', '1', '3', '0.00', '0.00', '0.00', '10.00', '0.00', null, '2', '4', '6', '7', '9', '8', '10');
INSERT INTO `pur_pohdr` VALUES ('6', '0', '002', '2012-10-28', null, null, 'PT. DIHEN BERSAMA', 'Kikin', 'Rp', '2012-10-31 00:00:00', '0', 'Just a test', '0.00', '0.00', '0.00', '10.00', '0.00', null, 'tes', '', '', '', '0', '', '');

-- ----------------------------
-- Table structure for `satuan`
-- ----------------------------
DROP TABLE IF EXISTS `satuan`;
CREATE TABLE `satuan` (
  `KdSat` varchar(3) NOT NULL DEFAULT '' COMMENT 'Kode Satuan',
  `UrSat` varchar(30) DEFAULT NULL COMMENT 'Uraian Satuan',
  PRIMARY KEY (`KdSat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of satuan
-- ----------------------------
INSERT INTO `satuan` VALUES ('CMT', 'Centimetre');
INSERT INTO `satuan` VALUES ('DZN', 'Dozen');
INSERT INTO `satuan` VALUES ('EA', 'Each');
INSERT INTO `satuan` VALUES ('KG', 'Kilogram');
INSERT INTO `satuan` VALUES ('MT', 'Metre');
INSERT INTO `satuan` VALUES ('PCS', 'Pieces');
INSERT INTO `satuan` VALUES ('SET', 'Set');
INSERT INTO `satuan` VALUES ('TNE', 'Tonne, Metric ton (1000 kg)');

-- ----------------------------
-- Table structure for `stock2012`
-- ----------------------------
DROP TABLE IF EXISTS `stock2012`;
CREATE TABLE `stock2012` (
  `KODEBARANG` varchar(15) DEFAULT NULL,
  `GrpMat` varchar(3) DEFAULT NULL,
  `NAMA_BARANG` varchar(100) DEFAULT NULL,
  `SATUAN` varchar(3) DEFAULT NULL,
  `STOK OPNAME` double DEFAULT NULL,
  `Tipe` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of stock2012
-- ----------------------------
INSERT INTO `stock2012` VALUES ('0204-002420', 'CNS', 'SOLVENT (IM-1000)', 'KG', '0', '2');
INSERT INTO `stock2012` VALUES ('A', 'CNS', 'TOILON SHEET 300X150X0,5MM', 'EA', '0', '2');
INSERT INTO `stock2012` VALUES ('CI01-00001A', 'CNS', 'SMALL BOX(W545xD360xH155)', 'EA', '50', '2');
INSERT INTO `stock2012` VALUES ('CI01-00002A', 'CNS', 'BIG BOX(W545xD360xH375)', 'EA', '182', '2');
INSERT INTO `stock2012` VALUES ('CI01-00003A', 'CNS', 'PAD(W534xD340)', 'EA', '2652', '2');
INSERT INTO `stock2012` VALUES ('CI02-00001A', 'CNS', 'POLY BAG 40 x 200', 'EA', '0', '2');
INSERT INTO `stock2012` VALUES ('CI03-00003A', 'CNS', 'SILICAGEL(Bening @ 10 gram)', 'EA', '500', '2');
INSERT INTO `stock2012` VALUES ('CI04-00003A', 'CNS', 'TRAY(12 TRAY)', 'EA', '1530', '2');
INSERT INTO `stock2012` VALUES ('CI08-00001A', 'CNS', 'Solder Wire', 'KG', '0', '2');
INSERT INTO `stock2012` VALUES ('CI08-00002A', 'CNS', 'Cream Solder', 'KG', '0', '2');
INSERT INTO `stock2012` VALUES ('CM04-00005A', 'PBA', 'CDS3C30GTH;SMD 1608 30V;CERA DIODE', 'EA', '229540', '1');
INSERT INTO `stock2012` VALUES ('CM04-00091A', 'PBA', 'DIODE UDZS-6.28', 'EA', '39770', '1');
INSERT INTO `stock2012` VALUES ('CM04-00093A', 'PBA', 'VESD05A1-02V;VISHAY;PJSD05TS;PANJIT;TVS DIODE', 'EA', '5770', '1');
INSERT INTO `stock2012` VALUES ('CM06-00130A', 'PBA', 'AEOBU-VOYY;LED', 'EA', '2770', '1');
INSERT INTO `stock2012` VALUES ('CM06-00176A', 'PBA', '48-213/RAC-DP2Q1VY/3C;LED', 'EA', '0', '1');
INSERT INTO `stock2012` VALUES ('CM11-00102B', 'PBA', '12507WR-H10G;SMD ANGLE 10P 1.25mm;WAFER', 'EA', '0', '1');
INSERT INTO `stock2012` VALUES ('CM11-00103B', 'PBA', '12507WR-H08G;WAFER', 'EA', '4500', '1');
INSERT INTO `stock2012` VALUES ('CM11-00119B', 'PBA', '12507WR-H05G;WAFER', 'EA', '8770', '1');
INSERT INTO `stock2012` VALUES ('CM13-00192A', 'PBA', 'CT802FN;SENSOR-IC', 'EA', '7000', '1');
INSERT INTO `stock2012` VALUES ('CM20-00001A', 'PBA', 'RC1608J000CS;1608 0? 5%;CHIP RESISTOR', 'EA', '0', '1');
INSERT INTO `stock2012` VALUES ('CM20-00003A', 'PBA', 'RC1608J101CS;1608 100? 5%;CHIP RESISTOR', 'EA', '0', '1');
INSERT INTO `stock2012` VALUES ('CM20-00004A', 'PBA', 'RC1608J103CS 1608 10K? 5% CHIP RESISTOR', 'EA', '0', '1');
INSERT INTO `stock2012` VALUES ('CM20-00087A', 'PBA', 'RC1608J220CS;1608 22? 5%;CHIP RESISTOR', 'EA', '0', '1');
INSERT INTO `stock2012` VALUES ('CM20-00107A', 'PBA', 'RC1608J333CS;1608 33K? 5%;CHIP RESISTOR', 'EA', '0', '1');
INSERT INTO `stock2012` VALUES ('CM20-00129A', 'PBA', 'RC1608J332CS;1608 3.3K 5%;CHIP RESISTOR', 'EA', '0', '1');
INSERT INTO `stock2012` VALUES ('CM20-00340A', 'PBA', 'RC1005J152CS;1005 1.5K? 5%;CHIP RESISTOR', 'EA', '11540', '1');
INSERT INTO `stock2012` VALUES ('CM20-00445A', 'PBA', 'RC1005J104CS;1005 100K? 5%;CHIP RESISTOR', 'EA', '20770', '1');
INSERT INTO `stock2012` VALUES ('CM20-00446A', 'PBA', 'RC1005J000CS;1005 0? 5%;CHIP RESISTOR', 'EA', '32310', '1');
INSERT INTO `stock2012` VALUES ('CM20-00502A', 'PBA', 'RC1608J912CS;1608;9.1K?;CHIP RESISTOR', 'EA', '0', '1');
INSERT INTO `stock2012` VALUES ('CM20-00509A', 'PBA', 'RC1005J221CS;1005 220?;CHIP RESISTOR', 'EA', '34620', '1');
INSERT INTO `stock2012` VALUES ('CM20-1005ALL', 'PBA', 'RESISTOR  RC1005', 'EA', '0', '1');
INSERT INTO `stock2012` VALUES ('CM20-1608ALL', 'PBA', 'RESISTOR RC1608J103CS', 'EA', '0', '1');
INSERT INTO `stock2012` VALUES ('CM22-00341A', 'PBA', 'CL05B104KP5NNNC;1005 100nF;CHIP-CAPACITOR', 'EA', '19230', '1');
INSERT INTO `stock2012` VALUES ('CM22-00346A', 'PBA', 'CL05A105KQ5NNNC;1005 1uF', 'EA', '11540', '1');
INSERT INTO `stock2012` VALUES ('CM22-00429A', 'PBA', 'CL10B104KBNC;1608 100NF 10%;CHIP CAPACITOR', 'EA', '20000', '1');
INSERT INTO `stock2012` VALUES ('CM22-00431A', 'PBA', 'CL31A226KOCLNNC;22uf CAPACITOR', 'EA', '8000', '1');
INSERT INTO `stock2012` VALUES ('CM22-00434A', 'PBA', 'CL10B105KQ8NNNC CAPACITOR', 'EA', '0', '1');
INSERT INTO `stock2012` VALUES ('CM32-00042A', 'PBA', 'TSOP75438TR;SMD;4P,ROM-TC338MV-R;IR MODULE', 'EA', '7200', '1');
INSERT INTO `stock2012` VALUES ('CM34-00052C', 'PBA', 'DHT-1502S', 'EA', '0', '1');
INSERT INTO `stock2012` VALUES ('CM34-00055A', 'PBA', 'SKRHAME010;SWITCH', 'EA', '35097', '1');
INSERT INTO `stock2012` VALUES ('CM34-00056A', 'PBA', 'JTM5116EM;SWITCH', 'EA', '10970', '1');
INSERT INTO `stock2012` VALUES ('CM39-01005B', 'PBA', 'HJ12-00026A(02); 150mm HARNESS         ( SB300 )', 'EA', '0', '1');
INSERT INTO `stock2012` VALUES ('CM39-01009A', 'PBA', 'HJ12-00013A (01); 125mm HARNESS', 'EA', '0', '1');
INSERT INTO `stock2012` VALUES ('CM39-01010A', 'PBA', 'HJ12-00009A(01); HARNESS', 'EA', '0', '1');
INSERT INTO `stock2012` VALUES ('CM39-01069A', 'PBA', 'HJ12-00143A(00) 150mm HARNESS          ( UE4003 32\'\' )', 'EA', '0', '1');
INSERT INTO `stock2012` VALUES ('CM41-01025A', 'PBA', 'SB300;REV2.3(CT111103);PSR BLACK;SILK WHITE', 'EA', '7770', '1');
INSERT INTO `stock2012` VALUES ('CM41-01031C', 'PBA', 'UE5000 REV2.8(CT111228);CEM-1;1.6T', 'EA', '5796', '1');
INSERT INTO `stock2012` VALUES ('CM41-01053A', 'PBA', 'UE6030 Function CEM1,1.2T ;REV1.3(CT120330)', 'EA', '6132', '1');
INSERT INTO `stock2012` VALUES ('CM51-00411A', 'PBA', 'SB300;#350RX', 'EA', '4770', '1');
INSERT INTO `stock2012` VALUES ('CM51-00411B', 'PBA', 'AT TAPE', 'EA', '0', '1');
INSERT INTO `stock2012` VALUES ('CM60-00055A', 'PBA', 'CH+,B,D:5.5,H1:1,3*6,Cr3+,(BK);SCREW', 'EA', '0', '1');
INSERT INTO `stock2012` VALUES ('CM61-00388A', 'PBA', 'PC; COVER FUNCTION; UE5000', 'EA', '1118', '1');
INSERT INTO `stock2012` VALUES ('CM61-00389B', 'PBA', 'PC; KNOB; UE5000;', 'EA', '5992', '1');
INSERT INTO `stock2012` VALUES ('CM61-00391B', 'PBA', 'BN64-02101A;KNOB[12.06.08]', 'EA', '0', '1');
INSERT INTO `stock2012` VALUES ('CM61-00395B', 'PBA', 'BN63-09712A[12.07.12]', 'EA', '13998', '1');
INSERT INTO `stock2012` VALUES ('CM61-00396A', 'PBA', 'BN64-02100A', 'EA', '0', '1');
INSERT INTO `stock2012` VALUES ('CT90-00046A-H2', 'PBA', 'CT1N08E_F 28MLF;ITEK(TEST)', 'EA', '5259', '1');
INSERT INTO `stock2012` VALUES ('HA01-00006AA', 'HRN', 'CABLE UL21520#30 X7C', 'EA', '0', '1');
INSERT INTO `stock2012` VALUES ('HA01-00007AA', 'HRN', 'CABLE UL21520#30 X8C', 'EA', '0', '1');
INSERT INTO `stock2012` VALUES ('HA01-00012AA', 'HRN', 'CABLE UL21520#30 X16C', 'EA', '0', '1');
INSERT INTO `stock2012` VALUES ('HA01-00013AA', 'HRN', 'UL 21451#28(1P+2C)', 'EA', '0', '1');
INSERT INTO `stock2012` VALUES ('HA02-00004AA', 'HRN', '6PIN L = 260MM UL10368', 'EA', '50000', '1');
INSERT INTO `stock2012` VALUES ('HA02-00049AA', 'HRN', 'UL 21016 #28 8C 200MM', 'MT', '65270', '1');
INSERT INTO `stock2012` VALUES ('HA02-00055AA', 'HRN', '7PIN L = 160MM UL10368', 'EA', '0', '1');
INSERT INTO `stock2012` VALUES ('HA02-00057AA', 'HRN', '8PIN-1085MM#30', 'EA', '0', '1');
INSERT INTO `stock2012` VALUES ('HA03-00011AA', 'HRN', 'TERMINAL', 'EA', '0', '1');
INSERT INTO `stock2012` VALUES ('HA03-00012AA', 'HRN', 'TERMINAL', 'EA', '1960000', '1');
INSERT INTO `stock2012` VALUES ('HA03-00023AA', 'HRN', 'TERMINAL', 'EA', '0', '1');
INSERT INTO `stock2012` VALUES ('HA03-00024AA', 'HRN', 'YST200-S', 'EA', '2000000', '1');
INSERT INTO `stock2012` VALUES ('HA03-00031AA', 'HRN', 'TERMINAL', 'EA', '2900000', '1');
INSERT INTO `stock2012` VALUES ('HA04-00071AA', 'HRN', 'HOUSING', 'EA', '30000', '1');
INSERT INTO `stock2012` VALUES ('HA04-00073AA', 'HRN', 'HOUSING', 'EA', '0', '1');
INSERT INTO `stock2012` VALUES ('HA04-00090AA', 'HRN', '12507HS-H08G1', 'EA', '8000', '1');
INSERT INTO `stock2012` VALUES ('HA04-00091AA', 'HRN', '12507HS-H09G1', 'EA', '0', '1');
INSERT INTO `stock2012` VALUES ('HA04-00092AA', 'HRN', 'Housing(12507HS-H10G1, YEON HO)', 'EA', '0', '1');
INSERT INTO `stock2012` VALUES ('HA04-00100AA', 'HRN', 'SMH200-06', 'EA', '32442', '1');
INSERT INTO `stock2012` VALUES ('HA04-00102AA', 'HRN', 'HOUSING', 'EA', '200000', '1');
INSERT INTO `stock2012` VALUES ('HA04-00104AA', 'HRN', 'HOUSING', 'EA', '11000', '1');
INSERT INTO `stock2012` VALUES ('HA04-00236AA', 'HRN', 'HOUSING', 'EA', '140000', '1');
INSERT INTO `stock2012` VALUES ('HA04-00237AA', 'HRN', 'HOUSING', 'EA', '534000', '1');
INSERT INTO `stock2012` VALUES ('HA04-00238AA', 'HRN', 'HOUSING', 'EA', '1000', '1');
INSERT INTO `stock2012` VALUES ('HA04-00239AA', 'HRN', 'HOUSING', 'EA', '50000', '1');
INSERT INTO `stock2012` VALUES ('HA04-00240AA', 'HRN', 'HOUSING', 'EA', '10000', '1');
INSERT INTO `stock2012` VALUES ('HA04-00249AA', 'HRN', 'HOUSING', 'EA', '9000', '1');
INSERT INTO `stock2012` VALUES ('HA05-00009AB', 'HRN', 'TUBE', 'EA', '1000', '1');
INSERT INTO `stock2012` VALUES ('HA06-00010AB', 'HRN', 'AT TAPE', 'EA', '1020', '1');
INSERT INTO `stock2012` VALUES ('UL10368 #28 150', 'PBA', 'UL10368 #28 150*6', 'MT', '0', '1');
INSERT INTO `stock2012` VALUES ('CM04-00005A', 'PBA', 'DIODE; CDS3C30GTH;SMD 1608 30V;CERA DIODE', 'EA', '69816', '11');
INSERT INTO `stock2012` VALUES ('CM04-00091A', 'PBA', 'DIODE; UDZS 6.2B;ZENER DIODE', 'EA', '79529', '11');
INSERT INTO `stock2012` VALUES ('CM04-00093A', 'PBA', 'DIODE; VESD05A1-02V;VISHAY;PJSD05TS;PANJIT;TVS DIODE', 'EA', '68966', '11');
INSERT INTO `stock2012` VALUES ('CM06-00130A', 'PBA', 'LED; AEOBU-VOYY;LED', 'EA', '20736', '11');
INSERT INTO `stock2012` VALUES ('CM06-00176A', 'PBA', 'LED; 48-213/RAC-DP2Q1VY/3C;LED', 'EA', '19140', '11');
INSERT INTO `stock2012` VALUES ('CM11-00102B', 'PBA', 'WAFER; 12507WR-H10G;SMD ANGLE 10P 1.25mm;WAFER', 'EA', '9546', '11');
INSERT INTO `stock2012` VALUES ('CM11-00103B', 'PBA', 'WAFER; 12507WR-H08G;WAFER', 'EA', '9546', '11');
INSERT INTO `stock2012` VALUES ('CM11-00119B', 'PBA', 'WAFER; 12507WR-H05G;WAFER', 'EA', '21025', '11');
INSERT INTO `stock2012` VALUES ('CM13-00192A', 'PBA', 'SENSOR; CT802FN;SENSOR-IC', 'EA', '9252', '11');
INSERT INTO `stock2012` VALUES ('CM20-00001A', 'PBA', 'RESISTOR; RC1608J000CS;1608 0? 5%;CHIP RESISTOR', 'EA', '31127', '11');
INSERT INTO `stock2012` VALUES ('CM20-00003A', 'PBA', 'RESISTOR; RC1608J101CS;1608 100? 5%;CHIP RESISTOR', 'EA', '15864', '11');
INSERT INTO `stock2012` VALUES ('CM20-00004A', 'PBA', 'RESISTOR; RC1608J103CS 1608 10K? 5% CHIP RESISTOR', 'EA', '22895', '11');
INSERT INTO `stock2012` VALUES ('CM20-00087A', 'PBA', 'RESISTOR; RC1608J220CS;1608 22? 5%;CHIP RESISTOR', 'EA', '92177', '11');
INSERT INTO `stock2012` VALUES ('CM20-00107A', 'PBA', 'RESISTOR; RC1608J333CS;1608 33K? 5%;CHIP RESISTOR', 'EA', '23080', '11');
INSERT INTO `stock2012` VALUES ('CM20-00129A', 'PBA', 'RESISTOR; RC1608J332CS;1608 3.3K 5%;CHIP RESISTOR', 'EA', '23100', '11');
INSERT INTO `stock2012` VALUES ('CM20-00340A', 'PBA', 'RESISTOR; RC1005J152CS;1005 1.5K? 5%;CHIP RESISTOR', 'EA', '47404', '11');
INSERT INTO `stock2012` VALUES ('CM20-00445A', 'PBA', 'RESISTOR; RC1005J104CS;1005 100K? 5%;CHIP RESISTOR', 'EA', '28282', '11');
INSERT INTO `stock2012` VALUES ('CM20-00446A', 'PBA', 'RESISTOR; RC1005J000CS;1005 0? 5%;CHIP RESISTOR', 'EA', '65163', '11');
INSERT INTO `stock2012` VALUES ('CM20-00502A', 'PBA', 'RESISTOR; RC1608J912CS;1608;9.1K?;CHIP RESISTOR', 'EA', '22920', '11');
INSERT INTO `stock2012` VALUES ('CM20-00509A', 'PBA', 'RESISTOR; RC1005J221CS;1005 220?;CHIP RESISTOR', 'EA', '119123', '11');
INSERT INTO `stock2012` VALUES ('CM22-00341A', 'PBA', 'CAPACITOR; CL05B104KP5NNNC;1005 100nF;CHIP-CAPACITOR', 'EA', '28644', '11');
INSERT INTO `stock2012` VALUES ('CM22-00346A', 'PBA', 'CAPACITOR; CL05A105KQ5NNNC;1005 1uF', 'EA', '46440', '11');
INSERT INTO `stock2012` VALUES ('CM22-00429A', 'PBA', 'CAPACITOR; CL10B104KBNC;1608 100NF 10%;CHIP CAPACITOR', 'EA', '23998', '11');
INSERT INTO `stock2012` VALUES ('CM22-00431A', 'PBA', 'CAPACITOR; CL31A226KOCLNNC;22uf CAPACITOR', 'EA', '26309', '11');
INSERT INTO `stock2012` VALUES ('CM22-00434A', 'PBA', 'CAPACITOR; CL10B105KQ8NNNC CAPACITOR', 'EA', '11834', '11');
INSERT INTO `stock2012` VALUES ('CM32-00042A', 'PBA', 'IR; TSOP75438TR;SMD;4P,ROM-TC338MV-R;IR MODULE', 'EA', '24060', '11');
INSERT INTO `stock2012` VALUES ('CM34-00052C', 'PBA', 'S/W ; DHT-1502S', 'EA', '0', '11');
INSERT INTO `stock2012` VALUES ('CM34-00056A', 'PBA', 'S/W ; JTM5116EM;SWITCH', 'EA', '9674', '11');
INSERT INTO `stock2012` VALUES ('CM34-00055A', 'PBA', 'S/W ; SKRHAME010;SWITCH', 'EA', '15745', '11');
INSERT INTO `stock2012` VALUES ('CM41-01025A', 'PBA', 'PCB; SB300;REV2.3(CT111103);PSR BLACK;SILK WHITE', 'EA', '20000', '11');
INSERT INTO `stock2012` VALUES ('CM41-01053A', 'PBA', 'PCB; UE6030 Function CEM1,1.2T ;REV1.3(CT120330)', 'EA', '14400', '11');
INSERT INTO `stock2012` VALUES ('CM41-01031C', 'PBA', 'PCB; UE5000 REV2.8(CT111228);CEM-1;1.6T', 'EA', '9240', '11');
INSERT INTO `stock2012` VALUES ('CT90-00046A-H2', 'PBA', 'IC; CT1N08E_F 28MLF;ITEK(TEST)', 'EA', '20386', '11');
INSERT INTO `stock2012` VALUES ('CM39-01009A', 'PBA', 'HARNESS; HJ12-00013A (01); 125mm HARNESS', 'EA', '1831', '11');
INSERT INTO `stock2012` VALUES ('CM39-01005B', 'PBA', 'HARNESS; HJ12-00026A(02); 150mm HARNESS         ( SB300 )', 'EA', '4905', '11');
INSERT INTO `stock2012` VALUES ('CM39-01010A', 'PBA', 'HARNESS; HJ12-00009A(01); HARNESS', 'EA', '8093', '11');
INSERT INTO `stock2012` VALUES ('CM39-01069A', 'PBA', 'HARNESS; HJ12-00143A(00) 150mm HARNESS          ( UE4003 32\'\' )', 'EA', '2785', '11');
INSERT INTO `stock2012` VALUES ('CM51-00411A', 'PBA', 'TAPE; SB300;#350RX', 'EA', '21393', '11');
INSERT INTO `stock2012` VALUES ('CM60-00055A', 'PBA', 'SCREW; CH+,B,D:5.5,H1:1,3*6,Cr3+,(BK);SCREW', 'EA', '9942', '11');
INSERT INTO `stock2012` VALUES ('CM61-00388A', 'PBA', 'BRAKET; PC; COVER FUNCTION; UE5000', 'EA', '11126', '11');
INSERT INTO `stock2012` VALUES ('CM61-00389B', 'PBA', 'KNOB; PC; KNOB; UE5000;', 'EA', '13281', '11');
INSERT INTO `stock2012` VALUES ('CM61-00396A', 'PBA', 'BRAKET; BN64-02100A', 'EA', '16161', '11');
INSERT INTO `stock2012` VALUES ('CM61-00391B', 'PBA', 'KNOB; BN64-02101A;KNOB[12.06.08]', 'EA', '654', '11');
INSERT INTO `stock2012` VALUES ('CM61-00395B', 'PBA', 'BRAKET; BN63-09712A[12.07.12]', 'EA', '16835', '11');
INSERT INTO `stock2012` VALUES ('CM01-0001L-A', 'PBA', 'SMALL BOX; W545xD360xH155', 'EA', '0', '11');
INSERT INTO `stock2012` VALUES ('CM01-0002L-A', 'PBA', 'BIG BOX; W545xD360xH375', 'EA', '71', '11');
INSERT INTO `stock2012` VALUES ('CM01-0003L-A', 'PBA', 'PAD; W534xD340', 'EA', '1001', '11');
INSERT INTO `stock2012` VALUES ('CM02-0001L-B', 'PBA', 'POLYBAG; 40 x 200', 'EA', '14856', '11');
INSERT INTO `stock2012` VALUES ('CM02-0002L-B', 'PBA', 'POLYBAG; 60 x 200', 'EA', '21996', '11');
INSERT INTO `stock2012` VALUES ('CM02-0003L-B', 'PBA', 'POLYBAG; 6,5 x 200', 'EA', '12640', '11');
INSERT INTO `stock2012` VALUES ('CM03-0003L-C', 'PBA', 'SILICAGEL; Bening @ 10 gram', 'EA', '704', '11');
INSERT INTO `stock2012` VALUES ('CM04-0003K-D', 'PBA', '12 TRAY; TRAY', 'EA', '813', '11');
INSERT INTO `stock2012` VALUES ('HA04-00102AA', 'HRN', 'HOUSING; SMH200-08', 'EA', '262326', '11');
INSERT INTO `stock2012` VALUES ('HA03-00024AA', 'HRN', 'TERMINAL; YST200-S', 'EA', '2140599', '11');
INSERT INTO `stock2012` VALUES ('HA04-00090AA', 'HRN', 'HOUSING; 12507HS-H08G1', 'EA', '136467', '11');
INSERT INTO `stock2012` VALUES ('HA04-00091AA', 'HRN', 'HOUSING; 12507HS-H09G1', 'EA', '160005', '11');
INSERT INTO `stock2012` VALUES ('HA03-00012AA', 'HRN', 'TERMINAL; 12507TS-G1', 'EA', '2154162', '11');
INSERT INTO `stock2012` VALUES ('HA02-00049AA', 'HRN', 'FLAT WIRE; UL 21016 #28 8C (210,135 mm)', 'MT', '58607', '11');
INSERT INTO `stock2012` VALUES ('HA04-00100AA', 'HRN', 'HOUSING; SMH200-06', 'EA', '0', '11');
INSERT INTO `stock2012` VALUES ('HA02-00004AA', 'HRN', '6PIN L = 260MM UL10368; 6PIN L = 260MM UL10368', 'EA', '0', '11');
INSERT INTO `stock2012` VALUES ('HA02-00055AA', 'HRN', '7PIN L = 160MM UL10368; 7PIN L = 160MM UL10368', 'EA', '0', '11');
INSERT INTO `stock2012` VALUES ('HA02-00057AA', 'HRN', '8PIN-1085MM#30; 8PIN-1085MM#30', 'EA', '0', '11');
INSERT INTO `stock2012` VALUES ('HA04-00071AA', 'HRN', '12507HS-07L; HOUSING', 'EA', '0', '11');
INSERT INTO `stock2012` VALUES ('HA04-00073AA', 'HRN', '12507HS-09L; HOUSING', 'EA', '0', '11');
INSERT INTO `stock2012` VALUES ('HA04-00102AA', 'HRN', 'SMH200-08; HOUSING', 'EA', '0', '11');
INSERT INTO `stock2012` VALUES ('HA04-00104AA', 'HRN', 'SMH200-09; HOUSING', 'EA', '0', '11');
INSERT INTO `stock2012` VALUES ('HA03-00011AA', 'HRN', '12507TS; TERMINAL', 'EA', '0', '11');
INSERT INTO `stock2012` VALUES ('HA03-00012AA', 'HRN', '12507TS-G1; TERMINAL', 'EA', '0', '11');
INSERT INTO `stock2012` VALUES ('HA03-00023AA', 'HRN', 'YST200 (0,3); TERMINAL', 'EA', '0', '11');
INSERT INTO `stock2012` VALUES ('HA06-00010AB', 'HRN', 'W:50MM BLK AT TAPE; AT TAPE', 'EA', '0', '11');
INSERT INTO `stock2012` VALUES ('HA05-00009AB', 'HRN', 'HEAT TUBE 4Ø; TUBE', 'EA', '0', '11');
INSERT INTO `stock2012` VALUES ('HA02-00049AA', 'HRN', 'UL 21016 #28 8C; UL 21016 #28 8C', 'EA', '0', '11');
INSERT INTO `stock2012` VALUES ('HA01-00013AA', 'HRN', 'CABLE ( UL 21451#28(1P+2C); UL 21451#28(1P+2C)', 'EA', '0', '11');
INSERT INTO `stock2012` VALUES ('HA01-00006AA', 'HRN', 'CABLE ( UL21520#30X7C; UL21520#30X7C', 'EA', '0', '11');
INSERT INTO `stock2012` VALUES ('HA01-00007AA', 'HRN', 'UL21520#30X8C; UL21520#30X8C', 'EA', '0', '11');
INSERT INTO `stock2012` VALUES ('HA01-00012AA', 'HRN', 'UL21520#30X16C; UL21520#30X16C', 'EA', '0', '11');
INSERT INTO `stock2012` VALUES ('HA04-00236AA', 'HRN', '1250HS-02; HOUSING', 'EA', '0', '11');
INSERT INTO `stock2012` VALUES ('HA04-00237AA', 'HRN', '12505HS-04; HOUSING', 'EA', '0', '11');
INSERT INTO `stock2012` VALUES ('HA04-00238AA', 'HRN', '12505HS-05; HOUSING', 'EA', '0', '11');
INSERT INTO `stock2012` VALUES ('HA04-00239AA', 'HRN', '12505HS-06; HOUSING', 'EA', '0', '11');
INSERT INTO `stock2012` VALUES ('HA04-00240AA', 'HRN', '12505HS-07; HOUSING', 'EA', '0', '11');
INSERT INTO `stock2012` VALUES ('HA04-00249AA', 'HRN', '12505HS-12; HOUSING', 'EA', '0', '11');
INSERT INTO `stock2012` VALUES ('HA03-00031AA', 'HRN', '12505TS-1; TERMINAL', 'EA', '0', '11');
INSERT INTO `stock2012` VALUES ('CG02-00010A', 'HRN', 'Cream Solder', 'KG', '0', '11');
INSERT INTO `stock2012` VALUES ('CI08-00001A', 'HRN', 'Solder Wire', 'KG', '0', '11');
INSERT INTO `stock2012` VALUES ('JK120831-O.1', 'MCH', 'LOADER KL -900S', 'PCS', '2', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.2', 'MCH', 'UNLOADER KUP-900S', 'PCS', '2', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.3', 'MCH', 'CHIP MOUNTER SM421', 'PCS', '4', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.4', 'MCH', '8MM FEEDER (1608 ONLY)', 'PCS', '50', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.5', 'MCH', '12MM FEEDER (MULTI ONLY)', 'PCS', '6', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.6', 'MCH', '16MM FEEDER (MULTI ONLY)', 'PCS', '6', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.7', 'MCH', '24MM FEEDER (MULTI ONLY)', 'PCS', '6', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.8', 'MCH', '32MM FEEDER (MULTI ONLY)', 'PCS', '3', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.9', 'MCH', '44MM FEEDER (MULTI ONLY)', 'PCS', '3', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.10', 'MCH', 'TRAY FEEDER STF-100D', 'PCS', '2', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.11', 'MCH', 'FEEDER STIRAGE RACK (20SSLOT)', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.12', 'MCH', 'FEEDER STIRAGE RACK (52SSLOT)', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.13', 'MCH', 'REEL TAPE CUTTER SHCN98', 'PCS', '4', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.14', 'MCH', 'STEM MATERIAL TOOL', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.15', 'MCH', 'MOUNTER BAEKEOPPIN', 'PCS', '22', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.16', 'MCH', 'MOUNTER BACK PLATE ', 'PCS', '12', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.17', 'MCH', 'MOUNTER BACK PLATE ', 'PCS', '4', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.18', 'MCH', 'MOUNTER DUMP BOX', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.19', 'MCH', 'MOUNTER NOZZLE CN065', 'PCS', '12', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.20', 'MCH', 'MOUNTER NOZZLE CN040', 'PCS', '12', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.21', 'MCH', 'SM421 FILTER', 'PCS', '4', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.22', 'MCH', 'SMEMA CABLE ASS\'Y', 'PCS', '4', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.23', 'MCH', 'FUSE', 'PCS', '32', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.24', 'MCH', 'ACETAL ROLLER', 'PCS', '8', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.25', 'MCH', 'ACETAN CHAIN', 'PCS', '4', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.26', 'MCH', 'CONVEYOR BELT', 'PCS', '6', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.27', 'MCH', 'CALIBERATION PLATE', 'PCS', '4', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.28', 'MCH', 'PCB MAGAZIN', 'PCS', '16', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.29', 'MCH', 'DAN WARD SPANNER', 'PCS', '4', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.30', 'MCH', 'CHAOYANG DISTRICT SPANNER', 'PCS', '12', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.31', 'MCH', 'MONKEY SPANER', 'PCS', '7', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.32', 'MCH', 'HAMMER', 'PCS', '2', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.33', 'MCH', 'TEE WRENCHES', 'PCS', '19', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.34', 'MCH', 'P-TYPE WRENCH', 'PCS', '19', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.35', 'MCH', 'LONG PILLOWS', 'PCS', '2', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.36', 'MCH', 'DRIVER', 'PCS', '4', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.37', 'MCH', 'TOOLS BOX', 'PCS', '4', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.38', 'MCH', 'WORK TABLE KIC-900S', 'PCS', '2', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.39', 'MCH', 'CREAM SOLDER SOFTENER SS-1000', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.40', 'MCH', 'JESEUPHAM DH-1200', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.41', 'MCH', 'PART COUNTER DC 200', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.42', 'MCH', 'ULTRA SONIC CLEANE) SD-80H', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.43', 'MCH', 'ULTRA SONIC CLEANE) SD-350H', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.44', 'MCH', 'VISCO TESTER  VT-04F', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.45', 'MCH', 'LCR METER (TX7301)', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.46', 'MCH', 'COATER', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.47', 'MCH', 'TENSION GUAGE TGID-S1012B', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.48', 'MCH', 'SYSTEM TESTER HAKKO 498', 'PCS', '2', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.49', 'MCH', 'SOLDERING TEMPERATURE TESTER QUICK KOREA 191A', 'PCS', '2', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.50', 'MCH', 'SOLDERING IRON FX888-14BK', 'PCS', '5', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.51', 'MCH', 'THERMO-HYGROMETER BJ5478', 'PCS', '5', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.52', 'MCH', 'THERMO-HYGROMETER 608-H1', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.53', 'MCH', 'CABINETS', 'PCS', '2', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.54', 'MCH', 'CABINET LOCKER (YURIJANG)', 'PCS', '5', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.55', 'MCH', 'SEMI-FINISHED RACK', 'PCS', '339', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.56', 'MCH', 'DAI STEEL', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.57', 'MCH', 'SECONDARY DAI', 'PCS', '6', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.58', 'MCH', 'PRODUCT STORAGE AND LOCKERS', 'PCS', '6', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.59', 'MCH', 'OSCILLOSCOPE DS-1510', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.60', 'MCH', 'DIGITAL MICROSCOPE AM 413T', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.61', 'MCH', 'DIGITAL TORQUE METER H-10l', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.62', 'MCH', 'SEMI-FINISHED BALANCE ', 'PCS', '20', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.63', 'MCH', 'SEMI-FINISHED BALANCE ', 'PCS', '12', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.64', 'MCH', 'BALANCE CARRIED', 'PCS', '3', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.65', 'MCH', 'TR ', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.66', 'MCH', 'SMD REWORK STATION QUICK KOREA990D', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.67', 'MCH', 'MASK SECHEOKDAE', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.68', 'MCH', 'PASTE INPECTION SP150T', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.69', 'MCH', 'VISION INPECTION (AIO) TR7500DT', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.70', 'MCH', 'SCREEN PRINTER PS2000XL', 'PCS', '2', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.71', 'MCH', 'PRINTER SQUEEZE 350MM', 'PCS', '8', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.72', 'MCH', 'PRINTER SQUEEZE 460MM', 'PCS', '4', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.73', 'MCH', 'PRINTER SQUEEZE 550MM', 'PCS', '4', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.74', 'MCH', 'PRINTER SQUEEZE 660MM', 'PCS', '4', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.75', 'MCH', 'PRINTER BACK PLATE SPECIAL', 'PCS', '4', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.76', 'MCH', 'PRINTER BACK PLATE  ', 'PCS', '12', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.77', 'MCH', 'PRINTER BACK PLATE  ', 'PCS', '8', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.78', 'MCH', 'PRINTER  BAEKEOPPIN', 'PCS', '27', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.79', 'MCH', 'PRINTER  BAEKEOPPIN', 'PCS', '30', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.80', 'MCH', 'PRINTER ADSORPTION BAEKEOPPIN', 'PCS', '7', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.81', 'MCH', 'PRINTER FLUORESCENT', 'PCS', '2', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.82', 'MCH', 'HAND PAPER', 'PCS', '9', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.83', 'MCH', 'ROLL PAPER', 'PCS', '23', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.84', 'MCH', 'BARCODE PRINTER B-452-TS22-QP ', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.85', 'MCH', 'LABEL COMPUTER X270KN.A5MADE', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.86', 'MCH', 'LABEL COMPUTER MONITOR LS-E1920XSF/KR', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.87', 'MCH', 'VARIER CALIPER CD-30C', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.88', 'MCH', 'DIGITAL MULTI METER ESCORT-179', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.89', 'MCH', 'REFLOW ZKS-610 + ZKS-612', 'PCS', '2', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.90', 'MCH', 'PROFILER MTD-205M', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.91', 'MCH', 'PROFILE COMPUTER Z270V-4MADE', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.92', 'MCH', 'PROFILE COMPUTER MONITOR L171S-SNN.ANKREP', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.93', 'MCH', 'REFLOW BLOW MOTER', 'PCS', '2', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.94', 'MCH', 'REFLOW STAND COVER', 'PCS', '4', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.95', 'MCH', 'REFLOW CIRCUIT BREAKER', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.96', 'MCH', 'RELAY', 'PCS', '2', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.97', 'MCH', 'RELAY', 'PCS', '2', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.98', 'MCH', 'HOT PLATE QUICK-KOREA870', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.99', 'MCH', 'KOMPUTERE OSYEO AS30EE', 'PCS', '2', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.100', 'MCH', 'DRYER DHR-50', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.101', 'MCH', 'AIR TANK HAV 100', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.102', 'MCH', 'AIR FILTER', 'PCS', '4', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.103', 'MCH', 'REFRIGERATOR SOLDER STORAGE 465RF', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.104', 'MCH', 'BELT CONVEYOR LINE 16M', 'PCS', '2', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.105', 'MCH', 'BELT CONVEYOR LINE 8M', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.106', 'MCH', 'JIG HOLDER', 'PCS', '12', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.107', 'MCH', 'MAGNIFYING GLASS QUICK KOREA228B', 'PCS', '6', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.108', 'MCH', 'VACUM PACKAGE 380Q-H', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('JK120831-O.109', 'MCH', 'HAENDEUKA', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('HC1206-9C.1', 'MCH', 'CRIMPING M/C', 'SET', '10', '3');
INSERT INTO `stock2012` VALUES ('HC1206-9C.2', 'MCH', 'CRIMPING M/C', 'SET', '30', '3');
INSERT INTO `stock2012` VALUES ('HC1206-9C.3', 'MCH', 'WIRE STRIPPING M/C', 'SET', '6', '3');
INSERT INTO `stock2012` VALUES ('HC1206-9C.4', 'MCH', 'WIRE STRIPPING M/C 3F', 'SET', '2', '3');
INSERT INTO `stock2012` VALUES ('HC1206-9C.5', 'MCH', 'WIRE STRIPPING M/C 310', 'SET', '2', '3');
INSERT INTO `stock2012` VALUES ('HC1206-9C.6', 'MCH', 'WIRE HARNESS TESTER HC-868B', 'SET', '6', '3');
INSERT INTO `stock2012` VALUES ('HC1206-9C.7', 'MCH', 'WIRE HARNESS TESTER GT-8689F', 'SET', '6', '3');
INSERT INTO `stock2012` VALUES ('HC1206-9C.8', 'MCH', 'MICROSCOPE TESTER 1 : 6.5', 'SET', '10', '3');
INSERT INTO `stock2012` VALUES ('HC1206-9C.9', 'MCH', 'WIRE SLITTING M/C', 'SET', '1', '3');
INSERT INTO `stock2012` VALUES ('HC1206-9C.10', 'MCH', 'DIGITAL CUTTING M/C', 'SET', '1', '3');
INSERT INTO `stock2012` VALUES ('FOC.20120914.16', 'MCH', 'SUB BOARD', 'PCS', '120', '3');
INSERT INTO `stock2012` VALUES ('FOC.20120914.17', 'MCH', 'MULTI WIRE', 'PCS', '7', '3');
INSERT INTO `stock2012` VALUES ('FOC.20120914.18', 'MCH', 'TOTAL BOARD', 'PCS', '5', '3');
INSERT INTO `stock2012` VALUES ('F.JKPT121009-1', 'MCH', 'TEST SUB JIG', 'PCS', '10', '3');
INSERT INTO `stock2012` VALUES ('F.JKPT121009-2', 'MCH', 'MTI-3000', 'PCS', '9', '3');
INSERT INTO `stock2012` VALUES ('F.JKPT121009-3', 'MCH', 'KNOB AIR PRESS JIG', 'PCS', '1', '3');
INSERT INTO `stock2012` VALUES ('F.JKPT121009-4', 'MCH', 'MAIN JIG HARNESS', 'PCS', '50', '3');
INSERT INTO `stock2012` VALUES ('F.JKPT121009-5', 'MCH', 'EARTHRING MONITOR', 'PCS', '20', '3');
INSERT INTO `stock2012` VALUES ('F.JKPT121009-6', 'MCH', 'EARTHRING MONITOR ADAFTER', 'PCS', '20', '3');
INSERT INTO `stock2012` VALUES ('F.JKPT121009-7', 'MCH', 'IR TRANSMIT STAND', 'PCS', '8', '3');
INSERT INTO `stock2012` VALUES ('F.JKPT121009-8', 'MCH', '6P CONNECTOR BOARD', 'PCS', '24', '3');
INSERT INTO `stock2012` VALUES ('HJYN121116-1.A', 'MCH', 'INDUSTRIAL BLADE', 'PCS', '60', '3');
INSERT INTO `stock2012` VALUES ('HJYN121116-1.B', 'MCH', 'INDUSTRIAL KNIFE CORE', 'PCS', '60', '3');
INSERT INTO `stock2012` VALUES ('HJYN121116-1.C', 'MCH', 'INDUSTRIAL BAFFLE', 'PCS', '20', '3');
INSERT INTO `stock2012` VALUES ('HJYN121116-2.A', 'MCH', 'INDUSTRIAL BLADE ', 'PCS', '90', '3');
INSERT INTO `stock2012` VALUES ('HJYN121116-2.B', 'MCH', 'INDUSTRIAL BAFFLE', 'PCS', '50', '3');
INSERT INTO `stock2012` VALUES ('HJYN121116-2.C', 'MCH', 'INDUSTRIAL SHAFT SLEEVE', 'PCS', '10', '3');
INSERT INTO `stock2012` VALUES ('HJYN121116-2.D', 'MCH', 'PCB ASSY', 'PCS', '5', '3');
INSERT INTO `stock2012` VALUES ('BN39-01629A', 'HRN', 'HARNESS UE 5000 32\"  BN39-01629A', 'PCS', '0', '0');
INSERT INTO `stock2012` VALUES ('BN96-21731B', 'PBA', 'PCB ASSY SB300 TOUCH BN96-21731B', 'PCS', '0', '0');
INSERT INTO `stock2012` VALUES ('BN96-22413B', 'PBA', 'PCB ASSY UE 5000 40\" BN96-22413B', 'PCS', '7920', '0');
INSERT INTO `stock2012` VALUES ('BN96-22413D', 'PBA', 'PCB ASSY UE 5000 32\" BN96-22413D', 'PCS', '0', '0');
INSERT INTO `stock2012` VALUES ('BN96-23845E', 'PBA', 'PCB ASSY UE 4003 32\" BN96-23845E', 'PCS', '0', '0');
INSERT INTO `stock2012` VALUES ('BN96-26401B', 'PBA', 'UF5000 22\", 32\"', 'PCS', '0', '0');
INSERT INTO `stock2012` VALUES ('BN96-26401C', 'PBA', 'UF5000 39\", 40\",46\",50\"', 'PCS', '0', '0');
INSERT INTO `stock2012` VALUES ('CM34-00052C', 'PBA', 'SWITCH DHT-1502 ', 'PCS', '0', '0');

-- ----------------------------
-- Table structure for `tujuan_pengiriman`
-- ----------------------------
DROP TABLE IF EXISTS `tujuan_pengiriman`;
CREATE TABLE `tujuan_pengiriman` (
  `KdTp` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Kode Tujuan Pengiriman',
  `UrTp` varchar(25) DEFAULT NULL COMMENT 'Uraian Tujuan Pengiriman',
  PRIMARY KEY (`KdTp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tujuan_pengiriman
-- ----------------------------
INSERT INTO `tujuan_pengiriman` VALUES ('1', 'Ditimbun');
INSERT INTO `tujuan_pengiriman` VALUES ('2', 'Diproses');
INSERT INTO `tujuan_pengiriman` VALUES ('3', 'Disubkontrakkan');
INSERT INTO `tujuan_pengiriman` VALUES ('4', 'Dipinjamkan');
INSERT INTO `tujuan_pengiriman` VALUES ('5', 'Diperbaiki');
INSERT INTO `tujuan_pengiriman` VALUES ('6', 'Pengembalian Subkontrak');
INSERT INTO `tujuan_pengiriman` VALUES ('7', 'Pengembalian Pinjaman');
INSERT INTO `tujuan_pengiriman` VALUES ('8', 'Pengembalian Perbaikan');
INSERT INTO `tujuan_pengiriman` VALUES ('9', 'Lainnya');
INSERT INTO `tujuan_pengiriman` VALUES ('10', 'Dijual');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `nama_user` varchar(20) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `kd_fact` varchar(2) DEFAULT NULL,
  `kd_cmpy` varchar(2) NOT NULL,
  `grup` enum('admin','gudang','exim','bc','eksekutif') DEFAULT NULL,
  PRIMARY KEY (`nama_user`,`kd_cmpy`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('admin', '9c8f9b597c7e4b218d58ed8631e6d6a3', null, '01', 'admin');
INSERT INTO `user` VALUES ('pimpinan', '5d5ea11426d6c6b96caf4dd951ce44bc', null, '', 'eksekutif');
INSERT INTO `user` VALUES ('exim', 'a8eaf1f61b2dd90a2ce1707affe4b0bb', null, '', 'exim');
INSERT INTO `user` VALUES ('gudang', '8f0d60caf45e98ac44db4074c3b22893', null, '', 'gudang');
INSERT INTO `user` VALUES ('bc', 'fe51fce2cf2e87b6bf2aa84b0968e877', null, '', 'bc');

-- ----------------------------
-- Table structure for `valuta`
-- ----------------------------
DROP TABLE IF EXISTS `valuta`;
CREATE TABLE `valuta` (
  `KdVal` varchar(3) NOT NULL,
  `UrVal` varchar(30) NOT NULL,
  PRIMARY KEY (`KdVal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of valuta
-- ----------------------------
INSERT INTO `valuta` VALUES ('BRL', 'Brazilian Real');
INSERT INTO `valuta` VALUES ('BSD', 'Bahamian Dollar');
INSERT INTO `valuta` VALUES ('BTN', 'Ngultrum');
INSERT INTO `valuta` VALUES ('BWP', 'Pula');
INSERT INTO `valuta` VALUES ('BYB', 'Belarussian Ruble');
INSERT INTO `valuta` VALUES ('BZD', 'Belize Dollar');
INSERT INTO `valuta` VALUES ('CAD', 'Canadian Dollar');
INSERT INTO `valuta` VALUES ('CHF', 'Swiss Franc');
INSERT INTO `valuta` VALUES ('CLP', 'Chilean Peso');
INSERT INTO `valuta` VALUES ('CNY', 'Yuan Renminbi');
INSERT INTO `valuta` VALUES ('COP', 'Colombian Peso');
INSERT INTO `valuta` VALUES ('CRC', 'Costa Rican Colon');
INSERT INTO `valuta` VALUES ('CUP', 'Cuban Peso');
INSERT INTO `valuta` VALUES ('CVE', 'Cape Verde Escudo');
INSERT INTO `valuta` VALUES ('CYP', 'Cyprus Pound');
INSERT INTO `valuta` VALUES ('CZK', 'Czech Koruna');
INSERT INTO `valuta` VALUES ('DEM', 'Deustche Mark');
INSERT INTO `valuta` VALUES ('DJF', 'Djibouti Franc');
INSERT INTO `valuta` VALUES ('DKK', 'Danish Krone');
INSERT INTO `valuta` VALUES ('DOP', 'Domincan Peso');
INSERT INTO `valuta` VALUES ('DZD', 'Algerian Dinar');
INSERT INTO `valuta` VALUES ('ECS', 'Sucre');
INSERT INTO `valuta` VALUES ('EEK', 'Kroon');
INSERT INTO `valuta` VALUES ('EGP', 'Egyptian Pound');
INSERT INTO `valuta` VALUES ('ESP', 'Spainish peseta');
INSERT INTO `valuta` VALUES ('ETB', 'Ethiopian Birr');
INSERT INTO `valuta` VALUES ('EUR', 'Euro');
INSERT INTO `valuta` VALUES ('FIM', 'Markka');
INSERT INTO `valuta` VALUES ('FJD', 'Fiji Dollar');
INSERT INTO `valuta` VALUES ('FKP', 'Falkland Islands Pound');
INSERT INTO `valuta` VALUES ('FRF', 'Franch Franc');
INSERT INTO `valuta` VALUES ('GBP', 'Pound Sterling');
INSERT INTO `valuta` VALUES ('GEK', 'Georgian Coupon');
INSERT INTO `valuta` VALUES ('GHC', 'Cedi');
INSERT INTO `valuta` VALUES ('GIP', 'Gibraltar Pound');
INSERT INTO `valuta` VALUES ('GMD', 'Dalasi');
INSERT INTO `valuta` VALUES ('GNF', 'Guinea Franc');
INSERT INTO `valuta` VALUES ('GRD', 'Drachma');
INSERT INTO `valuta` VALUES ('GTQ', 'Quetzal');
INSERT INTO `valuta` VALUES ('GWP', 'Guinea-Bissau Peso');
INSERT INTO `valuta` VALUES ('GYD', 'Guyana Dollar');
INSERT INTO `valuta` VALUES ('HKD', 'Hong Kong Dollar');
INSERT INTO `valuta` VALUES ('HNL', 'Lempira');
INSERT INTO `valuta` VALUES ('HRD', 'Croatian Dinar');
INSERT INTO `valuta` VALUES ('HRK', 'Kuna');
INSERT INTO `valuta` VALUES ('HTG', 'Gourde');
INSERT INTO `valuta` VALUES ('HUF', 'Forint');
INSERT INTO `valuta` VALUES ('IDR', 'Rupiah');
INSERT INTO `valuta` VALUES ('IEP', 'Irish Pound');
INSERT INTO `valuta` VALUES ('ILS', 'Shekel');
INSERT INTO `valuta` VALUES ('INR', 'Indian Rupee');
INSERT INTO `valuta` VALUES ('IQD', 'Iraqi Dinar');
INSERT INTO `valuta` VALUES ('IRR', 'Iranian Rial');
INSERT INTO `valuta` VALUES ('ISK', 'Iceland Krona');
INSERT INTO `valuta` VALUES ('ITL', 'Italian Lira');
INSERT INTO `valuta` VALUES ('JMD', 'Jamaican Dollar');
INSERT INTO `valuta` VALUES ('JOD', 'Jordanian Dinar');
INSERT INTO `valuta` VALUES ('JPY', 'Yen');
INSERT INTO `valuta` VALUES ('KES', 'Kenyan Shilling');
INSERT INTO `valuta` VALUES ('KGS', 'Som');
INSERT INTO `valuta` VALUES ('KHR', 'Riel');
INSERT INTO `valuta` VALUES ('KMF', 'Comoro Franc');
INSERT INTO `valuta` VALUES ('KPW', 'North Korean Won');
INSERT INTO `valuta` VALUES ('KRW', 'Won');
INSERT INTO `valuta` VALUES ('KWD', 'Kuwauti Dinar');
INSERT INTO `valuta` VALUES ('KYD', 'Cayman Islands Dollar');
INSERT INTO `valuta` VALUES ('KZT', 'Tenge');
INSERT INTO `valuta` VALUES ('LAK', 'Kip');
INSERT INTO `valuta` VALUES ('LBP', 'Lebanese Pound');
INSERT INTO `valuta` VALUES ('LKR', 'Sri Langka Rupee');
INSERT INTO `valuta` VALUES ('LRD', 'Liberian Dollar');
INSERT INTO `valuta` VALUES ('LSL', 'Loli');
INSERT INTO `valuta` VALUES ('LTL', 'Lithuanian Litas');
INSERT INTO `valuta` VALUES ('LUF', 'Luxembourg Franc');
INSERT INTO `valuta` VALUES ('LVL', 'Latvian Lats#');
INSERT INTO `valuta` VALUES ('LVR', 'Latvian Ruble');
INSERT INTO `valuta` VALUES ('LYD', 'Libyan Dinar');
INSERT INTO `valuta` VALUES ('MAD', 'Moroccoan Dirham');
INSERT INTO `valuta` VALUES ('MDL', 'Moldovan Leu');
INSERT INTO `valuta` VALUES ('MGF', 'Malagasy Franc');
INSERT INTO `valuta` VALUES ('MMK', 'Kyat');
INSERT INTO `valuta` VALUES ('MNT', 'Tugrik');
INSERT INTO `valuta` VALUES ('MOP', 'Pataca');
INSERT INTO `valuta` VALUES ('MRO', 'Ouguiya');
INSERT INTO `valuta` VALUES ('MTL', 'Mallese Lira');
INSERT INTO `valuta` VALUES ('MUR', 'Mauritius Pupee');
INSERT INTO `valuta` VALUES ('MVR', 'Rufiyaa');
INSERT INTO `valuta` VALUES ('MWK', 'Kwacha');
INSERT INTO `valuta` VALUES ('MXN', 'Mexican  Nuevo Peso');
INSERT INTO `valuta` VALUES ('MYR', 'Malaysian Ringgit');
INSERT INTO `valuta` VALUES ('MZM', 'Metical');
INSERT INTO `valuta` VALUES ('NAD', 'Namibia Dollar');
INSERT INTO `valuta` VALUES ('NGN', 'Naira');
INSERT INTO `valuta` VALUES ('NIO', 'Cordoba Oro');
INSERT INTO `valuta` VALUES ('NLG', 'Netherlands Guilder');
INSERT INTO `valuta` VALUES ('NOK', 'Norwegian Krone');
INSERT INTO `valuta` VALUES ('NPR', 'Nepalese Rupee');
INSERT INTO `valuta` VALUES ('NZD', 'New Zealand Dollar');
INSERT INTO `valuta` VALUES ('OMR', 'Rial Omani');
INSERT INTO `valuta` VALUES ('PAB', 'Balboa/US  Dollar');
INSERT INTO `valuta` VALUES ('PEN', 'Nuevo Sol');
INSERT INTO `valuta` VALUES ('PGK', 'Kina');
INSERT INTO `valuta` VALUES ('PHP', 'Philippines Peso');
INSERT INTO `valuta` VALUES ('PKR', 'Pakistan Rupee');
INSERT INTO `valuta` VALUES ('PLZ', 'Zloty');
INSERT INTO `valuta` VALUES ('PTE', 'Portuguese Escudo');
INSERT INTO `valuta` VALUES ('PYG', 'Guarani');
INSERT INTO `valuta` VALUES ('QAR', 'Qatari Rial');
INSERT INTO `valuta` VALUES ('ROL', 'Leu');
INSERT INTO `valuta` VALUES ('Rp', 'Rupiah');
INSERT INTO `valuta` VALUES ('RUR', 'Russian Ruble');
INSERT INTO `valuta` VALUES ('RWF', 'Rwanda Franc');
INSERT INTO `valuta` VALUES ('SAR', 'Saudi Riyal');
INSERT INTO `valuta` VALUES ('SBD', 'Solomon Islands Dollar');
INSERT INTO `valuta` VALUES ('SCR', 'Seychelles Rupee');
INSERT INTO `valuta` VALUES ('SDD', 'Sudanase Dinar');
INSERT INTO `valuta` VALUES ('SDP', 'Sudanese Pound');
INSERT INTO `valuta` VALUES ('SEK', 'Swedish Krone');
INSERT INTO `valuta` VALUES ('SGD', 'Singapore Dollar');
INSERT INTO `valuta` VALUES ('SHP', 'St. Helena Pound');
INSERT INTO `valuta` VALUES ('SIT', 'Tolar');
INSERT INTO `valuta` VALUES ('SKK', 'Slovak Koruna');
INSERT INTO `valuta` VALUES ('SLL', 'Leone');
INSERT INTO `valuta` VALUES ('SOS', 'Somalia shilling');
INSERT INTO `valuta` VALUES ('SRG', 'Surinam Guilder');
INSERT INTO `valuta` VALUES ('STD', 'Dobra');
INSERT INTO `valuta` VALUES ('SVC', 'El Salvador Colon');
INSERT INTO `valuta` VALUES ('SYP', 'Syrian Pound');
INSERT INTO `valuta` VALUES ('SZL', 'Lilangeni');
INSERT INTO `valuta` VALUES ('THB', 'Baht');
INSERT INTO `valuta` VALUES ('TMM', 'Manat');
INSERT INTO `valuta` VALUES ('TND', 'Tunisian Dinar');
INSERT INTO `valuta` VALUES ('TOP', 'Pa\'anga');
INSERT INTO `valuta` VALUES ('TRL', 'Turkish Lira');
INSERT INTO `valuta` VALUES ('TTD', 'Trinidad & Tobago Dollar');
INSERT INTO `valuta` VALUES ('TWD', 'New Taiwan Dollar');
INSERT INTO `valuta` VALUES ('TZS', 'Tanzania Shilling');
INSERT INTO `valuta` VALUES ('UAK', 'Karbovanet');
INSERT INTO `valuta` VALUES ('UGX', 'Uganda Shilling');
INSERT INTO `valuta` VALUES ('USD', 'US Dollar');
INSERT INTO `valuta` VALUES ('UYU', 'Peso Uruguayo');
INSERT INTO `valuta` VALUES ('UZS', 'Ubekistan Sum');
INSERT INTO `valuta` VALUES ('VEB', 'Bolivar');
INSERT INTO `valuta` VALUES ('VND', 'Dong');
INSERT INTO `valuta` VALUES ('VUV', 'Vatu');
INSERT INTO `valuta` VALUES ('WST', 'Tala');
INSERT INTO `valuta` VALUES ('XAF', 'CFA  Franc BAEC');
INSERT INTO `valuta` VALUES ('XCD', 'East Caribbean Dollar');
INSERT INTO `valuta` VALUES ('XOF', 'CFA Franc BCEAO');
INSERT INTO `valuta` VALUES ('XPF', 'CFA Franc BEAC');
INSERT INTO `valuta` VALUES ('YER', 'Yemeni Rial');
INSERT INTO `valuta` VALUES ('YUN', 'New Yugosslavian');
INSERT INTO `valuta` VALUES ('ZAL', 'Financial Rand');
INSERT INTO `valuta` VALUES ('ZAR', 'Rand');
INSERT INTO `valuta` VALUES ('ZMK', 'Kwacha');
INSERT INTO `valuta` VALUES ('ZRN', 'Zaife');
INSERT INTO `valuta` VALUES ('ZWD', 'Zimbabwe Dollar');
