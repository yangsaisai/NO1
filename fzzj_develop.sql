/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50544
Source Host           : 127.0.0.1:3306
Source Database       : fzzj_develop

Target Server Type    : MYSQL
Target Server Version : 50544
File Encoding         : 65001

Date: 2017-07-13 15:16:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `w_id` int(11) unsigned NOT NULL COMMENT '关联员工ID',
  `name` varchar(50) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `private_key` varchar(5) NOT NULL COMMENT '私钥 用于混淆密码用',
  `role` varchar(10) NOT NULL COMMENT '角色(1.超级管理员、2.管理员、3.院长、4.诊室、5.后勤、6.器械、7.护工、8.督导)',
  `department` varchar(20) NOT NULL COMMENT '管理部门',
  `created` int(11) NOT NULL,
  `status` tinyint(11) NOT NULL COMMENT '用户状态1启用0冻结',
  `user` varchar(50) NOT NULL COMMENT '添加人员的姓名',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '删除状态(1.正常、2.已删除)',
  `updated` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='管理员';

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '4', 'admin', '6da2cd958bce0169edb99dcd5248d88a', '69DA', '1', '1,2,4', '1487089136', '1', '', '1', '0');
INSERT INTO `admin` VALUES ('33', '46', '1001001', '52ea675cd37f9f14e5f9170320e9c37c', '76E5', '7', '13', '1488792266', '1', 'admin', '2', '1494246284');
INSERT INTO `admin` VALUES ('34', '47', '1001002', 'bc044877d71e0862b3f5162e774a3813', '6710', '7', '4', '1495763543', '1', 'admin', '1', '0');
INSERT INTO `admin` VALUES ('35', '48', '1001008', '2648cbd111ad1b111aa850ac5caeffdb', 'C91C', '7', '13', '1488850998', '1', 'admin', '1', '0');
INSERT INTO `admin` VALUES ('36', '49', '1001010', '3d04721d49ab2729573fbaf1a8262b26', '7B8E', '7', '2', '1497343262', '1', 'admin', '1', '0');
INSERT INTO `admin` VALUES ('37', '50', '1001011', '554d51cbc0cce47298a72fb0347aa54a', 'AD36', '3', '1', '1492593297', '1', 'admin', '1', '0');
INSERT INTO `admin` VALUES ('38', '51', '787788', '0e2b5b85132fb7eff075435ae07f4f7d', 'C42A', '10', '4', '1492508960', '1', 'admin', '2', '1493286602');
INSERT INTO `admin` VALUES ('41', '53', '10010111', '7f4b55f75e4435743c91b12a055e4f29', 'B88B', '8', '255', '1492595144', '1', 'admin', '2', '1494232544');
INSERT INTO `admin` VALUES ('42', '54', '10010112', '1a2fb1ad29ddca1cbfc19d8a4273db8e', '17CC', '5', '255', '1492595343', '1', 'admin', '2', '1494229556');
INSERT INTO `admin` VALUES ('43', '55', '1001137', '39f68b22191614e5373d0e511b2d3079', 'C3E7', '', '', '1493193766', '1', 'admin', '2', '1494214803');
INSERT INTO `admin` VALUES ('44', '68', '1001137', '7775fbb928b07ee08df04998139391a2', 'DC51', '5', '', '1494215002', '1', 'admin', '2', '1494229545');
INSERT INTO `admin` VALUES ('45', '69', '10001011', '2c64f770bdd5f2417c88048a561042f8', 'E566', '7', '8', '1494320844', '1', 'admin', '1', '0');
INSERT INTO `admin` VALUES ('46', '70', '7312720', '3805b442e7f93e214ec654ff9eb2f961', '062B', '7', '8', '1494570799', '1', 'admin', '1', '0');
INSERT INTO `admin` VALUES ('47', '71', '234234232', '0d075e49ecad4060fdbed5a6eb80dc0c', '3FDD', '5', '8', '1494570977', '1', 'admin', '1', '0');
INSERT INTO `admin` VALUES ('48', '73', '11111111111', '6864dafbabdfb33128717882cee9822a', '48BD', '7', '1', '1496390354', '1', 'admin', '1', '0');

-- ----------------------------
-- Table structure for apparatus
-- ----------------------------
DROP TABLE IF EXISTS `apparatus`;
CREATE TABLE `apparatus` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `r_id` int(10) unsigned NOT NULL COMMENT '关联医疗器械清单ID',
  `status` tinyint(1) unsigned NOT NULL COMMENT '服务状态(1.未服务、2.已服务、3.对方已确认)',
  `created` int(11) unsigned NOT NULL,
  `updated` int(11) unsigned NOT NULL,
  `department` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='医疗器械报修表';

-- ----------------------------
-- Records of apparatus
-- ----------------------------
INSERT INTO `apparatus` VALUES ('1', '1', '3', '1493886958', '1494239983', '1');
INSERT INTO `apparatus` VALUES ('2', '2', '1', '1493886981', '0', '1');
INSERT INTO `apparatus` VALUES ('3', '3', '1', '1493969390', '0', '1');
INSERT INTO `apparatus` VALUES ('4', '4', '1', '1493969462', '0', '1');
INSERT INTO `apparatus` VALUES ('5', '5', '1', '1493969462', '0', '1');
INSERT INTO `apparatus` VALUES ('6', '6', '2', '1493969493', '1494906200', '1');
INSERT INTO `apparatus` VALUES ('7', '7', '3', '1493969517', '1494228310', '1');
INSERT INTO `apparatus` VALUES ('8', '8', '1', '1493969608', '0', '1');
INSERT INTO `apparatus` VALUES ('9', '9', '3', '1493977109', '1494239919', '8');
INSERT INTO `apparatus` VALUES ('10', '10', '3', '1494225407', '1494228315', '0');
INSERT INTO `apparatus` VALUES ('11', '11', '3', '1494225886', '1494228333', '8');
INSERT INTO `apparatus` VALUES ('12', '12', '3', '1494226150', '1494228245', '8');
INSERT INTO `apparatus` VALUES ('13', '13', '1', '1494227398', '0', '8');
INSERT INTO `apparatus` VALUES ('14', '14', '2', '1494227467', '1494906191', '8');
INSERT INTO `apparatus` VALUES ('15', '15', '3', '1494228344', '1495437001', '0');
INSERT INTO `apparatus` VALUES ('16', '16', '3', '1494228381', '1494239884', '8');
INSERT INTO `apparatus` VALUES ('17', '17', '3', '1494228500', '1494239849', '8');
INSERT INTO `apparatus` VALUES ('18', '18', '3', '1494239730', '1495436995', '8');
INSERT INTO `apparatus` VALUES ('19', '19', '3', '1494239972', '1494817471', '8');
INSERT INTO `apparatus` VALUES ('20', '20', '3', '1494240041', '1494240076', '8');
INSERT INTO `apparatus` VALUES ('21', '21', '3', '1494296528', '1494817401', '8');
INSERT INTO `apparatus` VALUES ('22', '22', '1', '1494818586', '0', '8');
INSERT INTO `apparatus` VALUES ('23', '23', '3', '1494818586', '1494818613', '8');

-- ----------------------------
-- Table structure for appearance
-- ----------------------------
DROP TABLE IF EXISTS `appearance`;
CREATE TABLE `appearance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `week` tinyint(1) NOT NULL COMMENT '星期(1.周一、2.周二、3.周三、4.周四、5.周五、6.周六、7.周日)',
  `date` varchar(10) DEFAULT NULL COMMENT '日期',
  `type` varchar(20) NOT NULL COMMENT '项目(1.理发、2.刮脸、3.剪指甲、4.洗头、5.洗澡、6.修脚、7.洗脚)',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `at` tinyint(1) NOT NULL COMMENT '时间点(1.早上、2.上午、3.中午、4.下午、5.晚上)',
  `sid` int(10) unsigned NOT NULL COMMENT '关联老年人ID（senior_id）',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='仪表';

-- ----------------------------
-- Records of appearance
-- ----------------------------
INSERT INTO `appearance` VALUES ('1', '1', '2017-03-06', '1,', '1488792638', '0', '3', '1');
INSERT INTO `appearance` VALUES ('2', '1', '2017-03-06', '1,2,3,4,7,', '1488793527', '0', '2', '1');
INSERT INTO `appearance` VALUES ('3', '2', '2017-03-07', '1,2,3,4,', '1488850481', '0', '2', '1');
INSERT INTO `appearance` VALUES ('4', '1', '2017-03-13', '3,', '1489389821', '0', '2', '1');
INSERT INTO `appearance` VALUES ('5', '1', '2017-03-13', '1,3,', '1489391914', '0', '2', '1');
INSERT INTO `appearance` VALUES ('6', '4', '2017-04-27', '5', '1493282438', '0', '2', '3');
INSERT INTO `appearance` VALUES ('7', '5', '2017-05-05', '2,', '1493969362', '0', '5', '1');
INSERT INTO `appearance` VALUES ('8', '1', '2017-05-08', '1,3,5', '1494211959', '0', '2', '1');
INSERT INTO `appearance` VALUES ('9', '1', '2017-05-08', '3,', '1494212145', '0', '5', '1');
INSERT INTO `appearance` VALUES ('10', '1', '2017-05-08', '1,7,5', '1494212375', '0', '2', '1');
INSERT INTO `appearance` VALUES ('11', '4', '2017-05-11', '1,2,3,', '1494486990', '0', '2', '1');
INSERT INTO `appearance` VALUES ('12', '4', '2017-05-11', '7,6,', '1494487102', '0', '5', '1');
INSERT INTO `appearance` VALUES ('13', '2', '2017-05-23', '2,3,4,', '1495507735', '0', '2', '1');
INSERT INTO `appearance` VALUES ('20', '2', '2017-05-23', '6,', '1495517155', '0', '4', '1');
INSERT INTO `appearance` VALUES ('21', '2', '2017-05-23', '3,4,7,6,', '1495533699', '0', '2', '5');
INSERT INTO `appearance` VALUES ('22', '2', '2017-05-23', '1,', '1495533713', '0', '2', '5');
INSERT INTO `appearance` VALUES ('23', '2', '2017-05-23', '1,', '1495534023', '0', '4', '5');
INSERT INTO `appearance` VALUES ('24', '2', '2017-05-23', '7,', '1495534025', '0', '4', '5');
INSERT INTO `appearance` VALUES ('25', '2', '2017-05-23', '2,', '1495534052', '0', '4', '5');
INSERT INTO `appearance` VALUES ('26', '5', '2017-05-26', '7,', '1495769842', '0', '4', '1');
INSERT INTO `appearance` VALUES ('27', '5', '2017-05-26', '1,2,4,6,', '1495770834', '0', '2', '1');
INSERT INTO `appearance` VALUES ('28', '5', '2017-05-26', '3,', '1495770845', '0', '2', '1');

-- ----------------------------
-- Table structure for apply_comp
-- ----------------------------
DROP TABLE IF EXISTS `apply_comp`;
CREATE TABLE `apply_comp` (
  `com_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_name` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '单位名称',
  `com_del` tinyint(4) DEFAULT '1' COMMENT '1可用2已删除',
  PRIMARY KEY (`com_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of apply_comp
-- ----------------------------
INSERT INTO `apply_comp` VALUES ('1', '斤', '1');
INSERT INTO `apply_comp` VALUES ('2', 'Kg', '1');
INSERT INTO `apply_comp` VALUES ('3', 'g', '1');
INSERT INTO `apply_comp` VALUES ('4', '袋', '1');
INSERT INTO `apply_comp` VALUES ('5', '个', '1');
INSERT INTO `apply_comp` VALUES ('6', '件', '1');
INSERT INTO `apply_comp` VALUES ('7', '罐', '1');
INSERT INTO `apply_comp` VALUES ('8', 'L', '1');
INSERT INTO `apply_comp` VALUES ('9', 'ml', '1');

-- ----------------------------
-- Table structure for apply_equi
-- ----------------------------
DROP TABLE IF EXISTS `apply_equi`;
CREATE TABLE `apply_equi` (
  `equi_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '设备ID',
  `equi_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '设备名称',
  `equi_status` int(11) DEFAULT NULL COMMENT '设备空余字段',
  PRIMARY KEY (`equi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of apply_equi
-- ----------------------------
INSERT INTO `apply_equi` VALUES ('1', '开颅器', null);
INSERT INTO `apply_equi` VALUES ('2', '打算', null);
INSERT INTO `apply_equi` VALUES ('3', '', null);
INSERT INTO `apply_equi` VALUES ('4', '护理床', null);
INSERT INTO `apply_equi` VALUES ('5', '123', null);
INSERT INTO `apply_equi` VALUES ('6', 'motuo', null);
INSERT INTO `apply_equi` VALUES ('7', 'shoushudao', null);
INSERT INTO `apply_equi` VALUES ('8', 'shoushutai', null);
INSERT INTO `apply_equi` VALUES ('9', '12', null);
INSERT INTO `apply_equi` VALUES ('10', '12312', null);
INSERT INTO `apply_equi` VALUES ('11', '3213', null);
INSERT INTO `apply_equi` VALUES ('12', '31231', null);
INSERT INTO `apply_equi` VALUES ('13', '3123', null);
INSERT INTO `apply_equi` VALUES ('14', 'test', null);
INSERT INTO `apply_equi` VALUES ('15', '1111', null);
INSERT INTO `apply_equi` VALUES ('16', '信泽', null);
INSERT INTO `apply_equi` VALUES ('17', '透析器材', null);

-- ----------------------------
-- Table structure for apply_good
-- ----------------------------
DROP TABLE IF EXISTS `apply_good`;
CREATE TABLE `apply_good` (
  `good_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '配货名称',
  `good_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `good_status` int(11) DEFAULT NULL COMMENT '空余状态',
  PRIMARY KEY (`good_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of apply_good
-- ----------------------------
INSERT INTO `apply_good` VALUES ('1', '手术台', null);
INSERT INTO `apply_good` VALUES ('2', 'CT透析器', null);
INSERT INTO `apply_good` VALUES ('3', '手书台', null);
INSERT INTO `apply_good` VALUES ('4', '手书台', null);
INSERT INTO `apply_good` VALUES ('5', 'CT投琪琪', null);
INSERT INTO `apply_good` VALUES ('6', '馒头', null);
INSERT INTO `apply_good` VALUES ('7', '饺子', null);
INSERT INTO `apply_good` VALUES ('8', '花生', null);
INSERT INTO `apply_good` VALUES ('9', '香蕉', null);
INSERT INTO `apply_good` VALUES ('10', '牛肉', null);
INSERT INTO `apply_good` VALUES ('11', '小孩', null);
INSERT INTO `apply_good` VALUES ('12', '清蒸小孩', null);
INSERT INTO `apply_good` VALUES ('13', '气温', null);
INSERT INTO `apply_good` VALUES ('14', '', null);
INSERT INTO `apply_good` VALUES ('15', '我去恶趣味', null);
INSERT INTO `apply_good` VALUES ('16', '大米', null);
INSERT INTO `apply_good` VALUES ('17', '面条', null);
INSERT INTO `apply_good` VALUES ('18', 'mantou', null);
INSERT INTO `apply_good` VALUES ('19', '羊肉', null);
INSERT INTO `apply_good` VALUES ('20', '驴肉', null);
INSERT INTO `apply_good` VALUES ('21', '龙肉', null);
INSERT INTO `apply_good` VALUES ('22', '猪肉', null);
INSERT INTO `apply_good` VALUES ('23', '狗肉', null);
INSERT INTO `apply_good` VALUES ('24', ' 大米', null);
INSERT INTO `apply_good` VALUES ('25', '案头', null);
INSERT INTO `apply_good` VALUES ('26', '1', null);
INSERT INTO `apply_good` VALUES ('27', '杨赛', null);
INSERT INTO `apply_good` VALUES ('28', '胡萝卜', null);
INSERT INTO `apply_good` VALUES ('29', '面包', null);
INSERT INTO `apply_good` VALUES ('30', '亚飞', null);
INSERT INTO `apply_good` VALUES ('31', 'yingerrou ', null);
INSERT INTO `apply_good` VALUES ('32', 'yangsai', null);
INSERT INTO `apply_good` VALUES ('33', 'yangsai2', null);
INSERT INTO `apply_good` VALUES ('34', '12312', null);
INSERT INTO `apply_good` VALUES ('35', 'wqqwe', null);
INSERT INTO `apply_good` VALUES ('36', '1321', null);
INSERT INTO `apply_good` VALUES ('37', '3123', null);
INSERT INTO `apply_good` VALUES ('38', '1312', null);
INSERT INTO `apply_good` VALUES ('39', '311', null);
INSERT INTO `apply_good` VALUES ('40', '31231', null);
INSERT INTO `apply_good` VALUES ('41', '131', null);
INSERT INTO `apply_good` VALUES ('42', '1323', null);
INSERT INTO `apply_good` VALUES ('43', '10', null);
INSERT INTO `apply_good` VALUES ('44', '信泽', null);
INSERT INTO `apply_good` VALUES ('45', '拍医拍', null);
INSERT INTO `apply_good` VALUES ('46', '玉米面', null);
INSERT INTO `apply_good` VALUES ('47', '肘肉', null);
INSERT INTO `apply_good` VALUES ('48', '火鸡', null);
INSERT INTO `apply_good` VALUES ('49', '玉米', null);
INSERT INTO `apply_good` VALUES ('50', '土豆', null);
INSERT INTO `apply_good` VALUES ('51', '肌肉', null);

-- ----------------------------
-- Table structure for apply_list
-- ----------------------------
DROP TABLE IF EXISTS `apply_list`;
CREATE TABLE `apply_list` (
  `apply_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `id` int(11) DEFAULT NULL COMMENT '用户ID',
  `apply_name` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '申请物品名称',
  `apply_num` int(11) DEFAULT NULL COMMENT '申请物品数量',
  `apply_time` varchar(10) DEFAULT NULL COMMENT '申请时间',
  `apply_com` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `sta_id` int(11) unsigned DEFAULT NULL COMMENT '状态(1.采购中、2.确认购买、3.已购买/确认配送、4.确认收货、5.已收货)',
  `apply_bei` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注',
  `department` int(11) DEFAULT NULL COMMENT '部门',
  PRIMARY KEY (`apply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of apply_list
-- ----------------------------
INSERT INTO `apply_list` VALUES ('1', '1', '馒头', '1', '1494326051', '袋', '2', '无', '8');
INSERT INTO `apply_list` VALUES ('2', '1', '馒头', '1', '1494474192', '袋', '4', '无', '8');
INSERT INTO `apply_list` VALUES ('3', '1', '大米', '10', '1494484969', 'Kg', '4', '无', '8');
INSERT INTO `apply_list` VALUES ('4', '1', '大米', '1', '1494485092', '袋', '4', '无', '8');
INSERT INTO `apply_list` VALUES ('5', '1', '玉米面', '10', '1494485612', '袋', '4', '无', '8');
INSERT INTO `apply_list` VALUES ('6', '1', '肘肉', '1', '1494486084', '斤', '4', '无', '8');
INSERT INTO `apply_list` VALUES ('7', '1', '猪肉', '10', '1494486201', '斤', '4', '无', '8');
INSERT INTO `apply_list` VALUES ('8', '1', '火鸡', '10', '1494486299', 'Kg', '4', '无', '8');
INSERT INTO `apply_list` VALUES ('9', '1', '玉米', '5', '1494490425', 'Kg', '4', '无', '8');
INSERT INTO `apply_list` VALUES ('10', '1', '土豆', '10', '1494494347', '斤', '2', '无', '8');
INSERT INTO `apply_list` VALUES ('11', '1', '猪肉', '1', '1495434830', '斤', '4', '无', '8');
INSERT INTO `apply_list` VALUES ('12', '1', '肌肉', '1', '1495434941', '斤', '2', '无', '8');
INSERT INTO `apply_list` VALUES ('13', '1', '胡萝卜', '2', '1495695135', '斤', '4', '无', '8');

-- ----------------------------
-- Table structure for apply_rep
-- ----------------------------
DROP TABLE IF EXISTS `apply_rep`;
CREATE TABLE `apply_rep` (
  `rep_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `id` int(11) DEFAULT NULL COMMENT '报备人',
  `rep_name` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '报备物品',
  `rep_type` tinyint(1) DEFAULT NULL COMMENT '类型1购买2报修',
  `rep_time` int(10) unsigned DEFAULT NULL COMMENT '时间',
  `rep_rea` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '原因',
  `rep_status` tinyint(2) unsigned DEFAULT NULL COMMENT '状态(1.申报中、2.确认服务、3.已服务)',
  `rep_sapre` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `departmnt` int(11) DEFAULT NULL COMMENT '部门',
  PRIMARY KEY (`rep_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of apply_rep
-- ----------------------------
INSERT INTO `apply_rep` VALUES ('1', '1', '123', '2', '1493886958', 'qweqe', '3', '1', '1');
INSERT INTO `apply_rep` VALUES ('2', '1', 'motuo', '2', '1493886981', 'qweqw', '1', '1', '1');
INSERT INTO `apply_rep` VALUES ('3', '1', 'shoushudao', '1', '1493969390', '', '1', '1', '1');
INSERT INTO `apply_rep` VALUES ('4', '1', 'shoushutai', '1', '1493969462', 'ewqeqw', '1', '1', '1');
INSERT INTO `apply_rep` VALUES ('5', '1', 'shoushutai', '1', '1493969462', 'ewqeqw', '1', '1', '1');
INSERT INTO `apply_rep` VALUES ('6', '1', '12', '1', '1493969493', '121', '2', '2', '1');
INSERT INTO `apply_rep` VALUES ('7', '1', '12312', '1', '1493969517', '123123', '3', '123', '1');
INSERT INTO `apply_rep` VALUES ('8', '1', '3213', '2', '1493969608', '31231', '1', '3123', '1');
INSERT INTO `apply_rep` VALUES ('9', '1', '31231', '1', '1493977109', '3213123', '3', '123123', '0');
INSERT INTO `apply_rep` VALUES ('10', '1', '12312', '2', '1494225407', 'eqwe', '3', '123', '0');
INSERT INTO `apply_rep` VALUES ('11', '1', '123', '1', '1494225886', '132123', '3', '1', '8');
INSERT INTO `apply_rep` VALUES ('12', '1', '3123', '2', '1494226150', 'eqweq', '3', '1', '8');
INSERT INTO `apply_rep` VALUES ('13', '1', '3123', '2', '1494227398', '3123', '1', '123', '8');
INSERT INTO `apply_rep` VALUES ('14', '1', '3123', '2', '1494227467', '3123', '2', '123', '8');
INSERT INTO `apply_rep` VALUES ('15', '1', 'test', '2', '1494228344', '', '3', '1', '0');
INSERT INTO `apply_rep` VALUES ('16', '1', 'test', '1', '1494228381', '', '3', '2', '0');
INSERT INTO `apply_rep` VALUES ('17', '1', '1111', '2', '1494228500', 'meiyou', '3', '222', '0');
INSERT INTO `apply_rep` VALUES ('18', '1', '3123', '2', '1494239730', '3123', '3', '3123', '8');
INSERT INTO `apply_rep` VALUES ('19', '1', '3123', '2', '1494239972', '123123', '3', '123', '8');
INSERT INTO `apply_rep` VALUES ('20', '1', '3123', '1', '1494240041', '31231', '3', '312', '8');
INSERT INTO `apply_rep` VALUES ('21', '1', '信泽', '1', '1494296528', '的气温', '3', '1', '8');
INSERT INTO `apply_rep` VALUES ('22', '1', '透析器材', '2', '1494818586', '1323', '1', '1', '8');
INSERT INTO `apply_rep` VALUES ('23', '1', '透析器材', '2', '1494818586', '1323', '3', '1', '8');

-- ----------------------------
-- Table structure for appraise
-- ----------------------------
DROP TABLE IF EXISTS `appraise`;
CREATE TABLE `appraise` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `w_id` int(10) NOT NULL COMMENT '关联员工ID',
  `description` varchar(200) NOT NULL COMMENT '考核事因',
  `status` tinyint(1) NOT NULL COMMENT '加减分(1.加分、2.减分)',
  `score` int(5) NOT NULL COMMENT '分数',
  `user` varchar(20) NOT NULL COMMENT '操作人员',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否删除(1.正常、2.已删除)',
  `created` int(11) unsigned NOT NULL,
  `updated` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='考核记录表';

-- ----------------------------
-- Records of appraise
-- ----------------------------
INSERT INTO `appraise` VALUES ('1', '49', '上班时间玩开心消消乐.', '2', '20', 'admin', '1', '1489998414', '1492764247');
INSERT INTO `appraise` VALUES ('2', '50', '上班迟到12', '2', '4', 'admin', '1', '1492764282', '1495419905');
INSERT INTO `appraise` VALUES ('3', '4', '迟到', '2', '1', 'admin', '1', '1495420035', '0');
INSERT INTO `appraise` VALUES ('4', '55', '迟到', '2', '1', 'admin', '1', '1495420126', '0');
INSERT INTO `appraise` VALUES ('5', '51', '气温为', '1', '1', 'admin', '1', '1496737327', '0');

-- ----------------------------
-- Table structure for bed_management
-- ----------------------------
DROP TABLE IF EXISTS `bed_management`;
CREATE TABLE `bed_management` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `week` tinyint(1) NOT NULL COMMENT '星期(1.周一、2.周二、3.周三、4.周四、5.周五、6.周六、7.周日)',
  `date` varchar(10) DEFAULT NULL COMMENT '日期',
  `pillow_status` varchar(20) NOT NULL COMMENT '枕头状态(1.清扫、2.换洗)',
  `pillowcovers_status` varchar(20) NOT NULL COMMENT '枕巾状态(1.清扫、2.换洗)',
  `pillowcase_status` varchar(20) NOT NULL COMMENT '枕头罩状态(1.清扫、2.换洗)',
  `sheets_status` varchar(20) NOT NULL COMMENT '床单状态(1.清扫、2.换洗)',
  `mattess_status` varchar(20) NOT NULL COMMENT '床垫状态(1.清扫、2.换洗)',
  `quilt_status` varchar(20) NOT NULL COMMENT '被子状态(1.清扫、2.换洗)',
  `quiltcover_status` varchar(20) NOT NULL COMMENT '被罩状态(1.清扫、2.换洗)',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `at` tinyint(1) NOT NULL COMMENT '时间点(1.早上、2.上午、3.中午、4.下午、5.晚上)',
  `sid` int(10) unsigned NOT NULL COMMENT '关联老年人ID（senior_id）',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='床铺管理';

-- ----------------------------
-- Records of bed_management
-- ----------------------------
INSERT INTO `bed_management` VALUES ('1', '1', '2017-03-06', '', '1', '', '', '', '2', '2', '1488793539', '0', '2', '1');
INSERT INTO `bed_management` VALUES ('2', '2', '2017-03-07', '1', '1', '', '', '2', '2', '2', '1488850509', '0', '2', '1');
INSERT INTO `bed_management` VALUES ('3', '2', '2017-03-07', '', '', '', '2', '', '', '', '1488850533', '0', '2', '1');
INSERT INTO `bed_management` VALUES ('4', '5', '2017-03-10', '', '', '', '', '', '', '', '1489119457', '0', '2', '1');
INSERT INTO `bed_management` VALUES ('5', '1', '2017-03-13', '1', '', '', '', '', '', '', '1489389851', '0', '2', '1');
INSERT INTO `bed_management` VALUES ('6', '4', '2017-03-23', '', '', '', '', '2', '', '', '1490236893', '0', '2', '2');
INSERT INTO `bed_management` VALUES ('7', '1', '2017-05-08', '1', '2', '', '2', '2', '2', '', '1494212031', '0', '2', '1');
INSERT INTO `bed_management` VALUES ('8', '1', '2017-05-08', '1', '', '', '', '', '1', '', '1494212171', '0', '5', '1');
INSERT INTO `bed_management` VALUES ('9', '1', '2017-05-08', '1', '', '', '', '2', '', '', '1494212382', '0', '2', '1');
INSERT INTO `bed_management` VALUES ('10', '4', '2017-05-11', '', '1', '', '', '2', '1', '', '1494487016', '0', '2', '1');
INSERT INTO `bed_management` VALUES ('11', '4', '2017-05-11', '', '', '', '', '', '2', '', '1494487109', '0', '5', '1');
INSERT INTO `bed_management` VALUES ('17', '2', '2017-05-23', '1', '', '', '', '', '', '', '1495531174', '0', '4', '1');
INSERT INTO `bed_management` VALUES ('18', '2', '2017-05-23', '', '1', '1', '1', '1', '1', '1', '1495531191', '0', '4', '1');
INSERT INTO `bed_management` VALUES ('19', '5', '2017-05-26', '2', '1', '2', '1', '1', '2', '2', '1495768078', '0', '4', '1');
INSERT INTO `bed_management` VALUES ('20', '5', '2017-05-26', '', '2', '', '', '', '', '', '1495769861', '0', '4', '1');
INSERT INTO `bed_management` VALUES ('21', '5', '2017-05-26', '', '2', '', '', '', '', '', '1495769885', '0', '4', '1');
INSERT INTO `bed_management` VALUES ('22', '5', '2017-05-26', '2', '2', '1', '1', '2', '2', '1', '1495770875', '0', '2', '1');
INSERT INTO `bed_management` VALUES ('23', '5', '2017-05-26', '1', '1', '1', '1', '1', '1', '1', '1495772551', '0', '2', '1');
INSERT INTO `bed_management` VALUES ('24', '5', '2017-05-26', '', '1', '', '', '', '', '', '1495772719', '0', '2', '1');
INSERT INTO `bed_management` VALUES ('25', '5', '2017-05-26', '', '2', '', '', '', '', '', '1495772782', '0', '4', '1');

-- ----------------------------
-- Table structure for blood_pressure
-- ----------------------------
DROP TABLE IF EXISTS `blood_pressure`;
CREATE TABLE `blood_pressure` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `high_pressure` int(11) NOT NULL COMMENT '高压',
  `low_pressure` int(11) NOT NULL COMMENT '低压',
  `date` varchar(10) NOT NULL COMMENT '测试时间',
  `week` varchar(10) NOT NULL COMMENT '星期(1.周一、2.周二、3.周三、4.周四、5.周五、6.周六、7.周日)',
  `high_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '高压状态(0.正常、1.偏高、2.很高、3.偏低、4.很低)',
  `low_status` tinyint(1) unsigned NOT NULL COMMENT '低压状态(0.正常、1.偏高、2.很高、3.偏低、4.很低)',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `at` tinyint(1) NOT NULL COMMENT '时间段(1.早上、2.上午、3.中午、4.下午、5.晚上)',
  `sid` int(10) unsigned NOT NULL COMMENT '关联老年人ID（senior_id）',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='血压';

-- ----------------------------
-- Records of blood_pressure
-- ----------------------------
INSERT INTO `blood_pressure` VALUES ('1', '148', '90', '2017-03-06', '1', '0', '0', '1488793374', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('2', '148', '86', '2017-03-06', '1', '0', '0', '1488793392', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('3', '180', '90', '2017-03-06', '1', '2', '0', '1488794568', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('4', '112', '72', '2017-03-06', '1', '3', '4', '1488794578', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('5', '145', '90', '2017-03-07', '2', '0', '0', '1488850352', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('6', '135', '75', '2017-03-09', '4', '0', '5', '1489026992', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('7', '135', '75', '2017-03-10', '5', '0', '5', '1489114191', '0', '6', '1');
INSERT INTO `blood_pressure` VALUES ('8', '138', '86', '2017-03-10', '5', '0', '0', '1489114204', '0', '6', '1');
INSERT INTO `blood_pressure` VALUES ('9', '135', '84', '2017-03-13', '1', '0', '3', '1489389059', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('10', '135', '75', '2017-03-17', '5', '0', '5', '1489723886', '0', '6', '2');
INSERT INTO `blood_pressure` VALUES ('11', '135', '60', '2017-03-17', '5', '0', '5', '1489723894', '0', '6', '2');
INSERT INTO `blood_pressure` VALUES ('12', '135', '60', '2017-03-17', '5', '0', '5', '1489724395', '0', '1', '2');
INSERT INTO `blood_pressure` VALUES ('13', '180', '75', '2017-03-17', '5', '2', '5', '1489724404', '0', '1', '2');
INSERT INTO `blood_pressure` VALUES ('14', '135', '75', '2017-03-22', '3', '0', '5', '1490168348', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('15', '135', '65', '2017-03-23', '4', '0', '4', '1490236409', '0', '1', '2');
INSERT INTO `blood_pressure` VALUES ('16', '180', '90', '2017-03-23', '4', '2', '0', '1490250079', '0', '6', '2');
INSERT INTO `blood_pressure` VALUES ('17', '135', '71', '2017-03-24', '5', '0', '4', '1490324165', '0', '1', '3');
INSERT INTO `blood_pressure` VALUES ('18', '112', '75', '2017-03-24', '5', '3', '5', '1490326007', '0', '1', '3');
INSERT INTO `blood_pressure` VALUES ('19', '135', '75', '2017-03-24', '5', '0', '5', '1490326498', '0', '6', '3');
INSERT INTO `blood_pressure` VALUES ('20', '135', '75', '2017-03-24', '5', '0', '5', '1490328658', '0', '6', '3');
INSERT INTO `blood_pressure` VALUES ('21', '135', '74', '2017-05-02', '2', '0', '4', '1493719419', '0', '1', '2');
INSERT INTO `blood_pressure` VALUES ('22', '135', '75', '2017-05-03', '3', '0', '5', '1493780536', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('23', '135', '75', '2017-05-08', '1', '0', '5', '1494211789', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('24', '135', '75', '2017-05-08', '1', '0', '5', '1494212291', '0', '6', '1');
INSERT INTO `blood_pressure` VALUES ('25', '135', '75', '2017-05-11', '4', '0', '5', '1494486937', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('26', '135', '75', '2017-05-23', '2', '0', '5', '1495506701', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('27', '133', '73', '2017-05-23', '2', '0', '4', '1495527144', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('28', '135', '71', '2017-05-23', '2', '0', '4', '1495530510', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('29', '139', '79', '2017-05-23', '2', '0', '3', '1495532097', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('30', '135', '73', '2017-05-23', '2', '0', '4', '1495532456', '0', '1', '5');
INSERT INTO `blood_pressure` VALUES ('31', '136', '77', '2017-05-23', '2', '0', '3', '1495532501', '0', '1', '5');
INSERT INTO `blood_pressure` VALUES ('32', '135', '78', '2017-05-24', '3', '0', '3', '1495592460', '0', '1', '5');
INSERT INTO `blood_pressure` VALUES ('33', '135', '75', '2017-05-24', '3', '0', '5', '1495592954', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('37', '136', '76', '2017-05-26', '5', '0', '3', '1495764608', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('38', '132', '72', '2017-05-26', '5', '0', '4', '1495764627', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('39', '115', '75', '2017-06-13', '2', '3', '5', '1497343369', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('40', '115', '75', '2017-06-13', '2', '3', '5', '1497343671', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('41', '115', '75', '2017-06-13', '2', '3', '5', '1497343783', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('42', '113', '71', '2017-06-13', '2', '3', '4', '1497343835', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('43', '115', '75', '2017-06-13', '2', '3', '5', '1497344039', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('44', '115', '75', '2017-06-13', '2', '3', '5', '1497344045', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('45', '115', '75', '2017-06-14', '3', '3', '5', '1497404264', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('46', '115', '75', '2017-06-14', '3', '3', '5', '1497404267', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('47', '115', '75', '2017-06-14', '3', '3', '5', '1497404267', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('48', '115', '75', '2017-06-14', '3', '3', '5', '1497404271', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('49', '115', '75', '2017-06-14', '3', '3', '5', '1497404271', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('50', '115', '75', '2017-06-14', '3', '3', '5', '1497404272', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('51', '115', '75', '2017-06-14', '3', '3', '5', '1497404274', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('52', '115', '75', '2017-06-14', '3', '3', '5', '1497404276', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('53', '115', '75', '2017-06-14', '3', '3', '5', '1497404278', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('54', '115', '75', '2017-06-14', '3', '3', '5', '1497404283', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('55', '115', '75', '2017-06-14', '3', '3', '5', '1497404286', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('56', '115', '75', '2017-06-14', '3', '3', '5', '1497404317', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('57', '115', '75', '2017-06-14', '3', '3', '5', '1497404357', '0', '1', '1');
INSERT INTO `blood_pressure` VALUES ('58', '115', '74', '2017-06-15', '4', '3', '4', '1497491618', '0', '1', '1');

-- ----------------------------
-- Table structure for blood_sugar
-- ----------------------------
DROP TABLE IF EXISTS `blood_sugar`;
CREATE TABLE `blood_sugar` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(11) unsigned NOT NULL COMMENT '关联老人ID',
  `blood_sugar` float NOT NULL COMMENT '血糖值',
  `date` varchar(10) NOT NULL COMMENT '测试时间',
  `week` varchar(10) NOT NULL COMMENT '星期(1.周一、2.周二、3.周三、4.周四、5.周五、6.周六、7.周日)',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '血糖状态(1.正常、2.偏低、3.偏高)',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `at` tinyint(1) NOT NULL COMMENT '时间段(1.早上、2.上午、3.中午、4.下午、5.晚上)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='血糖';

-- ----------------------------
-- Records of blood_sugar
-- ----------------------------
INSERT INTO `blood_sugar` VALUES ('1', '1', '6', '2017-03-06', '1', '0', '1488794585', '0', '1');
INSERT INTO `blood_sugar` VALUES ('2', '1', '9', '2017-03-06', '1', '0', '1488794591', '0', '1');
INSERT INTO `blood_sugar` VALUES ('3', '1', '6', '2017-03-07', '2', '0', '1488850378', '0', '1');
INSERT INTO `blood_sugar` VALUES ('4', '1', '6', '2017-03-09', '4', '0', '1489027000', '0', '1');
INSERT INTO `blood_sugar` VALUES ('5', '1', '9.9', '2017-03-13', '1', '0', '1489389107', '0', '1');
INSERT INTO `blood_sugar` VALUES ('6', '2', '6.9', '2017-03-23', '4', '0', '1490236422', '0', '1');
INSERT INTO `blood_sugar` VALUES ('7', '2', '9.9', '2017-03-23', '4', '0', '1490236432', '0', '1');
INSERT INTO `blood_sugar` VALUES ('8', '1', '8.2', '2017-05-08', '1', '0', '1494211802', '0', '1');
INSERT INTO `blood_sugar` VALUES ('9', '1', '6', '2017-05-08', '1', '0', '1494212298', '0', '6');
INSERT INTO `blood_sugar` VALUES ('10', '1', '6', '2017-05-11', '4', '0', '1494486944', '0', '1');
INSERT INTO `blood_sugar` VALUES ('11', '1', '6', '2017-05-23', '2', '0', '1495506739', '0', '1');
INSERT INTO `blood_sugar` VALUES ('12', '1', '19.2', '2017-05-23', '2', '0', '1495530559', '0', '1');
INSERT INTO `blood_sugar` VALUES ('13', '1', '19.2', '2017-05-23', '2', '0', '1495530561', '0', '1');
INSERT INTO `blood_sugar` VALUES ('14', '1', '19.2', '2017-05-23', '2', '0', '1495530562', '0', '1');
INSERT INTO `blood_sugar` VALUES ('15', '1', '19.2', '2017-05-23', '2', '0', '1495530562', '0', '1');
INSERT INTO `blood_sugar` VALUES ('16', '1', '19.2', '2017-05-23', '2', '0', '1495530562', '0', '1');
INSERT INTO `blood_sugar` VALUES ('17', '1', '19.2', '2017-05-23', '2', '0', '1495530562', '0', '1');
INSERT INTO `blood_sugar` VALUES ('18', '1', '19.2', '2017-05-23', '2', '0', '1495530562', '0', '1');
INSERT INTO `blood_sugar` VALUES ('19', '1', '19.2', '2017-05-23', '2', '0', '1495530562', '0', '1');
INSERT INTO `blood_sugar` VALUES ('20', '1', '19.2', '2017-05-23', '2', '0', '1495530562', '0', '1');
INSERT INTO `blood_sugar` VALUES ('21', '1', '19.2', '2017-05-23', '2', '0', '1495530562', '0', '1');
INSERT INTO `blood_sugar` VALUES ('22', '1', '19.2', '2017-05-23', '2', '0', '1495530562', '0', '1');
INSERT INTO `blood_sugar` VALUES ('23', '1', '19.2', '2017-05-23', '2', '0', '1495530562', '0', '1');
INSERT INTO `blood_sugar` VALUES ('24', '1', '19.2', '2017-05-23', '2', '0', '1495530562', '0', '1');
INSERT INTO `blood_sugar` VALUES ('25', '1', '19.2', '2017-05-23', '2', '0', '1495530562', '0', '1');
INSERT INTO `blood_sugar` VALUES ('26', '1', '19.2', '2017-05-23', '2', '0', '1495530562', '0', '1');
INSERT INTO `blood_sugar` VALUES ('27', '1', '19.2', '2017-05-23', '2', '0', '1495530562', '0', '1');
INSERT INTO `blood_sugar` VALUES ('28', '1', '19.2', '2017-05-23', '2', '0', '1495530562', '0', '1');
INSERT INTO `blood_sugar` VALUES ('29', '1', '19.2', '2017-05-23', '2', '0', '1495530562', '0', '1');
INSERT INTO `blood_sugar` VALUES ('30', '1', '19.2', '2017-05-23', '2', '0', '1495530563', '0', '1');
INSERT INTO `blood_sugar` VALUES ('31', '1', '19.2', '2017-05-23', '2', '0', '1495530563', '0', '1');
INSERT INTO `blood_sugar` VALUES ('32', '1', '19.2', '2017-05-23', '2', '0', '1495530563', '0', '1');
INSERT INTO `blood_sugar` VALUES ('33', '1', '19.2', '2017-05-23', '2', '0', '1495530563', '0', '1');
INSERT INTO `blood_sugar` VALUES ('34', '5', '19.3', '2017-05-23', '2', '0', '1495532483', '0', '1');
INSERT INTO `blood_sugar` VALUES ('35', '5', '15', '2017-05-23', '2', '0', '1495532519', '0', '1');
INSERT INTO `blood_sugar` VALUES ('37', '1', '15', '2017-05-26', '5', '0', '1495764720', '0', '1');
INSERT INTO `blood_sugar` VALUES ('38', '1', '17', '2017-05-26', '5', '0', '1495764733', '0', '1');
INSERT INTO `blood_sugar` VALUES ('39', '1', '17', '2017-06-13', '2', '0', '1497344977', '0', '1');
INSERT INTO `blood_sugar` VALUES ('40', '1', '17', '2017-06-13', '2', '0', '1497344985', '0', '1');
INSERT INTO `blood_sugar` VALUES ('41', '1', '17', '2017-06-13', '2', '0', '1497344989', '0', '1');
INSERT INTO `blood_sugar` VALUES ('42', '1', '17', '2017-06-13', '2', '0', '1497345072', '0', '1');
INSERT INTO `blood_sugar` VALUES ('43', '1', '20.4', '2017-06-14', '3', '0', '1497404309', '0', '1');
INSERT INTO `blood_sugar` VALUES ('44', '1', '20.3', '2017-06-15', '4', '0', '1497491630', '0', '1');

-- ----------------------------
-- Table structure for body_temperature
-- ----------------------------
DROP TABLE IF EXISTS `body_temperature`;
CREATE TABLE `body_temperature` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `temperature` float NOT NULL DEFAULT '0' COMMENT '温度',
  `week` tinyint(1) NOT NULL COMMENT '星期(0.周日、1.周一、2.周二、3.周三、4.周四、5.周五、6.周六)',
  `date` varchar(10) NOT NULL COMMENT '日期',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '体温状态(1.正常、2.偏低、3.偏高)',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `at` tinyint(1) NOT NULL COMMENT '时间点(1.早上、2.上午、3.中午、4.下午、5.晚上)',
  `sid` int(11) unsigned NOT NULL COMMENT '关联老年人ID（senior_id）',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='体温';

-- ----------------------------
-- Records of body_temperature
-- ----------------------------
INSERT INTO `body_temperature` VALUES ('1', '37', '1', '2017-03-06', '0', '1488794596', '0', '1', '1');
INSERT INTO `body_temperature` VALUES ('2', '37', '1', '2017-03-06', '0', '1488795233', '0', '1', '1');
INSERT INTO `body_temperature` VALUES ('3', '37', '2', '2017-03-07', '0', '1488850383', '0', '1', '1');
INSERT INTO `body_temperature` VALUES ('4', '35.9', '4', '2017-03-09', '3', '1489027007', '0', '1', '1');
INSERT INTO `body_temperature` VALUES ('5', '41.4', '1', '2017-03-13', '2', '1489389115', '0', '1', '1');
INSERT INTO `body_temperature` VALUES ('6', '37', '5', '2017-03-17', '0', '1489723167', '0', '6', '1');
INSERT INTO `body_temperature` VALUES ('7', '37', '5', '2017-03-17', '0', '1489723410', '0', '6', '1');
INSERT INTO `body_temperature` VALUES ('8', '37', '5', '2017-03-17', '0', '1489724185', '0', '6', '2');
INSERT INTO `body_temperature` VALUES ('9', '37', '5', '2017-03-17', '0', '1489724188', '0', '6', '2');
INSERT INTO `body_temperature` VALUES ('10', '41.9', '4', '2017-03-23', '2', '1490236438', '0', '1', '2');
INSERT INTO `body_temperature` VALUES ('11', '35.9', '4', '2017-03-23', '3', '1490236444', '0', '1', '2');
INSERT INTO `body_temperature` VALUES ('12', '37', '5', '2017-03-24', '0', '1490325546', '0', '1', '3');
INSERT INTO `body_temperature` VALUES ('13', '37', '5', '2017-03-24', '0', '1490325547', '0', '1', '3');
INSERT INTO `body_temperature` VALUES ('14', '37', '5', '2017-03-24', '0', '1490325579', '0', '1', '3');
INSERT INTO `body_temperature` VALUES ('15', '37', '5', '2017-03-24', '0', '1490325581', '0', '1', '3');
INSERT INTO `body_temperature` VALUES ('16', '37', '5', '2017-03-24', '0', '1490325715', '0', '1', '3');
INSERT INTO `body_temperature` VALUES ('17', '37', '5', '2017-03-24', '0', '1490326105', '0', '6', '3');
INSERT INTO `body_temperature` VALUES ('18', '37', '5', '2017-03-24', '0', '1490326288', '0', '6', '3');
INSERT INTO `body_temperature` VALUES ('19', '35', '1', '2017-05-08', '3', '1494211816', '0', '1', '1');
INSERT INTO `body_temperature` VALUES ('20', '37', '1', '2017-05-08', '0', '1494212306', '0', '6', '1');
INSERT INTO `body_temperature` VALUES ('21', '37', '4', '2017-05-11', '0', '1494486949', '0', '1', '1');
INSERT INTO `body_temperature` VALUES ('22', '41', '2', '2017-05-16', '2', '1494921840', '0', '1', '1');
INSERT INTO `body_temperature` VALUES ('23', '37', '2', '2017-05-23', '0', '1495506868', '0', '1', '1');
INSERT INTO `body_temperature` VALUES ('24', '37', '2', '2017-05-23', '0', '1495533131', '0', '1', '5');
INSERT INTO `body_temperature` VALUES ('25', '38', '2', '2017-05-23', '1', '1495533150', '0', '1', '5');
INSERT INTO `body_temperature` VALUES ('26', '41', '5', '2017-05-26', '2', '1495763631', '0', '1', '1');
INSERT INTO `body_temperature` VALUES ('27', '37', '5', '2017-05-26', '0', '1495764768', '0', '1', '1');
INSERT INTO `body_temperature` VALUES ('28', '38', '5', '2017-05-26', '1', '1495764786', '0', '1', '1');
INSERT INTO `body_temperature` VALUES ('29', '37.1', '2', '2017-06-13', '0', '1497345329', '0', '1', '1');
INSERT INTO `body_temperature` VALUES ('30', '37.2', '4', '2017-06-15', '0', '1497491645', '0', '1', '1');

-- ----------------------------
-- Table structure for bodyparts_info
-- ----------------------------
DROP TABLE IF EXISTS `bodyparts_info`;
CREATE TABLE `bodyparts_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `num` tinyint(2) unsigned NOT NULL COMMENT '身体部位编码',
  `introduce` varchar(20) NOT NULL COMMENT '身体部位描述',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='身体部位表';

-- ----------------------------
-- Records of bodyparts_info
-- ----------------------------
INSERT INTO `bodyparts_info` VALUES ('1', '1', '左肩', '1484969343', '0');
INSERT INTO `bodyparts_info` VALUES ('2', '2', '右肩', '1484969343', '0');
INSERT INTO `bodyparts_info` VALUES ('3', '3', '左肩胛', '1484969343', '0');
INSERT INTO `bodyparts_info` VALUES ('4', '4', '右肩胛', '1484969343', '0');
INSERT INTO `bodyparts_info` VALUES ('5', '5', '尾骨', '1484969343', '0');
INSERT INTO `bodyparts_info` VALUES ('6', '6', '左肘', '1484969343', '0');
INSERT INTO `bodyparts_info` VALUES ('7', '7', '右肘', '1484969343', '0');
INSERT INTO `bodyparts_info` VALUES ('8', '8', '左膝', '1484969343', '0');
INSERT INTO `bodyparts_info` VALUES ('9', '9', '右膝', '1484969343', '0');

-- ----------------------------
-- Table structure for bodystatus_info
-- ----------------------------
DROP TABLE IF EXISTS `bodystatus_info`;
CREATE TABLE `bodystatus_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `num` tinyint(2) unsigned NOT NULL COMMENT '身体状态编码',
  `introduce` varchar(20) NOT NULL COMMENT '身体状态描述',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='身体状态表';

-- ----------------------------
-- Records of bodystatus_info
-- ----------------------------
INSERT INTO `bodystatus_info` VALUES ('1', '1', '半自理1级', '1484969343', '0');
INSERT INTO `bodystatus_info` VALUES ('2', '2', '半自理2级', '1484969343', '0');
INSERT INTO `bodystatus_info` VALUES ('3', '3', '半自理3级', '1484969343', '0');
INSERT INTO `bodystatus_info` VALUES ('4', '4', '完全不能自理1级', '1484969343', '0');
INSERT INTO `bodystatus_info` VALUES ('5', '5', '完全不能自理2级', '1484969343', '0');
INSERT INTO `bodystatus_info` VALUES ('6', '6', '完全不能自理3级', '1484969343', '0');
INSERT INTO `bodystatus_info` VALUES ('7', '7', '可自理', '1484969343', '0');
INSERT INTO `bodystatus_info` VALUES ('8', '8', '未知', '1484969343', '0');

-- ----------------------------
-- Table structure for carte
-- ----------------------------
DROP TABLE IF EXISTS `carte`;
CREATE TABLE `carte` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `starttime` varchar(11) NOT NULL COMMENT '配餐开始时间',
  `endtime` varchar(11) NOT NULL COMMENT '配餐结束时间',
  `department` varchar(20) NOT NULL COMMENT '所属部门',
  `createtime` datetime NOT NULL,
  `createuser` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='配餐表';

-- ----------------------------
-- Records of carte
-- ----------------------------
INSERT INTO `carte` VALUES ('18', '2017-05-08', '2017-05-14', '8,1,13,255,101,252,2', '2017-05-09 16:15:45', 'admin');
INSERT INTO `carte` VALUES ('19', '2017-05-15', '2017-05-21', '8,1,13,255,101,252,2', '2017-05-15 10:45:41', 'admin');
INSERT INTO `carte` VALUES ('20', '2017-05-22', '2017-05-28', '8,1,13,255,101,252,2', '2017-05-23 14:44:08', 'admin');

-- ----------------------------
-- Table structure for cater_info
-- ----------------------------
DROP TABLE IF EXISTS `cater_info`;
CREATE TABLE `cater_info` (
  `id` int(11) NOT NULL COMMENT '配餐id',
  `catertime` varchar(11) NOT NULL COMMENT '配餐具体时间',
  `breakfast` varchar(100) NOT NULL COMMENT '早餐',
  `lunch` varchar(100) NOT NULL COMMENT '午餐',
  `dinner` varchar(100) NOT NULL COMMENT '晚餐',
  `other` varchar(100) NOT NULL,
  `breakfast_picrute` varchar(225) NOT NULL COMMENT '早餐图片',
  `lunch_picrute` varchar(225) NOT NULL COMMENT '午餐图片',
  `dinner_picrute` varchar(225) NOT NULL COMMENT '晚餐图片',
  `other_picture` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL DEFAULT '0' COMMENT '部门',
  `sta` tinyint(2) DEFAULT '1' COMMENT '查看状态1:未查看;2已查看'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配餐信息表';

-- ----------------------------
-- Records of cater_info
-- ----------------------------
INSERT INTO `cater_info` VALUES ('18', '2017-05-08', '', '', '', '', '', '', '', '', '8', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-09', '21323,地瓜干,123', '3123,油门豆腐,1231', '3123,包菇汤,123', '213,蓝瘦,123', '', '', '', '', '8', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-10', '', '', '', '', '', '', '', '', '8', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-11', '', '', '', '', '', '', '', '', '8', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-12', '', '', '', '', '', '', '', '', '8', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-13', '', '', '', '', '', '', '', '', '8', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-14', '', '', '', '', '', '', '', '', '8', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-08', '', '', '', '', '', '', '', '', '1', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-09', '21323,地瓜干,123', '3123,油门豆腐,1231', '3123,包菇汤,123', '213,蓝瘦,123', 'a9736e8d612911d5e7f55e60d340acbe.jpg', '8400b4e59876f3d2c8498097a282b880.jpg', '73cad065cd2913dacfb5860c754156ac.jpg', 'db3d202eaa1aabc6bf19be95f7b4352d.jpg,75924cab1b78778f34e8c21b632dbe8c.jpg,34819758ed5cdd1506be9530d241abbf.jpg', '1', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-10', '', '', '', '', '', '', '', '', '1', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-11', '', '', '', '', '', '', '', '', '1', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-12', '', '', '', '', '', '', '', '', '1', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-13', '', '', '', '', '', '', '', '', '1', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-14', '', '', '', '', '', '', '', '', '1', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-08', '', '', '', '', '', '', '', '', '13', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-09', '21323,地瓜干,123', '3123,油门豆腐,1231', '3123,包菇汤,123', '213,蓝瘦,123', '', '', '', '', '13', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-10', '', '', '', '', '', '', '', '', '13', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-11', '', '', '', '', '', '', '', '', '13', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-12', '', '', '', '', '', '', '', '', '13', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-13', '', '', '', '', '', '', '', '', '13', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-14', '', '', '', '', '', '', '', '', '13', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-08', '', '', '', '', '', '', '', '', '255', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-09', '21323,地瓜干,123', '3123,油门豆腐,1231', '3123,包菇汤,123', '213,蓝瘦,123', '', '', '', '', '255', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-10', '', '', '', '', '', '', '', '', '255', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-11', '', '', '', '', '', '', '', '', '255', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-12', '', '', '', '', '', '', '', '', '255', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-13', '', '', '', '', '', '', '', '', '255', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-14', '', '', '', '', '', '', '', '', '255', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-08', '', '', '', '', '', '', '', '', '101', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-09', '21323,地瓜干,123', '3123,油门豆腐,1231', '3123,包菇汤,123', '213,蓝瘦,123', '', '', '', '', '101', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-10', '', '', '', '', '', '', '', '', '101', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-11', '', '', '', '', '', '', '', '', '101', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-12', '', '', '', '', '', '', '', '', '101', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-13', '', '', '', '', '', '', '', '', '101', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-14', '', '', '', '', '', '', '', '', '101', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-08', '', '', '', '', '', '', '', '', '252', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-09', '21323,地瓜干,123', '3123,油门豆腐,1231', '3123,包菇汤,123', '213,蓝瘦,123', '', '', '', '', '252', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-10', '', '', '', '', '', '', '', '', '252', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-11', '', '', '', '', '', '', '', '', '252', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-12', '', '', '', '', '', '', '', '', '252', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-13', '', '', '', '', '', '', '', '', '252', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-14', '', '', '', '', '', '', '', '', '252', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-08', '', '', '', '', '', '', '', '', '253', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-09', '21323,地瓜干,123', '3123,油门豆腐,1231', '3123,包菇汤,123', '213,蓝瘦,123', '', '', '', '', '253', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-10', '', '', '', '', '', '', '', '', '253', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-11', '', '', '', '', '', '', '', '', '253', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-12', '', '', '', '', '', '', '', '', '253', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-13', '', '', '', '', '', '', '', '', '253', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-14', '', '', '', '', '', '', '', '', '253', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-08', '', '', '', '', '', '', '', '', '254', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-09', '21323,地瓜干,123', '3123,油门豆腐,1231', '3123,包菇汤,123', '213,蓝瘦,123', '', '', '', '', '254', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-10', '', '', '', '', '', '', '', '', '254', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-11', '', '', '', '', '', '', '', '', '254', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-12', '', '', '', '', '', '', '', '', '254', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-13', '', '', '', '', '', '', '', '', '254', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-14', '', '', '', '', '', '', '', '', '254', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-08', '', '', '', '', '', '', '', '', '250', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-09', '21323,地瓜干,123', '3123,油门豆腐,1231', '3123,包菇汤,123', '213,蓝瘦,123', '', '', '', '', '250', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-10', '', '', '', '', '', '', '', '', '250', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-11', '', '', '', '', '', '', '', '', '250', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-12', '', '', '', '', '', '', '', '', '250', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-13', '', '', '', '', '', '', '', '', '250', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-14', '', '', '', '', '', '', '', '', '250', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-08', '', '', '', '', '', '', '', '', '251', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-09', '21323,地瓜干,123', '3123,油门豆腐,1231', '3123,包菇汤,123', '213,蓝瘦,123', '', '', '', '', '251', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-10', '', '', '', '', '', '', '', '', '251', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-11', '', '', '', '', '', '', '', '', '251', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-12', '', '', '', '', '', '', '', '', '251', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-13', '', '', '', '', '', '', '', '', '251', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-14', '', '', '', '', '', '', '', '', '251', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-08', '', '', '', '', '', '', '', '', '1705091412', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-09', '21323,地瓜干,123', '3123,油门豆腐,1231', '3123,包菇汤,123', '213,蓝瘦,123', '', '', '', '', '1705091412', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-10', '', '', '', '', '', '', '', '', '1705091412', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-11', '', '', '', '', '', '', '', '', '1705091412', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-12', '', '', '', '', '', '', '', '', '1705091412', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-13', '', '', '', '', '', '', '', '', '1705091412', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-14', '', '', '', '', '', '', '', '', '1705091412', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-08', '', '', '', '', '', '', '', '', '1705091423', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-09', '21323,地瓜干,123', '3123,油门豆腐,1231', '3123,包菇汤,123', '213,蓝瘦,123', '', '', '', '', '1705091423', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-10', '', '', '', '', '', '', '', '', '1705091423', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-11', '', '', '', '', '', '', '', '', '1705091423', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-12', '', '', '', '', '', '', '', '', '1705091423', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-13', '', '', '', '', '', '', '', '', '1705091423', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-14', '', '', '', '', '', '', '', '', '1705091423', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-08', '', '', '', '', '', '', '', '', '3123123', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-09', '21323,地瓜干,123', '3123,油门豆腐,1231', '3123,包菇汤,123', '213,蓝瘦,123', '', '', '', '', '3123123', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-10', '', '', '', '', '', '', '', '', '3123123', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-11', '', '', '', '', '', '', '', '', '3123123', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-12', '', '', '', '', '', '', '', '', '3123123', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-13', '', '', '', '', '', '', '', '', '3123123', '1');
INSERT INTO `cater_info` VALUES ('18', '2017-05-14', '', '', '', '', '', '', '', '', '3123123', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-15', '西红柿炒鸡蛋,小葱拌豆腐,麻辣香锅', '西红柿炒鸡蛋,西红柿炒鸡蛋,小葱拌豆腐', '小葱拌豆腐,西红柿炒鸡蛋,麻辣香锅', '麻辣香锅,麻辣香锅,麻辣香锅', '', '', '', '', '8', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-16', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '8', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-17', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '8', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-18', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '8', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-19', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '8', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-20', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '8', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-21', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '8', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-15', '西红柿炒鸡蛋,小葱拌豆腐,麻辣香锅', '西红柿炒鸡蛋,西红柿炒鸡蛋,小葱拌豆腐', '小葱拌豆腐,西红柿炒鸡蛋,麻辣香锅', '麻辣香锅,麻辣香锅,麻辣香锅', '', '', '', '', '1', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-16', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '1', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-17', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '1', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-18', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '1', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-19', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '1', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-20', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '1', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-21', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '1', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-15', '西红柿炒鸡蛋,小葱拌豆腐,麻辣香锅', '西红柿炒鸡蛋,西红柿炒鸡蛋,小葱拌豆腐', '小葱拌豆腐,西红柿炒鸡蛋,麻辣香锅', '麻辣香锅,麻辣香锅,麻辣香锅', '', '', '', '', '13', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-16', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '13', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-17', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '13', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-18', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '13', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-19', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '13', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-20', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '13', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-21', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '13', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-15', '西红柿炒鸡蛋,小葱拌豆腐,麻辣香锅', '西红柿炒鸡蛋,西红柿炒鸡蛋,小葱拌豆腐', '小葱拌豆腐,西红柿炒鸡蛋,麻辣香锅', '麻辣香锅,麻辣香锅,麻辣香锅', '', '', '', '', '255', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-16', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '255', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-17', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '255', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-18', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '255', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-19', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '255', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-20', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '255', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-21', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '255', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-15', '西红柿炒鸡蛋,小葱拌豆腐,麻辣香锅', '西红柿炒鸡蛋,西红柿炒鸡蛋,小葱拌豆腐', '小葱拌豆腐,西红柿炒鸡蛋,麻辣香锅', '麻辣香锅,麻辣香锅,麻辣香锅', '', '', '', '', '101', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-16', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '101', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-17', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '101', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-18', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '101', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-19', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '101', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-20', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '101', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-21', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '101', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-15', '西红柿炒鸡蛋,小葱拌豆腐,麻辣香锅', '西红柿炒鸡蛋,西红柿炒鸡蛋,小葱拌豆腐', '小葱拌豆腐,西红柿炒鸡蛋,麻辣香锅', '麻辣香锅,麻辣香锅,麻辣香锅', '', '', '', '', '252', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-16', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '252', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-17', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '252', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-18', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '252', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-19', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '252', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-20', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '252', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-21', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '252', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-15', '西红柿炒鸡蛋,小葱拌豆腐,麻辣香锅', '西红柿炒鸡蛋,西红柿炒鸡蛋,小葱拌豆腐', '小葱拌豆腐,西红柿炒鸡蛋,麻辣香锅', '麻辣香锅,麻辣香锅,麻辣香锅', '', '', '', '', '254', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-16', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '254', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-17', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '254', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-18', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '254', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-19', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '254', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-20', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '254', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-21', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '254', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-15', '西红柿炒鸡蛋,小葱拌豆腐,麻辣香锅', '西红柿炒鸡蛋,西红柿炒鸡蛋,小葱拌豆腐', '小葱拌豆腐,西红柿炒鸡蛋,麻辣香锅', '麻辣香锅,麻辣香锅,麻辣香锅', '', '', '', '', '250', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-16', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '250', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-17', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '250', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-18', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '250', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-19', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '250', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-20', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '250', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-21', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '250', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-15', '西红柿炒鸡蛋,小葱拌豆腐,麻辣香锅', '西红柿炒鸡蛋,西红柿炒鸡蛋,小葱拌豆腐', '小葱拌豆腐,西红柿炒鸡蛋,麻辣香锅', '麻辣香锅,麻辣香锅,麻辣香锅', '', '', '', '', '1705091412', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-16', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '1705091412', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-17', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '1705091412', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-18', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '1705091412', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-19', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '1705091412', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-20', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '1705091412', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-21', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '1705091412', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-15', '西红柿炒鸡蛋,小葱拌豆腐,麻辣香锅', '西红柿炒鸡蛋,西红柿炒鸡蛋,小葱拌豆腐', '小葱拌豆腐,西红柿炒鸡蛋,麻辣香锅', '麻辣香锅,麻辣香锅,麻辣香锅', '', '', '', '', '1705091423', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-16', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '1705091423', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-17', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '1705091423', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-18', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '1705091423', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-19', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '1705091423', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-20', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '1705091423', '1');
INSERT INTO `cater_info` VALUES ('19', '2017-05-21', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '小葱拌豆腐', '', '', '', '', '1705091423', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-22', '牛奶,面包,鸡蛋饼', '蛋炒饭,宫保鸡丁', '瘦肉羹,馒头', '牛奶', '', '', '', '', '8', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-23', '牛奶,葱爆牛肉,糯米粥', '小葱拌豆腐,家常豆腐', '麻婆豆腐,馒头', '无', '', '', '', '', '8', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-24', '牛奶,家常豆腐,糯米粥', '家常豆腐,馒头', '馒头,小葱拌豆腐', '', '', '', '', '', '8', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-25', '牛奶,鸡蛋饼', '鸡蛋饼,小葱拌豆腐', '馒头,馒头', '', '', '', '', '', '8', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-26', '馒头,家常豆腐', '家常豆腐,馒头', '馒头,家常豆腐', '', '', '', '', '', '8', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-27', '家常豆腐,馒头', '馒头,家常豆腐', '家常豆腐,馒头', '', '', '', '', '', '8', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-28', '馒头,家常豆腐', '馒头,家常豆腐', '家常豆腐,馒头', '', '', '', '', '', '8', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-22', '牛奶,面包,鸡蛋饼', '蛋炒饭,宫保鸡丁', '瘦肉羹,馒头', '牛奶', '', '', '', '', '1', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-23', '牛奶,葱爆牛肉,糯米粥', '小葱拌豆腐,家常豆腐', '麻婆豆腐,馒头', '无', '', '', '', '', '1', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-24', '牛奶,家常豆腐,糯米粥', '家常豆腐,馒头', '馒头,小葱拌豆腐', '', '', '', '', '', '1', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-25', '牛奶,鸡蛋饼', '鸡蛋饼,小葱拌豆腐', '馒头,馒头', '', '', '', '', '', '1', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-26', '馒头,家常豆腐', '家常豆腐,馒头', '馒头,家常豆腐', '', '', '', '', '', '1', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-27', '家常豆腐,馒头', '馒头,家常豆腐', '家常豆腐,馒头', '', '', '', '', '', '1', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-28', '馒头,家常豆腐', '馒头,家常豆腐', '家常豆腐,馒头', '', '', '', '', '', '1', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-22', '牛奶,面包,鸡蛋饼', '蛋炒饭,宫保鸡丁', '瘦肉羹,馒头', '牛奶', '', '', '', '', '13', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-23', '牛奶,葱爆牛肉,糯米粥', '小葱拌豆腐,家常豆腐', '麻婆豆腐,馒头', '无', '', '', '', '', '13', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-24', '牛奶,家常豆腐,糯米粥', '家常豆腐,馒头', '馒头,小葱拌豆腐', '', '', '', '', '', '13', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-25', '牛奶,鸡蛋饼', '鸡蛋饼,小葱拌豆腐', '馒头,馒头', '', '', '', '', '', '13', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-26', '馒头,家常豆腐', '家常豆腐,馒头', '馒头,家常豆腐', '', '', '', '', '', '13', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-27', '家常豆腐,馒头', '馒头,家常豆腐', '家常豆腐,馒头', '', '', '', '', '', '13', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-28', '馒头,家常豆腐', '馒头,家常豆腐', '家常豆腐,馒头', '', '', '', '', '', '13', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-22', '牛奶,面包,鸡蛋饼', '蛋炒饭,宫保鸡丁', '瘦肉羹,馒头', '牛奶', '', '', '', '', '255', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-23', '牛奶,葱爆牛肉,糯米粥', '小葱拌豆腐,家常豆腐', '麻婆豆腐,馒头', '无', '', '', '', '', '255', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-24', '牛奶,家常豆腐,糯米粥', '家常豆腐,馒头', '馒头,小葱拌豆腐', '', '', '', '', '', '255', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-25', '牛奶,鸡蛋饼', '鸡蛋饼,小葱拌豆腐', '馒头,馒头', '', '', '', '', '', '255', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-26', '馒头,家常豆腐', '家常豆腐,馒头', '馒头,家常豆腐', '', '', '', '', '', '255', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-27', '家常豆腐,馒头', '馒头,家常豆腐', '家常豆腐,馒头', '', '', '', '', '', '255', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-28', '馒头,家常豆腐', '馒头,家常豆腐', '家常豆腐,馒头', '', '', '', '', '', '255', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-22', '牛奶,面包,鸡蛋饼', '蛋炒饭,宫保鸡丁', '瘦肉羹,馒头', '牛奶', '', '', '', '', '101', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-23', '牛奶,葱爆牛肉,糯米粥', '小葱拌豆腐,家常豆腐', '麻婆豆腐,馒头', '无', '', '', '', '', '101', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-24', '牛奶,家常豆腐,糯米粥', '家常豆腐,馒头', '馒头,小葱拌豆腐', '', '', '', '', '', '101', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-25', '牛奶,鸡蛋饼', '鸡蛋饼,小葱拌豆腐', '馒头,馒头', '', '', '', '', '', '101', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-26', '馒头,家常豆腐', '家常豆腐,馒头', '馒头,家常豆腐', '', '', '', '', '', '101', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-27', '家常豆腐,馒头', '馒头,家常豆腐', '家常豆腐,馒头', '', '', '', '', '', '101', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-28', '馒头,家常豆腐', '馒头,家常豆腐', '家常豆腐,馒头', '', '', '', '', '', '101', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-22', '牛奶,面包,鸡蛋饼', '蛋炒饭,宫保鸡丁', '瘦肉羹,馒头', '牛奶', '', '', '', '', '252', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-23', '牛奶,葱爆牛肉,糯米粥', '小葱拌豆腐,家常豆腐', '麻婆豆腐,馒头', '无', '', '', '', '', '252', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-24', '牛奶,家常豆腐,糯米粥', '家常豆腐,馒头', '馒头,小葱拌豆腐', '', '', '', '', '', '252', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-25', '牛奶,鸡蛋饼', '鸡蛋饼,小葱拌豆腐', '馒头,馒头', '', '', '', '', '', '252', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-26', '馒头,家常豆腐', '家常豆腐,馒头', '馒头,家常豆腐', '', '', '', '', '', '252', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-27', '家常豆腐,馒头', '馒头,家常豆腐', '家常豆腐,馒头', '', '', '', '', '', '252', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-28', '馒头,家常豆腐', '馒头,家常豆腐', '家常豆腐,馒头', '', '', '', '', '', '252', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-22', '牛奶,面包,鸡蛋饼', '蛋炒饭,宫保鸡丁', '瘦肉羹,馒头', '牛奶', '', '', '', '', '254', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-23', '牛奶,葱爆牛肉,糯米粥', '小葱拌豆腐,家常豆腐', '麻婆豆腐,馒头', '无', '', '', '', '', '254', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-24', '牛奶,家常豆腐,糯米粥', '家常豆腐,馒头', '馒头,小葱拌豆腐', '', '', '', '', '', '254', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-25', '牛奶,鸡蛋饼', '鸡蛋饼,小葱拌豆腐', '馒头,馒头', '', '', '', '', '', '254', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-26', '馒头,家常豆腐', '家常豆腐,馒头', '馒头,家常豆腐', '', '', '', '', '', '254', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-27', '家常豆腐,馒头', '馒头,家常豆腐', '家常豆腐,馒头', '', '', '', '', '', '254', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-28', '馒头,家常豆腐', '馒头,家常豆腐', '家常豆腐,馒头', '', '', '', '', '', '254', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-22', '牛奶,面包,鸡蛋饼', '蛋炒饭,宫保鸡丁', '瘦肉羹,馒头', '牛奶', '', '', '', '', '250', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-23', '牛奶,葱爆牛肉,糯米粥', '小葱拌豆腐,家常豆腐', '麻婆豆腐,馒头', '无', '', '', '', '', '250', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-24', '牛奶,家常豆腐,糯米粥', '家常豆腐,馒头', '馒头,小葱拌豆腐', '', '', '', '', '', '250', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-25', '牛奶,鸡蛋饼', '鸡蛋饼,小葱拌豆腐', '馒头,馒头', '', '', '', '', '', '250', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-26', '馒头,家常豆腐', '家常豆腐,馒头', '馒头,家常豆腐', '', '', '', '', '', '250', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-27', '家常豆腐,馒头', '馒头,家常豆腐', '家常豆腐,馒头', '', '', '', '', '', '250', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-28', '馒头,家常豆腐', '馒头,家常豆腐', '家常豆腐,馒头', '', '', '', '', '', '250', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-22', '牛奶,面包,鸡蛋饼', '蛋炒饭,宫保鸡丁', '瘦肉羹,馒头', '牛奶', '', '', '', '', '1705091412', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-23', '牛奶,葱爆牛肉,糯米粥', '小葱拌豆腐,家常豆腐', '麻婆豆腐,馒头', '无', '', '', '', '', '1705091412', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-24', '牛奶,家常豆腐,糯米粥', '家常豆腐,馒头', '馒头,小葱拌豆腐', '', '', '', '', '', '1705091412', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-25', '牛奶,鸡蛋饼', '鸡蛋饼,小葱拌豆腐', '馒头,馒头', '', '', '', '', '', '1705091412', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-26', '馒头,家常豆腐', '家常豆腐,馒头', '馒头,家常豆腐', '', '', '', '', '', '1705091412', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-27', '家常豆腐,馒头', '馒头,家常豆腐', '家常豆腐,馒头', '', '', '', '', '', '1705091412', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-28', '馒头,家常豆腐', '馒头,家常豆腐', '家常豆腐,馒头', '', '', '', '', '', '1705091412', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-22', '牛奶,面包,鸡蛋饼', '蛋炒饭,宫保鸡丁', '瘦肉羹,馒头', '牛奶', '', '', '', '', '1705091423', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-23', '牛奶,葱爆牛肉,糯米粥', '小葱拌豆腐,家常豆腐', '麻婆豆腐,馒头', '无', '', '', '', '', '1705091423', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-24', '牛奶,家常豆腐,糯米粥', '家常豆腐,馒头', '馒头,小葱拌豆腐', '', '', '', '', '', '1705091423', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-25', '牛奶,鸡蛋饼', '鸡蛋饼,小葱拌豆腐', '馒头,馒头', '', '', '', '', '', '1705091423', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-26', '馒头,家常豆腐', '家常豆腐,馒头', '馒头,家常豆腐', '', '', '', '', '', '1705091423', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-27', '家常豆腐,馒头', '馒头,家常豆腐', '家常豆腐,馒头', '', '', '', '', '', '1705091423', '1');
INSERT INTO `cater_info` VALUES ('20', '2017-05-28', '馒头,家常豆腐', '馒头,家常豆腐', '家常豆腐,馒头', '', '', '', '', '', '1705091423', '1');

-- ----------------------------
-- Table structure for department_info
-- ----------------------------
DROP TABLE IF EXISTS `department_info`;
CREATE TABLE `department_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `num` int(10) unsigned NOT NULL COMMENT '所在部门编码',
  `introduce` varchar(20) NOT NULL COMMENT '所在部门描述',
  `address` varchar(200) NOT NULL,
  `phone` varchar(11) NOT NULL COMMENT '电话',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='所在部门表';

-- ----------------------------
-- Records of department_info
-- ----------------------------
INSERT INTO `department_info` VALUES ('11', '8', '北苑区', '北京市朝阳区北苑路91号院', '010-6678901', '1488187672', '0');
INSERT INTO `department_info` VALUES ('12', '1', '东三区', '北京市朝阳区', '010-7783234', '1488351317', '0');
INSERT INTO `department_info` VALUES ('13', '13', '西四区', '北京市西城区', '010--654321', '1488423030', '0');
INSERT INTO `department_info` VALUES ('14', '255', '总部', '北京朝阳区', '010-100000', '1492595005', '1495443668');
INSERT INTO `department_info` VALUES ('15', '101', '东五区', '北京市海淀区', '13522687472', '1493714248', '0');
INSERT INTO `department_info` VALUES ('16', '252', '3123', '12312', '123123', '1493718078', '1494992718');
INSERT INTO `department_info` VALUES ('18', '254', '东五去区', '北京昌平区', '1231321314', '1494232823', '0');
INSERT INTO `department_info` VALUES ('20', '250', '东北', '北京', '10086', '1494233201', '1494244796');
INSERT INTO `department_info` VALUES ('22', '1705091412', '北京分院1', '北京市朝阳区', '010-8277123', '1494310351', '0');
INSERT INTO `department_info` VALUES ('23', '1705091423', '北京分院2', '北京海淀区', '010-8573219', '1494311038', '1494991788');
INSERT INTO `department_info` VALUES ('24', '123', '北五区', '昌平区', '31231231231', '1495594736', '1495595289');

-- ----------------------------
-- Table structure for dimission
-- ----------------------------
DROP TABLE IF EXISTS `dimission`;
CREATE TABLE `dimission` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `w_id` int(11) unsigned NOT NULL COMMENT '关联护工ID',
  `dimission_date` varchar(50) NOT NULL COMMENT '离职时间',
  `financial_settlement` tinyint(1) NOT NULL COMMENT '财务结算',
  `return_goods` tinyint(1) NOT NULL COMMENT '物品归还',
  `dimission_reason` varchar(200) NOT NULL COMMENT '原因',
  `remarks` varchar(200) NOT NULL COMMENT '备注',
  `created` int(11) unsigned NOT NULL,
  `updated` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='离职表';

-- ----------------------------
-- Records of dimission
-- ----------------------------
INSERT INTO `dimission` VALUES ('1', '50', '2017-05-15', '2', '1', '测试', '测试', '1494905166', '0');
INSERT INTO `dimission` VALUES ('2', '72', '2017-05-16', '1', '1', '家里发生变故不能继续任职', '无', '1495420361', '0');

-- ----------------------------
-- Table structure for discount_info
-- ----------------------------
DROP TABLE IF EXISTS `discount_info`;
CREATE TABLE `discount_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `num` tinyint(1) unsigned NOT NULL COMMENT '收费折扣编码',
  `introduce` varchar(50) NOT NULL COMMENT '收费折扣描述',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='收费折扣表';

-- ----------------------------
-- Records of discount_info
-- ----------------------------
INSERT INTO `discount_info` VALUES ('6', '1', '无', '1487769028', '0');
INSERT INTO `discount_info` VALUES ('7', '2', '9.8', '1487769028', '0');
INSERT INTO `discount_info` VALUES ('8', '3', '9', '1487769028', '0');
INSERT INTO `discount_info` VALUES ('9', '4', '8.5', '1487769028', '0');
INSERT INTO `discount_info` VALUES ('10', '5', '8', '1487769028', '0');
INSERT INTO `discount_info` VALUES ('11', '6', '7', '1487769028', '0');

-- ----------------------------
-- Table structure for dispatching
-- ----------------------------
DROP TABLE IF EXISTS `dispatching`;
CREATE TABLE `dispatching` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `a_id` int(10) unsigned NOT NULL COMMENT '关联采购清单ID',
  `status` varchar(20) NOT NULL COMMENT '配送状态(1.未配送、2.已配送、3.已收货)',
  `created` int(11) unsigned NOT NULL,
  `updated` int(11) unsigned NOT NULL,
  `department` int(10) unsigned NOT NULL COMMENT '部门',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='配送清单表';

-- ----------------------------
-- Records of dispatching
-- ----------------------------
INSERT INTO `dispatching` VALUES ('1', '1', '2', '1494326069', '1494326086', '8');
INSERT INTO `dispatching` VALUES ('2', '2', '2', '1494484906', '1494484925', '8');
INSERT INTO `dispatching` VALUES ('3', '3', '2', '1494484981', '1494485049', '8');
INSERT INTO `dispatching` VALUES ('4', '4', '2', '1494485104', '1494485569', '8');
INSERT INTO `dispatching` VALUES ('5', '6', '2', '1494486146', '1494486175', '8');
INSERT INTO `dispatching` VALUES ('6', '7', '2', '1494486255', '1494486309', '8');
INSERT INTO `dispatching` VALUES ('7', '8', '2', '1494486304', '1494486312', '8');
INSERT INTO `dispatching` VALUES ('8', '9', '2', '1494490476', '1494490515', '8');
INSERT INTO `dispatching` VALUES ('9', '5', '2', '1494494133', '1494560535', '8');
INSERT INTO `dispatching` VALUES ('10', '10', '2', '1494494371', '1494555659', '8');
INSERT INTO `dispatching` VALUES ('11', '11', '2', '1495434839', '1495434862', '8');
INSERT INTO `dispatching` VALUES ('12', '12', '2', '1495434966', '1495435865', '8');
INSERT INTO `dispatching` VALUES ('13', '13', '2', '1495695149', '1495695154', '8');

-- ----------------------------
-- Table structure for driking
-- ----------------------------
DROP TABLE IF EXISTS `driking`;
CREATE TABLE `driking` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `week` tinyint(4) NOT NULL COMMENT '星期(1.周一、2.周二、3.周三、4.周四、5.周五、6.周六、7.周日)',
  `date` varchar(10) DEFAULT NULL COMMENT '日期',
  `total` int(4) NOT NULL DEFAULT '0' COMMENT '喝水总量',
  `times` tinyint(1) NOT NULL DEFAULT '0' COMMENT '喝水次数',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `at` tinyint(1) NOT NULL COMMENT '时间点(1.早上、2.上午、3.中午、4.下午、5.晚上)',
  `sid` int(10) unsigned NOT NULL COMMENT '关联老年人ID（senior_id）',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COMMENT='喝水情况';

-- ----------------------------
-- Records of driking
-- ----------------------------
INSERT INTO `driking` VALUES ('1', '1', '2017-03-06', '100', '1', '1488794707', '0', '1', '1');
INSERT INTO `driking` VALUES ('2', '2', '2017-03-07', '150', '1', '1488850430', '0', '1', '1');
INSERT INTO `driking` VALUES ('3', '4', '2017-03-09', '150', '1', '1489027025', '0', '1', '1');
INSERT INTO `driking` VALUES ('4', '5', '2017-03-10', '200', '1', '1489126927', '0', '5', '1');
INSERT INTO `driking` VALUES ('5', '1', '2017-03-13', '100', '1', '1489389138', '0', '1', '1');
INSERT INTO `driking` VALUES ('6', '3', '2017-03-15', '150', '1', '1489545744', '0', '5', '2');
INSERT INTO `driking` VALUES ('7', '4', '2017-03-16', '200', '1', '1489645822', '0', '5', '1');
INSERT INTO `driking` VALUES ('8', '5', '2017-03-17', '200', '1', '1489719592', '0', '1', '1');
INSERT INTO `driking` VALUES ('9', '5', '2017-05-05', '150', '1', '1493969343', '0', '5', '1');
INSERT INTO `driking` VALUES ('10', '1', '2017-05-08', '150', '1', '1494211885', '0', '1', '1');
INSERT INTO `driking` VALUES ('11', '1', '2017-05-08', '150', '1', '1494211947', '0', '2', '1');
INSERT INTO `driking` VALUES ('12', '1', '2017-05-08', '150', '1', '1494212095', '0', '3', '1');
INSERT INTO `driking` VALUES ('13', '1', '2017-05-08', '100', '1', '1494212141', '0', '5', '1');
INSERT INTO `driking` VALUES ('14', '4', '2017-05-11', '100', '1', '1494486979', '0', '2', '1');
INSERT INTO `driking` VALUES ('15', '4', '2017-05-11', '150', '1', '1494487052', '0', '3', '1');
INSERT INTO `driking` VALUES ('16', '4', '2017-05-11', '200', '1', '1494487096', '0', '5', '1');
INSERT INTO `driking` VALUES ('17', '5', '2017-05-12', '200', '1', '1494556368', '0', '5', '1');
INSERT INTO `driking` VALUES ('18', '5', '2017-05-12', '150', '1', '1494565068', '0', '3', '1');
INSERT INTO `driking` VALUES ('24', '2', '2017-05-23', '200', '1', '1495510755', '0', '5', '1');
INSERT INTO `driking` VALUES ('25', '2', '2017-05-23', '100', '1', '1495527290', '0', '1', '1');
INSERT INTO `driking` VALUES ('26', '2', '2017-05-23', '200', '1', '1495527305', '0', '1', '1');
INSERT INTO `driking` VALUES ('27', '2', '2017-05-23', '200', '1', '1495527327', '0', '6', '1');
INSERT INTO `driking` VALUES ('28', '2', '2017-05-23', '100', '1', '1495533355', '0', '1', '5');
INSERT INTO `driking` VALUES ('29', '2', '2017-05-23', '200', '1', '1495533365', '0', '1', '5');
INSERT INTO `driking` VALUES ('30', '2', '2017-05-23', '200', '1', '1495533375', '0', '1', '5');
INSERT INTO `driking` VALUES ('31', '2', '2017-05-23', '100', '1', '1495533635', '0', '2', '5');
INSERT INTO `driking` VALUES ('32', '2', '2017-05-23', '150', '1', '1495533650', '0', '2', '5');
INSERT INTO `driking` VALUES ('33', '2', '2017-05-23', '150', '1', '1495533915', '0', '3', '5');
INSERT INTO `driking` VALUES ('34', '2', '2017-05-23', '200', '1', '1495533925', '0', '3', '5');
INSERT INTO `driking` VALUES ('35', '2', '2017-05-23', '100', '1', '1495534020', '0', '4', '5');
INSERT INTO `driking` VALUES ('36', '2', '2017-05-23', '100', '1', '1495534048', '0', '4', '5');
INSERT INTO `driking` VALUES ('37', '2', '2017-05-23', '100', '1', '1495534395', '0', '5', '5');
INSERT INTO `driking` VALUES ('38', '2', '2017-05-23', '150', '1', '1495534413', '0', '5', '5');
INSERT INTO `driking` VALUES ('39', '5', '2017-05-26', '100', '1', '1495763779', '0', '1', '1');
INSERT INTO `driking` VALUES ('40', '5', '2017-05-26', '200', '1', '1495763789', '0', '1', '1');
INSERT INTO `driking` VALUES ('41', '5', '2017-05-26', '100', '1', '1495765171', '0', '1', '1');
INSERT INTO `driking` VALUES ('42', '5', '2017-05-26', '200', '1', '1495765189', '0', '1', '1');
INSERT INTO `driking` VALUES ('43', '5', '2017-05-26', '150', '1', '1495768333', '0', '5', '1');
INSERT INTO `driking` VALUES ('44', '5', '2017-05-26', '150', '1', '1495768393', '0', '5', '1');
INSERT INTO `driking` VALUES ('45', '5', '2017-05-26', '100', '1', '1495768859', '0', '3', '1');
INSERT INTO `driking` VALUES ('46', '5', '2017-05-26', '150', '1', '1495768875', '0', '3', '1');
INSERT INTO `driking` VALUES ('47', '5', '2017-05-26', '150', '1', '1495770778', '0', '2', '1');
INSERT INTO `driking` VALUES ('48', '5', '2017-05-26', '200', '1', '1495770788', '0', '2', '1');
INSERT INTO `driking` VALUES ('49', '2', '2017-06-13', '100', '1', '1497345385', '0', '1', '1');

-- ----------------------------
-- Table structure for eating
-- ----------------------------
DROP TABLE IF EXISTS `eating`;
CREATE TABLE `eating` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `week` tinyint(4) NOT NULL COMMENT '星期(1.周一、2.周二、3.周三、4.周四、5.周五、6.周六、7.周日)',
  `date` varchar(10) DEFAULT NULL COMMENT '日期',
  `appetite` tinyint(1) NOT NULL DEFAULT '1' COMMENT '饭量(1.小半碗、2.大半碗、3.一小碗)',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '类型(1.用饭、2.加餐)',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `at` tinyint(1) NOT NULL COMMENT '时间点(1.早上、2.上午、3.中午、4.下午、5.晚上)',
  `sid` int(10) unsigned NOT NULL COMMENT '关联老年人ID（senior_id）',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='用饭';

-- ----------------------------
-- Records of eating
-- ----------------------------
INSERT INTO `eating` VALUES ('1', '1', '2017-03-06', '3', '2', '1488792633', '0', '3', '1');
INSERT INTO `eating` VALUES ('2', '1', '2017-03-06', '2', '2', '1488798476', '0', '2', '1');
INSERT INTO `eating` VALUES ('3', '1', '2017-03-06', '3', '1', '1488794703', '0', '1', '1');
INSERT INTO `eating` VALUES ('4', '2', '2017-03-07', '2', '1', '1488850425', '0', '1', '1');
INSERT INTO `eating` VALUES ('5', '2', '2017-03-07', '2', '2', '1488850475', '0', '2', '1');
INSERT INTO `eating` VALUES ('6', '2', '2017-03-07', '1', '2', '1488851635', '0', '4', '3');
INSERT INTO `eating` VALUES ('7', '4', '2017-03-09', '2', '1', '1489027023', '0', '1', '1');
INSERT INTO `eating` VALUES ('8', '5', '2017-03-10', '3', '2', '1489132314', '0', '1', '1');
INSERT INTO `eating` VALUES ('9', '1', '2017-03-13', '1', '1', '1489389135', '0', '1', '1');
INSERT INTO `eating` VALUES ('10', '3', '2017-03-15', '1', '1', '1489545722', '0', '3', '2');
INSERT INTO `eating` VALUES ('11', '4', '2017-03-16', '3', '2', '1489645747', '0', '2', '1');
INSERT INTO `eating` VALUES ('13', '4', '2017-03-16', '3', '1', '1489645842', '0', '1', '1');
INSERT INTO `eating` VALUES ('14', '5', '2017-03-17', '2', '1', '1489718078', '0', '1', '1');
INSERT INTO `eating` VALUES ('15', '4', '2017-03-23', '1', '1', '1490236510', '0', '1', '2');
INSERT INTO `eating` VALUES ('16', '4', '2017-04-27', '2', '1', '1493282450', '0', '6', '3');
INSERT INTO `eating` VALUES ('17', '4', '2017-05-04', '3', '2', '1493888561', '0', '5', '23');
INSERT INTO `eating` VALUES ('19', '1', '2017-05-08', '2', '1', '1494212333', '0', '1', '1');
INSERT INTO `eating` VALUES ('20', '1', '2017-05-08', '3', '2', '1494211944', '0', '2', '1');
INSERT INTO `eating` VALUES ('21', '1', '2017-05-08', '2', '1', '1494212090', '0', '3', '1');
INSERT INTO `eating` VALUES ('23', '4', '2017-05-11', '3', '2', '1494486974', '0', '2', '1');
INSERT INTO `eating` VALUES ('24', '4', '2017-05-11', '2', '1', '1494487048', '0', '3', '1');
INSERT INTO `eating` VALUES ('32', '2', '2017-05-23', '2', '1', '1495511648', '0', '5', '1');
INSERT INTO `eating` VALUES ('33', '2', '2017-05-23', '2', '1', '1495512529', '0', '1', '1');
INSERT INTO `eating` VALUES ('34', '2', '2017-05-23', '2', '1', '1495512561', '0', '3', '1');
INSERT INTO `eating` VALUES ('35', '2', '2017-05-23', '3', '2', '1495530646', '0', '2', '1');
INSERT INTO `eating` VALUES ('36', '2', '2017-05-23', '2', '1', '1495533332', '0', '1', '5');
INSERT INTO `eating` VALUES ('37', '2', '2017-05-23', '2', '2', '1495533650', '0', '2', '5');
INSERT INTO `eating` VALUES ('38', '2', '2017-05-23', '3', '1', '1495533900', '0', '3', '5');
INSERT INTO `eating` VALUES ('39', '2', '2017-05-23', '2', '2', '1495534047', '0', '4', '5');
INSERT INTO `eating` VALUES ('40', '2', '2017-05-23', '3', '1', '1495534396', '0', '5', '5');
INSERT INTO `eating` VALUES ('41', '5', '2017-05-26', '2', '1', '1495765154', '0', '1', '1');
INSERT INTO `eating` VALUES ('42', '5', '2017-05-26', '1', '2', '1495768053', '0', '4', '1');
INSERT INTO `eating` VALUES ('43', '5', '2017-05-26', '3', '1', '1495768395', '0', '5', '1');
INSERT INTO `eating` VALUES ('44', '5', '2017-05-26', '2', '1', '1495768842', '0', '3', '1');
INSERT INTO `eating` VALUES ('45', '5', '2017-05-26', '3', '2', '1495770760', '0', '2', '1');

-- ----------------------------
-- Table structure for educationlevels_info
-- ----------------------------
DROP TABLE IF EXISTS `educationlevels_info`;
CREATE TABLE `educationlevels_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `num` tinyint(2) unsigned NOT NULL COMMENT '教育程度编码',
  `introduce` varchar(20) NOT NULL COMMENT '教育程度描述',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='教育程度表';

-- ----------------------------
-- Records of educationlevels_info
-- ----------------------------
INSERT INTO `educationlevels_info` VALUES ('1', '1', '文盲/半文盲', '1484884336', '0');
INSERT INTO `educationlevels_info` VALUES ('2', '2', '小学', '1484884394', '0');
INSERT INTO `educationlevels_info` VALUES ('3', '3', '初中', '1484884437', '0');
INSERT INTO `educationlevels_info` VALUES ('4', '4', '高中', '1484884459', '0');
INSERT INTO `educationlevels_info` VALUES ('5', '5', '技工学校', '1484884488', '0');
INSERT INTO `educationlevels_info` VALUES ('6', '6', '中专/中技', '1484884514', '0');
INSERT INTO `educationlevels_info` VALUES ('7', '7', '大专', '1484884535', '0');
INSERT INTO `educationlevels_info` VALUES ('8', '8', '本科', '1484884557', '0');
INSERT INTO `educationlevels_info` VALUES ('9', '9', '硕士', '1484884588', '0');
INSERT INTO `educationlevels_info` VALUES ('10', '10', '博士', '1484884600', '0');
INSERT INTO `educationlevels_info` VALUES ('11', '11', '未知', '1484884600', '0');

-- ----------------------------
-- Table structure for elderpayment
-- ----------------------------
DROP TABLE IF EXISTS `elderpayment`;
CREATE TABLE `elderpayment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(11) unsigned NOT NULL COMMENT '关联老人ID',
  `basic_fee` int(3) unsigned NOT NULL COMMENT '基本费用',
  `payment` tinyint(2) unsigned NOT NULL COMMENT '付费方式',
  `discount` tinyint(1) unsigned NOT NULL COMMENT '折扣',
  `paytimes` int(5) unsigned NOT NULL COMMENT '付费次数',
  `lasttime` int(11) unsigned NOT NULL COMMENT '逾期付费时间',
  `fee` int(5) unsigned NOT NULL COMMENT '付费金额',
  `is_pay` tinyint(1) unsigned NOT NULL COMMENT '是否付费(1.已付费、2.未付费)',
  `created` int(11) unsigned NOT NULL,
  `updated` int(11) unsigned NOT NULL,
  `handlers` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '操作者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of elderpayment
-- ----------------------------
INSERT INTO `elderpayment` VALUES ('13', '16', '100', '1', '1', '0', '1490630400', '100', '1', '1490929900', '0', 'admin');
INSERT INTO `elderpayment` VALUES ('14', '16', '100', '1', '1', '0', '1490716800', '100', '1', '1490930094', '0', 'admin');
INSERT INTO `elderpayment` VALUES ('15', '16', '100', '1', '1', '0', '1490803200', '100', '1', '1490930099', '0', 'admin');
INSERT INTO `elderpayment` VALUES ('16', '16', '100', '1', '1', '0', '1490889600', '100', '1', '1490930105', '0', 'admin');
INSERT INTO `elderpayment` VALUES ('17', '15', '100', '3', '1', '0', '1492358400', '100', '1', '1490930117', '0', 'admin');
INSERT INTO `elderpayment` VALUES ('18', '5', '23', '1', '1', '0', '1490198400', '23', '1', '1490930131', '0', 'admin');
INSERT INTO `elderpayment` VALUES ('19', '5', '23', '1', '1', '0', '1490284800', '23', '1', '1490930141', '0', 'admin');
INSERT INTO `elderpayment` VALUES ('20', '5', '23', '1', '1', '0', '1490371200', '23', '1', '1490930148', '0', 'admin');
INSERT INTO `elderpayment` VALUES ('21', '5', '23', '1', '1', '0', '1490457600', '23', '1', '1490930152', '0', 'admin');
INSERT INTO `elderpayment` VALUES ('22', '5', '23', '1', '1', '0', '1490544000', '23', '1', '1490930156', '0', 'admin');
INSERT INTO `elderpayment` VALUES ('23', '5', '23', '1', '1', '0', '1490630400', '23', '1', '1490930160', '0', 'admin');
INSERT INTO `elderpayment` VALUES ('24', '5', '23', '1', '1', '0', '1490716800', '23', '1', '1490930163', '0', 'admin');
INSERT INTO `elderpayment` VALUES ('25', '5', '23', '1', '1', '0', '1490803200', '23', '1', '1490930167', '0', 'admin');
INSERT INTO `elderpayment` VALUES ('26', '5', '23', '1', '1', '0', '1490889600', '23', '1', '1490930172', '0', 'admin');
INSERT INTO `elderpayment` VALUES ('27', '8', '100', '3', '1', '0', '1492358400', '100000', '1', '1490958946', '0', 'admin');
INSERT INTO `elderpayment` VALUES ('28', '18', '4000', '3', '3', '0', '1495123200', '3600', '1', '1492594674', '0', 'admin');
INSERT INTO `elderpayment` VALUES ('29', '16', '100', '1', '1', '0', '1490976000', '100', '1', '1492594709', '0', 'admin');
INSERT INTO `elderpayment` VALUES ('30', '18', '4000', '3', '3', '0', '0', '3600', '1', '1492594851', '0', '');
INSERT INTO `elderpayment` VALUES ('31', '18', '4000', '3', '3', '0', '4294967295', '12', '1', '1492595127', '0', '');
INSERT INTO `elderpayment` VALUES ('32', '18', '4000', '3', '3', '0', '4294967295', '12', '1', '1492595173', '0', '');
INSERT INTO `elderpayment` VALUES ('33', '8', '100', '3', '1', '0', '1494950400', '100', '1', '1492595807', '0', '1001011');
INSERT INTO `elderpayment` VALUES ('34', '6', '100', '3', '1', '0', '1492358400', '100', '1', '1492595818', '0', '1001011');
INSERT INTO `elderpayment` VALUES ('35', '6', '100', '3', '1', '0', '1494950400', '100', '1', '1492595878', '0', '1001011');
INSERT INTO `elderpayment` VALUES ('36', '18', '4000', '3', '3', '0', '1505750400', '1000', '1', '1492596025', '0', '1001011');
INSERT INTO `elderpayment` VALUES ('37', '17', '4000', '3', '3', '0', '1495123200', '100', '1', '1492596084', '0', '1001011');
INSERT INTO `elderpayment` VALUES ('38', '18', '4000', '3', '3', '0', '1508342400', '100', '1', '1492596098', '0', '1001011');
INSERT INTO `elderpayment` VALUES ('39', '4', '4000', '3', '1', '0', '1492272000', '100', '1', '1492596120', '0', '1001011');
INSERT INTO `elderpayment` VALUES ('40', '6', '100', '3', '1', '0', '1497628800', '12', '1', '1493175991', '0', '');
INSERT INTO `elderpayment` VALUES ('41', '17', '4000', '3', '3', '0', '1497801600', '12', '1', '1493176015', '0', '');
INSERT INTO `elderpayment` VALUES ('42', '8', '100', '3', '1', '0', '1497628800', '12', '1', '1493176031', '0', '');
INSERT INTO `elderpayment` VALUES ('43', '22', '123', '2', '3', '0', '1493913600', '1', '1', '1494230955', '0', 'admin');
INSERT INTO `elderpayment` VALUES ('44', '25', '1000', '5', '2', '0', '1525881600', '1000', '1', '1494493666', '0', 'admin');
INSERT INTO `elderpayment` VALUES ('45', '24', '234', '1', '1', '0', '1494518400', '234', '1', '1494493690', '0', 'admin');
INSERT INTO `elderpayment` VALUES ('46', '23', '1000', '1', '1', '0', '1494432000', '1000', '1', '1494560557', '0', 'admin');
INSERT INTO `elderpayment` VALUES ('47', '23', '1000', '1', '1', '0', '1494518400', '1000', '1', '1494560568', '0', 'admin');
INSERT INTO `elderpayment` VALUES ('48', '22', '123', '2', '3', '0', '1495641600', '2000', '1', '1494560576', '0', 'admin');
INSERT INTO `elderpayment` VALUES ('49', '21', '100', '1', '1', '0', '1493136000', '111', '1', '1494560590', '0', 'admin');
INSERT INTO `elderpayment` VALUES ('50', '5', '23', '1', '1', '0', '1490976000', '23', '1', '1494560647', '0', 'admin');
INSERT INTO `elderpayment` VALUES ('51', '24', '234', '1', '1', '0', '1494604800', '100', '1', '1494901714', '0', 'admin');
INSERT INTO `elderpayment` VALUES ('52', '24', '234', '1', '1', '0', '1494691200', '31231', '1', '1494901721', '0', 'admin');
INSERT INTO `elderpayment` VALUES ('53', '21', '100', '1', '1', '0', '1493222400', '100', '1', '1494916906', '0', 'admin');
INSERT INTO `elderpayment` VALUES ('54', '24', '234', '1', '1', '0', '1494777600', '100', '1', '1495090253', '0', 'admin');

-- ----------------------------
-- Table structure for event_info
-- ----------------------------
DROP TABLE IF EXISTS `event_info`;
CREATE TABLE `event_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `num` tinyint(2) unsigned NOT NULL COMMENT '事件类型编码',
  `introduce` varchar(20) NOT NULL COMMENT '事件类型描述',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='事件类型表';

-- ----------------------------
-- Records of event_info
-- ----------------------------
INSERT INTO `event_info` VALUES ('18', '1', '血压', '1487840397', '0');
INSERT INTO `event_info` VALUES ('19', '2', '血糖', '1487840397', '0');
INSERT INTO `event_info` VALUES ('20', '3', '体温', '1487840397', '0');
INSERT INTO `event_info` VALUES ('21', '4', '精神状态', '1487840397', '0');
INSERT INTO `event_info` VALUES ('22', '5', '皮肤状态', '1487840397', '0');
INSERT INTO `event_info` VALUES ('23', '6', '洗漱及护理', '1487840397', '0');
INSERT INTO `event_info` VALUES ('24', '7', '胰岛素', '1487840397', '0');
INSERT INTO `event_info` VALUES ('25', '8', '用饭', '1487840397', '0');
INSERT INTO `event_info` VALUES ('26', '9', '喝水', '1487840397', '0');
INSERT INTO `event_info` VALUES ('27', '10', '吃药', '1487840397', '0');
INSERT INTO `event_info` VALUES ('28', '11', '大便', '1487840397', '0');
INSERT INTO `event_info` VALUES ('29', '12', '小便', '1487840397', '0');
INSERT INTO `event_info` VALUES ('30', '13', '加餐', '1487840397', '0');
INSERT INTO `event_info` VALUES ('31', '14', '仪表', '1487840397', '0');
INSERT INTO `event_info` VALUES ('32', '15', '康复干预', '1487840397', '0');
INSERT INTO `event_info` VALUES ('33', '16', '床铺管理', '1487840397', '0');
INSERT INTO `event_info` VALUES ('34', '17', '衣物换洗', '1487840397', '0');
INSERT INTO `event_info` VALUES ('35', '18', '探视', '1487840397', '0');
INSERT INTO `event_info` VALUES ('36', '19', '午睡', '1487840397', '0');
INSERT INTO `event_info` VALUES ('38', '21', '睡眠情况', '1487840397', '0');
INSERT INTO `event_info` VALUES ('39', '22', '临睡用药', '1487840397', '0');
INSERT INTO `event_info` VALUES ('40', '23', '翻身', '1490246369', '0');

-- ----------------------------
-- Table structure for event_media
-- ----------------------------
DROP TABLE IF EXISTS `event_media`;
CREATE TABLE `event_media` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `event_type` tinyint(2) unsigned NOT NULL COMMENT '事件类型',
  `audio` varchar(200) NOT NULL COMMENT '音频地址',
  `video` varchar(200) NOT NULL COMMENT '视频地址',
  `audio_title` varchar(200) NOT NULL COMMENT '音频标题',
  `video_title` varchar(200) NOT NULL COMMENT '视频标题',
  `remarks` varchar(200) NOT NULL COMMENT '备注',
  `created` int(11) unsigned NOT NULL,
  `updated` int(11) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COMMENT='事件媒体';

-- ----------------------------
-- Records of event_media
-- ----------------------------
INSERT INTO `event_media` VALUES ('77', '23', '/upload/media/audio/2017/03/27/6da1ecc08eda8491d108.mp3', '/upload/media/video/2017/03/27/907de78b24437914aa6f.mp4', '陈奕迅-好久不见.mp3', '48号公益广告.mp4', '', '1490349690', '1490590782', '0');
INSERT INTO `event_media` VALUES ('78', '2', '/upload/media/audio/2017/06/21/be88f0bb24ca9bd576c5.mp3', '/upload/media/video/2017/07/03/593b0baf10b403d29836.mp4', 'Bishop Briggs - Mercy.mp3', 'Clip_1080_5sec_10mbps_h264.mp4', '', '1494384804', '1499048502', '0');
INSERT INTO `event_media` VALUES ('79', '1', '/upload/media/audio/2017/06/21/be88f0bb24ca9bd576c5.mp3', '/upload/media/video/2017/06/29/593b0baf10b403d29836.mp4', 'Bishop Briggs - Mercy.mp3', 'Clip_1080_5sec_10mbps_h264.mp4', '', '1496389210', '1498704541', '0');
INSERT INTO `event_media` VALUES ('80', '3', '/upload/media/audio/2017/06/29/2e4bc847cd64867f5bf0.mp3', '/upload/media/video/2017/06/29/87848ed1869b6710e729.mp4', 'sound.mp3', 'Clip_480_5sec_6mbps_h264.mp4', '', '1498703256', '1498704662', '0');

-- ----------------------------
-- Table structure for examine
-- ----------------------------
DROP TABLE IF EXISTS `examine`;
CREATE TABLE `examine` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '考核项主键ID',
  `e_id` int(11) DEFAULT NULL COMMENT '卫生模块id',
  `exam_title` varchar(20) DEFAULT NULL COMMENT '考核项目',
  `exam_content` varchar(100) DEFAULT NULL COMMENT '考核内容',
  `exam_stand` varchar(200) DEFAULT NULL COMMENT '考核标准',
  `exam_score` varchar(10) DEFAULT '10' COMMENT '考核分值',
  `exam_picture` varchar(100) DEFAULT NULL COMMENT '考核图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of examine
-- ----------------------------
INSERT INTO `examine` VALUES ('1', '1', '地面', '卧室地面', '无污渍、水渍、无毛发、灰尘、无脚印、可移动物品下无灰尘杂物', '5', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3938187317,2337569974&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('2', '1', '墙面', '卧室墙壁', '无蜘蛛网，无污渍、水渍、灰尘，无卫生死角，不乱挂衣服', '5', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1396378616,706026935&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('3', '1', '顶棚', '我是顶棚', '无蜘蛛网，无污渍、水渍、灰尘，无卫生死角', '5', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=287917177,2727648617&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('4', '1', '门', '内外面及边框', '无污渍、水渍、灰尘、无手印、表面光亮、无卫生死角', '5', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1396378616,706026935&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('5', '1', '台面', '卫生、物品', '无污渍、水渍、灰尘、表面光亮无杂物、物品摆放整齐', '5', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2615547699,3806561552&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('6', '1', '床头柜', '卫生、物品', '柜内无杂物、用品摆放整齐有序、柜面物品不超过四样、室内统一摆放', '5', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3890724794,3648260890&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('7', '1', '床', '床体四周', '床体四周无油污渍、无灰尘；床面无皮屑、毛发、纸屑；床下无灰尘、杂物', '10', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1396378616,706026935&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('8', '1', '窗帘纱窗', '整洁、无破损', '无污渍、无破损、无灰尘、室内摆放一致', '5', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1396378616,706026935&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('9', '1', '窗台', '无杂物、物品摆放整齐', '无水渍、污渍，台面光亮、可移动物品下无灰尘、杂物', '5', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1396378616,706026935&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('10', '1', '空调', '清洁卫生	', '无污渍、灰尘，整体干净，无破损，运行正常无障碍', '5', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1396378616,706026935&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('11', '1', '玻璃', '窗明、卫生', '室内玻璃无水渍、污渍、手印、明亮、无破损', '5', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1396378616,706026935&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('12', '1', '室内设施', '设施摆放整齐、卫生', '电视、多媒体、康复器等无污渍、灰尘，整体干净，无破损，运行正常无故障', '10', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1396378616,706026935&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('13', '1', '库房', '物品摆放整齐有序、清洁', '物品无污渍、灰尘，整体干净，货架物品摆放整齐有序、物品又标示、无过期', '10', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1396378616,706026935&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('14', '1', '走廊', '地面清洁、无杂物	', '无污渍、灰尘，更衣柜无破损，内部物品摆放整齐有序', '5', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1396378616,706026935&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('15', '1', '灭火器', '定位、定数、定人	', '无污渍、灰尘，整体干净，处于备用状态、人人会用、会报警（119）', '10', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1396378616,706026935&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('16', '1', '灯具', '明亮卫生	', '无污渍、灰尘、无破损、处于功能状态', '5', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1396378616,706026935&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('18', '2', '调料柜', '物品摆放规格、卫生、', '物品码放整齐，无油渍，无过期商品，无腐烂变质食品，物品处在保质期内', '10', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1396378616,706026935&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('19', '2', '消毒柜', '物品清洁卫生', '内部无食品残渣，无油渍死角，四周无油渍灰尘，无水渍，表面光亮清洁', '10', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3938187317,2337569974&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('20', '2', '微波炉', '卫生清洁	', '内部无食品残渣，无油渍死角，四周无油渍灰尘，无水渍，表面光亮清洁', '10', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3938187317,2337569974&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('21', '2', '油烟机', '清洁无油渍', '无水渍、油渍、污渍，接油盒中无残油，表面光亮清洁', '5', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3938187317,2337569974&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('22', '2', '灶台', '清洁卫生、无油渍', '无水渍、油渍、污渍，表面清洁、无杂物摆放', '5', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3938187317,2337569974&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('23', '2', '冰箱', '物品摆放规格、卫生、', '内部无过厚冻冰，食品码放整齐有序，无腐烂变质食物，无过期食品，干净，密封条细缝无水渍，外部\r\r\n四周及扣手无油渍、水渍、无手印、表面光亮整洁', '5', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3938187317,2337569974&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('24', '2', '冰柜', '物品摆放规格、卫生、', '内部无过厚冻冰，食品码放整齐有序，无腐烂变质食物，无过期食品，干净，密封条细缝无水渍，外部\r\r\n四周及扣手无油渍、水渍、无手印、表面光亮整洁', '10', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3938187317,2337569974&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('25', '2', '餐具', '锅碗瓢盆、刀具、案板', '物品内、外无油污、光亮、不粘手、无油渍水渍，表面光亮清洁', '10', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3938187317,2337569974&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('26', '2', '洗完池', '内无残留物、四周清洁', '内、外及四周无油污及残留物、光亮，不粘手、无油渍水渍，表面光亮清洁', '5', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3938187317,2337569974&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('27', '2', '地面', '清洁无死角', '无油渍、水渍，无毛发、灰尘、无脚印、无死角，可移动物品下无灰尘杂物', '5', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3938187317,2337569974&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('28', '2', '墙面', '四壁无尘	', '无蜘蛛网，无油污渍、水渍、灰尘，无卫生死角', '5', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3938187317,2337569974&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('29', '2', '吊顶', '卫生无尘', '无破损、清洁、无尘、无卫生死角', '5', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3938187317,2337569974&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('30', '2', '门', '内外及门框清洁卫生', '内外及门框无油污渍、水渍、灰尘、无手印、表面光亮、无卫生死角', '5', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3938187317,2337569974&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('31', '2', '水龙头、下水管', '清洁卫生无油渍', '表明光亮，无油污渍，水渍，无漏水、清洁卫生', '5', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3938187317,2337569974&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('32', '2', '抹布', '清洁卫生 ', '无油污渍，无异物', '5', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3938187317,2337569974&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('33', '2', '灯具', '清洁卫生 ', '无油污渍、灰尘、水渍，无破损', '5', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3938187317,2337569974&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('34', '3', '卫生用品', '洗漱、清洁用品卫生', '毛墩布、抹布、洁厕刷、洗护用品码放整齐有序、无灰尘', '10', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3938187317,2337569974&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('35', '3', '洗衣机', '清洁卫生	', '无水渍、污渍，表面光亮，无故障、洗衣机内无未洗物', '5', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3938187317,2337569974&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('36', '3', '热水器', '功能、清洁', '无水渍、污渍，表面光亮，无故障', '5', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3938187317,2337569974&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('37', '3', '坐便助力扶手', '功能完好、卫生', '无水渍、污渍，表面光亮，无故障、功能完好', '10', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3938187317,2337569974&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('38', '3', '轮椅', '功能完好、卫生', '整体干净、无污渍、无故障、摆放整齐、功能良好', '10', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3938187317,2337569974&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('39', '3', '坐便池', '四周及内部清洁卫生', '无水渍、污渍、无尿碱、表面光亮、无堵塞', '5', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3938187317,2337569974&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('40', '3', '洗手池', '四周及内部清洁卫生', '内、外及四周无污渍，水渍，毛发，表面光亮，无堵塞', '5', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3938187317,2337569974&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('41', '3', '地面', '卫生整洁、无杂物', '无污渍、水渍，无毛发、灰尘、无脚印、无死角，可移动物品下无灰尘及杂物', '10', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3938187317,2337569974&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('42', '3', '墙面', '无灰、不乱挂物品', '无蜘蛛网，无污渍、水渍、灰尘，无卫生死角，四周清洁无挂物', '5', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3938187317,2337569974&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('43', '3', '顶面', '无灰聊', '无蜘蛛网，无污渍、水渍、无灰聊，无卫生死角', '5', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3938187317,2337569974&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('44', '3', '门', '内外面及门框', '无污渍、水渍、灰尘、无手印、表面光亮、无卫生死角', '5', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3938187317,2337569974&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('45', '3', '水龙头、下水管', '清洁卫生、无杂物', '表面光亮，无污渍，水渍，无漏水，无堵塞', '10', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3938187317,2337569974&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('46', '3', '抹布', '清洁卫生', '无污渍，无异味', '10', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3938187317,2337569974&fm=23&gp=0.jpg');
INSERT INTO `examine` VALUES ('47', '3', '灯具', '清洁卫生', '无污渍，灰尘、水渍，无破损', '5', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3938187317,2337569974&fm=23&gp=0.jpg');

-- ----------------------------
-- Table structure for examine_region
-- ----------------------------
DROP TABLE IF EXISTS `examine_region`;
CREATE TABLE `examine_region` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '区域ID',
  `region` varchar(100) DEFAULT NULL COMMENT '卫生区域',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of examine_region
-- ----------------------------
INSERT INTO `examine_region` VALUES ('1', '居室环境');
INSERT INTO `examine_region` VALUES ('2', '厨房环境');
INSERT INTO `examine_region` VALUES ('3', '卫生间环境');

-- ----------------------------
-- Table structure for examine_score
-- ----------------------------
DROP TABLE IF EXISTS `examine_score`;
CREATE TABLE `examine_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分数表ID',
  `e_id` int(11) DEFAULT NULL COMMENT '考核项目ID',
  `score` int(5) DEFAULT NULL COMMENT '卫生项目检查分数',
  `times` int(5) DEFAULT NULL COMMENT '检查次数',
  `o_id` int(11) DEFAULT NULL COMMENT '检查表关联ID',
  `datetime` date DEFAULT NULL COMMENT '添加时间',
  `cdatetime` date DEFAULT NULL COMMENT '检查时间',
  `x_id` int(11) DEFAULT NULL COMMENT '区域ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=544 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of examine_score
-- ----------------------------
INSERT INTO `examine_score` VALUES ('448', '1', '5', '1', '1', '2017-05-11', null, '0');
INSERT INTO `examine_score` VALUES ('449', '2', '0', '1', '1', '2017-05-11', null, '0');
INSERT INTO `examine_score` VALUES ('450', '3', '0', '1', '1', '2017-05-11', null, '0');
INSERT INTO `examine_score` VALUES ('451', '4', '0', '1', '1', '2017-05-11', null, '0');
INSERT INTO `examine_score` VALUES ('452', '5', '0', '1', '1', '2017-05-11', null, '0');
INSERT INTO `examine_score` VALUES ('453', '6', '0', '1', '1', '2017-05-11', null, '0');
INSERT INTO `examine_score` VALUES ('454', '7', '0', '1', '1', '2017-05-11', null, '0');
INSERT INTO `examine_score` VALUES ('455', '8', '0', '1', '1', '2017-05-11', null, '0');
INSERT INTO `examine_score` VALUES ('456', '9', '0', '1', '1', '2017-05-11', null, '0');
INSERT INTO `examine_score` VALUES ('457', '10', '0', '1', '1', '2017-05-11', null, '0');
INSERT INTO `examine_score` VALUES ('458', '11', '0', '1', '1', '2017-05-11', null, '0');
INSERT INTO `examine_score` VALUES ('459', '12', '0', '1', '1', '2017-05-11', null, '0');
INSERT INTO `examine_score` VALUES ('460', '13', '0', '1', '1', '2017-05-11', null, '0');
INSERT INTO `examine_score` VALUES ('461', '14', '0', '1', '1', '2017-05-11', null, '0');
INSERT INTO `examine_score` VALUES ('462', '15', '0', '1', '1', '2017-05-11', null, '0');
INSERT INTO `examine_score` VALUES ('463', '16', '0', '1', '1', '2017-05-11', null, '0');
INSERT INTO `examine_score` VALUES ('464', '1', '0', '1', '1', '2017-05-12', null, '32');
INSERT INTO `examine_score` VALUES ('465', '2', '0', '1', '1', '2017-05-12', null, '32');
INSERT INTO `examine_score` VALUES ('466', '3', '0', '1', '1', '2017-05-12', null, '32');
INSERT INTO `examine_score` VALUES ('467', '4', '0', '1', '1', '2017-05-12', null, '32');
INSERT INTO `examine_score` VALUES ('468', '5', '0', '1', '1', '2017-05-12', null, '32');
INSERT INTO `examine_score` VALUES ('469', '6', '0', '1', '1', '2017-05-12', null, '32');
INSERT INTO `examine_score` VALUES ('470', '7', '0', '1', '1', '2017-05-12', null, '32');
INSERT INTO `examine_score` VALUES ('471', '8', '0', '1', '1', '2017-05-12', null, '32');
INSERT INTO `examine_score` VALUES ('472', '9', '0', '1', '1', '2017-05-12', null, '32');
INSERT INTO `examine_score` VALUES ('473', '10', '0', '1', '1', '2017-05-12', null, '32');
INSERT INTO `examine_score` VALUES ('474', '11', '0', '1', '1', '2017-05-12', null, '32');
INSERT INTO `examine_score` VALUES ('475', '12', '0', '1', '1', '2017-05-12', null, '32');
INSERT INTO `examine_score` VALUES ('476', '13', '0', '1', '1', '2017-05-12', null, '32');
INSERT INTO `examine_score` VALUES ('477', '14', '0', '1', '1', '2017-05-12', null, '32');
INSERT INTO `examine_score` VALUES ('478', '15', '0', '1', '1', '2017-05-12', null, '32');
INSERT INTO `examine_score` VALUES ('479', '16', '0', '1', '1', '2017-05-12', null, '32');
INSERT INTO `examine_score` VALUES ('480', '1', '0', '1', '8', '2017-05-15', null, '33');
INSERT INTO `examine_score` VALUES ('481', '2', '0', '1', '8', '2017-05-15', null, '33');
INSERT INTO `examine_score` VALUES ('482', '3', '0', '1', '8', '2017-05-15', null, '33');
INSERT INTO `examine_score` VALUES ('483', '4', '0', '1', '8', '2017-05-15', null, '33');
INSERT INTO `examine_score` VALUES ('484', '5', '0', '1', '8', '2017-05-15', null, '33');
INSERT INTO `examine_score` VALUES ('485', '6', '0', '1', '8', '2017-05-15', null, '33');
INSERT INTO `examine_score` VALUES ('486', '7', '0', '1', '8', '2017-05-15', null, '33');
INSERT INTO `examine_score` VALUES ('487', '8', '0', '1', '8', '2017-05-15', null, '33');
INSERT INTO `examine_score` VALUES ('488', '9', '0', '1', '8', '2017-05-15', null, '33');
INSERT INTO `examine_score` VALUES ('489', '10', '0', '1', '8', '2017-05-15', null, '33');
INSERT INTO `examine_score` VALUES ('490', '11', '0', '1', '8', '2017-05-15', null, '33');
INSERT INTO `examine_score` VALUES ('491', '12', '0', '1', '8', '2017-05-15', null, '33');
INSERT INTO `examine_score` VALUES ('492', '13', '0', '1', '8', '2017-05-15', null, '33');
INSERT INTO `examine_score` VALUES ('493', '14', '0', '1', '8', '2017-05-15', null, '33');
INSERT INTO `examine_score` VALUES ('494', '15', '0', '1', '8', '2017-05-15', null, '33');
INSERT INTO `examine_score` VALUES ('495', '16', '0', '1', '8', '2017-05-15', null, '33');
INSERT INTO `examine_score` VALUES ('496', '18', '0', '1', '8', '2017-05-15', null, '33');
INSERT INTO `examine_score` VALUES ('497', '19', '0', '1', '8', '2017-05-15', null, '33');
INSERT INTO `examine_score` VALUES ('498', '20', '0', '1', '8', '2017-05-15', null, '33');
INSERT INTO `examine_score` VALUES ('499', '21', '0', '1', '8', '2017-05-15', null, '33');
INSERT INTO `examine_score` VALUES ('500', '22', '0', '1', '8', '2017-05-15', null, '33');
INSERT INTO `examine_score` VALUES ('501', '23', '0', '1', '8', '2017-05-15', null, '33');
INSERT INTO `examine_score` VALUES ('502', '24', '0', '1', '8', '2017-05-15', null, '33');
INSERT INTO `examine_score` VALUES ('503', '25', '0', '1', '8', '2017-05-15', null, '33');
INSERT INTO `examine_score` VALUES ('504', '26', '0', '1', '8', '2017-05-15', null, '33');
INSERT INTO `examine_score` VALUES ('505', '27', '0', '1', '8', '2017-05-15', null, '33');
INSERT INTO `examine_score` VALUES ('506', '28', '0', '1', '8', '2017-05-15', null, '33');
INSERT INTO `examine_score` VALUES ('507', '29', '0', '1', '8', '2017-05-15', null, '33');
INSERT INTO `examine_score` VALUES ('508', '30', '0', '1', '8', '2017-05-15', null, '33');
INSERT INTO `examine_score` VALUES ('509', '31', '0', '1', '8', '2017-05-15', null, '33');
INSERT INTO `examine_score` VALUES ('510', '32', '0', '1', '8', '2017-05-15', null, '33');
INSERT INTO `examine_score` VALUES ('511', '33', '0', '1', '8', '2017-05-15', null, '33');
INSERT INTO `examine_score` VALUES ('512', '1', '0', '1', '13', '2017-05-22', null, '34');
INSERT INTO `examine_score` VALUES ('513', '2', '0', '1', '13', '2017-05-22', null, '34');
INSERT INTO `examine_score` VALUES ('514', '3', '0', '1', '13', '2017-05-22', null, '34');
INSERT INTO `examine_score` VALUES ('515', '4', '0', '1', '13', '2017-05-22', null, '34');
INSERT INTO `examine_score` VALUES ('516', '5', '0', '1', '13', '2017-05-22', null, '34');
INSERT INTO `examine_score` VALUES ('517', '6', '0', '1', '13', '2017-05-22', null, '34');
INSERT INTO `examine_score` VALUES ('518', '7', '0', '1', '13', '2017-05-22', null, '34');
INSERT INTO `examine_score` VALUES ('519', '8', '0', '1', '13', '2017-05-22', null, '34');
INSERT INTO `examine_score` VALUES ('520', '9', '0', '1', '13', '2017-05-22', null, '34');
INSERT INTO `examine_score` VALUES ('521', '10', '0', '1', '13', '2017-05-22', null, '34');
INSERT INTO `examine_score` VALUES ('522', '11', '0', '1', '13', '2017-05-22', null, '34');
INSERT INTO `examine_score` VALUES ('523', '12', '0', '1', '13', '2017-05-22', null, '34');
INSERT INTO `examine_score` VALUES ('524', '13', '0', '1', '13', '2017-05-22', null, '34');
INSERT INTO `examine_score` VALUES ('525', '14', '0', '1', '13', '2017-05-22', null, '34');
INSERT INTO `examine_score` VALUES ('526', '15', '0', '1', '13', '2017-05-22', null, '34');
INSERT INTO `examine_score` VALUES ('527', '16', '0', '1', '13', '2017-05-22', null, '34');
INSERT INTO `examine_score` VALUES ('528', '1', '0', '1', '1', '2017-05-22', null, '0');
INSERT INTO `examine_score` VALUES ('529', '2', '0', '1', '1', '2017-05-22', null, '0');
INSERT INTO `examine_score` VALUES ('530', '3', '0', '1', '1', '2017-05-22', null, '0');
INSERT INTO `examine_score` VALUES ('531', '4', '0', '1', '1', '2017-05-22', null, '0');
INSERT INTO `examine_score` VALUES ('532', '5', '0', '1', '1', '2017-05-22', null, '0');
INSERT INTO `examine_score` VALUES ('533', '6', '0', '1', '1', '2017-05-22', null, '0');
INSERT INTO `examine_score` VALUES ('534', '7', '0', '1', '1', '2017-05-22', null, '0');
INSERT INTO `examine_score` VALUES ('535', '8', '0', '1', '1', '2017-05-22', null, '0');
INSERT INTO `examine_score` VALUES ('536', '9', '0', '1', '1', '2017-05-22', null, '0');
INSERT INTO `examine_score` VALUES ('537', '10', '0', '1', '1', '2017-05-22', null, '0');
INSERT INTO `examine_score` VALUES ('538', '11', '0', '1', '1', '2017-05-22', null, '0');
INSERT INTO `examine_score` VALUES ('539', '12', '0', '1', '1', '2017-05-22', null, '0');
INSERT INTO `examine_score` VALUES ('540', '13', '0', '1', '1', '2017-05-22', null, '0');
INSERT INTO `examine_score` VALUES ('541', '14', '0', '1', '1', '2017-05-22', null, '0');
INSERT INTO `examine_score` VALUES ('542', '15', '0', '1', '1', '2017-05-22', null, '0');
INSERT INTO `examine_score` VALUES ('543', '16', '0', '1', '1', '2017-05-22', null, '0');

-- ----------------------------
-- Table structure for excretion
-- ----------------------------
DROP TABLE IF EXISTS `excretion`;
CREATE TABLE `excretion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `small_times` tinyint(1) NOT NULL COMMENT '小便次数',
  `upd` int(11) NOT NULL COMMENT '尿量',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `big_times` tinyint(1) NOT NULL COMMENT '大便次数',
  `small_status` tinyint(1) NOT NULL COMMENT '小便状态(1.正常、2.浑浊、3.带血、4.黄色、5.淡黄)',
  `big_status` tinyint(1) NOT NULL COMMENT '大便状态(1.正常、2.成形、3.稀便、4.不成形、5.浓便、6.便血)',
  `date` varchar(10) NOT NULL COMMENT '日期',
  `at` tinyint(1) NOT NULL COMMENT '时间点(1.早上、2.上午、3.中午、4.下午、5.晚上)',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='排泄';

-- ----------------------------
-- Records of excretion
-- ----------------------------
INSERT INTO `excretion` VALUES ('1', '1', '2', '1488793620', '0', '1', '1', '5', '2', '2017-03-06', '2');
INSERT INTO `excretion` VALUES ('2', '1', '2', '1488794960', '0', '1', '1', '2', '5', '2017-03-06', '1');
INSERT INTO `excretion` VALUES ('3', '1', '2', '1488850471', '0', '1', '1', '1', '1', '2017-03-07', '1');
INSERT INTO `excretion` VALUES ('4', '1', '1', '1489027037', '0', '1', '0', '1', '0', '2017-03-09', '1');
INSERT INTO `excretion` VALUES ('5', '1', '3', '1489118295', '0', '1', '0', '4', '0', '2017-03-10', '1');
INSERT INTO `excretion` VALUES ('6', '1', '1', '1489130776', '0', '1', '0', '4', '0', '2017-03-10', '2');
INSERT INTO `excretion` VALUES ('7', '1', '2', '1489389146', '0', '1', '1', '2', '1', '2017-03-13', '1');
INSERT INTO `excretion` VALUES ('8', '1', '2', '1489648798', '0', '1', '0', '5', '0', '2017-03-16', '1');
INSERT INTO `excretion` VALUES ('9', '1', '1', '1493266795', '0', '3', '0', '5', '0', '2017-04-27', '5');
INSERT INTO `excretion` VALUES ('10', '1', '2', '1493888603', '0', '23', '0', '3', '0', '2017-05-04', '5');
INSERT INTO `excretion` VALUES ('11', '1', '2', '1494211912', '0', '1', '1', '3', '5', '2017-05-08', '1');
INSERT INTO `excretion` VALUES ('12', '2', '4', '1494212448', '0', '1', '2', '5', '1', '2017-05-08', '2');
INSERT INTO `excretion` VALUES ('13', '1', '2', '1494212189', '0', '1', '1', '1', '3', '2017-05-08', '5');
INSERT INTO `excretion` VALUES ('14', '1', '2', '1494487036', '0', '1', '1', '2', '1', '2017-05-11', '2');
INSERT INTO `excretion` VALUES ('15', '0', '0', '1494905506', '0', '1', '1', '0', '4', '2017-05-16', '1');
INSERT INTO `excretion` VALUES ('16', '1', '1', '1495507618', '0', '1', '1', '1', '1', '2017-05-23', '1');
INSERT INTO `excretion` VALUES ('17', '1', '1', '1495508333', '0', '1', '1', '2', '2', '2017-05-23', '2');
INSERT INTO `excretion` VALUES ('18', '1', '2', '1495510305', '0', '1', '1', '1', '1', '2017-05-23', '4');
INSERT INTO `excretion` VALUES ('19', '2', '3', '1495533589', '0', '5', '2', '5', '1', '2017-05-23', '1');
INSERT INTO `excretion` VALUES ('20', '2', '5', '1495534177', '0', '5', '1', '1', '5', '2017-05-23', '4');
INSERT INTO `excretion` VALUES ('22', '1', '2', '1495609652', '0', '1', '0', '5', '0', '2017-05-24', '1');
INSERT INTO `excretion` VALUES ('23', '1', '300', '1495768659', '0', '1', '1', '3', '6', '2017-05-26', '1');
INSERT INTO `excretion` VALUES ('24', '1', '500', '1495770015', '0', '1', '1', '3', '6', '2017-05-26', '4');
INSERT INTO `excretion` VALUES ('25', '1', '500', '1495771009', '0', '1', '1', '3', '6', '2017-05-26', '2');
INSERT INTO `excretion` VALUES ('26', '1', '500', '1497345278', '0', '1', '1', '5', '5', '2017-06-13', '1');
INSERT INTO `excretion` VALUES ('27', '1', '500', '1497343602', '0', '1', '1', '1', '6', '2017-06-13', '4');
INSERT INTO `excretion` VALUES ('28', '1', '300', '1497491834', '0', '1', '1', '5', '2', '2017-06-15', '1');

-- ----------------------------
-- Table structure for family_members
-- ----------------------------
DROP TABLE IF EXISTS `family_members`;
CREATE TABLE `family_members` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(11) unsigned NOT NULL COMMENT '关联老年人ID',
  `w_id` int(11) unsigned NOT NULL COMMENT '关联员工ID',
  `name` varchar(20) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `relation` varchar(20) NOT NULL COMMENT '关系',
  `critcode` varchar(18) NOT NULL COMMENT '证件号码',
  `address` varchar(100) NOT NULL COMMENT '住址',
  `phone` varchar(11) DEFAULT NULL,
  `is_client` tinyint(1) NOT NULL COMMENT '是否是委托人(1.是、2.不是)',
  `is_talk` tinyint(1) unsigned DEFAULT NULL COMMENT '是否欠费(1.否、2.是)',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL COMMENT '是否删除(1.未删除、2.已删除)',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8 COMMENT='家属表';

-- ----------------------------
-- Records of family_members
-- ----------------------------
INSERT INTO `family_members` VALUES ('1', '1', '0', '测试委托人', '0', '母子', '12332345543544', '北京市北苑区', '18910330634', '1', '1', '1488793070', '0', '0');
INSERT INTO `family_members` VALUES ('4', '2', '0', '测试委托', '0', '父子', '373928193702038574', '北京', '18910330634', '1', '1', '1488803228', '1489646618', '0');
INSERT INTO `family_members` VALUES ('7', '3', '0', '北苑委托人', '0', '父子', '3435546645646', '北京市北苑区', '18910330634', '1', '1', '1488850827', '1489646669', '0');
INSERT INTO `family_members` VALUES ('10', '4', '0', '测试委托人', '0', '父子', '1098376464636', '北京市西四区', '18910330634', '1', '1', '1488854471', '1489646684', '0');
INSERT INTO `family_members` VALUES ('13', '5', '0', '测试我诶托人', '0', '父子', '1432123412341234', '的武器二气温气温气温', '13522687572', '1', '2', '1489646863', '1490149445', '0');
INSERT INTO `family_members` VALUES ('16', '6', '0', '测试1146委托人', '0', '父子', '411123198410111122', '北京市海淀区王庄路', '17701349651', '2', '1', '1489722622', '1489722663', '0');
INSERT INTO `family_members` VALUES ('17', '18', '0', '0425', '1', '', '412312312313131314', '', null, '2', null, '1489722622', '1493026041', '2');
INSERT INTO `family_members` VALUES ('20', '8', '0', '测试1518委托人', '0', '父子', '411123188401221013', '北京市海淀区', '17701341521', '1', '1', '1489735389', '0', '0');
INSERT INTO `family_members` VALUES ('21', '8', '0', '', '0', '', '', '', null, '2', null, '1489735389', '0', '0');
INSERT INTO `family_members` VALUES ('26', '0', '46', '', '0', '', '', '', '', '2', null, '1489736594', '0', '0');
INSERT INTO `family_members` VALUES ('35', '2', '0', '侬我期待', '0', '我弄到你的', '123131223432', '马上吃那市场农生产', '12312231414', '2', '1', '1489737227', '0', '0');
INSERT INTO `family_members` VALUES ('36', '15', '0', '', '0', '', '', '', null, '2', null, '1489737227', '0', '0');
INSERT INTO `family_members` VALUES ('37', '5', '0', '007家属1', '1', '叔侄', '123123123123007', '北京市海淀区', null, '2', null, '1490149445', '0', '0');
INSERT INTO `family_members` VALUES ('38', '16', '0', '测试1403委托人', '0', '父子', '411123199101222033', '北京市昌平区', '18210971254', '1', '1', '1490594789', '0', '0');
INSERT INTO `family_members` VALUES ('39', '16', '0', '', '0', '', '', '', null, '2', null, '1490594789', '0', '0');
INSERT INTO `family_members` VALUES ('40', '0', '50', '', '0', '', '', '', '', '2', null, '1490690991', '0', '0');
INSERT INTO `family_members` VALUES ('41', '0', '50', '', '0', '', '', '', '', '2', null, '1490692611', '0', '0');
INSERT INTO `family_members` VALUES ('42', '0', '50', '', '0', '', '', '', '', '2', null, '1490693166', '0', '0');
INSERT INTO `family_members` VALUES ('43', '0', '50', '', '0', '', '', '', '', '2', null, '1490693166', '0', '0');
INSERT INTO `family_members` VALUES ('44', '0', '51', '', '0', '', '', '', '', '2', null, '1492397068', '0', '0');
INSERT INTO `family_members` VALUES ('49', '17', '0', 'werw', '0', 'fuzi', 'werwrwerwe', 'wewewrwrwer', '18910330634', '1', '1', '1492590251', '0', '0');
INSERT INTO `family_members` VALUES ('50', '17', '0', '', '0', '', '', '', null, '2', null, '1492590251', '0', '0');
INSERT INTO `family_members` VALUES ('51', '2', '0', 'ewer', '0', 'werwerwe', '3345353453', 'wewewefwefwf', '18910330634', '1', '1', '1492590434', '1493098626', '1');
INSERT INTO `family_members` VALUES ('53', '0', '53', '', '0', '', '', '', '', '2', null, '1492595144', '0', '0');
INSERT INTO `family_members` VALUES ('56', '2', '0', '哈哈', '1', '', '112313123213123123', '', null, '2', null, '1493026222', '1493026232', '2');
INSERT INTO `family_members` VALUES ('57', '18', '0', '', '1', '', '', '', null, '2', null, '1493088588', '1493091591', '2');
INSERT INTO `family_members` VALUES ('58', '18', '0', '', '1', '', '', '', null, '2', null, '1493091600', '1493091631', '2');
INSERT INTO `family_members` VALUES ('59', '18', '0', '', '1', '', '', '', null, '2', null, '1493091642', '1493098513', '2');
INSERT INTO `family_members` VALUES ('64', '21', '0', '测试0425委托人', '0', '父子', '411103198301111123', '北京市海淀区', '18201234321', '1', '1', '1493100469', '0', '0');
INSERT INTO `family_members` VALUES ('65', '21', '0', '', '0', '', '', '', null, '2', null, '1493100469', '0', '0');
INSERT INTO `family_members` VALUES ('66', '0', '55', '测试家属', '0', '', '', '', '', '2', null, '1493193766', '0', '0');
INSERT INTO `family_members` VALUES ('67', '22', '0', '啊哈哈', '0', '朋友', '14272919961101822', '北京市昌平区紫金新干线小区4区', '13522687472', '1', '0', '1493280943', '1494492271', '0');
INSERT INTO `family_members` VALUES ('68', '22', '0', '样样', '1', '', '14272919961101822', '北京市昌平区紫金新干线小区4区', null, '2', null, '1493280943', '0', '0');
INSERT INTO `family_members` VALUES ('69', '23', '0', 'www', '0', '211', '121212121221212', '飒飒大扫除', '21212121212', '1', '0', '1493707148', '1494381985', '0');
INSERT INTO `family_members` VALUES ('70', '23', '0', '2', '1', '', '121121211111111111', '12121212121112是', null, '2', null, '1493707148', '0', '0');
INSERT INTO `family_members` VALUES ('71', '24', '0', '问问', '0', '问问', '34234242342423', '非问问范围分三等分', '2342342', '1', '0', '1494317577', '1494492285', '1');
INSERT INTO `family_members` VALUES ('72', '24', '0', '服务范围分违法', '2', '为范围', '让3人32让2423', '32232422', '232423232', '2', null, '1494317577', '1494492285', '1');
INSERT INTO `family_members` VALUES ('73', '24', '0', '234242324243', '1', '234242342', '2342432423', '23423呃我的问问', '2342342', '2', null, '1494317577', '1494492285', '1');
INSERT INTO `family_members` VALUES ('74', '0', '69', 'ewrwe', '0', '', 'ewrwr', 'ewrwe', '', '2', null, '1494320844', '0', '1');
INSERT INTO `family_members` VALUES ('75', '0', '69', 'werwrwe', '0', '', 'rwerwe', 'werwr', '', '2', null, '1494320844', '0', '1');
INSERT INTO `family_members` VALUES ('76', '0', '69', 'ewrwe', '0', '', 'ewrwr', 'ewrwe', '', '2', null, '1494321241', '0', '0');
INSERT INTO `family_members` VALUES ('82', '0', '69', 'ewrwe', '0', '', 'ewrwr', 'ewrwe', '', '2', null, '1494325344', '0', '0');
INSERT INTO `family_members` VALUES ('83', '0', '69', 'werwrwe', '0', '', 'rwerwe', 'werwr', '', '2', null, '1494325344', '0', '0');
INSERT INTO `family_members` VALUES ('84', '0', '69', 'ewrwe', '0', '', 'ewrwr', 'ewrwe', '', '2', null, '1494325344', '0', '0');
INSERT INTO `family_members` VALUES ('85', '0', '55', '测试家属', '0', '', '', '', '', '2', null, '1494325371', '0', '0');
INSERT INTO `family_members` VALUES ('86', '0', '55', '测试家属', '0', '', '', '', '', '2', null, '1494325386', '0', '0');
INSERT INTO `family_members` VALUES ('87', '0', '55', '测试家属', '0', '', '', '', '', '2', null, '1494325386', '0', '0');
INSERT INTO `family_members` VALUES ('88', '25', '0', '杨赛', '0', '朋友', '142729199611101519', '北京市东城区长安街1号', '13522687472', '1', '0', '1494382274', '1494559230', '0');
INSERT INTO `family_members` VALUES ('89', '25', '0', '打算', '1', '打算', '123123123123123123', '北京市东城区长安街1号', '12123123', '2', null, '1494382274', '1494559230', '1');
INSERT INTO `family_members` VALUES ('90', '0', '70', '哈哈', '0', '', '14231123123123123', '山西运城', '', '2', null, '1494570799', '0', '1');
INSERT INTO `family_members` VALUES ('91', '0', '71', '3242', '0', '', '23424234242342', '23424234242', '', '2', null, '1494570977', '0', '1');
INSERT INTO `family_members` VALUES ('92', '26', '0', '', '0', '', '', '', '', '1', '0', '1494929804', '1495683106', '0');
INSERT INTO `family_members` VALUES ('93', '26', '0', '', '1', '', '', '', '', '2', null, '1494929804', '1495683106', '1');
INSERT INTO `family_members` VALUES ('94', '27', '0', '', '0', '', '', '', '', '1', '0', '1494929885', '0', '0');
INSERT INTO `family_members` VALUES ('95', '27', '0', '', '1', '', '', '', '', '2', null, '1494929885', '0', '1');
INSERT INTO `family_members` VALUES ('96', '28', '0', '哈哈哈哈', '0', '姐妹', '', '', '', '1', '0', '1494986029', '1494987106', '0');
INSERT INTO `family_members` VALUES ('97', '28', '0', '3123', '2', '父母', '', '', '13522687472', '2', null, '1494986029', '1494987106', '1');
INSERT INTO `family_members` VALUES ('98', '29', '0', '', '0', '', '', '', '', '1', '0', '1494987139', '1495683057', '0');
INSERT INTO `family_members` VALUES ('99', '29', '0', '', '1', '', '', '', '', '2', null, '1494987139', '1495683057', '1');
INSERT INTO `family_members` VALUES ('100', '30', '0', '', '0', '', '', '', '', '1', '0', '1494987405', '1495683032', '0');
INSERT INTO `family_members` VALUES ('101', '30', '0', '', '1', '', '', '', '', '2', null, '1494987405', '1495683032', '1');
INSERT INTO `family_members` VALUES ('102', '31', '0', '', '0', '', '', '', '', '1', '0', '1495097767', '1496213582', '0');
INSERT INTO `family_members` VALUES ('103', '31', '0', '', '1', '', '', '', '', '2', null, '1495097767', '1496213582', '1');
INSERT INTO `family_members` VALUES ('184', '114', '0', '李老头', '1', '舅舅', '142729197510112000', '陕西省', '13821960314', '1', '0', '1496633435', '0', '0');
INSERT INTO `family_members` VALUES ('185', '115', '0', '李老头', '1', '舅舅', '142729197510112000', '陕西省', '13821960314', '1', '0', '1496633435', '0', '0');
INSERT INTO `family_members` VALUES ('186', '116', '0', '李老头', '1', '舅舅', '142729197510112000', '陕西省', '13821960314', '1', '0', '1496633435', '0', '0');
INSERT INTO `family_members` VALUES ('187', '117', '0', '李老头', '1', '舅舅', '142729197510112000', '陕西省', '13821960314', '1', '0', '1496633435', '0', '0');
INSERT INTO `family_members` VALUES ('188', '118', '0', '李老头', '1', '舅舅', '142729197510112000', '陕西省', '13821960314', '1', '0', '1496633435', '0', '0');
INSERT INTO `family_members` VALUES ('189', '119', '0', '李老头', '1', '舅舅', '142729197510112000', '陕西省', '13821960314', '1', '0', '1496633947', '0', '0');
INSERT INTO `family_members` VALUES ('190', '120', '0', '李老头', '1', '舅舅', '142729197510112000', '陕西省', '13821960314', '1', '0', '1496633947', '0', '0');
INSERT INTO `family_members` VALUES ('191', '121', '0', '李老头', '1', '舅舅', '142729197510112000', '陕西省', '13821960314', '1', '0', '1496633947', '0', '0');
INSERT INTO `family_members` VALUES ('192', '122', '0', '李老头', '1', '舅舅', '142729197510112000', '陕西省', '13821960314', '1', '0', '1496633947', '0', '0');
INSERT INTO `family_members` VALUES ('193', '123', '0', '李老头', '1', '舅舅', '142729197510112000', '陕西省', '13821960314', '1', '0', '1496633947', '0', '0');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `w_id` int(10) unsigned NOT NULL,
  `goodsname` varchar(100) NOT NULL COMMENT '物品名称',
  `starttime` varchar(20) NOT NULL COMMENT '领取时间',
  `endtime` varchar(20) NOT NULL COMMENT '归还时间',
  `remarks` varchar(255) NOT NULL COMMENT '备注',
  `created` int(11) unsigned NOT NULL,
  `updated` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='物品领取表';

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '46', '', '', '', '', '1489736594', '0');
INSERT INTO `goods` VALUES ('2', '47', '', '', '', '', '1488803352', '0');
INSERT INTO `goods` VALUES ('3', '48', '', '', '', '', '1488850998', '0');
INSERT INTO `goods` VALUES ('4', '49', '', '', '', '', '1488854613', '0');
INSERT INTO `goods` VALUES ('5', '50', '', '', '', '', '1490693166', '0');
INSERT INTO `goods` VALUES ('8', '53', '', '', '', '', '1492595144', '0');
INSERT INTO `goods` VALUES ('9', '69', 'werwe', '', 'wer', '', '1494469025', '0');

-- ----------------------------
-- Table structure for insulin
-- ----------------------------
DROP TABLE IF EXISTS `insulin`;
CREATE TABLE `insulin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(11) unsigned NOT NULL COMMENT '关联老人ID',
  `week` tinyint(4) NOT NULL COMMENT '星期(1.周一、2.周二、3.周三、4.周四、5.周五、6.周六、7.周日)',
  `date` varchar(10) DEFAULT NULL COMMENT '日期',
  `at` tinyint(1) NOT NULL COMMENT '时间点(1.早上、2.上午、3.中午、4.下午、5.晚上)',
  `created` int(11) unsigned NOT NULL,
  `updated` int(11) unsigned NOT NULL,
  `dosis` int(4) unsigned NOT NULL COMMENT '剂量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='胰岛素反馈表';

-- ----------------------------
-- Records of insulin
-- ----------------------------
INSERT INTO `insulin` VALUES ('1', '1', '1', '2017-03-06', '1', '1488794614', '0', '0');
INSERT INTO `insulin` VALUES ('2', '1', '2', '2017-03-07', '1', '1488850418', '0', '0');
INSERT INTO `insulin` VALUES ('3', '1', '4', '2017-03-09', '1', '1489027021', '0', '0');
INSERT INTO `insulin` VALUES ('4', '1', '1', '2017-03-13', '5', '1489388003', '0', '0');
INSERT INTO `insulin` VALUES ('5', '1', '1', '2017-03-13', '1', '1489389133', '0', '0');
INSERT INTO `insulin` VALUES ('6', '1', '4', '2017-03-16', '1', '1489650268', '0', '0');
INSERT INTO `insulin` VALUES ('7', '2', '4', '2017-03-23', '1', '1490236507', '0', '0');
INSERT INTO `insulin` VALUES ('8', '3', '4', '2017-04-13', '1', '1492070575', '0', '6');
INSERT INTO `insulin` VALUES ('9', '3', '4', '2017-04-13', '3', '1492070788', '0', '6');
INSERT INTO `insulin` VALUES ('10', '3', '4', '2017-04-13', '3', '1492070801', '0', '10');
INSERT INTO `insulin` VALUES ('11', '3', '4', '2017-04-13', '6', '1492071053', '0', '6');
INSERT INTO `insulin` VALUES ('12', '3', '4', '2017-04-27', '5', '1493282366', '0', '6');
INSERT INTO `insulin` VALUES ('13', '1', '1', '2017-05-08', '1', '1494211875', '0', '12');
INSERT INTO `insulin` VALUES ('14', '1', '1', '2017-05-08', '3', '1494212086', '0', '6');
INSERT INTO `insulin` VALUES ('15', '1', '1', '2017-05-08', '5', '1494212207', '0', '4');
INSERT INTO `insulin` VALUES ('16', '1', '1', '2017-05-08', '1', '1494212329', '0', '6');
INSERT INTO `insulin` VALUES ('17', '1', '4', '2017-05-11', '3', '1494487045', '0', '7');
INSERT INTO `insulin` VALUES ('18', '1', '4', '2017-05-11', '5', '1494487127', '0', '6');
INSERT INTO `insulin` VALUES ('19', '1', '3', '2017-05-17', '3', '1494997633', '0', '6');
INSERT INTO `insulin` VALUES ('20', '1', '2', '2017-05-23', '1', '1495507010', '0', '6');
INSERT INTO `insulin` VALUES ('21', '1', '2', '2017-05-23', '3', '1495508376', '0', '5');
INSERT INTO `insulin` VALUES ('22', '1', '2', '2017-05-23', '5', '1495510334', '0', '4');
INSERT INTO `insulin` VALUES ('23', '5', '2', '2017-05-23', '1', '1495533248', '0', '6');
INSERT INTO `insulin` VALUES ('24', '5', '2', '2017-05-23', '1', '1495533302', '0', '4');
INSERT INTO `insulin` VALUES ('25', '5', '2', '2017-05-23', '3', '1495533864', '0', '6');
INSERT INTO `insulin` VALUES ('26', '5', '2', '2017-05-23', '3', '1495533876', '0', '4');
INSERT INTO `insulin` VALUES ('27', '5', '2', '2017-05-23', '5', '1495534361', '0', '6');
INSERT INTO `insulin` VALUES ('28', '5', '2', '2017-05-23', '5', '1495534378', '0', '8');
INSERT INTO `insulin` VALUES ('29', '1', '5', '2017-05-26', '1', '1495763737', '0', '6');
INSERT INTO `insulin` VALUES ('30', '1', '5', '2017-05-26', '1', '1495765096', '0', '5');
INSERT INTO `insulin` VALUES ('31', '1', '5', '2017-05-26', '1', '1495765117', '0', '8');
INSERT INTO `insulin` VALUES ('32', '1', '5', '2017-05-26', '5', '1495768336', '0', '6');
INSERT INTO `insulin` VALUES ('33', '1', '5', '2017-05-26', '5', '1495768397', '0', '4');
INSERT INTO `insulin` VALUES ('34', '1', '5', '2017-05-26', '3', '1495768798', '0', '4');
INSERT INTO `insulin` VALUES ('35', '1', '5', '2017-05-26', '3', '1495768816', '0', '6');

-- ----------------------------
-- Table structure for leaved
-- ----------------------------
DROP TABLE IF EXISTS `leaved`;
CREATE TABLE `leaved` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `w_id` int(10) unsigned NOT NULL COMMENT '关联员工ID',
  `leavetime` varchar(20) NOT NULL COMMENT '请假时间',
  `leavedays` varchar(20) NOT NULL COMMENT '请假天数',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态(1.正常、2.已删除)',
  `created` int(11) unsigned NOT NULL,
  `updated` int(11) unsigned NOT NULL,
  `type` tinyint(1) unsigned NOT NULL COMMENT '请假类型(1.事假、2.病假、3.婚假、4.产假、5.其他)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='请假记录表';

-- ----------------------------
-- Records of leaved
-- ----------------------------
INSERT INTO `leaved` VALUES ('1', '47', '2017-03-14', '2', '1', '1489975813', '0', '0');
INSERT INTO `leaved` VALUES ('2', '49', '2017-03-23', '2', '1', '1489997948', '0', '0');
INSERT INTO `leaved` VALUES ('3', '49', '2017-03-23', '2', '2', '1489997948', '0', '0');
INSERT INTO `leaved` VALUES ('4', '49', '2017-04-21', '2', '2', '1489997948', '1492760317', '0');

-- ----------------------------
-- Table structure for leaves
-- ----------------------------
DROP TABLE IF EXISTS `leaves`;
CREATE TABLE `leaves` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(10) unsigned NOT NULL COMMENT '关联老人ID',
  `is_pay` tinyint(1) unsigned NOT NULL COMMENT '是否结算',
  `leaved_reason` varchar(200) NOT NULL COMMENT '离院原因',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态(1.正常、2.已删除)',
  `department` int(10) unsigned NOT NULL COMMENT '部门编码',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='老人离院表';

-- ----------------------------
-- Records of leaves
-- ----------------------------
INSERT INTO `leaves` VALUES ('1', '4', '2', '测试', '1', '8', '1491549691', '0');
INSERT INTO `leaves` VALUES ('3', '5', '2', '急需住院', '1', '8', '1491556595', '0');
INSERT INTO `leaves` VALUES ('4', '0', '0', '', '1', '0', '1492758907', '1492760289');
INSERT INTO `leaves` VALUES ('15', '3', '1', '312312', '1', '8', '1493805390', '0');
INSERT INTO `leaves` VALUES ('16', '3', '1', 'deqwe', '1', '8', '1494231420', '0');
INSERT INTO `leaves` VALUES ('17', '4', '1', '123123', '1', '13', '1494243917', '0');
INSERT INTO `leaves` VALUES ('18', '4', '1', '3123', '1', '13', '1494249397', '0');
INSERT INTO `leaves` VALUES ('19', '8', '1', '123', '1', '8', '1495420887', '0');
INSERT INTO `leaves` VALUES ('20', '22', '1', '3123', '1', '1', '1495421016', '0');
INSERT INTO `leaves` VALUES ('21', '6', '1', '1212312312', '1', '8', '1495421521', '0');
INSERT INTO `leaves` VALUES ('22', '2', '1', '3123', '1', '8', '1496731616', '0');
INSERT INTO `leaves` VALUES ('23', '26', '2', '312312', '1', '1', '1496731639', '0');

-- ----------------------------
-- Table structure for medical_insurance
-- ----------------------------
DROP TABLE IF EXISTS `medical_insurance`;
CREATE TABLE `medical_insurance` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(11) unsigned NOT NULL COMMENT '关联老年人ID',
  `card_number` varchar(18) NOT NULL COMMENT '医保卡号',
  `basic_fee` int(10) NOT NULL COMMENT '基础费用',
  `charge_discount` tinyint(2) NOT NULL COMMENT '收费折扣',
  `payment` tinyint(1) NOT NULL COMMENT '支付方式(1.日付、2.周付、3.季付、4.年付)',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COMMENT='医保表';

-- ----------------------------
-- Records of medical_insurance
-- ----------------------------
INSERT INTO `medical_insurance` VALUES ('34', '1', '12332345543543', '3000', '1', '3', '1488793070', '0');
INSERT INTO `medical_insurance` VALUES ('35', '2', '373928193702038574', '4000', '1', '3', '1488803228', '0');
INSERT INTO `medical_insurance` VALUES ('36', '3', '3435546645646', '4000', '1', '3', '1488850827', '0');
INSERT INTO `medical_insurance` VALUES ('37', '4', '1098376464636', '4000', '1', '3', '1488854471', '0');
INSERT INTO `medical_insurance` VALUES ('38', '5', '12323123123123', '23', '1', '1', '1490149445', '0');
INSERT INTO `medical_insurance` VALUES ('39', '6', '411123195310101012', '100', '1', '3', '1489722663', '0');
INSERT INTO `medical_insurance` VALUES ('41', '8', '411123195301202033', '100', '1', '3', '1489735389', '0');
INSERT INTO `medical_insurance` VALUES ('48', '15', '123123213123', '100', '1', '3', '1489737227', '0');
INSERT INTO `medical_insurance` VALUES ('49', '16', '411123194101222033', '100', '1', '1', '1490594789', '0');
INSERT INTO `medical_insurance` VALUES ('50', '17', '234234234', '4000', '3', '3', '1492590251', '0');
INSERT INTO `medical_insurance` VALUES ('51', '18', '34343534', '4000', '3', '3', '1493098626', '0');
INSERT INTO `medical_insurance` VALUES ('54', '21', '411103196001111123', '100', '1', '1', '1493100469', '0');
INSERT INTO `medical_insurance` VALUES ('55', '22', '123123123', '123', '3', '2', '1494492271', '0');
INSERT INTO `medical_insurance` VALUES ('56', '23', '离开家就好v开会', '1000', '1', '1', '1494381985', '0');
INSERT INTO `medical_insurance` VALUES ('57', '24', '3224234242', '234', '1', '1', '1494492285', '0');
INSERT INTO `medical_insurance` VALUES ('58', '25', '110151220201001', '1000', '2', '5', '1494559230', '0');
INSERT INTO `medical_insurance` VALUES ('59', '26', '', '0', '1', '1', '1495683106', '0');
INSERT INTO `medical_insurance` VALUES ('60', '27', '', '0', '1', '1', '1494929885', '0');
INSERT INTO `medical_insurance` VALUES ('61', '28', '', '0', '1', '1', '1494987106', '0');
INSERT INTO `medical_insurance` VALUES ('62', '29', '', '0', '1', '1', '1495683057', '0');
INSERT INTO `medical_insurance` VALUES ('63', '30', '', '0', '1', '1', '1495683032', '0');
INSERT INTO `medical_insurance` VALUES ('64', '31', '', '0', '1', '1', '1496213582', '0');
INSERT INTO `medical_insurance` VALUES ('65', '32', '', '0', '1', '1', '1496285252', '0');

-- ----------------------------
-- Table structure for medicine
-- ----------------------------
DROP TABLE IF EXISTS `medicine`;
CREATE TABLE `medicine` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ml_id` int(10) unsigned NOT NULL COMMENT '关联药品ID',
  `status` tinyint(1) NOT NULL COMMENT '是否用药(1.已用药、2.拒绝用药)',
  `unit` tinyint(2) unsigned NOT NULL COMMENT '药品单位',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `date` varchar(10) NOT NULL COMMENT '日期',
  `at` tinyint(1) NOT NULL COMMENT '时间点(1.早上、2.上午、3.中午、4.下午、5.晚上)',
  `sid` int(11) unsigned NOT NULL COMMENT '关联老年人ID（senior_id）',
  `remarks` varchar(200) NOT NULL COMMENT '备注',
  `username` varchar(50) NOT NULL COMMENT '添加人员的姓名',
  `num` int(10) unsigned NOT NULL COMMENT '用量',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '用药状态(1.正常用药、2.临睡用药)',
  `fanqian` int(11) DEFAULT NULL COMMENT '饭前饭后',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='用药';

-- ----------------------------
-- Records of medicine
-- ----------------------------
INSERT INTO `medicine` VALUES ('3', '5', '0', '2', '1494571611', '1494818243', '2017-05-15', '3', '25', '231123', 'admin', '2', '1', '1');
INSERT INTO `medicine` VALUES ('4', '6', '0', '4', '1494572013', '1494813952', '2017-05-15', '5', '24', '3213123', 'admin', '2', '1', '1');
INSERT INTO `medicine` VALUES ('6', '6', '0', '3', '1494572031', '1494813952', '2017-05-15', '3', '24', '3123123', 'admin', '1', '1', '1');
INSERT INTO `medicine` VALUES ('7', '5', '0', '2', '1494572052', '1494813952', '2017-05-15', '3', '24', '31231', 'admin', '2', '1', '1');
INSERT INTO `medicine` VALUES ('8', '21', '0', '4', '1494572052', '1494813952', '2017-05-15', '5', '24', '3213123', 'admin', '2', '1', '1');
INSERT INTO `medicine` VALUES ('9', '7', '0', '5', '1494572075', '1494818243', '2017-05-15', '1', '25', '3123123', 'admin', '3', '1', '1');
INSERT INTO `medicine` VALUES ('11', '3', '0', '4', '1494575925', '1494813952', '2017-05-15', '4', '24', '123123', 'admin', '3', '1', '2');
INSERT INTO `medicine` VALUES ('12', '8', '0', '3', '1494575994', '1494576007', '2017-05-12', '3', '23', '3123', 'admin', '1', '1', '2');
INSERT INTO `medicine` VALUES ('13', '20', '0', '1', '1494576007', '0', '2017-05-12', '1', '23', '3123', 'admin', '1', '1', '1');
INSERT INTO `medicine` VALUES ('14', '12', '0', '1', '1494577424', '1494818225', '2017-05-15', '1', '22', 'w w猥', 'admin', '2', '1', '1');
INSERT INTO `medicine` VALUES ('15', '13', '0', '1', '1494577447', '1494818225', '2017-05-15', '1', '22', '12312312', 'admin', '2', '1', '1');
INSERT INTO `medicine` VALUES ('16', '4', '0', '1', '1494577537', '1494818225', '2017-05-15', '1', '22', '3123213', 'admin', '2', '1', '1');
INSERT INTO `medicine` VALUES ('17', '11', '0', '1', '1494577673', '1494818225', '2017-05-15', '1', '22', '3123', 'admin', '2', '1', '1');
INSERT INTO `medicine` VALUES ('18', '16', '0', '1', '1494577701', '1494818225', '2017-05-15', '1', '22', 'w w猥', 'admin', '2', '1', '1');
INSERT INTO `medicine` VALUES ('19', '32', '0', '2', '1494818225', '0', '2017-05-15', '5', '22', '312312', 'admin', '3', '1', '2');
INSERT INTO `medicine` VALUES ('20', '31', '0', '1', '1494818243', '0', '2017-05-15', '1', '25', '312312', 'admin', '4', '1', '2');
INSERT INTO `medicine` VALUES ('21', '4', '0', '3', '1494845005', '1494845031', '2017-05-15', '1', '21', '12323', 'admin', '1', '1', '1');
INSERT INTO `medicine` VALUES ('22', '5', '0', '2', '1495176331', '1497863090', '2017-06-19', '1', '31', '哈哈一个个个', 'admin', '1', '1', '1');
INSERT INTO `medicine` VALUES ('23', '4', '0', '1', '1495442853', '1495443078', '2017-05-22', '3', '2', '312321', 'admin', '1', '1', '1');
INSERT INTO `medicine` VALUES ('24', '7', '0', '2', '1495443078', '0', '2017-05-22', '1', '2', '1231231', 'admin', '1', '1', '1');
INSERT INTO `medicine` VALUES ('25', '13', '0', '1', '1495443078', '0', '2017-05-22', '4', '2', '123213', 'admin', '1', '1', '2');
INSERT INTO `medicine` VALUES ('26', '5', '0', '1', '1495443078', '0', '2017-05-22', '5', '2', '123123', 'admin', '1', '1', '1');
INSERT INTO `medicine` VALUES ('27', '6', '2', '1', '1495765559', '1495510859', '2017-05-26', '1', '1', '按时用药', 'admin', '2', '1', '1');
INSERT INTO `medicine` VALUES ('28', '4', '1', '1', '1495765559', '1495510859', '2017-05-26', '1', '1', '按时用药', 'admin', '2', '1', '1');
INSERT INTO `medicine` VALUES ('29', '8', '1', '1', '1495768941', '1495510859', '2017-05-26', '3', '1', '按时吃药', 'admin', '2', '1', '1');
INSERT INTO `medicine` VALUES ('30', '13', '1', '1', '1495768330', '0', '2017-05-26', '5', '1', '按时用药', 'admin', '2', '2', '1');
INSERT INTO `medicine` VALUES ('31', '4', '2', '1', '1495533519', '0', '2017-05-23', '1', '5', 'fdf ', 'admin', '1', '1', '1');
INSERT INTO `medicine` VALUES ('32', '11', '0', '1', '1495609647', '1497863090', '2017-06-19', '1', '31', '按时吃药对身体有好处', 'admin', '1', '1', '1');
INSERT INTO `medicine` VALUES ('33', '15', '0', '1', '1497863091', '0', '2017-06-19', '1', '31', '312313', 'admin', '1', '1', '1');

-- ----------------------------
-- Table structure for medicine_library
-- ----------------------------
DROP TABLE IF EXISTS `medicine_library`;
CREATE TABLE `medicine_library` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL COMMENT '药品名称',
  `img` varchar(200) NOT NULL COMMENT '药品缩略图',
  `remarks` varchar(20) NOT NULL COMMENT '备注',
  `username` varchar(50) NOT NULL COMMENT '添加人员的姓名',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='医药库';

-- ----------------------------
-- Records of medicine_library
-- ----------------------------
INSERT INTO `medicine_library` VALUES ('3', '感冒灵胶囊', '/upload/medicine/2017/02/24/6272b0e70f113f222ce1f33c116322f1.jpg', '', 'admin', '1487920052', '0');
INSERT INTO `medicine_library` VALUES ('4', '复方麻黄碱', '/upload/medicine/2017/02/21/2f559f322ebc46d50f80048815fca81c.jpg', '', 'admin', '1487919984', '0');
INSERT INTO `medicine_library` VALUES ('5', '双黄连口服液', '/upload/medicine/2017/02/15/6269e982cdfc4731987aa48f605ad601.jpg', '', 'admin', '1487919951', '0');
INSERT INTO `medicine_library` VALUES ('6', '咳速停糖浆', '/upload/medicine/2017/02/18/206a94c43776742425740422295fbf39.jpg', '无', 'admin', '1487406620', '0');
INSERT INTO `medicine_library` VALUES ('7', '胰岛素', '/upload/medicine/2017/02/24/cae8cfaeb5919a947dbdb273d023df74.jpg', '', 'admin', '1487919933', '0');
INSERT INTO `medicine_library` VALUES ('8', '健胃消食片', '/upload/medicine/2017/02/24/8af9f8e6250c4bb1de4db136aad23641.jpg', '', 'admin', '1487920372', '0');
INSERT INTO `medicine_library` VALUES ('11', '布洛芬缓释胶囊', '/upload/medicine/2017/02/24/efc2f392f027a52d9a16c5d006eb0ff8.jpg', '', 'admin', '1487920559', '0');
INSERT INTO `medicine_library` VALUES ('12', '复方黄连素', '/upload/medicine/2017/02/24/f706b50cbbe4323bc1eae8f0b84ba5c4.jpg', '', 'admin', '1487920586', '0');
INSERT INTO `medicine_library` VALUES ('13', '心可舒丸', '/upload/medicine/2017/06/13/309d4620ba9a3b0cea226ce7d063ad1e.jpg', '', 'admin', '1497347378', '0');
INSERT INTO `medicine_library` VALUES ('14', '气温气温', '/upload/medicine/2017/06/13/e5f48cd22c42e7b4072711cca5628667.jpg', '气温', 'admin', '1497347348', '0');
INSERT INTO `medicine_library` VALUES ('15', '阿莫西林', '/upload/medicine/2017/06/15/6d95ca276a062da2f821732c5d510e44.jpg', '321312', 'admin', '1497491908', '0');

-- ----------------------------
-- Table structure for mood
-- ----------------------------
DROP TABLE IF EXISTS `mood`;
CREATE TABLE `mood` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `week` tinyint(4) NOT NULL COMMENT '星期(1.周一、2.周二、3.周三、4.周四、5.周五、6.周六、7.周日)',
  `date` varchar(10) DEFAULT NULL COMMENT '日期',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '精神状态(1.开心、2.正常、3.焦虑、4.孤独、5.自卑、6.多疑、7.忧郁、8.恐惧)',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `at` tinyint(1) NOT NULL COMMENT '时间点(1.早上、2.上午、3.中午、4.下午、5.晚上)',
  `sid` int(10) unsigned NOT NULL COMMENT '关联老年人ID（senior_id）',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='精神状态';

-- ----------------------------
-- Records of mood
-- ----------------------------
INSERT INTO `mood` VALUES ('1', '1', '2017-03-06', '7', '1488795243', '0', '1', '1');
INSERT INTO `mood` VALUES ('2', '2', '2017-03-07', '1', '1488850394', '0', '1', '1');
INSERT INTO `mood` VALUES ('3', '4', '2017-03-09', '4', '1489027011', '0', '1', '1');
INSERT INTO `mood` VALUES ('4', '5', '2017-03-10', '8', '1489117129', '0', '6', '1');
INSERT INTO `mood` VALUES ('5', '5', '2017-03-10', '7', '1489119813', '0', '1', '1');
INSERT INTO `mood` VALUES ('6', '5', '2017-03-10', '4', '1489125937', '0', '1', '2');
INSERT INTO `mood` VALUES ('7', '1', '2017-03-13', '4', '1489391873', '0', '1', '1');
INSERT INTO `mood` VALUES ('8', '4', '2017-03-23', '7', '1490236455', '0', '1', '2');
INSERT INTO `mood` VALUES ('9', '4', '2017-04-27', '8', '1493283027', '0', '1', '3');
INSERT INTO `mood` VALUES ('10', '5', '2017-05-05', '3', '1493969525', '0', '1', '1');
INSERT INTO `mood` VALUES ('11', '1', '2017-05-08', '8', '1494211832', '0', '1', '1');
INSERT INTO `mood` VALUES ('12', '1', '2017-05-08', '2', '1494212311', '0', '6', '1');
INSERT INTO `mood` VALUES ('13', '4', '2017-05-11', '2', '1494486830', '0', '1', '1');
INSERT INTO `mood` VALUES ('14', '2', '2017-05-16', '5', '1494903336', '0', '1', '1');
INSERT INTO `mood` VALUES ('15', '2', '2017-05-23', '1', '1495506916', '0', '1', '1');
INSERT INTO `mood` VALUES ('16', '2', '2017-05-23', '2', '1495533174', '0', '1', '5');
INSERT INTO `mood` VALUES ('17', '5', '2017-05-26', '3', '1495764826', '0', '1', '1');
INSERT INTO `mood` VALUES ('18', '4', '2017-06-15', '2', '1497491703', '0', '1', '1');

-- ----------------------------
-- Table structure for nation_info
-- ----------------------------
DROP TABLE IF EXISTS `nation_info`;
CREATE TABLE `nation_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `num` tinyint(2) unsigned NOT NULL COMMENT '宗教编码',
  `introduce` varchar(20) NOT NULL COMMENT '宗教描述',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COMMENT='民族表';

-- ----------------------------
-- Records of nation_info
-- ----------------------------
INSERT INTO `nation_info` VALUES ('13', '1', '汉族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('14', '2', '蒙古族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('15', '3', '回族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('16', '4', '藏族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('17', '5', '维吾尔族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('18', '6', '苗族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('19', '7', '彝族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('20', '8', '壮族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('21', '9', '布依族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('22', '10', '朝鲜族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('23', '11', '满族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('24', '12', '侗族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('25', '13', '瑶族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('26', '14', '白族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('27', '15', '土家族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('28', '16', '哈尼族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('29', '17', '哈萨克族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('30', '18', '傣族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('31', '19', '黎族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('32', '20', '傈傈族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('33', '21', '佤族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('34', '22', '畲族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('35', '23', '高山族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('36', '24', '拉祜族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('37', '25', '水族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('38', '26', '东乡族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('39', '27', '纳西族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('40', '28', '景颇族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('41', '29', '柯尔克孜族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('42', '30', '土族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('43', '31', '达翰尔族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('44', '32', '仫佬族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('45', '33', '羌族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('46', '34', '布朗族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('47', '35', '撒拉族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('48', '36', '毛南族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('49', '37', '仡佬族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('50', '38', '锡伯族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('51', '39', '阿昌族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('52', '40', '普米族', '0', '0');
INSERT INTO `nation_info` VALUES ('53', '41', '塔吉克族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('54', '42', '怒族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('55', '43', '乌孜别克族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('56', '44', '俄罗斯族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('57', '45', '鄂温克族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('58', '46', '德昂族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('59', '47', '保安族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('60', '48', '裕固族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('61', '49', '京族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('62', '50', '塔塔尔族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('63', '51', '独龙族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('64', '52', '鄂伦春族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('65', '53', '赫哲族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('66', '54', '门巴族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('67', '55', '珞巴族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('68', '56', '基诺族', '1484895239', '0');
INSERT INTO `nation_info` VALUES ('69', '69', '未知', '1484895239', '0');

-- ----------------------------
-- Table structure for nursing
-- ----------------------------
DROP TABLE IF EXISTS `nursing`;
CREATE TABLE `nursing` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `week` tinyint(4) NOT NULL COMMENT '星期(1.周一、2.周二、3.周三、4.周四、5.周五、6.周六、7.周日)',
  `date` varchar(10) DEFAULT NULL COMMENT '日期',
  `type` varchar(10) NOT NULL COMMENT '洗护类型(1.洗脸、2.假牙清洗、3.口腔护理)',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `at` tinyint(1) NOT NULL COMMENT '时间点(1.早上、2.上午、3.中午、4.下午、5.晚上)',
  `sid` int(10) unsigned NOT NULL COMMENT '关联老年人ID（senior_id）',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='洗漱护理';

-- ----------------------------
-- Records of nursing
-- ----------------------------
INSERT INTO `nursing` VALUES ('1', '1', '2017-03-06', '1,2,3', '1488794611', '0', '1', '1');
INSERT INTO `nursing` VALUES ('2', '2', '2017-03-07', '1,2,3', '1488850404', '0', '1', '1');
INSERT INTO `nursing` VALUES ('3', '4', '2017-03-09', '2', '1489027018', '0', '1', '1');
INSERT INTO `nursing` VALUES ('4', '5', '2017-03-10', '1,2,3', '1489117431', '0', '1', '1');
INSERT INTO `nursing` VALUES ('5', '1', '2017-03-13', '1', '1489389131', '0', '1', '1');
INSERT INTO `nursing` VALUES ('6', '5', '2017-03-17', '3', '1489717104', '0', '1', '1');
INSERT INTO `nursing` VALUES ('7', '4', '2017-03-23', '1,2,3', '1490236504', '0', '1', '2');
INSERT INTO `nursing` VALUES ('8', '1', '2017-05-08', '2', '1494212323', '0', '1', '1');
INSERT INTO `nursing` VALUES ('9', '4', '2017-05-11', '1,2,3', '1494486969', '0', '1', '1');
INSERT INTO `nursing` VALUES ('10', '2', '2017-05-23', '1,2,3', '1495506986', '0', '1', '1');
INSERT INTO `nursing` VALUES ('11', '2', '2017-05-23', '2', '1495533229', '0', '1', '5');
INSERT INTO `nursing` VALUES ('12', '5', '2017-05-26', '3', '1495764944', '0', '1', '1');

-- ----------------------------
-- Table structure for overall
-- ----------------------------
DROP TABLE IF EXISTS `overall`;
CREATE TABLE `overall` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(200) NOT NULL COMMENT '员工考核规则',
  `zs_starttime` varchar(10) DEFAULT NULL COMMENT '早上开始时间',
  `zs_endtime` varchar(10) DEFAULT NULL COMMENT '早上结束时间',
  `sw_starttime` varchar(10) DEFAULT NULL COMMENT '上午开始时间',
  `sw_endtime` varchar(10) DEFAULT NULL COMMENT '上午结束时间',
  `zw_starttime` varchar(10) DEFAULT NULL COMMENT '中午开始时间',
  `zw_endtime` varchar(10) DEFAULT NULL COMMENT '中午结束时间',
  `xw_starttime` varchar(10) DEFAULT NULL COMMENT '下午开始时间',
  `xw_endtime` varchar(10) DEFAULT NULL COMMENT '下午结束时间',
  `ws_starttime` varchar(10) DEFAULT NULL COMMENT '晚上开始时间',
  `ws_endtime` varchar(10) DEFAULT NULL COMMENT '晚上结束时间',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='全局设置表';

-- ----------------------------
-- Records of overall
-- ----------------------------
INSERT INTO `overall` VALUES ('1', '1.提醒事件超过30分钟未响应，扣对应护工20分\r\n2.员工每次参加培训增加5分  \r\n3.员工请假扣5分', '06:00', '09:00', '09:00', '11:00', '11:00', '14:00', '14:00', '18:00', '18:00', '05:00', '1488095951', '1496383026');

-- ----------------------------
-- Table structure for overseer
-- ----------------------------
DROP TABLE IF EXISTS `overseer`;
CREATE TABLE `overseer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '督导ID',
  `status` int(11) DEFAULT '0' COMMENT '状态0为未检查1为未查看2为已查看',
  `department` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `overseer` int(11) DEFAULT NULL,
  `hygiene` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `room` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `toilet` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `checktime` date DEFAULT NULL,
  `sta` int(11) DEFAULT NULL COMMENT '判断是否提交',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of overseer
-- ----------------------------
INSERT INTO `overseer` VALUES ('31', '0', '1', '2017-05-11', null, null, '95', null, '2017-05-11', '1');
INSERT INTO `overseer` VALUES ('32', '0', '1', '2017-05-12', '1', null, '100', null, '2017-05-12', null);
INSERT INTO `overseer` VALUES ('33', '2', '8', '2017-05-15', '1', '100', '100', null, '2017-05-15', '2');
INSERT INTO `overseer` VALUES ('34', '2', '13', '2017-05-22', '1', null, '100', null, '2017-05-22', null);
INSERT INTO `overseer` VALUES ('35', '0', '1', '2017-05-22', null, null, '100', null, '2017-05-22', '1');

-- ----------------------------
-- Table structure for payment_info
-- ----------------------------
DROP TABLE IF EXISTS `payment_info`;
CREATE TABLE `payment_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `num` tinyint(2) unsigned NOT NULL COMMENT '支付方式编码',
  `introduce` varchar(20) NOT NULL COMMENT '支付方式描述',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='支付方式表';

-- ----------------------------
-- Records of payment_info
-- ----------------------------
INSERT INTO `payment_info` VALUES ('1', '1', '日付', '1484898554', '0');
INSERT INTO `payment_info` VALUES ('2', '2', '周付', '1484898554', '0');
INSERT INTO `payment_info` VALUES ('3', '3', '月付', '1484898554', '0');
INSERT INTO `payment_info` VALUES ('4', '4', '季付', '1484898554', '0');
INSERT INTO `payment_info` VALUES ('5', '5', '年付', '1484898554', '0');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `role` int(10) NOT NULL COMMENT '角色',
  `permission` varchar(200) NOT NULL COMMENT '权限',
  `created` int(11) unsigned NOT NULL,
  `updated` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='权限规则表';

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('14', '1', '28,1,7,8,9,29,10,15,16,30,12,13,32,2,3,4,5,6,33,17,18,19,34,20,21,22,35,23,24,25,26,27', '1488420947', '1494835690');
INSERT INTO `permission` VALUES ('15', '2', '28,1,7,8,9,29,10,15,16,30,12,13,32,2,3,4,5,6', '1488420969', '1494835854');
INSERT INTO `permission` VALUES ('16', '3', '28,1,7,8,9,29,10,15,16,34,20,21,22,35,23,24,25,26,27', '1488420993', '1494835863');
INSERT INTO `permission` VALUES ('17', '9', '1,7,5,6', '1490691416', '1494835946');
INSERT INTO `permission` VALUES ('18', '10', '7,8,9,33', '1492487861', '1494835898');
INSERT INTO `permission` VALUES ('19', '5', '34', '1492591621', '0');
INSERT INTO `permission` VALUES ('20', '8', '30', '1492591637', '0');
INSERT INTO `permission` VALUES ('21', '0', '', '1493894955', '0');
INSERT INTO `permission` VALUES ('22', '4', '28,1,7,8,9,29,10,15,16', '1493956750', '0');
INSERT INTO `permission` VALUES ('23', '0', '', '1493969934', '0');

-- ----------------------------
-- Table structure for permission_info
-- ----------------------------
DROP TABLE IF EXISTS `permission_info`;
CREATE TABLE `permission_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `introduce` varchar(30) NOT NULL,
  `url` varchar(50) NOT NULL,
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `role` varchar(30) NOT NULL,
  `num` int(11) unsigned NOT NULL,
  `pid` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='控制器';

-- ----------------------------
-- Records of permission_info
-- ----------------------------
INSERT INTO `permission_info` VALUES ('1', '老人信息', 'admin_senior', '1492485524', '0', '1', '', '1', '28');
INSERT INTO `permission_info` VALUES ('2', '员工记录', 'admin_worker', '1492485524', '0', '1', '', '2', '32');
INSERT INTO `permission_info` VALUES ('3', '培训记录', 'admin_train', '1492485524', '0', '1', '', '3', '32');
INSERT INTO `permission_info` VALUES ('4', '请假记录', 'admin_leave', '1492485524', '0', '1', '', '4', '32');
INSERT INTO `permission_info` VALUES ('5', '考核记录', 'admin_appraise', '1492485524', '0', '1', '', '5', '32');
INSERT INTO `permission_info` VALUES ('6', '离职记录', 'admin_dimission', '1492485524', '0', '1', '', '6', '32');
INSERT INTO `permission_info` VALUES ('7', '老人用药', 'admin_eatmedicine', '1492485524', '0', '1', '', '7', '28');
INSERT INTO `permission_info` VALUES ('8', '日常护理', 'admin_nurse', '1492485524', '0', '1', '', '8', '28');
INSERT INTO `permission_info` VALUES ('9', '离院管理', 'admin_leaved', '1492485524', '0', '1', '', '9', '28');
INSERT INTO `permission_info` VALUES ('10', '配餐记录', 'admin_cater', '1492485524', '0', '1', '', '10', '29');
INSERT INTO `permission_info` VALUES ('11', '新增配餐', 'admin_cater/add', '1492485524', '0', '1', '', '11', '29');
INSERT INTO `permission_info` VALUES ('12', '部门情况列表', 'admin_overseer', '1492485524', '0', '1', '', '12', '30');
INSERT INTO `permission_info` VALUES ('13', '督查评分详情', 'admin_overseer/add', '1492485524', '0', '1', '', '13', '30');
INSERT INTO `permission_info` VALUES ('14', '申请配货', 'admin_apply', '1492485524', '0', '1', '', '14', '31');
INSERT INTO `permission_info` VALUES ('15', '配货记录', 'admin_apply/list', '1492485524', '0', '1', '', '15', '31');
INSERT INTO `permission_info` VALUES ('16', '申请报修', 'admin_apply/report', '1492485524', '0', '1', '', '16', '31');
INSERT INTO `permission_info` VALUES ('17', '员工工资', 'admin_wages', '1492485524', '0', '1', '', '17', '33');
INSERT INTO `permission_info` VALUES ('18', '老人缴费结算', 'admin_elderlypayment', '1492485524', '0', '1', '', '18', '33');
INSERT INTO `permission_info` VALUES ('19', '老人出院结算', 'admin_settlement', '1492485524', '0', '1', '', '19', '33');
INSERT INTO `permission_info` VALUES ('20', '采购清单', 'admin_purchases', '1492485524', '0', '1', '', '20', '34');
INSERT INTO `permission_info` VALUES ('21', '配送清单', 'admin_dispatching', '1492485524', '0', '1', '', '21', '34');
INSERT INTO `permission_info` VALUES ('22', '医疗器械', 'admin_apparatus', '1492485524', '0', '1', '', '22', '34');
INSERT INTO `permission_info` VALUES ('23', '医药库', 'admin_medicine', '1492485524', '0', '1', '', '23', '35');
INSERT INTO `permission_info` VALUES ('24', '全局设置', 'admin_overall', '1492485524', '0', '1', '', '24', '35');
INSERT INTO `permission_info` VALUES ('25', '账号权限', 'admin_admin', '1492485524', '0', '1', '', '25', '35');
INSERT INTO `permission_info` VALUES ('26', '角色管理', 'admin_permission', '1492485524', '0', '1', '', '26', '35');
INSERT INTO `permission_info` VALUES ('27', '分院管理', 'admin_departments', '1492485524', '0', '1', '', '27', '35');
INSERT INTO `permission_info` VALUES ('28', '老人管理', 'senior', '1492485524', '0', '1', '', '28', '0');
INSERT INTO `permission_info` VALUES ('29', '配餐管理', 'cater', '1492485524', '0', '1', '', '29', '0');
INSERT INTO `permission_info` VALUES ('30', '督导管理', 'overseer', '1492485524', '0', '1', '', '30', '0');
INSERT INTO `permission_info` VALUES ('31', '申请管理', 'apply', '1492485524', '0', '1', '', '31', '0');
INSERT INTO `permission_info` VALUES ('32', '员工管理', 'worker', '1492485524', '0', '1', '', '32', '0');
INSERT INTO `permission_info` VALUES ('33', '财务管理', 'financial', '1492485524', '0', '1', '', '33', '0');
INSERT INTO `permission_info` VALUES ('34', '后勤管理', 'logistics', '1492485524', '0', '1', '', '34', '0');
INSERT INTO `permission_info` VALUES ('35', '系统设置', 'system', '1492485524', '0', '1', '', '35', '0');

-- ----------------------------
-- Table structure for plan
-- ----------------------------
DROP TABLE IF EXISTS `plan`;
CREATE TABLE `plan` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(11) unsigned NOT NULL COMMENT '关联老年人ID',
  `pi_id` int(10) unsigned NOT NULL COMMENT '关联计划详情表ID',
  `plan_type` tinyint(1) unsigned NOT NULL COMMENT '提醒类型(1.铃声、2.震动)',
  `event_type` tinyint(2) unsigned NOT NULL COMMENT '事件类型(1.血压、2.血糖、3.体温、4.精神状态、5.皮肤状态、6.洗漱护理、7.胰岛素、8.用饭、9.喝水、10.用药、11.大便、12.小便、13.加餐、14.仪表、15.康复干预、16.床铺管理、17.衣物换洗、18.探视、19.午睡、20.餐前准备、21.晚餐、22.临睡用药、23.睡眠情况)',
  `sw_id` int(11) unsigned DEFAULT NULL COMMENT '关联护工ID',
  `status` tinyint(1) unsigned NOT NULL COMMENT '是否提醒(1.否、2.是)',
  `startdate` varchar(10) DEFAULT NULL COMMENT '起始日期',
  `enddate` varchar(10) DEFAULT NULL COMMENT '结束日期',
  `starttime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `respond_time` time NOT NULL COMMENT '响应时间点',
  `description` varchar(255) NOT NULL COMMENT '事件描述',
  `remarks` varchar(255) NOT NULL COMMENT '备注',
  `at` tinyint(1) unsigned NOT NULL COMMENT '时间段(1.早上、2.上午、3.中午、4.下午、5.晚上)',
  `is_show` tinyint(1) unsigned NOT NULL COMMENT '是否显示(1.是、2.否)',
  `created` int(11) unsigned NOT NULL,
  `updated` int(11) unsigned NOT NULL,
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否删除(1.正常、2.已删除)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8 COMMENT='事件计划表';

-- ----------------------------
-- Records of plan
-- ----------------------------
INSERT INTO `plan` VALUES ('1', '122', '1', '1', '2', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请为老人测量血糖', '', '1', '1', '1497433359', '1497433494', '1');
INSERT INTO `plan` VALUES ('2', '122', '2', '1', '1', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请为老人测量血压', '', '1', '1', '1497433359', '1497433494', '1');
INSERT INTO `plan` VALUES ('3', '122', '3', '1', '3', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请为老人测量体温', '', '1', '1', '1497433359', '1497433494', '1');
INSERT INTO `plan` VALUES ('4', '122', '4', '1', '4', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请检查老人精神状态', '', '1', '1', '1497433359', '1497433494', '1');
INSERT INTO `plan` VALUES ('5', '122', '5', '1', '5', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请检查老人皮肤状态', '', '1', '1', '1497433359', '1497433494', '1');
INSERT INTO `plan` VALUES ('6', '122', '6', '1', '6', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请为老人洗漱', '', '1', '1', '1497433359', '1497433494', '1');
INSERT INTO `plan` VALUES ('7', '122', '7', '1', '7', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请在饭前二十分钟为老人注射', '', '1', '1', '1497433359', '1497433494', '1');
INSERT INTO `plan` VALUES ('8', '122', '8', '1', '8', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请喂老人吃饭', '', '1', '1', '1497433359', '1497433494', '1');
INSERT INTO `plan` VALUES ('9', '122', '10', '1', '10', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请喂老人吃药', '', '1', '1', '1497433359', '1497433494', '1');
INSERT INTO `plan` VALUES ('10', '122', '11', '1', '11', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请检查老人大便情况', '', '1', '1', '1497433359', '1497433494', '1');
INSERT INTO `plan` VALUES ('11', '122', '12', '1', '12', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请检查老人小便情况', '', '1', '1', '1497433359', '1497433494', '1');
INSERT INTO `plan` VALUES ('12', '122', '13', '1', '13', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请喂老人加餐食物', '', '2', '1', '1497433359', '1497433494', '1');
INSERT INTO `plan` VALUES ('13', '122', '14', '1', '14', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请为老人提供整理仪表', '', '2', '1', '1497433359', '1497433494', '1');
INSERT INTO `plan` VALUES ('14', '122', '15', '1', '15', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请帮助老人进行康复干预', '', '2', '1', '1497433359', '1497433494', '1');
INSERT INTO `plan` VALUES ('15', '122', '16', '1', '16', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请清扫/换洗老人床上用品', '', '2', '1', '1497433359', '1497433494', '1');
INSERT INTO `plan` VALUES ('16', '122', '17', '1', '17', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请为老人换洗衣物', '', '2', '1', '1497433359', '1497433494', '1');
INSERT INTO `plan` VALUES ('17', '122', '18', '1', '18', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请记录老人的探视情况', '', '2', '1', '1497433359', '1497433494', '1');
INSERT INTO `plan` VALUES ('18', '122', '19', '1', '11', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请记录老人大便情况', '', '2', '1', '1497433359', '1497433494', '1');
INSERT INTO `plan` VALUES ('19', '122', '20', '1', '12', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请记录老人小便情况', '', '2', '1', '1497433359', '1497433494', '1');
INSERT INTO `plan` VALUES ('20', '122', '21', '1', '7', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请在饭前二十分钟为老人注射', '', '3', '1', '1497433359', '1497433494', '1');
INSERT INTO `plan` VALUES ('21', '122', '22', '1', '8', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请喂老人吃饭', '', '3', '1', '1497433359', '1497433494', '1');
INSERT INTO `plan` VALUES ('22', '122', '23', '1', '10', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请喂老人吃药', '', '3', '1', '1497433359', '1497433494', '1');
INSERT INTO `plan` VALUES ('23', '122', '24', '1', '19', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请协助老人进行午睡', '', '3', '1', '1497433359', '1497433494', '1');
INSERT INTO `plan` VALUES ('24', '122', '0', '1', '9', '0', '1', '2017-06-14', '2017-06-14', '1497442380', '1497442380', '20:13:00', '请喂老人喝水', '', '0', '0', '1497433359', '1497433494', '1');
INSERT INTO `plan` VALUES ('25', '122', '35', '1', '7', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请在饭前二十分钟为老人注射', '', '5', '1', '1497433359', '1497433494', '1');
INSERT INTO `plan` VALUES ('26', '122', '36', '1', '8', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请喂老人吃晚餐', '', '5', '1', '1497433359', '1497433494', '1');
INSERT INTO `plan` VALUES ('27', '122', '37', '1', '10', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请喂老人吃药', '', '5', '1', '1497433359', '1497433494', '1');
INSERT INTO `plan` VALUES ('28', '122', '38', '1', '22', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请老人睡前吃药', '', '5', '1', '1497433359', '1497433494', '1');
INSERT INTO `plan` VALUES ('29', '122', '39', '1', '21', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请记录老人睡眠情况', '', '5', '1', '1497433359', '1497433494', '1');
INSERT INTO `plan` VALUES ('30', '122', '40', '1', '11', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请检查老人大便情况', '', '5', '1', '1497433359', '1497433494', '1');
INSERT INTO `plan` VALUES ('31', '122', '41', '1', '12', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请检查老人小便情况', '', '5', '1', '1497433359', '1497433494', '1');
INSERT INTO `plan` VALUES ('32', '122', '25', '1', '13', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请喂老人加餐食物', '', '4', '1', '1497433360', '1497433494', '1');
INSERT INTO `plan` VALUES ('33', '122', '26', '1', '14', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请为老人提供整理仪表', '', '4', '1', '1497433360', '1497433494', '1');
INSERT INTO `plan` VALUES ('34', '122', '27', '1', '15', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请帮助老人进行康复干预', '', '4', '1', '1497433360', '1497433494', '1');
INSERT INTO `plan` VALUES ('35', '122', '28', '1', '16', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请清扫/换洗老人床上用品', '', '4', '1', '1497433360', '1497433494', '1');
INSERT INTO `plan` VALUES ('36', '122', '29', '1', '17', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请为老人换洗衣物', '', '4', '1', '1497433360', '1497433494', '1');
INSERT INTO `plan` VALUES ('37', '122', '30', '1', '18', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请记录老人的探视情况', '', '4', '1', '1497433360', '1497433494', '1');
INSERT INTO `plan` VALUES ('38', '122', '31', '1', '11', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请记录老人的大便情况', '', '4', '1', '1497433360', '1497433494', '1');
INSERT INTO `plan` VALUES ('39', '122', '32', '1', '12', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请检查老人小便情况', '', '4', '1', '1497433360', '1497433494', '1');
INSERT INTO `plan` VALUES ('40', '122', '0', '0', '0', '0', '0', '', '', '1497433360', '1497433360', '00:00:00', '', '', '0', '0', '1497433360', '0', '1');
INSERT INTO `plan` VALUES ('41', '122', '0', '0', '0', '0', '0', '', '', '1497433402', '1497433402', '00:00:00', '', '', '0', '0', '1497433402', '0', '1');
INSERT INTO `plan` VALUES ('42', '122', '0', '0', '0', '0', '0', '', '', '1497433419', '1497433419', '00:00:00', '', '', '0', '0', '1497433419', '0', '1');
INSERT INTO `plan` VALUES ('43', '122', '0', '1', '9', '0', '1', '2017-06-14', '2017-06-14', '1497435180', '1497435180', '18:13:00', '请喂老人喝水', '', '0', '0', '1497433444', '1497433494', '1');
INSERT INTO `plan` VALUES ('44', '122', '0', '0', '0', '0', '0', '', '', '1497433444', '1497433444', '00:00:00', '', '', '0', '0', '1497433444', '0', '1');
INSERT INTO `plan` VALUES ('45', '122', '0', '1', '23', '0', '1', '2017-06-14', '2017-06-14', '1497440640', '1497440640', '19:44:00', '请帮助老人翻身', '', '0', '0', '1497433483', '1497433494', '1');
INSERT INTO `plan` VALUES ('46', '120', '1', '1', '2', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请为老人测量血糖', '', '1', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('47', '120', '2', '1', '1', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请为老人测量血压', '', '1', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('48', '120', '3', '1', '3', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请为老人测量体温', '', '1', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('49', '120', '4', '1', '4', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请检查老人精神状态', '', '1', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('50', '120', '5', '1', '5', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请检查老人皮肤状态', '', '1', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('51', '120', '6', '1', '6', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请为老人洗漱', '', '1', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('52', '120', '7', '1', '7', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请在饭前二十分钟为老人注射', '', '1', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('53', '120', '8', '1', '8', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请喂老人吃饭', '', '1', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('54', '120', '10', '1', '10', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请喂老人吃药', '', '1', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('55', '120', '11', '1', '11', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请检查老人大便情况', '', '1', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('56', '120', '12', '1', '12', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请检查老人小便情况', '', '1', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('57', '120', '13', '1', '13', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请喂老人加餐食物', '', '2', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('58', '120', '14', '1', '14', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请为老人提供整理仪表', '', '2', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('59', '120', '15', '1', '15', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请帮助老人进行康复干预', '', '2', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('60', '120', '16', '1', '16', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请清扫/换洗老人床上用品', '', '2', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('61', '120', '17', '1', '17', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请为老人换洗衣物', '', '2', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('62', '120', '18', '1', '18', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请记录老人的探视情况', '', '2', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('63', '120', '19', '1', '11', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请记录老人大便情况', '', '2', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('64', '120', '20', '1', '12', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请记录老人小便情况', '', '2', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('65', '120', '21', '1', '7', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请在饭前二十分钟为老人注射', '', '3', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('66', '120', '22', '1', '8', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请喂老人吃饭', '', '3', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('67', '120', '23', '1', '10', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请喂老人吃药', '', '3', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('68', '120', '24', '1', '19', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请协助老人进行午睡', '', '3', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('69', '120', '25', '1', '13', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请喂老人加餐食物', '', '4', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('70', '120', '26', '1', '14', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请为老人提供整理仪表', '', '4', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('71', '120', '27', '1', '15', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请帮助老人进行康复干预', '', '4', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('72', '120', '28', '1', '16', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请清扫/换洗老人床上用品', '', '4', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('73', '120', '29', '1', '17', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请为老人换洗衣物', '', '4', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('74', '120', '30', '1', '18', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请记录老人的探视情况', '', '4', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('75', '120', '31', '1', '11', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请记录老人的大便情况', '', '4', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('76', '120', '32', '1', '12', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请检查老人小便情况', '', '4', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('77', '120', '35', '1', '7', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请在饭前二十分钟为老人注射', '', '5', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('78', '120', '36', '1', '8', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请喂老人吃晚餐', '', '5', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('79', '120', '37', '1', '10', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请喂老人吃药', '', '5', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('80', '120', '38', '1', '22', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请老人睡前吃药', '', '5', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('81', '120', '39', '1', '21', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请记录老人睡眠情况', '', '5', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('82', '120', '40', '1', '11', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请检查老人大便情况', '', '5', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('83', '120', '41', '1', '12', '0', '1', '', '', '1497433780', '1497433780', '00:00:00', '请检查老人小便情况', '', '5', '1', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('84', '120', '0', '1', '9', '0', '1', '2017-06-14', '2017-06-16', '1497440880', '1497613680', '19:48:00', '请喂老人喝水', '', '0', '0', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('85', '120', '0', '0', '0', '0', '0', '', '', '1497433780', '1497433780', '00:00:00', '', '', '0', '0', '1497433780', '0', '1');
INSERT INTO `plan` VALUES ('86', '121', '1', '1', '2', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请为老人测量血糖', '', '1', '1', '1497433802', '1497433920', '1');
INSERT INTO `plan` VALUES ('87', '121', '2', '1', '1', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请为老人测量血压', '', '1', '1', '1497433802', '1497433920', '1');
INSERT INTO `plan` VALUES ('88', '121', '3', '1', '3', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请为老人测量体温', '', '1', '1', '1497433802', '1497433920', '1');
INSERT INTO `plan` VALUES ('89', '121', '4', '1', '4', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请检查老人精神状态', '', '1', '1', '1497433802', '1497433920', '1');
INSERT INTO `plan` VALUES ('90', '121', '5', '1', '5', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请检查老人皮肤状态', '', '1', '1', '1497433802', '1497433920', '1');
INSERT INTO `plan` VALUES ('91', '121', '6', '1', '6', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请为老人洗漱', '', '1', '1', '1497433802', '1497433920', '1');
INSERT INTO `plan` VALUES ('92', '121', '7', '1', '7', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请在饭前二十分钟为老人注射', '', '1', '1', '1497433802', '1497433920', '1');
INSERT INTO `plan` VALUES ('93', '121', '8', '1', '8', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请喂老人吃饭', '', '1', '1', '1497433802', '1497433920', '1');
INSERT INTO `plan` VALUES ('94', '121', '10', '1', '10', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请喂老人吃药', '', '1', '1', '1497433802', '1497433920', '1');
INSERT INTO `plan` VALUES ('95', '121', '11', '1', '11', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请检查老人大便情况', '', '1', '1', '1497433802', '1497433920', '1');
INSERT INTO `plan` VALUES ('96', '121', '12', '1', '12', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请检查老人小便情况', '', '1', '1', '1497433802', '1497433920', '1');
INSERT INTO `plan` VALUES ('97', '121', '13', '1', '13', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请喂老人加餐食物', '', '2', '1', '1497433803', '1497433920', '1');
INSERT INTO `plan` VALUES ('98', '121', '14', '1', '14', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请为老人提供整理仪表', '', '2', '1', '1497433803', '1497433920', '1');
INSERT INTO `plan` VALUES ('99', '121', '15', '1', '15', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请帮助老人进行康复干预', '', '2', '1', '1497433803', '1497433920', '1');
INSERT INTO `plan` VALUES ('100', '121', '16', '1', '16', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请清扫/换洗老人床上用品', '', '2', '1', '1497433803', '1497433920', '1');
INSERT INTO `plan` VALUES ('101', '121', '17', '1', '17', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请为老人换洗衣物', '', '2', '1', '1497433803', '1497433920', '1');
INSERT INTO `plan` VALUES ('102', '121', '18', '1', '18', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请记录老人的探视情况', '', '2', '1', '1497433803', '1497433920', '1');
INSERT INTO `plan` VALUES ('103', '121', '19', '1', '11', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请记录老人大便情况', '', '2', '1', '1497433803', '1497433920', '1');
INSERT INTO `plan` VALUES ('104', '121', '20', '1', '12', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请记录老人小便情况', '', '2', '1', '1497433803', '1497433920', '1');
INSERT INTO `plan` VALUES ('105', '121', '21', '1', '7', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请在饭前二十分钟为老人注射', '', '3', '1', '1497433803', '1497433921', '1');
INSERT INTO `plan` VALUES ('106', '121', '22', '1', '8', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请喂老人吃饭', '', '3', '1', '1497433803', '1497433921', '1');
INSERT INTO `plan` VALUES ('107', '121', '23', '1', '10', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请喂老人吃药', '', '3', '1', '1497433803', '1497433921', '1');
INSERT INTO `plan` VALUES ('108', '121', '24', '1', '19', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请协助老人进行午睡', '', '3', '1', '1497433803', '1497433921', '1');
INSERT INTO `plan` VALUES ('109', '121', '25', '1', '13', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请喂老人加餐食物', '', '4', '1', '1497433803', '1497433921', '1');
INSERT INTO `plan` VALUES ('110', '121', '26', '1', '14', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请为老人提供整理仪表', '', '4', '1', '1497433803', '1497433921', '1');
INSERT INTO `plan` VALUES ('111', '121', '27', '1', '15', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请帮助老人进行康复干预', '', '4', '1', '1497433803', '1497433921', '1');
INSERT INTO `plan` VALUES ('112', '121', '28', '1', '16', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请清扫/换洗老人床上用品', '', '4', '1', '1497433803', '1497433921', '1');
INSERT INTO `plan` VALUES ('113', '121', '29', '1', '17', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请为老人换洗衣物', '', '4', '1', '1497433803', '1497433921', '1');
INSERT INTO `plan` VALUES ('114', '121', '30', '1', '18', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请记录老人的探视情况', '', '4', '1', '1497433803', '1497433921', '1');
INSERT INTO `plan` VALUES ('115', '121', '31', '1', '11', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请记录老人的大便情况', '', '4', '1', '1497433803', '1497433921', '1');
INSERT INTO `plan` VALUES ('116', '121', '32', '1', '12', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请检查老人小便情况', '', '4', '1', '1497433803', '1497433921', '1');
INSERT INTO `plan` VALUES ('117', '121', '35', '1', '7', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请在饭前二十分钟为老人注射', '', '5', '1', '1497433803', '1497433921', '1');
INSERT INTO `plan` VALUES ('118', '121', '36', '1', '8', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请喂老人吃晚餐', '', '5', '1', '1497433803', '1497433921', '1');
INSERT INTO `plan` VALUES ('119', '121', '37', '1', '10', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请喂老人吃药', '', '5', '1', '1497433803', '1497433921', '1');
INSERT INTO `plan` VALUES ('120', '121', '38', '1', '22', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请老人睡前吃药', '', '5', '1', '1497433803', '1497433921', '1');
INSERT INTO `plan` VALUES ('121', '121', '39', '1', '21', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请记录老人睡眠情况', '', '5', '1', '1497433803', '1497433921', '1');
INSERT INTO `plan` VALUES ('122', '121', '40', '1', '11', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请检查老人大便情况', '', '5', '1', '1497433803', '1497433921', '1');
INSERT INTO `plan` VALUES ('123', '121', '41', '1', '12', '0', '1', '', '', '1497369600', '1497369600', '00:00:00', '请检查老人小便情况', '', '5', '1', '1497433803', '1497433921', '1');
INSERT INTO `plan` VALUES ('124', '121', '0', '1', '9', '0', '1', '2017-06-13', '2017-06-15', '1497349140', '1497521940', '18:19:00', '请喂老人喝水', '', '0', '0', '1497433803', '1497433921', '1');
INSERT INTO `plan` VALUES ('125', '121', '0', '0', '0', '0', '0', '', '', '1497433803', '1497433803', '00:00:00', '', '', '0', '0', '1497433803', '0', '1');
INSERT INTO `plan` VALUES ('126', '121', '0', '1', '9', '0', '1', '2017-06-06', '2017-06-09', '1496744400', '1497003600', '18:20:00', '请喂老人喝水', '', '0', '0', '1497433822', '1497433921', '1');
INSERT INTO `plan` VALUES ('127', '121', '0', '0', '0', '0', '0', '', '', '1497433822', '1497433822', '00:00:00', '', '', '0', '0', '1497433822', '0', '1');
INSERT INTO `plan` VALUES ('128', '121', '0', '0', '0', '0', '0', '', '', '1497433842', '1497433842', '00:00:00', '', '', '0', '0', '1497433842', '0', '1');
INSERT INTO `plan` VALUES ('129', '121', '0', '1', '23', '0', '1', '2017-06-13', '2017-06-15', '1497354660', '1497527460', '19:51:00', '请帮助老人翻身', '', '0', '0', '1497433877', '1497433921', '1');
INSERT INTO `plan` VALUES ('130', '121', '0', '1', '23', '0', '1', '2017-06-19', '2017-06-20', '1497874860', '1497961260', '20:21:00', '请帮助老人翻身', '', '0', '0', '1497433921', '0', '1');
INSERT INTO `plan` VALUES ('131', '123', '1', '1', '2', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请为老人测量血糖', '', '1', '1', '1497491297', '1497507199', '1');
INSERT INTO `plan` VALUES ('132', '123', '2', '1', '1', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请为老人测量血压', '', '1', '1', '1497491297', '1497507199', '1');
INSERT INTO `plan` VALUES ('133', '123', '3', '1', '3', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请为老人测量体温', '', '1', '1', '1497491297', '1497507199', '1');
INSERT INTO `plan` VALUES ('134', '123', '4', '1', '4', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请检查老人精神状态', '', '1', '1', '1497491297', '1497507199', '1');
INSERT INTO `plan` VALUES ('135', '123', '5', '1', '5', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请检查老人皮肤状态', '', '1', '1', '1497491297', '1497507199', '1');
INSERT INTO `plan` VALUES ('136', '123', '6', '1', '6', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请为老人洗漱', '', '1', '1', '1497491297', '1497507199', '1');
INSERT INTO `plan` VALUES ('137', '123', '7', '1', '7', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请在饭前二十分钟为老人注射', '', '1', '1', '1497491297', '1497507199', '1');
INSERT INTO `plan` VALUES ('138', '123', '8', '1', '8', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请喂老人吃饭', '', '1', '1', '1497491297', '1497507199', '1');
INSERT INTO `plan` VALUES ('139', '123', '10', '1', '10', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请喂老人吃药', '', '1', '1', '1497491297', '1497507199', '1');
INSERT INTO `plan` VALUES ('140', '123', '11', '1', '11', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请检查老人大便情况', '', '1', '1', '1497491297', '1497507199', '1');
INSERT INTO `plan` VALUES ('141', '123', '12', '1', '12', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请检查老人小便情况', '', '1', '1', '1497491297', '1497507199', '1');
INSERT INTO `plan` VALUES ('142', '123', '13', '1', '13', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请喂老人加餐食物', '', '2', '1', '1497491298', '1497507199', '1');
INSERT INTO `plan` VALUES ('143', '123', '14', '1', '14', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请为老人提供整理仪表', '', '2', '1', '1497491298', '1497507199', '1');
INSERT INTO `plan` VALUES ('144', '123', '15', '1', '15', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请帮助老人进行康复干预', '', '2', '1', '1497491298', '1497507199', '1');
INSERT INTO `plan` VALUES ('145', '123', '16', '1', '16', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请清扫/换洗老人床上用品', '', '2', '1', '1497491298', '1497507199', '1');
INSERT INTO `plan` VALUES ('146', '123', '17', '1', '17', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请为老人换洗衣物', '', '2', '1', '1497491298', '1497507199', '1');
INSERT INTO `plan` VALUES ('147', '123', '18', '1', '18', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请记录老人的探视情况', '', '2', '1', '1497491298', '1497507199', '1');
INSERT INTO `plan` VALUES ('148', '123', '19', '1', '11', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请记录老人大便情况', '', '2', '1', '1497491298', '1497507199', '1');
INSERT INTO `plan` VALUES ('149', '123', '20', '1', '12', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请记录老人小便情况', '', '2', '1', '1497491298', '1497507199', '1');
INSERT INTO `plan` VALUES ('150', '123', '21', '1', '7', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请在饭前二十分钟为老人注射', '', '3', '1', '1497491298', '1497507199', '1');
INSERT INTO `plan` VALUES ('151', '123', '22', '1', '8', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请喂老人吃饭', '', '3', '1', '1497491298', '1497507199', '1');
INSERT INTO `plan` VALUES ('152', '123', '23', '1', '10', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请喂老人吃药', '', '3', '1', '1497491298', '1497507199', '1');
INSERT INTO `plan` VALUES ('153', '123', '24', '1', '19', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请协助老人进行午睡', '', '3', '1', '1497491298', '1497507199', '1');
INSERT INTO `plan` VALUES ('154', '123', '25', '1', '13', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请喂老人加餐食物', '', '4', '1', '1497491298', '1497507199', '1');
INSERT INTO `plan` VALUES ('155', '123', '26', '1', '14', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请为老人提供整理仪表', '', '4', '1', '1497491298', '1497507199', '1');
INSERT INTO `plan` VALUES ('156', '123', '27', '1', '15', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请帮助老人进行康复干预', '', '4', '1', '1497491298', '1497507199', '1');
INSERT INTO `plan` VALUES ('157', '123', '28', '1', '16', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请清扫/换洗老人床上用品', '', '4', '1', '1497491298', '1497507199', '1');
INSERT INTO `plan` VALUES ('158', '123', '29', '1', '17', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请为老人换洗衣物', '', '4', '1', '1497491298', '1497507199', '1');
INSERT INTO `plan` VALUES ('159', '123', '30', '1', '18', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请记录老人的探视情况', '', '4', '1', '1497491298', '1497507199', '1');
INSERT INTO `plan` VALUES ('160', '123', '31', '1', '11', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请记录老人的大便情况', '', '4', '1', '1497491298', '1497507199', '1');
INSERT INTO `plan` VALUES ('161', '123', '32', '1', '12', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请检查老人小便情况', '', '4', '1', '1497491298', '1497507199', '1');
INSERT INTO `plan` VALUES ('162', '123', '35', '1', '7', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请在饭前二十分钟为老人注射', '', '5', '1', '1497491298', '1497507199', '1');
INSERT INTO `plan` VALUES ('163', '123', '36', '1', '8', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请喂老人吃晚餐', '', '5', '1', '1497491298', '1497507199', '1');
INSERT INTO `plan` VALUES ('164', '123', '37', '1', '10', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请喂老人吃药', '', '5', '1', '1497491298', '1497507199', '1');
INSERT INTO `plan` VALUES ('165', '123', '38', '1', '22', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请老人睡前吃药', '', '5', '1', '1497491298', '1497507199', '1');
INSERT INTO `plan` VALUES ('166', '123', '39', '1', '21', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请记录老人睡眠情况', '', '5', '1', '1497491298', '1497507199', '1');
INSERT INTO `plan` VALUES ('167', '123', '40', '1', '11', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请检查老人大便情况', '', '5', '1', '1497491298', '1497507199', '1');
INSERT INTO `plan` VALUES ('168', '123', '41', '1', '12', '0', '1', '', '', '1497456000', '1497456000', '00:00:00', '请检查老人小便情况', '', '5', '1', '1497491298', '1497507199', '1');
INSERT INTO `plan` VALUES ('169', '123', '0', '1', '9', '0', '1', '2017-06-14', '2017-06-15', '1497406680', '1497493080', '10:18:00', '请喂老人喝水', '', '0', '0', '1497491298', '1497507199', '1');
INSERT INTO `plan` VALUES ('170', '123', '0', '0', '0', '0', '0', '', '', '1497491298', '1497491298', '00:00:00', '', '', '0', '0', '1497491298', '0', '1');
INSERT INTO `plan` VALUES ('171', '123', '0', '0', '0', '0', '0', '', '', '1497491311', '1497491311', '00:00:00', '', '', '0', '0', '1497491311', '0', '1');
INSERT INTO `plan` VALUES ('172', '123', '0', '1', '9', '0', '1', '2017-06-15', '2017-06-15', '1497500280', '1497500280', '12:18:00', '请喂老人喝水', '', '0', '0', '1497491330', '1497507199', '1');
INSERT INTO `plan` VALUES ('173', '123', '0', '0', '0', '0', '0', '', '', '1497491330', '1497491330', '00:00:00', '', '', '0', '0', '1497491330', '0', '1');
INSERT INTO `plan` VALUES ('174', '123', '0', '1', '23', '0', '1', '2017-06-15', '2017-06-15', '1497498480', '1497498480', '11:48:00', '请帮助老人翻身', '', '0', '0', '1497491349', '1497507199', '1');
INSERT INTO `plan` VALUES ('175', '1', '1', '1', '2', '34', '1', '', '', '1497491590', '1497491590', '00:00:00', '请为老人测量血糖', '', '1', '1', '1497491590', '0', '1');
INSERT INTO `plan` VALUES ('176', '1', '2', '1', '1', '34', '1', '', '', '1497491590', '1497491590', '00:00:00', '请为老人测量血压', '', '1', '1', '1497491590', '0', '1');
INSERT INTO `plan` VALUES ('177', '1', '3', '1', '3', '34', '1', '', '', '1497491590', '1497491590', '00:00:00', '请为老人测量体温', '', '1', '1', '1497491590', '0', '1');
INSERT INTO `plan` VALUES ('178', '1', '4', '1', '4', '34', '1', '', '', '1497491590', '1497491590', '00:00:00', '请检查老人精神状态', '', '1', '1', '1497491590', '0', '1');
INSERT INTO `plan` VALUES ('179', '1', '5', '1', '5', '34', '1', '', '', '1497491590', '1497491590', '00:00:00', '请检查老人皮肤状态', '', '1', '1', '1497491590', '0', '1');
INSERT INTO `plan` VALUES ('180', '1', '6', '1', '6', '34', '1', '', '', '1497491590', '1497491590', '00:00:00', '请为老人洗漱', '', '1', '1', '1497491590', '0', '1');
INSERT INTO `plan` VALUES ('181', '1', '7', '1', '7', '34', '1', '', '', '1497491590', '1497491590', '00:00:00', '请在饭前二十分钟为老人注射', '', '1', '1', '1497491590', '0', '1');
INSERT INTO `plan` VALUES ('182', '1', '8', '1', '8', '34', '1', '', '', '1497491590', '1497491590', '00:00:00', '请喂老人吃饭', '', '1', '1', '1497491590', '0', '1');
INSERT INTO `plan` VALUES ('183', '1', '10', '1', '10', '34', '1', '', '', '1497491590', '1497491590', '00:00:00', '请喂老人吃药', '', '1', '1', '1497491590', '0', '1');
INSERT INTO `plan` VALUES ('184', '1', '11', '1', '11', '34', '1', '', '', '1497491590', '1497491590', '00:00:00', '请检查老人大便情况', '', '1', '1', '1497491590', '0', '1');
INSERT INTO `plan` VALUES ('185', '1', '12', '1', '12', '34', '1', '', '', '1497491590', '1497491590', '00:00:00', '请检查老人小便情况', '', '1', '1', '1497491590', '0', '1');
INSERT INTO `plan` VALUES ('186', '1', '13', '1', '13', '34', '1', '', '', '1497491591', '1497491591', '00:00:00', '请喂老人加餐食物', '', '2', '1', '1497491591', '0', '1');
INSERT INTO `plan` VALUES ('187', '1', '14', '1', '14', '34', '1', '', '', '1497491591', '1497491591', '00:00:00', '请为老人提供整理仪表', '', '2', '1', '1497491591', '0', '1');
INSERT INTO `plan` VALUES ('188', '1', '15', '1', '15', '34', '1', '', '', '1497491591', '1497491591', '00:00:00', '请帮助老人进行康复干预', '', '2', '1', '1497491591', '0', '1');
INSERT INTO `plan` VALUES ('189', '1', '16', '1', '16', '34', '1', '', '', '1497491591', '1497491591', '00:00:00', '请清扫/换洗老人床上用品', '', '2', '1', '1497491591', '0', '1');
INSERT INTO `plan` VALUES ('190', '1', '17', '1', '17', '34', '1', '', '', '1497491591', '1497491591', '00:00:00', '请为老人换洗衣物', '', '2', '1', '1497491591', '0', '1');
INSERT INTO `plan` VALUES ('191', '1', '18', '1', '18', '34', '1', '', '', '1497491591', '1497491591', '00:00:00', '请记录老人的探视情况', '', '2', '1', '1497491591', '0', '1');
INSERT INTO `plan` VALUES ('192', '1', '19', '1', '11', '34', '1', '', '', '1497491591', '1497491591', '00:00:00', '请记录老人大便情况', '', '2', '1', '1497491591', '0', '1');
INSERT INTO `plan` VALUES ('193', '1', '20', '1', '12', '34', '1', '', '', '1497491591', '1497491591', '00:00:00', '请记录老人小便情况', '', '2', '1', '1497491591', '0', '1');
INSERT INTO `plan` VALUES ('194', '1', '21', '1', '7', '34', '1', '', '', '1497491591', '1497491591', '00:00:00', '请在饭前二十分钟为老人注射', '', '3', '1', '1497491591', '0', '1');
INSERT INTO `plan` VALUES ('195', '1', '22', '1', '8', '34', '1', '', '', '1497491591', '1497491591', '00:00:00', '请喂老人吃饭', '', '3', '1', '1497491591', '0', '1');
INSERT INTO `plan` VALUES ('196', '1', '23', '1', '10', '34', '1', '', '', '1497491591', '1497491591', '00:00:00', '请喂老人吃药', '', '3', '1', '1497491591', '0', '1');
INSERT INTO `plan` VALUES ('197', '1', '24', '1', '19', '34', '1', '', '', '1497491591', '1497491591', '00:00:00', '请协助老人进行午睡', '', '3', '1', '1497491591', '0', '1');
INSERT INTO `plan` VALUES ('198', '1', '25', '1', '13', '34', '1', '', '', '1497491591', '1497491591', '00:00:00', '请喂老人加餐食物', '', '4', '1', '1497491591', '0', '1');
INSERT INTO `plan` VALUES ('199', '1', '26', '1', '14', '34', '1', '', '', '1497491591', '1497491591', '00:00:00', '请为老人提供整理仪表', '', '4', '1', '1497491591', '0', '1');
INSERT INTO `plan` VALUES ('200', '1', '27', '1', '15', '34', '1', '', '', '1497491591', '1497491591', '00:00:00', '请帮助老人进行康复干预', '', '4', '1', '1497491591', '0', '1');
INSERT INTO `plan` VALUES ('201', '1', '28', '1', '16', '34', '1', '', '', '1497491591', '1497491591', '00:00:00', '请清扫/换洗老人床上用品', '', '4', '1', '1497491591', '0', '1');
INSERT INTO `plan` VALUES ('202', '1', '29', '1', '17', '34', '1', '', '', '1497491591', '1497491591', '00:00:00', '请为老人换洗衣物', '', '4', '1', '1497491591', '0', '1');
INSERT INTO `plan` VALUES ('203', '1', '30', '1', '18', '34', '1', '', '', '1497491591', '1497491591', '00:00:00', '请记录老人的探视情况', '', '4', '1', '1497491591', '0', '1');
INSERT INTO `plan` VALUES ('204', '1', '31', '1', '11', '34', '1', '', '', '1497491591', '1497491591', '00:00:00', '请记录老人的大便情况', '', '4', '1', '1497491591', '0', '1');
INSERT INTO `plan` VALUES ('205', '1', '32', '1', '12', '34', '1', '', '', '1497491591', '1497491591', '00:00:00', '请检查老人小便情况', '', '4', '1', '1497491591', '0', '1');
INSERT INTO `plan` VALUES ('206', '1', '35', '1', '7', '34', '1', '', '', '1497491591', '1497491591', '00:00:00', '请在饭前二十分钟为老人注射', '', '5', '1', '1497491591', '0', '1');
INSERT INTO `plan` VALUES ('207', '1', '36', '1', '8', '34', '1', '', '', '1497491591', '1497491591', '00:00:00', '请喂老人吃晚餐', '', '5', '1', '1497491591', '0', '1');
INSERT INTO `plan` VALUES ('208', '1', '37', '1', '10', '34', '1', '', '', '1497491591', '1497491591', '00:00:00', '请喂老人吃药', '', '5', '1', '1497491591', '0', '1');
INSERT INTO `plan` VALUES ('209', '1', '38', '1', '22', '34', '1', '', '', '1497491591', '1497491591', '00:00:00', '请老人睡前吃药', '', '5', '1', '1497491591', '0', '1');
INSERT INTO `plan` VALUES ('210', '1', '39', '1', '21', '34', '1', '', '', '1497491591', '1497491591', '00:00:00', '请记录老人睡眠情况', '', '5', '1', '1497491591', '0', '1');
INSERT INTO `plan` VALUES ('211', '1', '40', '1', '11', '34', '1', '', '', '1497491591', '1497491591', '00:00:00', '请检查老人大便情况', '', '5', '1', '1497491591', '0', '1');
INSERT INTO `plan` VALUES ('212', '1', '41', '1', '12', '34', '1', '', '', '1497491591', '1497491591', '00:00:00', '请检查老人小便情况', '', '5', '1', '1497491591', '0', '1');
INSERT INTO `plan` VALUES ('213', '1', '0', '0', '0', '34', '0', '', '', '1497491591', '1497491591', '00:00:00', '', '', '0', '0', '1497491591', '0', '1');
INSERT INTO `plan` VALUES ('214', '1', '0', '0', '0', '34', '0', '', '', '1497491591', '1497491591', '00:00:00', '', '', '0', '0', '1497491591', '0', '1');
INSERT INTO `plan` VALUES ('215', '123', '0', '1', '23', '0', '1', '2017-06-15', '2017-06-16', '1497514320', '1497600720', '16:12:00', '请帮助老人翻身', '', '0', '0', '1497507199', '0', '1');

-- ----------------------------
-- Table structure for plan_info
-- ----------------------------
DROP TABLE IF EXISTS `plan_info`;
CREATE TABLE `plan_info` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(100) NOT NULL COMMENT '类型名称',
  `descriptions` varchar(255) NOT NULL COMMENT '提醒内容',
  `event_type` tinyint(2) unsigned NOT NULL COMMENT '事件类型',
  `created` int(11) unsigned NOT NULL,
  `updated` int(11) unsigned NOT NULL,
  `at` tinyint(1) unsigned NOT NULL COMMENT '时间段(1.早上、2.上午、3.中午、4.下午、5.晚上)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='计划索引表';

-- ----------------------------
-- Records of plan_info
-- ----------------------------
INSERT INTO `plan_info` VALUES ('1', '血糖', '请为老人测量血糖', '2', '1487707754', '0', '1');
INSERT INTO `plan_info` VALUES ('2', '血压', '请为老人测量血压', '1', '1487707754', '0', '1');
INSERT INTO `plan_info` VALUES ('3', '体温', '请为老人测量体温', '3', '1487707754', '0', '1');
INSERT INTO `plan_info` VALUES ('4', '精神状态', '请检查老人精神状态', '4', '1487707754', '0', '1');
INSERT INTO `plan_info` VALUES ('5', '皮肤状态', '请检查老人皮肤状态', '5', '1487707754', '0', '1');
INSERT INTO `plan_info` VALUES ('6', '洗漱及护理', '请为老人洗漱', '6', '1487707754', '0', '1');
INSERT INTO `plan_info` VALUES ('7', '胰岛素', '请在饭前二十分钟为老人注射', '7', '1487707754', '0', '1');
INSERT INTO `plan_info` VALUES ('8', '用饭', '请喂老人吃饭', '8', '1487707754', '0', '1');
INSERT INTO `plan_info` VALUES ('9', '喝水', '请喂老人喝水', '9', '1487707754', '0', '1');
INSERT INTO `plan_info` VALUES ('10', '吃药', '请喂老人吃药', '10', '1487707754', '0', '1');
INSERT INTO `plan_info` VALUES ('11', '大便', '请检查老人大便情况', '11', '1487707754', '0', '1');
INSERT INTO `plan_info` VALUES ('12', '小便', '请检查老人小便情况', '12', '1487707754', '0', '1');
INSERT INTO `plan_info` VALUES ('13', '加餐', '请喂老人加餐食物', '13', '1487707754', '0', '2');
INSERT INTO `plan_info` VALUES ('14', '仪表', '请为老人提供整理仪表', '14', '1487707754', '0', '2');
INSERT INTO `plan_info` VALUES ('15', '康复干预', '请帮助老人进行康复干预', '15', '1487707754', '0', '2');
INSERT INTO `plan_info` VALUES ('16', '床铺管理', '请清扫/换洗老人床上用品', '16', '1487707754', '0', '2');
INSERT INTO `plan_info` VALUES ('17', '衣物换洗', '请为老人换洗衣物', '17', '1487707754', '0', '2');
INSERT INTO `plan_info` VALUES ('18', '探视', '请记录老人的探视情况', '18', '1487707754', '0', '2');
INSERT INTO `plan_info` VALUES ('19', '大便', '请记录老人大便情况', '11', '1487707754', '0', '2');
INSERT INTO `plan_info` VALUES ('20', '小便', '请记录老人小便情况', '12', '1487707754', '0', '2');
INSERT INTO `plan_info` VALUES ('21', '胰岛素', '请在饭前二十分钟为老人注射', '7', '1487707754', '0', '3');
INSERT INTO `plan_info` VALUES ('22', '用饭', '请喂老人吃饭', '8', '1487707754', '0', '3');
INSERT INTO `plan_info` VALUES ('23', '吃药', '请喂老人吃药', '10', '1487707754', '0', '3');
INSERT INTO `plan_info` VALUES ('24', '午睡', '请协助老人进行午睡', '19', '1487707754', '0', '3');
INSERT INTO `plan_info` VALUES ('25', '加餐', '请喂老人加餐食物', '13', '1487707754', '0', '4');
INSERT INTO `plan_info` VALUES ('26', '仪表', '请为老人提供整理仪表', '14', '1487707754', '0', '4');
INSERT INTO `plan_info` VALUES ('27', '康复干预', '请帮助老人进行康复干预', '15', '1487707754', '0', '4');
INSERT INTO `plan_info` VALUES ('28', '床铺管理', '请清扫/换洗老人床上用品', '16', '1487707754', '0', '4');
INSERT INTO `plan_info` VALUES ('29', '衣物换洗', '请为老人换洗衣物', '17', '1487707754', '0', '4');
INSERT INTO `plan_info` VALUES ('30', '探视', '请记录老人的探视情况', '18', '1487707754', '0', '4');
INSERT INTO `plan_info` VALUES ('31', '大便', '请记录老人的大便情况', '11', '1487707754', '0', '4');
INSERT INTO `plan_info` VALUES ('32', '小便', '请检查老人小便情况', '12', '1487707754', '0', '4');
INSERT INTO `plan_info` VALUES ('34', '喝水', '请喂老人喝水', '9', '1487707754', '0', '5');
INSERT INTO `plan_info` VALUES ('35', '胰岛素', '请在饭前二十分钟为老人注射', '7', '1487707754', '0', '5');
INSERT INTO `plan_info` VALUES ('36', '用饭', '请喂老人吃晚餐', '8', '1487707754', '0', '5');
INSERT INTO `plan_info` VALUES ('37', '吃药', '请喂老人吃药', '10', '1487707754', '0', '5');
INSERT INTO `plan_info` VALUES ('38', '临睡用药', '请老人睡前吃药', '22', '1487707754', '0', '5');
INSERT INTO `plan_info` VALUES ('39', '睡眠情况', '请记录老人睡眠情况', '21', '1487707754', '0', '5');
INSERT INTO `plan_info` VALUES ('40', '大便', '请检查老人大便情况', '11', '1487707754', '0', '5');
INSERT INTO `plan_info` VALUES ('41', '小便', '请检查老人小便情况', '12', '1487707754', '0', '5');

-- ----------------------------
-- Table structure for purchases
-- ----------------------------
DROP TABLE IF EXISTS `purchases`;
CREATE TABLE `purchases` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `a_id` int(10) unsigned NOT NULL COMMENT '关联采购清单ID',
  `status` varchar(20) NOT NULL COMMENT '购买状态(1.未购买、2.已购买)',
  `created` int(11) unsigned NOT NULL,
  `updated` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='采购购买表';

-- ----------------------------
-- Records of purchases
-- ----------------------------
INSERT INTO `purchases` VALUES ('1', '1', '2', '1494326051', '1494326069');
INSERT INTO `purchases` VALUES ('2', '2', '2', '1494474192', '1494484906');
INSERT INTO `purchases` VALUES ('3', '3', '2', '1494484969', '1494484981');
INSERT INTO `purchases` VALUES ('4', '4', '2', '1494485092', '1494485104');
INSERT INTO `purchases` VALUES ('5', '5', '2', '1494485612', '1494494133');
INSERT INTO `purchases` VALUES ('6', '6', '2', '1494486084', '1494486146');
INSERT INTO `purchases` VALUES ('7', '7', '2', '1494486201', '1494486255');
INSERT INTO `purchases` VALUES ('8', '8', '2', '1494486299', '1494486304');
INSERT INTO `purchases` VALUES ('9', '9', '2', '1494490425', '1494490476');
INSERT INTO `purchases` VALUES ('10', '10', '2', '1494494347', '1494494371');
INSERT INTO `purchases` VALUES ('11', '11', '2', '1495434830', '1495434839');
INSERT INTO `purchases` VALUES ('12', '12', '2', '1495434941', '1495434966');
INSERT INTO `purchases` VALUES ('13', '13', '2', '1495695135', '1495695149');

-- ----------------------------
-- Table structure for recovered_train
-- ----------------------------
DROP TABLE IF EXISTS `recovered_train`;
CREATE TABLE `recovered_train` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `week` tinyint(1) NOT NULL COMMENT '星期(1.周一、2.周二、3.周三、4.周四、5.周五、6.周六、7.周日)',
  `date` varchar(10) DEFAULT NULL COMMENT '日期',
  `type` tinyint(1) NOT NULL COMMENT '康复训练类型(1.红外线照射、2.康复按摩)',
  `duration` int(10) NOT NULL COMMENT '训练时长(单位：秒)',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `at` tinyint(1) NOT NULL COMMENT '时间点(1.早上、2.上午、3.中午、4.下午、5.晚上)',
  `sid` int(10) unsigned NOT NULL COMMENT '关联老年人ID（senior_id）',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='康复训练';

-- ----------------------------
-- Records of recovered_train
-- ----------------------------

-- ----------------------------
-- Table structure for rehabilitation_intervention
-- ----------------------------
DROP TABLE IF EXISTS `rehabilitation_intervention`;
CREATE TABLE `rehabilitation_intervention` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `week` tinyint(1) NOT NULL COMMENT '星期(1.周一、2.周二、3.周三、4.周四、5.周五、6.周六、7.周日)',
  `date` varchar(10) DEFAULT NULL COMMENT '日期',
  `type` tinyint(1) NOT NULL COMMENT '运动训练类型(1.红外线、2.康复、3.室内、4.室外)',
  `duration` int(10) NOT NULL COMMENT '训练时长(单位：秒)',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `at` tinyint(1) NOT NULL COMMENT '时间点(1.早上、2.上午、3.中午、4.下午、5.晚上)',
  `sid` int(10) unsigned NOT NULL COMMENT '关联老年人ID（senior_id）',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 COMMENT='康复干预';

-- ----------------------------
-- Records of rehabilitation_intervention
-- ----------------------------
INSERT INTO `rehabilitation_intervention` VALUES ('1', '1', '2017-03-06', '1', '105', '1488795110', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('2', '5', '2017-03-10', '1', '3', '1489119286', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('3', '5', '2017-03-10', '1', '2', '1489126986', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('4', '5', '2017-03-10', '1', '4', '1489127131', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('5', '5', '2017-03-10', '1', '3', '1489127142', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('6', '5', '2017-03-10', '1', '4', '1489127158', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('7', '5', '2017-03-10', '1', '19', '1489127180', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('8', '5', '2017-03-10', '1', '3', '1489127211', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('9', '5', '2017-03-10', '1', '1', '1489127217', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('10', '5', '2017-03-10', '1', '2', '1489127223', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('11', '5', '2017-03-10', '1', '2', '1489127236', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('12', '5', '2017-03-10', '1', '59', '1489127296', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('13', '5', '2017-03-10', '1', '19', '1489127386', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('14', '5', '2017-03-10', '1', '7', '1489127458', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('15', '5', '2017-03-10', '1', '10', '1489127483', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('16', '5', '2017-03-10', '1', '10', '1489127498', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('17', '5', '2017-03-10', '1', '4', '1489127504', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('18', '5', '2017-03-10', '1', '3', '1489127514', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('19', '5', '2017-03-10', '1', '2', '1489127535', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('20', '5', '2017-03-10', '1', '2', '1489127538', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('21', '5', '2017-03-10', '1', '7', '1489127548', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('22', '5', '2017-03-10', '1', '9', '1489127594', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('23', '5', '2017-03-10', '1', '30', '1489127626', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('24', '5', '2017-03-10', '1', '4', '1489127644', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('25', '5', '2017-03-10', '1', '102', '1489127748', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('26', '5', '2017-03-10', '1', '102', '1489127768', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('27', '5', '2017-03-10', '1', '23', '1489127792', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('28', '5', '2017-03-10', '1', '11', '1489127843', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('29', '5', '2017-03-10', '1', '52', '1489127934', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('30', '5', '2017-03-10', '1', '1', '1489127936', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('31', '5', '2017-03-10', '1', '5', '1489127941', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('32', '5', '2017-03-10', '1', '4', '1489127956', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('33', '5', '2017-03-10', '1', '3', '1489127961', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('34', '5', '2017-03-10', '1', '16', '1489127982', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('35', '5', '2017-03-10', '1', '3', '1489127985', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('36', '5', '2017-03-10', '1', '6', '1489127998', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('37', '5', '2017-03-10', '1', '1', '1489127998', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('38', '5', '2017-03-10', '1', '9', '1489128011', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('39', '5', '2017-03-10', '1', '9', '1489128035', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('40', '5', '2017-03-10', '2', '7', '1489128045', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('41', '5', '2017-03-10', '1', '2', '1489128063', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('42', '5', '2017-03-10', '2', '2', '1489128067', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('43', '5', '2017-03-10', '1', '5', '1489128088', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('44', '5', '2017-03-10', '1', '2', '1489128094', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('45', '5', '2017-03-10', '2', '2', '1489128096', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('46', '1', '2017-03-13', '4', '3', '1489373596', '0', '6', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('47', '1', '2017-03-13', '1', '1', '1489373596', '0', '6', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('48', '1', '2017-03-13', '2', '6', '1489373596', '0', '6', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('49', '1', '2017-03-13', '4', '1', '1489373615', '0', '5', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('50', '1', '2017-03-13', '2', '16', '1489373615', '0', '5', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('51', '1', '2017-03-13', '1', '4', '1489373615', '0', '5', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('52', '1', '2017-03-13', '4', '2', '1489373649', '0', '5', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('53', '1', '2017-03-13', '2', '22', '1489373649', '0', '5', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('54', '1', '2017-03-13', '1', '7', '1489373649', '0', '5', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('55', '1', '2017-03-13', '4', '2', '1489373669', '0', '5', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('56', '1', '2017-03-13', '4', '1', '1489373717', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('57', '1', '2017-03-13', '3', '1', '1489373717', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('58', '1', '2017-03-13', '2', '2', '1489373717', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('59', '1', '2017-03-13', '1', '3', '1489373717', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('60', '1', '2017-03-13', '3', '1', '1489373843', '0', '4', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('61', '1', '2017-03-13', '4', '1', '1489374237', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('62', '1', '2017-03-13', '3', '2', '1489374237', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('63', '1', '2017-03-13', '2', '2', '1489374237', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('64', '1', '2017-03-13', '1', '2', '1489374250', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('65', '1', '2017-03-13', '4', '2', '1489374250', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('66', '1', '2017-03-13', '2', '5', '1489374250', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('67', '1', '2017-03-13', '4', '2', '1489374267', '0', '5', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('68', '1', '2017-03-13', '2', '2', '1489374267', '0', '5', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('69', '1', '2017-03-13', '3', '3', '1489374267', '0', '5', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('70', '3', '2017-03-15', '3', '2', '1489545714', '0', '2', '2');
INSERT INTO `rehabilitation_intervention` VALUES ('71', '3', '2017-03-15', '4', '2', '1489545774', '0', '6', '2');
INSERT INTO `rehabilitation_intervention` VALUES ('72', '3', '2017-03-15', '2', '1', '1489545779', '0', '6', '2');
INSERT INTO `rehabilitation_intervention` VALUES ('73', '3', '2017-03-15', '4', '2', '1489545779', '0', '6', '2');
INSERT INTO `rehabilitation_intervention` VALUES ('74', '4', '2017-03-16', '2', '6', '1489654925', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('75', '4', '2017-03-23', '4', '2', '1490236881', '0', '2', '2');
INSERT INTO `rehabilitation_intervention` VALUES ('76', '4', '2017-05-04', '4', '4', '1493888573', '0', '5', '23');
INSERT INTO `rehabilitation_intervention` VALUES ('77', '4', '2017-05-04', '3', '5', '1493888589', '0', '5', '23');
INSERT INTO `rehabilitation_intervention` VALUES ('78', '4', '2017-05-04', '2', '3', '1493888589', '0', '5', '23');
INSERT INTO `rehabilitation_intervention` VALUES ('79', '1', '2017-05-08', '4', '6', '1494212007', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('80', '1', '2017-05-08', '3', '3', '1494212007', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('81', '1', '2017-05-08', '1', '12', '1494212007', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('82', '1', '2017-05-08', '2', '17', '1494212007', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('83', '1', '2017-05-08', '2', '2', '1494212164', '0', '5', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('84', '1', '2017-05-08', '4', '3', '1494212164', '0', '5', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('85', '1', '2017-05-08', '1', '6', '1494212164', '0', '5', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('86', '1', '2017-05-08', '4', '3', '1494212408', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('87', '1', '2017-05-08', '3', '3', '1494212408', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('88', '1', '2017-05-08', '2', '3', '1494212408', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('89', '1', '2017-05-08', '1', '4', '1494212408', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('90', '4', '2017-05-11', '1', '10', '1494487004', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('91', '2', '2017-05-23', '3', '118', '1495508012', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('92', '2', '2017-05-23', '2', '64', '1495508012', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('93', '2', '2017-05-23', '4', '30', '1495509949', '0', '4', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('94', '2', '2017-05-23', '2', '30', '1495509949', '0', '4', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('95', '2', '2017-05-23', '2', '4', '1495535428', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('96', '2', '2017-05-23', '4', '4', '1495535428', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('97', '2', '2017-05-23', '4', '5', '1495535496', '0', '2', '5');
INSERT INTO `rehabilitation_intervention` VALUES ('98', '2', '2017-05-23', '3', '4', '1495535496', '0', '2', '5');
INSERT INTO `rehabilitation_intervention` VALUES ('99', '5', '2017-05-26', '1', '5', '1495768170', '0', '4', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('100', '5', '2017-05-26', '4', '6', '1495768189', '0', '4', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('101', '5', '2017-05-26', '1', '2', '1495770904', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('102', '5', '2017-05-26', '3', '2', '1495770915', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('103', '5', '2017-05-26', '2', '2', '1495770929', '0', '2', '1');
INSERT INTO `rehabilitation_intervention` VALUES ('104', '5', '2017-05-26', '4', '2', '1495770944', '0', '2', '1');

-- ----------------------------
-- Table structure for religion_info
-- ----------------------------
DROP TABLE IF EXISTS `religion_info`;
CREATE TABLE `religion_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `num` tinyint(1) unsigned NOT NULL COMMENT '宗教编码',
  `introduce` varchar(50) NOT NULL COMMENT '宗教描述',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='宗教表';

-- ----------------------------
-- Records of religion_info
-- ----------------------------
INSERT INTO `religion_info` VALUES ('7', '0', '无', '1487502261', '0');
INSERT INTO `religion_info` VALUES ('8', '1', '佛教', '1487502261', '0');
INSERT INTO `religion_info` VALUES ('9', '2', '道教', '1487502261', '0');
INSERT INTO `religion_info` VALUES ('10', '3', '伊斯兰教', '1487502261', '0');
INSERT INTO `religion_info` VALUES ('11', '4', '基督教', '1487502261', '0');
INSERT INTO `religion_info` VALUES ('12', '5', '天主教', '1487502261', '0');

-- ----------------------------
-- Table structure for remind
-- ----------------------------
DROP TABLE IF EXISTS `remind`;
CREATE TABLE `remind` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(11) unsigned NOT NULL COMMENT '关联老年人ID',
  `remind_type` tinyint(1) unsigned NOT NULL COMMENT '提醒类型(1.铃声、2.震动)',
  `event_type` tinyint(2) unsigned NOT NULL COMMENT '提醒事件类型(1.用饭、2.用药、3.排泄、4.仪表、5.床铺管理、6.康复训练、7.睡眠、8.衣物换洗、9.探视、10.血压、11.体温、12.精神状态、13.医嘱、14.血糖、15.运动训练、16.翻身、17.喝水)',
  `sw_id` int(11) unsigned NOT NULL COMMENT '关联护工ID',
  `status` tinyint(1) unsigned NOT NULL COMMENT '响应类型(1.是、2.否)',
  `startdate` int(10) unsigned NOT NULL COMMENT '起始日期',
  `enddate` int(10) unsigned NOT NULL COMMENT '结束日期',
  `starttime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `respond_time` time NOT NULL COMMENT '响应时间点',
  `description` varchar(255) NOT NULL COMMENT '事件描述',
  `remarks` varchar(255) NOT NULL COMMENT '备注',
  `created` int(11) unsigned NOT NULL,
  `updated` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='提醒事件表';

-- ----------------------------
-- Records of remind
-- ----------------------------

-- ----------------------------
-- Table structure for remind_plan
-- ----------------------------
DROP TABLE IF EXISTS `remind_plan`;
CREATE TABLE `remind_plan` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `r_id` int(11) unsigned NOT NULL COMMENT '关联提醒事件ID',
  `sid` int(11) unsigned NOT NULL COMMENT '关联老人ID',
  `sw_id` int(11) unsigned NOT NULL COMMENT '关联护工ID',
  `event_type` tinyint(1) unsigned NOT NULL COMMENT '事件类型',
  `respond_date` int(11) unsigned NOT NULL COMMENT '响应日期',
  `respondtime` int(11) unsigned NOT NULL COMMENT '响应时间',
  `status` int(11) unsigned NOT NULL COMMENT '响应状态',
  `created` int(11) unsigned NOT NULL,
  `updated` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=541 DEFAULT CHARSET=utf8 COMMENT='提醒计划表';

-- ----------------------------
-- Records of remind_plan
-- ----------------------------
INSERT INTO `remind_plan` VALUES ('1', '13', '1', '33', '13', '1489334400', '1489377360', '1', '1488795204', '1489377540');
INSERT INTO `remind_plan` VALUES ('2', '18', '1', '33', '18', '1488729600', '1488798720', '1', '1488795263', '1488798778');
INSERT INTO `remind_plan` VALUES ('3', '37', '1', '33', '10', '1488729600', '1488795780', '1', '1488795746', '1488795814');
INSERT INTO `remind_plan` VALUES ('4', '10', '1', '33', '10', '1489334400', '1489386540', '1', '1488850685', '1489386596');
INSERT INTO `remind_plan` VALUES ('5', '104', '3', '35', '8', '1488816000', '1488851700', '1', '1488851591', '1488851715');
INSERT INTO `remind_plan` VALUES ('6', '105', '3', '35', '10', '1488816000', '1488852000', '1', '1488851711', '1488852040');
INSERT INTO `remind_plan` VALUES ('7', '106', '3', '35', '19', '1488816000', '1488852300', '0', '1488851771', '1488884450');
INSERT INTO `remind_plan` VALUES ('8', '3', '1', '33', '3', '1489334400', '1489376040', '1', '1488853337', '1489376103');
INSERT INTO `remind_plan` VALUES ('9', '12', '1', '33', '12', '1489334400', '1489376580', '1', '1489376381', '1489376628');
INSERT INTO `remind_plan` VALUES ('10', '40', '1', '33', '11', '1489334400', '1489377900', '1', '1489377856', '1489377922');
INSERT INTO `remind_plan` VALUES ('11', '39', '25', '0', '0', '1494518400', '1494557580', '0', '1489378442', '1494556810');
INSERT INTO `remind_plan` VALUES ('12', '21', '1', '33', '7', '1489334400', '1489385400', '1', '1489385384', '1489385583');
INSERT INTO `remind_plan` VALUES ('13', '7', '1', '33', '7', '1489334400', '1489388820', '1', '1489388428', '1489388988');
INSERT INTO `remind_plan` VALUES ('14', '6', '1', '33', '6', '1489593600', '1489651980', '1', '1489634544', '1489652018');
INSERT INTO `remind_plan` VALUES ('16', '4', '1', '33', '4', '1489593600', '1489635600', '1', '1489635571', '1489635635');
INSERT INTO `remind_plan` VALUES ('17', '5', '1', '33', '5', '1489593600', '1489648140', '1', '1489648105', '1489648169');
INSERT INTO `remind_plan` VALUES ('18', '11', '1', '33', '11', '1489593600', '1489648380', '1', '1489648359', '1489648429');
INSERT INTO `remind_plan` VALUES ('20', '621', '3', '33', '0', '1490284800', '1490324520', '1', '1490324439', '1490325475');
INSERT INTO `remind_plan` VALUES ('22', '621', '3', '33', '0', '1490284800', '1490324520', '0', '1490324499', '0');
INSERT INTO `remind_plan` VALUES ('23', '88', '3', '33', '6', '1490284800', '1490327340', '1', '1490327306', '1490327406');
INSERT INTO `remind_plan` VALUES ('24', '1', '1', '33', '2', '1494345600', '1494384900', '0', '1494384539', '1494384858');
INSERT INTO `remind_plan` VALUES ('25', '2', '1', '33', '1', '1494345600', '1494385200', '1', '1494385038', '1494385221');
INSERT INTO `remind_plan` VALUES ('26', '1505', '25', '0', '0', '1494432000', '1494490680', '0', '1494488978', '1494490669');
INSERT INTO `remind_plan` VALUES ('27', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494488978', '0');
INSERT INTO `remind_plan` VALUES ('28', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494489038', '0');
INSERT INTO `remind_plan` VALUES ('29', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494489098', '0');
INSERT INTO `remind_plan` VALUES ('30', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494489158', '0');
INSERT INTO `remind_plan` VALUES ('31', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494489218', '0');
INSERT INTO `remind_plan` VALUES ('32', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494489278', '0');
INSERT INTO `remind_plan` VALUES ('33', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494489338', '0');
INSERT INTO `remind_plan` VALUES ('34', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494489398', '0');
INSERT INTO `remind_plan` VALUES ('35', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494489458', '0');
INSERT INTO `remind_plan` VALUES ('36', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494489518', '0');
INSERT INTO `remind_plan` VALUES ('37', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494489570', '0');
INSERT INTO `remind_plan` VALUES ('38', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494489578', '0');
INSERT INTO `remind_plan` VALUES ('39', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494489638', '0');
INSERT INTO `remind_plan` VALUES ('40', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494489654', '0');
INSERT INTO `remind_plan` VALUES ('41', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494489748', '0');
INSERT INTO `remind_plan` VALUES ('42', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494489808', '0');
INSERT INTO `remind_plan` VALUES ('43', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494489850', '0');
INSERT INTO `remind_plan` VALUES ('44', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494489883', '0');
INSERT INTO `remind_plan` VALUES ('45', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494489912', '0');
INSERT INTO `remind_plan` VALUES ('46', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494489951', '0');
INSERT INTO `remind_plan` VALUES ('47', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494489988', '0');
INSERT INTO `remind_plan` VALUES ('48', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494490047', '0');
INSERT INTO `remind_plan` VALUES ('49', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494490075', '0');
INSERT INTO `remind_plan` VALUES ('50', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494490135', '0');
INSERT INTO `remind_plan` VALUES ('51', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494490182', '0');
INSERT INTO `remind_plan` VALUES ('52', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494490195', '0');
INSERT INTO `remind_plan` VALUES ('53', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494490255', '0');
INSERT INTO `remind_plan` VALUES ('54', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494490315', '0');
INSERT INTO `remind_plan` VALUES ('55', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494490375', '0');
INSERT INTO `remind_plan` VALUES ('56', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494490455', '0');
INSERT INTO `remind_plan` VALUES ('57', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494490514', '0');
INSERT INTO `remind_plan` VALUES ('58', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494490574', '0');
INSERT INTO `remind_plan` VALUES ('59', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494490634', '0');
INSERT INTO `remind_plan` VALUES ('60', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494490662', '0');
INSERT INTO `remind_plan` VALUES ('61', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494490669', '0');
INSERT INTO `remind_plan` VALUES ('62', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494490729', '0');
INSERT INTO `remind_plan` VALUES ('63', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494490812', '0');
INSERT INTO `remind_plan` VALUES ('64', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494490888', '0');
INSERT INTO `remind_plan` VALUES ('65', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494490947', '0');
INSERT INTO `remind_plan` VALUES ('66', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494490982', '0');
INSERT INTO `remind_plan` VALUES ('67', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494491041', '0');
INSERT INTO `remind_plan` VALUES ('68', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494491101', '0');
INSERT INTO `remind_plan` VALUES ('69', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494491133', '0');
INSERT INTO `remind_plan` VALUES ('70', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494491191', '0');
INSERT INTO `remind_plan` VALUES ('71', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494491251', '0');
INSERT INTO `remind_plan` VALUES ('72', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494491261', '0');
INSERT INTO `remind_plan` VALUES ('73', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494491320', '0');
INSERT INTO `remind_plan` VALUES ('74', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494491380', '0');
INSERT INTO `remind_plan` VALUES ('75', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494491440', '0');
INSERT INTO `remind_plan` VALUES ('76', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494491500', '0');
INSERT INTO `remind_plan` VALUES ('77', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494491529', '0');
INSERT INTO `remind_plan` VALUES ('78', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494491588', '0');
INSERT INTO `remind_plan` VALUES ('79', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494491639', '0');
INSERT INTO `remind_plan` VALUES ('80', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494491697', '0');
INSERT INTO `remind_plan` VALUES ('81', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494491737', '0');
INSERT INTO `remind_plan` VALUES ('82', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494492056', '0');
INSERT INTO `remind_plan` VALUES ('83', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494492108', '0');
INSERT INTO `remind_plan` VALUES ('84', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494492167', '0');
INSERT INTO `remind_plan` VALUES ('85', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494492197', '0');
INSERT INTO `remind_plan` VALUES ('86', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494492256', '0');
INSERT INTO `remind_plan` VALUES ('87', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494492316', '0');
INSERT INTO `remind_plan` VALUES ('88', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494492376', '0');
INSERT INTO `remind_plan` VALUES ('89', '1506', '25', '0', '0', '1494432000', '1494492480', '0', '1494492437', '0');
INSERT INTO `remind_plan` VALUES ('90', '30', '25', '0', '0', '1494432000', '1494494340', '0', '1494492750', '0');
INSERT INTO `remind_plan` VALUES ('91', '31', '25', '0', '0', '1494432000', '1494496140', '0', '1494492750', '1494496125');
INSERT INTO `remind_plan` VALUES ('92', '30', '25', '0', '0', '1494432000', '1494494340', '0', '1494492809', '0');
INSERT INTO `remind_plan` VALUES ('93', '30', '25', '0', '0', '1494432000', '1494494340', '0', '1494492832', '0');
INSERT INTO `remind_plan` VALUES ('94', '30', '25', '0', '0', '1494432000', '1494494340', '0', '1494492891', '0');
INSERT INTO `remind_plan` VALUES ('95', '30', '25', '0', '0', '1494432000', '1494494340', '0', '1494492951', '0');
INSERT INTO `remind_plan` VALUES ('96', '30', '25', '0', '0', '1494432000', '1494494340', '0', '1494493010', '0');
INSERT INTO `remind_plan` VALUES ('97', '30', '25', '0', '0', '1494432000', '1494494340', '0', '1494493070', '0');
INSERT INTO `remind_plan` VALUES ('98', '30', '25', '0', '0', '1494432000', '1494494340', '0', '1494493130', '0');
INSERT INTO `remind_plan` VALUES ('99', '30', '25', '0', '0', '1494432000', '1494494340', '0', '1494493190', '0');
INSERT INTO `remind_plan` VALUES ('100', '30', '25', '0', '0', '1494432000', '1494494340', '0', '1494493216', '0');
INSERT INTO `remind_plan` VALUES ('101', '30', '25', '0', '0', '1494432000', '1494494340', '0', '1494493275', '0');
INSERT INTO `remind_plan` VALUES ('102', '30', '25', '0', '0', '1494432000', '1494494340', '0', '1494493335', '0');
INSERT INTO `remind_plan` VALUES ('103', '30', '25', '0', '0', '1494432000', '1494494340', '0', '1494493395', '0');
INSERT INTO `remind_plan` VALUES ('104', '30', '25', '0', '0', '1494432000', '1494494340', '0', '1494493455', '0');
INSERT INTO `remind_plan` VALUES ('105', '30', '25', '0', '0', '1494432000', '1494494340', '0', '1494493511', '0');
INSERT INTO `remind_plan` VALUES ('106', '30', '25', '0', '0', '1494432000', '1494494340', '0', '1494493560', '0');
INSERT INTO `remind_plan` VALUES ('107', '30', '25', '0', '0', '1494432000', '1494494340', '0', '1494493619', '0');
INSERT INTO `remind_plan` VALUES ('108', '30', '25', '0', '0', '1494432000', '1494494340', '0', '1494493679', '0');
INSERT INTO `remind_plan` VALUES ('109', '30', '25', '0', '0', '1494432000', '1494494340', '0', '1494493739', '0');
INSERT INTO `remind_plan` VALUES ('110', '30', '25', '0', '0', '1494432000', '1494494340', '0', '1494493799', '0');
INSERT INTO `remind_plan` VALUES ('111', '30', '25', '0', '0', '1494432000', '1494494340', '0', '1494493859', '0');
INSERT INTO `remind_plan` VALUES ('112', '30', '25', '0', '0', '1494432000', '1494494340', '0', '1494493919', '0');
INSERT INTO `remind_plan` VALUES ('113', '30', '25', '0', '0', '1494432000', '1494494340', '0', '1494493979', '0');
INSERT INTO `remind_plan` VALUES ('114', '30', '25', '0', '0', '1494432000', '1494494340', '0', '1494494039', '0');
INSERT INTO `remind_plan` VALUES ('115', '30', '25', '0', '0', '1494432000', '1494494340', '0', '1494494179', '0');
INSERT INTO `remind_plan` VALUES ('116', '30', '25', '0', '0', '1494432000', '1494494340', '0', '1494494219', '0');
INSERT INTO `remind_plan` VALUES ('117', '30', '25', '0', '0', '1494432000', '1494494340', '0', '1494494277', '0');
INSERT INTO `remind_plan` VALUES ('118', '30', '25', '0', '0', '1494432000', '1494494340', '0', '1494494336', '0');
INSERT INTO `remind_plan` VALUES ('119', '34', '25', '0', '0', '1494518400', '1494557100', '0', '1494555393', '0');
INSERT INTO `remind_plan` VALUES ('120', '34', '25', '0', '0', '1494518400', '1494557100', '0', '1494555452', '0');
INSERT INTO `remind_plan` VALUES ('121', '34', '25', '0', '0', '1494518400', '1494557100', '0', '1494555512', '0');
INSERT INTO `remind_plan` VALUES ('122', '34', '25', '0', '0', '1494518400', '1494557100', '0', '1494555572', '0');
INSERT INTO `remind_plan` VALUES ('123', '34', '25', '0', '0', '1494518400', '1494557100', '0', '1494555630', '0');
INSERT INTO `remind_plan` VALUES ('124', '34', '25', '0', '0', '1494518400', '1494557100', '0', '1494555690', '0');
INSERT INTO `remind_plan` VALUES ('125', '34', '25', '0', '0', '1494518400', '1494557100', '0', '1494555699', '0');
INSERT INTO `remind_plan` VALUES ('126', '38', '25', '0', '0', '1494518400', '1494557580', '0', '1494555818', '1494556810');
INSERT INTO `remind_plan` VALUES ('127', '45', '25', '0', '0', '1494518400', '1494557580', '0', '1494556377', '1494556810');
INSERT INTO `remind_plan` VALUES ('128', '46', '25', '0', '0', '1494518400', '1494557580', '0', '1494556377', '1494556810');
INSERT INTO `remind_plan` VALUES ('129', '47', '25', '0', '23', '1494518400', '1494558120', '0', '1494556377', '1494556810');
INSERT INTO `remind_plan` VALUES ('130', '48', '25', '0', '0', '1494518400', '1494558120', '0', '1494556377', '1494556810');
INSERT INTO `remind_plan` VALUES ('131', '44', '123', '0', '23', '1497369600', '1497423240', '0', '1497421532', '0');
INSERT INTO `remind_plan` VALUES ('132', '44', '123', '0', '23', '1497369600', '1497423240', '0', '1497421592', '0');
INSERT INTO `remind_plan` VALUES ('133', '86', '122', '0', '23', '1497369600', '1497423420', '0', '1497421712', '0');
INSERT INTO `remind_plan` VALUES ('134', '87', '122', '0', '23', '1497369600', '1497428820', '0', '1497421712', '0');
INSERT INTO `remind_plan` VALUES ('135', '86', '122', '0', '23', '1497369600', '1497423420', '0', '1497421772', '0');
INSERT INTO `remind_plan` VALUES ('136', '87', '122', '0', '23', '1497369600', '1497428820', '0', '1497421772', '0');
INSERT INTO `remind_plan` VALUES ('137', '86', '122', '0', '23', '1497369600', '1497423420', '0', '1497421832', '0');
INSERT INTO `remind_plan` VALUES ('138', '87', '122', '0', '23', '1497369600', '1497428820', '0', '1497421832', '0');
INSERT INTO `remind_plan` VALUES ('139', '86', '122', '0', '23', '1497369600', '1497423420', '0', '1497421892', '0');
INSERT INTO `remind_plan` VALUES ('140', '87', '122', '0', '23', '1497369600', '1497428820', '0', '1497421892', '0');
INSERT INTO `remind_plan` VALUES ('141', '86', '122', '0', '23', '1497369600', '1497423420', '0', '1497421952', '0');
INSERT INTO `remind_plan` VALUES ('142', '87', '122', '0', '23', '1497369600', '1497428820', '0', '1497421952', '0');
INSERT INTO `remind_plan` VALUES ('143', '86', '122', '0', '23', '1497369600', '1497423420', '0', '1497422012', '0');
INSERT INTO `remind_plan` VALUES ('144', '87', '122', '0', '23', '1497369600', '1497428820', '0', '1497422012', '0');
INSERT INTO `remind_plan` VALUES ('145', '86', '122', '0', '23', '1497369600', '1497423420', '0', '1497422072', '0');
INSERT INTO `remind_plan` VALUES ('146', '87', '122', '0', '23', '1497369600', '1497428820', '0', '1497422072', '0');
INSERT INTO `remind_plan` VALUES ('147', '86', '122', '0', '23', '1497369600', '1497423420', '0', '1497422132', '0');
INSERT INTO `remind_plan` VALUES ('148', '87', '122', '0', '23', '1497369600', '1497428820', '0', '1497422132', '0');
INSERT INTO `remind_plan` VALUES ('149', '86', '122', '0', '23', '1497369600', '1497423420', '0', '1497422192', '0');
INSERT INTO `remind_plan` VALUES ('150', '87', '122', '0', '23', '1497369600', '1497428820', '0', '1497422192', '0');
INSERT INTO `remind_plan` VALUES ('151', '42', '122', '0', '23', '1497369600', '1497424140', '0', '1497422434', '0');
INSERT INTO `remind_plan` VALUES ('152', '44', '122', '0', '0', '1497369600', '1497424140', '0', '1497422434', '0');
INSERT INTO `remind_plan` VALUES ('153', '42', '122', '0', '23', '1497369600', '1497424140', '0', '1497422492', '0');
INSERT INTO `remind_plan` VALUES ('154', '44', '122', '0', '0', '1497369600', '1497424140', '0', '1497422492', '0');
INSERT INTO `remind_plan` VALUES ('155', '42', '122', '0', '23', '1497369600', '1497424140', '0', '1497422552', '0');
INSERT INTO `remind_plan` VALUES ('156', '44', '122', '0', '0', '1497369600', '1497424140', '0', '1497422552', '0');
INSERT INTO `remind_plan` VALUES ('157', '42', '122', '0', '23', '1497369600', '1497424140', '0', '1497422612', '0');
INSERT INTO `remind_plan` VALUES ('158', '44', '122', '0', '0', '1497369600', '1497424140', '0', '1497422612', '0');
INSERT INTO `remind_plan` VALUES ('159', '42', '122', '0', '23', '1497369600', '1497424140', '0', '1497422672', '0');
INSERT INTO `remind_plan` VALUES ('160', '44', '122', '0', '0', '1497369600', '1497424140', '0', '1497422672', '0');
INSERT INTO `remind_plan` VALUES ('161', '42', '122', '0', '23', '1497369600', '1497424140', '0', '1497422732', '0');
INSERT INTO `remind_plan` VALUES ('162', '44', '122', '0', '0', '1497369600', '1497424140', '0', '1497422732', '0');
INSERT INTO `remind_plan` VALUES ('163', '42', '122', '0', '23', '1497369600', '1497424140', '0', '1497422792', '0');
INSERT INTO `remind_plan` VALUES ('164', '44', '122', '0', '0', '1497369600', '1497424140', '0', '1497422792', '0');
INSERT INTO `remind_plan` VALUES ('165', '28', '122', '0', '0', '1497369600', '1497424740', '0', '1497423032', '0');
INSERT INTO `remind_plan` VALUES ('166', '29', '122', '0', '9', '1497369600', '1497426540', '0', '1497423032', '0');
INSERT INTO `remind_plan` VALUES ('167', '28', '122', '0', '0', '1497369600', '1497424740', '0', '1497423092', '0');
INSERT INTO `remind_plan` VALUES ('168', '29', '122', '0', '9', '1497369600', '1497426540', '0', '1497423092', '0');
INSERT INTO `remind_plan` VALUES ('169', '28', '122', '0', '0', '1497369600', '1497424740', '0', '1497423152', '0');
INSERT INTO `remind_plan` VALUES ('170', '29', '122', '0', '9', '1497369600', '1497426540', '0', '1497423152', '0');
INSERT INTO `remind_plan` VALUES ('171', '28', '122', '0', '0', '1497369600', '1497424740', '0', '1497423212', '0');
INSERT INTO `remind_plan` VALUES ('172', '29', '122', '0', '9', '1497369600', '1497426540', '0', '1497423212', '0');
INSERT INTO `remind_plan` VALUES ('173', '28', '122', '0', '0', '1497369600', '1497424740', '0', '1497423272', '0');
INSERT INTO `remind_plan` VALUES ('174', '29', '122', '0', '9', '1497369600', '1497426540', '0', '1497423272', '0');
INSERT INTO `remind_plan` VALUES ('175', '28', '122', '0', '0', '1497369600', '1497424740', '0', '1497423332', '0');
INSERT INTO `remind_plan` VALUES ('176', '29', '122', '0', '9', '1497369600', '1497426540', '0', '1497423332', '0');
INSERT INTO `remind_plan` VALUES ('177', '28', '122', '0', '0', '1497369600', '1497424740', '0', '1497423392', '0');
INSERT INTO `remind_plan` VALUES ('178', '29', '122', '0', '9', '1497369600', '1497426540', '0', '1497423392', '0');
INSERT INTO `remind_plan` VALUES ('179', '28', '122', '0', '0', '1497369600', '1497424740', '0', '1497423452', '0');
INSERT INTO `remind_plan` VALUES ('180', '29', '122', '0', '9', '1497369600', '1497426540', '0', '1497423452', '0');
INSERT INTO `remind_plan` VALUES ('181', '28', '122', '0', '0', '1497369600', '1497424740', '0', '1497423512', '0');
INSERT INTO `remind_plan` VALUES ('182', '29', '122', '0', '9', '1497369600', '1497426540', '0', '1497423512', '0');
INSERT INTO `remind_plan` VALUES ('183', '28', '122', '0', '0', '1497369600', '1497424740', '0', '1497423572', '0');
INSERT INTO `remind_plan` VALUES ('184', '29', '122', '0', '9', '1497369600', '1497426540', '0', '1497423572', '0');
INSERT INTO `remind_plan` VALUES ('185', '28', '122', '0', '0', '1497369600', '1497424740', '0', '1497423632', '0');
INSERT INTO `remind_plan` VALUES ('186', '29', '122', '0', '9', '1497369600', '1497426540', '0', '1497423632', '0');
INSERT INTO `remind_plan` VALUES ('187', '28', '122', '0', '0', '1497369600', '1497424740', '0', '1497423692', '0');
INSERT INTO `remind_plan` VALUES ('188', '29', '122', '0', '9', '1497369600', '1497426540', '0', '1497423692', '0');
INSERT INTO `remind_plan` VALUES ('189', '28', '122', '0', '0', '1497369600', '1497424740', '0', '1497423752', '0');
INSERT INTO `remind_plan` VALUES ('190', '29', '122', '0', '9', '1497369600', '1497426540', '0', '1497423752', '0');
INSERT INTO `remind_plan` VALUES ('191', '28', '122', '0', '0', '1497369600', '1497424740', '0', '1497423812', '0');
INSERT INTO `remind_plan` VALUES ('192', '29', '122', '0', '9', '1497369600', '1497426540', '0', '1497423812', '0');
INSERT INTO `remind_plan` VALUES ('193', '28', '122', '0', '0', '1497369600', '1497424740', '0', '1497423872', '0');
INSERT INTO `remind_plan` VALUES ('194', '29', '122', '0', '9', '1497369600', '1497426540', '0', '1497423872', '0');
INSERT INTO `remind_plan` VALUES ('195', '28', '122', '0', '0', '1497369600', '1497424740', '0', '1497423932', '0');
INSERT INTO `remind_plan` VALUES ('196', '29', '122', '0', '9', '1497369600', '1497426540', '0', '1497423932', '0');
INSERT INTO `remind_plan` VALUES ('197', '28', '122', '0', '0', '1497369600', '1497424740', '0', '1497423992', '0');
INSERT INTO `remind_plan` VALUES ('198', '29', '122', '0', '9', '1497369600', '1497426540', '0', '1497423992', '0');
INSERT INTO `remind_plan` VALUES ('199', '28', '122', '0', '0', '1497369600', '1497424740', '0', '1497424052', '0');
INSERT INTO `remind_plan` VALUES ('200', '29', '122', '0', '9', '1497369600', '1497426540', '0', '1497424052', '0');
INSERT INTO `remind_plan` VALUES ('201', '28', '122', '0', '0', '1497369600', '1497424740', '0', '1497424113', '0');
INSERT INTO `remind_plan` VALUES ('202', '29', '122', '0', '9', '1497369600', '1497426540', '0', '1497424113', '0');
INSERT INTO `remind_plan` VALUES ('203', '33', '122', '0', '9', '1497369600', '1497425880', '0', '1497424174', '0');
INSERT INTO `remind_plan` VALUES ('204', '33', '122', '0', '9', '1497369600', '1497425880', '0', '1497424233', '0');
INSERT INTO `remind_plan` VALUES ('205', '41', '122', '0', '23', '1497369600', '1497426060', '0', '1497424352', '0');
INSERT INTO `remind_plan` VALUES ('206', '42', '122', '0', '23', '1497369600', '1497431460', '0', '1497424352', '0');
INSERT INTO `remind_plan` VALUES ('207', '41', '122', '0', '23', '1497369600', '1497426060', '0', '1497424412', '0');
INSERT INTO `remind_plan` VALUES ('208', '42', '122', '0', '23', '1497369600', '1497431460', '0', '1497424412', '0');
INSERT INTO `remind_plan` VALUES ('209', '41', '122', '0', '23', '1497369600', '1497426060', '0', '1497424472', '0');
INSERT INTO `remind_plan` VALUES ('210', '42', '122', '0', '23', '1497369600', '1497435060', '0', '1497424472', '0');
INSERT INTO `remind_plan` VALUES ('211', '41', '122', '0', '23', '1497369600', '1497426060', '0', '1497424532', '0');
INSERT INTO `remind_plan` VALUES ('212', '42', '122', '0', '23', '1497369600', '1497435060', '0', '1497424532', '0');
INSERT INTO `remind_plan` VALUES ('213', '62', '122', '0', '23', '1497369600', '1497438840', '0', '1497424532', '0');
INSERT INTO `remind_plan` VALUES ('214', '41', '122', '0', '23', '1497369600', '1497426060', '0', '1497424592', '0');
INSERT INTO `remind_plan` VALUES ('215', '42', '122', '0', '23', '1497369600', '1497435060', '0', '1497424592', '0');
INSERT INTO `remind_plan` VALUES ('216', '62', '122', '0', '23', '1497369600', '1497438840', '0', '1497424592', '0');
INSERT INTO `remind_plan` VALUES ('217', '41', '122', '0', '23', '1497369600', '1497426060', '0', '1497424652', '0');
INSERT INTO `remind_plan` VALUES ('218', '42', '122', '0', '23', '1497369600', '1497435060', '0', '1497424652', '0');
INSERT INTO `remind_plan` VALUES ('219', '62', '122', '0', '23', '1497369600', '1497438840', '0', '1497424652', '0');
INSERT INTO `remind_plan` VALUES ('220', '32', '122', '0', '9', '1497369600', '1497426420', '0', '1497424712', '0');
INSERT INTO `remind_plan` VALUES ('221', '33', '122', '0', '9', '1497369600', '1497428220', '0', '1497424712', '0');
INSERT INTO `remind_plan` VALUES ('222', '32', '122', '0', '9', '1497369600', '1497426420', '0', '1497424772', '0');
INSERT INTO `remind_plan` VALUES ('223', '33', '122', '0', '9', '1497369600', '1497428220', '0', '1497424772', '0');
INSERT INTO `remind_plan` VALUES ('224', '43', '122', '0', '23', '1497369600', '1497426480', '0', '1497424772', '0');
INSERT INTO `remind_plan` VALUES ('225', '44', '122', '0', '23', '1497369600', '1497430080', '0', '1497424772', '0');
INSERT INTO `remind_plan` VALUES ('226', '32', '122', '0', '9', '1497369600', '1497426420', '0', '1497424832', '0');
INSERT INTO `remind_plan` VALUES ('227', '33', '122', '0', '9', '1497369600', '1497428220', '0', '1497424832', '0');
INSERT INTO `remind_plan` VALUES ('228', '43', '122', '0', '23', '1497369600', '1497426480', '0', '1497424832', '0');
INSERT INTO `remind_plan` VALUES ('229', '44', '122', '0', '23', '1497369600', '1497430080', '0', '1497424832', '0');
INSERT INTO `remind_plan` VALUES ('230', '32', '122', '0', '9', '1497369600', '1497426420', '0', '1497424892', '0');
INSERT INTO `remind_plan` VALUES ('231', '33', '122', '0', '9', '1497369600', '1497432000', '0', '1497424892', '0');
INSERT INTO `remind_plan` VALUES ('232', '43', '122', '0', '23', '1497369600', '1497426480', '0', '1497424892', '0');
INSERT INTO `remind_plan` VALUES ('233', '44', '122', '0', '23', '1497369600', '1497433800', '0', '1497424892', '0');
INSERT INTO `remind_plan` VALUES ('234', '32', '122', '0', '9', '1497369600', '1497426420', '0', '1497424953', '0');
INSERT INTO `remind_plan` VALUES ('235', '33', '122', '0', '9', '1497369600', '1497432000', '0', '1497424953', '0');
INSERT INTO `remind_plan` VALUES ('236', '43', '122', '0', '23', '1497369600', '1497426480', '0', '1497424953', '0');
INSERT INTO `remind_plan` VALUES ('237', '44', '122', '0', '23', '1497369600', '1497433800', '0', '1497424953', '0');
INSERT INTO `remind_plan` VALUES ('238', '60', '122', '0', '23', '1497369600', '1497435660', '0', '1497424953', '0');
INSERT INTO `remind_plan` VALUES ('239', '32', '122', '0', '9', '1497369600', '1497426420', '0', '1497425013', '0');
INSERT INTO `remind_plan` VALUES ('240', '33', '122', '0', '9', '1497369600', '1497432000', '0', '1497425013', '0');
INSERT INTO `remind_plan` VALUES ('241', '43', '122', '0', '23', '1497369600', '1497426480', '0', '1497425013', '0');
INSERT INTO `remind_plan` VALUES ('242', '44', '122', '0', '23', '1497369600', '1497433800', '0', '1497425013', '0');
INSERT INTO `remind_plan` VALUES ('243', '60', '122', '0', '23', '1497369600', '1497435660', '0', '1497425013', '0');
INSERT INTO `remind_plan` VALUES ('244', '32', '122', '0', '9', '1497369600', '1497426420', '0', '1497425073', '0');
INSERT INTO `remind_plan` VALUES ('245', '33', '122', '0', '9', '1497369600', '1497432000', '0', '1497425073', '0');
INSERT INTO `remind_plan` VALUES ('246', '43', '122', '0', '23', '1497369600', '1497426480', '0', '1497425073', '0');
INSERT INTO `remind_plan` VALUES ('247', '44', '122', '0', '23', '1497369600', '1497433800', '0', '1497425073', '0');
INSERT INTO `remind_plan` VALUES ('248', '60', '122', '0', '23', '1497369600', '1497435660', '0', '1497425073', '0');
INSERT INTO `remind_plan` VALUES ('249', '32', '122', '0', '9', '1497369600', '1497426420', '0', '1497425132', '0');
INSERT INTO `remind_plan` VALUES ('250', '33', '122', '0', '9', '1497369600', '1497432000', '0', '1497425132', '0');
INSERT INTO `remind_plan` VALUES ('251', '43', '122', '0', '23', '1497369600', '1497426480', '0', '1497425132', '0');
INSERT INTO `remind_plan` VALUES ('252', '44', '122', '0', '23', '1497369600', '1497433800', '0', '1497425132', '0');
INSERT INTO `remind_plan` VALUES ('253', '60', '122', '0', '23', '1497369600', '1497435660', '0', '1497425132', '0');
INSERT INTO `remind_plan` VALUES ('254', '32', '122', '0', '9', '1497369600', '1497426420', '0', '1497425192', '0');
INSERT INTO `remind_plan` VALUES ('255', '33', '122', '0', '9', '1497369600', '1497432000', '0', '1497425192', '0');
INSERT INTO `remind_plan` VALUES ('256', '43', '122', '0', '23', '1497369600', '1497426480', '0', '1497425192', '0');
INSERT INTO `remind_plan` VALUES ('257', '44', '122', '0', '23', '1497369600', '1497433800', '0', '1497425192', '0');
INSERT INTO `remind_plan` VALUES ('258', '60', '122', '0', '23', '1497369600', '1497435660', '0', '1497425192', '0');
INSERT INTO `remind_plan` VALUES ('259', '32', '122', '0', '9', '1497369600', '1497426420', '0', '1497425252', '0');
INSERT INTO `remind_plan` VALUES ('260', '33', '122', '0', '9', '1497369600', '1497432000', '0', '1497425252', '0');
INSERT INTO `remind_plan` VALUES ('261', '43', '122', '0', '23', '1497369600', '1497426480', '0', '1497425252', '0');
INSERT INTO `remind_plan` VALUES ('262', '44', '122', '0', '23', '1497369600', '1497433800', '0', '1497425252', '0');
INSERT INTO `remind_plan` VALUES ('263', '60', '122', '0', '23', '1497369600', '1497435660', '0', '1497425252', '0');
INSERT INTO `remind_plan` VALUES ('264', '32', '122', '0', '9', '1497369600', '1497426420', '0', '1497425312', '0');
INSERT INTO `remind_plan` VALUES ('265', '33', '122', '0', '9', '1497369600', '1497432000', '0', '1497425312', '0');
INSERT INTO `remind_plan` VALUES ('266', '43', '122', '0', '23', '1497369600', '1497426480', '0', '1497425312', '0');
INSERT INTO `remind_plan` VALUES ('267', '44', '122', '0', '23', '1497369600', '1497433800', '0', '1497425312', '0');
INSERT INTO `remind_plan` VALUES ('268', '60', '122', '0', '23', '1497369600', '1497435660', '0', '1497425312', '0');
INSERT INTO `remind_plan` VALUES ('269', '32', '122', '0', '9', '1497369600', '1497426420', '0', '1497425372', '0');
INSERT INTO `remind_plan` VALUES ('270', '33', '122', '0', '9', '1497369600', '1497432000', '0', '1497425372', '0');
INSERT INTO `remind_plan` VALUES ('271', '43', '122', '0', '23', '1497369600', '1497426480', '0', '1497425372', '0');
INSERT INTO `remind_plan` VALUES ('272', '44', '122', '0', '23', '1497369600', '1497433800', '0', '1497425372', '0');
INSERT INTO `remind_plan` VALUES ('273', '60', '122', '0', '23', '1497369600', '1497435660', '0', '1497425372', '0');
INSERT INTO `remind_plan` VALUES ('274', '32', '122', '0', '9', '1497369600', '1497426420', '0', '1497425432', '0');
INSERT INTO `remind_plan` VALUES ('275', '33', '122', '0', '9', '1497369600', '1497432000', '0', '1497425432', '0');
INSERT INTO `remind_plan` VALUES ('276', '43', '122', '0', '23', '1497369600', '1497426480', '0', '1497425432', '0');
INSERT INTO `remind_plan` VALUES ('277', '44', '122', '0', '23', '1497369600', '1497433800', '0', '1497425432', '0');
INSERT INTO `remind_plan` VALUES ('278', '60', '122', '0', '23', '1497369600', '1497435660', '0', '1497425432', '0');
INSERT INTO `remind_plan` VALUES ('279', '1', '122', '0', '9', '1497369600', '1497427260', '0', '1497425552', '0');
INSERT INTO `remind_plan` VALUES ('280', '2', '122', '0', '9', '1497369600', '1497434460', '0', '1497425552', '0');
INSERT INTO `remind_plan` VALUES ('281', '3', '122', '0', '9', '1497369600', '1497439920', '0', '1497425552', '0');
INSERT INTO `remind_plan` VALUES ('282', '1', '122', '0', '9', '1497369600', '1497427260', '0', '1497425613', '0');
INSERT INTO `remind_plan` VALUES ('283', '2', '122', '0', '9', '1497369600', '1497434460', '0', '1497425613', '0');
INSERT INTO `remind_plan` VALUES ('284', '3', '122', '0', '9', '1497369600', '1497439920', '0', '1497425613', '0');
INSERT INTO `remind_plan` VALUES ('285', '1', '122', '0', '9', '1497369600', '1497427260', '0', '1497425673', '0');
INSERT INTO `remind_plan` VALUES ('286', '2', '122', '0', '9', '1497369600', '1497434460', '0', '1497425673', '0');
INSERT INTO `remind_plan` VALUES ('287', '3', '122', '0', '9', '1497369600', '1497439920', '0', '1497425673', '0');
INSERT INTO `remind_plan` VALUES ('288', '1', '122', '0', '9', '1497369600', '1497427260', '0', '1497425733', '0');
INSERT INTO `remind_plan` VALUES ('289', '2', '122', '0', '9', '1497369600', '1497434460', '0', '1497425733', '0');
INSERT INTO `remind_plan` VALUES ('290', '3', '122', '0', '9', '1497369600', '1497439920', '0', '1497425733', '0');
INSERT INTO `remind_plan` VALUES ('291', '1', '122', '0', '9', '1497369600', '1497427260', '0', '1497425793', '0');
INSERT INTO `remind_plan` VALUES ('292', '2', '122', '0', '9', '1497369600', '1497434460', '0', '1497425793', '0');
INSERT INTO `remind_plan` VALUES ('293', '3', '122', '0', '9', '1497369600', '1497439920', '0', '1497425793', '0');
INSERT INTO `remind_plan` VALUES ('294', '1', '122', '0', '9', '1497369600', '1497427260', '0', '1497425853', '0');
INSERT INTO `remind_plan` VALUES ('295', '2', '122', '0', '9', '1497369600', '1497434460', '0', '1497425853', '0');
INSERT INTO `remind_plan` VALUES ('296', '3', '122', '0', '9', '1497369600', '1497439920', '0', '1497425853', '0');
INSERT INTO `remind_plan` VALUES ('297', '1', '122', '0', '9', '1497369600', '1497427260', '0', '1497425913', '0');
INSERT INTO `remind_plan` VALUES ('298', '2', '122', '0', '9', '1497369600', '1497434460', '0', '1497425913', '0');
INSERT INTO `remind_plan` VALUES ('299', '3', '122', '0', '9', '1497369600', '1497439920', '0', '1497425913', '0');
INSERT INTO `remind_plan` VALUES ('300', '1', '122', '0', '9', '1497369600', '1497427260', '0', '1497425973', '0');
INSERT INTO `remind_plan` VALUES ('301', '2', '122', '0', '9', '1497369600', '1497434460', '0', '1497425973', '0');
INSERT INTO `remind_plan` VALUES ('302', '3', '122', '0', '9', '1497369600', '1497439920', '0', '1497425973', '0');
INSERT INTO `remind_plan` VALUES ('303', '1', '122', '0', '9', '1497369600', '1497427260', '0', '1497426033', '0');
INSERT INTO `remind_plan` VALUES ('304', '2', '122', '0', '9', '1497369600', '1497434460', '0', '1497426033', '0');
INSERT INTO `remind_plan` VALUES ('305', '3', '122', '0', '9', '1497369600', '1497439920', '0', '1497426033', '0');
INSERT INTO `remind_plan` VALUES ('306', '1', '122', '0', '9', '1497369600', '1497427260', '0', '1497426093', '0');
INSERT INTO `remind_plan` VALUES ('307', '2', '122', '0', '9', '1497369600', '1497434460', '0', '1497426093', '0');
INSERT INTO `remind_plan` VALUES ('308', '3', '122', '0', '9', '1497369600', '1497439920', '0', '1497426093', '0');
INSERT INTO `remind_plan` VALUES ('309', '1', '122', '0', '9', '1497369600', '1497427260', '0', '1497426153', '0');
INSERT INTO `remind_plan` VALUES ('310', '2', '122', '0', '9', '1497369600', '1497434460', '0', '1497426153', '0');
INSERT INTO `remind_plan` VALUES ('311', '3', '122', '0', '9', '1497369600', '1497439920', '0', '1497426153', '0');
INSERT INTO `remind_plan` VALUES ('312', '1', '122', '0', '9', '1497369600', '1497427260', '0', '1497426213', '0');
INSERT INTO `remind_plan` VALUES ('313', '2', '122', '0', '9', '1497369600', '1497434460', '0', '1497426213', '0');
INSERT INTO `remind_plan` VALUES ('314', '3', '122', '0', '9', '1497369600', '1497439920', '0', '1497426213', '0');
INSERT INTO `remind_plan` VALUES ('315', '1', '122', '0', '9', '1497369600', '1497429780', '0', '1497426273', '0');
INSERT INTO `remind_plan` VALUES ('316', '28', '122', '0', '9', '1497369600', '1497428100', '0', '1497426333', '0');
INSERT INTO `remind_plan` VALUES ('317', '29', '122', '0', '9', '1497369600', '1497433500', '0', '1497426333', '0');
INSERT INTO `remind_plan` VALUES ('318', '28', '122', '0', '9', '1497369600', '1497428100', '0', '1497426393', '0');
INSERT INTO `remind_plan` VALUES ('319', '29', '122', '0', '9', '1497369600', '1497433500', '0', '1497426393', '0');
INSERT INTO `remind_plan` VALUES ('320', '28', '122', '0', '9', '1497369600', '1497428100', '0', '1497426453', '0');
INSERT INTO `remind_plan` VALUES ('321', '29', '122', '0', '9', '1497369600', '1497433500', '0', '1497426453', '0');
INSERT INTO `remind_plan` VALUES ('322', '48', '122', '0', '9', '1497369600', '1497435360', '0', '1497426453', '0');
INSERT INTO `remind_plan` VALUES ('323', '28', '122', '0', '9', '1497369600', '1497428100', '0', '1497426513', '0');
INSERT INTO `remind_plan` VALUES ('324', '29', '122', '0', '9', '1497369600', '1497433500', '0', '1497426513', '0');
INSERT INTO `remind_plan` VALUES ('325', '48', '122', '0', '9', '1497369600', '1497435360', '0', '1497426513', '0');
INSERT INTO `remind_plan` VALUES ('326', '54', '122', '0', '9', '1497369600', '1497444420', '0', '1497426513', '0');
INSERT INTO `remind_plan` VALUES ('327', '28', '122', '0', '9', '1497369600', '1497428100', '0', '1497426573', '0');
INSERT INTO `remind_plan` VALUES ('328', '29', '122', '0', '9', '1497369600', '1497433500', '0', '1497426573', '0');
INSERT INTO `remind_plan` VALUES ('329', '48', '122', '0', '9', '1497369600', '1497435360', '0', '1497426573', '0');
INSERT INTO `remind_plan` VALUES ('330', '54', '122', '0', '9', '1497369600', '1497444420', '0', '1497426573', '0');
INSERT INTO `remind_plan` VALUES ('331', '28', '122', '0', '9', '1497369600', '1497428100', '0', '1497426633', '0');
INSERT INTO `remind_plan` VALUES ('332', '29', '122', '0', '9', '1497369600', '1497433500', '0', '1497426633', '0');
INSERT INTO `remind_plan` VALUES ('333', '48', '122', '0', '9', '1497369600', '1497435360', '0', '1497426633', '0');
INSERT INTO `remind_plan` VALUES ('334', '54', '122', '0', '9', '1497369600', '1497444420', '0', '1497426633', '0');
INSERT INTO `remind_plan` VALUES ('335', '28', '122', '0', '9', '1497369600', '1497428100', '0', '1497426693', '0');
INSERT INTO `remind_plan` VALUES ('336', '29', '122', '0', '9', '1497369600', '1497433500', '0', '1497426693', '0');
INSERT INTO `remind_plan` VALUES ('337', '48', '122', '0', '9', '1497369600', '1497435360', '0', '1497426693', '0');
INSERT INTO `remind_plan` VALUES ('338', '54', '122', '0', '9', '1497369600', '1497444420', '0', '1497426693', '0');
INSERT INTO `remind_plan` VALUES ('339', '28', '122', '0', '9', '1497369600', '1497428100', '0', '1497426753', '0');
INSERT INTO `remind_plan` VALUES ('340', '29', '122', '0', '9', '1497369600', '1497433500', '0', '1497426753', '0');
INSERT INTO `remind_plan` VALUES ('341', '48', '122', '0', '9', '1497369600', '1497435360', '0', '1497426753', '0');
INSERT INTO `remind_plan` VALUES ('342', '54', '122', '0', '9', '1497369600', '1497444420', '0', '1497426753', '0');
INSERT INTO `remind_plan` VALUES ('343', '28', '122', '0', '9', '1497369600', '1497428100', '0', '1497426873', '0');
INSERT INTO `remind_plan` VALUES ('344', '29', '122', '0', '9', '1497369600', '1497433500', '0', '1497426873', '0');
INSERT INTO `remind_plan` VALUES ('345', '48', '122', '0', '9', '1497369600', '1497435360', '0', '1497426873', '0');
INSERT INTO `remind_plan` VALUES ('346', '54', '122', '0', '9', '1497369600', '1497444420', '0', '1497426873', '0');
INSERT INTO `remind_plan` VALUES ('347', '28', '122', '0', '9', '1497369600', '1497428100', '0', '1497426933', '0');
INSERT INTO `remind_plan` VALUES ('348', '29', '122', '0', '9', '1497369600', '1497433500', '0', '1497426933', '0');
INSERT INTO `remind_plan` VALUES ('349', '48', '122', '0', '9', '1497369600', '1497435360', '0', '1497426933', '0');
INSERT INTO `remind_plan` VALUES ('350', '54', '122', '0', '9', '1497369600', '1497444420', '0', '1497426933', '0');
INSERT INTO `remind_plan` VALUES ('351', '28', '122', '0', '9', '1497369600', '1497428100', '0', '1497426993', '0');
INSERT INTO `remind_plan` VALUES ('352', '29', '122', '0', '9', '1497369600', '1497433500', '0', '1497426993', '0');
INSERT INTO `remind_plan` VALUES ('353', '48', '122', '0', '9', '1497369600', '1497435360', '0', '1497426993', '0');
INSERT INTO `remind_plan` VALUES ('354', '54', '122', '0', '9', '1497369600', '1497444420', '0', '1497426993', '0');
INSERT INTO `remind_plan` VALUES ('355', '28', '122', '0', '9', '1497369600', '1497428100', '0', '1497427053', '0');
INSERT INTO `remind_plan` VALUES ('356', '29', '122', '0', '9', '1497369600', '1497433500', '0', '1497427053', '0');
INSERT INTO `remind_plan` VALUES ('357', '48', '122', '0', '9', '1497369600', '1497435360', '0', '1497427053', '0');
INSERT INTO `remind_plan` VALUES ('358', '54', '122', '0', '9', '1497369600', '1497444420', '0', '1497427053', '0');
INSERT INTO `remind_plan` VALUES ('359', '28', '122', '0', '9', '1497369600', '1497428100', '0', '1497427113', '0');
INSERT INTO `remind_plan` VALUES ('360', '29', '122', '0', '9', '1497369600', '1497433500', '0', '1497427113', '0');
INSERT INTO `remind_plan` VALUES ('361', '48', '122', '0', '9', '1497369600', '1497435360', '0', '1497427113', '0');
INSERT INTO `remind_plan` VALUES ('362', '54', '122', '0', '9', '1497369600', '1497444420', '0', '1497427113', '0');
INSERT INTO `remind_plan` VALUES ('363', '28', '122', '0', '9', '1497369600', '1497428100', '0', '1497427173', '0');
INSERT INTO `remind_plan` VALUES ('364', '29', '122', '0', '9', '1497369600', '1497433500', '0', '1497427173', '0');
INSERT INTO `remind_plan` VALUES ('365', '48', '122', '0', '9', '1497369600', '1497435360', '0', '1497427173', '0');
INSERT INTO `remind_plan` VALUES ('366', '54', '122', '0', '9', '1497369600', '1497444420', '0', '1497427173', '0');
INSERT INTO `remind_plan` VALUES ('367', '28', '122', '0', '9', '1497369600', '1497428100', '0', '1497427233', '0');
INSERT INTO `remind_plan` VALUES ('368', '29', '122', '0', '9', '1497369600', '1497433500', '0', '1497427233', '0');
INSERT INTO `remind_plan` VALUES ('369', '48', '122', '0', '9', '1497369600', '1497435360', '0', '1497427233', '0');
INSERT INTO `remind_plan` VALUES ('370', '54', '122', '0', '9', '1497369600', '1497444420', '0', '1497427233', '0');
INSERT INTO `remind_plan` VALUES ('371', '28', '122', '0', '9', '1497369600', '1497428100', '0', '1497427293', '0');
INSERT INTO `remind_plan` VALUES ('372', '29', '122', '0', '9', '1497369600', '1497433500', '0', '1497427293', '0');
INSERT INTO `remind_plan` VALUES ('373', '48', '122', '0', '9', '1497369600', '1497435360', '0', '1497427293', '0');
INSERT INTO `remind_plan` VALUES ('374', '54', '122', '0', '9', '1497369600', '1497448020', '0', '1497427293', '0');
INSERT INTO `remind_plan` VALUES ('375', '28', '122', '0', '9', '1497369600', '1497428100', '0', '1497427353', '0');
INSERT INTO `remind_plan` VALUES ('376', '29', '122', '0', '9', '1497369600', '1497433500', '0', '1497427353', '0');
INSERT INTO `remind_plan` VALUES ('377', '48', '122', '0', '9', '1497369600', '1497435360', '0', '1497427353', '0');
INSERT INTO `remind_plan` VALUES ('378', '54', '122', '0', '9', '1497369600', '1497448020', '0', '1497427353', '0');
INSERT INTO `remind_plan` VALUES ('379', '28', '122', '0', '9', '1497369600', '1497428100', '0', '1497427413', '0');
INSERT INTO `remind_plan` VALUES ('380', '29', '122', '0', '9', '1497369600', '1497433500', '0', '1497427413', '0');
INSERT INTO `remind_plan` VALUES ('381', '48', '122', '0', '9', '1497369600', '1497435360', '0', '1497427413', '0');
INSERT INTO `remind_plan` VALUES ('382', '54', '122', '0', '9', '1497369600', '1497448020', '0', '1497427413', '0');
INSERT INTO `remind_plan` VALUES ('383', '28', '122', '0', '9', '1497369600', '1497428100', '0', '1497427473', '0');
INSERT INTO `remind_plan` VALUES ('384', '29', '122', '0', '9', '1497369600', '1497433500', '0', '1497427473', '0');
INSERT INTO `remind_plan` VALUES ('385', '48', '122', '0', '9', '1497369600', '1497435360', '0', '1497427473', '0');
INSERT INTO `remind_plan` VALUES ('386', '54', '122', '0', '9', '1497369600', '1497448020', '0', '1497427473', '0');
INSERT INTO `remind_plan` VALUES ('387', '28', '122', '0', '9', '1497369600', '1497428100', '0', '1497427533', '0');
INSERT INTO `remind_plan` VALUES ('388', '29', '122', '0', '9', '1497369600', '1497433500', '0', '1497427533', '0');
INSERT INTO `remind_plan` VALUES ('389', '48', '122', '0', '9', '1497369600', '1497435360', '0', '1497427533', '0');
INSERT INTO `remind_plan` VALUES ('390', '54', '122', '0', '9', '1497369600', '1497448020', '0', '1497427533', '0');
INSERT INTO `remind_plan` VALUES ('391', '28', '122', '0', '9', '1497369600', '1497428100', '0', '1497427593', '0');
INSERT INTO `remind_plan` VALUES ('392', '29', '122', '0', '9', '1497369600', '1497433500', '0', '1497427593', '0');
INSERT INTO `remind_plan` VALUES ('393', '48', '122', '0', '9', '1497369600', '1497435360', '0', '1497427593', '0');
INSERT INTO `remind_plan` VALUES ('394', '54', '122', '0', '9', '1497369600', '1497448020', '0', '1497427593', '0');
INSERT INTO `remind_plan` VALUES ('395', '28', '122', '0', '9', '1497369600', '1497428100', '0', '1497427653', '0');
INSERT INTO `remind_plan` VALUES ('396', '29', '122', '0', '9', '1497369600', '1497433500', '0', '1497427653', '0');
INSERT INTO `remind_plan` VALUES ('397', '48', '122', '0', '9', '1497369600', '1497435360', '0', '1497427653', '0');
INSERT INTO `remind_plan` VALUES ('398', '54', '122', '0', '9', '1497369600', '1497448020', '0', '1497427653', '0');
INSERT INTO `remind_plan` VALUES ('399', '28', '122', '0', '9', '1497369600', '1497428100', '0', '1497427713', '0');
INSERT INTO `remind_plan` VALUES ('400', '29', '122', '0', '9', '1497369600', '1497433500', '0', '1497427713', '0');
INSERT INTO `remind_plan` VALUES ('401', '48', '122', '0', '9', '1497369600', '1497435360', '0', '1497427713', '0');
INSERT INTO `remind_plan` VALUES ('402', '54', '122', '0', '9', '1497369600', '1497448020', '0', '1497427713', '0');
INSERT INTO `remind_plan` VALUES ('403', '28', '122', '0', '9', '1497369600', '1497428100', '0', '1497427774', '0');
INSERT INTO `remind_plan` VALUES ('404', '29', '122', '0', '9', '1497369600', '1497433500', '0', '1497427774', '0');
INSERT INTO `remind_plan` VALUES ('405', '48', '122', '0', '9', '1497369600', '1497435360', '0', '1497427774', '0');
INSERT INTO `remind_plan` VALUES ('406', '54', '122', '0', '9', '1497369600', '1497448020', '0', '1497427774', '0');
INSERT INTO `remind_plan` VALUES ('407', '28', '122', '0', '9', '1497369600', '1497428100', '0', '1497427835', '0');
INSERT INTO `remind_plan` VALUES ('408', '29', '122', '0', '9', '1497369600', '1497433500', '0', '1497427835', '0');
INSERT INTO `remind_plan` VALUES ('409', '48', '122', '0', '9', '1497369600', '1497435360', '0', '1497427835', '0');
INSERT INTO `remind_plan` VALUES ('410', '54', '122', '0', '9', '1497369600', '1497448020', '0', '1497427835', '0');
INSERT INTO `remind_plan` VALUES ('411', '28', '122', '0', '9', '1497369600', '1497428100', '0', '1497427894', '0');
INSERT INTO `remind_plan` VALUES ('412', '29', '122', '0', '9', '1497369600', '1497433500', '0', '1497427894', '0');
INSERT INTO `remind_plan` VALUES ('413', '48', '122', '0', '9', '1497369600', '1497435360', '0', '1497427894', '0');
INSERT INTO `remind_plan` VALUES ('414', '54', '122', '0', '9', '1497369600', '1497448020', '0', '1497427894', '0');
INSERT INTO `remind_plan` VALUES ('415', '28', '122', '0', '9', '1497369600', '1497428100', '0', '1497427954', '0');
INSERT INTO `remind_plan` VALUES ('416', '29', '122', '0', '9', '1497369600', '1497433500', '0', '1497427954', '0');
INSERT INTO `remind_plan` VALUES ('417', '48', '122', '0', '9', '1497369600', '1497435360', '0', '1497427954', '0');
INSERT INTO `remind_plan` VALUES ('418', '54', '122', '0', '9', '1497369600', '1497448020', '0', '1497427954', '0');
INSERT INTO `remind_plan` VALUES ('419', '28', '122', '0', '9', '1497369600', '1497428100', '0', '1497428014', '0');
INSERT INTO `remind_plan` VALUES ('420', '29', '122', '0', '9', '1497369600', '1497433500', '0', '1497428014', '0');
INSERT INTO `remind_plan` VALUES ('421', '48', '122', '0', '9', '1497369600', '1497435360', '0', '1497428014', '0');
INSERT INTO `remind_plan` VALUES ('422', '54', '122', '0', '9', '1497369600', '1497448020', '0', '1497428014', '0');
INSERT INTO `remind_plan` VALUES ('423', '28', '122', '0', '9', '1497369600', '1497428100', '0', '1497428080', '0');
INSERT INTO `remind_plan` VALUES ('424', '29', '122', '0', '9', '1497369600', '1497433500', '0', '1497428080', '0');
INSERT INTO `remind_plan` VALUES ('425', '48', '122', '0', '9', '1497369600', '1497435360', '0', '1497428080', '0');
INSERT INTO `remind_plan` VALUES ('426', '54', '122', '0', '9', '1497369600', '1497448020', '0', '1497428080', '0');
INSERT INTO `remind_plan` VALUES ('427', '40', '122', '0', '9', '1497369600', '1497430680', '0', '1497429986', '0');
INSERT INTO `remind_plan` VALUES ('428', '40', '122', '0', '9', '1497369600', '1497430680', '0', '1497429998', '0');
INSERT INTO `remind_plan` VALUES ('429', '40', '122', '0', '9', '1497369600', '1497430680', '0', '1497430043', '0');
INSERT INTO `remind_plan` VALUES ('430', '40', '122', '0', '9', '1497369600', '1497430680', '0', '1497430103', '0');
INSERT INTO `remind_plan` VALUES ('431', '40', '122', '0', '9', '1497369600', '1497430680', '0', '1497430232', '0');
INSERT INTO `remind_plan` VALUES ('432', '40', '122', '0', '9', '1497369600', '1497430680', '0', '1497430283', '0');
INSERT INTO `remind_plan` VALUES ('433', '40', '122', '0', '9', '1497369600', '1497437460', '0', '1497430343', '0');
INSERT INTO `remind_plan` VALUES ('434', '40', '122', '0', '9', '1497369600', '1497437460', '0', '1497430403', '0');
INSERT INTO `remind_plan` VALUES ('435', '40', '122', '0', '9', '1497369600', '1497437460', '0', '1497430463', '0');
INSERT INTO `remind_plan` VALUES ('436', '40', '122', '0', '9', '1497369600', '1497437460', '0', '1497430583', '0');
INSERT INTO `remind_plan` VALUES ('437', '40', '122', '0', '9', '1497369600', '1497437460', '0', '1497430646', '0');
INSERT INTO `remind_plan` VALUES ('438', '40', '122', '0', '9', '1497369600', '1497437460', '0', '1497430703', '0');
INSERT INTO `remind_plan` VALUES ('439', '40', '122', '0', '9', '1497369600', '1497437460', '0', '1497430763', '0');
INSERT INTO `remind_plan` VALUES ('440', '32', '122', '0', '9', '1497369600', '1497434760', '0', '1497431244', '0');
INSERT INTO `remind_plan` VALUES ('441', '32', '122', '0', '9', '1497369600', '1497434760', '0', '1497431303', '0');
INSERT INTO `remind_plan` VALUES ('442', '32', '122', '0', '9', '1497369600', '1497434760', '0', '1497431364', '0');
INSERT INTO `remind_plan` VALUES ('443', '32', '122', '0', '9', '1497369600', '1497434760', '0', '1497431424', '0');
INSERT INTO `remind_plan` VALUES ('444', '32', '122', '0', '9', '1497369600', '1497434760', '0', '1497431484', '0');
INSERT INTO `remind_plan` VALUES ('445', '32', '122', '0', '9', '1497369600', '1497434760', '0', '1497431544', '0');
INSERT INTO `remind_plan` VALUES ('446', '32', '122', '0', '9', '1497369600', '1497434760', '0', '1497431604', '0');
INSERT INTO `remind_plan` VALUES ('447', '32', '122', '0', '9', '1497369600', '1497434760', '0', '1497431664', '0');
INSERT INTO `remind_plan` VALUES ('448', '32', '122', '0', '9', '1497369600', '1497434760', '0', '1497431726', '0');
INSERT INTO `remind_plan` VALUES ('449', '32', '122', '0', '9', '1497369600', '1497434760', '0', '1497431785', '0');
INSERT INTO `remind_plan` VALUES ('450', '32', '122', '0', '9', '1497369600', '1497434760', '0', '1497431845', '0');
INSERT INTO `remind_plan` VALUES ('451', '32', '122', '0', '9', '1497369600', '1497434760', '0', '1497431904', '0');
INSERT INTO `remind_plan` VALUES ('452', '32', '122', '0', '9', '1497369600', '1497434760', '0', '1497432084', '0');
INSERT INTO `remind_plan` VALUES ('453', '32', '122', '0', '9', '1497369600', '1497440160', '0', '1497432144', '0');
INSERT INTO `remind_plan` VALUES ('454', '32', '122', '0', '9', '1497369600', '1497440160', '0', '1497432204', '0');
INSERT INTO `remind_plan` VALUES ('455', '32', '122', '0', '9', '1497369600', '1497440160', '0', '1497432264', '0');
INSERT INTO `remind_plan` VALUES ('456', '32', '122', '0', '9', '1497369600', '1497440160', '0', '1497432324', '0');
INSERT INTO `remind_plan` VALUES ('457', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497491540', '0');
INSERT INTO `remind_plan` VALUES ('458', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497491540', '0');
INSERT INTO `remind_plan` VALUES ('459', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497491599', '0');
INSERT INTO `remind_plan` VALUES ('460', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497491599', '0');
INSERT INTO `remind_plan` VALUES ('461', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497491732', '0');
INSERT INTO `remind_plan` VALUES ('462', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497491732', '0');
INSERT INTO `remind_plan` VALUES ('463', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497491817', '0');
INSERT INTO `remind_plan` VALUES ('464', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497491817', '0');
INSERT INTO `remind_plan` VALUES ('465', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497491839', '0');
INSERT INTO `remind_plan` VALUES ('466', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497491839', '0');
INSERT INTO `remind_plan` VALUES ('467', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497491899', '0');
INSERT INTO `remind_plan` VALUES ('468', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497491899', '0');
INSERT INTO `remind_plan` VALUES ('469', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497491962', '0');
INSERT INTO `remind_plan` VALUES ('470', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497491962', '0');
INSERT INTO `remind_plan` VALUES ('471', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497492020', '0');
INSERT INTO `remind_plan` VALUES ('472', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497492020', '0');
INSERT INTO `remind_plan` VALUES ('473', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497492079', '0');
INSERT INTO `remind_plan` VALUES ('474', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497492079', '0');
INSERT INTO `remind_plan` VALUES ('475', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497492140', '0');
INSERT INTO `remind_plan` VALUES ('476', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497492140', '0');
INSERT INTO `remind_plan` VALUES ('477', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497492199', '0');
INSERT INTO `remind_plan` VALUES ('478', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497492199', '0');
INSERT INTO `remind_plan` VALUES ('479', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497492260', '0');
INSERT INTO `remind_plan` VALUES ('480', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497492260', '0');
INSERT INTO `remind_plan` VALUES ('481', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497492320', '0');
INSERT INTO `remind_plan` VALUES ('482', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497492320', '0');
INSERT INTO `remind_plan` VALUES ('483', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497492379', '0');
INSERT INTO `remind_plan` VALUES ('484', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497492379', '0');
INSERT INTO `remind_plan` VALUES ('485', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497492442', '0');
INSERT INTO `remind_plan` VALUES ('486', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497492442', '0');
INSERT INTO `remind_plan` VALUES ('487', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497492499', '0');
INSERT INTO `remind_plan` VALUES ('488', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497492499', '0');
INSERT INTO `remind_plan` VALUES ('489', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497492560', '0');
INSERT INTO `remind_plan` VALUES ('490', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497492560', '0');
INSERT INTO `remind_plan` VALUES ('491', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497492622', '0');
INSERT INTO `remind_plan` VALUES ('492', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497492622', '0');
INSERT INTO `remind_plan` VALUES ('493', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497492680', '0');
INSERT INTO `remind_plan` VALUES ('494', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497492680', '0');
INSERT INTO `remind_plan` VALUES ('495', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497492739', '0');
INSERT INTO `remind_plan` VALUES ('496', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497492739', '0');
INSERT INTO `remind_plan` VALUES ('497', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497492802', '0');
INSERT INTO `remind_plan` VALUES ('498', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497492802', '0');
INSERT INTO `remind_plan` VALUES ('499', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497492860', '0');
INSERT INTO `remind_plan` VALUES ('500', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497492860', '0');
INSERT INTO `remind_plan` VALUES ('501', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497492920', '0');
INSERT INTO `remind_plan` VALUES ('502', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497492920', '0');
INSERT INTO `remind_plan` VALUES ('503', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497492980', '0');
INSERT INTO `remind_plan` VALUES ('504', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497492980', '0');
INSERT INTO `remind_plan` VALUES ('505', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497493040', '0');
INSERT INTO `remind_plan` VALUES ('506', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497493040', '0');
INSERT INTO `remind_plan` VALUES ('507', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497493469', '0');
INSERT INTO `remind_plan` VALUES ('508', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497493469', '0');
INSERT INTO `remind_plan` VALUES ('509', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497493739', '0');
INSERT INTO `remind_plan` VALUES ('510', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497493739', '0');
INSERT INTO `remind_plan` VALUES ('511', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497493959', '0');
INSERT INTO `remind_plan` VALUES ('512', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497493959', '0');
INSERT INTO `remind_plan` VALUES ('513', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497494397', '0');
INSERT INTO `remind_plan` VALUES ('514', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497494397', '0');
INSERT INTO `remind_plan` VALUES ('515', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497494595', '0');
INSERT INTO `remind_plan` VALUES ('516', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497494595', '0');
INSERT INTO `remind_plan` VALUES ('517', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497494764', '0');
INSERT INTO `remind_plan` VALUES ('518', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497494764', '0');
INSERT INTO `remind_plan` VALUES ('519', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497495159', '0');
INSERT INTO `remind_plan` VALUES ('520', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497495159', '0');
INSERT INTO `remind_plan` VALUES ('521', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497495519', '0');
INSERT INTO `remind_plan` VALUES ('522', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497495519', '0');
INSERT INTO `remind_plan` VALUES ('523', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497495760', '0');
INSERT INTO `remind_plan` VALUES ('524', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497495760', '0');
INSERT INTO `remind_plan` VALUES ('525', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497495975', '0');
INSERT INTO `remind_plan` VALUES ('526', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497495975', '0');
INSERT INTO `remind_plan` VALUES ('527', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497496213', '0');
INSERT INTO `remind_plan` VALUES ('528', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497496213', '0');
INSERT INTO `remind_plan` VALUES ('529', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497496506', '0');
INSERT INTO `remind_plan` VALUES ('530', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497496506', '0');
INSERT INTO `remind_plan` VALUES ('531', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497496805', '0');
INSERT INTO `remind_plan` VALUES ('532', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497496805', '0');
INSERT INTO `remind_plan` VALUES ('533', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497497274', '0');
INSERT INTO `remind_plan` VALUES ('534', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497497274', '0');
INSERT INTO `remind_plan` VALUES ('535', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497497455', '0');
INSERT INTO `remind_plan` VALUES ('536', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497497455', '0');
INSERT INTO `remind_plan` VALUES ('537', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497497769', '0');
INSERT INTO `remind_plan` VALUES ('538', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497497769', '0');
INSERT INTO `remind_plan` VALUES ('539', '172', '123', '0', '9', '1497456000', '1497500280', '0', '1497497831', '0');
INSERT INTO `remind_plan` VALUES ('540', '174', '123', '0', '23', '1497456000', '1497498480', '0', '1497497831', '0');

-- ----------------------------
-- Table structure for role_info
-- ----------------------------
DROP TABLE IF EXISTS `role_info`;
CREATE TABLE `role_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `num` tinyint(1) unsigned NOT NULL COMMENT '角色编码',
  `introduce` varchar(50) NOT NULL COMMENT '角色描述',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of role_info
-- ----------------------------
INSERT INTO `role_info` VALUES ('1', '1', '超级管理员', '1487049448', '0');
INSERT INTO `role_info` VALUES ('2', '2', '管理员', '1487049448', '0');
INSERT INTO `role_info` VALUES ('3', '3', '院长', '1487049448', '0');
INSERT INTO `role_info` VALUES ('4', '4', '诊室', '1487049448', '0');
INSERT INTO `role_info` VALUES ('5', '5', '后勤', '1487049448', '0');
INSERT INTO `role_info` VALUES ('6', '6', '器械', '1487049448', '0');
INSERT INTO `role_info` VALUES ('7', '7', '护工', '1487049448', '0');
INSERT INTO `role_info` VALUES ('8', '8', '督导', '1487049448', '0');
INSERT INTO `role_info` VALUES ('9', '9', '厨师', '1487049448', '0');
INSERT INTO `role_info` VALUES ('10', '10', '财务', '1487049448', '0');

-- ----------------------------
-- Table structure for scanning
-- ----------------------------
DROP TABLE IF EXISTS `scanning`;
CREATE TABLE `scanning` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(11) unsigned NOT NULL,
  `w_id` int(11) unsigned NOT NULL,
  `imgurl` varchar(200) NOT NULL,
  `created` int(11) unsigned NOT NULL,
  `updated` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='扫描件';

-- ----------------------------
-- Records of scanning
-- ----------------------------
INSERT INTO `scanning` VALUES ('10', '2', '0', '/upload/scanning/2017/04/25/1347ff5dbe791c5e970c3f86012d62ee.jpg', '1493090232', '0');
INSERT INTO `scanning` VALUES ('11', '2', '0', '/upload/scanning/2017/04/25/86c8b07c017a7c05f08db467ca3d691b.jpg', '1493090232', '0');
INSERT INTO `scanning` VALUES ('14', '2', '0', '/upload/scanning/2017/04/25/fafeee5a046a04a664ee20fc3db01f84.jpg', '1493098488', '0');
INSERT INTO `scanning` VALUES ('15', '21', '0', '/upload/scanning/2017/04/25/d6d7ae7ce488a44551113172436de0ab.jpg', '1493100469', '0');
INSERT INTO `scanning` VALUES ('16', '21', '0', '/upload/scanning/2017/04/25/9fdf6158260b52be61d12f93eec00a6a.jpg', '1493100469', '0');
INSERT INTO `scanning` VALUES ('17', '0', '52', '/upload/scanning/2017/04/25/5d22a6c5dcd69c82a8641b12b3bc2de0.jpg', '1493110548', '0');
INSERT INTO `scanning` VALUES ('20', '0', '51', '/upload/scanning/2017/04/25/63a3812396d300d0c118254ea2cf033f.jpg', '1493112444', '0');
INSERT INTO `scanning` VALUES ('21', '0', '51', '/upload/scanning/2017/04/25/42ebabf5823ff211389191f507f85d8d.jpg', '1493112444', '0');
INSERT INTO `scanning` VALUES ('22', '0', '51', '/upload/scanning/2017/04/25/afa77552787986ad8a1edbf16d5b0dfa.jpg', '1493112444', '0');
INSERT INTO `scanning` VALUES ('23', '0', '67', '/upload/scanning/2017/04/26/b82d90deed509c4a3e3df0550e83b0b4.jpg', '1493195365', '0');
INSERT INTO `scanning` VALUES ('24', '0', '67', '/upload/scanning/2017/04/26/980b1e0e74531b6929f988dc8b2cc56d.jpg', '1493195365', '0');
INSERT INTO `scanning` VALUES ('25', '0', '67', '/upload/scanning/2017/04/27/ce48033473248209c332f672480c0698.jpg', '1493275268', '0');
INSERT INTO `scanning` VALUES ('26', '22', '0', '/upload/scanning/2017/04/27/410a0756b5fb72ee8c96f16430807deb.jpg', '1493280943', '0');
INSERT INTO `scanning` VALUES ('27', '22', '0', '/upload/scanning/2017/04/28/75ec3efb361c30a597afe397f992b37f.jpg', '1493360518', '0');
INSERT INTO `scanning` VALUES ('28', '23', '0', '/upload/scanning/2017/05/02/957e70a9c4555a33b5ef6b4615f1977c.jpg', '1493707148', '0');
INSERT INTO `scanning` VALUES ('29', '0', '68', '/upload/scanning/2017/05/09/d31bf2e1313562838264637db3e4d02c.jpg', '1494295574', '0');
INSERT INTO `scanning` VALUES ('30', '25', '0', '/upload/scanning/2017/05/10/98e9855929dd9a4ed8c0ccd49622d85b.jpg', '1494382274', '0');
INSERT INTO `scanning` VALUES ('31', '25', '0', '/upload/scanning/2017/05/10/82e9867e44d49c5c13ebba79231f9e84.jpg', '1494382719', '0');
INSERT INTO `scanning` VALUES ('32', '25', '0', '/upload/scanning/2017/05/12/4c51eff0e0d79fea8c309c8a4a2d806c.jpg', '1494559065', '0');
INSERT INTO `scanning` VALUES ('33', '25', '0', '/upload/scanning/2017/05/12/e30afb6defaf06e020f11ed584c5d39f.jpg', '1494559210', '0');
INSERT INTO `scanning` VALUES ('34', '25', '0', '/upload/scanning/2017/05/12/326505d803d09770d36b5f8160502004.jpg', '1494559210', '0');
INSERT INTO `scanning` VALUES ('35', '0', '70', '/upload/scanning/2017/05/12/2247d2e5849c2232525a44fc851c65b3.jpg', '1494570799', '0');

-- ----------------------------
-- Table structure for senior
-- ----------------------------
DROP TABLE IF EXISTS `senior`;
CREATE TABLE `senior` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL COMMENT '姓名',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性别(0.未知、1.男、2.女))',
  `photo` varchar(255) NOT NULL COMMENT '照片地址',
  `age` int(11) NOT NULL COMMENT '年龄',
  `nation` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '民族(1.汉族、2.壮族、3.回族、4.藏族、5.维吾尔族、6.苗族、7.傣族、8.满族、9.布依族、10.朝鲜族、11.哈萨克族、12.蒙古族)',
  `body_status` tinyint(4) NOT NULL COMMENT '身体状态(0.健康、1.疾病、2.残疾、3.死亡)',
  `critcode` varchar(18) NOT NULL COMMENT '身份证号',
  `card_img` varchar(255) NOT NULL COMMENT '身份证复印件',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `gid` int(11) unsigned NOT NULL COMMENT '关联监护人ID（guardian_id）',
  `religion` tinyint(1) unsigned NOT NULL COMMENT '宗教',
  `permanent_residence` varchar(100) NOT NULL COMMENT '户口所在地',
  `birth_date` int(8) NOT NULL COMMENT '出生年月',
  `married_status` tinyint(1) unsigned NOT NULL COMMENT '婚姻情况(1.未婚、2.已婚、3.离异、4.丧偶)',
  `department` varchar(100) NOT NULL COMMENT '所在部门',
  `education_levels` tinyint(2) unsigned NOT NULL COMMENT '文化程度(1.文盲/半文盲、2.小学、3.初中、4.高中、5.技工学校、6.中专/中技、7.大专、8.本科、9.硕士、10.博士)',
  `medical_status` varchar(100) NOT NULL COMMENT '医保状况',
  `old_address` varchar(100) NOT NULL COMMENT '入住前住址',
  `old_company` varchar(100) NOT NULL COMMENT '原工作单位',
  `temper_hobby` varchar(100) NOT NULL COMMENT '脾气/爱好',
  `allergies` varchar(100) NOT NULL COMMENT '病史/过敏',
  `is_diabetes` tinyint(1) unsigned NOT NULL DEFAULT '2' COMMENT '是否有糖尿病(1.是、2.否)',
  `diet` varchar(255) NOT NULL COMMENT '饮食',
  `life` varchar(255) NOT NULL COMMENT '生活',
  `sleep` varchar(255) NOT NULL COMMENT '睡眠',
  `medical_orders` varchar(255) NOT NULL COMMENT '用药医嘱',
  `physical_examination` varchar(255) NOT NULL COMMENT '自测身体检查',
  `discharge_diagnosis` varchar(255) NOT NULL COMMENT '出院诊断',
  `goods` varchar(255) NOT NULL COMMENT '随身物品',
  `is_talk` tinyint(1) unsigned NOT NULL COMMENT '是否欠费(1.否、2.是)',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态(1.正常、2.已删除)',
  `leave_status` tinyint(1) unsigned NOT NULL DEFAULT '2' COMMENT '是否离院(1.已离院、2.未离院)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8 COMMENT='老年人信息表';

-- ----------------------------
-- Records of senior
-- ----------------------------
INSERT INTO `senior` VALUES ('1', '测试老人', '2', '/upload/senior/2017/03/06/0b44d3ccec5f0e0ea6cdac2eedcaeaee.png', '80', '1', '7', '12332345543543', '', '1488793070', '0', '0', '0', '北京北苑区', '19270203', '2', '8', '1', '1', '北京北苑区', '北京北苑区', '无', '无', '2', '', '', '', '', '', '', '', '0', '1', '2');
INSERT INTO `senior` VALUES ('2', '测试test', '1', '/upload/senior/2017/03/06/dbfc0523941a125b77c0901c31be50dd.png', '80', '1', '1', '373928193702038574', '', '1489646618', '1496731616', '0', '0', '北京', '19370202', '4', '8', '3', '1', '北京', '北京', '暂无', '无', '0', '少辛辣', '散步', '正常', '按时吃药', '正常', '', '', '0', '1', '1');
INSERT INTO `senior` VALUES ('3', '北苑老人', '1', '/upload/senior/2017/03/07/db192db2653241586fa4d719fdc935a1.png', '80', '1', '1', '3435546645646', '', '1489646669', '1494231420', '0', '0', '北京', '20170331', '4', '8', '1', '1', '北京', '北京', '好', '无', '0', '', '', '', '', '', '', '', '0', '1', '1');
INSERT INTO `senior` VALUES ('4', '测试用户', '1', '/upload/senior/2017/03/07/6016de7c49ae0868e133df56077cd881.png', '90', '1', '1', '1098376464636', '', '1489646684', '1494249397', '0', '1', '北京市', '20170331', '4', '13', '3', '1', '北京市西四区', '北京市西四区', '脾气好好', '北京市西四区', '0', '土豆', '天天换洗衣服', '睡眠良好', '', '', '', '', '0', '1', '1');
INSERT INTO `senior` VALUES ('5', '测试007', '2', '/upload/senior/2017/03/16/9c6e68bb5f0cd2d434913623e41e2973.jpg', '32', '2', '1', '21312334241231231', '', '1490149445', '0', '0', '1', '北京市蟾宫去大紫明宫', '20170206', '4', '8', '1', '2', '额外企鹅气温气温气温', '气温气温', 'eqw', '气温而且我', '0', '', '', '', '', '', '', '', '0', '1', '2');
INSERT INTO `senior` VALUES ('6', '测试1146', '1', '/upload/senior/2017/03/17/ecd5cb80776ece4d5c461e3f02936c0d.jpg', '64', '1', '1', '411123195310101012', '', '1489722663', '1495421521', '0', '0', '北京市', '19531010', '4', '8', '1', '1', '北京市海淀区', '北京市水利局', '温和', '无', '0', '少辛辣', '散步', '正常', '按时吃药', '正常', '衣服裤子两件', '', '0', '1', '1');
INSERT INTO `senior` VALUES ('8', '测试1518', '1', '', '64', '1', '1', '411123195301202033', '', '1489735389', '1495420887', '0', '0', '河南省', '19530120', '2', '8', '1', '1', '北京市海淀区', '北京市海淀中学', '温和', '无', '2', '少辛辣', '散步', '正常', '按时吃药', '正常', '正常', '蓝色上衣一件，黑色裤子一条', '0', '1', '1');
INSERT INTO `senior` VALUES ('15', '阿里山', '1', '', '23', '1', '1', '132132132131', '', '1489737227', '0', '0', '0', '面试流程拉扯', '20170317', '1', '8', '1', '1', '撒东奥上电脑哦啊是你的', '拿上来的啦', '你的撒', '三点', '2', '', '', '', '', '', '', '', '0', '2', '2');
INSERT INTO `senior` VALUES ('16', '测试1403', '1', '', '76', '1', '1', '411123194101222033', '', '1490594789', '0', '0', '0', '北京市', '19411012', '2', '8', '1', '1', '北京市昌平区', '北京市阳光中学', '温和', '无', '2', '少辛辣', '散步', '正常', '按时吃药', '正常', '正常', '蓝色羊毛衫一件', '0', '1', '2');
INSERT INTO `senior` VALUES ('17', 'ceshi', '1', '', '80', '1', '1', '2342432423423', '', '1492590251', '0', '0', '0', 'wewewer', '20170406', '1', '8', '1', '1', 'werwrwerw', 'werwerwerwe', 'werwerwerwr', 'ewrwerwerw', '2', 'werwerwer', 'werwerw', 'wwewr', 'ewrwrwer', 'wrwerwe', 'wewerwe', 'wewewewe', '0', '2', '2');
INSERT INTO `senior` VALUES ('18', 'ceshi', '1', '/upload/senior/2017/04/25/21f0a7a2eba57f4d9307dcb3e1853284.png', '66', '1', '1', '34343424234', '', '1493098626', '0', '0', '0', 'wefwfw', '20170404', '4', '8', '1', '1', 'wewerwerwe', 'werwerwerw', 'ewrwerwrw', 'wrwerwerw', '0', '2r2r23r23r', '2r3r23rwedwd', 'wefwfwefw', 'fewfwfwfew', 'ewwewerwr', '', '', '0', '1', '2');
INSERT INTO `senior` VALUES ('21', '测试0425', '1', '/upload/senior/2017/04/25/db78cdecd061e6198212fcb15c6cd1c5.jpg', '57', '1', '1', '411103196001111123', '', '1493100469', '0', '0', '0', '北京市', '19600111', '2', '8', '1', '1', '北京市海淀区', '北京市海淀区', '温和', '无', '2', '', '', '', '', '', '', '', '0', '1', '2');
INSERT INTO `senior` VALUES ('22', '杨赛', '1', '', '22', '1', '1', '14272919961101822', '', '1494492271', '1495421016', '0', '2', '北京市昌平区紫金新干线小区4区', '19951110', '5', '1', '1', '2', '北京市昌平区紫金新干线小区4区', '信泽科技', '123123', 'qewe', '0', '而且我', '而且我', '而且我', 'eqw e', 'eqwe', 'eqwe', '', '0', '1', '1');
INSERT INTO `senior` VALUES ('23', 'duzhigang', '2', '/upload/senior/2017/05/10/71bfc4f3f0365956feac9257d9c29bab.jpg', '89', '3', '1', '121212121221212', '', '1494381985', '0', '0', '1', '就很快就好了可框架里', '19450508', '5', '8', '2', '1', '就立刻就离开', '就好了空间', '', '好了', '0', '胡海燕', '回家', '看见看见', '好了', '好了', '好了', '', '0', '1', '2');
INSERT INTO `senior` VALUES ('24', '新添加', '1', '', '88', '1', '1', '34234242342423', '', '1494492285', '0', '0', '0', '对随时随地分胜负', '20170509', '5', '13', '1', '1', '对随时随地分胜负', '对随时随地分胜负', '', '3242423热为范围范围分违法', '0', '23让沃尔沃人', '额外服务费', '呃我认为认为', '非我服务范围分违法', '呃范围范围范围', '', '', '0', '1', '2');
INSERT INTO `senior` VALUES ('25', '杜志刚', '1', '/upload/senior/2017/05/12/41d74c070a5c75a8b037a43a29bab9f7.png', '10', '1', '1', '142729199611101519', '', '1494559230', '0', '0', '5', '北京市昌平区天通苑东三区', '20070510', '5', '8', '1', '1', '北京市昌平区天通苑东三区18号楼1810', '北京信泽医疗科技有限公司', '132123123123123123123', '啥都过敏', '0', '不吃饭', '生活不能自理', '不睡觉', '多吃药', '半残', '13123', '', '0', '1', '2');
INSERT INTO `senior` VALUES ('26', '哈哈哈', '1', '', '107', '1', '1', '242718191011093211', '', '1495683106', '1496731639', '0', '0', '', '19101109', '5', '1', '1', '1', '', '', '', '13123123', '0', '', '', '', '', '', '', '', '0', '1', '1');
INSERT INTO `senior` VALUES ('27', '杨飒', '1', '', '12', '1', '1', '123123123123123121', '', '1494929885', '0', '0', '0', '', '20170501', '1', '8', '1', '1', '', '', '', '的气温', '2', '', '', '', '', '', '', '', '0', '1', '2');
INSERT INTO `senior` VALUES ('28', '杨哈哈', '2', '', '21', '1', '1', '123123123123123123', '', '1494987106', '0', '0', '0', '', '20170524', '5', '8', '1', '1', '', '', '', '3123123', '0', '', '', '', '', '', '', '', '0', '1', '2');
INSERT INTO `senior` VALUES ('29', '杨飒仨', '1', '', '21', '1', '1', '142729199611121212', '', '1495683057', '0', '0', '0', '', '19961112', '5', '1', '1', '1', '', '', '', '企鹅全文', '0', '', '', '', '', '', '', '', '0', '1', '2');
INSERT INTO `senior` VALUES ('30', '王大财', '1', '', '27', '1', '1', '142729199001281234', '', '1495683032', '0', '0', '0', '', '20170518', '5', '1', '1', '1', '', '', '', '3213123', '0', '', '', '', '', '', '', '', '0', '1', '2');
INSERT INTO `senior` VALUES ('31', '杨飒了', '1', '', '21', '1', '1', '142729199611101510', '', '1496213582', '0', '0', '0', '', '19961110', '5', '1', '1', '1', '', '', '', '123123', '0', '', '', '', '', '', '', '', '0', '1', '2');
INSERT INTO `senior` VALUES ('119', '杨赛', '1', '', '21', '0', '1', '248829197711181028', '', '1496633947', '0', '0', '0', '山西运城', '19801011', '1', '1', '3', '2', '北京市', '哪个单位', '', '无', '2', '', '', '', '', '', '', '', '0', '1', '2');
INSERT INTO `senior` VALUES ('120', '武大郎', '1', '', '21', '0', '1', '242829189711181028', '', '1496633947', '0', '0', '0', '山西运城', '19801011', '1', '1', '3', '2', '北京市', '哪个单位', '', '无', '2', '', '', '', '', '', '', '', '0', '1', '2');
INSERT INTO `senior` VALUES ('121', '武松', '1', '', '21', '0', '1', '242929196711181028', '', '1496633947', '0', '0', '0', '山西运城', '19801011', '1', '1', '3', '2', '北京市', '哪个单位', '', '无', '2', '', '', '', '', '', '', '', '0', '1', '2');
INSERT INTO `senior` VALUES ('122', '松江', '1', '', '21', '0', '1', '242927199711181028', '', '1496633947', '0', '0', '0', '山西运城', '19801011', '1', '1', '3', '2', '北京市', '哪个单位', '', '无', '2', '', '', '', '', '', '', '', '0', '1', '2');
INSERT INTO `senior` VALUES ('123', '关云长', '1', '', '21', '0', '1', '242929198711181028', '', '1496633947', '0', '0', '0', '山西运城', '19801011', '1', '1', '3', '2', '北京市', '哪个单位', '', '无', '2', '', '', '', '', '', '', '', '0', '1', '2');

-- ----------------------------
-- Table structure for settlement
-- ----------------------------
DROP TABLE IF EXISTS `settlement`;
CREATE TABLE `settlement` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(11) unsigned NOT NULL COMMENT '关联老人ID',
  `fee` int(10) unsigned NOT NULL COMMENT '金额',
  `is_pay` tinyint(1) unsigned NOT NULL COMMENT '是否结算(1.已结算、2.未结算)',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1 COMMENT='出院结算表';

-- ----------------------------
-- Records of settlement
-- ----------------------------
INSERT INTO `settlement` VALUES ('1', '16', '4', '1', '1491450523', '0');
INSERT INTO `settlement` VALUES ('2', '15', '100', '1', '1491476429', '0');
INSERT INTO `settlement` VALUES ('3', '8', '100', '1', '1491549514', '0');
INSERT INTO `settlement` VALUES ('4', '6', '100', '1', '1491549523', '0');
INSERT INTO `settlement` VALUES ('5', '17', '2', '1', '1492596143', '0');
INSERT INTO `settlement` VALUES ('6', '18', '12', '1', '1492598949', '0');
INSERT INTO `settlement` VALUES ('7', '21', '123', '1', '1493180027', '0');
INSERT INTO `settlement` VALUES ('8', '5', '23', '1', '1493180050', '0');
INSERT INTO `settlement` VALUES ('9', '53', '36', '1', '1493190293', '0');
INSERT INTO `settlement` VALUES ('10', '47', '123', '1', '1493193099', '0');
INSERT INTO `settlement` VALUES ('11', '46', '123', '1', '1493193206', '0');
INSERT INTO `settlement` VALUES ('12', '46', '12', '1', '1493193278', '0');
INSERT INTO `settlement` VALUES ('13', '46', '12', '1', '1493193286', '0');
INSERT INTO `settlement` VALUES ('14', '47', '12', '1', '1493193477', '0');
INSERT INTO `settlement` VALUES ('15', '46', '12', '1', '1493193601', '0');
INSERT INTO `settlement` VALUES ('16', '46', '12', '1', '1493193722', '0');
INSERT INTO `settlement` VALUES ('17', '3', '123', '1', '1493194525', '0');
INSERT INTO `settlement` VALUES ('18', '23', '123', '1', '1493955881', '0');
INSERT INTO `settlement` VALUES ('19', '22', '56', '1', '1494230300', '0');
INSERT INTO `settlement` VALUES ('20', '22', '56', '1', '1494230300', '0');
INSERT INTO `settlement` VALUES ('21', '22', '222', '1', '1494230300', '0');
INSERT INTO `settlement` VALUES ('22', '4', '22', '1', '1494230320', '0');
INSERT INTO `settlement` VALUES ('23', '2', '56', '1', '1494230332', '0');
INSERT INTO `settlement` VALUES ('24', '2', '18', '1', '1494230332', '0');
INSERT INTO `settlement` VALUES ('25', '25', '80', '1', '1494493648', '0');
INSERT INTO `settlement` VALUES ('26', '24', '234', '1', '1494916962', '0');

-- ----------------------------
-- Table structure for sex_info
-- ----------------------------
DROP TABLE IF EXISTS `sex_info`;
CREATE TABLE `sex_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `num` tinyint(1) NOT NULL COMMENT '性别编码',
  `introduce` varchar(10) NOT NULL COMMENT '性别描述',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='性别表';

-- ----------------------------
-- Records of sex_info
-- ----------------------------
INSERT INTO `sex_info` VALUES ('2', '1', '男', '1484808037', '0');
INSERT INTO `sex_info` VALUES ('3', '2', '女', '1484808110', '0');
INSERT INTO `sex_info` VALUES ('4', '3', '未知', '1484808110', '0');

-- ----------------------------
-- Table structure for siesta
-- ----------------------------
DROP TABLE IF EXISTS `siesta`;
CREATE TABLE `siesta` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `week` tinyint(4) NOT NULL COMMENT '星期(1.周一、2.周二、3.周三、4.周四、5.周五、6.周六、7.周日)',
  `date` varchar(10) DEFAULT NULL COMMENT '日期',
  `duration` tinyint(1) NOT NULL DEFAULT '1' COMMENT '时长(1.无眠、2.15m、3.30m、4.较长)',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `at` tinyint(1) NOT NULL COMMENT '时间点(1.早上、2.上午、3.中午、4.下午、5.晚上)',
  `sid` int(10) unsigned NOT NULL COMMENT '关联老年人ID（senior_id）',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='午睡';

-- ----------------------------
-- Records of siesta
-- ----------------------------
INSERT INTO `siesta` VALUES ('1', '5', '2017-03-10', '1', '1489126956', '0', '3', '1');
INSERT INTO `siesta` VALUES ('2', '5', '2017-03-10', '1', '1489141980', '0', '5', '1');
INSERT INTO `siesta` VALUES ('3', '1', '2017-03-13', '1', '1489395225', '0', '5', '1');
INSERT INTO `siesta` VALUES ('4', '1', '2017-03-13', '1', '1489389890', '0', '3', '1');
INSERT INTO `siesta` VALUES ('5', '3', '2017-03-15', '1', '1489545727', '0', '3', '2');
INSERT INTO `siesta` VALUES ('6', '4', '2017-03-16', '1', '1489633073', '0', '3', '1');
INSERT INTO `siesta` VALUES ('7', '4', '2017-03-16', '1', '1489635837', '0', '5', '1');
INSERT INTO `siesta` VALUES ('8', '1', '2017-05-08', '1', '1494212113', '0', '3', '1');
INSERT INTO `siesta` VALUES ('9', '1', '2017-05-08', '1', '1494213100', '0', '6', '2');
INSERT INTO `siesta` VALUES ('10', '4', '2017-05-11', '1', '1494487080', '0', '3', '1');
INSERT INTO `siesta` VALUES ('11', '1', '2017-05-22', '1', '1495441776', '0', '3', '2');
INSERT INTO `siesta` VALUES ('12', '2', '2017-05-23', '1', '1495508574', '0', '3', '1');
INSERT INTO `siesta` VALUES ('13', '2', '2017-05-23', '1', '1495533992', '0', '3', '5');
INSERT INTO `siesta` VALUES ('14', '5', '2017-05-26', '4', '1495772688', '0', '3', '1');

-- ----------------------------
-- Table structure for skin
-- ----------------------------
DROP TABLE IF EXISTS `skin`;
CREATE TABLE `skin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `week` tinyint(4) NOT NULL COMMENT '星期(1.周一、2.周二、3.周三、4.周四、5.周五、6.周六、7.周日)',
  `date` varchar(10) DEFAULT NULL COMMENT '日期',
  `skin_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '皮肤状态(1.皮肤无抓痕、2.红、热、压痛、3.水疱、表皮糜烂、4.脂肪组织坏死、5.坏死可达肌层、骨骼、肌腱)',
  `wound_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '伤口情况(1.有，已处理、2.无)',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `at` tinyint(1) NOT NULL COMMENT '时间点(1.早上、2.上午、3.中午、4.下午、5.晚上)',
  `sid` int(10) unsigned NOT NULL COMMENT '关联老年人ID（senior_id）',
  `symptom` tinyint(2) unsigned NOT NULL COMMENT '症状',
  `bodyparts` varchar(100) NOT NULL COMMENT '身体部位',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='皮肤状态';

-- ----------------------------
-- Records of skin
-- ----------------------------
INSERT INTO `skin` VALUES ('1', '1', '2017-05-15', '1', '1', '1494815276', '0', '1', '1', '1', '1,2');
INSERT INTO `skin` VALUES ('2', '1', '2017-05-15', '2', '1', '1494816343', '0', '1', '1', '2', '6,7');
INSERT INTO `skin` VALUES ('4', '1', '2017-05-15', '1', '1', '1494817429', '0', '1', '1', '1', '1');
INSERT INTO `skin` VALUES ('5', '2', '2017-05-16', '1', '1', '1494903344', '0', '1', '1', '4', '4');
INSERT INTO `skin` VALUES ('6', '2', '2017-05-23', '1', '1', '1495506953', '0', '1', '1', '1', '1,3');
INSERT INTO `skin` VALUES ('7', '2', '2017-05-23', '1', '1', '1495530470', '0', '1', '1', '2', '2,3,7,8,9');
INSERT INTO `skin` VALUES ('8', '2', '2017-05-23', '1', '1', '1495533189', '0', '1', '5', '2', '3');
INSERT INTO `skin` VALUES ('9', '2', '2017-05-23', '1', '1', '1495533203', '0', '1', '5', '1', '4');
INSERT INTO `skin` VALUES ('10', '5', '2017-05-26', '1', '1', '1495763685', '0', '1', '1', '1', '3');
INSERT INTO `skin` VALUES ('11', '5', '2017-05-26', '1', '1', '1495763728', '0', '1', '1', '1', '9');
INSERT INTO `skin` VALUES ('12', '5', '2017-05-26', '1', '1', '1495764862', '0', '1', '1', '1', '1,2');
INSERT INTO `skin` VALUES ('13', '5', '2017-05-26', '1', '1', '1495764896', '0', '1', '1', '2', '6,7');
INSERT INTO `skin` VALUES ('14', '5', '2017-05-26', '1', '1', '1495770118', '0', '6', '1', '2', '9');
INSERT INTO `skin` VALUES ('15', '4', '2017-06-15', '1', '1', '1497491696', '0', '1', '1', '5', '9');
INSERT INTO `skin` VALUES ('16', '4', '2017-06-15', '1', '1', '1497491698', '0', '1', '1', '5', '9');
INSERT INTO `skin` VALUES ('17', '4', '2017-06-15', '1', '1', '1497491698', '0', '1', '1', '5', '9');
INSERT INTO `skin` VALUES ('18', '4', '2017-06-15', '1', '1', '1497491698', '0', '1', '1', '5', '9');
INSERT INTO `skin` VALUES ('19', '4', '2017-06-15', '1', '1', '1497491698', '0', '1', '1', '5', '9');

-- ----------------------------
-- Table structure for sleep
-- ----------------------------
DROP TABLE IF EXISTS `sleep`;
CREATE TABLE `sleep` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `week` tinyint(4) NOT NULL COMMENT '星期(1.周一、2.周二、3.周三、4.周四、5.周五、6.周六、7.周日)',
  `date` varchar(10) DEFAULT NULL COMMENT '日期',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态(1.失眠多梦、2.正常、3.暴动)',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '睡眠类型(1.午睡、2.晚睡)',
  `count` int(10) NOT NULL DEFAULT '1' COMMENT '起夜次数',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `at` tinyint(1) NOT NULL COMMENT '时间点(1.早上、2.上午、3.中午、4.下午、5.晚上)',
  `sid` int(10) unsigned NOT NULL COMMENT '关联老年人ID（senior_id）',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='睡眠';

-- ----------------------------
-- Records of sleep
-- ----------------------------
INSERT INTO `sleep` VALUES ('1', '4', '2017-03-16', '1', '1', '0', '1489636662', '0', '5', '1');
INSERT INTO `sleep` VALUES ('2', '4', '2017-03-16', '1', '1', '1', '1489637043', '0', '5', '1');
INSERT INTO `sleep` VALUES ('3', '1', '2017-05-08', '1', '1', '1', '1494212245', '0', '5', '1');
INSERT INTO `sleep` VALUES ('4', '4', '2017-05-11', '1', '1', '1', '1494487145', '0', '5', '1');
INSERT INTO `sleep` VALUES ('5', '1', '2017-05-22', '3', '1', '1', '1495441807', '0', '5', '2');
INSERT INTO `sleep` VALUES ('6', '1', '2017-05-22', '3', '1', '1', '1495441807', '0', '5', '2');
INSERT INTO `sleep` VALUES ('7', '1', '2017-05-22', '3', '1', '1', '1495441807', '0', '5', '2');
INSERT INTO `sleep` VALUES ('8', '1', '2017-05-22', '3', '1', '1', '1495441807', '0', '5', '2');
INSERT INTO `sleep` VALUES ('9', '1', '2017-05-22', '3', '1', '1', '1495441896', '0', '5', '2');
INSERT INTO `sleep` VALUES ('10', '1', '2017-05-22', '2', '1', '1', '1495441959', '0', '5', '2');
INSERT INTO `sleep` VALUES ('13', '2', '2017-05-23', '2', '1', '1', '1495511173', '0', '5', '1');
INSERT INTO `sleep` VALUES ('14', '2', '2017-05-23', '2', '1', '1', '1495511235', '0', '5', '1');
INSERT INTO `sleep` VALUES ('15', '2', '2017-05-23', '1', '1', '1', '1495534459', '0', '5', '5');
INSERT INTO `sleep` VALUES ('16', '2', '2017-05-23', '3', '1', '6', '1495534474', '0', '5', '5');
INSERT INTO `sleep` VALUES ('17', '2', '2017-05-23', '3', '1', '6', '1495534504', '0', '5', '5');
INSERT INTO `sleep` VALUES ('18', '2', '2017-05-23', '3', '1', '6', '1495534902', '0', '5', '5');
INSERT INTO `sleep` VALUES ('19', '5', '2017-05-26', '2', '1', '1', '1495768326', '0', '5', '1');
INSERT INTO `sleep` VALUES ('20', '5', '2017-05-26', '1', '1', '6', '1495768719', '0', '5', '1');
INSERT INTO `sleep` VALUES ('21', '5', '2017-05-26', '3', '1', '10', '1495768741', '0', '5', '1');

-- ----------------------------
-- Table structure for status_type
-- ----------------------------
DROP TABLE IF EXISTS `status_type`;
CREATE TABLE `status_type` (
  `sta_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `sta_name` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '状态名称',
  `sta_del` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1可用2不可用',
  `sta_pro` int(11) DEFAULT NULL COMMENT '对应项目',
  `sta_spare` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'beiyong',
  PRIMARY KEY (`sta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of status_type
-- ----------------------------
INSERT INTO `status_type` VALUES ('1', '采购中', '1', '1', null);
INSERT INTO `status_type` VALUES ('2', '确认购买', '1', '1', null);
INSERT INTO `status_type` VALUES ('3', '已购买/确认配送', '1', '1', null);
INSERT INTO `status_type` VALUES ('4', '确认收货', '1', '2', null);
INSERT INTO `status_type` VALUES ('5', ' 已收货', '1', '2', null);
INSERT INTO `status_type` VALUES ('7', '已处理', '1', '2', null);

-- ----------------------------
-- Table structure for support_worker
-- ----------------------------
DROP TABLE IF EXISTS `support_worker`;
CREATE TABLE `support_worker` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `w_id` int(11) unsigned NOT NULL COMMENT '关联护工ID',
  `username` varchar(45) NOT NULL COMMENT '账号',
  `name` varchar(45) NOT NULL COMMENT '姓名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `private_key` varchar(4) NOT NULL COMMENT '加密私钥',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='护工表';

-- ----------------------------
-- Records of support_worker
-- ----------------------------

-- ----------------------------
-- Table structure for supportworker_login_log
-- ----------------------------
DROP TABLE IF EXISTS `supportworker_login_log`;
CREATE TABLE `supportworker_login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) unsigned NOT NULL COMMENT '关联员工账号ID',
  `created` int(11) NOT NULL,
  `ip` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1186 DEFAULT CHARSET=utf8 COMMENT='会员登录log';

-- ----------------------------
-- Records of supportworker_login_log
-- ----------------------------
INSERT INTO `supportworker_login_log` VALUES ('1', '0', '1488793309', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('2', '0', '1488793465', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('3', '0', '1488793638', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('4', '0', '1488793642', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('5', '0', '1488793643', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('6', '0', '1488793643', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('7', '0', '1488793644', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('8', '0', '1488793644', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('9', '0', '1488793644', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('10', '0', '1488793645', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('11', '0', '1488793645', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('12', '0', '1488793645', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('13', '0', '1488793645', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('14', '0', '1488793648', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('15', '0', '1488793649', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('16', '0', '1488793650', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('17', '0', '1488793650', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('18', '0', '1488793650', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('19', '0', '1488793742', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('20', '0', '1488793747', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('21', '0', '1488793754', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('22', '0', '1488793916', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('23', '0', '1488793952', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('24', '0', '1488794000', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('25', '0', '1488794052', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('26', '0', '1488794100', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('27', '0', '1488794128', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('28', '0', '1488794367', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('29', '0', '1488794484', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('30', '0', '1488795200', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('31', '0', '1488795579', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('32', '0', '1488796035', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('33', '0', '1488798590', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('34', '0', '1488798956', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('35', '0', '1488850322', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('36', '0', '1488851034', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('37', '0', '1488851039', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('38', '0', '1488853215', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('39', '0', '1488853843', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('40', '0', '1488854149', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('41', '0', '1488854149', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('42', '0', '1488854149', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('43', '0', '1488854149', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('44', '0', '1488854401', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('45', '0', '1488854401', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('46', '0', '1488854913', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('47', '0', '1488858626', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('48', '0', '1488867400', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('49', '0', '1488867568', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('50', '0', '1488867574', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('51', '0', '1488868927', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('52', '0', '1488872951', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('53', '0', '1488873861', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('54', '0', '1488880697', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('55', '0', '1488881218', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('56', '0', '1488882997', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('57', '0', '1488883067', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('58', '0', '1488883189', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('59', '0', '1488883319', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('60', '0', '1488883450', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('61', '0', '1488883646', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('62', '0', '1488939825', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('63', '0', '1489026937', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('64', '0', '1489026976', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('65', '0', '1489027440', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('66', '0', '1489027990', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('67', '0', '1489029442', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('68', '0', '1489031662', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('69', '0', '1489032291', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('70', '0', '1489032800', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('71', '0', '1489032932', '183.232.175.4');
INSERT INTO `supportworker_login_log` VALUES ('72', '0', '1489032932', '183.232.175.4');
INSERT INTO `supportworker_login_log` VALUES ('73', '0', '1489040080', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('74', '0', '1489043507', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('75', '0', '1489043724', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('76', '0', '1489043743', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('77', '0', '1489043874', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('78', '0', '1489043907', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('79', '0', '1489044091', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('80', '0', '1489045394', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('81', '0', '1489045539', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('82', '0', '1489045623', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('83', '0', '1489045724', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('84', '0', '1489046096', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('85', '0', '1489046137', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('86', '0', '1489046384', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('87', '0', '1489046527', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('88', '0', '1489046731', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('89', '0', '1489047143', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('90', '0', '1489047184', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('91', '0', '1489047489', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('92', '0', '1489047669', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('93', '0', '1489048566', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('94', '0', '1489048875', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('95', '0', '1489049199', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('96', '0', '1489049383', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('97', '0', '1489051285', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('98', '0', '1489057357', '183.232.175.4');
INSERT INTO `supportworker_login_log` VALUES ('99', '0', '1489112246', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('100', '0', '1489112275', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('101', '0', '1489112292', '117.136.38.153');
INSERT INTO `supportworker_login_log` VALUES ('102', '0', '1489113010', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('103', '0', '1489114054', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('104', '0', '1489116704', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('105', '0', '1489116765', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('106', '0', '1489116796', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('107', '0', '1489117804', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('108', '0', '1489117964', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('109', '0', '1489118051', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('110', '0', '1489118248', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('111', '0', '1489118313', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('112', '0', '1489118373', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('113', '0', '1489118451', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('114', '0', '1489119160', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('115', '0', '1489120315', '183.232.175.4');
INSERT INTO `supportworker_login_log` VALUES ('116', '0', '1489120317', '183.232.175.4');
INSERT INTO `supportworker_login_log` VALUES ('117', '0', '1489125711', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('118', '0', '1489125826', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('119', '0', '1489125899', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('120', '0', '1489128028', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('121', '0', '1489129233', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('122', '0', '1489130141', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('123', '0', '1489130380', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('124', '0', '1489132556', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('125', '0', '1489133807', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('126', '0', '1489134697', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('127', '0', '1489136332', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('128', '0', '1489136717', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('129', '0', '1489136735', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('130', '0', '1489137059', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('131', '0', '1489138326', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('132', '0', '1489141645', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('133', '0', '1489141665', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('134', '0', '1489141820', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('135', '0', '1489141957', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('136', '0', '1489142763', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('137', '0', '1489218177', '183.232.175.2');
INSERT INTO `supportworker_login_log` VALUES ('138', '0', '1489218177', '183.232.175.2');
INSERT INTO `supportworker_login_log` VALUES ('139', '0', '1489370921', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('140', '0', '1489372582', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('141', '0', '1489372896', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('142', '0', '1489373042', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('143', '0', '1489373522', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('144', '0', '1489373862', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('145', '0', '1489374819', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('146', '0', '1489374995', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('147', '0', '1489375591', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('148', '0', '1489376319', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('149', '0', '1489376930', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('150', '0', '1489377012', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('151', '0', '1489377190', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('152', '0', '1489377223', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('153', '0', '1489377749', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('154', '0', '1489377793', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('155', '0', '1489378260', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('156', '0', '1489378460', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('157', '0', '1489378469', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('158', '0', '1489378666', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('159', '0', '1489383564', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('160', '0', '1489385081', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('161', '0', '1489386254', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('162', '0', '1489386443', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('163', '0', '1489387780', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('164', '0', '1489388219', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('165', '0', '1489389009', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('166', '0', '1489389693', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('167', '0', '1489391136', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('168', '0', '1489391847', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('169', '0', '1489392627', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('170', '0', '1489392738', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('171', '0', '1489412285', '1.94.12.221');
INSERT INTO `supportworker_login_log` VALUES ('172', '0', '1489543788', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('173', '0', '1489543802', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('174', '0', '1489543917', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('175', '0', '1489543933', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('176', '0', '1489544040', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('177', '0', '1489544144', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('178', '0', '1489544167', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('179', '0', '1489544420', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('180', '0', '1489544505', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('181', '0', '1489544580', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('182', '0', '1489544694', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('183', '0', '1489544700', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('184', '0', '1489544792', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('185', '0', '1489544913', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('186', '0', '1489545033', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('187', '0', '1489545090', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('188', '0', '1489545118', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('189', '0', '1489545135', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('190', '0', '1489545154', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('191', '0', '1489545189', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('192', '0', '1489545210', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('193', '0', '1489545288', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('194', '0', '1489545294', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('195', '0', '1489545357', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('196', '0', '1489545424', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('197', '0', '1489545433', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('198', '0', '1489545546', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('199', '0', '1489545551', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('200', '0', '1489545554', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('201', '0', '1489545587', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('202', '0', '1489545591', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('203', '0', '1489545597', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('204', '0', '1489545608', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('205', '0', '1489545613', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('206', '0', '1489545644', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('207', '0', '1489545649', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('208', '0', '1489545660', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('209', '0', '1489545666', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('210', '0', '1489545669', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('211', '0', '1489545687', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('212', '0', '1489546440', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('213', '0', '1489546457', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('214', '0', '1489563670', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('215', '0', '1489563674', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('216', '0', '1489563678', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('217', '0', '1489563706', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('218', '0', '1489563751', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('219', '0', '1489563761', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('220', '0', '1489630840', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('221', '0', '1489632403', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('222', '0', '1489633211', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('223', '0', '1489634811', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('224', '0', '1489634904', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('225', '0', '1489635329', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('226', '0', '1489636694', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('227', '0', '1489636804', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('228', '0', '1489636903', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('229', '0', '1489637023', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('230', '0', '1489637316', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('231', '0', '1489637344', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('232', '0', '1489645975', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('233', '0', '1489646224', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('234', '0', '1489646358', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('235', '0', '1489646622', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('236', '0', '1489647789', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('237', '0', '1489647972', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('238', '0', '1489647983', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('239', '0', '1489648237', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('240', '0', '1489648909', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('241', '0', '1489650253', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('242', '0', '1489651327', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('243', '0', '1489651400', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('244', '0', '1489652009', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('245', '0', '1489652027', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('246', '0', '1489652755', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('247', '0', '1489716216', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('248', '0', '1489716744', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('249', '0', '1489717559', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('250', '0', '1489718134', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('251', '0', '1489718283', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('252', '0', '1489718656', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('253', '0', '1489719554', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('254', '0', '1489719703', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('255', '0', '1489721749', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('256', '0', '1489721749', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('257', '0', '1489722942', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('258', '0', '1489723842', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('259', '0', '1489723873', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('260', '0', '1489733690', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('261', '0', '1489733834', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('262', '0', '1489733934', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('263', '0', '1489735453', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('264', '0', '1489735976', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('265', '0', '1489736514', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('266', '0', '1489736673', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('267', '0', '1489736759', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('268', '0', '1489977403', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('269', '0', '1489977404', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('270', '0', '1489996020', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('271', '0', '1489997996', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('272', '0', '1489999523', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('273', '0', '1489999523', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('274', '0', '1489999528', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('275', '0', '1489999523', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('276', '0', '1489999550', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('277', '0', '1489999550', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('278', '0', '1489999550', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('279', '0', '1489999550', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('280', '0', '1489999551', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('281', '0', '1490063003', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('282', '0', '1490064145', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('283', '0', '1490064146', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('284', '0', '1490064178', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('285', '0', '1490064320', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('286', '0', '1490064574', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('287', '0', '1490065002', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('288', '0', '1490065611', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('289', '0', '1490065704', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('290', '0', '1490065999', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('291', '0', '1490066466', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('292', '0', '1490067711', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('293', '0', '1490077898', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('294', '0', '1490077899', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('295', '0', '1490078304', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('296', '0', '1490082235', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('297', '0', '1490082917', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('298', '0', '1490083450', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('299', '0', '1490083453', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('300', '0', '1490084386', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('301', '0', '1490102575', '1.94.76.201');
INSERT INTO `supportworker_login_log` VALUES ('302', '0', '1490102575', '1.94.76.201');
INSERT INTO `supportworker_login_log` VALUES ('303', '0', '1490102878', '1.94.76.201');
INSERT INTO `supportworker_login_log` VALUES ('304', '0', '1490149988', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('305', '0', '1490149989', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('306', '0', '1490152491', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('307', '0', '1490152903', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('308', '0', '1490153018', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('309', '0', '1490153091', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('310', '0', '1490153558', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('311', '0', '1490167591', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('312', '0', '1490167649', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('313', '0', '1490167791', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('314', '0', '1490167872', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('315', '0', '1490168007', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('316', '0', '1490168147', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('317', '0', '1490169751', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('318', '0', '1490172268', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('319', '0', '1490173138', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('320', '0', '1490173147', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('321', '0', '1490173163', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('322', '0', '1490173259', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('323', '0', '1490173600', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('324', '0', '1490173636', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('325', '0', '1490173741', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('326', '0', '1490173742', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('327', '0', '1490173829', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('328', '0', '1490174005', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('329', '0', '1490174246', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('330', '0', '1490175061', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('331', '0', '1490185660', '1.94.82.209');
INSERT INTO `supportworker_login_log` VALUES ('332', '0', '1490234361', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('333', '0', '1490235780', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('334', '0', '1490236303', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('335', '0', '1490249049', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('336', '0', '1490249517', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('337', '0', '1490249594', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('338', '0', '1490249964', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('339', '0', '1490250014', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('340', '0', '1490250535', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('341', '0', '1490250563', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('342', '0', '1490253064', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('343', '0', '1490254634', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('344', '0', '1490254709', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('345', '0', '1490254769', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('346', '0', '1490255114', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('347', '0', '1490257427', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('348', '0', '1490321288', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('349', '0', '1490321326', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('350', '0', '1490323254', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('351', '0', '1490323362', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('352', '0', '1490324133', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('353', '0', '1490324726', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('354', '0', '1490324998', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('355', '0', '1490325315', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('356', '0', '1490325424', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('357', '0', '1490326223', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('358', '0', '1490328120', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('359', '0', '1490328420', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('360', '0', '1490328615', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('361', '0', '1490328937', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('362', '0', '1490329207', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('363', '0', '1490689464', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('364', '0', '1490689534', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('365', '0', '1490689536', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('366', '0', '1490692119', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('367', '0', '1490692627', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('368', '0', '1490693485', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('369', '0', '1490694089', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('370', '0', '1490694185', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('371', '0', '1490697136', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('372', '0', '1490697198', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('373', '0', '1490697202', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('374', '0', '1490697291', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('375', '0', '1490697439', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('376', '0', '1490697888', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('377', '0', '1490697902', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('378', '0', '1490698001', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('379', '0', '1490698145', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('380', '0', '1490698289', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('381', '0', '1490752368', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('382', '0', '1490752431', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('383', '0', '1490752437', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('384', '0', '1490752511', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('385', '0', '1490760280', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('386', '0', '1490760348', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('387', '0', '1490760507', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('388', '0', '1490760507', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('389', '0', '1490760507', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('390', '0', '1490760507', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('391', '0', '1490760513', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('392', '0', '1490760515', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('393', '0', '1490760515', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('394', '0', '1490760515', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('395', '0', '1490760515', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('396', '0', '1490760516', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('397', '0', '1490760516', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('398', '0', '1490760516', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('399', '0', '1490760516', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('400', '0', '1490760516', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('401', '0', '1490760516', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('402', '0', '1490760700', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('403', '0', '1490760799', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('404', '0', '1490760901', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('405', '0', '1490761012', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('406', '0', '1490761036', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('407', '0', '1490761249', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('408', '0', '1490761283', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('409', '0', '1490761480', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('410', '0', '1490761629', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('411', '0', '1490761952', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('412', '0', '1490762013', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('413', '0', '1490762195', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('414', '0', '1490762250', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('415', '0', '1490762632', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('416', '0', '1490762777', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('417', '0', '1490762830', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('418', '0', '1490762899', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('419', '0', '1490767631', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('420', '0', '1490767885', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('421', '0', '1490767897', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('422', '0', '1490767902', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('423', '0', '1490767926', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('424', '0', '1490767996', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('425', '0', '1490768006', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('426', '0', '1490768054', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('427', '0', '1490768635', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('428', '0', '1490768707', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('429', '0', '1490769135', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('430', '0', '1490775927', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('431', '0', '1490777777', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('432', '0', '1490777903', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('433', '0', '1490778042', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('434', '0', '1490778175', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('435', '0', '1490778741', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('436', '0', '1490778742', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('437', '0', '1490778992', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('438', '0', '1490779009', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('439', '0', '1490779138', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('440', '0', '1490779988', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('441', '0', '1490780134', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('442', '0', '1490780233', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('443', '0', '1490780309', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('444', '0', '1490782015', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('445', '0', '1490842180', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('446', '0', '1490842885', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('447', '0', '1490843788', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('448', '0', '1490843848', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('449', '0', '1490843993', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('450', '0', '1490845760', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('451', '0', '1490845835', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('452', '0', '1490845901', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('453', '0', '1490846633', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('454', '0', '1490846725', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('455', '0', '1490846951', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('456', '0', '1490847321', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('457', '0', '1490847523', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('458', '0', '1490847547', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('459', '0', '1490847832', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('460', '0', '1490854369', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('461', '0', '1490854577', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('462', '0', '1490854605', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('463', '0', '1490854815', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('464', '0', '1490855860', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('465', '0', '1490855861', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('466', '0', '1490856439', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('467', '0', '1490856849', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('468', '0', '1490857293', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('469', '0', '1490859437', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('470', '0', '1490859532', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('471', '0', '1490862325', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('472', '0', '1490862363', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('473', '0', '1490862663', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('474', '0', '1490866105', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('475', '0', '1490866240', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('476', '0', '1490866474', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('477', '0', '1490867256', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('478', '0', '1490867436', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('479', '0', '1490867673', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('480', '0', '1490867876', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('481', '0', '1490868178', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('482', '0', '1490868415', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('483', '0', '1490925114', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('484', '0', '1490928928', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('485', '0', '1490929778', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('486', '0', '1490930080', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('487', '0', '1490930115', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('488', '0', '1490930213', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('489', '0', '1490930599', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('490', '0', '1490930884', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('491', '0', '1490931257', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('492', '0', '1490931596', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('493', '0', '1490931864', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('494', '0', '1490932210', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('495', '0', '1490932494', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('496', '0', '1490932683', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('497', '0', '1490932696', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('498', '0', '1490933022', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('499', '0', '1490938599', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('500', '0', '1490943640', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('501', '0', '1490943781', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('502', '0', '1491447942', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('503', '0', '1491532008', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('504', '0', '1491532130', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('505', '0', '1491532318', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('506', '0', '1491533243', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('507', '0', '1491534076', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('508', '0', '1491535534', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('509', '0', '1491535598', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('510', '0', '1491536108', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('511', '0', '1491536159', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('512', '0', '1491536211', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('513', '0', '1491536767', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('514', '0', '1491536870', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('515', '0', '1491537130', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('516', '0', '1491537227', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('517', '0', '1491537227', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('518', '0', '1491537262', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('519', '0', '1491537899', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('520', '0', '1491538199', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('521', '0', '1491545503', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('522', '0', '1491545537', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('523', '0', '1491547360', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('524', '0', '1491547923', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('525', '0', '1491548196', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('526', '0', '1491548342', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('527', '0', '1491548809', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('528', '0', '1491548889', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('529', '0', '1491549090', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('530', '0', '1491549478', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('531', '0', '1491549575', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('532', '0', '1491549720', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('533', '0', '1491550638', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('534', '0', '1491550808', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('535', '0', '1491551708', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('536', '0', '1491551738', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('537', '0', '1491551910', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('538', '0', '1491551981', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('539', '0', '1491552431', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('540', '0', '1491552442', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('541', '0', '1491552735', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('542', '0', '1491553569', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('543', '0', '1491553621', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('544', '0', '1491553697', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('545', '0', '1491553747', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('546', '0', '1491557034', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('547', '0', '1491557713', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('548', '0', '1491558162', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('549', '0', '1491558249', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('550', '0', '1491558350', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('551', '0', '1491559362', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('552', '0', '1491559387', '114.242.211.189');
INSERT INTO `supportworker_login_log` VALUES ('553', '0', '1492056139', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('554', '0', '1492065943', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('555', '0', '1492066613', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('556', '0', '1492067597', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('557', '0', '1492069888', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('558', '0', '1492070264', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('559', '0', '1492070264', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('560', '0', '1492070553', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('561', '0', '1492071193', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('562', '0', '1492071697', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('563', '0', '1492072105', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('564', '0', '1492072788', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('565', '0', '1492072978', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('566', '0', '1492075235', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('567', '0', '1492075256', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('568', '0', '1492075276', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('569', '0', '1492075377', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('570', '0', '1492075768', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('571', '0', '1492077006', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('572', '0', '1492077793', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('573', '0', '1492077808', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('574', '0', '1492136232', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('575', '0', '1492141675', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('576', '0', '1492142858', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('577', '0', '1492142921', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('578', '0', '1492150980', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('579', '0', '1492151002', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('580', '0', '1492151015', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('581', '0', '1492151216', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('582', '0', '1492151575', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('583', '0', '1492151727', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('584', '0', '1492152053', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('585', '0', '1492152811', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('586', '0', '1492152961', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('587', '0', '1492153154', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('588', '0', '1492153702', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('589', '0', '1492155668', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('590', '0', '1492156022', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('591', '0', '1492156087', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('592', '0', '1492156181', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('593', '0', '1492156253', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('594', '0', '1492156410', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('595', '0', '1492156499', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('596', '0', '1492157025', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('597', '0', '1492157194', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('598', '0', '1492157351', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('599', '0', '1492158234', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('600', '0', '1492158247', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('601', '0', '1492159582', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('602', '0', '1492159693', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('603', '0', '1492159759', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('604', '0', '1492159842', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('605', '0', '1492160124', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('606', '0', '1492160340', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('607', '0', '1492160444', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('608', '0', '1492160727', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('609', '0', '1492160916', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('610', '0', '1492161001', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('611', '0', '1492161104', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('612', '0', '1492161290', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('613', '0', '1492161460', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('614', '0', '1492161912', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('615', '0', '1492162220', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('616', '0', '1492162314', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('617', '0', '1492398886', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('618', '0', '1492399016', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('619', '0', '1492399017', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('620', '0', '1492399038', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('621', '0', '1492399040', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('622', '0', '1492399251', '183.62.115.143');
INSERT INTO `supportworker_login_log` VALUES ('623', '0', '1492399270', '101.226.65.107');
INSERT INTO `supportworker_login_log` VALUES ('624', '0', '1492399439', '221.220.104.163');
INSERT INTO `supportworker_login_log` VALUES ('625', '0', '1492482842', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('626', '0', '1492484095', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('627', '0', '1492484212', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('628', '0', '1492484548', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('629', '0', '1492485569', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('630', '0', '1492485581', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('631', '0', '1492486029', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('632', '0', '1492486284', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('633', '0', '1492487263', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('634', '0', '1492487426', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('635', '0', '1492496048', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('636', '0', '1492496351', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('637', '0', '1492496353', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('638', '0', '1492496354', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('639', '0', '1492496381', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('640', '0', '1492496383', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('641', '0', '1492496385', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('642', '0', '1492496386', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('643', '0', '1492498410', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('644', '0', '1492503045', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('645', '0', '1492503051', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('646', '0', '1492503066', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('647', '0', '1492503317', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('648', '0', '1492503320', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('649', '0', '1492503451', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('650', '0', '1492503978', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('651', '0', '1492504010', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('652', '0', '1492504024', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('653', '0', '1492504161', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('654', '0', '1492504163', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('655', '0', '1492504164', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('656', '0', '1492504177', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('657', '0', '1492504181', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('658', '0', '1492504191', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('659', '0', '1492504263', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('660', '0', '1492508979', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('661', '0', '1492511054', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('662', '0', '1492512546', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('663', '0', '1492512551', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('664', '0', '1492512724', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('665', '0', '1492512779', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('666', '0', '1492512994', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('667', '0', '1492514365', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('668', '0', '1492514496', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('669', '0', '1492517049', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('670', '0', '1492517845', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('671', '0', '1492567185', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('672', '0', '1492568239', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('673', '0', '1492568408', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('674', '0', '1492568454', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('675', '0', '1492568551', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('676', '0', '1492568557', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('677', '0', '1492569288', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('678', '0', '1492569768', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('679', '0', '1492570039', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('680', '0', '1492571652', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('681', '0', '1492571751', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('682', '0', '1492572016', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('683', '0', '1492572272', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('684', '0', '1492572355', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('685', '0', '1492572460', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('686', '0', '1492572731', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('687', '0', '1492573888', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('688', '0', '1492574118', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('689', '0', '1492574956', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('690', '0', '1492580960', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('691', '0', '1492581411', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('692', '0', '1492581513', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('693', '0', '1492582220', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('694', '0', '1492585227', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('695', '0', '1492585298', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('696', '0', '1492585298', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('697', '0', '1492586680', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('698', '0', '1492586784', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('699', '0', '1492586886', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('700', '0', '1492586932', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('701', '0', '1492587030', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('702', '0', '1492587274', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('703', '0', '1492589248', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('704', '0', '1492589877', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('705', '0', '1492590000', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('706', '0', '1492592195', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('707', '0', '1492592245', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('708', '0', '1492593384', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('709', '0', '1492594091', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('710', '0', '1492594549', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('711', '0', '1492594730', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('712', '0', '1492595071', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('713', '0', '1492595401', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('714', '0', '1492595637', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('715', '0', '1492596002', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('716', '0', '1492597076', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('717', '0', '1492597660', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('718', '0', '1492597826', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('719', '0', '1492598920', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('720', '0', '1492598940', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('721', '0', '1492653336', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('722', '0', '1492653801', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('723', '0', '1492654765', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('724', '0', '1492656143', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('725', '0', '1492656143', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('726', '0', '1492656631', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('727', '0', '1492657192', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('728', '0', '1492657218', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('729', '0', '1492657431', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('730', '0', '1492657717', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('731', '0', '1492658537', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('732', '0', '1492658658', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('733', '0', '1492660073', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('734', '0', '1492660503', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('735', '0', '1492660634', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('736', '0', '1492675900', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('737', '0', '1492675949', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('738', '0', '1492676323', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('739', '0', '1492676682', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('740', '0', '1492677134', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('741', '0', '1492677434', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('742', '0', '1492677577', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('743', '0', '1492680238', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('744', '0', '1492680709', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('745', '0', '1492680816', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('746', '0', '1492681005', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('747', '0', '1492681045', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('748', '0', '1492681668', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('749', '0', '1492681784', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('750', '0', '1492681925', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('751', '0', '1492681976', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('752', '0', '1492682097', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('753', '0', '1492682445', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('754', '0', '1492682895', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('755', '0', '1492682895', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('756', '0', '1492683116', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('757', '0', '1492683125', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('758', '0', '1492683486', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('759', '0', '1492683612', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('760', '0', '1492683756', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('761', '0', '1492686404', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('762', '0', '1492686423', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('763', '0', '1492686446', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('764', '0', '1492686465', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('765', '0', '1492740829', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('766', '0', '1492742071', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('767', '0', '1492742652', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('768', '0', '1492742785', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('769', '0', '1492743326', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('770', '0', '1492743509', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('771', '0', '1492743611', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('772', '0', '1492743758', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('773', '0', '1492760565', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('774', '0', '1492760879', '61.48.145.59');
INSERT INTO `supportworker_login_log` VALUES ('775', '0', '1493086855', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('776', '0', '1493086919', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('777', '0', '1493086981', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('778', '0', '1493087087', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('779', '0', '1493087218', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('780', '0', '1493087408', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('781', '0', '1493087685', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('782', '0', '1493087685', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('783', '0', '1493087808', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('784', '0', '1493088182', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('785', '0', '1493088505', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('786', '0', '1493088671', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('787', '0', '1493088919', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('788', '0', '1493089106', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('789', '0', '1493090106', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('790', '0', '1493090886', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('791', '0', '1493091951', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('792', '0', '1493092056', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('793', '0', '1493092212', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('794', '0', '1493092589', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('795', '0', '1493092661', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('796', '0', '1493092766', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('797', '0', '1493092948', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('798', '0', '1493093183', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('799', '0', '1493093250', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('800', '0', '1493093390', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('801', '0', '1493100716', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('802', '0', '1493102591', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('803', '0', '1493104138', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('804', '0', '1493106189', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('805', '0', '1493106255', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('806', '0', '1493106605', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('807', '0', '1493106879', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('808', '0', '1493107488', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('809', '0', '1493107666', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('810', '0', '1493108171', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('811', '0', '1493108185', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('812', '0', '1493108881', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('813', '0', '1493108934', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('814', '0', '1493108951', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('815', '0', '1493109007', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('816', '0', '1493109060', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('817', '0', '1493110590', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('818', '0', '1493110709', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('819', '0', '1493110889', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('820', '0', '1493114086', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('821', '0', '1493114260', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('822', '0', '1493116608', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('823', '0', '1493173801', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('824', '0', '1493173914', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('825', '0', '1493174828', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('826', '0', '1493175631', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('827', '0', '1493175939', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('828', '0', '1493179396', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('829', '0', '1493179611', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('830', '0', '1493179896', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('831', '0', '1493189504', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('832', '0', '1493190050', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('833', '0', '1493190243', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('834', '0', '1493190439', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('835', '0', '1493193076', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('836', '0', '1493194487', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('837', '0', '1493194552', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('838', '0', '1493194763', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('839', '0', '1493195331', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('840', '0', '1493196108', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('841', '0', '1493196125', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('842', '0', '1493196773', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('843', '0', '1493197269', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('844', '0', '1493197732', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('845', '0', '1493198074', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('846', '0', '1493198743', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('847', '0', '1493198802', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('848', '0', '1493199177', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('849', '0', '1493199802', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('850', '0', '1493200278', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('851', '0', '1493200464', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('852', '0', '1493200596', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('853', '0', '1493200879', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('854', '0', '1493201042', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('855', '0', '1493201138', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('856', '0', '1493201427', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('857', '0', '1493201572', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('858', '0', '1493202180', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('859', '0', '1493202419', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('860', '0', '1493202581', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('861', '0', '1493202687', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('862', '0', '1493202797', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('863', '0', '1493203235', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('864', '0', '1493260508', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('865', '0', '1493260781', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('866', '0', '1493260929', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('867', '0', '1493261292', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('868', '0', '1493262483', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('869', '0', '1493262958', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('870', '0', '1493263374', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('871', '0', '1493263417', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('872', '0', '1493263835', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('873', '0', '1493264525', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('874', '0', '1493264600', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('875', '0', '1493264753', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('876', '0', '1493264801', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('877', '0', '1493265448', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('878', '0', '1493265783', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('879', '0', '1493265812', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('880', '0', '1493265852', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('881', '0', '1493265945', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('882', '0', '1493266084', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('883', '0', '1493266217', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('884', '0', '1493266287', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('885', '0', '1493266528', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('886', '0', '1493266567', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('887', '0', '1493266567', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('888', '0', '1493266766', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('889', '0', '1493266960', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('890', '0', '1493266993', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('891', '0', '1493267097', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('892', '0', '1493277122', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('893', '0', '1493277339', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('894', '0', '1493277363', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('895', '0', '1493279017', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('896', '0', '1493280062', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('897', '0', '1493280975', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('898', '0', '1493282097', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('899', '0', '1493282214', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('900', '0', '1493282318', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('901', '0', '1493284176', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('902', '0', '1493284352', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('903', '0', '1493284632', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('904', '0', '1493284803', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('905', '0', '1493286455', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('906', '0', '1493286866', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('907', '0', '1493288385', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('908', '0', '1493288634', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('909', '0', '1493288689', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('910', '0', '1493288753', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('911', '0', '1493288967', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('912', '0', '1493289024', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('913', '0', '1493344804', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('914', '0', '1493344804', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('915', '0', '1493368095', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('916', '0', '1493368095', '114.241.183.171');
INSERT INTO `supportworker_login_log` VALUES ('917', '0', '1493689676', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('918', '0', '1493695308', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('919', '0', '1493695611', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('920', '0', '1493697722', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('921', '0', '1493705693', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('922', '0', '1493707773', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('923', '0', '1493707975', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('924', '0', '1493708177', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('925', '0', '1493708177', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('926', '0', '1493708360', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('927', '0', '1493708361', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('928', '0', '1493708569', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('929', '0', '1493708717', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('930', '0', '1493708729', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('931', '0', '1493709129', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('932', '0', '1493709365', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('933', '0', '1493710114', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('934', '0', '1493710663', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('935', '0', '1493710663', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('936', '0', '1493710876', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('937', '0', '1493710876', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('938', '0', '1493711420', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('939', '0', '1493711503', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('940', '0', '1493711531', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('941', '0', '1493712391', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('942', '0', '1493712430', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('943', '0', '1493712633', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('944', '0', '1493712730', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('945', '0', '1493712822', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('946', '0', '1493714069', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('947', '0', '1493714355', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('948', '0', '1493717284', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('949', '0', '1493717284', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('950', '0', '1493718994', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('951', '0', '1493719254', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('952', '0', '1493720087', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('953', '0', '1493777558', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('954', '0', '1493779501', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('955', '0', '1493779556', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('956', '0', '1493780046', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('957', '0', '1493780344', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('958', '0', '1493780373', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('959', '0', '1493780653', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('960', '0', '1493780681', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('961', '0', '1493780737', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('962', '0', '1493780829', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('963', '0', '1493780868', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('964', '0', '1493780900', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('965', '0', '1493799262', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('966', '0', '1493887973', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('967', '0', '1493888552', '123.118.108.45');
INSERT INTO `supportworker_login_log` VALUES ('968', '0', '1493956213', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('969', '0', '1493956281', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('970', '0', '1493956425', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('971', '0', '1493956519', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('972', '0', '1493956522', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('973', '0', '1493956527', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('974', '0', '1493956752', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('975', '0', '1493956962', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('976', '0', '1493957142', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('977', '0', '1493968716', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('978', '0', '1493968716', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('979', '0', '1493968716', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('980', '0', '1493968716', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('981', '0', '1493969264', '123.117.44.228');
INSERT INTO `supportworker_login_log` VALUES ('982', '0', '1493969437', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('983', '0', '1493969876', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('984', '0', '1493970184', '183.61.51.54');
INSERT INTO `supportworker_login_log` VALUES ('985', '0', '1493970185', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('986', '0', '1493970273', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('987', '0', '1493970338', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('988', '0', '1493971230', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('989', '0', '1494049818', '123.117.41.128');
INSERT INTO `supportworker_login_log` VALUES ('990', '0', '1494049819', '123.117.41.128');
INSERT INTO `supportworker_login_log` VALUES ('991', '0', '1494049819', '123.117.41.128');
INSERT INTO `supportworker_login_log` VALUES ('992', '0', '1494207776', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('993', '0', '1494211227', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('994', '0', '1494211508', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('995', '0', '1494211532', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('996', '0', '1494213029', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('997', '0', '1494214365', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('998', '0', '1494214556', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('999', '0', '1494215008', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1000', '0', '1494215104', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1001', '0', '1494216088', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1002', '0', '1494216202', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1003', '0', '1494216291', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1004', '0', '1494216603', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1005', '0', '1494216768', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1006', '0', '1494225100', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1007', '0', '1494225282', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1008', '0', '1494225372', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1009', '0', '1494225418', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1010', '0', '1494226084', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1011', '0', '1494226467', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1012', '0', '1494227013', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1013', '0', '1494227336', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1014', '0', '1494227361', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1015', '0', '1494227438', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1016', '0', '1494228788', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1017', '0', '1494229551', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1018', '0', '1494229558', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1019', '0', '1494229567', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1020', '0', '1494229679', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1021', '0', '1494229692', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1022', '0', '1494229926', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1023', '0', '1494230793', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1024', '0', '1494231843', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1025', '0', '1494231928', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1026', '0', '1494231980', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1027', '0', '1494232339', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1028', '0', '1494232470', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1029', '0', '1494234593', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1030', '0', '1494234759', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1031', '0', '1494235064', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1032', '0', '1494312556', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1033', '0', '1494312857', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1034', '0', '1494313147', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1035', '0', '1494313963', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1036', '0', '1494315504', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1037', '0', '1494315507', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1038', '0', '1494317803', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1039', '0', '1494318370', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1040', '0', '1494318530', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1041', '0', '1494384236', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1042', '0', '1494384460', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1043', '0', '1494384796', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1044', '0', '1494385206', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1045', '0', '1494385207', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1046', '0', '1494385635', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1047', '0', '1494385705', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1048', '0', '1494385772', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1049', '0', '1494386113', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1050', '0', '1494387494', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1051', '0', '1494389495', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1052', '0', '1494389636', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1053', '0', '1494390067', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1054', '0', '1494398550', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1055', '0', '1494398681', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1056', '0', '1494398841', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1057', '0', '1494399223', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1058', '0', '1494399258', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1059', '0', '1494399987', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1060', '0', '1494400090', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1061', '0', '1494400440', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1062', '0', '1494400671', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1063', '0', '1494401248', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1064', '0', '1494401674', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1065', '0', '1494402990', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1066', '0', '1494403196', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1067', '0', '1494403496', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1068', '0', '1494403874', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1069', '0', '1494403995', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1070', '0', '1494404290', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1071', '0', '1494404307', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1072', '0', '1494485665', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1073', '0', '1494485665', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1074', '0', '1494486356', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1075', '0', '1494488855', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1076', '0', '1494489651', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1077', '0', '1494489744', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1078', '0', '1494490448', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1079', '0', '1494490880', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1080', '0', '1494491257', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1081', '0', '1494491524', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1082', '0', '1494491800', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1083', '0', '1494492053', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1084', '0', '1494492426', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1085', '0', '1494492427', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1086', '0', '1494492564', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1087', '0', '1494492622', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1088', '0', '1494492746', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1089', '0', '1494492828', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1090', '0', '1494493211', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1091', '0', '1494493508', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1092', '0', '1494493557', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1093', '0', '1494494274', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1094', '0', '1494494441', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1095', '0', '1494495932', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1096', '0', '1494496202', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1097', '0', '1494496250', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1098', '0', '1494496633', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1099', '0', '1494496824', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1100', '0', '1494497379', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1101', '0', '1494497570', '114.243.175.198');
INSERT INTO `supportworker_login_log` VALUES ('1102', '0', '1494554200', '114.243.170.55');
INSERT INTO `supportworker_login_log` VALUES ('1103', '0', '1494554289', '114.243.170.55');
INSERT INTO `supportworker_login_log` VALUES ('1104', '0', '1494555255', '114.243.170.55');
INSERT INTO `supportworker_login_log` VALUES ('1105', '0', '1494555256', '114.243.170.55');
INSERT INTO `supportworker_login_log` VALUES ('1106', '0', '1494555298', '114.243.170.55');
INSERT INTO `supportworker_login_log` VALUES ('1107', '0', '1494555389', '114.243.170.55');
INSERT INTO `supportworker_login_log` VALUES ('1108', '0', '1494555833', '114.243.170.55');
INSERT INTO `supportworker_login_log` VALUES ('1109', '0', '1494556095', '114.243.170.55');
INSERT INTO `supportworker_login_log` VALUES ('1110', '0', '1494556095', '114.243.170.55');
INSERT INTO `supportworker_login_log` VALUES ('1111', '0', '1494556300', '114.243.170.55');
INSERT INTO `supportworker_login_log` VALUES ('1112', '0', '1494556805', '114.243.170.55');
INSERT INTO `supportworker_login_log` VALUES ('1113', '0', '1494565060', '123.121.145.28');
INSERT INTO `supportworker_login_log` VALUES ('1114', '0', '1494565061', '123.121.145.28');
INSERT INTO `supportworker_login_log` VALUES ('1115', '0', '1494577457', '114.243.170.55');
INSERT INTO `supportworker_login_log` VALUES ('1116', '0', '1494577703', '114.243.170.55');
INSERT INTO `supportworker_login_log` VALUES ('1117', '0', '1494577743', '114.243.170.55');
INSERT INTO `supportworker_login_log` VALUES ('1118', '0', '1494577817', '114.243.170.55');
INSERT INTO `supportworker_login_log` VALUES ('1119', '0', '1494814845', '114.243.170.55');
INSERT INTO `supportworker_login_log` VALUES ('1120', '0', '1494817386', '114.243.170.55');
INSERT INTO `supportworker_login_log` VALUES ('1121', '0', '1494901189', '114.243.170.55');
INSERT INTO `supportworker_login_log` VALUES ('1122', '0', '1494901643', '114.243.170.55');
INSERT INTO `supportworker_login_log` VALUES ('1123', '0', '1494901821', '114.243.170.55');
INSERT INTO `supportworker_login_log` VALUES ('1124', '0', '1494901822', '114.243.170.55');
INSERT INTO `supportworker_login_log` VALUES ('1125', '0', '1494906173', '114.243.170.55');
INSERT INTO `supportworker_login_log` VALUES ('1126', '0', '1494919509', '114.243.170.55');
INSERT INTO `supportworker_login_log` VALUES ('1127', '0', '1494997577', '114.243.170.55');
INSERT INTO `supportworker_login_log` VALUES ('1128', '0', '1495440302', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1129', '0', '1495440546', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1130', '0', '1495440548', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1131', '0', '1495440548', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1132', '0', '1495440548', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1133', '0', '1495440548', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1134', '0', '1495440548', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1135', '0', '1495440548', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1136', '0', '1495440548', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1137', '0', '1495440708', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1138', '0', '1495440767', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1139', '0', '1495441185', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1140', '0', '1495441318', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1141', '0', '1495441338', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1142', '0', '1495441588', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1143', '0', '1495441734', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1144', '0', '1495442464', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1145', '0', '1495442464', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1146', '0', '1495442464', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1147', '0', '1495442463', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1148', '0', '1495442466', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1149', '0', '1495506638', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1150', '0', '1495506643', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1151', '0', '1495506660', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1152', '0', '1495506663', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1153', '0', '1495506667', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1154', '0', '1495509343', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1155', '0', '1495509562', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1156', '0', '1495511630', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1157', '0', '1495516038', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1158', '0', '1495527126', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1159', '0', '1495531287', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1160', '0', '1495532196', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1161', '0', '1495532346', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1162', '0', '1495532348', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1163', '0', '1495532350', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1164', '0', '1495532354', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1165', '0', '1495532417', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1166', '0', '1495535361', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1167', '0', '1495535473', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1168', '0', '1495592929', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1169', '0', '1495762789', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1170', '0', '1495762816', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1171', '0', '1495763561', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1172', '0', '1495763659', '114.241.188.224');
INSERT INTO `supportworker_login_log` VALUES ('1173', '0', '1495781180', '124.64.120.131');
INSERT INTO `supportworker_login_log` VALUES ('1174', '0', '1497343276', '61.149.86.33');
INSERT INTO `supportworker_login_log` VALUES ('1175', '0', '1497343339', '61.149.86.33');
INSERT INTO `supportworker_login_log` VALUES ('1176', '0', '1497343339', '61.149.86.33');
INSERT INTO `supportworker_login_log` VALUES ('1177', '0', '1497343339', '61.149.86.33');
INSERT INTO `supportworker_login_log` VALUES ('1178', '0', '1497343340', '61.149.86.33');
INSERT INTO `supportworker_login_log` VALUES ('1179', '0', '1497404224', '61.149.86.33');
INSERT INTO `supportworker_login_log` VALUES ('1180', '0', '1497429981', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('1181', '0', '1497429996', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('1182', '0', '1497430041', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('1183', '0', '1497491536', '124.127.248.125');
INSERT INTO `supportworker_login_log` VALUES ('1184', '0', '1498533402', '221.220.104.22');
INSERT INTO `supportworker_login_log` VALUES ('1185', '0', '1498533450', '221.220.104.22');

-- ----------------------------
-- Table structure for supportworker_token
-- ----------------------------
DROP TABLE IF EXISTS `supportworker_token`;
CREATE TABLE `supportworker_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `token` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `sw_id` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `endtime` int(11) NOT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`),
  KEY `sw_id` (`sw_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1184 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of supportworker_token
-- ----------------------------
INSERT INTO `supportworker_token` VALUES ('1', '1e1a9deb4287b15b150c385da9f653cf', '33', '1488793309', '1489398109');
INSERT INTO `supportworker_token` VALUES ('2', '8f49c2b58e16307afc822595143799f2', '33', '1488793465', '1489398265');
INSERT INTO `supportworker_token` VALUES ('3', '4d0aa5c86f8b9cbf7f956b236038a886', '33', '1488793638', '1489398438');
INSERT INTO `supportworker_token` VALUES ('4', 'e97e514bd161cc5fdf447395cf5974ab', '33', '1488793642', '1489398442');
INSERT INTO `supportworker_token` VALUES ('5', '14d6f5c38f6a6328bbb30f87cc773db0', '33', '1488793643', '1489398443');
INSERT INTO `supportworker_token` VALUES ('6', '14d6f5c38f6a6328bbb30f87cc773db0', '33', '1488793643', '1489398443');
INSERT INTO `supportworker_token` VALUES ('7', 'e1615a7754029053206d2f41425441b4', '33', '1488793644', '1489398444');
INSERT INTO `supportworker_token` VALUES ('8', 'e1615a7754029053206d2f41425441b4', '33', '1488793644', '1489398444');
INSERT INTO `supportworker_token` VALUES ('9', 'e1615a7754029053206d2f41425441b4', '33', '1488793644', '1489398444');
INSERT INTO `supportworker_token` VALUES ('10', '20548f2d3eb792c01bf25ba546860db0', '33', '1488793645', '1489398445');
INSERT INTO `supportworker_token` VALUES ('11', '20548f2d3eb792c01bf25ba546860db0', '33', '1488793645', '1489398445');
INSERT INTO `supportworker_token` VALUES ('12', '20548f2d3eb792c01bf25ba546860db0', '33', '1488793645', '1489398445');
INSERT INTO `supportworker_token` VALUES ('13', 'a595c3b8a77ba8884edc9b7a03a1ebc3', '33', '1488793646', '1489398446');
INSERT INTO `supportworker_token` VALUES ('14', '0887b0fa39e28a986beeb04d8c733f41', '33', '1488793648', '1489398448');
INSERT INTO `supportworker_token` VALUES ('15', '00f0ddb29aaee0b2c5b2a9c25f26ab5c', '33', '1488793649', '1489398449');
INSERT INTO `supportworker_token` VALUES ('16', '1491d8eaa241123660ed783314376f59', '33', '1488793650', '1489398450');
INSERT INTO `supportworker_token` VALUES ('17', '1491d8eaa241123660ed783314376f59', '33', '1488793650', '1489398450');
INSERT INTO `supportworker_token` VALUES ('18', '1491d8eaa241123660ed783314376f59', '33', '1488793650', '1489398450');
INSERT INTO `supportworker_token` VALUES ('19', '8f874a58b891e792a4f07229047ab496', '33', '1488793742', '1489398542');
INSERT INTO `supportworker_token` VALUES ('20', '34c34c1857ed0266ae021fa184e81cd5', '33', '1488793747', '1489398547');
INSERT INTO `supportworker_token` VALUES ('21', 'b65bbc2a1b3a4ac7b246a8455bc3e6f3', '33', '1488793754', '1489398554');
INSERT INTO `supportworker_token` VALUES ('22', 'bf9583af0ffb9fe025dd8f72549579e5', '33', '1488793916', '1489398716');
INSERT INTO `supportworker_token` VALUES ('23', 'abf1db5700d817b14610678ec3433be3', '33', '1488793952', '1489398752');
INSERT INTO `supportworker_token` VALUES ('24', '6172512fbd3cdca6dd515d565eb754ef', '33', '1488794000', '1489398800');
INSERT INTO `supportworker_token` VALUES ('25', 'e2b65114efd17f89849d55da60e60447', '33', '1488794052', '1489398852');
INSERT INTO `supportworker_token` VALUES ('26', '7b263168539234db42250fa023ccb8ff', '33', '1488794100', '1489398900');
INSERT INTO `supportworker_token` VALUES ('27', '7cfa807b39e7a27dbd98ce4dba5d5837', '33', '1488794128', '1489398928');
INSERT INTO `supportworker_token` VALUES ('28', 'bc997c4fb33a7927d5fc317f6bd2df85', '33', '1488794367', '1489399167');
INSERT INTO `supportworker_token` VALUES ('29', '6ef237904fae7c1a5cda0f7d31c5afe2', '33', '1488794484', '1489399284');
INSERT INTO `supportworker_token` VALUES ('30', '205942cb14a85d6b8d29c1cfff93bc66', '33', '1488795200', '1489400000');
INSERT INTO `supportworker_token` VALUES ('31', '478eef66df42cabb80fda63b62fea1ca', '33', '1488795579', '1489400379');
INSERT INTO `supportworker_token` VALUES ('32', '0182678f871390a1871d2f31dc504a82', '33', '1488796035', '1489400835');
INSERT INTO `supportworker_token` VALUES ('33', 'd3addc29d3228b132012c8bf099591eb', '33', '1488798590', '1489403390');
INSERT INTO `supportworker_token` VALUES ('34', '1c851f73bdc980068a991a2b357fd2ab', '33', '1488798956', '1489403756');
INSERT INTO `supportworker_token` VALUES ('35', '8801127b29cf132360ffdc7762e4d722', '33', '1488850322', '1489455122');
INSERT INTO `supportworker_token` VALUES ('36', '684a7a2446cde779f115444b94f62932', '35', '1488851034', '1489455834');
INSERT INTO `supportworker_token` VALUES ('37', 'd2a8e71a9c334c1c7ca36cf3c8ab648d', '35', '1488851039', '1489455839');
INSERT INTO `supportworker_token` VALUES ('38', 'e1c94d1fad43f7800f20b24391c39813', '33', '1488853215', '1489458015');
INSERT INTO `supportworker_token` VALUES ('39', 'fc7a46838f2955d3a8484568922286d2', '33', '1488853843', '1489458643');
INSERT INTO `supportworker_token` VALUES ('40', 'e70e17b17d09a24559b632a7f4c358fd', '33', '1488854149', '1489458949');
INSERT INTO `supportworker_token` VALUES ('41', 'e70e17b17d09a24559b632a7f4c358fd', '33', '1488854149', '1489458949');
INSERT INTO `supportworker_token` VALUES ('42', 'e70e17b17d09a24559b632a7f4c358fd', '33', '1488854149', '1489458949');
INSERT INTO `supportworker_token` VALUES ('43', 'e70e17b17d09a24559b632a7f4c358fd', '33', '1488854149', '1489458949');
INSERT INTO `supportworker_token` VALUES ('44', '52ff500e2faea2fdc28a584d4d1b7645', '33', '1488854401', '1489459201');
INSERT INTO `supportworker_token` VALUES ('45', '52ff500e2faea2fdc28a584d4d1b7645', '33', '1488854401', '1489459201');
INSERT INTO `supportworker_token` VALUES ('46', 'c864b3d8b3378776690e6a43c402dcf6', '33', '1488854913', '1489459713');
INSERT INTO `supportworker_token` VALUES ('47', '658f7e05bec0d4b64e34d60979058500', '33', '1488858626', '1489463426');
INSERT INTO `supportworker_token` VALUES ('48', 'e8f424108175133fbac11221a1b707e3', '33', '1488867400', '1489472200');
INSERT INTO `supportworker_token` VALUES ('49', 'c4caa4000a1b562b4f1f209aab820985', '33', '1488867568', '1489472368');
INSERT INTO `supportworker_token` VALUES ('50', '47a057220e31769b30ba6f9eb1660671', '33', '1488867574', '1489472374');
INSERT INTO `supportworker_token` VALUES ('51', 'f29445930eb0a599c3e61cfe1ee52111', '33', '1488868927', '1489473727');
INSERT INTO `supportworker_token` VALUES ('52', '5ed60c0d56fae0cf9330f2cf3908fd7f', '33', '1488872951', '1489477751');
INSERT INTO `supportworker_token` VALUES ('53', 'a3447df36cb137749fd0d38902073209', '33', '1488873861', '1489478661');
INSERT INTO `supportworker_token` VALUES ('54', 'f0d4444ad31222612659198bd08e612d', '33', '1488880697', '1489485497');
INSERT INTO `supportworker_token` VALUES ('55', '041152a7fed35ec2c5fa13fc63a9012e', '33', '1488881218', '1489486018');
INSERT INTO `supportworker_token` VALUES ('56', '09fb6a1b896120549a6404d4ed9042ea', '33', '1488882997', '1489487797');
INSERT INTO `supportworker_token` VALUES ('57', '1d9b30f135796733edcfe5045e7098a5', '33', '1488883067', '1489487867');
INSERT INTO `supportworker_token` VALUES ('58', '0c15d337afcd450b391f86a7f294e2a9', '33', '1488883189', '1489487989');
INSERT INTO `supportworker_token` VALUES ('59', '104e036798df30052a6a26bbf405feac', '33', '1488883319', '1489488119');
INSERT INTO `supportworker_token` VALUES ('60', '57b03fa646e15acd1dc86492b1b781b4', '33', '1488883450', '1489488250');
INSERT INTO `supportworker_token` VALUES ('61', '30c9d2aafe856dc078af4f36234fef1d', '33', '1488883646', '1489488446');
INSERT INTO `supportworker_token` VALUES ('62', '40628d5987d5c8341847a2712ce82474', '33', '1488939825', '1489544625');
INSERT INTO `supportworker_token` VALUES ('63', '7e586c50d75d0af57e3b3f8b011ea3d0', '33', '1489026937', '1489631737');
INSERT INTO `supportworker_token` VALUES ('64', '4ade0ba32e810dce194e3e75edc225ea', '33', '1489026976', '1489631776');
INSERT INTO `supportworker_token` VALUES ('65', 'a5be826c6c9f728a015844ff8df7da99', '33', '1489027440', '1489632240');
INSERT INTO `supportworker_token` VALUES ('66', '848af208ccc9f3e227736a617d1aae27', '33', '1489027990', '1489632790');
INSERT INTO `supportworker_token` VALUES ('67', 'a2df454982518269055427aa7798e994', '33', '1489029442', '1489634242');
INSERT INTO `supportworker_token` VALUES ('68', 'e49cdad8029adafa073fb70c4b756aa8', '33', '1489031662', '1489636462');
INSERT INTO `supportworker_token` VALUES ('69', '68eed27a4fd10a04fc6ed83bf3d1d576', '33', '1489032291', '1489637091');
INSERT INTO `supportworker_token` VALUES ('70', 'b12947c288ce49967395aacd3d2122d8', '33', '1489032800', '1489637600');
INSERT INTO `supportworker_token` VALUES ('71', 'd94a08016a74ea679f2ec1a244573fb3', '33', '1489032932', '1489637732');
INSERT INTO `supportworker_token` VALUES ('72', 'd94a08016a74ea679f2ec1a244573fb3', '33', '1489032932', '1489637732');
INSERT INTO `supportworker_token` VALUES ('73', 'af889306220fcf3b0e070ad52fad0f7d', '33', '1489040080', '1489644880');
INSERT INTO `supportworker_token` VALUES ('74', 'faa92e85e0f77db6d8fe8ae669d54b81', '33', '1489043507', '1489648307');
INSERT INTO `supportworker_token` VALUES ('75', '3c97a32fbd4d62469f810ee411d38c9c', '33', '1489043724', '1489648524');
INSERT INTO `supportworker_token` VALUES ('76', 'c2ada0d93b7acceb051e1b98f78d3085', '33', '1489043743', '1489648543');
INSERT INTO `supportworker_token` VALUES ('77', 'a3984706fd8aec0fbd82ab7a90e148c1', '33', '1489043874', '1489648674');
INSERT INTO `supportworker_token` VALUES ('78', '4e8da6370b7763a00cf66414c6b7132e', '33', '1489043907', '1489648707');
INSERT INTO `supportworker_token` VALUES ('79', '048a885e66048e09806f09963caa424b', '33', '1489044091', '1489648891');
INSERT INTO `supportworker_token` VALUES ('80', 'c3617591b54c7a1cfe6ee2cb6af7c99a', '33', '1489045394', '1489650194');
INSERT INTO `supportworker_token` VALUES ('81', '3812f7c20a7ecba1de38022d055632a0', '33', '1489045539', '1489650339');
INSERT INTO `supportworker_token` VALUES ('82', 'a44af2938e613d3e52717847236cfde5', '33', '1489045623', '1489650423');
INSERT INTO `supportworker_token` VALUES ('83', 'ea9d70447664a57631280e7d053c03da', '33', '1489045724', '1489650524');
INSERT INTO `supportworker_token` VALUES ('84', 'f4d1973586d94067243f5ebe6ce92da0', '33', '1489046096', '1489650896');
INSERT INTO `supportworker_token` VALUES ('85', '3add3760587fa2c3a5d2826c09c4d7a4', '33', '1489046137', '1489650937');
INSERT INTO `supportworker_token` VALUES ('86', 'a9139767a2ec7fbd3ea0af0d15b1eff3', '33', '1489046384', '1489651184');
INSERT INTO `supportworker_token` VALUES ('87', 'fdd31892318f3ccdd1bff39edb5c1df3', '33', '1489046527', '1489651327');
INSERT INTO `supportworker_token` VALUES ('88', '3fb9225c27d05f17f24ec594cc741ba7', '33', '1489046731', '1489651531');
INSERT INTO `supportworker_token` VALUES ('89', '885c09bad25fab68eb5857c70f0a01b5', '33', '1489047143', '1489651943');
INSERT INTO `supportworker_token` VALUES ('90', 'cd1dace52b55f3ad1dcba5b6233a4aa6', '33', '1489047184', '1489651984');
INSERT INTO `supportworker_token` VALUES ('91', '3581bce753b0f43babf36b1a6047b332', '33', '1489047489', '1489652289');
INSERT INTO `supportworker_token` VALUES ('92', '01a03059d5a357852400714ab9a2d7bb', '33', '1489047669', '1489652469');
INSERT INTO `supportworker_token` VALUES ('93', '8ad3edd63fde471d7a784ad73f10c502', '33', '1489048566', '1489653366');
INSERT INTO `supportworker_token` VALUES ('94', 'bebd64b7921bca543c8a2c9253e8c092', '33', '1489048875', '1489653675');
INSERT INTO `supportworker_token` VALUES ('95', '13c27bcb2c892eb30847d60ade56f182', '33', '1489049199', '1489653999');
INSERT INTO `supportworker_token` VALUES ('96', 'e7014a7a758120fe8850b0848e891fc0', '33', '1489049383', '1489654183');
INSERT INTO `supportworker_token` VALUES ('97', 'cc66092e2f6c66d852a46b74a5611a49', '33', '1489051285', '1489656085');
INSERT INTO `supportworker_token` VALUES ('98', 'eec331944ebeb3a5df2e47cefe225739', '33', '1489057357', '1489662157');
INSERT INTO `supportworker_token` VALUES ('99', 'b3b7a5095315f44a1cbe8f739484debb', '33', '1489112246', '1489717046');
INSERT INTO `supportworker_token` VALUES ('100', '6fda1fbf759e8ad056fd2491e5d464b5', '33', '1489112276', '1489717076');
INSERT INTO `supportworker_token` VALUES ('101', '0a79052ab180e516fb512d4d0be4d175', '33', '1489112292', '1489717092');
INSERT INTO `supportworker_token` VALUES ('102', '87f4aff5d436a01bf6a978ff6e050706', '33', '1489113010', '1489717810');
INSERT INTO `supportworker_token` VALUES ('103', '67c6839e97f5aabb48e6264ade5b0a64', '33', '1489114054', '1489718854');
INSERT INTO `supportworker_token` VALUES ('104', '2d3cd7bffa00901835b2208194f28b67', '33', '1489116704', '1489721504');
INSERT INTO `supportworker_token` VALUES ('105', '4ed84eac9812496d07e4a0e76657237f', '33', '1489116765', '1489721565');
INSERT INTO `supportworker_token` VALUES ('106', 'd5f0b4ff3a34ba0b9d9219e184ec61e6', '33', '1489116796', '1489721596');
INSERT INTO `supportworker_token` VALUES ('107', '6224af50eff1a2a5a09aea88f69d07a4', '33', '1489117804', '1489722604');
INSERT INTO `supportworker_token` VALUES ('108', '54516a131f8c1815350eb9502052ac6d', '33', '1489117964', '1489722764');
INSERT INTO `supportworker_token` VALUES ('109', 'ea4fe1e7ea10ab5b349dbc69568f1737', '33', '1489118051', '1489722851');
INSERT INTO `supportworker_token` VALUES ('110', 'da6669a67fb329e14324ad7e5d927754', '33', '1489118248', '1489723048');
INSERT INTO `supportworker_token` VALUES ('111', '4a3fa7d2225964e8d4400a1846000740', '33', '1489118313', '1489723113');
INSERT INTO `supportworker_token` VALUES ('112', 'fae95111140f3cbec3d41481b69048a2', '33', '1489118373', '1489723173');
INSERT INTO `supportworker_token` VALUES ('113', '45d52094a6ae9c2a5a25a64cae059fa9', '33', '1489118451', '1489723251');
INSERT INTO `supportworker_token` VALUES ('114', '3576c6b378098d60c22a9db1b2373fc0', '33', '1489119160', '1489723960');
INSERT INTO `supportworker_token` VALUES ('115', 'b76e49837a847ece33102c4d8d1c0fa9', '33', '1489120315', '1489725115');
INSERT INTO `supportworker_token` VALUES ('116', 'd3dcae8464bd9e158914848589a7a7fb', '33', '1489120317', '1489725117');
INSERT INTO `supportworker_token` VALUES ('117', '2b5af487e5d33044dd566c5ae7544b1c', '33', '1489125711', '1489730511');
INSERT INTO `supportworker_token` VALUES ('118', '5db5a91422ad7f87e50b09c505ac70b5', '33', '1489125826', '1489730626');
INSERT INTO `supportworker_token` VALUES ('119', '9641c17b4d231895b10cc4020e8643d2', '34', '1489125899', '1489730699');
INSERT INTO `supportworker_token` VALUES ('120', '398819176d190b41518f0ca7b0029072', '33', '1489128028', '1489732828');
INSERT INTO `supportworker_token` VALUES ('121', 'b2ec1bc6963a665170f54f070d741ef6', '33', '1489129233', '1489734033');
INSERT INTO `supportworker_token` VALUES ('122', 'f849cb4499e446b5e073cdea9b442205', '33', '1489130141', '1489734941');
INSERT INTO `supportworker_token` VALUES ('123', '6b5aa7e437f6a97bb409446453c7b36f', '33', '1489130380', '1489735180');
INSERT INTO `supportworker_token` VALUES ('124', '86c635668ae14327cbb1b287df3149cc', '33', '1489132556', '1489737356');
INSERT INTO `supportworker_token` VALUES ('125', '9dab7882d4f08e535f1aebb2de481213', '33', '1489133807', '1489738607');
INSERT INTO `supportworker_token` VALUES ('126', '70da59456dfbc5255e911523b1eb1d62', '33', '1489134697', '1489739497');
INSERT INTO `supportworker_token` VALUES ('127', '1c31088fe43e80cf8e0224e98378549f', '33', '1489136333', '1489741133');
INSERT INTO `supportworker_token` VALUES ('128', 'c01575d8d0e0fc4c1c0309bc9cc77864', '33', '1489136717', '1489741517');
INSERT INTO `supportworker_token` VALUES ('129', '331657163e3d707c421da0906e18e110', '33', '1489136735', '1489741535');
INSERT INTO `supportworker_token` VALUES ('130', '13ca03168e072a785ef2dad5337c7625', '33', '1489137059', '1489741859');
INSERT INTO `supportworker_token` VALUES ('131', 'ea3d5394670b9ab13f4d71d24bf6f163', '33', '1489138326', '1489743126');
INSERT INTO `supportworker_token` VALUES ('132', 'b7c45ab5f0677b9693ac29561bb88f76', '33', '1489141645', '1489746445');
INSERT INTO `supportworker_token` VALUES ('133', '50fa8db2bffe4d7644c8f244ded7edb1', '33', '1489141665', '1489746465');
INSERT INTO `supportworker_token` VALUES ('134', 'e422430b39ea7bbcadf3eefec753ba6d', '33', '1489141820', '1489746620');
INSERT INTO `supportworker_token` VALUES ('135', '0dff10fc0aab7ccdcd940b76cf80986a', '33', '1489141957', '1489746757');
INSERT INTO `supportworker_token` VALUES ('136', 'c0d3e4a85d22de149ebfa6a947f71dd1', '33', '1489142763', '1489747563');
INSERT INTO `supportworker_token` VALUES ('137', 'd2808aadb4dc895630796c0c85be197a', '33', '1489218177', '1489822977');
INSERT INTO `supportworker_token` VALUES ('138', 'd2808aadb4dc895630796c0c85be197a', '33', '1489218177', '1489822977');
INSERT INTO `supportworker_token` VALUES ('139', 'aba3c8a406ba559757fda90adb256393', '33', '1489370921', '1489975721');
INSERT INTO `supportworker_token` VALUES ('140', '0d6dc235a061965029ab666fbc22fe9f', '33', '1489372582', '1489977382');
INSERT INTO `supportworker_token` VALUES ('141', '83809a6067d0407d6e5833aef7ff857f', '33', '1489372896', '1489977696');
INSERT INTO `supportworker_token` VALUES ('142', '215f029738986c466d67bba389ff50bb', '33', '1489373042', '1489977842');
INSERT INTO `supportworker_token` VALUES ('143', '4c1b7eb0d4a27080350da925188e0cf4', '33', '1489373522', '1489978322');
INSERT INTO `supportworker_token` VALUES ('144', 'd7afe152394d7c4d191ac8c2284070f3', '33', '1489373862', '1489978662');
INSERT INTO `supportworker_token` VALUES ('145', 'f31a005551ca6ccc7b5a6d879822b257', '33', '1489374819', '1489979619');
INSERT INTO `supportworker_token` VALUES ('146', 'f6e18dda2a2d589bef0ef9bc3948a8d5', '33', '1489374995', '1489979795');
INSERT INTO `supportworker_token` VALUES ('147', 'ea5b9f40668615ee501a5e21f4fda47f', '33', '1489375591', '1489980391');
INSERT INTO `supportworker_token` VALUES ('148', '33ebefd257468f2f690e06a41ef54378', '33', '1489376319', '1489981119');
INSERT INTO `supportworker_token` VALUES ('149', '87d61eaeb87044eccd7bd7b2f8c2d3a7', '33', '1489376930', '1489981730');
INSERT INTO `supportworker_token` VALUES ('150', 'd080776a1d23796d60882c8ed3ac284a', '33', '1489377012', '1489981812');
INSERT INTO `supportworker_token` VALUES ('151', 'd672be80a0394aebdcdf18ceb7fe08fb', '33', '1489377190', '1489981990');
INSERT INTO `supportworker_token` VALUES ('152', '83f595921a8ed0309f34ded0b735b552', '33', '1489377223', '1489982023');
INSERT INTO `supportworker_token` VALUES ('153', '60355c31ac96ed02fe7b6cc924c96d65', '33', '1489377749', '1489982549');
INSERT INTO `supportworker_token` VALUES ('154', 'e7db0c7d6cde0b1662805a99e46c3557', '33', '1489377793', '1489982593');
INSERT INTO `supportworker_token` VALUES ('155', '315326b12bf3b0f0a24bb796ccfc009a', '33', '1489378260', '1489983060');
INSERT INTO `supportworker_token` VALUES ('156', 'f8a3757a82375a2840062f3e3d2e0ad3', '33', '1489378460', '1489983260');
INSERT INTO `supportworker_token` VALUES ('157', 'bd0f6b682776dc02c4c7b93a496e34ef', '33', '1489378469', '1489983269');
INSERT INTO `supportworker_token` VALUES ('158', '68857b661321cf985deace87fca1753c', '33', '1489378666', '1489983466');
INSERT INTO `supportworker_token` VALUES ('159', 'bb4c38c2365bb5fd9c2a37cf0f45b193', '33', '1489383564', '1489988364');
INSERT INTO `supportworker_token` VALUES ('160', '3d7f75b0438b50551a6492c89608ca02', '33', '1489385081', '1489989881');
INSERT INTO `supportworker_token` VALUES ('161', '556c256bb85d06e36c04c07f7400410a', '33', '1489386255', '1489991055');
INSERT INTO `supportworker_token` VALUES ('162', '821af6487c173db511dd0e19731d4514', '33', '1489386443', '1489991243');
INSERT INTO `supportworker_token` VALUES ('163', 'baa6409e166368b25203bdddbf557f99', '33', '1489387781', '1489992581');
INSERT INTO `supportworker_token` VALUES ('164', '90f696f1ac87e8eb86b8928846967cf7', '33', '1489388219', '1489993019');
INSERT INTO `supportworker_token` VALUES ('165', '95bf56a4d2a35dda00db8215a86027ca', '33', '1489389010', '1489993810');
INSERT INTO `supportworker_token` VALUES ('166', '30c1d8f46cb5abebc83b92140e48a1e5', '33', '1489389693', '1489994493');
INSERT INTO `supportworker_token` VALUES ('167', '3488095f0cb1d9172942f49e941130b1', '33', '1489391136', '1489995936');
INSERT INTO `supportworker_token` VALUES ('168', '405154e749f7c6a608350b56809a3b70', '33', '1489391847', '1489996647');
INSERT INTO `supportworker_token` VALUES ('169', 'e741b5b3878b465b10bedb840bd9a8b9', '33', '1489392627', '1489997427');
INSERT INTO `supportworker_token` VALUES ('170', '8862d290e68f39aa2770c05cc4d3a5b8', '33', '1489392738', '1489997538');
INSERT INTO `supportworker_token` VALUES ('171', '91a900d07d9c98910c5af4c3e040420e', '33', '1489412285', '1490017085');
INSERT INTO `supportworker_token` VALUES ('172', 'd9b3941fa783ffc10611ddfd6971fc4a', '33', '1489543788', '1490148588');
INSERT INTO `supportworker_token` VALUES ('173', '3fa42f1b8891bdc5a5ca6da90e03980b', '33', '1489543802', '1490148602');
INSERT INTO `supportworker_token` VALUES ('174', 'f28b5c974b0cdf2ec89ecce1f0a90d52', '33', '1489543917', '1490148717');
INSERT INTO `supportworker_token` VALUES ('175', 'cb3bb5eb0bb0b172c5d094aaa8d45276', '33', '1489543933', '1490148733');
INSERT INTO `supportworker_token` VALUES ('176', '516553f89646509380d367c2c69c5e89', '33', '1489544040', '1490148840');
INSERT INTO `supportworker_token` VALUES ('177', '09887b29f0d054cabe1ec8b1df05a32d', '33', '1489544144', '1490148944');
INSERT INTO `supportworker_token` VALUES ('178', 'f32c8b49c5997fc484c735d15fc3f80d', '33', '1489544167', '1490148967');
INSERT INTO `supportworker_token` VALUES ('179', '38b360e591d10d21b17c429c6b4f13d5', '33', '1489544420', '1490149220');
INSERT INTO `supportworker_token` VALUES ('180', '402f00b83988c69d6784b0a92840e496', '33', '1489544505', '1490149305');
INSERT INTO `supportworker_token` VALUES ('181', 'baa2400702fe6826624cc40e67b65903', '33', '1489544580', '1490149380');
INSERT INTO `supportworker_token` VALUES ('182', '393fd22f6004e78f23b1b021daa5d56d', '33', '1489544694', '1490149494');
INSERT INTO `supportworker_token` VALUES ('183', '7bf743fddb4ba1ccd7331abd419b2512', '33', '1489544700', '1490149500');
INSERT INTO `supportworker_token` VALUES ('184', '41557c0e5e5534cd6b407b1f2344dba9', '33', '1489544792', '1490149592');
INSERT INTO `supportworker_token` VALUES ('185', '2e44c47427bbf6de58cccbd4f85cb9ea', '33', '1489544913', '1490149713');
INSERT INTO `supportworker_token` VALUES ('186', '36548bcd604938d026c4a5225c7aabbf', '33', '1489545033', '1490149833');
INSERT INTO `supportworker_token` VALUES ('187', 'ea737d1d86c36d608c3fbb75c10ed8fd', '33', '1489545090', '1490149890');
INSERT INTO `supportworker_token` VALUES ('188', '91aa65f0066f4a9ee12c5d7ddd7a824f', '33', '1489545118', '1490149918');
INSERT INTO `supportworker_token` VALUES ('189', '98608aff20d400a296a8dbce7ccf568a', '33', '1489545135', '1490149935');
INSERT INTO `supportworker_token` VALUES ('190', 'dc7b13f5363453058eb7da705b5b19c9', '33', '1489545154', '1490149954');
INSERT INTO `supportworker_token` VALUES ('191', 'ee7fe5765772774f8223ffd47b9bffe8', '33', '1489545189', '1490149989');
INSERT INTO `supportworker_token` VALUES ('192', '87e904ddb762b4626c999505f5a59fd1', '33', '1489545210', '1490150010');
INSERT INTO `supportworker_token` VALUES ('193', '2317ba8e13ad9c1fe6a53f518197da6d', '33', '1489545288', '1490150088');
INSERT INTO `supportworker_token` VALUES ('194', '35365e085f4d7bdb9109ec6e7602f37b', '33', '1489545294', '1490150094');
INSERT INTO `supportworker_token` VALUES ('195', 'e4e1bec89a145e0884ce5b8f92f1d325', '33', '1489545357', '1490150157');
INSERT INTO `supportworker_token` VALUES ('196', '981fb369a01c120f186045bb45432688', '33', '1489545424', '1490150224');
INSERT INTO `supportworker_token` VALUES ('197', '1864971f0b7276105259536e75ab9b28', '33', '1489545433', '1490150233');
INSERT INTO `supportworker_token` VALUES ('198', '457c3ad0cdab39c29ec58243a0300e3c', '33', '1489545546', '1490150346');
INSERT INTO `supportworker_token` VALUES ('199', 'd37e8db1a543edecad90db4ebdddbb7c', '33', '1489545551', '1490150351');
INSERT INTO `supportworker_token` VALUES ('200', '8d1fe7e42760c2d2309fa5acfa469b17', '33', '1489545554', '1490150354');
INSERT INTO `supportworker_token` VALUES ('201', '7caf53eef04eeaa795b65f47a75fbcfd', '33', '1489545587', '1490150387');
INSERT INTO `supportworker_token` VALUES ('202', '3e06aebc82564ec618146ef051b05bf1', '33', '1489545591', '1490150391');
INSERT INTO `supportworker_token` VALUES ('203', '72d26878e2ce2bfd3ef720540d7a8fc4', '33', '1489545597', '1490150397');
INSERT INTO `supportworker_token` VALUES ('204', 'a6d77d8d722dad6b1277da03f32908bb', '33', '1489545608', '1490150408');
INSERT INTO `supportworker_token` VALUES ('205', '0e2e652ad938a0c4100cdbf416ccc440', '33', '1489545613', '1490150413');
INSERT INTO `supportworker_token` VALUES ('206', '62f87854015cc27333de6dd4189b4741', '33', '1489545644', '1490150444');
INSERT INTO `supportworker_token` VALUES ('207', 'b714a28f23e0e7da835f6745d01c0285', '33', '1489545649', '1490150449');
INSERT INTO `supportworker_token` VALUES ('208', 'ecbc9e578c5e2de59ef30b3de3ee01a8', '33', '1489545661', '1490150461');
INSERT INTO `supportworker_token` VALUES ('209', '381946ce88febd568c9a93e080367a40', '33', '1489545666', '1490150466');
INSERT INTO `supportworker_token` VALUES ('210', '7e2789777b392dcaa1259c2c4315ffa8', '33', '1489545669', '1490150469');
INSERT INTO `supportworker_token` VALUES ('211', 'ed93f417453e9ed08d93e25693db71db', '33', '1489545687', '1490150487');
INSERT INTO `supportworker_token` VALUES ('212', 'bb882b9645557a0b41e386f096934831', '33', '1489546440', '1490151240');
INSERT INTO `supportworker_token` VALUES ('213', '8fb62add78bc89a0aaa9886266a2f15c', '33', '1489546457', '1490151257');
INSERT INTO `supportworker_token` VALUES ('214', 'f16b0221e3a00cf1d4f59d6925564234', '33', '1489563670', '1490168470');
INSERT INTO `supportworker_token` VALUES ('215', 'b5a8658e92995cdd0036738b127e80e0', '33', '1489563674', '1490168474');
INSERT INTO `supportworker_token` VALUES ('216', 'a530ef84ca2b3860de9f3ae98011c312', '33', '1489563678', '1490168478');
INSERT INTO `supportworker_token` VALUES ('217', 'cdea38a738318d958502e5dde427971c', '33', '1489563706', '1490168506');
INSERT INTO `supportworker_token` VALUES ('218', '6a02e07717a7ba795856e3e2baa2345e', '33', '1489563751', '1490168551');
INSERT INTO `supportworker_token` VALUES ('219', 'cd9d39a7ea9aee125d24b286f2e55f52', '33', '1489563761', '1490168561');
INSERT INTO `supportworker_token` VALUES ('220', 'f3b5638469b5da43bddfa0e9868efc6f', '33', '1489630841', '1490235641');
INSERT INTO `supportworker_token` VALUES ('221', 'd708e4a7e20bfec9a4c9a24dd79e0421', '33', '1489632403', '1490237203');
INSERT INTO `supportworker_token` VALUES ('222', 'fef104aebaf8791917abe941e7364e22', '33', '1489633211', '1490238011');
INSERT INTO `supportworker_token` VALUES ('223', '571414441d38a81b45e57255c0e10f31', '33', '1489634811', '1490239611');
INSERT INTO `supportworker_token` VALUES ('224', '58bd592719226bf52c0e1c0fb060fc90', '33', '1489634904', '1490239704');
INSERT INTO `supportworker_token` VALUES ('225', '5edd96fb2dea05c847f468fc2a34f612', '33', '1489635329', '1490240129');
INSERT INTO `supportworker_token` VALUES ('226', '9ce17371201c49b5f62904f6bd4b4e3d', '33', '1489636694', '1490241494');
INSERT INTO `supportworker_token` VALUES ('227', '41df3c8b6d17f448d5d984c5992a97ba', '33', '1489636804', '1490241604');
INSERT INTO `supportworker_token` VALUES ('228', '764d93e9d617d2a0652e33ebb10fdc4d', '33', '1489636903', '1490241703');
INSERT INTO `supportworker_token` VALUES ('229', 'da7e024a68bdb24295d97b1b28a13f3d', '33', '1489637023', '1490241823');
INSERT INTO `supportworker_token` VALUES ('230', 'cf24ebcc740c8b59c9344a4828dfc0d2', '33', '1489637316', '1490242116');
INSERT INTO `supportworker_token` VALUES ('231', '4e686d64ec5e31f8f640ea5804913daf', '33', '1489637344', '1490242144');
INSERT INTO `supportworker_token` VALUES ('232', '669c33d3e4071d953c4215ccbbcfd74a', '33', '1489645975', '1490250775');
INSERT INTO `supportworker_token` VALUES ('233', '5404447b74be0246101bed617822201b', '33', '1489646224', '1490251024');
INSERT INTO `supportworker_token` VALUES ('234', 'c0161d77e4e574cedcce3ffee42991f1', '33', '1489646358', '1490251158');
INSERT INTO `supportworker_token` VALUES ('235', 'aa6442b4ca3e5c59cd186ae31fd037d9', '33', '1489646622', '1490251422');
INSERT INTO `supportworker_token` VALUES ('236', '2744271d4df9904f415d13257226c032', '33', '1489647789', '1490252589');
INSERT INTO `supportworker_token` VALUES ('237', '87e26801fa5353b59bd75ffaa81d70bb', '33', '1489647972', '1490252772');
INSERT INTO `supportworker_token` VALUES ('238', 'aad05182bddbe223c9603bfac0b5475c', '33', '1489647983', '1490252783');
INSERT INTO `supportworker_token` VALUES ('239', '1d145b238c6c58609ee0a79c6ca38919', '33', '1489648237', '1490253037');
INSERT INTO `supportworker_token` VALUES ('240', '0d627790c70e65757405c4246ac5e077', '33', '1489648909', '1490253709');
INSERT INTO `supportworker_token` VALUES ('241', '6770bcfc7ae9f2c9aa24ae92a759c55c', '33', '1489650253', '1490255053');
INSERT INTO `supportworker_token` VALUES ('242', '348529d6273a692041be0612296cd001', '33', '1489651327', '1490256127');
INSERT INTO `supportworker_token` VALUES ('243', '7bff3249ea4ad54dd08db3c1a6700e3d', '33', '1489651400', '1490256200');
INSERT INTO `supportworker_token` VALUES ('244', '65e43b9cdfd1ab20b0a6a89850864fad', '33', '1489652009', '1490256809');
INSERT INTO `supportworker_token` VALUES ('245', '593875a116360e1bb02257f55dd3d551', '33', '1489652027', '1490256827');
INSERT INTO `supportworker_token` VALUES ('246', '817e2031731258761b1a22ddad0eca27', '33', '1489652755', '1490257555');
INSERT INTO `supportworker_token` VALUES ('247', '469dfa4e0b93ef88ca43369644bce29c', '33', '1489716216', '1490321016');
INSERT INTO `supportworker_token` VALUES ('248', '18f638df80f494b70973635385566bcc', '33', '1489716744', '1490321544');
INSERT INTO `supportworker_token` VALUES ('249', '66fd2cfcaa0e14e345331a7ce2a595bb', '33', '1489717559', '1490322359');
INSERT INTO `supportworker_token` VALUES ('250', '4fe3c14f5022f89d3ea2dbe88d75a50b', '33', '1489718134', '1490322934');
INSERT INTO `supportworker_token` VALUES ('251', '4007d85fdbfe5a5c3e11c3834c3ee1a4', '33', '1489718283', '1490323083');
INSERT INTO `supportworker_token` VALUES ('252', 'a1249988a0f82c6604db97ffc7412875', '33', '1489718656', '1490323456');
INSERT INTO `supportworker_token` VALUES ('253', 'fa0442ac2d9c3d7708c1ffa9ba1cbadb', '33', '1489719554', '1490324354');
INSERT INTO `supportworker_token` VALUES ('254', 'acf8816df41519e15e64c320b5337f1c', '33', '1489719703', '1490324503');
INSERT INTO `supportworker_token` VALUES ('255', '88c4845225fe854b24af72bc2bddba3a', '33', '1489721749', '1490326549');
INSERT INTO `supportworker_token` VALUES ('256', '88c4845225fe854b24af72bc2bddba3a', '33', '1489721749', '1490326549');
INSERT INTO `supportworker_token` VALUES ('257', 'b71786ddea3d23e032d243b289cc3b07', '33', '1489722942', '1490327742');
INSERT INTO `supportworker_token` VALUES ('258', '7114cb56646727261c0be42c9930204c', '33', '1489723842', '1490328642');
INSERT INTO `supportworker_token` VALUES ('259', '81385a85df117c0e149cd47852393d2e', '33', '1489723873', '1490328673');
INSERT INTO `supportworker_token` VALUES ('260', 'f7ac71260f91ed980251c591d2e9b468', '33', '1489733690', '1490338490');
INSERT INTO `supportworker_token` VALUES ('261', 'afe96b04e287711c44f7be572f66c4d6', '33', '1489733834', '1490338634');
INSERT INTO `supportworker_token` VALUES ('262', 'caefbd6d2b0a725c0a26aeedd6c0511b', '33', '1489733934', '1490338734');
INSERT INTO `supportworker_token` VALUES ('263', '9b1d3cfcb40ad8f18412d50dd9343eae', '33', '1489735453', '1490340253');
INSERT INTO `supportworker_token` VALUES ('264', '40c7b52e2582943fb5ef5fedb80180bf', '33', '1489735976', '1490340776');
INSERT INTO `supportworker_token` VALUES ('265', 'd50054cdf64ffca20737cde88d82f936', '33', '1489736514', '1490341314');
INSERT INTO `supportworker_token` VALUES ('266', 'e8911b61debbe6b966362268ab6e88a8', '33', '1489736673', '1490341473');
INSERT INTO `supportworker_token` VALUES ('267', 'adff5d83525cfb51806d5d77eb4d014e', '33', '1489736759', '1490341559');
INSERT INTO `supportworker_token` VALUES ('268', 'edd5ce3b4c280f8536c96828d4ad3883', '33', '1489977403', '1490582203');
INSERT INTO `supportworker_token` VALUES ('269', 'd119026742eee461f9093a4c4c7184d9', '33', '1489977404', '1490582204');
INSERT INTO `supportworker_token` VALUES ('270', 'ed6158f806a6622c3660ee94c0e1f71c', '33', '1489996020', '1490600820');
INSERT INTO `supportworker_token` VALUES ('271', '4d0a8a6418de8f9f83cea23d128a2c7e', '33', '1489997996', '1490602796');
INSERT INTO `supportworker_token` VALUES ('272', '38918b3019084d349d249011e168a89e', '33', '1489999550', '1490604350');
INSERT INTO `supportworker_token` VALUES ('273', '38918b3019084d349d249011e168a89e', '33', '1489999550', '1490604350');
INSERT INTO `supportworker_token` VALUES ('274', '38918b3019084d349d249011e168a89e', '33', '1489999550', '1490604350');
INSERT INTO `supportworker_token` VALUES ('275', '38918b3019084d349d249011e168a89e', '33', '1489999550', '1490604350');
INSERT INTO `supportworker_token` VALUES ('276', '289fef75fad9672bb33e385605d22e22', '33', '1489999551', '1490604351');
INSERT INTO `supportworker_token` VALUES ('277', '289fef75fad9672bb33e385605d22e22', '33', '1489999551', '1490604351');
INSERT INTO `supportworker_token` VALUES ('278', '289fef75fad9672bb33e385605d22e22', '33', '1489999551', '1490604351');
INSERT INTO `supportworker_token` VALUES ('279', '289fef75fad9672bb33e385605d22e22', '33', '1489999551', '1490604351');
INSERT INTO `supportworker_token` VALUES ('280', '289fef75fad9672bb33e385605d22e22', '33', '1489999551', '1490604351');
INSERT INTO `supportworker_token` VALUES ('281', '01b63ba12d2e341bb0b526fd379017b1', '33', '1490063003', '1490667803');
INSERT INTO `supportworker_token` VALUES ('282', '0d28c67ad44772bd48defd1720380e7d', '33', '1490064145', '1490668945');
INSERT INTO `supportworker_token` VALUES ('283', '92a257197374b61726ddadce0e58bd81', '33', '1490064146', '1490668946');
INSERT INTO `supportworker_token` VALUES ('284', 'c1131354558c11439a9e52df29ade350', '33', '1490064178', '1490668978');
INSERT INTO `supportworker_token` VALUES ('285', '52a9641e8727c56081066adf55653425', '33', '1490064320', '1490669120');
INSERT INTO `supportworker_token` VALUES ('286', 'e852d84d5c379b28ed8f46cbe76c20f5', '33', '1490064574', '1490669374');
INSERT INTO `supportworker_token` VALUES ('287', 'd6cdcc52580322a88a59611844f3df6a', '33', '1490065002', '1490669802');
INSERT INTO `supportworker_token` VALUES ('288', '548e511dfe58ad6c329aaaf1fd500b3f', '33', '1490065611', '1490670411');
INSERT INTO `supportworker_token` VALUES ('289', 'a81eaaea0aedbf465d9a914eab46fa4e', '33', '1490065704', '1490670504');
INSERT INTO `supportworker_token` VALUES ('290', '5371b6bb7f7eb9649e9a58964e4c1b96', '33', '1490065999', '1490670799');
INSERT INTO `supportworker_token` VALUES ('291', '8f1034323712153c32cb44922986bb7d', '33', '1490066466', '1490671266');
INSERT INTO `supportworker_token` VALUES ('292', '26108916e7aaa2632f7fc1e38441b385', '33', '1490067711', '1490672511');
INSERT INTO `supportworker_token` VALUES ('293', '52148853454b8f574d41f9228f8c43cf', '33', '1490077898', '1490682698');
INSERT INTO `supportworker_token` VALUES ('294', '537fa79d67a9d24af6b1d80b0b06d3e9', '33', '1490077899', '1490682699');
INSERT INTO `supportworker_token` VALUES ('295', 'dba00999613ffaae8d0ec04c7121a53c', '33', '1490078304', '1490683104');
INSERT INTO `supportworker_token` VALUES ('296', 'aa258fbbe9ffd034f0ddaaa3a3364b86', '33', '1490082235', '1490687035');
INSERT INTO `supportworker_token` VALUES ('297', '5ac6eefe552b273693435992c9e196c6', '33', '1490082917', '1490687717');
INSERT INTO `supportworker_token` VALUES ('298', '2fbd75922f3d347adf8955c297ca2dfa', '33', '1490083450', '1490688250');
INSERT INTO `supportworker_token` VALUES ('299', '0a554eadc78568070044f230eded3cad', '33', '1490083453', '1490688253');
INSERT INTO `supportworker_token` VALUES ('300', '40b0124ca2e6ecaa69efe9e5b0b5c354', '33', '1490084386', '1490689186');
INSERT INTO `supportworker_token` VALUES ('301', '8d7ea409bf5f0af9a368ac19c505a6bc', '33', '1490102576', '1490707376');
INSERT INTO `supportworker_token` VALUES ('302', '8d7ea409bf5f0af9a368ac19c505a6bc', '33', '1490102576', '1490707376');
INSERT INTO `supportworker_token` VALUES ('303', 'dd06faaaa10283b0d83da5440b3e9754', '33', '1490102878', '1490707678');
INSERT INTO `supportworker_token` VALUES ('304', '7d4531c02b858e845992f248444865db', '33', '1490149988', '1490754788');
INSERT INTO `supportworker_token` VALUES ('305', '39aee5d8af9d87ecf796f2f745329366', '33', '1490149989', '1490754789');
INSERT INTO `supportworker_token` VALUES ('306', '73f6c151e797dfcb3d1ba268beb3f570', '33', '1490152491', '1490757291');
INSERT INTO `supportworker_token` VALUES ('307', '020adce86a2e5521222da9326a8c1fce', '33', '1490152903', '1490757703');
INSERT INTO `supportworker_token` VALUES ('308', 'd884ca3c9bc808919f9190760068fc87', '33', '1490153018', '1490757818');
INSERT INTO `supportworker_token` VALUES ('309', 'bef8aee5fe0a568db72ea7ab4b139b92', '33', '1490153091', '1490757891');
INSERT INTO `supportworker_token` VALUES ('310', '7067f9e1d9ec497575600a1934c42b17', '33', '1490153558', '1490758358');
INSERT INTO `supportworker_token` VALUES ('311', '346e03410eef7aca2245d4263ed407ef', '33', '1490167591', '1490772391');
INSERT INTO `supportworker_token` VALUES ('312', 'd0b3a6be62a5698448c3554ee3db5cac', '33', '1490167650', '1490772450');
INSERT INTO `supportworker_token` VALUES ('313', 'a9c3b72188c06fc028c05490c0f4908f', '33', '1490167791', '1490772591');
INSERT INTO `supportworker_token` VALUES ('314', '327832ef823cd00edb1af06939ee20c7', '33', '1490167872', '1490772672');
INSERT INTO `supportworker_token` VALUES ('315', '92fee329e5f70513b0999ea63e622dfe', '33', '1490168007', '1490772807');
INSERT INTO `supportworker_token` VALUES ('316', '0b800acd63fae7e280ea89b7bb7779af', '33', '1490168147', '1490772947');
INSERT INTO `supportworker_token` VALUES ('317', '4d3a8342ce665d572318b556379287ac', '33', '1490169751', '1490774551');
INSERT INTO `supportworker_token` VALUES ('318', '4dc418e418bfe8cababebfb7d39ea108', '33', '1490172268', '1490777068');
INSERT INTO `supportworker_token` VALUES ('319', 'b803b23b105e47a9024f2d3a6de14bfa', '33', '1490173138', '1490777938');
INSERT INTO `supportworker_token` VALUES ('320', 'a498f00d104a354de625c0109142a681', '33', '1490173147', '1490777947');
INSERT INTO `supportworker_token` VALUES ('321', '96e3d9f82e4d3cb7c1881ad408b91181', '33', '1490173163', '1490777963');
INSERT INTO `supportworker_token` VALUES ('322', 'd9765ee79eb0e01bdb06b3760a773938', '33', '1490173259', '1490778059');
INSERT INTO `supportworker_token` VALUES ('323', '04ee9059c7531a381b7b862b2c728439', '33', '1490173600', '1490778400');
INSERT INTO `supportworker_token` VALUES ('324', '6c9911be799aacf1dfae1248450ca95d', '33', '1490173636', '1490778436');
INSERT INTO `supportworker_token` VALUES ('325', 'f4bdae4240958b690f76469c931f966d', '33', '1490173741', '1490778541');
INSERT INTO `supportworker_token` VALUES ('326', '068d9ae30afa4a52900347d90816a291', '33', '1490173742', '1490778542');
INSERT INTO `supportworker_token` VALUES ('327', '2464a89e451f2aebe50f9e1ada76a7dd', '33', '1490173829', '1490778629');
INSERT INTO `supportworker_token` VALUES ('328', '8abd280a8600fcc904aa570224688bde', '33', '1490174005', '1490778805');
INSERT INTO `supportworker_token` VALUES ('329', 'b54a80bc3ea14500fb66e090683ccffb', '33', '1490174246', '1490779046');
INSERT INTO `supportworker_token` VALUES ('330', '616d8613b6c86d54405081c6fb8454ff', '33', '1490175062', '1490779862');
INSERT INTO `supportworker_token` VALUES ('331', '666beed81f32975ad7b0ee968d070757', '33', '1490185660', '1490790460');
INSERT INTO `supportworker_token` VALUES ('332', '0c2d456f013aae5a069d12cc7a7fc9b6', '33', '1490234361', '1490839161');
INSERT INTO `supportworker_token` VALUES ('333', '21bd46a4b296fb0b1d25585695a959a8', '33', '1490235780', '1490840580');
INSERT INTO `supportworker_token` VALUES ('334', '73e8dc7c8fffc6ad0a63fe13f76fcc23', '33', '1490236303', '1490841103');
INSERT INTO `supportworker_token` VALUES ('335', '1c16c47549a6c48049e8a57b13a063cb', '33', '1490249049', '1490853849');
INSERT INTO `supportworker_token` VALUES ('336', 'c77a99912b74fbde76087a295a7287a8', '33', '1490249517', '1490854317');
INSERT INTO `supportworker_token` VALUES ('337', 'd6ccd3100007a720b7bd924488dcf34a', '33', '1490249594', '1490854394');
INSERT INTO `supportworker_token` VALUES ('338', '8e775045355b682d570355ed25295064', '33', '1490249964', '1490854764');
INSERT INTO `supportworker_token` VALUES ('339', 'af9fcea83b46061023fce34588204c62', '33', '1490250014', '1490854814');
INSERT INTO `supportworker_token` VALUES ('340', '902f5c048d7485b93d2d4ddb074fcdfe', '33', '1490250535', '1490855335');
INSERT INTO `supportworker_token` VALUES ('341', '2bdc73e2b5b4e6071a9fd612e190cdcf', '33', '1490250563', '1490855363');
INSERT INTO `supportworker_token` VALUES ('342', '90a24982fa313091f6577483216b2ae5', '33', '1490253064', '1490857864');
INSERT INTO `supportworker_token` VALUES ('343', 'ae6dddfe6603afdf04f9b4a83fd3b1ae', '33', '1490254634', '1490859434');
INSERT INTO `supportworker_token` VALUES ('344', '7ec3435c337ce23d766b5ae96f3df04e', '33', '1490254709', '1490859509');
INSERT INTO `supportworker_token` VALUES ('345', '5a0e24f5366141500225d1b8f7be93d3', '33', '1490254769', '1490859569');
INSERT INTO `supportworker_token` VALUES ('346', 'f0da038cebd5ae36b3bdbbfcc8c7ce4d', '33', '1490255114', '1490859914');
INSERT INTO `supportworker_token` VALUES ('347', '25c7efc3a123ba46344be1c2ad6f7962', '33', '1490257427', '1490862227');
INSERT INTO `supportworker_token` VALUES ('348', 'f27839ba792e50d0f040741e2de2bd73', '33', '1490321288', '1490926088');
INSERT INTO `supportworker_token` VALUES ('349', '8d3c1c902137d885731089d7f61ce92d', '33', '1490321326', '1490926126');
INSERT INTO `supportworker_token` VALUES ('350', 'bcb60c0191df3c8a5f67c921e70de4db', '33', '1490323254', '1490928054');
INSERT INTO `supportworker_token` VALUES ('351', '3c6abcf086245cb101cc7aa9de44641a', '33', '1490323362', '1490928162');
INSERT INTO `supportworker_token` VALUES ('352', '3f1af41daf859b583cceef5566a60c70', '33', '1490324133', '1490928933');
INSERT INTO `supportworker_token` VALUES ('353', '3edfc0cf1eac856b6b6efc483b07d097', '33', '1490324726', '1490929526');
INSERT INTO `supportworker_token` VALUES ('354', '1e263e4d4bdc43425ec9e517768d2694', '33', '1490324998', '1490929798');
INSERT INTO `supportworker_token` VALUES ('355', '9a5711c6b15007a38eb751f475d0114e', '33', '1490325315', '1490930115');
INSERT INTO `supportworker_token` VALUES ('356', 'c85e32259fa9b303e8882ae7263fcd3a', '33', '1490325424', '1490930224');
INSERT INTO `supportworker_token` VALUES ('357', '7e0c58037716451576f8af56f50abf15', '33', '1490326223', '1490931023');
INSERT INTO `supportworker_token` VALUES ('358', '6a2a95e11551b08b1afc9c27d5fc3904', '33', '1490328120', '1490932920');
INSERT INTO `supportworker_token` VALUES ('359', 'b954d52fc4b87b4ac833a0da828fb3e1', '33', '1490328420', '1490933220');
INSERT INTO `supportworker_token` VALUES ('360', '422a6b12bd5f9c848275e4c6887a5c2d', '33', '1490328615', '1490933415');
INSERT INTO `supportworker_token` VALUES ('361', 'daeffa179e5615506347445aee38a4ef', '33', '1490328937', '1490933737');
INSERT INTO `supportworker_token` VALUES ('362', '3aacf33de2b6cac52c88c09099a180fd', '33', '1490329207', '1490934007');
INSERT INTO `supportworker_token` VALUES ('363', 'be9abcaf38ee41494eebe5b655b7efc5', '33', '1490689464', '1491294264');
INSERT INTO `supportworker_token` VALUES ('364', 'c7f342715436a923c2e6a3556f4b7909', '33', '1490689534', '1491294334');
INSERT INTO `supportworker_token` VALUES ('365', '36ec99210d34f9646f2ed6fb09758de4', '33', '1490689536', '1491294336');
INSERT INTO `supportworker_token` VALUES ('366', '54087d6e35c061e16e8d225bcff51242', '37', '1490693485', '1491298285');
INSERT INTO `supportworker_token` VALUES ('367', 'c26c17eb0ce9e73c71cbf180362e97ba', '37', '1490694089', '1491298889');
INSERT INTO `supportworker_token` VALUES ('368', 'c95e4f1daad446eb0593454ebe23bd8d', '37', '1490694185', '1491298985');
INSERT INTO `supportworker_token` VALUES ('369', '811a638638a9b19908a27df3f3f14adf', '37', '1490697137', '1491301937');
INSERT INTO `supportworker_token` VALUES ('370', '8a0f03554df43a3b6f611b18a0aa3e79', '37', '1490697198', '1491301998');
INSERT INTO `supportworker_token` VALUES ('371', '05059c5ba3d1b9965633d78093a10f8d', '37', '1490697202', '1491302002');
INSERT INTO `supportworker_token` VALUES ('372', 'dfefa726a22ea93f17b0ea358c4c8678', '37', '1490697292', '1491302092');
INSERT INTO `supportworker_token` VALUES ('373', 'a77505a82288c57d94dbc263b8279062', '37', '1490697439', '1491302239');
INSERT INTO `supportworker_token` VALUES ('374', 'f016f5f0ad34f491be9338e1028a88d7', '37', '1490697888', '1491302688');
INSERT INTO `supportworker_token` VALUES ('375', 'f6c4c31ce3cc8c620c8589892177e6c9', '37', '1490697902', '1491302702');
INSERT INTO `supportworker_token` VALUES ('376', '7657ffd4f13556a6e6b074bc180bb85b', '37', '1490698001', '1491302801');
INSERT INTO `supportworker_token` VALUES ('377', 'aa088c8bfc5cc7deb741ae44311ef1e0', '37', '1490698145', '1491302945');
INSERT INTO `supportworker_token` VALUES ('378', '43e0df67d942295900b6e2bcc45d78a7', '37', '1490698289', '1491303089');
INSERT INTO `supportworker_token` VALUES ('379', '1ffcdbc24493caf712631e81d99d17f6', '37', '1490752368', '1491357168');
INSERT INTO `supportworker_token` VALUES ('380', '13ecff08e3775a3ab1937d07e043e34f', '37', '1490752431', '1491357231');
INSERT INTO `supportworker_token` VALUES ('381', '75cdb4872c2787aafb9693da16ce1bb8', '37', '1490752437', '1491357237');
INSERT INTO `supportworker_token` VALUES ('382', 'bb38d22dadcdb29e27d84248093cf0ce', '37', '1490752511', '1491357311');
INSERT INTO `supportworker_token` VALUES ('383', 'c864adc0ca43e7aaac2fcbe703bb7d74', '37', '1490760280', '1491365080');
INSERT INTO `supportworker_token` VALUES ('384', 'b739d043863aeb2c07973def9d2a8eb3', '37', '1490760348', '1491365148');
INSERT INTO `supportworker_token` VALUES ('385', 'bb0ccece6ef01a69a319f2a685627f11', '37', '1490760515', '1491365315');
INSERT INTO `supportworker_token` VALUES ('386', 'bb0ccece6ef01a69a319f2a685627f11', '37', '1490760515', '1491365315');
INSERT INTO `supportworker_token` VALUES ('387', 'bb0ccece6ef01a69a319f2a685627f11', '37', '1490760515', '1491365315');
INSERT INTO `supportworker_token` VALUES ('388', 'bb0ccece6ef01a69a319f2a685627f11', '37', '1490760515', '1491365315');
INSERT INTO `supportworker_token` VALUES ('389', 'bb0ccece6ef01a69a319f2a685627f11', '37', '1490760515', '1491365315');
INSERT INTO `supportworker_token` VALUES ('390', 'db6999c6ce01b0da9a946380d815c578', '37', '1490760516', '1491365316');
INSERT INTO `supportworker_token` VALUES ('391', 'db6999c6ce01b0da9a946380d815c578', '37', '1490760516', '1491365316');
INSERT INTO `supportworker_token` VALUES ('392', 'db6999c6ce01b0da9a946380d815c578', '37', '1490760516', '1491365316');
INSERT INTO `supportworker_token` VALUES ('393', 'db6999c6ce01b0da9a946380d815c578', '37', '1490760516', '1491365316');
INSERT INTO `supportworker_token` VALUES ('394', 'db6999c6ce01b0da9a946380d815c578', '37', '1490760516', '1491365316');
INSERT INTO `supportworker_token` VALUES ('395', 'db6999c6ce01b0da9a946380d815c578', '37', '1490760516', '1491365316');
INSERT INTO `supportworker_token` VALUES ('396', 'db6999c6ce01b0da9a946380d815c578', '37', '1490760516', '1491365316');
INSERT INTO `supportworker_token` VALUES ('397', 'db6999c6ce01b0da9a946380d815c578', '37', '1490760516', '1491365316');
INSERT INTO `supportworker_token` VALUES ('398', 'db6999c6ce01b0da9a946380d815c578', '37', '1490760516', '1491365316');
INSERT INTO `supportworker_token` VALUES ('399', 'db6999c6ce01b0da9a946380d815c578', '37', '1490760516', '1491365316');
INSERT INTO `supportworker_token` VALUES ('400', '458062aa5d0f91929a6894fd1074b6a5', '37', '1490760700', '1491365500');
INSERT INTO `supportworker_token` VALUES ('401', 'e0525b657439a8e3bba0fa91d4009e04', '37', '1490760799', '1491365599');
INSERT INTO `supportworker_token` VALUES ('402', 'f9619b82d1f699b21d611e10de604374', '37', '1490760901', '1491365701');
INSERT INTO `supportworker_token` VALUES ('403', '624bfca552d175c6365bc04e5529bce2', '37', '1490761012', '1491365812');
INSERT INTO `supportworker_token` VALUES ('404', '27e705dee166aa3257601dfaa4d07aa5', '37', '1490761036', '1491365836');
INSERT INTO `supportworker_token` VALUES ('405', 'b76e031bc300de26ddf113b9fead52fd', '37', '1490761249', '1491366049');
INSERT INTO `supportworker_token` VALUES ('406', '952233fb456eb04150a9fb7f80b1875f', '37', '1490761283', '1491366083');
INSERT INTO `supportworker_token` VALUES ('407', 'bec4c6b80ed33d5c09e3829388409f75', '37', '1490761480', '1491366280');
INSERT INTO `supportworker_token` VALUES ('408', 'd7a3917e8785ad6fca59e0b1af6dde1e', '37', '1490761629', '1491366429');
INSERT INTO `supportworker_token` VALUES ('409', '3c4b8f9eacf5139323e747567c44f7c1', '37', '1490761952', '1491366752');
INSERT INTO `supportworker_token` VALUES ('410', '9e0826e7f4a3c06c53c196141e0ac357', '37', '1490762013', '1491366813');
INSERT INTO `supportworker_token` VALUES ('411', '43fc78de44192ae4b8f0cfa615c49a50', '37', '1490762195', '1491366995');
INSERT INTO `supportworker_token` VALUES ('412', '7dd266c35f488e9d012e57f647faad22', '37', '1490762250', '1491367050');
INSERT INTO `supportworker_token` VALUES ('413', 'a4872ead5f02a9dd80ca04a50e51ad9b', '37', '1490762632', '1491367432');
INSERT INTO `supportworker_token` VALUES ('414', '1982c54df13480a4798258c72a3dbc7d', '37', '1490762777', '1491367577');
INSERT INTO `supportworker_token` VALUES ('415', '89ed4c372b0d4cb8a02a914cdb35a5ab', '37', '1490762830', '1491367630');
INSERT INTO `supportworker_token` VALUES ('416', 'e79e2abe6c07f0ad80cf9f136cef5182', '37', '1490762899', '1491367699');
INSERT INTO `supportworker_token` VALUES ('417', 'c2596c558295dcacdc12bdd06c2d9a32', '37', '1490767631', '1491372431');
INSERT INTO `supportworker_token` VALUES ('418', '438fe4e5d27a2c2d8b0116c4088aab76', '37', '1490767885', '1491372685');
INSERT INTO `supportworker_token` VALUES ('419', '5b2e212a2f6e9b07a44017930a81529d', '37', '1490767897', '1491372697');
INSERT INTO `supportworker_token` VALUES ('420', '60c45146e6ba071e453b2d34273830a8', '37', '1490767902', '1491372702');
INSERT INTO `supportworker_token` VALUES ('421', '6643cab68baf114bb127efb870c1317b', '37', '1490767926', '1491372726');
INSERT INTO `supportworker_token` VALUES ('422', '14c0561d533002aa9300ec14b48a3e12', '37', '1490767996', '1491372796');
INSERT INTO `supportworker_token` VALUES ('423', 'cd25ec501566365fd16f7b916098f7c0', '37', '1490768006', '1491372806');
INSERT INTO `supportworker_token` VALUES ('424', 'd38489f170db79bb005db3932e79c23e', '37', '1490768054', '1491372854');
INSERT INTO `supportworker_token` VALUES ('425', '991cb1be06f53dbedaa390a66d5b2b80', '37', '1490768635', '1491373435');
INSERT INTO `supportworker_token` VALUES ('426', '82c793c50f26de153e19019cce46f7d7', '37', '1490768707', '1491373507');
INSERT INTO `supportworker_token` VALUES ('427', '630b843e2d7ff735200f4e131ddb3547', '37', '1490769135', '1491373935');
INSERT INTO `supportworker_token` VALUES ('428', '2487a8d8f44994d411b5b087498bc695', '37', '1490775927', '1491380727');
INSERT INTO `supportworker_token` VALUES ('429', '32bff6d083df8c9aa19e83880a36b2b6', '37', '1490777777', '1491382577');
INSERT INTO `supportworker_token` VALUES ('430', '85cad43d2aac6041a444522050c35e6b', '37', '1490777903', '1491382703');
INSERT INTO `supportworker_token` VALUES ('431', '29e9657b10e99fe5ee265b9658294b33', '37', '1490778042', '1491382842');
INSERT INTO `supportworker_token` VALUES ('432', 'dd2c68e8e8fa2857fc031a80e41a1d85', '37', '1490778175', '1491382975');
INSERT INTO `supportworker_token` VALUES ('433', 'f1c2c76ecb99660d7df39d966fb8ac57', '37', '1490778741', '1491383541');
INSERT INTO `supportworker_token` VALUES ('434', 'c246f22d2d96b794255985c98a4241c9', '37', '1490778742', '1491383542');
INSERT INTO `supportworker_token` VALUES ('435', '6d7a063493a3d4afd56007d141c10ebb', '37', '1490778992', '1491383792');
INSERT INTO `supportworker_token` VALUES ('436', '9b377e73ce64d870d9207c1791e634a7', '37', '1490779009', '1491383809');
INSERT INTO `supportworker_token` VALUES ('437', '708db5cd6c8c599a478d7245ecdb1a01', '37', '1490779138', '1491383938');
INSERT INTO `supportworker_token` VALUES ('438', '71250c328a0a8522aba16e22990e0bb3', '37', '1490779988', '1491384788');
INSERT INTO `supportworker_token` VALUES ('439', '02ea77ca6725308a882ea2b4e2249c67', '37', '1490780134', '1491384934');
INSERT INTO `supportworker_token` VALUES ('440', '9e05bf2f561e570ffdfbd502a3ea87a6', '37', '1490780233', '1491385033');
INSERT INTO `supportworker_token` VALUES ('441', 'f925ab689b2a9095f7b3f412888a298b', '37', '1490780309', '1491385109');
INSERT INTO `supportworker_token` VALUES ('442', 'c4082ec5a29d7200802195b1f97718fc', '37', '1490782015', '1491386815');
INSERT INTO `supportworker_token` VALUES ('443', 'a57d0ab3337bb2a0dd7fc8b1e4fa8327', '37', '1490842180', '1491446980');
INSERT INTO `supportworker_token` VALUES ('444', '6d62e38f0170baa2afeeefe2dc776862', '37', '1490842885', '1491447685');
INSERT INTO `supportworker_token` VALUES ('445', 'bb8a7a82bfcb045c3c30af0daa620bf8', '37', '1490843788', '1491448588');
INSERT INTO `supportworker_token` VALUES ('446', '98e74efced087eb78d2026b5cee184fb', '37', '1490843848', '1491448648');
INSERT INTO `supportworker_token` VALUES ('447', 'f2acf6e09ae5c8f8c7804ff2b09e78ed', '37', '1490843993', '1491448793');
INSERT INTO `supportworker_token` VALUES ('448', '0196b04b341198a2eaf58ffa76bd18a3', '37', '1490845761', '1491450561');
INSERT INTO `supportworker_token` VALUES ('449', '046d98979803aa072b3c3c23d0d053c6', '37', '1490845835', '1491450635');
INSERT INTO `supportworker_token` VALUES ('450', '130f011f7e3068c062e3f08b9d173c79', '37', '1490845901', '1491450701');
INSERT INTO `supportworker_token` VALUES ('451', '06808b994208dee27f3446793df513bf', '37', '1490846633', '1491451433');
INSERT INTO `supportworker_token` VALUES ('452', '8b256e020c90782adc050386bfd13960', '37', '1490846725', '1491451525');
INSERT INTO `supportworker_token` VALUES ('453', 'b851edb536116782780c9933e75bbe09', '37', '1490846952', '1491451752');
INSERT INTO `supportworker_token` VALUES ('454', 'ac18b3fbe9703c5607f47989b06daf77', '37', '1490847321', '1491452121');
INSERT INTO `supportworker_token` VALUES ('455', 'a8a7585d6e064f8f2287b107b56f9801', '37', '1490847523', '1491452323');
INSERT INTO `supportworker_token` VALUES ('456', '3797ed9066b46ca7a7884b3d05ac7d10', '37', '1490847547', '1491452347');
INSERT INTO `supportworker_token` VALUES ('457', 'e520699d48d3b663dd7de2b86317e25d', '37', '1490847832', '1491452632');
INSERT INTO `supportworker_token` VALUES ('458', 'ac6ee2f715ff9a624f79de6047edbbeb', '37', '1490854369', '1491459169');
INSERT INTO `supportworker_token` VALUES ('459', 'c6f6cb35dc15af339a7ce7db3b483ab7', '37', '1490854577', '1491459377');
INSERT INTO `supportworker_token` VALUES ('460', 'b76be81459fa164962a52df7b1c20316', '37', '1490854605', '1491459405');
INSERT INTO `supportworker_token` VALUES ('461', '088801be3c42f58a160030931108da83', '37', '1490854815', '1491459615');
INSERT INTO `supportworker_token` VALUES ('462', '1b83a298f98a115fc8680a45b0ee86d4', '37', '1490855860', '1491460660');
INSERT INTO `supportworker_token` VALUES ('463', '4f5e37c7c6c5ee803ece043ab3a7f338', '37', '1490855861', '1491460661');
INSERT INTO `supportworker_token` VALUES ('464', '723e1a20a2c3f4bd7d181d2b4bb32ab2', '37', '1490856439', '1491461239');
INSERT INTO `supportworker_token` VALUES ('465', 'bcd53b5b3a6e5a1146c322a9af94a4b5', '37', '1490856849', '1491461649');
INSERT INTO `supportworker_token` VALUES ('466', '6c7a721faca9e265e237b9d3bb395e46', '37', '1490857293', '1491462093');
INSERT INTO `supportworker_token` VALUES ('467', '9b3a785fa232fd35e43903465c5ba6f9', '37', '1490859437', '1491464237');
INSERT INTO `supportworker_token` VALUES ('468', '8dfdfdadecdc5159df1868b9be6fe96a', '37', '1490859532', '1491464332');
INSERT INTO `supportworker_token` VALUES ('469', '9f3468ee6647cb82f62caedf46f04f05', '37', '1490862325', '1491467125');
INSERT INTO `supportworker_token` VALUES ('470', '935285e5db55df9b1610f4c2b5249da9', '37', '1490862363', '1491467163');
INSERT INTO `supportworker_token` VALUES ('471', 'b68db73fceca77d6d1327aab5441cb61', '37', '1490862663', '1491467463');
INSERT INTO `supportworker_token` VALUES ('472', '61c6285794f8956a12ff275d0ab2c8fb', '37', '1490866105', '1491470905');
INSERT INTO `supportworker_token` VALUES ('473', '862929d4029e19b4c431dd8bd4c03312', '37', '1490866240', '1491471040');
INSERT INTO `supportworker_token` VALUES ('474', '032bc4de58b8365e6f5230d96e1ea004', '37', '1490866474', '1491471274');
INSERT INTO `supportworker_token` VALUES ('475', '266c315ec25247918f6b5aab1b3c975c', '37', '1490867256', '1491472056');
INSERT INTO `supportworker_token` VALUES ('476', '5c903899495a5cb714e7a2b6a44df2fc', '37', '1490867436', '1491472236');
INSERT INTO `supportworker_token` VALUES ('477', 'bfecdbd0c44fecf4709d427eceabfd4d', '37', '1490867673', '1491472473');
INSERT INTO `supportworker_token` VALUES ('478', '022ec1eb6c73fe5e95a8005a0122e621', '37', '1490867876', '1491472676');
INSERT INTO `supportworker_token` VALUES ('479', '2cebfce72becde0e80efb97b889a30d5', '37', '1490868178', '1491472978');
INSERT INTO `supportworker_token` VALUES ('480', 'a105877adbd47dc71363839d86ceedb8', '37', '1490868415', '1491473215');
INSERT INTO `supportworker_token` VALUES ('481', '3175427ccea3a845b9c652debd7435d2', '37', '1490925114', '1491529914');
INSERT INTO `supportworker_token` VALUES ('482', 'd7acf677eb4783c8433c3a57bcf85783', '37', '1490928928', '1491533728');
INSERT INTO `supportworker_token` VALUES ('483', '7dc67af7f0894e79ea96064c7b78efe4', '37', '1490929778', '1491534578');
INSERT INTO `supportworker_token` VALUES ('484', 'f531338a5630f4428271807c5cfd4cdb', '37', '1490930080', '1491534880');
INSERT INTO `supportworker_token` VALUES ('485', 'b8211a9789a93b044db3083a8dfb13d3', '37', '1490930115', '1491534915');
INSERT INTO `supportworker_token` VALUES ('486', 'aa56b806bc8360ffbe59e7cb80ecb7e3', '37', '1490930213', '1491535013');
INSERT INTO `supportworker_token` VALUES ('487', '002e8dd9091c67d284d4bfb050cd1f3d', '37', '1490930599', '1491535399');
INSERT INTO `supportworker_token` VALUES ('488', '2f59981e19a9aeffed9b7463c9948531', '37', '1490930884', '1491535684');
INSERT INTO `supportworker_token` VALUES ('489', '8c927e6bafcb73ac6ab58604b3918ac4', '37', '1490931257', '1491536057');
INSERT INTO `supportworker_token` VALUES ('490', '4f58c656e1f74f12d52bfd1bd5f5d3ee', '37', '1490931596', '1491536396');
INSERT INTO `supportworker_token` VALUES ('491', '1bdaf0034cacc1b4c0579ea9ded05720', '37', '1490931864', '1491536664');
INSERT INTO `supportworker_token` VALUES ('492', '1c3bd2f2bedd9ddace4c5aa48f1b2e26', '37', '1490932210', '1491537010');
INSERT INTO `supportworker_token` VALUES ('493', 'a5820246c9eeb07aaa2245248e544995', '37', '1490932494', '1491537294');
INSERT INTO `supportworker_token` VALUES ('494', '50c5fd36624f9944182b79cba5e75a98', '37', '1490932683', '1491537483');
INSERT INTO `supportworker_token` VALUES ('495', '56b4261e2e8a735458e5413a07996796', '37', '1490932696', '1491537496');
INSERT INTO `supportworker_token` VALUES ('496', '3fe43784c18d223d0745c4f93239d1a5', '37', '1490933022', '1491537822');
INSERT INTO `supportworker_token` VALUES ('497', '8ea2341892c7a39a3858f9959c088a3a', '37', '1490938599', '1491543399');
INSERT INTO `supportworker_token` VALUES ('498', 'ce5449ce180f265e054dc935036a789d', '37', '1490943640', '1491548440');
INSERT INTO `supportworker_token` VALUES ('499', '16217661c43f82b3243125e4255eb32f', '37', '1490943781', '1491548581');
INSERT INTO `supportworker_token` VALUES ('500', '0cb1a93a41d3d3503f46cba33c687871', '37', '1491447942', '1492052742');
INSERT INTO `supportworker_token` VALUES ('501', '6d1733b5fbb64f37418c637bff3fc43f', '37', '1491532008', '1492136808');
INSERT INTO `supportworker_token` VALUES ('502', '95451cc561fefcb3414e6b8bbaa4c413', '37', '1491532130', '1492136930');
INSERT INTO `supportworker_token` VALUES ('503', '8487959376ac4c7639600287296d6f93', '37', '1491532318', '1492137118');
INSERT INTO `supportworker_token` VALUES ('504', 'b4b5f825495e8b09db8961617a4dbafb', '37', '1491533243', '1492138043');
INSERT INTO `supportworker_token` VALUES ('505', '34cf5b3a5655bbf8e3ba459fe9f02fde', '37', '1491534076', '1492138876');
INSERT INTO `supportworker_token` VALUES ('506', '3b6d7a6c5316812c77e6af232bd1377a', '37', '1491535534', '1492140334');
INSERT INTO `supportworker_token` VALUES ('507', 'd442ba2a68d7d788992dfebf30f9973c', '37', '1491535598', '1492140398');
INSERT INTO `supportworker_token` VALUES ('508', 'f97c316da2cfbe1e8e10a52a06c4fa9b', '37', '1491536108', '1492140908');
INSERT INTO `supportworker_token` VALUES ('509', '7c839d1e4c10783f89a3dcebc0076b2c', '37', '1491536159', '1492140959');
INSERT INTO `supportworker_token` VALUES ('510', 'efb23aaa0748c07578d0030393d5a4d3', '37', '1491536211', '1492141011');
INSERT INTO `supportworker_token` VALUES ('511', 'fc253ab732f0724601c2625c12b1c582', '37', '1491536767', '1492141567');
INSERT INTO `supportworker_token` VALUES ('512', '3e8a79e3b6a4326a8d02079a935ae2d1', '37', '1491536870', '1492141670');
INSERT INTO `supportworker_token` VALUES ('513', '1ac48da80e659d838aa9c8dac52c2e0e', '37', '1491537130', '1492141930');
INSERT INTO `supportworker_token` VALUES ('514', 'e19feab87896b2059e08ee14bfd11fe4', '37', '1491537227', '1492142027');
INSERT INTO `supportworker_token` VALUES ('515', 'e19feab87896b2059e08ee14bfd11fe4', '37', '1491537227', '1492142027');
INSERT INTO `supportworker_token` VALUES ('516', '43096d6425c7b9715a13d947f44404a3', '37', '1491537262', '1492142062');
INSERT INTO `supportworker_token` VALUES ('517', '97d142b0d118917e0aed582bd7940e39', '37', '1491537899', '1492142699');
INSERT INTO `supportworker_token` VALUES ('518', '3e9fdc56e6ae399f0fe07c7c01dedeae', '37', '1491538199', '1492142999');
INSERT INTO `supportworker_token` VALUES ('519', 'dad179492b8d50865934cb474e720514', '37', '1491545503', '1492150303');
INSERT INTO `supportworker_token` VALUES ('520', '2874b3a77eada753ac877295e94ef731', '37', '1491545537', '1492150337');
INSERT INTO `supportworker_token` VALUES ('521', '899e41fae9fdaa710037bd29f4ee5d13', '37', '1491547360', '1492152160');
INSERT INTO `supportworker_token` VALUES ('522', 'f91fd4a29917542c7a7cccf815148583', '37', '1491547923', '1492152723');
INSERT INTO `supportworker_token` VALUES ('523', '3a805133234742cb9a96d4606643ba0b', '37', '1491548196', '1492152996');
INSERT INTO `supportworker_token` VALUES ('524', '2ab7f6de8711ff978c9110824498115f', '37', '1491548342', '1492153142');
INSERT INTO `supportworker_token` VALUES ('525', '1a73abaaa100bf1ba38db5817bdcf409', '37', '1491548809', '1492153609');
INSERT INTO `supportworker_token` VALUES ('526', 'b9ae718f9cdf8f95f600cff498e0b7a7', '37', '1491548889', '1492153689');
INSERT INTO `supportworker_token` VALUES ('527', '18bfbea56f8ab7d9c40ddc9a9c86c606', '37', '1491549090', '1492153890');
INSERT INTO `supportworker_token` VALUES ('528', '06425171a04cfdff274ed56046f6cbd1', '37', '1491549478', '1492154278');
INSERT INTO `supportworker_token` VALUES ('529', 'c84e0e27d27804c31a48d0d31cbfb8f6', '37', '1491549575', '1492154375');
INSERT INTO `supportworker_token` VALUES ('530', '24d2b3b401eebc5edbea2abd514d3449', '37', '1491549720', '1492154520');
INSERT INTO `supportworker_token` VALUES ('531', '4600212f6e2aef84ac9f6eb097906607', '37', '1491550638', '1492155438');
INSERT INTO `supportworker_token` VALUES ('532', '13a2b0e115a0f6941deffa363bfa56a1', '37', '1491550808', '1492155608');
INSERT INTO `supportworker_token` VALUES ('533', '3589093a1f63354d652ef868308b8199', '37', '1491551708', '1492156508');
INSERT INTO `supportworker_token` VALUES ('534', '81f752028c65ce4c6cac429bd813526c', '37', '1491551738', '1492156538');
INSERT INTO `supportworker_token` VALUES ('535', '7f2bf61cd6fa6517de652062940bb083', '37', '1491551910', '1492156710');
INSERT INTO `supportworker_token` VALUES ('536', '02edc64218b076d87648e24920aa6fe3', '37', '1491551981', '1492156781');
INSERT INTO `supportworker_token` VALUES ('537', '8140ba2f43f4c5211b59486ec848b7e0', '37', '1491552431', '1492157231');
INSERT INTO `supportworker_token` VALUES ('538', 'f80a2153cca05f0bc1164f5d9d463253', '37', '1491552442', '1492157242');
INSERT INTO `supportworker_token` VALUES ('539', 'e0a9734e8e8bb54358397099de48aea4', '37', '1491552736', '1492157536');
INSERT INTO `supportworker_token` VALUES ('540', '6d4f26ecdfe268f8db11a5b834e0db42', '37', '1491553569', '1492158369');
INSERT INTO `supportworker_token` VALUES ('541', '27d69174a78a5b9339aaab5ddbed582c', '37', '1491553621', '1492158421');
INSERT INTO `supportworker_token` VALUES ('542', 'b2e9932474ecba4706e53328441d2fb2', '37', '1491553697', '1492158497');
INSERT INTO `supportworker_token` VALUES ('543', '0f3c03102f0eaf44551824049b680cc1', '37', '1491553747', '1492158547');
INSERT INTO `supportworker_token` VALUES ('544', '2c4b4178976aa4949ddf920ab98b23a0', '37', '1491557034', '1492161834');
INSERT INTO `supportworker_token` VALUES ('545', '299b714a847c8ed1b55170ad0ab3fb4a', '37', '1491557713', '1492162513');
INSERT INTO `supportworker_token` VALUES ('546', '068d6329ac66bdb21cccb2a284ee4a88', '37', '1491558162', '1492162962');
INSERT INTO `supportworker_token` VALUES ('547', '9c46b78035c8a127e1a97f1f96f1e59e', '37', '1491558249', '1492163049');
INSERT INTO `supportworker_token` VALUES ('548', '7c7d5f69ef266d47f2047992706a3922', '37', '1491558350', '1492163150');
INSERT INTO `supportworker_token` VALUES ('549', '2aac716a1c23c85127c8ef9372b1dec5', '37', '1491559362', '1492164162');
INSERT INTO `supportworker_token` VALUES ('550', '22eda460e004fde622a2b3a8c406537b', '37', '1491559387', '1492164187');
INSERT INTO `supportworker_token` VALUES ('551', 'aca7a54a1cff4a37d3e2bde12fbb126b', '33', '1492056139', '1492660939');
INSERT INTO `supportworker_token` VALUES ('552', '138133de063c0789296aac847ca0eab8', '33', '1492065943', '1492670743');
INSERT INTO `supportworker_token` VALUES ('553', '6c5004d0749d49bf68011af8295f8dee', '33', '1492066613', '1492671413');
INSERT INTO `supportworker_token` VALUES ('554', 'e7f3bf75c2d5946043a7b6c4cef62f87', '33', '1492067597', '1492672397');
INSERT INTO `supportworker_token` VALUES ('555', '730e66c4d0c0a8264fab8b2c9444e42f', '33', '1492069888', '1492674688');
INSERT INTO `supportworker_token` VALUES ('556', '0d33856ee6d1eb3c7d90572d8932be9e', '33', '1492070264', '1492675064');
INSERT INTO `supportworker_token` VALUES ('557', '0d33856ee6d1eb3c7d90572d8932be9e', '33', '1492070264', '1492675064');
INSERT INTO `supportworker_token` VALUES ('558', 'd8e6899c8b340b528d7854d2ed3093cd', '33', '1492070553', '1492675353');
INSERT INTO `supportworker_token` VALUES ('559', '8af6b3c02ed5af400b324de76159bfd6', '33', '1492071193', '1492675993');
INSERT INTO `supportworker_token` VALUES ('560', 'd8e4ff11c52811104e0ac99d80f630e2', '33', '1492071697', '1492676497');
INSERT INTO `supportworker_token` VALUES ('561', 'd0bdbb7009da95b80beec89761b513af', '33', '1492072105', '1492676905');
INSERT INTO `supportworker_token` VALUES ('562', 'c9a45e33392b81e1b25a2229c8125e76', '33', '1492072788', '1492677588');
INSERT INTO `supportworker_token` VALUES ('563', '9900888add100565aceae19e6b446a3f', '33', '1492072978', '1492677778');
INSERT INTO `supportworker_token` VALUES ('564', '53c2bb9bafa245c7360cfedd004a1322', '37', '1492075235', '1492680035');
INSERT INTO `supportworker_token` VALUES ('565', '956de0e1874a84e9c73ede36305f031a', '37', '1492075256', '1492680056');
INSERT INTO `supportworker_token` VALUES ('566', 'ce07b2588489e2a153d9a603ac149c03', '37', '1492075276', '1492680076');
INSERT INTO `supportworker_token` VALUES ('567', '68378bbe69f99fb9f7f73a4d45ba4583', '37', '1492075377', '1492680177');
INSERT INTO `supportworker_token` VALUES ('568', '150f8c54bf1137cb4fe73d368123b946', '37', '1492075768', '1492680568');
INSERT INTO `supportworker_token` VALUES ('569', 'd9c6db15b8e9fa0df6364b84eae7f4a9', '37', '1492077006', '1492681806');
INSERT INTO `supportworker_token` VALUES ('570', '4a6c01320042b433be6bc647c7e8fc98', '37', '1492077793', '1492682593');
INSERT INTO `supportworker_token` VALUES ('571', 'f78e9517a998f7febe7a65799e3fdec3', '37', '1492077808', '1492682608');
INSERT INTO `supportworker_token` VALUES ('572', 'b8fda0a5375f73172b866f84a3b82843', '33', '1492136232', '1492741032');
INSERT INTO `supportworker_token` VALUES ('573', '7086eee9947e9d9cf612b31df2a24075', '33', '1492141675', '1492746475');
INSERT INTO `supportworker_token` VALUES ('574', '35b12bceca8902f62d1c936d10b30e6e', '33', '1492142858', '1492747658');
INSERT INTO `supportworker_token` VALUES ('575', '9f1bebc3b808b0d24f21140899ec8386', '33', '1492142921', '1492747721');
INSERT INTO `supportworker_token` VALUES ('576', 'ef2d809245bb121ef596f2f7a304bd60', '37', '1492150980', '1492755780');
INSERT INTO `supportworker_token` VALUES ('577', 'a5575e5359e0d8acaf822ebf5e13757d', '37', '1492151002', '1492755802');
INSERT INTO `supportworker_token` VALUES ('578', '7e6996e1160f1002f94ec58e4113776e', '33', '1492151015', '1492755815');
INSERT INTO `supportworker_token` VALUES ('579', '7b9c2a7de95ae39475ee6df844706bdb', '33', '1492151216', '1492756016');
INSERT INTO `supportworker_token` VALUES ('580', 'ba94cf4e2d6d49c40e890dc0e26099a7', '33', '1492151575', '1492756375');
INSERT INTO `supportworker_token` VALUES ('581', '4f4b111112d6f2f91e1b49a196f21171', '33', '1492151727', '1492756527');
INSERT INTO `supportworker_token` VALUES ('582', '8ab93db1433c5a1041285d188e4532a8', '33', '1492152053', '1492756853');
INSERT INTO `supportworker_token` VALUES ('583', 'c0e8562d7cca1743ed0799797c4cb04b', '33', '1492152811', '1492757611');
INSERT INTO `supportworker_token` VALUES ('584', '3f93b45eb5f4e2928c97d59be05a95fb', '33', '1492152961', '1492757761');
INSERT INTO `supportworker_token` VALUES ('585', '3f097b13476bf6341f78f2f8e12e4613', '33', '1492153154', '1492757954');
INSERT INTO `supportworker_token` VALUES ('586', '6df3f73ab84a3e2b4170e3f6692860d9', '33', '1492153702', '1492758502');
INSERT INTO `supportworker_token` VALUES ('587', 'b690123e7fd6021c082bd850a33443ea', '37', '1492155668', '1492760468');
INSERT INTO `supportworker_token` VALUES ('588', 'e789f1b0c8524aafac5fa9f9164068ae', '37', '1492156022', '1492760822');
INSERT INTO `supportworker_token` VALUES ('589', '25a081aadfe8432408e25e3c15be5f29', '37', '1492156087', '1492760887');
INSERT INTO `supportworker_token` VALUES ('590', '7caadfc5cae634ed3c5ca617b6fea96e', '37', '1492156181', '1492760981');
INSERT INTO `supportworker_token` VALUES ('591', 'db48df43827727163cc84902939a0cf8', '37', '1492156253', '1492761053');
INSERT INTO `supportworker_token` VALUES ('592', 'd9eba83f5caa19df9f95ef28571dd56f', '37', '1492156410', '1492761210');
INSERT INTO `supportworker_token` VALUES ('593', 'df3bab69170f3a9a8a9379e1eea102c8', '37', '1492156499', '1492761299');
INSERT INTO `supportworker_token` VALUES ('594', '74e8e068c6965d0f2fa56fb93676e322', '37', '1492157025', '1492761825');
INSERT INTO `supportworker_token` VALUES ('595', 'd0417a127f3ac77613bc35b64df41aed', '37', '1492157194', '1492761994');
INSERT INTO `supportworker_token` VALUES ('596', 'fbc2310f8fc3bfaa6747e7d37529b55c', '37', '1492157351', '1492762151');
INSERT INTO `supportworker_token` VALUES ('597', 'd54fe800681568bbc2810e5b39e0599e', '37', '1492158234', '1492763034');
INSERT INTO `supportworker_token` VALUES ('598', 'bc67754db907a49a52e8c36380963ccc', '37', '1492158247', '1492763047');
INSERT INTO `supportworker_token` VALUES ('599', 'e855e7ec16f95fc1179986a1fe28fdf9', '37', '1492159582', '1492764382');
INSERT INTO `supportworker_token` VALUES ('600', '65bc2a59b4ce2b2c1554514ffbcfa4d9', '33', '1492159693', '1492764493');
INSERT INTO `supportworker_token` VALUES ('601', 'e827ea5e068a9b55efbdc1b26d67146b', '37', '1492159759', '1492764559');
INSERT INTO `supportworker_token` VALUES ('602', '0e351e27aa286260dd6869f6ba8312f2', '37', '1492159842', '1492764642');
INSERT INTO `supportworker_token` VALUES ('603', '43ec1627576f8a9c7497508cde33029b', '37', '1492160124', '1492764924');
INSERT INTO `supportworker_token` VALUES ('604', '439a084e691d448d91eb1f97628dca8c', '37', '1492160340', '1492765140');
INSERT INTO `supportworker_token` VALUES ('605', '4f30b71b8b09670c39c19df36899a324', '37', '1492160444', '1492765244');
INSERT INTO `supportworker_token` VALUES ('606', '4f8680c148718d105edc204c3c0812ab', '37', '1492160727', '1492765527');
INSERT INTO `supportworker_token` VALUES ('607', 'f4628dc3c5693761595fe37cc5ef60fa', '37', '1492160916', '1492765716');
INSERT INTO `supportworker_token` VALUES ('608', 'a80349b08fac58829bf12d9c93dc947b', '37', '1492161001', '1492765801');
INSERT INTO `supportworker_token` VALUES ('609', '957e134e1d79ddc3f4fd91ea2c056b70', '37', '1492161104', '1492765904');
INSERT INTO `supportworker_token` VALUES ('610', 'c36cc33d77d131e25fac3c4c9be06617', '37', '1492161290', '1492766090');
INSERT INTO `supportworker_token` VALUES ('611', 'c077459f60eb7aaa1eaec920946a62d8', '37', '1492161460', '1492766260');
INSERT INTO `supportworker_token` VALUES ('612', '8e10ca1b661f903393403936aff72848', '37', '1492161912', '1492766712');
INSERT INTO `supportworker_token` VALUES ('613', '028d4b27c168c8196d23924c8b632e47', '33', '1492162220', '1492767020');
INSERT INTO `supportworker_token` VALUES ('614', '3c8da9f7536424567d9a14fcd462428d', '33', '1492162314', '1492767114');
INSERT INTO `supportworker_token` VALUES ('615', 'ef8cf04d9c79b46e4987571b01076f3c', '38', '1492398886', '1493003686');
INSERT INTO `supportworker_token` VALUES ('629', '84cce0a589d0b1001519ca4ebd416a6f', '33', '1492486029', '1493090829');
INSERT INTO `supportworker_token` VALUES ('630', '5e073fffcd7c7dfdc5c235eb2ae7f0ec', '33', '1492486284', '1493091084');
INSERT INTO `supportworker_token` VALUES ('631', '961c754f48d42738f7d06c861a2a6f4b', '33', '1492487263', '1493092063');
INSERT INTO `supportworker_token` VALUES ('632', 'c0611a7507a620721b4d61e7cb2c9a37', '33', '1492487426', '1493092226');
INSERT INTO `supportworker_token` VALUES ('633', '516b899595a43d3b469940772fb9b16f', '37', '1492496048', '1493100848');
INSERT INTO `supportworker_token` VALUES ('634', '63c284809331fc74fe96cb54456202fa', '37', '1492496351', '1493101151');
INSERT INTO `supportworker_token` VALUES ('635', 'a1c81350c882a75e1e84ae817cb90429', '37', '1492496353', '1493101153');
INSERT INTO `supportworker_token` VALUES ('636', 'b479edd6783f5f1eefc2db9e102e3088', '37', '1492496354', '1493101154');
INSERT INTO `supportworker_token` VALUES ('637', '5bc1efd793c7fe443350e705d7f4a3a3', '37', '1492496381', '1493101181');
INSERT INTO `supportworker_token` VALUES ('638', '0a1b2e5d6db42870ade913c690f77334', '37', '1492496383', '1493101183');
INSERT INTO `supportworker_token` VALUES ('639', '03cfe79605de6025beec24176fe0dae9', '37', '1492496385', '1493101185');
INSERT INTO `supportworker_token` VALUES ('640', 'd30419baa99caa66a011cfdfa19e016d', '37', '1492496386', '1493101186');
INSERT INTO `supportworker_token` VALUES ('641', '3f78d74e08894686767d347b0f650b25', '37', '1492498410', '1493103210');
INSERT INTO `supportworker_token` VALUES ('642', '63292eb7acc8d650b502a2676372240f', '39', '1492503045', '1493107845');
INSERT INTO `supportworker_token` VALUES ('643', 'bbeefcdb75044355829718b3f179f8fa', '39', '1492503051', '1493107851');
INSERT INTO `supportworker_token` VALUES ('644', '036dbd8fbcd0dde4e80f245473a8da2f', '39', '1492503066', '1493107866');
INSERT INTO `supportworker_token` VALUES ('645', '3718d24546fda6d907593517989153e9', '39', '1492503317', '1493108117');
INSERT INTO `supportworker_token` VALUES ('646', 'a2f71365c8c48c05428a93f3de8c0213', '39', '1492503320', '1493108120');
INSERT INTO `supportworker_token` VALUES ('647', 'f6858edb6bcdaf8d1d5c0909d740fce2', '39', '1492503451', '1493108251');
INSERT INTO `supportworker_token` VALUES ('648', '6c55a0348d830a579c1a88fff9319a9e', '33', '1492503978', '1493108778');
INSERT INTO `supportworker_token` VALUES ('649', 'f3ea96c4707b1799ab6b3b1427fdb4f6', '39', '1492504010', '1493108810');
INSERT INTO `supportworker_token` VALUES ('650', '00b91ae149bcd5f1d641b14153fc3bc8', '33', '1492504024', '1493108824');
INSERT INTO `supportworker_token` VALUES ('651', 'ba84c3c93090de1b73a7d6b0a5da8584', '39', '1492504161', '1493108961');
INSERT INTO `supportworker_token` VALUES ('652', 'dd561fa507e191abcc60ab49a9cd1c07', '39', '1492504163', '1493108963');
INSERT INTO `supportworker_token` VALUES ('653', 'f1246050fa7413562b26a7041582daf6', '39', '1492504164', '1493108964');
INSERT INTO `supportworker_token` VALUES ('654', '4a8368290232225071d5d46108f1a960', '39', '1492504177', '1493108977');
INSERT INTO `supportworker_token` VALUES ('655', '9c0355958662df33b56e205d509e9678', '39', '1492504181', '1493108981');
INSERT INTO `supportworker_token` VALUES ('656', 'ffea6ad7372806c4f5cfbe911cb8e4e5', '39', '1492504191', '1493108991');
INSERT INTO `supportworker_token` VALUES ('657', '4876a953d0a69b7c8ea435c59b13a763', '37', '1492504263', '1493109063');
INSERT INTO `supportworker_token` VALUES ('658', '97bf3c5d778bfcf90af04bd5d6fc2d3d', '38', '1492508980', '1493113780');
INSERT INTO `supportworker_token` VALUES ('659', '935be252167aee25213feb03f22c6fb7', '38', '1492511055', '1493115855');
INSERT INTO `supportworker_token` VALUES ('660', '959aadf400835fc0870d11623c311eba', '38', '1492512546', '1493117346');
INSERT INTO `supportworker_token` VALUES ('661', '55ff4758648a71bcec8b78ce6dc650ed', '38', '1492512551', '1493117351');
INSERT INTO `supportworker_token` VALUES ('662', 'ad988de866cb8e26c32064f9f25ee030', '38', '1492512724', '1493117524');
INSERT INTO `supportworker_token` VALUES ('663', '26504db268551aa7d9e4cc9b936fb0cb', '38', '1492512779', '1493117579');
INSERT INTO `supportworker_token` VALUES ('664', '919ca1e0a0e84f6e484ba22f7a422dae', '39', '1492512994', '1493117794');
INSERT INTO `supportworker_token` VALUES ('665', 'e36ff8b8143fce1f77d8b36b1f7000b0', '38', '1492514366', '1493119166');
INSERT INTO `supportworker_token` VALUES ('666', '8e146362b10d392f1468c82b13b34eec', '38', '1492514496', '1493119296');
INSERT INTO `supportworker_token` VALUES ('667', 'a0538b717dadc03f2e23160d34f67182', '38', '1492517049', '1493121849');
INSERT INTO `supportworker_token` VALUES ('668', 'e79d093460fd0e7b38da34fee711a91b', '38', '1492517846', '1493122646');
INSERT INTO `supportworker_token` VALUES ('669', '4e319070f946067f19fc3ebc52c46710', '38', '1492567185', '1493171985');
INSERT INTO `supportworker_token` VALUES ('670', '13e7e00497f79a07d303181809513a9a', '38', '1492568239', '1493173039');
INSERT INTO `supportworker_token` VALUES ('671', '8800321c0ee20d170a59cf1fc2a8dc0f', '38', '1492568408', '1493173208');
INSERT INTO `supportworker_token` VALUES ('672', '7c06988802fac13a0ae80a4acd5f3bc1', '38', '1492568454', '1493173254');
INSERT INTO `supportworker_token` VALUES ('673', '7c48dcc09afeca3c7d67a7a211c1d9fc', '38', '1492568551', '1493173351');
INSERT INTO `supportworker_token` VALUES ('674', 'c16959de02a3fc0c670e577fad6b8922', '33', '1492568557', '1493173357');
INSERT INTO `supportworker_token` VALUES ('675', '741d58022d415f6d7d0310c306cb11a4', '38', '1492569288', '1493174088');
INSERT INTO `supportworker_token` VALUES ('676', 'c32f689dc5b08b0ce6c2ed0206fa56e0', '38', '1492569768', '1493174568');
INSERT INTO `supportworker_token` VALUES ('677', '4dfd8aca157e6742505d5ee654b759aa', '38', '1492570040', '1493174840');
INSERT INTO `supportworker_token` VALUES ('678', '5c2a15f946ca294717f3155c7ca9acec', '38', '1492571652', '1493176452');
INSERT INTO `supportworker_token` VALUES ('679', '36b61fafb0f6ae1c2815a2f13f0dbea2', '38', '1492571751', '1493176551');
INSERT INTO `supportworker_token` VALUES ('680', '30b587aeb2112cb39e5cbdcef8ee4693', '38', '1492572016', '1493176816');
INSERT INTO `supportworker_token` VALUES ('681', 'ca5758d46c9584b20e973301b7afbc5d', '38', '1492572272', '1493177072');
INSERT INTO `supportworker_token` VALUES ('682', '105257fefb7ba5decb23234c4cbe9c10', '38', '1492572355', '1493177155');
INSERT INTO `supportworker_token` VALUES ('683', '7027c12b68132f0c3d21e954b42e4fa8', '38', '1492572460', '1493177260');
INSERT INTO `supportworker_token` VALUES ('684', 'bc83c9914dfe461e513ae5e3f39d3d0d', '38', '1492572731', '1493177531');
INSERT INTO `supportworker_token` VALUES ('685', '66d7e73998f1425f64f269716dbd1f0f', '38', '1492573888', '1493178688');
INSERT INTO `supportworker_token` VALUES ('686', '465606a7a07d1b0afcdfaf43c6f077e4', '38', '1492574118', '1493178918');
INSERT INTO `supportworker_token` VALUES ('687', '75409028a1cf02b7ace3d3621fc0af78', '38', '1492574956', '1493179756');
INSERT INTO `supportworker_token` VALUES ('688', '7167859538c4f2856ae70e06a8db6aab', '38', '1492580960', '1493185760');
INSERT INTO `supportworker_token` VALUES ('689', 'f358da159ab6f61a7f0f71fc7267e6e7', '38', '1492581411', '1493186211');
INSERT INTO `supportworker_token` VALUES ('690', 'f41faab6b87c64931f226765afbf4ec8', '38', '1492581513', '1493186313');
INSERT INTO `supportworker_token` VALUES ('691', 'ff9517997a4c393fbdd5fd244af2d705', '38', '1492582221', '1493187021');
INSERT INTO `supportworker_token` VALUES ('692', '47bf427fb2092e6e95af970025d96d0d', '38', '1492585227', '1493190027');
INSERT INTO `supportworker_token` VALUES ('693', 'cec9957c31336cd6e3c05a895f5d63fb', '38', '1492585298', '1493190098');
INSERT INTO `supportworker_token` VALUES ('694', 'cec9957c31336cd6e3c05a895f5d63fb', '38', '1492585298', '1493190098');
INSERT INTO `supportworker_token` VALUES ('695', '5fb4456ba76248415e61c653b29e3e22', '38', '1492586680', '1493191480');
INSERT INTO `supportworker_token` VALUES ('696', '045d582b9ecd8dc3b892c2510c1b1ad9', '38', '1492586784', '1493191584');
INSERT INTO `supportworker_token` VALUES ('697', 'f40436484659669ef9faf1dd88fd4169', '38', '1492586886', '1493191686');
INSERT INTO `supportworker_token` VALUES ('698', '7a71f5fbbaef26085009049667dc7802', '38', '1492586932', '1493191732');
INSERT INTO `supportworker_token` VALUES ('699', '3b220a9c1ec80f6abc0e839ce474d91a', '38', '1492587030', '1493191830');
INSERT INTO `supportworker_token` VALUES ('700', '48faf6bfc71256ed723290f20800d78b', '38', '1492587274', '1493192074');
INSERT INTO `supportworker_token` VALUES ('701', '349c0fa400625ff4b598065e732bcbda', '38', '1492589248', '1493194048');
INSERT INTO `supportworker_token` VALUES ('702', '4c06571ee9954c31be40478020f5129d', '38', '1492589877', '1493194677');
INSERT INTO `supportworker_token` VALUES ('703', '4a277a3b22e319a15637a966ea4d3bad', '38', '1492590000', '1493194800');
INSERT INTO `supportworker_token` VALUES ('704', 'ba23e94e0640dee1fec6aab9ac03c9e6', '33', '1492592195', '1493196995');
INSERT INTO `supportworker_token` VALUES ('705', 'a438f41c9ed1d735d21aff7d7f57ce05', '33', '1492592245', '1493197045');
INSERT INTO `supportworker_token` VALUES ('706', 'b80a253d0e31366e0b2258b2b7aed6d6', '37', '1492593384', '1493198184');
INSERT INTO `supportworker_token` VALUES ('707', '5d8fd30a0e721d5dbf6b8e26262ddd92', '38', '1492594092', '1493198892');
INSERT INTO `supportworker_token` VALUES ('708', '0e0b03eb3506e183c19fc66ed340a4e5', '38', '1492594549', '1493199349');
INSERT INTO `supportworker_token` VALUES ('709', '4db459282f70ca0c1c6819fb9171a64b', '38', '1492594730', '1493199530');
INSERT INTO `supportworker_token` VALUES ('710', '7460997aebbe196c0a409cbc2ead72aa', '38', '1492595071', '1493199871');
INSERT INTO `supportworker_token` VALUES ('711', 'd590b123f18884e85fcee46dd92513ab', '38', '1492595401', '1493200201');
INSERT INTO `supportworker_token` VALUES ('712', 'bb5931849841d8c99b6140006a44714a', '38', '1492595637', '1493200437');
INSERT INTO `supportworker_token` VALUES ('713', '26752932e327f242da6af83101d6a20e', '38', '1492596002', '1493200802');
INSERT INTO `supportworker_token` VALUES ('714', '0d727034450523aa2010cc8f1b6b938a', '38', '1492597076', '1493201876');
INSERT INTO `supportworker_token` VALUES ('715', '8121a88d1d3af53e521e533ea91b8203', '39', '1492597660', '1493202460');
INSERT INTO `supportworker_token` VALUES ('716', 'a39167aca9001385d6a5a33719fc471a', '39', '1492597826', '1493202626');
INSERT INTO `supportworker_token` VALUES ('717', 'fdcc22110141a6f4c341a31fa69e5417', '37', '1492598920', '1493203720');
INSERT INTO `supportworker_token` VALUES ('718', '856667d71db13d458326be2313b1f44b', '38', '1492598940', '1493203740');
INSERT INTO `supportworker_token` VALUES ('719', '153854616a5958cb0c73d93ed8b728bb', '39', '1492653336', '1493258136');
INSERT INTO `supportworker_token` VALUES ('720', '30f0c5c58a10406f2d13f153179f6c31', '33', '1492653801', '1493258601');
INSERT INTO `supportworker_token` VALUES ('721', '21dd8cc8901941ad07f8436f384a895d', '39', '1492654765', '1493259565');
INSERT INTO `supportworker_token` VALUES ('722', 'cc2558bea12b1a854fa17f912424cac6', '39', '1492656143', '1493260943');
INSERT INTO `supportworker_token` VALUES ('723', 'cc2558bea12b1a854fa17f912424cac6', '39', '1492656143', '1493260943');
INSERT INTO `supportworker_token` VALUES ('724', '67344cc9ffe36039a49ac9723d859a5a', '39', '1492656631', '1493261431');
INSERT INTO `supportworker_token` VALUES ('725', '2e9fa4ab753f52721475a099b12545ce', '39', '1492657192', '1493261992');
INSERT INTO `supportworker_token` VALUES ('726', 'a2edcf43f92fbcbf2bda236a27a898ad', '39', '1492657218', '1493262018');
INSERT INTO `supportworker_token` VALUES ('727', 'f891cfeeb9890077b4e65e625b4489a9', '39', '1492657431', '1493262231');
INSERT INTO `supportworker_token` VALUES ('728', '24f4e5ec867b3bef50b90fd45e8d6579', '39', '1492657717', '1493262517');
INSERT INTO `supportworker_token` VALUES ('729', '507bf9e009077c80f7b8207b797d26e6', '39', '1492658537', '1493263337');
INSERT INTO `supportworker_token` VALUES ('730', 'c5961d621e5fd0c4cdebc9e25ce1da5d', '39', '1492658659', '1493263459');
INSERT INTO `supportworker_token` VALUES ('731', 'd3c8dac6122031c51adea97bbe41dd23', '39', '1492660073', '1493264873');
INSERT INTO `supportworker_token` VALUES ('732', '1b3d91969494fa3f4d91496bc2870e81', '39', '1492660503', '1493265303');
INSERT INTO `supportworker_token` VALUES ('733', '039dbe3d06e0585a81d888afc93b97c7', '39', '1492660634', '1493265434');
INSERT INTO `supportworker_token` VALUES ('734', 'f95454535ed2e5d008dae57f4b942bc9', '39', '1492675900', '1493280700');
INSERT INTO `supportworker_token` VALUES ('735', 'c8b385b0234616e6ff43c09a4ea20a17', '39', '1492675949', '1493280749');
INSERT INTO `supportworker_token` VALUES ('736', '434f96343469aeefc9d8d4e238433fe6', '39', '1492676323', '1493281123');
INSERT INTO `supportworker_token` VALUES ('737', 'd7803d95cae85185ea5668734862bda0', '39', '1492676682', '1493281482');
INSERT INTO `supportworker_token` VALUES ('738', '45e72d55a0f5177dfdcad464e46944de', '39', '1492677135', '1493281935');
INSERT INTO `supportworker_token` VALUES ('739', '8ff8c7fe61660519abc2348725c16e31', '39', '1492677435', '1493282235');
INSERT INTO `supportworker_token` VALUES ('740', '365f565236b96502968171c900f2d130', '39', '1492677577', '1493282377');
INSERT INTO `supportworker_token` VALUES ('741', '4f9f0b2ea8590ec7964286399314d7d4', '39', '1492680238', '1493285038');
INSERT INTO `supportworker_token` VALUES ('742', 'ec4a1773e2ac89b98b39f96bf4265ba6', '39', '1492680709', '1493285509');
INSERT INTO `supportworker_token` VALUES ('743', '54d6223aea3ff6967c159bc71a20d8ca', '39', '1492680816', '1493285616');
INSERT INTO `supportworker_token` VALUES ('744', '8162790936ceecf4d76def9b6e13e3a2', '39', '1492681005', '1493285805');
INSERT INTO `supportworker_token` VALUES ('745', 'b3cd16265df3120874423d0aea237d77', '39', '1492681045', '1493285845');
INSERT INTO `supportworker_token` VALUES ('746', '7bb709003ce42c2939c3ed5c95f1b8bd', '38', '1492681668', '1493286468');
INSERT INTO `supportworker_token` VALUES ('747', '78ccb13a8fe6a66e7c051c48040261d5', '38', '1492681784', '1493286584');
INSERT INTO `supportworker_token` VALUES ('748', 'be0a403fc6957524ec4f127bf58c9e7f', '38', '1492681925', '1493286725');
INSERT INTO `supportworker_token` VALUES ('749', 'f7410732df3377fc3779231d0b41fb1f', '38', '1492681976', '1493286776');
INSERT INTO `supportworker_token` VALUES ('750', '96b0baf666f305dd9a9530d187c84c42', '38', '1492682097', '1493286897');
INSERT INTO `supportworker_token` VALUES ('751', 'e56512c4e92d9465ec63983162eaf051', '38', '1492682445', '1493287245');
INSERT INTO `supportworker_token` VALUES ('752', 'a15cdf8702d58997ec0cbda9ee9cde71', '37', '1492682895', '1493287695');
INSERT INTO `supportworker_token` VALUES ('753', 'a15cdf8702d58997ec0cbda9ee9cde71', '37', '1492682895', '1493287695');
INSERT INTO `supportworker_token` VALUES ('754', '06116851f7a2bd37ab08511644b25a17', '38', '1492683116', '1493287916');
INSERT INTO `supportworker_token` VALUES ('755', '958c35f31c822f51c619d98c36afe035', '38', '1492683125', '1493287925');
INSERT INTO `supportworker_token` VALUES ('756', '3ad2455a14098c274b786f0845e336f9', '38', '1492683486', '1493288286');
INSERT INTO `supportworker_token` VALUES ('757', '82922425e017cd961b0b52569063711b', '38', '1492683612', '1493288412');
INSERT INTO `supportworker_token` VALUES ('758', '234fccdd50d57647243b20873773d5e2', '38', '1492683756', '1493288556');
INSERT INTO `supportworker_token` VALUES ('759', '46bdcc83636b4d63caf7b0364d185777', '33', '1492686404', '1493291204');
INSERT INTO `supportworker_token` VALUES ('760', '3aff440172489f9a32f5cdcbf59cf182', '39', '1492686423', '1493291223');
INSERT INTO `supportworker_token` VALUES ('761', '5a95d36769634308a5754ccea4a8e01b', '38', '1492686446', '1493291246');
INSERT INTO `supportworker_token` VALUES ('762', 'c6860124a33e32a4b6dbc6ad1ce2c1d7', '37', '1492686465', '1493291265');
INSERT INTO `supportworker_token` VALUES ('763', '2242456848e2287765b0e98f28482cf1', '33', '1492740829', '1493345629');
INSERT INTO `supportworker_token` VALUES ('764', 'b9cfa9dd4db3b5b243aed4f21cb2d692', '33', '1492742071', '1493346871');
INSERT INTO `supportworker_token` VALUES ('765', '37a6ff3688ee9a0ef0db7ce4d7fb02c7', '33', '1492742652', '1493347452');
INSERT INTO `supportworker_token` VALUES ('766', '4bdc6e28d4373b651cb8a7e4ef64b354', '33', '1492742785', '1493347585');
INSERT INTO `supportworker_token` VALUES ('767', 'b2c37c7b718e97b41cd4fb3d484f5136', '33', '1492743326', '1493348126');
INSERT INTO `supportworker_token` VALUES ('768', '0f61bc0c8c0baa8429f65593cf178940', '33', '1492743509', '1493348309');
INSERT INTO `supportworker_token` VALUES ('769', 'fa4ccd70c4d5a4c0eabb158285caf741', '33', '1492743611', '1493348411');
INSERT INTO `supportworker_token` VALUES ('770', '807aca1746f65db8d0190c9203ba320a', '33', '1492743758', '1493348558');
INSERT INTO `supportworker_token` VALUES ('771', '9956681d2308d484989e3264868ba7f3', '33', '1492760565', '1493365365');
INSERT INTO `supportworker_token` VALUES ('772', '54b9c601de0abe9f8bf530f7a4aab1c3', '33', '1492760879', '1493365679');
INSERT INTO `supportworker_token` VALUES ('773', '756a5ff3b2d32d066a74c5756f6a2daf', '37', '1493086855', '1493691655');
INSERT INTO `supportworker_token` VALUES ('774', 'e38abeb60c8bafa6a203090f4b58c00e', '37', '1493086919', '1493691719');
INSERT INTO `supportworker_token` VALUES ('775', 'c93a548a62c56cc17e5d1ce03788680c', '37', '1493086981', '1493691781');
INSERT INTO `supportworker_token` VALUES ('776', 'c290af58852cb93e001dd4734889c906', '37', '1493087087', '1493691887');
INSERT INTO `supportworker_token` VALUES ('777', '23094ad3580a1c892b9e8104f37aaf18', '37', '1493087218', '1493692018');
INSERT INTO `supportworker_token` VALUES ('778', 'fbb20c8a5bf2b6cce0fd20c91c86e6e6', '37', '1493087408', '1493692208');
INSERT INTO `supportworker_token` VALUES ('779', '304cec0150498ec5dd0850c5e32ca8b0', '37', '1493087685', '1493692485');
INSERT INTO `supportworker_token` VALUES ('780', '304cec0150498ec5dd0850c5e32ca8b0', '37', '1493087685', '1493692485');
INSERT INTO `supportworker_token` VALUES ('781', '3a97b8f51aedd30b67a3621ae2e1edfd', '37', '1493087808', '1493692608');
INSERT INTO `supportworker_token` VALUES ('782', 'fecb5527e09a16a53cf155e79ab162ad', '37', '1493088182', '1493692982');
INSERT INTO `supportworker_token` VALUES ('783', 'd40018a57e82fb11709d39b33a4e2b0e', '37', '1493088505', '1493693305');
INSERT INTO `supportworker_token` VALUES ('784', '89e5d84be3c35e14f498481657df3e76', '37', '1493088671', '1493693471');
INSERT INTO `supportworker_token` VALUES ('785', 'f2b6a45f1b116282ac04987cf460aa32', '37', '1493088919', '1493693719');
INSERT INTO `supportworker_token` VALUES ('786', '54ca67705c0125bef6fa9dccad0cef06', '39', '1493089106', '1493693906');
INSERT INTO `supportworker_token` VALUES ('787', '180120ec24ad5c74b2ccf57c70c569f5', '37', '1493090106', '1493694906');
INSERT INTO `supportworker_token` VALUES ('788', 'bb4691205b3cc23de48f804c4973f639', '37', '1493090886', '1493695686');
INSERT INTO `supportworker_token` VALUES ('789', 'd153a414f327f6dcda314d741c024e82', '37', '1493091951', '1493696751');
INSERT INTO `supportworker_token` VALUES ('790', '5079d33f5db46cf0558c5497cac875c6', '37', '1493092056', '1493696856');
INSERT INTO `supportworker_token` VALUES ('791', '5367232749b85a21f2ffe57c96d0f7c7', '37', '1493092213', '1493697013');
INSERT INTO `supportworker_token` VALUES ('792', '7c32c679115322b874e831c345001399', '39', '1493092589', '1493697389');
INSERT INTO `supportworker_token` VALUES ('793', 'f2e20b26c68e0e00c94176d918b6f827', '37', '1493092661', '1493697461');
INSERT INTO `supportworker_token` VALUES ('794', 'fa9c2c17f58e5e64079ab4bfb0e62826', '37', '1493092766', '1493697566');
INSERT INTO `supportworker_token` VALUES ('795', 'd332ce04c487420b853a5522e49f8092', '37', '1493092948', '1493697748');
INSERT INTO `supportworker_token` VALUES ('796', '0eb188bd3d5ed91b7985d02b22e82b37', '37', '1493093183', '1493697983');
INSERT INTO `supportworker_token` VALUES ('797', '0a7fcd30be05f2b65bb6c01f30a42a17', '37', '1493093250', '1493698050');
INSERT INTO `supportworker_token` VALUES ('798', 'cb1bab1f541a5f808736b8afe93421e3', '37', '1493093390', '1493698190');
INSERT INTO `supportworker_token` VALUES ('799', '15c6815c20bac938cac1815f7df8224b', '38', '1493100716', '1493705516');
INSERT INTO `supportworker_token` VALUES ('800', '91f17ccefa68ca89884f862e22522a6f', '38', '1493102591', '1493707391');
INSERT INTO `supportworker_token` VALUES ('801', '2481287b819c6255ba22eee5cc500e03', '38', '1493104138', '1493708938');
INSERT INTO `supportworker_token` VALUES ('802', 'bd0b8170eb7f34e6959667f9bcfcaafe', '37', '1493106189', '1493710989');
INSERT INTO `supportworker_token` VALUES ('803', '4302f7bebfbf6a0ef563510af1894ace', '39', '1493106255', '1493711055');
INSERT INTO `supportworker_token` VALUES ('804', 'ef5d0c2992819b1554f31f88fd07de68', '37', '1493106605', '1493711405');
INSERT INTO `supportworker_token` VALUES ('805', '229b4416498249fe77c831000c11fe8c', '39', '1493106879', '1493711679');
INSERT INTO `supportworker_token` VALUES ('806', '2e1649472ea382f05c14e57c48427877', '39', '1493107488', '1493712288');
INSERT INTO `supportworker_token` VALUES ('807', 'fdf5a00a356889208e50a8c0d8c180de', '37', '1493107666', '1493712466');
INSERT INTO `supportworker_token` VALUES ('808', 'ae24214886d54d1f5815be8a45ac0693', '37', '1493108171', '1493712971');
INSERT INTO `supportworker_token` VALUES ('809', '19cafde10cada3fb564a1b086cd0b872', '37', '1493108185', '1493712985');
INSERT INTO `supportworker_token` VALUES ('810', '09de21c26754253f7f5baa750615df0a', '39', '1493108881', '1493713681');
INSERT INTO `supportworker_token` VALUES ('811', '25881a80a3af03c30c451cb8a399c02a', '37', '1493108934', '1493713734');
INSERT INTO `supportworker_token` VALUES ('812', 'a389c37c9100286da916581dfa72673c', '37', '1493108951', '1493713751');
INSERT INTO `supportworker_token` VALUES ('813', '7d6fb0ccaf24e6c8fca6d3546707c88d', '39', '1493109007', '1493713807');
INSERT INTO `supportworker_token` VALUES ('814', '5f151ee4c6076d20639b31398aecf6fd', '37', '1493109060', '1493713860');
INSERT INTO `supportworker_token` VALUES ('815', 'f8f3f4ea3093121fa65fe9374410c9b3', '37', '1493110590', '1493715390');
INSERT INTO `supportworker_token` VALUES ('816', '99f3e17a9cd045d078a40b7be68db19d', '37', '1493110709', '1493715509');
INSERT INTO `supportworker_token` VALUES ('817', 'ee8803679b8e088132cf811907792568', '37', '1493110889', '1493715689');
INSERT INTO `supportworker_token` VALUES ('818', '7b2d8d24da9afe540fa66ac82b45ee1c', '38', '1493114086', '1493718886');
INSERT INTO `supportworker_token` VALUES ('819', '5c765a89659c93d4c53f4e31f174c625', '38', '1493114260', '1493719060');
INSERT INTO `supportworker_token` VALUES ('820', '32e2bf0f88369b8fdc497775cc6e4701', '38', '1493116608', '1493721408');
INSERT INTO `supportworker_token` VALUES ('821', '5326901c5bb3a3ed1294aa86bdf460d8', '38', '1493173801', '1493778601');
INSERT INTO `supportworker_token` VALUES ('822', '076735e333f22c4cf4bacf83b29bd10e', '38', '1493173914', '1493778714');
INSERT INTO `supportworker_token` VALUES ('823', '6614d5f26b304be623c72d6f23cdf67c', '38', '1493174828', '1493779628');
INSERT INTO `supportworker_token` VALUES ('824', '35b35e084ed035c64c0aea6901f7cdf0', '38', '1493175632', '1493780432');
INSERT INTO `supportworker_token` VALUES ('825', '05a79ff8fcc87781468195a1e8b55842', '38', '1493175939', '1493780739');
INSERT INTO `supportworker_token` VALUES ('826', '0b5879293c9f50a40add21c736e414c4', '38', '1493179396', '1493784196');
INSERT INTO `supportworker_token` VALUES ('827', '0124d171d019d38c0a823231d19a0d29', '38', '1493179612', '1493784412');
INSERT INTO `supportworker_token` VALUES ('828', '2f0c2b53d22eccf513cbc10618d737d3', '38', '1493179896', '1493784696');
INSERT INTO `supportworker_token` VALUES ('829', '1aa1dfb020a0b98e6e4fee91756b4d5a', '38', '1493189504', '1493794304');
INSERT INTO `supportworker_token` VALUES ('830', 'f2d08e092e6b0d13f017cd29952972bd', '38', '1493190050', '1493794850');
INSERT INTO `supportworker_token` VALUES ('831', '285a468ad45cbe1a77cf9e6360d122d1', '38', '1493190243', '1493795043');
INSERT INTO `supportworker_token` VALUES ('832', '40178b9556d5874e98b567993ee74a45', '38', '1493190439', '1493795239');
INSERT INTO `supportworker_token` VALUES ('833', '377dacacbed97f3fc9ba223bff0da44d', '38', '1493193076', '1493797876');
INSERT INTO `supportworker_token` VALUES ('834', '5977e8e7364cb5073e54c81e30377192', '38', '1493194487', '1493799287');
INSERT INTO `supportworker_token` VALUES ('835', '4cb2418845f60185ee139a950e8ac12f', '39', '1493194553', '1493799353');
INSERT INTO `supportworker_token` VALUES ('836', '9d7153d4f1ba8d52deb8e90a581b838a', '37', '1493194763', '1493799563');
INSERT INTO `supportworker_token` VALUES ('837', 'a4955af9fd4ee899fc4cab6164015852', '37', '1493195331', '1493800131');
INSERT INTO `supportworker_token` VALUES ('838', '7b949e2a447d085db5aa8e6b9fdfcdc6', '37', '1493196108', '1493800908');
INSERT INTO `supportworker_token` VALUES ('839', '69e3a01ef4bb7e808e9b7918a26a80a3', '37', '1493196125', '1493800925');
INSERT INTO `supportworker_token` VALUES ('840', 'ff82aa22e6c2c78b03f66e475568be9a', '37', '1493196773', '1493801573');
INSERT INTO `supportworker_token` VALUES ('841', '6dcbadcebcab62b16f1e5e7fb37df07a', '37', '1493197270', '1493802070');
INSERT INTO `supportworker_token` VALUES ('842', '359cf932b253983e8741486a774db7bb', '37', '1493197732', '1493802532');
INSERT INTO `supportworker_token` VALUES ('843', 'acd5e7f89458720ec06ad43f79af2b07', '37', '1493198074', '1493802874');
INSERT INTO `supportworker_token` VALUES ('844', '2fe57ce7002a43ee556e5c5154139ebd', '37', '1493198743', '1493803543');
INSERT INTO `supportworker_token` VALUES ('845', 'a0c239e43f0efa537d7b5c5dce78db26', '37', '1493198802', '1493803602');
INSERT INTO `supportworker_token` VALUES ('846', 'be2b47a0ae8dcc31ecee858b6e8a3b73', '37', '1493199177', '1493803977');
INSERT INTO `supportworker_token` VALUES ('847', '2fdce21f674c6cbd72e80aa160b0b27d', '37', '1493199802', '1493804602');
INSERT INTO `supportworker_token` VALUES ('848', '4b58cc2b21acf9c47fe4d95cc8f894a2', '37', '1493200278', '1493805078');
INSERT INTO `supportworker_token` VALUES ('849', 'a3096cf43a011d7a4ae9c8e421c51429', '39', '1493200464', '1493805264');
INSERT INTO `supportworker_token` VALUES ('850', '52393c5256ebf8738ee78ee4d159f9ea', '39', '1493200596', '1493805396');
INSERT INTO `supportworker_token` VALUES ('851', '1f52481b9f88c40c29f344e89bfe3226', '39', '1493200879', '1493805679');
INSERT INTO `supportworker_token` VALUES ('852', '29be8b2660a7adb03a762139f214af10', '39', '1493201042', '1493805842');
INSERT INTO `supportworker_token` VALUES ('853', '47afbef1a05be7e72dd5d6898159f838', '39', '1493201138', '1493805938');
INSERT INTO `supportworker_token` VALUES ('854', '57a8c12a1d2fc631c6e4cd9944721d7a', '39', '1493201427', '1493806227');
INSERT INTO `supportworker_token` VALUES ('855', '0fd483529b2fc26ce4cb22dd9a81c564', '39', '1493201572', '1493806372');
INSERT INTO `supportworker_token` VALUES ('856', 'c9ebec376466d29d944b7d78ea8788a6', '39', '1493202180', '1493806980');
INSERT INTO `supportworker_token` VALUES ('857', '5882fed9389ce3a0b0593a11093a1c43', '39', '1493202419', '1493807219');
INSERT INTO `supportworker_token` VALUES ('858', '3c3f712bd44e3d19d534a43579bb1ba6', '39', '1493202581', '1493807381');
INSERT INTO `supportworker_token` VALUES ('859', 'f6abeb5c29c15b64cf45c6f552dc91df', '39', '1493202687', '1493807487');
INSERT INTO `supportworker_token` VALUES ('860', 'c0c2ba4d764e99e71f451102a6483dd6', '37', '1493202797', '1493807597');
INSERT INTO `supportworker_token` VALUES ('861', '937f8642ca30e30ea3a2f74a1f25ff4b', '37', '1493203235', '1493808035');
INSERT INTO `supportworker_token` VALUES ('862', 'a2b4c3316bb945ffb970507790a5af27', '37', '1493260509', '1493865309');
INSERT INTO `supportworker_token` VALUES ('863', 'e58d4422e2746b054fd0888c68530c43', '37', '1493260781', '1493865581');
INSERT INTO `supportworker_token` VALUES ('864', 'd2542cab9249c262e9211fcc377f5835', '37', '1493260929', '1493865729');
INSERT INTO `supportworker_token` VALUES ('865', '92bb54f2032b0b1a8a2a12388dc9f04b', '37', '1493261292', '1493866092');
INSERT INTO `supportworker_token` VALUES ('866', 'a41f8668c079f6ef4fd63acad426174c', '37', '1493262483', '1493867283');
INSERT INTO `supportworker_token` VALUES ('867', 'a65392df53d559e66f2ac2705ad4fe62', '37', '1493262959', '1493867759');
INSERT INTO `supportworker_token` VALUES ('868', '9292280c4c6117a3e74d93aa33a36806', '37', '1493263374', '1493868174');
INSERT INTO `supportworker_token` VALUES ('869', 'ca9c989c0a71ee22611f2e3c3eaa7cd0', '37', '1493263417', '1493868217');
INSERT INTO `supportworker_token` VALUES ('870', 'e58db102914b61e80a00659c123a5d3b', '37', '1493263835', '1493868635');
INSERT INTO `supportworker_token` VALUES ('871', '30a1d833e34e03754f6fe5b3fe044c71', '37', '1493264525', '1493869325');
INSERT INTO `supportworker_token` VALUES ('872', '23b7edbe9e0428ce3a491207ac41b4c4', '39', '1493264600', '1493869400');
INSERT INTO `supportworker_token` VALUES ('873', 'b9bd3d28962b2a36515cc45d6800d37c', '38', '1493264753', '1493869553');
INSERT INTO `supportworker_token` VALUES ('874', '4f38919ec033860d876b81e63e81a39e', '38', '1493264801', '1493869601');
INSERT INTO `supportworker_token` VALUES ('875', 'b694d5986e4752158dd3d3a17951c3d0', '37', '1493265448', '1493870248');
INSERT INTO `supportworker_token` VALUES ('876', '2a1ff9939126058dd0ec2f2f9907fc82', '37', '1493265783', '1493870583');
INSERT INTO `supportworker_token` VALUES ('877', 'efca12cd4d46469fadb674fb44c1a618', '38', '1493265812', '1493870612');
INSERT INTO `supportworker_token` VALUES ('878', '11134ada8319e83f839c0c4eb1469c9c', '38', '1493265852', '1493870652');
INSERT INTO `supportworker_token` VALUES ('879', '62ca4c48e924a19e130fa62720caeef8', '38', '1493265945', '1493870745');
INSERT INTO `supportworker_token` VALUES ('880', 'dcece33bfd65b4f51240286c4d63202a', '38', '1493266084', '1493870884');
INSERT INTO `supportworker_token` VALUES ('881', 'b186fae7e32729b136a4203774ba9071', '38', '1493266217', '1493871017');
INSERT INTO `supportworker_token` VALUES ('882', 'bd035f4e57bf1db94b40d349188e8d66', '38', '1493266287', '1493871087');
INSERT INTO `supportworker_token` VALUES ('883', 'f941e8c36856b6116bdae87ed22da1ea', '38', '1493266528', '1493871328');
INSERT INTO `supportworker_token` VALUES ('884', '23d9cf1614cf5f7167db326a9cfcc443', '37', '1493266567', '1493871367');
INSERT INTO `supportworker_token` VALUES ('885', '23d9cf1614cf5f7167db326a9cfcc443', '37', '1493266567', '1493871367');
INSERT INTO `supportworker_token` VALUES ('886', '533c84933b5ce0d05aa5722f2a08c08f', '33', '1493266766', '1493871566');
INSERT INTO `supportworker_token` VALUES ('887', '98270febfde1faf104f2cbaf08dfdca7', '38', '1493266960', '1493871760');
INSERT INTO `supportworker_token` VALUES ('888', 'cd4638089ab747e51879323e3451f4db', '39', '1493266994', '1493871794');
INSERT INTO `supportworker_token` VALUES ('889', '414d11839798166eef6374147a33aa2d', '37', '1493267097', '1493871897');
INSERT INTO `supportworker_token` VALUES ('890', '59e138d2dbb51eae75ee6a101f648e54', '37', '1493277123', '1493881923');
INSERT INTO `supportworker_token` VALUES ('891', '1dcbe28dd07c2ada70dc62fb9f32e9ef', '38', '1493277339', '1493882139');
INSERT INTO `supportworker_token` VALUES ('892', '8155ee901d25b5ac06e0e52e27f3d1a1', '39', '1493277363', '1493882163');
INSERT INTO `supportworker_token` VALUES ('893', 'f6f95e1caa6b2a55cf9ac51fe7de6f85', '33', '1493279017', '1493883817');
INSERT INTO `supportworker_token` VALUES ('894', 'd99966319aa8d6e722038cb87c9009f8', '33', '1493280063', '1493884863');
INSERT INTO `supportworker_token` VALUES ('895', '53e4d0681cad40354f0bd2562aac2d54', '33', '1493280975', '1493885775');
INSERT INTO `supportworker_token` VALUES ('896', 'a2c646f028ec8ab7ed7a5f00ca0c3332', '33', '1493282097', '1493886897');
INSERT INTO `supportworker_token` VALUES ('897', 'fc86e390962cd792300f643a882406aa', '33', '1493282215', '1493887015');
INSERT INTO `supportworker_token` VALUES ('898', 'fed62b318eb9c637b2e22528d30bd3d9', '33', '1493282318', '1493887118');
INSERT INTO `supportworker_token` VALUES ('899', '54f446ca27c735587bbba9a13f392c78', '33', '1493284176', '1493888976');
INSERT INTO `supportworker_token` VALUES ('900', 'edaa7daa5fb7be55bf3104136229b950', '33', '1493284352', '1493889152');
INSERT INTO `supportworker_token` VALUES ('901', 'f735023cba8aeccaa7b48a20fcd9732d', '33', '1493284633', '1493889433');
INSERT INTO `supportworker_token` VALUES ('902', 'b62159e8852eeda54ee180949ca40be9', '33', '1493284803', '1493889603');
INSERT INTO `supportworker_token` VALUES ('903', '17cce2a86ce3467c28e437b052004ac3', '37', '1493286455', '1493891255');
INSERT INTO `supportworker_token` VALUES ('904', '2ba71babe19c3dcd3bffef19b42e03e6', '37', '1493286866', '1493891666');
INSERT INTO `supportworker_token` VALUES ('905', '682876b69296b932989ddf8c7cf649d1', '37', '1493288385', '1493893185');
INSERT INTO `supportworker_token` VALUES ('906', '7640265fa46b971b2f4146a0ece49538', '37', '1493288634', '1493893434');
INSERT INTO `supportworker_token` VALUES ('907', '9a6d31e50d4bafbdd4fc4118f09706c7', '37', '1493288689', '1493893489');
INSERT INTO `supportworker_token` VALUES ('908', '49cb872af8f88548e3908c21de7a9f73', '37', '1493288753', '1493893553');
INSERT INTO `supportworker_token` VALUES ('909', '1f8d8e03af09853f5e28b38338be11f9', '37', '1493288967', '1493893767');
INSERT INTO `supportworker_token` VALUES ('910', 'cd879a7efad18d4de29830e07ecac7b3', '37', '1493289024', '1493893824');
INSERT INTO `supportworker_token` VALUES ('911', '1761a6b770118d92a30625d52b0b8a40', '37', '1493344804', '1493949604');
INSERT INTO `supportworker_token` VALUES ('912', '1761a6b770118d92a30625d52b0b8a40', '37', '1493344804', '1493949604');
INSERT INTO `supportworker_token` VALUES ('913', '542eb0df5dce97b68ca4680a490b9aac', '37', '1493368095', '1493972895');
INSERT INTO `supportworker_token` VALUES ('914', '542eb0df5dce97b68ca4680a490b9aac', '37', '1493368095', '1493972895');
INSERT INTO `supportworker_token` VALUES ('915', 'b0f9d15553f4e1f1b2da4628a92ee66a', '37', '1493689676', '1494294476');
INSERT INTO `supportworker_token` VALUES ('916', 'dd9d69e9e247ff8cd9a9811e83b94c2a', '37', '1493695308', '1494300108');
INSERT INTO `supportworker_token` VALUES ('917', 'dba5633abb89886f7ac0350f1ce3a15d', '37', '1493695611', '1494300411');
INSERT INTO `supportworker_token` VALUES ('918', '94aed27c07d6a95c6c6457f68db2af4b', '37', '1493697722', '1494302522');
INSERT INTO `supportworker_token` VALUES ('919', 'da5b0464d47fde8fc0908d2697fb595f', '37', '1493705693', '1494310493');
INSERT INTO `supportworker_token` VALUES ('920', 'a4dfe42af9c96c8ad96599704b2e44bb', '37', '1493707774', '1494312574');
INSERT INTO `supportworker_token` VALUES ('921', '62be8aac95a441d300d9b626f4ead84d', '37', '1493707975', '1494312775');
INSERT INTO `supportworker_token` VALUES ('922', 'd9ab3303017b3844b6aba838255964bd', '33', '1493708177', '1494312977');
INSERT INTO `supportworker_token` VALUES ('923', 'd9ab3303017b3844b6aba838255964bd', '33', '1493708177', '1494312977');
INSERT INTO `supportworker_token` VALUES ('924', 'c2679400481c89587235e9242f75b3c9', '33', '1493708360', '1494313160');
INSERT INTO `supportworker_token` VALUES ('925', '0236e4bfe416ee3538e00c023bd1dc75', '33', '1493708361', '1494313161');
INSERT INTO `supportworker_token` VALUES ('926', '56326a7a9169c19204e4baed48f2d4e7', '33', '1493708569', '1494313369');
INSERT INTO `supportworker_token` VALUES ('927', 'f54f481cad678f23fc5a23bfc823023c', '39', '1493708717', '1494313517');
INSERT INTO `supportworker_token` VALUES ('928', 'e852217bf956520258e9b231af7f8794', '38', '1493708729', '1494313529');
INSERT INTO `supportworker_token` VALUES ('929', '616f0dcc81a0eb04725e57d7bb8c3e63', '33', '1493709129', '1494313929');
INSERT INTO `supportworker_token` VALUES ('930', '67594cff5b6711a6f28da36b4c243cd6', '33', '1493709365', '1494314165');
INSERT INTO `supportworker_token` VALUES ('931', 'ab3d2f35d217478fb04a23179eeeed6b', '33', '1493710114', '1494314914');
INSERT INTO `supportworker_token` VALUES ('932', '9cc084e55af3df06b90ccc02c21c0af8', '33', '1493710663', '1494315463');
INSERT INTO `supportworker_token` VALUES ('933', '9cc084e55af3df06b90ccc02c21c0af8', '33', '1493710663', '1494315463');
INSERT INTO `supportworker_token` VALUES ('934', '4dc14fc0dfc5fea42cc54687bb3b8e98', '33', '1493710876', '1494315676');
INSERT INTO `supportworker_token` VALUES ('935', '4dc14fc0dfc5fea42cc54687bb3b8e98', '33', '1493710876', '1494315676');
INSERT INTO `supportworker_token` VALUES ('936', 'da717915683e8f72acb6dcbdb0ac799f', '33', '1493711420', '1494316220');
INSERT INTO `supportworker_token` VALUES ('937', 'f8ba6f47deb920e54c0380137261c317', '33', '1493711503', '1494316303');
INSERT INTO `supportworker_token` VALUES ('938', '119148d87f14103324377b67544bb58c', '33', '1493711531', '1494316331');
INSERT INTO `supportworker_token` VALUES ('939', '2c2dabd34543e3480782d30960b29954', '33', '1493712391', '1494317191');
INSERT INTO `supportworker_token` VALUES ('940', '0f47ae50e72d13a22a27bbbe19b3c4a3', '33', '1493712430', '1494317230');
INSERT INTO `supportworker_token` VALUES ('941', '27a665323f7383c4e579032014c53700', '33', '1493712633', '1494317433');
INSERT INTO `supportworker_token` VALUES ('942', 'c8ddf1890189bb90bd6fb3c976ad3b38', '33', '1493712730', '1494317530');
INSERT INTO `supportworker_token` VALUES ('943', '0e09a2c6bd20b595413f2560aa2c41f8', '33', '1493712822', '1494317622');
INSERT INTO `supportworker_token` VALUES ('944', 'c01e51012262c16ec6ef97d4e18a323b', '33', '1493714069', '1494318869');
INSERT INTO `supportworker_token` VALUES ('945', 'ca1c75afdac310d6bbfc3d5ff8e8cf04', '33', '1493714355', '1494319155');
INSERT INTO `supportworker_token` VALUES ('946', 'df4108aa20e6eb7ea66bf97607267e59', '33', '1493717284', '1494322084');
INSERT INTO `supportworker_token` VALUES ('947', 'df4108aa20e6eb7ea66bf97607267e59', '33', '1493717284', '1494322084');
INSERT INTO `supportworker_token` VALUES ('948', '8ba6393a44dc6d6765fa3e2b0f52cde9', '37', '1493718994', '1494323794');
INSERT INTO `supportworker_token` VALUES ('949', '4c365681f49b46823ed33ec94466e4d4', '33', '1493719254', '1494324054');
INSERT INTO `supportworker_token` VALUES ('950', 'a6a8e0d448ff81a160aa3b0be52474bb', '33', '1493720087', '1494324887');
INSERT INTO `supportworker_token` VALUES ('951', 'c55088d8691cb5c274b11fc0df370072', '38', '1493777558', '1494382358');
INSERT INTO `supportworker_token` VALUES ('952', '513db749102f8d7193ca249c337ed242', '39', '1493779501', '1494384301');
INSERT INTO `supportworker_token` VALUES ('953', '91daca0f8265ead2a9bb3f617907860c', '37', '1493779556', '1494384356');
INSERT INTO `supportworker_token` VALUES ('954', '8a16f24fe080c28d4ccbbce142210dcd', '33', '1493780046', '1494384846');
INSERT INTO `supportworker_token` VALUES ('955', '5c81fdf36f02865c87d16e9cf2deb483', '33', '1493780344', '1494385144');
INSERT INTO `supportworker_token` VALUES ('956', '53b3ee81e0c3e211dfe9176780c3cdd5', '33', '1493780373', '1494385173');
INSERT INTO `supportworker_token` VALUES ('957', '50991aafdd9a645e26baae9d017560b5', '33', '1493780653', '1494385453');
INSERT INTO `supportworker_token` VALUES ('958', 'c137557f40a4f576c1fc0d9b791f7c60', '39', '1493780681', '1494385481');
INSERT INTO `supportworker_token` VALUES ('959', '07d3b5dad0c4eb53c08c4dab12b17b4d', '38', '1493780737', '1494385537');
INSERT INTO `supportworker_token` VALUES ('960', '6ac28726f68609da269f112974bbba88', '39', '1493780829', '1494385629');
INSERT INTO `supportworker_token` VALUES ('961', '1dc4720ebc94d6dcbe7af95b58828f8f', '42', '1493780868', '1494385668');
INSERT INTO `supportworker_token` VALUES ('962', 'bfa82e65800ef686025dff17800324a4', '42', '1493780900', '1494385700');
INSERT INTO `supportworker_token` VALUES ('963', 'd7adab7f1830957fedb6f017389b5bde', '33', '1493799262', '1494404062');
INSERT INTO `supportworker_token` VALUES ('964', '3a5e47b9312fdde3c599831e6cb477b2', '33', '1493887973', '1494492773');
INSERT INTO `supportworker_token` VALUES ('965', '0b026b055e24b36cd2f78e5473875b90', '33', '1493888553', '1494493353');
INSERT INTO `supportworker_token` VALUES ('966', '1a495cc6c22a60f47c558daf24b1ab22', '39', '1493956213', '1494561013');
INSERT INTO `supportworker_token` VALUES ('967', 'e0f889e6929ca5ade8436e10b7ea6cab', '38', '1493956281', '1494561081');
INSERT INTO `supportworker_token` VALUES ('968', '4d238d0eb9bf890c5ef9e805d151eefe', '38', '1493956425', '1494561225');
INSERT INTO `supportworker_token` VALUES ('969', '020749eccec00dee85df0b100751a468', '38', '1493956527', '1494561327');
INSERT INTO `supportworker_token` VALUES ('970', '020749eccec00dee85df0b100751a468', '38', '1493956527', '1494561327');
INSERT INTO `supportworker_token` VALUES ('971', '020749eccec00dee85df0b100751a468', '38', '1493956527', '1494561327');
INSERT INTO `supportworker_token` VALUES ('972', 'a7f184ece901efa7b1a406c0a52284e8', '38', '1493956752', '1494561552');
INSERT INTO `supportworker_token` VALUES ('973', '29809bb0fd6ff201d7256709944a1357', '38', '1493956962', '1494561762');
INSERT INTO `supportworker_token` VALUES ('974', '4186d789c088e742a9437645dfb3fd41', '39', '1493957142', '1494561942');
INSERT INTO `supportworker_token` VALUES ('975', 'fac3c4465ab0983c3758806e6a1c778a', '33', '1493968716', '1494573516');
INSERT INTO `supportworker_token` VALUES ('976', 'fac3c4465ab0983c3758806e6a1c778a', '33', '1493968716', '1494573516');
INSERT INTO `supportworker_token` VALUES ('977', 'fac3c4465ab0983c3758806e6a1c778a', '33', '1493968716', '1494573516');
INSERT INTO `supportworker_token` VALUES ('978', '774614fc157f405d41bb409f1745b24f', '33', '1493968717', '1494573517');
INSERT INTO `supportworker_token` VALUES ('979', 'f2372e89f6e4c1dadd475d51ada6949e', '33', '1493969264', '1494574064');
INSERT INTO `supportworker_token` VALUES ('980', '2177cbb5b943ad80b5c35b8041c4d26b', '33', '1493969437', '1494574237');
INSERT INTO `supportworker_token` VALUES ('981', '7895390ab057723ac4734839eb7c5459', '33', '1493969876', '1494574676');
INSERT INTO `supportworker_token` VALUES ('982', 'dee4e82a124fa2e772bbfaaa498c453e', '33', '1493970184', '1494574984');
INSERT INTO `supportworker_token` VALUES ('983', '2e1de822eb67b96f83951a19734685f1', '33', '1493970185', '1494574985');
INSERT INTO `supportworker_token` VALUES ('984', '3035657b676485627085ea22b9de4e71', '33', '1493970273', '1494575073');
INSERT INTO `supportworker_token` VALUES ('985', '2fe906271cc59ef412ff3a8edb2f1fd8', '33', '1493970338', '1494575138');
INSERT INTO `supportworker_token` VALUES ('986', '6d159e8d9be66347ae1712df6de594cc', '33', '1493971230', '1494576030');
INSERT INTO `supportworker_token` VALUES ('987', '1a8fe1c8f571ed82e369f9d9195f42d5', '33', '1494049819', '1494654619');
INSERT INTO `supportworker_token` VALUES ('988', '1a8fe1c8f571ed82e369f9d9195f42d5', '33', '1494049819', '1494654619');
INSERT INTO `supportworker_token` VALUES ('989', '1a8fe1c8f571ed82e369f9d9195f42d5', '33', '1494049819', '1494654619');
INSERT INTO `supportworker_token` VALUES ('990', 'a875a521a9067c973ec0e0ab8db08bcb', '33', '1494207777', '1494812577');
INSERT INTO `supportworker_token` VALUES ('991', 'f43f6dedb9b55c1b715e3d851499aa3d', '33', '1494211227', '1494816027');
INSERT INTO `supportworker_token` VALUES ('992', '4d75acd904b4b1d697edf0cfe313a45f', '33', '1494211508', '1494816308');
INSERT INTO `supportworker_token` VALUES ('993', 'a35304e1d74b31fddbe0b4dc99594f1b', '33', '1494211532', '1494816332');
INSERT INTO `supportworker_token` VALUES ('994', 'e04f507482a9e0f00d5fb9be6f5b0b18', '33', '1494213029', '1494817829');
INSERT INTO `supportworker_token` VALUES ('995', '84ed8b4e5ded313dffe3a7f210e13b81', '39', '1494214365', '1494819165');
INSERT INTO `supportworker_token` VALUES ('996', '8ce6fe6f6b33e4dd52df065b1c5c25ed', '38', '1494214556', '1494819356');
INSERT INTO `supportworker_token` VALUES ('997', 'f7acfa698cb89f50090c6c3398f531b6', '44', '1494215008', '1494819808');
INSERT INTO `supportworker_token` VALUES ('998', '203a327bec1c0d6f7dcb0eae13463458', '44', '1494215105', '1494819905');
INSERT INTO `supportworker_token` VALUES ('999', '080f6167c4a4d595561649837e8ba565', '38', '1494216088', '1494820888');
INSERT INTO `supportworker_token` VALUES ('1000', '6ae540946133b8a8c2fb79c5ae8fbe36', '33', '1494216202', '1494821002');
INSERT INTO `supportworker_token` VALUES ('1001', 'fe8cb2233ee6b76b970af6a62dbce127', '44', '1494216291', '1494821091');
INSERT INTO `supportworker_token` VALUES ('1002', '47593be9ac539df6dcd26b76b2c73227', '38', '1494216603', '1494821403');
INSERT INTO `supportworker_token` VALUES ('1003', 'c6a6ff1d79b3bca463d3ca3e3b093efc', '44', '1494216768', '1494821568');
INSERT INTO `supportworker_token` VALUES ('1004', '26d4c07e516b3e32bd29b9aefa2c00df', '44', '1494225100', '1494829900');
INSERT INTO `supportworker_token` VALUES ('1005', '2f10475973e6c9345a46fb18363b5410', '44', '1494225282', '1494830082');
INSERT INTO `supportworker_token` VALUES ('1006', 'd2bb8a207108e496a1fa45074b9955f2', '37', '1494225372', '1494830172');
INSERT INTO `supportworker_token` VALUES ('1007', 'ab0f792bf22a6582baa33c2a37ba5ed8', '37', '1494225418', '1494830218');
INSERT INTO `supportworker_token` VALUES ('1008', '7ae9ccf83838233c74c6ba66881e1159', '44', '1494226084', '1494830884');
INSERT INTO `supportworker_token` VALUES ('1009', 'beae33bd1a2b3873e6e0e310f7d55c05', '44', '1494226467', '1494831267');
INSERT INTO `supportworker_token` VALUES ('1010', '12eb98fa13f0b14fe6479fd942099405', '44', '1494227013', '1494831813');
INSERT INTO `supportworker_token` VALUES ('1011', 'b11e13d2054a59b61b78b7a2b592b213', '39', '1494227336', '1494832136');
INSERT INTO `supportworker_token` VALUES ('1012', 'e228a4227b4c8364a4172443f8491a2c', '37', '1494227361', '1494832161');
INSERT INTO `supportworker_token` VALUES ('1013', '0a145bae17c1434dc9bfbd43a1afed46', '39', '1494227438', '1494832238');
INSERT INTO `supportworker_token` VALUES ('1014', 'cc4eaca8e2239f46038b10d4292aa72c', '37', '1494228788', '1494833588');
INSERT INTO `supportworker_token` VALUES ('1015', 'fd70ba2f065113b0518b98784c0d5823', '33', '1494229551', '1494834351');
INSERT INTO `supportworker_token` VALUES ('1016', 'acc4ec5d6800824c359e9d11264aa095', '33', '1494229558', '1494834358');
INSERT INTO `supportworker_token` VALUES ('1017', '39e022a6a2ff9d9a17068cd82a886071', '44', '1494229567', '1494834367');
INSERT INTO `supportworker_token` VALUES ('1018', '9a0ca315465018da66bb8cd65360844f', '37', '1494229679', '1494834479');
INSERT INTO `supportworker_token` VALUES ('1019', '00b36d9a1d860ec52b31afe96613f53b', '37', '1494229692', '1494834492');
INSERT INTO `supportworker_token` VALUES ('1020', 'd9dd35356c68f197b008d5560d7d0be2', '37', '1494229926', '1494834726');
INSERT INTO `supportworker_token` VALUES ('1021', '6cae852340882b73d8bf55a1051135ef', '37', '1494230793', '1494835593');
INSERT INTO `supportworker_token` VALUES ('1022', 'b52d2e2c954c2a6da188731247bd7da7', '37', '1494231844', '1494836644');
INSERT INTO `supportworker_token` VALUES ('1023', 'f3f61d408ca8f28d4535d8c778d2b646', '37', '1494231928', '1494836728');
INSERT INTO `supportworker_token` VALUES ('1024', '39e277c93dbfc08d84ea6609f12ac890', '37', '1494231980', '1494836780');
INSERT INTO `supportworker_token` VALUES ('1025', '3f0f1a3e142828a5de599e4e2cca2909', '39', '1494232340', '1494837140');
INSERT INTO `supportworker_token` VALUES ('1026', 'ea32e70a3549901e5ec1003eb3b0e5ca', '39', '1494232470', '1494837270');
INSERT INTO `supportworker_token` VALUES ('1027', '82add8de6d68935c873686a967577eba', '37', '1494234593', '1494839393');
INSERT INTO `supportworker_token` VALUES ('1028', 'e8e579eda4ea6c6486038510effa64e7', '37', '1494234759', '1494839559');
INSERT INTO `supportworker_token` VALUES ('1029', '6b41c2e93fc2adc67ba97ba379104241', '37', '1494235064', '1494839864');
INSERT INTO `supportworker_token` VALUES ('1030', '90ea8773dcfa5d13b856a0bfc0934c7b', '37', '1494312557', '1494917357');
INSERT INTO `supportworker_token` VALUES ('1031', 'cf8ba5dfbd5cc072094b80b6d6c26f1f', '37', '1494312858', '1494917658');
INSERT INTO `supportworker_token` VALUES ('1032', '5516248a0e7a4dbacf133b43a3cec11f', '37', '1494313147', '1494917947');
INSERT INTO `supportworker_token` VALUES ('1033', '6d922e814b6a7cb1d0f0c23ede9b75a5', '37', '1494313963', '1494918763');
INSERT INTO `supportworker_token` VALUES ('1034', '405b22187ff40223b9911ed00d3eef99', '37', '1494315505', '1494920305');
INSERT INTO `supportworker_token` VALUES ('1035', '8abf6b86155cee9fbfe6736fa48b32bf', '37', '1494315508', '1494920308');
INSERT INTO `supportworker_token` VALUES ('1036', '49461c297582014e9f5fc4185be4e9aa', '37', '1494317803', '1494922603');
INSERT INTO `supportworker_token` VALUES ('1037', '1cdca78c51aab9b25b06ace486960d9f', '37', '1494318370', '1494923170');
INSERT INTO `supportworker_token` VALUES ('1038', '7939083db2605e21856602b858b33554', '37', '1494318530', '1494923330');
INSERT INTO `supportworker_token` VALUES ('1039', '67719e45246cef0bbfddbee2b1c358d7', '33', '1494384236', '1494989036');
INSERT INTO `supportworker_token` VALUES ('1040', 'eb6eb30420c2a7b9fa36477c7c7e7754', '33', '1494384460', '1494989260');
INSERT INTO `supportworker_token` VALUES ('1041', 'a81fa2d8dc14c3c9040af5d7515dfc54', '33', '1494384796', '1494989596');
INSERT INTO `supportworker_token` VALUES ('1042', 'e48bf80fa3f7b7240a67054686143f18', '33', '1494385206', '1494990006');
INSERT INTO `supportworker_token` VALUES ('1043', '8bfd64fd7af87486f4262a8c3dc78462', '33', '1494385207', '1494990007');
INSERT INTO `supportworker_token` VALUES ('1044', '56208e0a2ea12db65440de6471369854', '39', '1494385635', '1494990435');
INSERT INTO `supportworker_token` VALUES ('1045', 'ddfbb0f9d645e0a933589341fc326239', '37', '1494385705', '1494990505');
INSERT INTO `supportworker_token` VALUES ('1046', '2d825e804fb20581059ff7aedb0ce1d1', '39', '1494385772', '1494990572');
INSERT INTO `supportworker_token` VALUES ('1047', 'd6f5605a2a06ac1a5ae8c6764eb1ddee', '37', '1494386114', '1494990914');
INSERT INTO `supportworker_token` VALUES ('1048', 'ef237ac4459ad650e1ab9aa879d5a0a7', '37', '1494387494', '1494992294');
INSERT INTO `supportworker_token` VALUES ('1049', 'c20eae12ca649a012f32d81d7c191356', '37', '1494389495', '1494994295');
INSERT INTO `supportworker_token` VALUES ('1050', '591e3fab3f449dca0bae8d1d5b89e388', '39', '1494389636', '1494994436');
INSERT INTO `supportworker_token` VALUES ('1051', '4f3110d9313ec8773481474ca8858adc', '37', '1494390067', '1494994867');
INSERT INTO `supportworker_token` VALUES ('1052', '48418fb3109c27798b52a858ed857c4b', '37', '1494398550', '1495003350');
INSERT INTO `supportworker_token` VALUES ('1053', 'bf5f979b761b8109afe2986551bce60e', '37', '1494398681', '1495003481');
INSERT INTO `supportworker_token` VALUES ('1054', '8d3f1e0102a9d9ed56068ab43dc3c6cc', '37', '1494398841', '1495003641');
INSERT INTO `supportworker_token` VALUES ('1055', '4183ff2a386177c88a85db4d5132adf9', '37', '1494399223', '1495004023');
INSERT INTO `supportworker_token` VALUES ('1056', '0c6d1af2920f69ac03b9f1af40b525e9', '37', '1494399258', '1495004058');
INSERT INTO `supportworker_token` VALUES ('1057', 'cb0545b5f2f2b2ced2ee52dd7309914a', '37', '1494399987', '1495004787');
INSERT INTO `supportworker_token` VALUES ('1058', 'eff16b8840121d232130812f757d3dcd', '37', '1494400090', '1495004890');
INSERT INTO `supportworker_token` VALUES ('1059', 'e1bcda299cd67edd82f54f7449773fc2', '37', '1494400440', '1495005240');
INSERT INTO `supportworker_token` VALUES ('1060', '9fe64e30c67110f1785e6d8b7f16acb5', '37', '1494400672', '1495005472');
INSERT INTO `supportworker_token` VALUES ('1061', '1a12cdb3b34958664976020f4f6c22a5', '39', '1494401248', '1495006048');
INSERT INTO `supportworker_token` VALUES ('1062', 'fca97cd39e8c4734e5f4e7f4b7500788', '37', '1494401674', '1495006474');
INSERT INTO `supportworker_token` VALUES ('1063', '31e8d162d314954d9a7f2529be66c3e2', '37', '1494402990', '1495007790');
INSERT INTO `supportworker_token` VALUES ('1064', 'c1be1a587861b392889287388975c490', '37', '1494403196', '1495007996');
INSERT INTO `supportworker_token` VALUES ('1065', '7a1f6c4157b78ce5596c5822a62f5eb3', '37', '1494403496', '1495008296');
INSERT INTO `supportworker_token` VALUES ('1066', 'a931e2ee47db48aa6ed8ae33454c2f88', '37', '1494403874', '1495008674');
INSERT INTO `supportworker_token` VALUES ('1067', '97066f2a923fb1f7235195b92dbae4fd', '37', '1494403995', '1495008795');
INSERT INTO `supportworker_token` VALUES ('1068', 'dbbf18154e70edd677abdac048b94638', '33', '1494404290', '1495009090');
INSERT INTO `supportworker_token` VALUES ('1069', '256c033834db2f69d1f939ed743c9490', '33', '1494404307', '1495009107');
INSERT INTO `supportworker_token` VALUES ('1070', '66a308631befdff8d82862b88de53418', '33', '1494485665', '1495090465');
INSERT INTO `supportworker_token` VALUES ('1071', '66a308631befdff8d82862b88de53418', '33', '1494485665', '1495090465');
INSERT INTO `supportworker_token` VALUES ('1072', 'fab4572c2d7196a9a8a7536a96069496', '33', '1494486356', '1495091156');
INSERT INTO `supportworker_token` VALUES ('1073', 'ad5313408d8e302ff5d1031ac9f7b334', '33', '1494488855', '1495093655');
INSERT INTO `supportworker_token` VALUES ('1074', '3f3f8757c1a331fe3076c4faa128d5bb', '33', '1494489651', '1495094451');
INSERT INTO `supportworker_token` VALUES ('1075', '486459589ca68ff654edd61ea5471af7', '33', '1494489744', '1495094544');
INSERT INTO `supportworker_token` VALUES ('1076', '4d4fd86331dce1d8020109894af3e745', '33', '1494490448', '1495095248');
INSERT INTO `supportworker_token` VALUES ('1077', '1a659a1a548c4550ccfb2ec5cef9a91c', '33', '1494490881', '1495095681');
INSERT INTO `supportworker_token` VALUES ('1078', '69160625b88c9e339970a24dd5507a19', '33', '1494491257', '1495096057');
INSERT INTO `supportworker_token` VALUES ('1079', '2235e09db15f13d4d6562827c67bd36f', '33', '1494491524', '1495096324');
INSERT INTO `supportworker_token` VALUES ('1080', '018e9a2cc696fc9bf37cec3aaaf04cdd', '37', '1494491801', '1495096601');
INSERT INTO `supportworker_token` VALUES ('1081', 'd467d9301049f2950fc42b0b5ed4bef7', '33', '1494492053', '1495096853');
INSERT INTO `supportworker_token` VALUES ('1082', '186cace103dbe0c803e407f27c72e3f8', '33', '1494492426', '1495097226');
INSERT INTO `supportworker_token` VALUES ('1083', '1859030872bd1bdf8dff76d817372afe', '33', '1494492427', '1495097227');
INSERT INTO `supportworker_token` VALUES ('1084', '259c43ed770ab0e05aff1ae39009edee', '33', '1494492564', '1495097364');
INSERT INTO `supportworker_token` VALUES ('1085', '243c87be3c6b535cb9cbc76172e4e4bc', '33', '1494492622', '1495097422');
INSERT INTO `supportworker_token` VALUES ('1086', 'd94db6e0e3ac0e50c258591182fef122', '33', '1494492746', '1495097546');
INSERT INTO `supportworker_token` VALUES ('1087', '459922c8cf152062356d4009b762fe18', '33', '1494492828', '1495097628');
INSERT INTO `supportworker_token` VALUES ('1088', '1691e892a08aca119b836cbb7dff93f5', '33', '1494493211', '1495098011');
INSERT INTO `supportworker_token` VALUES ('1089', 'ceb10402c4b9349b651f6e2598cac8bf', '33', '1494493508', '1495098308');
INSERT INTO `supportworker_token` VALUES ('1090', '771bbed2e4303c6cd23fab6bb2656d8b', '33', '1494493557', '1495098357');
INSERT INTO `supportworker_token` VALUES ('1091', 'baa057fe95d6aaccc6119dbb2047abc3', '33', '1494494274', '1495099074');
INSERT INTO `supportworker_token` VALUES ('1092', '6cdfb6ee4d075a4c4039af783ee57531', '33', '1494494441', '1495099241');
INSERT INTO `supportworker_token` VALUES ('1093', '7e6d9ddbf3075708ecbab24258e722bd', '33', '1494495932', '1495100732');
INSERT INTO `supportworker_token` VALUES ('1094', '4b6bda7b803206e77d272fc8fdb1c189', '33', '1494496202', '1495101002');
INSERT INTO `supportworker_token` VALUES ('1095', '8f25affe81b32e40a74c8bc509f2ae15', '33', '1494496251', '1495101051');
INSERT INTO `supportworker_token` VALUES ('1096', '751005546f9dc19a884ed7b045d08285', '33', '1494496633', '1495101433');
INSERT INTO `supportworker_token` VALUES ('1097', '4654df49956aa3d2739148abfae6ca81', '33', '1494496824', '1495101624');
INSERT INTO `supportworker_token` VALUES ('1098', '6550bac28f51cf40d8df3b6e079153df', '33', '1494497379', '1495102179');
INSERT INTO `supportworker_token` VALUES ('1099', 'db8d6282dfc8a287b6b964f87fafc6d3', '33', '1494497570', '1495102370');
INSERT INTO `supportworker_token` VALUES ('1100', 'd196758a7118dcd991f820dc1a38b15a', '33', '1494554200', '1495159000');
INSERT INTO `supportworker_token` VALUES ('1101', 'c37969faba11f49ca0444414a8ff963f', '33', '1494554289', '1495159089');
INSERT INTO `supportworker_token` VALUES ('1102', '08ed10be7997c023d9e2b0a498182978', '33', '1494555255', '1495160055');
INSERT INTO `supportworker_token` VALUES ('1103', '5478c277944cff2a7cf395ea39887ff8', '33', '1494555256', '1495160056');
INSERT INTO `supportworker_token` VALUES ('1104', 'a55cfb30a72af08ea449d483e569043d', '33', '1494555298', '1495160098');
INSERT INTO `supportworker_token` VALUES ('1105', '6125d83c5de90b212534cbc4a0a06b23', '33', '1494555389', '1495160189');
INSERT INTO `supportworker_token` VALUES ('1106', 'fe913d2fe87bd54221c2e68bbe910947', '33', '1494555833', '1495160633');
INSERT INTO `supportworker_token` VALUES ('1107', '24f55d8894eabcbdaa5465e5a1863e5a', '33', '1494556096', '1495160896');
INSERT INTO `supportworker_token` VALUES ('1108', '24f55d8894eabcbdaa5465e5a1863e5a', '33', '1494556096', '1495160896');
INSERT INTO `supportworker_token` VALUES ('1109', 'b9d38f39bdbd39b11a97e789440ae68e', '33', '1494556300', '1495161100');
INSERT INTO `supportworker_token` VALUES ('1110', '0ea0cf6abe0ae807cad63299bbd822f9', '33', '1494556805', '1495161605');
INSERT INTO `supportworker_token` VALUES ('1111', '77996daacb4adb275286def1bc731199', '33', '1494565061', '1495169861');
INSERT INTO `supportworker_token` VALUES ('1112', '77996daacb4adb275286def1bc731199', '33', '1494565061', '1495169861');
INSERT INTO `supportworker_token` VALUES ('1113', '3e145abfe69e787cc7182eaed5c58834', '44', '1494577457', '1495182257');
INSERT INTO `supportworker_token` VALUES ('1114', 'a8485055b7467c2c30518524fd70f385', '44', '1494577703', '1495182503');
INSERT INTO `supportworker_token` VALUES ('1115', 'bfd4f0d552f54c27c608d03178d2bc7e', '33', '1494577743', '1495182543');
INSERT INTO `supportworker_token` VALUES ('1116', '1aacd601519d2034ccb9a78cb972ba76', '37', '1494577817', '1495182617');
INSERT INTO `supportworker_token` VALUES ('1117', '7f50785e6249b0829f87a92bf4d3c184', '33', '1494814846', '1495419646');
INSERT INTO `supportworker_token` VALUES ('1118', '83b10f9959dc6cd72757dd9c47a8f567', '33', '1494817386', '1495422186');
INSERT INTO `supportworker_token` VALUES ('1119', '21535eccb821e86f313280b67de91e78', '33', '1494901189', '1495505989');
INSERT INTO `supportworker_token` VALUES ('1120', '93af81ac705f14c7c0c620d46604390e', '44', '1494901643', '1495506443');
INSERT INTO `supportworker_token` VALUES ('1121', 'b82a57b7a5215f112f90f64c400fdaa1', '37', '1494901822', '1495506622');
INSERT INTO `supportworker_token` VALUES ('1122', 'b82a57b7a5215f112f90f64c400fdaa1', '37', '1494901822', '1495506622');
INSERT INTO `supportworker_token` VALUES ('1123', '26c52cb7de822f64467d04d625eafde0', '44', '1494906173', '1495510973');
INSERT INTO `supportworker_token` VALUES ('1124', '46d833dbdbf02c38b8c70d9113818654', '33', '1494919509', '1495524309');
INSERT INTO `supportworker_token` VALUES ('1125', '83b4e7ecd1372e60685533bb24a62027', '33', '1494997577', '1495602377');
INSERT INTO `supportworker_token` VALUES ('1126', 'd7b6746cc9a91b39ff525bb4befd70f6', '33', '1495440302', '1496045102');
INSERT INTO `supportworker_token` VALUES ('1127', '754d5ab31df3db62ab289ddfd58a058c', '33', '1495440547', '1496045347');
INSERT INTO `supportworker_token` VALUES ('1128', 'da6e5000405457ea15961a8f603ad860', '33', '1495440548', '1496045348');
INSERT INTO `supportworker_token` VALUES ('1129', 'da6e5000405457ea15961a8f603ad860', '33', '1495440548', '1496045348');
INSERT INTO `supportworker_token` VALUES ('1130', 'da6e5000405457ea15961a8f603ad860', '33', '1495440548', '1496045348');
INSERT INTO `supportworker_token` VALUES ('1131', 'da6e5000405457ea15961a8f603ad860', '33', '1495440548', '1496045348');
INSERT INTO `supportworker_token` VALUES ('1132', 'da6e5000405457ea15961a8f603ad860', '33', '1495440548', '1496045348');
INSERT INTO `supportworker_token` VALUES ('1133', 'da6e5000405457ea15961a8f603ad860', '33', '1495440548', '1496045348');
INSERT INTO `supportworker_token` VALUES ('1134', 'da6e5000405457ea15961a8f603ad860', '33', '1495440548', '1496045348');
INSERT INTO `supportworker_token` VALUES ('1135', '2184a921286fbbe988e96e1f3d8e8446', '33', '1495440708', '1496045508');
INSERT INTO `supportworker_token` VALUES ('1136', '82b7c695b6d12ecc6f62859ca06e1943', '33', '1495440767', '1496045567');
INSERT INTO `supportworker_token` VALUES ('1137', 'e557b694f8713a5961ff1deefe35de9f', '33', '1495441185', '1496045985');
INSERT INTO `supportworker_token` VALUES ('1138', '93376cc8fb588cf9913238497b2d6b83', '33', '1495441318', '1496046118');
INSERT INTO `supportworker_token` VALUES ('1139', 'b7ab22f0995fda47438c6a362e6cf999', '33', '1495441338', '1496046138');
INSERT INTO `supportworker_token` VALUES ('1140', '163a4b07b30b84544d0859613dffae96', '33', '1495441588', '1496046388');
INSERT INTO `supportworker_token` VALUES ('1141', '2cc9ea29b0ec271075c64c316be25c68', '33', '1495441734', '1496046534');
INSERT INTO `supportworker_token` VALUES ('1142', 'fe04a8f9c875cfa82dff997f0ca61098', '37', '1495442465', '1496047265');
INSERT INTO `supportworker_token` VALUES ('1143', 'fe04a8f9c875cfa82dff997f0ca61098', '37', '1495442465', '1496047265');
INSERT INTO `supportworker_token` VALUES ('1144', 'fe04a8f9c875cfa82dff997f0ca61098', '37', '1495442465', '1496047265');
INSERT INTO `supportworker_token` VALUES ('1145', 'fe04a8f9c875cfa82dff997f0ca61098', '37', '1495442465', '1496047265');
INSERT INTO `supportworker_token` VALUES ('1146', 'f95ed3cd964d1ee09ce67252a9f644b5', '37', '1495442466', '1496047266');
INSERT INTO `supportworker_token` VALUES ('1147', 'b6de88b14b99f883c36f59b621bf5e0d', '33', '1495506639', '1496111439');
INSERT INTO `supportworker_token` VALUES ('1148', '3038a307cdfed75972341fa408f3dd0b', '33', '1495506643', '1496111443');
INSERT INTO `supportworker_token` VALUES ('1149', '95f876d3e2d5998a6ef6e7632de7f21e', '33', '1495506660', '1496111460');
INSERT INTO `supportworker_token` VALUES ('1150', '3b4d95425d38863980bad2cdb4e9816e', '33', '1495506663', '1496111463');
INSERT INTO `supportworker_token` VALUES ('1151', '9d911db0ea0999b58300c055bb2204d1', '33', '1495506667', '1496111467');
INSERT INTO `supportworker_token` VALUES ('1152', '25a1b120a0c372698f60bca2a71b306e', '33', '1495509343', '1496114143');
INSERT INTO `supportworker_token` VALUES ('1153', '98ffe8ea0dd7041e3c04b0afb1e309cd', '33', '1495509562', '1496114362');
INSERT INTO `supportworker_token` VALUES ('1154', 'ce9513a52b8b571372f415cf77d9858f', '33', '1495511630', '1496116430');
INSERT INTO `supportworker_token` VALUES ('1155', '2ef0948883d63cf9dc8a5dd29458c91c', '33', '1495516038', '1496120838');
INSERT INTO `supportworker_token` VALUES ('1156', '456ecbccbe96569953bdd36528da30ba', '33', '1495527126', '1496131926');
INSERT INTO `supportworker_token` VALUES ('1157', 'ef03ee41e533008997907abba7df885f', '33', '1495531287', '1496136087');
INSERT INTO `supportworker_token` VALUES ('1158', '722b251abdb66ce38684fcf1d79bcad5', '33', '1495532196', '1496136996');
INSERT INTO `supportworker_token` VALUES ('1159', '832774576e6083488ec38301a0c89840', '33', '1495532346', '1496137146');
INSERT INTO `supportworker_token` VALUES ('1160', 'add19abcf4c01fb65e4ad31e36cadb83', '33', '1495532348', '1496137148');
INSERT INTO `supportworker_token` VALUES ('1161', 'f7aff27d398037f25718d2f5da70f962', '33', '1495532350', '1496137150');
INSERT INTO `supportworker_token` VALUES ('1162', 'b4ef7263720cd1479ba809d4370d30c3', '33', '1495532354', '1496137154');
INSERT INTO `supportworker_token` VALUES ('1163', 'aa2956299e265c2be26e9c44f377e1cd', '34', '1495532417', '1496137217');
INSERT INTO `supportworker_token` VALUES ('1164', '0d5c3f01c17ea721c66c40060f910bd4', '34', '1495535362', '1496140162');
INSERT INTO `supportworker_token` VALUES ('1165', '35dd5fd7fd7a4da98d55737b8c869c82', '34', '1495535473', '1496140273');
INSERT INTO `supportworker_token` VALUES ('1166', '306d0c4c5281c355e05ecd02bc8c66dd', '34', '1495592929', '1496197729');
INSERT INTO `supportworker_token` VALUES ('1167', '8a68a5da066dca235a8f69d90da216e2', '44', '1495762789', '1496367589');
INSERT INTO `supportworker_token` VALUES ('1168', '321040ee1bc824a8bb2dc294655f6055', '37', '1495762816', '1496367616');
INSERT INTO `supportworker_token` VALUES ('1169', '9606d506106fffd77b3262b296231c8f', '34', '1495763561', '1496368361');
INSERT INTO `supportworker_token` VALUES ('1170', 'e6c550a0e15ba929415fcfc87cb178ac', '34', '1495763659', '1496368459');
INSERT INTO `supportworker_token` VALUES ('1171', '4f28db15737d2e261f4877956203cfb3', '37', '1495781180', '1496385980');
INSERT INTO `supportworker_token` VALUES ('1172', 'da711dc1c5ff5b79fa228afac6e96a5d', '36', '1497343276', '1497948076');
INSERT INTO `supportworker_token` VALUES ('1173', '0525033b3b6c8f77c4ed40fa34ee8591', '34', '1497343339', '1497948139');
INSERT INTO `supportworker_token` VALUES ('1174', '0525033b3b6c8f77c4ed40fa34ee8591', '34', '1497343339', '1497948139');
INSERT INTO `supportworker_token` VALUES ('1175', '0525033b3b6c8f77c4ed40fa34ee8591', '34', '1497343339', '1497948139');
INSERT INTO `supportworker_token` VALUES ('1176', 'f5ee23115f003c5d2baabb56b92c05db', '34', '1497343340', '1497948140');
INSERT INTO `supportworker_token` VALUES ('1177', 'cfc6ed4d858a21ef47b7daf6ef22b397', '34', '1497404224', '1498009024');
INSERT INTO `supportworker_token` VALUES ('1178', 'ea132abb387488c8db626bd428686f84', '34', '1497429982', '1498034782');
INSERT INTO `supportworker_token` VALUES ('1179', '905591b8cce0d3974c450c7683314286', '34', '1497429996', '1498034796');
INSERT INTO `supportworker_token` VALUES ('1180', '31c7b0e8446da090eb7fe03fa298dd4c', '34', '1497430041', '1498034841');
INSERT INTO `supportworker_token` VALUES ('1181', '2db2884a0ba062695c6070e2257e7f8a', '34', '1497491536', '1498096336');
INSERT INTO `supportworker_token` VALUES ('1182', '3a1beb6edb6ec03f9cbd327ef35d2b15', '34', '1498533402', '1499138202');
INSERT INTO `supportworker_token` VALUES ('1183', '480e28b6a1a76102676043181e7e27af', '34', '1498533450', '1499138250');

-- ----------------------------
-- Table structure for symptom_info
-- ----------------------------
DROP TABLE IF EXISTS `symptom_info`;
CREATE TABLE `symptom_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `num` tinyint(2) unsigned NOT NULL COMMENT '身体状态编码',
  `introduce` varchar(20) NOT NULL COMMENT '身体状态描述',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='症状表';

-- ----------------------------
-- Records of symptom_info
-- ----------------------------
INSERT INTO `symptom_info` VALUES ('1', '1', '皮肤无抓痕', '1484969343', '0');
INSERT INTO `symptom_info` VALUES ('2', '2', '红、热、压痛', '1484969343', '0');
INSERT INTO `symptom_info` VALUES ('3', '3', '水疱、表皮糜烂', '1484969343', '0');
INSERT INTO `symptom_info` VALUES ('4', '4', '脂肪组织坏死', '1484969343', '0');
INSERT INTO `symptom_info` VALUES ('5', '5', '坏死可达肌层、骨骼、肌腱', '1484969343', '0');

-- ----------------------------
-- Table structure for train
-- ----------------------------
DROP TABLE IF EXISTS `train`;
CREATE TABLE `train` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `w_id` int(11) unsigned NOT NULL COMMENT '关联护工ID',
  `train_type` tinyint(1) unsigned NOT NULL COMMENT '培训类型(1.集中、2.自学、3.网络)',
  `train_date` varchar(50) NOT NULL COMMENT '培训时间',
  `train_company` varchar(50) NOT NULL COMMENT '培训机构',
  `train_name` varchar(50) NOT NULL COMMENT '培训名称',
  `is_certificate` tinyint(1) unsigned NOT NULL COMMENT '是否获得证书(1.是、2.否)',
  `description` varchar(200) NOT NULL COMMENT '培训内容',
  `remarks` varchar(200) NOT NULL COMMENT '备注',
  `created` int(11) unsigned NOT NULL,
  `updated` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='培训表';

-- ----------------------------
-- Records of train
-- ----------------------------
INSERT INTO `train` VALUES ('1', '47', '1', '2017-03-16', '福祉之家', '岗前培训', '1', '照顾老人起居', '无', '1489975771', '0');
INSERT INTO `train` VALUES ('2', '48', '3', '2017-04-21', '北京老人养护中心', '北京养老', '1', '测血压qq', '', '1492757446', '1494561632');
INSERT INTO `train` VALUES ('3', '54', '3', '2017-04-27', '北京后勤管理学习中心', '后勤管理', '1', '系统化管理后勤', '', '1493276453', '0');
INSERT INTO `train` VALUES ('4', '54', '2', '2017-04-27', '北京后勤管理学习中心', '后勤管理', '1', '系统化管理后勤', '', '1493276456', '1493282116');
INSERT INTO `train` VALUES ('5', '54', '3', '2017-04-27', '北京后勤管理学习中心..', '后勤管理', '1', '系统化管理后勤', '', '1493276473', '1493282281');
INSERT INTO `train` VALUES ('6', '49', '2', '2017-04-04', '北京护理中心', '测血压', '2', '测血压', '', '1493276734', '1495426243');
INSERT INTO `train` VALUES ('7', '46', '2', '2017-04-04', '3123', '3123', '1', '123123', '', '1493360680', '1494561568');
INSERT INTO `train` VALUES ('8', '50', '1', '2017-05-09', 'test', 'test', '2', 'test', '帖小石头', '1494227498', '1495425483');
INSERT INTO `train` VALUES ('9', '67', '1', '2017-05-16', '新东方烹饪学院', '川菜菜谱', '1', '川菜系各种菜点', '', '1495420453', '1495426118');

-- ----------------------------
-- Table structure for turnover
-- ----------------------------
DROP TABLE IF EXISTS `turnover`;
CREATE TABLE `turnover` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(11) unsigned NOT NULL COMMENT '关联老人ID',
  `week` tinyint(4) NOT NULL COMMENT '星期(1.周一、2.周二、3.周三、4.周四、5.周五、6.周六、7.周日)',
  `date` varchar(10) DEFAULT NULL COMMENT '日期',
  `at` tinyint(1) NOT NULL COMMENT '时间点(1.早上、2.上午、3.中午、4.下午、5.晚上)',
  `created` int(11) unsigned NOT NULL,
  `updated` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COMMENT='翻身反馈表';

-- ----------------------------
-- Records of turnover
-- ----------------------------
INSERT INTO `turnover` VALUES ('1', '3', '4', '2017-04-13', '1', '1492066654', '0');
INSERT INTO `turnover` VALUES ('2', '3', '4', '2017-04-13', '1', '1492066663', '0');
INSERT INTO `turnover` VALUES ('3', '3', '4', '2017-04-13', '2', '1492066761', '0');
INSERT INTO `turnover` VALUES ('4', '3', '4', '2017-04-13', '2', '1492066768', '0');
INSERT INTO `turnover` VALUES ('5', '3', '4', '2017-04-13', '1', '1492066833', '0');
INSERT INTO `turnover` VALUES ('6', '3', '4', '2017-04-13', '5', '1492067610', '0');
INSERT INTO `turnover` VALUES ('7', '3', '4', '2017-04-13', '5', '1492067628', '0');
INSERT INTO `turnover` VALUES ('8', '3', '4', '2017-04-13', '5', '1492067683', '0');
INSERT INTO `turnover` VALUES ('9', '3', '4', '2017-04-13', '6', '1492068064', '0');
INSERT INTO `turnover` VALUES ('10', '1', '1', '2017-05-08', '1', '1494211889', '0');
INSERT INTO `turnover` VALUES ('11', '1', '1', '2017-05-08', '2', '1494211950', '0');
INSERT INTO `turnover` VALUES ('12', '1', '1', '2017-05-08', '3', '1494212098', '0');
INSERT INTO `turnover` VALUES ('13', '1', '1', '2017-05-08', '5', '1494212219', '0');
INSERT INTO `turnover` VALUES ('14', '1', '1', '2017-05-08', '1', '1494212339', '0');
INSERT INTO `turnover` VALUES ('15', '1', '4', '2017-05-11', '2', '1494486982', '0');
INSERT INTO `turnover` VALUES ('16', '1', '4', '2017-05-11', '3', '1494487055', '0');
INSERT INTO `turnover` VALUES ('17', '1', '4', '2017-05-11', '5', '1494487135', '0');
INSERT INTO `turnover` VALUES ('18', '1', '5', '2017-05-12', '5', '1494556370', '0');
INSERT INTO `turnover` VALUES ('19', '1', '2', '2017-05-16', '1', '1494903433', '0');
INSERT INTO `turnover` VALUES ('20', '1', '2', '2017-05-23', '1', '1495507380', '0');
INSERT INTO `turnover` VALUES ('21', '1', '2', '2017-05-23', '1', '1495507398', '0');
INSERT INTO `turnover` VALUES ('22', '1', '2', '2017-05-23', '2', '1495507705', '0');
INSERT INTO `turnover` VALUES ('23', '1', '2', '2017-05-23', '3', '1495508463', '0');
INSERT INTO `turnover` VALUES ('24', '1', '2', '2017-05-23', '5', '1495508896', '0');
INSERT INTO `turnover` VALUES ('25', '1', '2', '2017-05-23', '4', '1495509763', '0');
INSERT INTO `turnover` VALUES ('26', '1', '2', '2017-05-23', '4', '1495509777', '0');
INSERT INTO `turnover` VALUES ('27', '1', '2', '2017-05-23', '5', '1495510809', '0');
INSERT INTO `turnover` VALUES ('28', '1', '2', '2017-05-23', '5', '1495528930', '0');
INSERT INTO `turnover` VALUES ('29', '1', '2', '2017-05-23', '5', '1495528950', '0');
INSERT INTO `turnover` VALUES ('30', '1', '2', '2017-05-23', '5', '1495528997', '0');
INSERT INTO `turnover` VALUES ('31', '1', '2', '2017-05-23', '5', '1495529082', '0');
INSERT INTO `turnover` VALUES ('32', '1', '2', '2017-05-23', '5', '1495529123', '0');
INSERT INTO `turnover` VALUES ('33', '1', '2', '2017-05-23', '5', '1495529233', '0');
INSERT INTO `turnover` VALUES ('34', '1', '2', '2017-05-23', '5', '1495530137', '0');
INSERT INTO `turnover` VALUES ('35', '1', '2', '2017-05-23', '4', '1495530165', '0');
INSERT INTO `turnover` VALUES ('36', '1', '2', '2017-05-23', '3', '1495530188', '0');
INSERT INTO `turnover` VALUES ('37', '1', '2', '2017-05-23', '3', '1495530203', '0');
INSERT INTO `turnover` VALUES ('38', '1', '2', '2017-05-23', '2', '1495530226', '0');
INSERT INTO `turnover` VALUES ('39', '1', '2', '2017-05-23', '2', '1495530241', '0');
INSERT INTO `turnover` VALUES ('40', '1', '2', '2017-05-23', '1', '1495530272', '0');
INSERT INTO `turnover` VALUES ('41', '1', '2', '2017-05-23', '1', '1495530286', '0');
INSERT INTO `turnover` VALUES ('42', '5', '2', '2017-05-23', '1', '1495533402', '0');
INSERT INTO `turnover` VALUES ('43', '5', '2', '2017-05-23', '1', '1495533413', '0');
INSERT INTO `turnover` VALUES ('44', '5', '2', '2017-05-23', '2', '1495533663', '0');
INSERT INTO `turnover` VALUES ('45', '5', '2', '2017-05-23', '2', '1495533681', '0');
INSERT INTO `turnover` VALUES ('46', '5', '2', '2017-05-23', '3', '1495533936', '0');
INSERT INTO `turnover` VALUES ('47', '5', '2', '2017-05-23', '3', '1495533952', '0');
INSERT INTO `turnover` VALUES ('48', '5', '2', '2017-05-23', '4', '1495534021', '0');
INSERT INTO `turnover` VALUES ('49', '5', '2', '2017-05-23', '4', '1495534050', '0');
INSERT INTO `turnover` VALUES ('50', '5', '2', '2017-05-23', '5', '1495534428', '0');
INSERT INTO `turnover` VALUES ('51', '5', '2', '2017-05-23', '5', '1495534439', '0');
INSERT INTO `turnover` VALUES ('52', '1', '5', '2017-05-26', '1', '1495763801', '0');
INSERT INTO `turnover` VALUES ('53', '1', '5', '2017-05-26', '1', '1495763814', '0');
INSERT INTO `turnover` VALUES ('54', '1', '5', '2017-05-26', '1', '1495765207', '0');
INSERT INTO `turnover` VALUES ('55', '1', '5', '2017-05-26', '1', '1495765239', '0');
INSERT INTO `turnover` VALUES ('56', '1', '5', '2017-05-26', '5', '1495768332', '0');
INSERT INTO `turnover` VALUES ('57', '1', '5', '2017-05-26', '5', '1495768384', '0');
INSERT INTO `turnover` VALUES ('58', '1', '5', '2017-05-26', '5', '1495768385', '0');
INSERT INTO `turnover` VALUES ('59', '1', '5', '2017-05-26', '3', '1495768899', '0');
INSERT INTO `turnover` VALUES ('60', '1', '5', '2017-05-26', '3', '1495768914', '0');
INSERT INTO `turnover` VALUES ('61', '1', '5', '2017-05-26', '2', '1495770803', '0');
INSERT INTO `turnover` VALUES ('62', '1', '5', '2017-05-26', '2', '1495770813', '0');

-- ----------------------------
-- Table structure for visit
-- ----------------------------
DROP TABLE IF EXISTS `visit`;
CREATE TABLE `visit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `week` tinyint(1) NOT NULL COMMENT '星期(1.周一、2.周二、3.周三、4.周四、5.周五、6.周六、7.周日)',
  `date` varchar(10) DEFAULT NULL COMMENT '日期',
  `relative_status` tinyint(1) NOT NULL COMMENT '亲人探视状态(1.是、2.否)',
  `friend_status` tinyint(1) NOT NULL COMMENT '朋友探视状态(1.是、2.否)',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `at` tinyint(1) NOT NULL COMMENT '时间点(1.早上、2.上午、3.中午、4.下午、5.晚上)',
  `sid` int(10) unsigned NOT NULL COMMENT '关联老年人ID（senior_id）',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='探视';

-- ----------------------------
-- Records of visit
-- ----------------------------
INSERT INTO `visit` VALUES ('1', '1', '2017-03-06', '1', '1', '1488793633', '0', '2', '1');
INSERT INTO `visit` VALUES ('2', '2', '2017-03-07', '1', '1', '1488850581', '0', '2', '1');
INSERT INTO `visit` VALUES ('3', '5', '2017-03-10', '2', '1', '1489126932', '0', '2', '2');
INSERT INTO `visit` VALUES ('4', '5', '2017-03-10', '1', '1', '1489126943', '0', '4', '1');
INSERT INTO `visit` VALUES ('5', '1', '2017-03-13', '1', '2', '1489389877', '0', '2', '1');
INSERT INTO `visit` VALUES ('6', '1', '2017-05-08', '1', '1', '1494212413', '0', '2', '1');
INSERT INTO `visit` VALUES ('7', '1', '2017-05-08', '1', '2', '1494212179', '0', '5', '1');
INSERT INTO `visit` VALUES ('8', '4', '2017-05-11', '2', '1', '1494487025', '0', '2', '1');
INSERT INTO `visit` VALUES ('9', '2', '2017-05-23', '1', '2', '1495508286', '0', '2', '1');
INSERT INTO `visit` VALUES ('10', '2', '2017-05-23', '2', '1', '1495510232', '0', '4', '1');
INSERT INTO `visit` VALUES ('11', '2', '2017-05-23', '2', '1', '1495533848', '0', '2', '5');
INSERT INTO `visit` VALUES ('12', '2', '2017-05-23', '2', '1', '1495534106', '0', '4', '5');
INSERT INTO `visit` VALUES ('13', '5', '2017-05-26', '2', '1', '1495768146', '0', '4', '1');
INSERT INTO `visit` VALUES ('14', '5', '2017-05-26', '2', '1', '1495770981', '0', '2', '1');

-- ----------------------------
-- Table structure for wages
-- ----------------------------
DROP TABLE IF EXISTS `wages`;
CREATE TABLE `wages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `w_id` int(11) unsigned NOT NULL COMMENT '关联员工ID',
  `attendence_days` tinyint(2) unsigned NOT NULL COMMENT '实出勤天数',
  `basic_fee` int(3) unsigned NOT NULL COMMENT '基本工资',
  `prefee` int(3) unsigned NOT NULL COMMENT '应发工资',
  `payment` int(3) unsigned NOT NULL COMMENT '实发工资',
  `is_issue` tinyint(2) unsigned NOT NULL COMMENT '是否发放工资',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `handlers` varchar(20) NOT NULL COMMENT '操作者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='员工工资表';

-- ----------------------------
-- Records of wages
-- ----------------------------
INSERT INTO `wages` VALUES ('1', '50', '31', '12222', '378882', '1000', '1', '1490891101', '0', 'admin');
INSERT INTO `wages` VALUES ('3', '50', '30', '12222', '366660', '1000', '1', '1491377035', '0', 'admin');
INSERT INTO `wages` VALUES ('4', '49', '24', '4000', '124000', '1100', '1', '1491380318', '0', 'admin');
INSERT INTO `wages` VALUES ('5', '54', '31', '3000', '93000', '1', '1', '1492595750', '0', '');
INSERT INTO `wages` VALUES ('8', '57', '31', '2000', '62000', '23', '1', '1493194511', '0', '');
INSERT INTO `wages` VALUES ('9', '67', '4', '2000', '60000', '2000', '1', '1493799856', '0', 'admin');
INSERT INTO `wages` VALUES ('10', '54', '27', '4000', '120000', '8999', '1', '1493888715', '0', 'admin');
INSERT INTO `wages` VALUES ('11', '53', '26', '4000', '120000', '45', '1', '1493957082', '0', '');
INSERT INTO `wages` VALUES ('12', '46', '30', '5000', '150000', '1500', '1', '1493957116', '0', '');
INSERT INTO `wages` VALUES ('13', '47', '28', '4000', '120000', '456', '1', '1494214613', '0', '');
INSERT INTO `wages` VALUES ('14', '70', '30', '1000', '1000', '100', '1', '1495090178', '0', 'admin');
INSERT INTO `wages` VALUES ('15', '70', '30', '1000', '1000', '1000', '1', '1495090178', '0', 'admin');
INSERT INTO `wages` VALUES ('16', '70', '30', '1000', '1000', '10000', '1', '1495090178', '0', 'admin');
INSERT INTO `wages` VALUES ('17', '70', '30', '1000', '1000', '100', '1', '1495090178', '0', 'admin');
INSERT INTO `wages` VALUES ('18', '70', '30', '1000', '1000', '100', '1', '1495090178', '0', 'admin');

-- ----------------------------
-- Table structure for washcloth
-- ----------------------------
DROP TABLE IF EXISTS `washcloth`;
CREATE TABLE `washcloth` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `week` tinyint(1) NOT NULL COMMENT '星期(1.周一、2.周二、3.周三、4.周四、5.周五、6.周六、7.周日)',
  `date` varchar(10) DEFAULT NULL COMMENT '日期',
  `underdress_status` tinyint(1) NOT NULL COMMENT '内衣换洗状态(1.是、2.否)',
  `coat_status` tinyint(1) NOT NULL COMMENT '外套换洗状态(1.是、2.否)',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `at` tinyint(1) NOT NULL COMMENT '时间点(1.早上、2.上午、3.中午、4.下午、5.晚上)',
  `sid` int(10) unsigned NOT NULL COMMENT '关联老年人ID（senior_id）',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='衣物换洗';

-- ----------------------------
-- Records of washcloth
-- ----------------------------
INSERT INTO `washcloth` VALUES ('1', '1', '2017-03-06', '1', '1', '1488793543', '0', '2', '1');
INSERT INTO `washcloth` VALUES ('2', '2', '2017-03-07', '1', '1', '1488850556', '0', '2', '1');
INSERT INTO `washcloth` VALUES ('3', '1', '2017-03-13', '1', '2', '1489389864', '0', '2', '1');
INSERT INTO `washcloth` VALUES ('4', '1', '2017-05-08', '1', '1', '1494212386', '0', '2', '1');
INSERT INTO `washcloth` VALUES ('5', '1', '2017-05-08', '1', '2', '1494212175', '0', '5', '1');
INSERT INTO `washcloth` VALUES ('6', '4', '2017-05-11', '1', '1', '1494487021', '0', '2', '1');
INSERT INTO `washcloth` VALUES ('7', '4', '2017-05-11', '2', '1', '1494487115', '0', '5', '1');
INSERT INTO `washcloth` VALUES ('11', '2', '2017-05-23', '1', '1', '1495529330', '0', '2', '1');
INSERT INTO `washcloth` VALUES ('12', '2', '2017-05-23', '1', '1', '1495533811', '0', '2', '5');
INSERT INTO `washcloth` VALUES ('13', '2', '2017-05-23', '1', '1', '1495534086', '0', '4', '5');
INSERT INTO `washcloth` VALUES ('14', '5', '2017-05-26', '1', '1', '1495768130', '0', '4', '1');
INSERT INTO `washcloth` VALUES ('15', '5', '2017-05-26', '1', '1', '1495770970', '0', '2', '1');

-- ----------------------------
-- Table structure for work_history
-- ----------------------------
DROP TABLE IF EXISTS `work_history`;
CREATE TABLE `work_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `w_id` int(10) unsigned NOT NULL COMMENT '关联员工ID',
  `worktime` varchar(10) DEFAULT NULL COMMENT '工作时间',
  `descriptions` varchar(50) NOT NULL COMMENT '工作内容',
  `work_type` varchar(50) NOT NULL COMMENT '工作类型',
  `work_place` varchar(100) NOT NULL COMMENT '工作地点',
  `remarks` varchar(100) NOT NULL COMMENT '备注',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `w_id` (`w_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='工作经历';

-- ----------------------------
-- Records of work_history
-- ----------------------------
INSERT INTO `work_history` VALUES ('1', '46', '', '', '', '', '', '1488793098', '0');
INSERT INTO `work_history` VALUES ('2', '47', '', '', '', '', '', '1488803352', '0');
INSERT INTO `work_history` VALUES ('3', '48', '', '', '', '', '', '1488850998', '0');
INSERT INTO `work_history` VALUES ('4', '49', '', '', '', '', '', '1488854613', '0');
INSERT INTO `work_history` VALUES ('5', '46', '', '', '', '', '', '1489736594', '0');
INSERT INTO `work_history` VALUES ('6', '50', '', '', '', '', '', '1490690991', '0');
INSERT INTO `work_history` VALUES ('7', '50', '', '', '', '', '', '1490692611', '0');
INSERT INTO `work_history` VALUES ('8', '50', '', '', '', '', '', '1490693166', '0');
INSERT INTO `work_history` VALUES ('9', '50', '', '', '', '', '', '1490693166', '0');
INSERT INTO `work_history` VALUES ('10', '51', '', '', '', '', '', '1492397068', '0');
INSERT INTO `work_history` VALUES ('15', '53', '', '', '', '', '', '1492595144', '0');
INSERT INTO `work_history` VALUES ('16', '70', '', '福祉之家', '护工', '福祉之家', '', '1494570799', '0');

-- ----------------------------
-- Table structure for worker
-- ----------------------------
DROP TABLE IF EXISTS `worker`;
CREATE TABLE `worker` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL,
  `age` tinyint(3) unsigned NOT NULL COMMENT '年龄',
  `photo` varchar(200) NOT NULL COMMENT '头像',
  `birthdate` varchar(11) NOT NULL COMMENT '出生年月',
  `phone` varchar(11) NOT NULL,
  `critcode` varchar(18) NOT NULL COMMENT '身份证号',
  `nation` tinyint(2) unsigned NOT NULL COMMENT '民族',
  `healthy_status` tinyint(1) unsigned NOT NULL COMMENT '健康情况(1.优秀、2.良好、3.合格、4.不合格)',
  `healthy_licence` tinyint(1) unsigned NOT NULL COMMENT '健康证',
  `department` tinyint(2) unsigned NOT NULL COMMENT '所在部门',
  `worker_type` tinyint(1) unsigned NOT NULL COMMENT '人员类别',
  `created` int(11) unsigned NOT NULL,
  `work_licence` tinyint(1) unsigned NOT NULL COMMENT '上岗证',
  `education_levels` tinyint(2) unsigned NOT NULL COMMENT '文化程度',
  `married` tinyint(1) unsigned NOT NULL COMMENT '婚姻',
  `native_place` varchar(50) NOT NULL COMMENT '籍贯',
  `updated` int(11) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL COMMENT '当前状态(1.正常、2.离职)',
  `role_status` tinyint(1) unsigned NOT NULL DEFAULT '2' COMMENT '是否分配角色(1.是、2.否)',
  `hiredate` varchar(10) NOT NULL COMMENT '入职日期(例：2017-02-15))',
  `resource` tinyint(1) unsigned NOT NULL COMMENT '招聘渠道(1.内部推荐、2.报纸、3.网络、4.电视、5.其他)',
  `probation_period` int(10) unsigned NOT NULL COMMENT '试用期',
  `probation_fee` int(10) unsigned NOT NULL COMMENT '试用期薪资',
  `fee` int(10) unsigned NOT NULL COMMENT '转正后薪资',
  `old_address` varchar(100) NOT NULL COMMENT '暂住地址',
  `remarks` varchar(100) NOT NULL COMMENT '备注',
  `job_type` tinyint(1) unsigned NOT NULL COMMENT '用工性质(1.临时员工、2.正式员工)',
  `cases` varchar(20) NOT NULL COMMENT '护理过病人的病例(1.脑中风、2.老年痴呆、3.插尿管、4.鼻伺、5.骨折、6.肿瘤、7.腰间盘突出、8.自理、9.半自理、10.不自理、11.精神病、12.糖尿病)',
  `skill` varchar(20) NOT NULL COMMENT '技能(1.做饭、2.给病人翻身、3.拍痰、4.吸氧、5.测血压、6.测血糖、7.打胰岛素、8.使用紫外线消毒灯)',
  `disease` varchar(20) NOT NULL COMMENT '身体疾病(1.皮肤病、2.狐臭、3.口腔疾病、4.妇科病、5.慢性病)',
  `religion` tinyint(2) unsigned NOT NULL COMMENT '宗教',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COMMENT='员工表';

-- ----------------------------
-- Records of worker
-- ----------------------------
INSERT INTO `worker` VALUES ('4', '如月', '1', '30', '/upload/worker/2017/03/17/4f48049cdba69681d6a3cf24bc903f99.jpg', '2017-03-01', '18910330634', '324234234355', '1', '1', '1', '8', '7', '1488792266', '1', '1', '1', '山东', '1489736594', '2', '2', '2017-03-01', '1', '30', '4000', '5000', '', '', '2', '2,3', '3,4', '', '0');
INSERT INTO `worker` VALUES ('47', '护工test', '1', '30', '/upload/worker/2017/03/06/9ec3dfb6ca642146284fc87efbcaf334.png', '1987-03-03', '18910330634', '373928193702038574', '1', '1', '1', '8', '7', '1488803352', '1', '1', '1', '山东', '0', '0', '2', '2017-03-01', '1', '30', '3000', '4000', '', '', '2', '', '', '', '0');
INSERT INTO `worker` VALUES ('48', '北苑护工', '1', '50', '/upload/worker/2017/03/07/3f2dc0dbc68b35d6eb1d2cb9ebef71db.png', '1984-03-01', '18910330634', '3435546645646', '1', '1', '1', '13', '7', '1488850998', '1', '2', '1', '北京', '0', '0', '2', '2017-03-01', '1', '30', '3000', '4000', '北京北苑', '', '2', '1,3,4,5', '2,3,4,5', '', '0');
INSERT INTO `worker` VALUES ('49', '测试护工', '2', '20', '/upload/worker/2017/03/07/6b5fa7e79b1bcafb0c7b632f16e3dc4c.png', '2017-03-01', '18910330634', '1098376464636', '1', '1', '1', '13', '7', '1488854613', '1', '1', '2', '北京', '0', '0', '2', '2017-03-01', '1', '30', '3000', '4000', '北京市西四区', '北京市西四区', '2', '4,5,6,7', '4', '', '0');
INSERT INTO `worker` VALUES ('50', '测试厨师', '1', '23', '', '2017-03-20', '13522687473', '123213123123123', '1', '2', '1', '1', '9', '1490690991', '1', '1', '1', '说到底 阿打算', '1490693166', '2', '2', '2017-03-13', '1', '3', '10000', '12222', '', '', '1', '', '', '', '0');
INSERT INTO `worker` VALUES ('51', '测试财务', '1', '48', '/upload/worker/2017/04/17/8296fadeef5be144de71d6cc8935180e.jpg', '1969-04-08', '17878787788', '411123196904081010', '1', '1', '1', '13', '10', '1492397068', '1', '1', '1', '北京市', '1493112444', '0', '2', '2017-04-17', '1', '30', '200', '300', '北京市海淀区', '', '1', '', '', '', '0');
INSERT INTO `worker` VALUES ('52', '测试督导', '1', '23', '/upload/worker/2017/04/25/1f53f22322ff364998b24d6ce8562c0f.jpg', '2017-04-05', '1324456781', '142729199011102529', '1', '2', '1', '13', '8', '1492502882', '1', '10', '1', '北京市昌平区半截塔村', '1493111740', '0', '2', '2017-04-10', '1', '3', '1000', '2000', '', '', '1', '', '', '', '0');
INSERT INTO `worker` VALUES ('53', '督导', '1', '34', '/upload/worker/2017/04/19/b1fcaa200f25bbba01dfe3cb169aff26.png', '2017-04-03', '18910330634', '23423423423424', '1', '1', '1', '255', '8', '1492595144', '1', '1', '1', '北京', '0', '0', '2', '2017-04-04', '1', '30', '3000', '4000', '23242342432', '23423423424', '1', '', '', '', '0');
INSERT INTO `worker` VALUES ('54', '后勤', '1', '44', '/upload/worker/2017/04/19/d1f48b84f060d3777f4753145c631086.png', '2017-04-03', '213123123', '345345334545', '1', '1', '1', '255', '5', '1492595343', '1', '1', '1', '北京', '0', '0', '2', '2017-04-03', '1', '30', '3000', '4000', '23234234234234', '32423423423423423', '1', '', '', '', '0');
INSERT INTO `worker` VALUES ('55', '测试后勤', '1', '56', '', '2012-04-12', '', '410923199505066552', '1', '1', '1', '8', '1', '1493193766', '1', '1', '1', '', '1494325386', '0', '2', '2017-05-01', '1', '0', '0', '0', '', '', '1', '3', '3', '3', '0');
INSERT INTO `worker` VALUES ('67', '测试0426', '1', '53', '/upload/worker/2017/04/27/9985adc2654c916a7612897a06ca5c34.jpg', '1964-02-12', '', '411103196402121011', '1', '1', '1', '8', '1', '1493195365', '1', '1', '1', '北京市', '1493275476', '0', '2', '2017-04-26', '1', '30', '2000', '0', '北京市海淀区', '', '1', '', '', '', '0');
INSERT INTO `worker` VALUES ('68', '测试后勤', '2', '12', '', '2012-05-08', '13825856134', '410923199506085226', '1', '1', '1', '8', '1', '1494215002', '1', '1', '1', '', '1494325358', '0', '2', '2017-05-02', '1', '0', '0', '0', '', '', '1', '2,3', '1', '1', '0');
INSERT INTO `worker` VALUES ('69', 'ddd', '1', '44', '', '2017-05-09', '23232424343', 'dddddd', '1', '1', '1', '8', '7', '1494320844', '1', '1', '1', '3423424ewwe', '1494469025', '0', '2', '2017-05-10', '1', '0', '0', '0', 'dsfsfsfsfs', '', '1', '', '', '', '0');
INSERT INTO `worker` VALUES ('70', '杨赛', '1', '21', '', '2017-05-18', '13522687472', '142729299611101519', '1', '1', '1', '8', '7', '1494570799', '1', '1', '1', '山西运城', '0', '0', '2', '2017-05-24', '1', '2017', '1000', '2000', '山西运城', '而且', '1', '1,2', '1', '1', '2');
INSERT INTO `worker` VALUES ('71', '问问分', '1', '23', '', '2017-05-02', '23232424324', '2342423424', '1', '1', '1', '8', '5', '1494570977', '1', '1', '1', '', '0', '0', '2', '', '1', '0', '0', '0', '', '', '1', '', '', '', '0');
INSERT INTO `worker` VALUES ('72', '31231', '2', '18', '', '2017-05-23', '133123123', '12312312312312', '2', '1', '2', '1', '7', '1494579598', '1', '1', '1', '312312', '0', '2', '2', '', '1', '0', '0', '0', '31231231231', '', '1', '11', '1', '2', '2');
INSERT INTO `worker` VALUES ('73', 'weny阿飞', '2', '41', '', '1976-11-10', '13511029871', '142729197611101817', '4', '1', '2', '1', '5', '1494579708', '2', '3', '3', '3123123', '1496197149', '0', '2', '2017-05-09', '3', '0', '0', '0', '123123', '', '2', '1,11', '1', '1', '2');
INSERT INTO `worker` VALUES ('74', '王会中', '1', '22', '', '2017-05-14', '13522467901', '123123123123123124', '1', '1', '1', '8', '1', '1494987282', '1', '1', '1', '', '0', '0', '2', '', '1', '0', '0', '0', '', '', '1', '', '', '', '0');
INSERT INTO `worker` VALUES ('75', '杨沈泽', '1', '32', '', '1985-12-30', '13822900918', '142729198512301232', '1', '1', '1', '8', '9', '1495102846', '1', '1', '1', '', '1496213658', '0', '2', '‘’', '1', '0', '0', '0', '', '', '1', '', '', '', '0');

-- ----------------------------
-- Table structure for worker_senior
-- ----------------------------
DROP TABLE IF EXISTS `worker_senior`;
CREATE TABLE `worker_senior` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(11) unsigned NOT NULL COMMENT '老人ID',
  `sw_id` int(11) unsigned NOT NULL COMMENT '护工ID',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='护工老人关系表';

-- ----------------------------
-- Records of worker_senior
-- ----------------------------
INSERT INTO `worker_senior` VALUES ('1', '1', '34', '1488793119', '1495532354');
INSERT INTO `worker_senior` VALUES ('2', '2', '45', '1488803367', '1495452102');
INSERT INTO `worker_senior` VALUES ('3', '3', '33', '1488851012', '1490323355');
INSERT INTO `worker_senior` VALUES ('4', '4', '36', '1488854626', '1489630550');
INSERT INTO `worker_senior` VALUES ('5', '5', '34', '1489717412', '0');
INSERT INTO `worker_senior` VALUES ('6', '16', '45', '1492163452', '1495452092');
INSERT INTO `worker_senior` VALUES ('7', '18', '34', '1493363959', '0');
INSERT INTO `worker_senior` VALUES ('8', '21', '45', '1493363990', '1495452120');
INSERT INTO `worker_senior` VALUES ('9', '23', '45', '1493712634', '1495452073');
INSERT INTO `worker_senior` VALUES ('10', '25', '45', '1494901426', '1494901432');
INSERT INTO `worker_senior` VALUES ('11', '28', '45', '1495452059', '0');
INSERT INTO `worker_senior` VALUES ('12', '24', '35', '1495452201', '0');
