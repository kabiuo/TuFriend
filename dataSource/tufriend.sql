/*
 Navicat Premium Data Transfer

 Source Server         : kabiuo
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : localhost:3306
 Source Schema         : tufriend

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 16/08/2018 22:50:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for friend_info
-- ----------------------------
DROP TABLE IF EXISTS `friend_info`;
CREATE TABLE `friend_info`  (
  `f_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'friend for table friend_info id',
  `f_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'friend name',
  `f_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'friend phone',
  `f_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'friend address',
  PRIMARY KEY (`f_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of friend_info
-- ----------------------------
INSERT INTO `friend_info` VALUES (1, '666', '337af67d-', '666c7-0337af67d-');
INSERT INTO `friend_info` VALUES (2, 'b382b-1', '51baa26a-', 'b382b-151baa26a-');
INSERT INTO `friend_info` VALUES (3, 'a2f06-2', '11a757c3-', 'a2f06-211a757c3-');
INSERT INTO `friend_info` VALUES (4, '7b928-3', '11878c7d-', '7b928-311878c7d-');
INSERT INTO `friend_info` VALUES (5, '234da-4', 'dc0ce0a5-', '234da-4dc0ce0a5-');
INSERT INTO `friend_info` VALUES (6, 'cf998-5', 'df721863-', 'cf998-5df721863-');
INSERT INTO `friend_info` VALUES (7, 'bcc65-6', '076fed55-', 'bcc65-6076fed55-');
INSERT INTO `friend_info` VALUES (8, '5b43d-7', '806f674b-', '5b43d-7806f674b-');
INSERT INTO `friend_info` VALUES (9, '21c1c-8', 'c0b542c5-', '21c1c-8c0b542c5-');
INSERT INTO `friend_info` VALUES (10, '80e98-9', 'bbed6f15-', '80e98-9bbed6f15-');
INSERT INTO `friend_info` VALUES (11, '337bb-10', 'e00086d0-', '337bb-10e00086d0-');
INSERT INTO `friend_info` VALUES (12, '10ab8-11', '6388d46e-', '10ab8-116388d46e-');
INSERT INTO `friend_info` VALUES (13, 'd6149-12', '1aef407b-', 'd6149-121aef407b-');
INSERT INTO `friend_info` VALUES (14, '967e0-13', '1408bf7b-', '967e0-131408bf7b-');
INSERT INTO `friend_info` VALUES (15, '6bd34-14', 'a172157c-', '6bd34-14a172157c-');
INSERT INTO `friend_info` VALUES (16, '5609a-15', '1b65f2f9-', '5609a-151b65f2f9-');
INSERT INTO `friend_info` VALUES (17, 'e7b32-16', '8fda4b7d-', 'e7b32-168fda4b7d-');
INSERT INTO `friend_info` VALUES (18, 'aa1e8-17', 'eb78fcd0-', 'aa1e8-17eb78fcd0-');
INSERT INTO `friend_info` VALUES (19, 'd3661-18', '54c33168-', 'd3661-1854c33168-');
INSERT INTO `friend_info` VALUES (20, '41550', 'a0541b03-', '41550-19a0541b03-');
INSERT INTO `friend_info` VALUES (22, 'ksfj', 'lcdkancf', 'kdsfn');

SET FOREIGN_KEY_CHECKS = 1;
