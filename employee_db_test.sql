/*
Navicat MySQL Data Transfer

Source Server         : Mysql_baisc
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : employee_db

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-05-06 21:28:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tweets
-- ----------------------------
DROP TABLE IF EXISTS `tweets`;
CREATE TABLE `tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `content` varchar(140) NOT NULL,
  `favorites` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tweets
-- ----------------------------
INSERT INTO `tweets` VALUES ('1', '1', 'marry', 'marry is googd', '12', '2018-05-06 14:22:51');
INSERT INTO `tweets` VALUES ('2', '2', 'lucy', 'lucy is awesome', '36', '2018-05-06 14:23:39');
INSERT INTO `tweets` VALUES ('3', '1', 'marry', 'marry is googd', '12', '2018-05-06 14:22:51');
INSERT INTO `tweets` VALUES ('4', '2', 'lucy', 'lucy is awesome', '36', '2018-05-06 14:23:39');

-- ----------------------------
-- Table structure for tweet_user
-- ----------------------------
DROP TABLE IF EXISTS `tweet_user`;
CREATE TABLE `tweet_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `favorites_total` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tweet_user
-- ----------------------------
INSERT INTO `tweet_user` VALUES ('1', 'mary', '13', '0');
INSERT INTO `tweet_user` VALUES ('2', 'lucy', '15', '0');
INSERT INTO `tweet_user` VALUES ('3', 'henry', '18', '0');
