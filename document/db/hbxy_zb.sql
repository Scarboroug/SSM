/*
MySQL Data Transfer
Source Host: localhost
Source Database: hbxy_zb
Target Host: localhost
Target Database: hbxy_zb
Date: 2018/6/20 22:29:49
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `product_id` int(32) NOT NULL DEFAULT '0',
  `product_name` varchar(50) DEFAULT NULL,
  `product_class` int(2) DEFAULT NULL,
  `product_type` int(32) DEFAULT NULL,
  `product_manufacturer` varchar(255) DEFAULT NULL,
  `product_date` varchar(255) DEFAULT NULL,
  `product_price` double(50,0) DEFAULT NULL,
  `product_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for product_type
-- ----------------------------
DROP TABLE IF EXISTS `product_type`;
CREATE TABLE `product_type` (
  `product_type_id` int(32) NOT NULL DEFAULT '0' COMMENT '分类编号',
  `product_type_name` varchar(50) DEFAULT NULL COMMENT '分类名称',
  `product_type_desc` varchar(255) DEFAULT NULL COMMENT '分类描述',
  PRIMARY KEY (`product_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `product` VALUES ('3', '软件工程导论', '0', '20180603', '清华大学出版社', '201308', '39', '工程学科');
INSERT INTO `product` VALUES ('1', '火腿', '0', '20180531', '奥地利', '20180315', '5', '打折');
INSERT INTO `product` VALUES ('2', '牙膏', '0', '20180601', '高露洁', '20180524', '20', '亮白去渍');
INSERT INTO `product` VALUES ('4', '武动乾坤', '1', '20180603', '天蚕土豆', '2015-12-22', '50', '激动人心');
INSERT INTO `product_type` VALUES ('20180531', '食品', '吃吃喝喝');
INSERT INTO `product_type` VALUES ('20180601', '生活用品', '日常用品');
INSERT INTO `product_type` VALUES ('20180602', '化妆品', '女性必需品');
INSERT INTO `product_type` VALUES ('20180603', '书籍', '知识就是力量');
