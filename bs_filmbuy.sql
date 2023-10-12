/*
 Navicat MySQL Data Transfer

 Source Server         : movie
 Source Server Type    : MySQL
 Source Server Version : 80034 (8.0.34)
 Source Host           : localhost:3306
 Source Schema         : bs_filmbuy

 Target Server Type    : MySQL
 Target Server Version : 80034 (8.0.34)
 File Encoding         : 65001

 Date: 12/10/2023 15:57:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_info
-- ----------------------------
DROP TABLE IF EXISTS `admin_info`;
CREATE TABLE `admin_info` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `nickName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `age` int DEFAULT NULL COMMENT '年龄',
  `birthday` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生日',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '编号',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `cardId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证',
  `account` double(10,2) DEFAULT NULL COMMENT '余额',
  `level` int NOT NULL DEFAULT '1' COMMENT '权限等级',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='管理员信息表';

-- ----------------------------
-- Records of admin_info
-- ----------------------------
BEGIN;
INSERT INTO `admin_info` (`id`, `name`, `password`, `nickName`, `sex`, `age`, `birthday`, `phone`, `address`, `code`, `email`, `cardId`, `account`, `level`) VALUES (1, 'admin1', 'e10adc3949ba59abbe56e057f20f883e', 'admin1', 'male', 23, '2000-02-02 12:42:52', '0420847384', 'City', '111', 'bofu@gmail.com', '342425199001116372', 39.60, 1);
INSERT INTO `admin_info` (`id`, `name`, `password`, `nickName`, `sex`, `age`, `birthday`, `phone`, `address`, `code`, `email`, `cardId`, `account`, `level`) VALUES (11, 'admin2', 'e10adc3949ba59abbe56e057f20f883e', 'admin2', 'male', 23, '2000-03-08 00:00:00', '0420759584', 'City', '111', 'changyi@gmail.com', '342425199001116372', NULL, 1);
INSERT INTO `admin_info` (`id`, `name`, `password`, `nickName`, `sex`, `age`, `birthday`, `phone`, `address`, `code`, `email`, `cardId`, `account`, `level`) VALUES (12, 'admin3', 'e10adc3949ba59abbe56e057f20f883e', 'admin3', 'female', 21, '2000-02-08 00:00:00', '0423984923', 'Ultimo', '111', 'name3@gmail.com', '342425199001116372', NULL, 1);
COMMIT;

-- ----------------------------
-- Table structure for advertiser_info
-- ----------------------------
DROP TABLE IF EXISTS `advertiser_info`;
CREATE TABLE `advertiser_info` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公告名称',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '公告内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公告时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='公告信息表';

-- ----------------------------
-- Records of advertiser_info
-- ----------------------------
BEGIN;
INSERT INTO `advertiser_info` (`id`, `name`, `content`, `time`) VALUES (1, 'System Announcement', 'System Announcement', '2020-11-07 16:16:50');
INSERT INTO `advertiser_info` (`id`, `name`, `content`, `time`) VALUES (2, 'System Announcement', 'System Announcement', '2020-11-07 17:00:13');
INSERT INTO `advertiser_info` (`id`, `name`, `content`, `time`) VALUES (3, 'System Announcement', 'System Announcement', '2020-11-07 12:42:52');
INSERT INTO `advertiser_info` (`id`, `name`, `content`, `time`) VALUES (4, 'System Announcement', 'System Announcement', '2020-11-07 12:42:52');
INSERT INTO `advertiser_info` (`id`, `name`, `content`, `time`) VALUES (5, 'System Announcement', 'System Announcement', '2020-11-07 12:42:52');
INSERT INTO `advertiser_info` (`id`, `name`, `content`, `time`) VALUES (6, 'System Announcement', 'System Announcement', '2020-11-07 12:42:52');
INSERT INTO `advertiser_info` (`id`, `name`, `content`, `time`) VALUES (7, 'System Announcement', 'System Announcement', '2020-11-07 12:42:52');
INSERT INTO `advertiser_info` (`id`, `name`, `content`, `time`) VALUES (8, 'System Announcement', 'System Announcement', '2020-11-07 12:42:52');
INSERT INTO `advertiser_info` (`id`, `name`, `content`, `time`) VALUES (9, 'System Announcement', 'System Announcement', '2020-11-07 12:42:52');
INSERT INTO `advertiser_info` (`id`, `name`, `content`, `time`) VALUES (10, 'System Announcement', 'System Announcement', '2020-11-07 12:42:52');
COMMIT;

-- ----------------------------
-- Table structure for cart_info
-- ----------------------------
DROP TABLE IF EXISTS `cart_info`;
CREATE TABLE `cart_info` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `count` int NOT NULL DEFAULT '0' COMMENT '数量',
  `goodsId` bigint NOT NULL DEFAULT '0' COMMENT '所属商品',
  `userId` bigint NOT NULL DEFAULT '0' COMMENT '所属用户',
  `level` int DEFAULT NULL COMMENT '用户等级',
  `createTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='购物车信息表';

-- ----------------------------
-- Records of cart_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for comment_info
-- ----------------------------
DROP TABLE IF EXISTS `comment_info`;
CREATE TABLE `comment_info` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '评价内容',
  `goodsId` bigint NOT NULL DEFAULT '0' COMMENT '所属商品',
  `userId` bigint NOT NULL DEFAULT '0' COMMENT '评价人id',
  `level` int DEFAULT NULL COMMENT '用户等级',
  `createTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='商品评价表';

-- ----------------------------
-- Records of comment_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for goods_info
-- ----------------------------
DROP TABLE IF EXISTS `goods_info`;
CREATE TABLE `goods_info` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '商品名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '商品描述',
  `price` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `discount` double(10,2) DEFAULT '1.00' COMMENT '商品折扣',
  `sales` int NOT NULL DEFAULT '0' COMMENT '商品销量',
  `hot` int NOT NULL DEFAULT '0' COMMENT '商品点赞数',
  `recommend` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '否' COMMENT '是否是推荐',
  `actor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '演员',
  `beginTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '放映时间',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '放映时长',
  `typeId` bigint NOT NULL DEFAULT '0' COMMENT '所属类别',
  `fileIds` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '商品图片id，用英文逗号隔开',
  `userId` bigint NOT NULL DEFAULT '0' COMMENT '评价人id',
  `level` int DEFAULT NULL COMMENT '用户等级',
  `countrys` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '国家',
  `typeNames` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='商品详情表';

-- ----------------------------
-- Records of goods_info
-- ----------------------------
BEGIN;
INSERT INTO `goods_info` (`id`, `name`, `description`, `price`, `discount`, `sales`, `hot`, `recommend`, `actor`, `beginTime`, `time`, `typeId`, `fileIds`, `userId`, `level`, `countrys`, `typeNames`) VALUES (7, 'Wolf Warrior 2', 'Wolf Warrior 2', 32.00, 0.90, 2, 16, 'yes', 'Jacky Wu', '2022-07-15 12:42:52', '120', 3, '[31]', 1, 1, 'China', 'War');
INSERT INTO `goods_info` (`id`, `name`, `description`, `price`, `discount`, `sales`, `hot`, `recommend`, `actor`, `beginTime`, `time`, `typeId`, `fileIds`, `userId`, `level`, `countrys`, `typeNames`) VALUES (8, 'Code Name: Zebra', 'Code Name: Zebra', 34.00, 0.90, 2, 0, 'yes', 'Richard X. Slattery', '2020-07-24 12:42:52', '120', 1, '[30]', 1, 1, 'America', 'Action');
INSERT INTO `goods_info` (`id`, `name`, `description`, `price`, `discount`, `sales`, `hot`, `recommend`, `actor`, `beginTime`, `time`, `typeId`, `fileIds`, `userId`, `level`, `countrys`, `typeNames`) VALUES (9, 'Between Worlds', 'Between Worlds', 34.00, 0.80, 0, 0, 'yes', 'Nicolas Cage', '2018-06-28 12:42:52', '120', 4, '[32]', 1, 1, 'America', 'Fiction');
INSERT INTO `goods_info` (`id`, `name`, `description`, `price`, `discount`, `sales`, `hot`, `recommend`, `actor`, `beginTime`, `time`, `typeId`, `fileIds`, `userId`, `level`, `countrys`, `typeNames`) VALUES (10, 'The Mermaid', 'The Mermaid', 40.00, 0.80, 0, 0, 'yes', 'Deng Chao,Show Lo', '2016-07-07 12:42:52', '120', 7, '[33]', 1, 1, 'China', 'Comedy');
INSERT INTO `goods_info` (`id`, `name`, `description`, `price`, `discount`, `sales`, `hot`, `recommend`, `actor`, `beginTime`, `time`, `typeId`, `fileIds`, `userId`, `level`, `countrys`, `typeNames`) VALUES (11, 'Harry Potter', 'Harry Potter', 23.00, 0.90, 0, 0, 'yes', 'Daniel Radcliffe', '2023-10-08 15:00:06', '120', 4, '[21]', 1, 1, 'British', 'Fiction');
INSERT INTO `goods_info` (`id`, `name`, `description`, `price`, `discount`, `sales`, `hot`, `recommend`, `actor`, `beginTime`, `time`, `typeId`, `fileIds`, `userId`, `level`, `countrys`, `typeNames`) VALUES (12, 'Redeeming Love', 'Redeeming love', 29.00, 0.90, 0, 0, 'yes', 'Abigail Cowen', '2022-01-21 00:00:00', '120', 2, '[22]', 1, 1, 'America', 'Romance');
INSERT INTO `goods_info` (`id`, `name`, `description`, `price`, `discount`, `sales`, `hot`, `recommend`, `actor`, `beginTime`, `time`, `typeId`, `fileIds`, `userId`, `level`, `countrys`, `typeNames`) VALUES (13, 'Batman', 'Batman', 32.00, 0.80, 23, 0, 'yes', 'Christian Bale', '2022-07-14 00:00:00', '120', 1, '[23]', 1, 1, 'America', 'Action');
INSERT INTO `goods_info` (`id`, `name`, `description`, `price`, `discount`, `sales`, `hot`, `recommend`, `actor`, `beginTime`, `time`, `typeId`, `fileIds`, `userId`, `level`, `countrys`, `typeNames`) VALUES (14, 'The Tomorrow War', 'The Tomorrow War', 32.00, 0.80, 0, 0, 'yes', 'Chris Pratt', '2020-07-10 00:00:00', '120', 3, '[24]', 1, 1, 'America', 'War');
INSERT INTO `goods_info` (`id`, `name`, `description`, `price`, `discount`, `sales`, `hot`, `recommend`, `actor`, `beginTime`, `time`, `typeId`, `fileIds`, `userId`, `level`, `countrys`, `typeNames`) VALUES (15, 'Weird Science', 'Weird Science', 22.00, 0.90, 0, 0, 'yes', 'Kelly LeBrock', '2000-02-09 00:00:00', '90', 5, '[25]', 1, 1, 'America', 'Science');
INSERT INTO `goods_info` (`id`, `name`, `description`, `price`, `discount`, `sales`, `hot`, `recommend`, `actor`, `beginTime`, `time`, `typeId`, `fileIds`, `userId`, `level`, `countrys`, `typeNames`) VALUES (16, 'Frozen 2', 'Frozen 2', 32.00, 0.90, 0, 0, 'yes', 'Kristen Bell', '2019-03-30 00:00:00', '120', 6, '[26]', 1, 1, 'America', 'Animation');
INSERT INTO `goods_info` (`id`, `name`, `description`, `price`, `discount`, `sales`, `hot`, `recommend`, `actor`, `beginTime`, `time`, `typeId`, `fileIds`, `userId`, `level`, `countrys`, `typeNames`) VALUES (17, 'Mr Bean', 'Mr Bean', 32.00, 0.90, 0, 0, 'yes', 'Rowan Atkinson', '2020-08-21 00:00:00', '120', 7, '[27]', 1, 1, 'Birtish', 'Comedy');
COMMIT;

-- ----------------------------
-- Table structure for link_info
-- ----------------------------
DROP TABLE IF EXISTS `link_info`;
CREATE TABLE `link_info` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '留言名称',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '链接地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='友情链接信息表';

-- ----------------------------
-- Records of link_info
-- ----------------------------
BEGIN;
INSERT INTO `link_info` (`id`, `name`, `url`) VALUES (1, 'google', 'www.google.com');
INSERT INTO `link_info` (`id`, `name`, `url`) VALUES (2, 'google', 'www.google.com');
INSERT INTO `link_info` (`id`, `name`, `url`) VALUES (3, 'google', 'www.google.com');
INSERT INTO `link_info` (`id`, `name`, `url`) VALUES (4, 'google', 'www.google.com');
INSERT INTO `link_info` (`id`, `name`, `url`) VALUES (5, 'google', 'www.google.com');
INSERT INTO `link_info` (`id`, `name`, `url`) VALUES (6, 'google', 'www.google.com');
INSERT INTO `link_info` (`id`, `name`, `url`) VALUES (7, 'google', 'www.google.com');
INSERT INTO `link_info` (`id`, `name`, `url`) VALUES (8, 'google', 'www.google.com');
INSERT INTO `link_info` (`id`, `name`, `url`) VALUES (9, 'google', 'www.google.com');
INSERT INTO `link_info` (`id`, `name`, `url`) VALUES (10, 'google', 'www.google.com');
COMMIT;

-- ----------------------------
-- Table structure for message_info
-- ----------------------------
DROP TABLE IF EXISTS `message_info`;
CREATE TABLE `message_info` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '留言名称',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '留言内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '留言时间',
  `parentId` bigint DEFAULT '0' COMMENT '父id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='在线交流信息表';

-- ----------------------------
-- Records of message_info
-- ----------------------------
BEGIN;
INSERT INTO `message_info` (`id`, `name`, `content`, `time`, `parentId`) VALUES (4, 'admin', '111', '2023-10-07 23:36:49', 0);
INSERT INTO `message_info` (`id`, `name`, `content`, `time`, `parentId`) VALUES (5, 'admin1', 'This is a good movie!', '2023-10-08 14:50:10', 0);
INSERT INTO `message_info` (`id`, `name`, `content`, `time`, `parentId`) VALUES (6, 'admin1', 'I want to watch it again!', '2023-10-08 14:50:33', 0);
INSERT INTO `message_info` (`id`, `name`, `content`, `time`, `parentId`) VALUES (7, 'admin1', 'Too bad about the movie.', '2023-10-10 19:07:44', 0);
INSERT INTO `message_info` (`id`, `name`, `content`, `time`, `parentId`) VALUES (8, 'user1', 'good movie!\n', '2023-10-10 19:15:22', 0);
COMMIT;

-- ----------------------------
-- Table structure for nx_system_file_info
-- ----------------------------
DROP TABLE IF EXISTS `nx_system_file_info`;
CREATE TABLE `nx_system_file_info` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `originName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '原始文件名',
  `fileName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '存储文件名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='文件信息表';

-- ----------------------------
-- Records of nx_system_file_info
-- ----------------------------
BEGIN;
INSERT INTO `nx_system_file_info` (`id`, `originName`, `fileName`) VALUES (21, 'Harry Potter.jpeg', 'Harry Potter1696741244571.jpeg');
INSERT INTO `nx_system_file_info` (`id`, `originName`, `fileName`) VALUES (22, 'Redeeming Love.jpg', 'Redeeming Love1696742916222.jpg');
INSERT INTO `nx_system_file_info` (`id`, `originName`, `fileName`) VALUES (23, 'Batman.jpeg', 'Batman1696743037769.jpeg');
INSERT INTO `nx_system_file_info` (`id`, `originName`, `fileName`) VALUES (24, 'The Tomorrow War.jpeg', 'The Tomorrow War1696743197325.jpeg');
INSERT INTO `nx_system_file_info` (`id`, `originName`, `fileName`) VALUES (25, 'Weird Science.webp', 'Weird Science1696743451513.webp');
INSERT INTO `nx_system_file_info` (`id`, `originName`, `fileName`) VALUES (26, 'Frozen2.png', 'Frozen21696743576678.png');
INSERT INTO `nx_system_file_info` (`id`, `originName`, `fileName`) VALUES (27, 'Bean.jpg', 'Bean1696743886224.jpg');
INSERT INTO `nx_system_file_info` (`id`, `originName`, `fileName`) VALUES (28, 'Between Worlds.jpeg', 'Between Worlds1696758379992.jpeg');
INSERT INTO `nx_system_file_info` (`id`, `originName`, `fileName`) VALUES (29, 'Code Name- Zebra.jpeg', 'Code Name- Zebra1696758563703.jpeg');
INSERT INTO `nx_system_file_info` (`id`, `originName`, `fileName`) VALUES (30, 'Code Name- Zebra.jpeg', 'Code Name- Zebra1696769397947.jpeg');
INSERT INTO `nx_system_file_info` (`id`, `originName`, `fileName`) VALUES (31, 'Wolf Warrior 2.jpg', 'Wolf Warrior 21696769588744.jpg');
INSERT INTO `nx_system_file_info` (`id`, `originName`, `fileName`) VALUES (32, 'Between Worlds.jpeg', 'Between Worlds1696769826810.jpeg');
INSERT INTO `nx_system_file_info` (`id`, `originName`, `fileName`) VALUES (33, 'The Mermaid .jpeg', 'The Mermaid 1696770027495.jpeg');
COMMIT;

-- ----------------------------
-- Table structure for order_goods_rel
-- ----------------------------
DROP TABLE IF EXISTS `order_goods_rel`;
CREATE TABLE `order_goods_rel` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `orderId` bigint DEFAULT NULL COMMENT '订单ID',
  `goodsId` bigint NOT NULL DEFAULT '0' COMMENT '所属商品',
  `count` int DEFAULT NULL COMMENT '商品数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='订单商品关系映射表';

-- ----------------------------
-- Records of order_goods_rel
-- ----------------------------
BEGIN;
INSERT INTO `order_goods_rel` (`id`, `orderId`, `goodsId`, `count`) VALUES (2, 2, 2, 10);
INSERT INTO `order_goods_rel` (`id`, `orderId`, `goodsId`, `count`) VALUES (4, 4, 5, 2);
INSERT INTO `order_goods_rel` (`id`, `orderId`, `goodsId`, `count`) VALUES (5, 5, 7, 2);
INSERT INTO `order_goods_rel` (`id`, `orderId`, `goodsId`, `count`) VALUES (6, 6, 1, 2);
INSERT INTO `order_goods_rel` (`id`, `orderId`, `goodsId`, `count`) VALUES (7, 7, 1, 1);
INSERT INTO `order_goods_rel` (`id`, `orderId`, `goodsId`, `count`) VALUES (9, 9, 13, 2);
COMMIT;

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `orderId` bigint DEFAULT NULL COMMENT '订单ID',
  `totalPrice` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '总价格',
  `userId` bigint NOT NULL DEFAULT '0' COMMENT '所属用户',
  `level` int DEFAULT NULL COMMENT '用户等级',
  `linkAddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '联系地址',
  `linkPhone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '联系电话',
  `linkMan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '联系人',
  `createTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '创建时间',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '未发货' COMMENT '订单状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='商品订单信息表';

-- ----------------------------
-- Records of order_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for seat_info
-- ----------------------------
DROP TABLE IF EXISTS `seat_info`;
CREATE TABLE `seat_info` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '座位位置',
  `goodsId` bigint NOT NULL COMMENT '商品id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='座位信息表';

-- ----------------------------
-- Records of seat_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for type_info
-- ----------------------------
DROP TABLE IF EXISTS `type_info`;
CREATE TABLE `type_info` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '类型名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '类型描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='商品类别表';

-- ----------------------------
-- Records of type_info
-- ----------------------------
BEGIN;
INSERT INTO `type_info` (`id`, `name`, `description`) VALUES (1, 'Action', 'Action movie');
INSERT INTO `type_info` (`id`, `name`, `description`) VALUES (2, 'Romance', 'Romance movie');
INSERT INTO `type_info` (`id`, `name`, `description`) VALUES (3, 'War', 'War movie');
INSERT INTO `type_info` (`id`, `name`, `description`) VALUES (4, 'Fiction', 'Fiction movie');
INSERT INTO `type_info` (`id`, `name`, `description`) VALUES (5, 'Science', 'Popular science movie');
INSERT INTO `type_info` (`id`, `name`, `description`) VALUES (6, 'Animation', 'Animation movie');
INSERT INTO `type_info` (`id`, `name`, `description`) VALUES (7, 'Comedy', 'Comedy movie');
COMMIT;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `nickName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `age` int DEFAULT NULL COMMENT '年龄',
  `birthday` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生日',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `cardId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证',
  `account` double(10,2) DEFAULT NULL COMMENT '余额',
  `level` int NOT NULL DEFAULT '2' COMMENT '权限等级',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='用户信息表';

-- ----------------------------
-- Records of user_info
-- ----------------------------
BEGIN;
INSERT INTO `user_info` (`id`, `name`, `password`, `nickName`, `sex`, `age`, `birthday`, `phone`, `address`, `email`, `cardId`, `account`, `level`) VALUES (1, 'name1', 'e10adc3949ba59abbe56e057f20f883e', 'name1', 'male', 22, '2000-10-17 00:00:00', '0420740485', 'Ultimo', 'name1@gmail.com', '342425199001116372', 0.00, 2);
INSERT INTO `user_info` (`id`, `name`, `password`, `nickName`, `sex`, `age`, `birthday`, `phone`, `address`, `email`, `cardId`, `account`, `level`) VALUES (2, 'name2', 'e10adc3949ba59abbe56e057f20f883e', 'user2', 'male', 23, '2020-11-07 12:42:52', '0420759584', 'Burwood', 'name2@gmail.com', '342425199001116376', 0.00, 2);
INSERT INTO `user_info` (`id`, `name`, `password`, `nickName`, `sex`, `age`, `birthday`, `phone`, `address`, `email`, `cardId`, `account`, `level`) VALUES (11, 'name3', 'e10adc3949ba59abbe56e057f20f883e', 'name3', 'female', 22, '2000-02-02 00:00:00', '0429384723', '123 street', 'name3@gmail.com', '342425199001116376', NULL, 2);
INSERT INTO `user_info` (`id`, `name`, `password`, `nickName`, `sex`, `age`, `birthday`, `phone`, `address`, `email`, `cardId`, `account`, `level`) VALUES (12, 'user1', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
