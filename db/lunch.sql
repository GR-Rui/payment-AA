-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- 主机: localhost
-- 生成日期: 2012 年 05 月 16 日 02:32
-- 服务器版本: 5.0.51
-- PHP 版本: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 数据库: `lunch`
-- 

-- --------------------------------------------------------

-- 
-- 表的结构 `order`
-- 

CREATE TABLE `order` (
  `order_id` int(10) unsigned NOT NULL auto_increment,
  `order_user` varchar(100) NOT NULL,
  `order_total` varchar(20) NOT NULL default '0',
  `order_address` varchar(100) default NULL,
  `order_time` datetime NOT NULL,
  `order_related_users` varchar(500) default NULL,
  `order_aver` varchar(20) NOT NULL default '0',
  `order_dec` text,
  PRIMARY KEY  (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=180 ;

-- 
-- 导出表中的数据 `order`
-- 

INSERT INTO `order` VALUES (1, 'yongbiao.chen', '55', '农家小厨', '2011-11-24 20:47:26', 'rui.gao,tao.zhou,yongbiao.chen', '18.33', '2011-11-24 20:47:26,yongbiao.chen,55,农家小厨,rui.gao,tao.zhou,yongbiao.chen');
INSERT INTO `order` VALUES (15, 'yongbiao.chen', '59', '农家小厨', '2011-11-30 13:27:03', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai', '14.75', '2011-11-30 13:27:03,yongbiao.chen,59,农家小厨,rui.gao,tao.zhou,yongbiao.chen,luli.dai');
INSERT INTO `order` VALUES (16, 'yongbiao.chen', '-50', '支出', '2011-12-01 14:38:02', 'yongbiao.chen', '0', '2011-12-01 14:38:02,yongbiao.chen,-50,支出,yongbiao.chen');
INSERT INTO `order` VALUES (13, 'tao.zhou', '39.5', '水饺馆', '2011-11-29 20:00:32', 'rui.gao,tao.zhou,yongbiao.chen', '13.17', '2011-11-29 20:00:32,tao.zhou,39.5,水饺馆,rui.gao,tao.zhou,yongbiao.chen');
INSERT INTO `order` VALUES (12, 'rui.gao', '57', '农家小厨', '2011-11-29 13:10:24', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai', '14.25', '2011-11-29 13:10:24,rui.gao,57,农家小厨,rui.gao,tao.zhou,yongbiao.chen,luli.dai');
INSERT INTO `order` VALUES (18, 'tao.zhou', '57', '农家小厨', '2011-12-02 13:14:10', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai', '14.25', '2011-12-02 13:14:10,tao.zhou,57,农家小厨,rui.gao,tao.zhou,yongbiao.chen,luli.dai');
INSERT INTO `order` VALUES (19, 'rui.gao', '50', '存入', '2011-12-02 13:25:18', 'rui.gao', '0', '2011-12-02 13:25:18,rui.gao,50,存入,rui.gao');
INSERT INTO `order` VALUES (20, 'luli.dai', '68', '农家小厨', '2011-12-05 14:01:32', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai', '17', '2011-12-05 14:01:32,luli.dai,68,农家小厨,rui.gao,tao.zhou,yongbiao.chen,luli.dai');
INSERT INTO `order` VALUES (21, 'yongbiao.chen', '55', '农家小厨', '2011-12-06 13:05:32', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai', '13.75', '2011-12-06 13:05:32,yongbiao.chen,55,农家小厨,rui.gao,tao.zhou,yongbiao.chen,luli.dai');
INSERT INTO `order` VALUES (22, 'rui.gao', '55', '农家小厨', '2011-12-12 13:03:19', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai', '13.75', '2011-12-12 13:03:19,rui.gao,55,农家小厨,rui.gao,tao.zhou,yongbiao.chen,luli.dai');
INSERT INTO `order` VALUES (27, 'neil.mao', '72', '阿贵嫂家常菜', '2011-12-13 13:28:15', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao', '14.4', '2011-12-13 13:28:15,neil.mao,72,阿贵嫂家常菜,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao');
INSERT INTO `order` VALUES (28, 'luli.dai', '52', '阿贵嫂家常菜', '2011-12-15 13:13:02', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao', '10.4', '2011-12-15 13:13:02,luli.dai,52,阿贵嫂家常菜,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao');
INSERT INTO `order` VALUES (29, 'rui.gao', '58', '阿贵嫂家常菜', '2011-12-19 14:22:42', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao', '11.6', '2011-12-19 14:22:42,rui.gao,58,阿贵嫂家常菜,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao');
INSERT INTO `order` VALUES (30, 'yongbiao.chen', '38', '阿贵嫂', '2011-12-20 12:45:07', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai', '9.5', '2011-12-20 12:45:07,yongbiao.chen,38,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai');
INSERT INTO `order` VALUES (31, 'tao.zhou', '60', '阿贵嫂', '2011-12-21 13:21:25', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,vincent.lai', '12', '2011-12-21 13:21:25,tao.zhou,60,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,vincent.lai');
INSERT INTO `order` VALUES (32, 'rui.gao', '58', '阿贵嫂', '2011-12-22 13:02:57', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao', '11.6', '2011-12-22 13:02:57,rui.gao,58,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao');
INSERT INTO `order` VALUES (33, 'rui.gao', '78', '农家小厨', '2011-12-23 13:12:45', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,vincent.lai,weiming.mao', '11.14', '2011-12-23 13:12:45,rui.gao,78,农家小厨,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,vincent.lai,weiming.mao');
INSERT INTO `order` VALUES (34, 'tao.zhou', '44', '阿贵嫂', '2011-12-26 13:06:50', 'rui.gao,tao.zhou,luli.dai,neil.mao', '11', '2011-12-26 13:06:50,tao.zhou,44,阿贵嫂,rui.gao,tao.zhou,luli.dai,neil.mao');
INSERT INTO `order` VALUES (36, 'luli.dai', '50', '阿贵嫂', '2011-12-27 13:04:16', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai', '12.5', '2011-12-27 13:04:16,luli.dai,50,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai');
INSERT INTO `order` VALUES (37, 'rui.gao', '46', '阿贵嫂', '2011-12-28 13:05:51', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai', '11.5', '2011-12-28 13:05:51,rui.gao,46,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai');
INSERT INTO `order` VALUES (38, 'neil.mao', '85', '阿贵嫂', '2011-12-29 13:13:54', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,jing.ban', '14.17', '2011-12-29 13:13:54,neil.mao,85,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,jing.ban');
INSERT INTO `order` VALUES (39, 'rui.gao', '83', '农家小厨', '2011-12-31 14:09:33', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,jia.xu', '16.6', '2011-12-31 14:09:33,rui.gao,83,农家小厨,rui.gao,tao.zhou,yongbiao.chen,luli.dai,jia.xu');
INSERT INTO `order` VALUES (40, 'luli.dai', '30', '阿贵嫂', '2011-12-31 14:13:01', 'tao.zhou,luli.dai', '15', '2011-12-31 14:13:01,luli.dai,30,阿贵嫂,tao.zhou,luli.dai');
INSERT INTO `order` VALUES (41, 'yongbiao.chen', '100', '存入', '2012-01-04 14:20:04', 'yongbiao.chen', '0', '2012-01-04 14:20:04,yongbiao.chen,100,存入,yongbiao.chen');
INSERT INTO `order` VALUES (43, 'vincent.lai', '23', '存入', '2012-01-04 14:29:56', 'vincent.lai', '0', '2012-01-04 14:29:56,vincent.lai,23,存入,vincent.lai');
INSERT INTO `order` VALUES (45, 'rui.gao', '-123', '支出', '2012-01-04 14:40:27', 'rui.gao', '0', '2012-01-04 14:40:27,rui.gao,-123,支出,rui.gao');
INSERT INTO `order` VALUES (46, 'neil.mao', '-50', '支出', '2012-01-04 14:56:56', 'neil.mao', '0', '2012-01-04 14:56:56,neil.mao,-50,支出,neil.mao');
INSERT INTO `order` VALUES (47, 'rui.gao', '50', '存入', '2012-01-04 15:02:30', 'rui.gao', '0', '2012-01-04 15:02:30,rui.gao,50,存入,rui.gao');
INSERT INTO `order` VALUES (48, 'yongbiao.chen', '76', '阿贵嫂', '2012-01-05 15:14:02', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,weiming.mao', '12.67', '2012-01-05 15:14:02,yongbiao.chen,76,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,weiming.mao');
INSERT INTO `order` VALUES (49, 'luli.dai', '54', '阿贵嫂', '2012-01-06 13:30:15', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai', '13.5', '2012-01-06 13:30:15,luli.dai,54,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai');
INSERT INTO `order` VALUES (50, 'tao.zhou', '42', '阿贵嫂', '2012-01-09 12:58:00', 'rui.gao,tao.zhou,luli.dai,neil.mao', '10.5', '2012-01-09 12:58:00,tao.zhou,42,阿贵嫂,rui.gao,tao.zhou,luli.dai,neil.mao');
INSERT INTO `order` VALUES (51, 'neil.mao', '46', '阿贵嫂', '2012-01-10 13:10:06', 'tao.zhou,yongbiao.chen,luli.dai,neil.mao', '11.5', '2012-01-10 13:10:06,neil.mao,46,阿贵嫂,tao.zhou,yongbiao.chen,luli.dai,neil.mao');
INSERT INTO `order` VALUES (52, 'luli.dai', '58', '阿贵嫂', '2012-01-11 14:18:16', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao', '11.6', '2012-01-11 14:18:16,luli.dai,58,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao');
INSERT INTO `order` VALUES (53, 'rui.gao', '53', '阿贵嫂', '2012-01-12 13:03:21', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao', '10.6', '2012-01-12 13:03:21,rui.gao,53,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao');
INSERT INTO `order` VALUES (54, 'rui.gao', '85', '阿贵嫂', '2012-01-13 13:16:37', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,weiming.mao,maya', '12.14', '2012-01-13 13:16:37,rui.gao,85,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,weiming.mao,maya');
INSERT INTO `order` VALUES (55, 'rui.gao', '34', '阿贵嫂', '2012-01-14 21:12:53', 'rui.gao,tao.zhou', '17', '2012-01-14 21:12:53,rui.gao,34,阿贵嫂,rui.gao,tao.zhou');
INSERT INTO `order` VALUES (56, 'luli.dai', '43', '阿贵嫂', '2012-01-16 13:05:05', 'rui.gao,tao.zhou,luli.dai', '14.33', '2012-01-16 13:05:05,luli.dai,43,阿贵嫂,rui.gao,tao.zhou,luli.dai');
INSERT INTO `order` VALUES (57, 'rui.gao', '32', '水饺馆', '2012-01-17 12:45:24', 'rui.gao,tao.zhou', '16', '2012-01-17 12:45:24,rui.gao,32,水饺馆,rui.gao,tao.zhou');
INSERT INTO `order` VALUES (58, 'rui.gao', '-100', '支出', '2012-01-19 13:18:00', 'rui.gao', '0', '2012-01-19 13:18:00,rui.gao,-100,支出,rui.gao');
INSERT INTO `order` VALUES (59, 'tao.zhou', '100', '存入', '2012-01-19 13:18:41', 'tao.zhou', '0', '2012-01-19 13:18:41,tao.zhou,100,存入,tao.zhou');
INSERT INTO `order` VALUES (60, 'neil.mao', '65', '阿贵嫂', '2012-01-31 13:03:20', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao', '13', '2012-01-31 13:03:20,neil.mao,65,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao');
INSERT INTO `order` VALUES (61, 'yongbiao.chen', '48', '阿贵嫂', '2012-02-01 13:33:30', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai', '12', '2012-02-01 13:33:30,yongbiao.chen,48,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai');
INSERT INTO `order` VALUES (62, 'neil.mao', '77', '淞虹简餐', '2012-02-02 13:25:18', 'rui.gao,yongbiao.chen,neil.mao,maya', '19.25', '2012-02-02 13:25:18,neil.mao,77,淞虹简餐,rui.gao,yongbiao.chen,neil.mao,maya');
INSERT INTO `order` VALUES (63, 'luli.dai', '74', '阿贵嫂', '2012-02-03 13:06:25', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,vincent.lai,maya', '12.33', '2012-02-03 13:06:25,luli.dai,74,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,vincent.lai,maya');
INSERT INTO `order` VALUES (65, 'tao.zhou', '42', '阿贵嫂', '2012-02-06 13:08:45', 'rui.gao,tao.zhou,yongbiao.chen,neil.mao', '10.5', '2012-02-06 13:08:45,tao.zhou,42,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,neil.mao');
INSERT INTO `order` VALUES (66, 'tao.zhou', '84', '阿贵嫂', '2012-02-07 13:03:55', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,vincent.lai', '14', '2012-02-07 13:03:55,tao.zhou,84,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,vincent.lai');
INSERT INTO `order` VALUES (67, 'rui.gao', '56', '阿贵嫂', '2012-02-08 13:04:50', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,vincent.lai', '9.33', '2012-02-08 13:04:50,rui.gao,56,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,vincent.lai');
INSERT INTO `order` VALUES (69, 'rui.gao', '70', '阿贵嫂', '2012-02-09 13:03:04', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao', '14', '2012-02-09 13:03:04,rui.gao,70,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao');
INSERT INTO `order` VALUES (70, 'yongbiao.chen', '60', '阿贵嫂', '2012-02-10 13:14:32', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao', '12', '2012-02-10 13:14:32,yongbiao.chen,60,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao');
INSERT INTO `order` VALUES (71, 'rui.gao', '57', '阿贵嫂', '2012-02-13 13:14:38', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao', '11.4', '2012-02-13 13:14:38,rui.gao,57,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao');
INSERT INTO `order` VALUES (72, 'yongbiao.chen', '52', '阿贵嫂', '2012-02-14 15:10:29', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai', '13', '2012-02-14 15:10:29,yongbiao.chen,52,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai');
INSERT INTO `order` VALUES (73, 'tao.zhou', '50', '阿贵嫂', '2012-02-15 13:01:57', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai', '12.5', '2012-02-15 13:01:57,tao.zhou,50,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai');
INSERT INTO `order` VALUES (74, 'luli.dai', '54', '阿贵嫂', '2012-02-16 13:13:54', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai', '13.5', '2012-02-16 13:13:54,luli.dai,54,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai');
INSERT INTO `order` VALUES (76, 'rui.gao', '65', '阿贵嫂', '2012-02-17 13:56:17', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,weiming.mao', '13', '2012-02-17 13:56:17,rui.gao,65,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,weiming.mao');
INSERT INTO `order` VALUES (77, 'rui.gao', '69', '农家小厨', '2012-02-20 13:15:45', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,vincent.lai', '11.5', '2012-02-20 13:15:45,rui.gao,69,农家小厨,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,vincent.lai');
INSERT INTO `order` VALUES (78, 'yongbiao.chen', '49', '阿贵嫂', '2012-02-21 13:43:33', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao', '9.8', '2012-02-21 13:43:33,yongbiao.chen,49,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao');
INSERT INTO `order` VALUES (79, 'rui.gao', '10', '存入', '2012-02-21 15:15:09', 'rui.gao', '0', '2012-02-21 15:15:09,rui.gao,10,存入,rui.gao');
INSERT INTO `order` VALUES (80, 'rui.gao', '-10', '支出', '2012-02-21 15:51:42', 'rui.gao', '0', '2012-02-21 15:51:42,rui.gao,-10,支出,rui.gao');
INSERT INTO `order` VALUES (81, 'luli.dai', '55', '阿贵嫂', '2012-02-22 13:01:54', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao', '11', '2012-02-22 13:01:54,luli.dai,55,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao');
INSERT INTO `order` VALUES (82, 'weiming.mao', '90', '存入', '2012-02-22 13:56:35', 'weiming.mao', '0', '2012-02-22 13:56:35,weiming.mao,90,存入,weiming.mao');
INSERT INTO `order` VALUES (83, 'rui.gao', '41.05', '支出', '2012-02-22 14:11:03', 'rui.gao', '0', '2012-02-22 14:11:03,rui.gao,41.05,支出,rui.gao');
INSERT INTO `order` VALUES (84, 'rui.gao', '-82.1', '支出', '2012-02-22 14:12:33', 'rui.gao', '0', '2012-02-22 14:12:33,rui.gao,-82.1,支出,rui.gao');
INSERT INTO `order` VALUES (85, 'rui.gao', '63', '阿贵嫂', '2012-02-23 13:06:04', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,weiming.mao', '12.6', '2012-02-23 13:06:04,rui.gao,63,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,weiming.mao');
INSERT INTO `order` VALUES (86, 'rui.gao', '-48.95', '支出', '2012-02-23 13:39:11', 'rui.gao', '0', '2012-02-23 13:39:11,rui.gao,-48.95,支出,rui.gao');
INSERT INTO `order` VALUES (87, 'neil.mao', '64', '阿贵嫂', '2012-02-24 12:59:53', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,weiming.mao', '10.67', '2012-02-24 12:59:53,neil.mao,64,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,weiming.mao');
INSERT INTO `order` VALUES (88, 'yongbiao.chen', '50', '阿贵嫂', '2012-02-27 13:31:55', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai', '12.5', '2012-02-27 13:31:55,yongbiao.chen,50,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai');
INSERT INTO `order` VALUES (89, 'luli.dai', '65', '阿贵嫂', '2012-02-28 13:00:12', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao', '13', '2012-02-28 13:00:12,luli.dai,65,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao');
INSERT INTO `order` VALUES (90, 'rui.gao', '50', '阿贵嫂', '2012-02-29 13:14:19', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai', '12.5', '2012-02-29 13:14:19,rui.gao,50,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai');
INSERT INTO `order` VALUES (91, 'yongbiao.chen', '84', '阿贵嫂', '2012-03-01 12:55:48', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,weiming.mao', '14', '2012-03-01 12:55:48,yongbiao.chen,84,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,weiming.mao');
INSERT INTO `order` VALUES (94, 'rui.gao', '-50', '支出', '2012-03-01 13:16:58', 'rui.gao', '0', '2012-03-01 13:16:58,rui.gao,-50,支出,rui.gao');
INSERT INTO `order` VALUES (93, 'vincent.lai', '50', '存入', '2012-03-01 13:10:19', 'vincent.lai', '0', '2012-03-01 13:10:19,vincent.lai,50,存入,vincent.lai');
INSERT INTO `order` VALUES (95, 'neil.mao', '57', '阿贵嫂', '2012-03-02 13:18:18', 'rui.gao,tao.zhou,luli.dai,neil.mao,weiming.mao', '11.4', '2012-03-02 13:18:18,neil.mao,57,阿贵嫂,rui.gao,tao.zhou,luli.dai,neil.mao,weiming.mao');
INSERT INTO `order` VALUES (96, 'maya', '43', '存入', '2012-03-05 13:00:05', 'maya', '0', '2012-03-05 13:00:05,maya,43,存入,maya');
INSERT INTO `order` VALUES (97, 'tao.zhou', '61', '阿贵嫂', '2012-03-05 13:01:46', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao', '12.2', '2012-03-05 13:01:46,tao.zhou,61,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao');
INSERT INTO `order` VALUES (98, 'tao.zhou', '200', '存入', '2012-03-05 13:06:42', 'tao.zhou', '0', '2012-03-05 13:06:42,tao.zhou,200,阿贵嫂,tao.zhou');
INSERT INTO `order` VALUES (99, 'rui.gao', '-243', '支出', '2012-03-05 13:10:50', 'rui.gao', '0', '2012-03-05 13:10:50,rui.gao,-243,支出,rui.gao');
INSERT INTO `order` VALUES (100, 'rui.gao', '57', '阿贵嫂', '2012-03-06 12:51:48', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao', '11.4', '2012-03-06 12:51:48,rui.gao,57,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao');
INSERT INTO `order` VALUES (101, 'luli.dai', '53', '阿贵嫂', '2012-03-07 13:06:49', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao', '10.6', '2012-03-07 13:06:49,luli.dai,53,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao');
INSERT INTO `order` VALUES (102, 'rui.gao', '78', '阿贵嫂', '2012-03-08 13:04:52', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,vincent.lai', '13', '2012-03-08 13:04:52,rui.gao,78,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,vincent.lai');
INSERT INTO `order` VALUES (103, 'luli.dai', '50', '阿贵嫂', '2012-03-09 13:18:39', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,weiming.mao', '10', '2012-03-09 13:18:39,luli.dai,50,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,weiming.mao');
INSERT INTO `order` VALUES (104, 'rui.gao', '40', '紫缘', '2012-03-12 13:15:28', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao', '8', '2012-03-12 13:15:28,rui.gao,40,紫缘,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao');
INSERT INTO `order` VALUES (105, 'rui.gao', '66', '阿贵嫂', '2012-03-13 12:53:36', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,maya', '11', '2012-03-13 12:53:36,rui.gao,66,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,maya');
INSERT INTO `order` VALUES (106, 'luli.dai', '60', '阿贵嫂', '2012-03-14 13:03:27', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao', '12', '2012-03-14 13:03:27,luli.dai,60,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao');
INSERT INTO `order` VALUES (107, 'tao.zhou', '45', '存入', '2012-03-14 14:42:59', 'tao.zhou', '0', '2012-03-14 14:42:59,tao.zhou,45,存入,tao.zhou');
INSERT INTO `order` VALUES (108, 'rui.gao', '-45', '支出', '2012-03-14 14:43:22', 'rui.gao', '0', '2012-03-14 14:43:22,rui.gao,-45,支出,rui.gao');
INSERT INTO `order` VALUES (109, 'yongbiao.chen', '48', '阿贵嫂', '2012-03-15 13:12:48', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai', '12', '2012-03-15 13:12:48,yongbiao.chen,48,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai');
INSERT INTO `order` VALUES (110, 'luli.dai', '70', '阿贵嫂', '2012-03-16 12:59:49', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,weiming.mao', '11.67', '2012-03-16 12:59:49,luli.dai,70,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,weiming.mao');
INSERT INTO `order` VALUES (111, 'rui.gao', '77', '紫缘', '2012-03-18 20:14:17', 'rui.gao,tao.zhou,luli.dai', '25.67', '2012-03-18 20:14:17,rui.gao,77,紫缘,rui.gao,tao.zhou,luli.dai');
INSERT INTO `order` VALUES (112, 'neil.mao', '70', '阿贵嫂', '2012-03-19 12:57:26', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,weiming.mao', '11.67', '2012-03-19 12:57:26,neil.mao,70,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,weiming.mao');
INSERT INTO `order` VALUES (113, 'weiming.mao', '100', '存入', '2012-03-19 13:09:51', 'weiming.mao', '0', '2012-03-19 13:09:51,weiming.mao,100,存入,weiming.mao');
INSERT INTO `order` VALUES (114, 'rui.gao', '-100', '支出', '2012-03-19 13:11:03', 'rui.gao', '0', '2012-03-19 13:11:03,rui.gao,-100,支出,rui.gao');
INSERT INTO `order` VALUES (115, 'yongbiao.chen', '54', '紫缘', '2012-03-20 13:10:15', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai', '13.5', '2012-03-20 13:10:15,yongbiao.chen,54,紫缘,rui.gao,tao.zhou,yongbiao.chen,luli.dai');
INSERT INTO `order` VALUES (116, 'rui.gao', '57', '阿贵嫂', '2012-03-21 12:56:50', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao', '11.4', '2012-03-21 12:56:50,rui.gao,57,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao');
INSERT INTO `order` VALUES (117, 'rui.gao', '70', '阿贵嫂', '2012-03-22 12:56:23', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,weiming.mao', '11.67', '2012-03-22 12:56:23,rui.gao,70,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,weiming.mao');
INSERT INTO `order` VALUES (118, 'tao.zhou', '57', '阿贵嫂', '2012-03-26 12:51:38', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao', '11.4', '2012-03-26 12:51:38,tao.zhou,57,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao');
INSERT INTO `order` VALUES (119, 'yongbiao.chen', '60', '紫缘', '2012-03-27 13:06:26', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai', '15', '2012-03-27 13:06:26,yongbiao.chen,60,紫缘,rui.gao,tao.zhou,yongbiao.chen,luli.dai');
INSERT INTO `order` VALUES (120, 'luli.dai', '50', '阿贵嫂（周五）', '2012-03-27 13:10:18', 'tao.zhou,yongbiao.chen,luli.dai,weiming.mao', '12.5', '2012-03-27 13:10:18,luli.dai,50,阿贵嫂（周五）,tao.zhou,yongbiao.chen,luli.dai,weiming.mao');
INSERT INTO `order` VALUES (121, 'rui.gao', '60', '阿贵嫂', '2012-03-28 12:47:22', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao', '12', '2012-03-28 12:47:22,rui.gao,60,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao');
INSERT INTO `order` VALUES (122, 'rui.gao', '53', '阿贵嫂', '2012-03-29 12:46:03', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao', '10.6', '2012-03-29 12:46:03,rui.gao,53,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao');
INSERT INTO `order` VALUES (123, 'yongbiao.chen', '60', '紫缘', '2012-03-30 13:02:35', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,weiming.mao', '12', '2012-03-30 13:02:35,yongbiao.chen,60,紫缘,rui.gao,tao.zhou,yongbiao.chen,luli.dai,weiming.mao');
INSERT INTO `order` VALUES (124, 'tao.zhou', '60', '阿贵嫂', '2012-04-02 13:07:42', 'rui.gao,tao.zhou,luli.dai,neil.mao,jing.ban', '12', '2012-04-02 13:07:42,tao.zhou,60,阿贵嫂,rui.gao,tao.zhou,luli.dai,neil.mao,jing.ban');
INSERT INTO `order` VALUES (125, 'luli.dai', '70', '紫缘', '2012-04-03 13:02:56', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai', '17.5', '2012-04-03 13:02:56,luli.dai,70,紫缘,rui.gao,tao.zhou,yongbiao.chen,luli.dai');
INSERT INTO `order` VALUES (126, 'vincent.lai', '10', '存入', '2012-04-05 09:52:20', 'vincent.lai', '0', '2012-04-05 09:52:20,vincent.lai,10,存入,vincent.lai');
INSERT INTO `order` VALUES (127, 'rui.gao', '-10', '支出', '2012-04-05 09:52:44', 'rui.gao', '0', '2012-04-05 09:52:44,rui.gao,-10,支出,rui.gao');
INSERT INTO `order` VALUES (128, 'neil.mao', '80', '阿贵嫂', '2012-04-05 12:57:29', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,jing.ban,erin.xu', '11.43', '2012-04-05 12:57:29,neil.mao,80,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,jing.ban,erin.xu');
INSERT INTO `order` VALUES (129, 'rui.gao', '100', '阿贵嫂', '2012-04-06 13:12:09', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,weiming.mao,jing.ban,erin.xu,alex.guo', '11.11', '2012-04-06 13:12:09,rui.gao,100,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,weiming.mao,jing.ban,erin.xu,alex.guo');
INSERT INTO `order` VALUES (130, 'jing.ban', '50', '存入', '2012-04-09 12:56:59', 'jing.ban', '0', '2012-04-09 12:56:59,jing.ban,50,存入,jing.ban');
INSERT INTO `order` VALUES (131, 'erin.xu', '78', '阿贵嫂', '2012-04-09 12:58:13', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,jing.ban,erin.xu', '13', '2012-04-09 12:58:13,erin.xu,78,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,jing.ban,erin.xu');
INSERT INTO `order` VALUES (132, 'rui.gao', '-50', '支出', '2012-04-09 13:01:47', 'rui.gao', '0', '2012-04-09 13:01:47,rui.gao,-50,支出,rui.gao');
INSERT INTO `order` VALUES (133, 'yongbiao.chen', '69', '紫缘', '2012-04-10 13:03:15', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,erin.xu', '13.8', '2012-04-10 13:03:15,yongbiao.chen,69,紫缘,rui.gao,tao.zhou,yongbiao.chen,luli.dai,erin.xu');
INSERT INTO `order` VALUES (134, 'luli.dai', '75', '阿贵嫂', '2012-04-11 12:59:09', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,maya,erin.xu', '10.71', '2012-04-11 12:59:09,luli.dai,75,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,maya,erin.xu');
INSERT INTO `order` VALUES (135, 'tao.zhou', '67', '阿贵嫂', '2012-04-12 13:07:13', 'rui.gao,tao.zhou,luli.dai,jing.ban,erin.xu', '13.4', '2012-04-12 13:07:13,tao.zhou,67,阿贵嫂,rui.gao,tao.zhou,luli.dai,jing.ban,erin.xu');
INSERT INTO `order` VALUES (136, 'tao.zhou', '90', '存入', '2012-04-12 13:13:08', 'tao.zhou', '0', '2012-04-12 13:13:08,tao.zhou,90,存入,tao.zhou');
INSERT INTO `order` VALUES (137, 'rui.gao', '-90', '支出', '2012-04-12 13:14:38', 'rui.gao', '0', '2012-04-12 13:14:38,rui.gao,-90,支出,rui.gao');
INSERT INTO `order` VALUES (138, 'rui.gao', '85', '阿贵嫂', '2012-04-13 13:01:14', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,jing.ban,erin.xu', '12.14', '2012-04-13 13:01:14,rui.gao,85,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,jing.ban,erin.xu');
INSERT INTO `order` VALUES (139, 'rui.gao', '83', '紫缘', '2012-04-16 13:17:07', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,jing.ban,erin.xu', '11.86', '2012-04-16 13:17:07,rui.gao,83,紫缘,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,jing.ban,erin.xu');
INSERT INTO `order` VALUES (140, 'jing.ban', '50', '存入', '2012-04-17 13:44:31', 'jing.ban', '0', '2012-04-17 13:44:31,jing.ban,50,存入,jing.ban');
INSERT INTO `order` VALUES (141, 'rui.gao', '-50', '支出', '2012-04-17 13:45:29', 'rui.gao', '0', '2012-04-17 13:45:29,rui.gao,-50,支出,rui.gao');
INSERT INTO `order` VALUES (142, 'luli.dai', '66', '农家小厨', '2012-04-17 13:46:40', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,jing.ban,erin.xu', '11', '2012-04-17 13:46:40,luli.dai,66,农家小厨,rui.gao,tao.zhou,yongbiao.chen,luli.dai,jing.ban,erin.xu');
INSERT INTO `order` VALUES (143, 'tao.zhou', '110', '紫缘', '2012-04-18 13:25:48', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,weiming.mao,erin.xu', '15.71', '2012-04-18 13:25:48,tao.zhou,110,紫缘,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,weiming.mao,erin.xu');
INSERT INTO `order` VALUES (144, 'neil.mao', '100', '存入', '2012-04-19 13:00:13', 'neil.mao', '0', '2012-04-19 13:00:13,neil.mao,100,存入,neil.mao');
INSERT INTO `order` VALUES (145, 'erin.xu', '100', '存入', '2012-04-19 13:00:56', 'erin.xu', '0', '2012-04-19 13:00:56,erin.xu,100,存入,erin.xu');
INSERT INTO `order` VALUES (146, 'rui.gao', '-200', '支出', '2012-04-19 13:01:59', 'rui.gao', '0', '2012-04-19 13:01:59,rui.gao,-200,支出,rui.gao');
INSERT INTO `order` VALUES (147, 'rui.gao', '85', '紫缘', '2012-04-19 13:02:56', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,weiming.mao,erin.xu', '12.14', '2012-04-19 13:02:56,rui.gao,85,紫缘,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,weiming.mao,erin.xu');
INSERT INTO `order` VALUES (148, 'luli.dai', '86', '紫缘', '2012-04-20 13:00:36', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,weiming.mao,erin.xu', '12.29', '2012-04-20 13:00:36,luli.dai,86,紫缘,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,weiming.mao,erin.xu');
INSERT INTO `order` VALUES (149, 'weiming.mao', '100', '存入', '2012-04-20 13:08:51', 'weiming.mao', '0', '2012-04-20 13:08:51,weiming.mao,100,存入,weiming.mao');
INSERT INTO `order` VALUES (150, 'rui.gao', '-100', '支出', '2012-04-20 13:09:37', 'rui.gao', '0', '2012-04-20 13:09:37,rui.gao,-100,支出,rui.gao');
INSERT INTO `order` VALUES (151, 'yongbiao.chen', '79', '紫缘', '2012-04-23 13:02:00', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,jing.ban,erin.xu', '11.29', '2012-04-23 13:02:00,yongbiao.chen,79,紫缘,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,jing.ban,erin.xu');
INSERT INTO `order` VALUES (152, 'rui.gao', '60', '紫缘', '2012-04-24 13:03:54', 'rui.gao,tao.zhou,luli.dai,erin.xu', '15', '2012-04-24 13:03:54,rui.gao,60,紫缘,rui.gao,tao.zhou,luli.dai,erin.xu');
INSERT INTO `order` VALUES (153, 'rui.gao', '93', '紫缘', '2012-04-25 12:58:08', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,weiming.mao,erin.xu', '13.29', '2012-04-25 12:58:08,rui.gao,93,紫缘,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,weiming.mao,erin.xu');
INSERT INTO `order` VALUES (154, 'rui.gao', '80', '紫缘', '2012-04-27 13:00:09', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,weiming.mao,erin.xu', '13.33', '2012-04-27 13:00:09,rui.gao,80,紫缘,rui.gao,tao.zhou,yongbiao.chen,luli.dai,weiming.mao,erin.xu');
INSERT INTO `order` VALUES (155, 'rui.gao', '75', '紫缘', '2012-04-28 13:13:39', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,erin.xu', '15', '2012-04-28 13:13:39,rui.gao,75,紫缘,rui.gao,tao.zhou,yongbiao.chen,luli.dai,erin.xu');
INSERT INTO `order` VALUES (158, 'luli.dai', '200', '存入', '2012-04-29 00:37:46', 'luli.dai', '0', '2012-04-29 00:37:46,luli.dai,200,存入,luli.dai');
INSERT INTO `order` VALUES (157, 'rui.gao', '-200', '支出', '2012-04-29 00:36:06', 'rui.gao', '0', '2012-04-29 00:36:06,rui.gao,-200,支出,rui.gao');
INSERT INTO `order` VALUES (159, 'rui.gao', '-21.5', '支出', '2012-04-29 23:05:25', 'rui.gao', '0', '2012-04-29 23:05:25,rui.gao,-21.5,支出,rui.gao');
INSERT INTO `order` VALUES (160, 'luli.dai', '21.5', '存入', '2012-04-29 23:06:04', 'luli.dai', '0', '2012-04-29 23:06:04,luli.dai,21.5,存入,luli.dai');
INSERT INTO `order` VALUES (161, 'rui.gao', '60', '紫缘', '2012-05-02 13:31:05', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,jing.ban,maya,erin.xu', '7.5', '2012-05-02 13:31:05,rui.gao,60,紫缘,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,jing.ban,maya,erin.xu');
INSERT INTO `order` VALUES (162, 'yongbiao.chen', '70', '紫缘', '2012-05-03 13:00:17', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,jing.ban,erin.xu', '10', '2012-05-03 13:00:17,yongbiao.chen,70,紫缘,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,jing.ban,erin.xu');
INSERT INTO `order` VALUES (163, 'neil.mao', '100', '存入', '2012-05-03 13:15:34', 'neil.mao', '0', '2012-05-03 13:15:34,neil.mao,100,存入,neil.mao');
INSERT INTO `order` VALUES (164, 'rui.gao', '-100', '支出', '2012-05-03 13:16:02', 'rui.gao', '0', '2012-05-03 13:16:02,rui.gao,-100,支出,rui.gao');
INSERT INTO `order` VALUES (165, 'alex.guo', '11', '存入', '2012-05-03 16:33:15', 'alex.guo', '0', '2012-05-03 16:33:15,alex.guo,11,存入,alex.guo');
INSERT INTO `order` VALUES (166, 'rui.gao', '-11', '支出', '2012-05-03 16:33:43', 'rui.gao', '0', '2012-05-03 16:33:43,rui.gao,-11,支出,rui.gao');
INSERT INTO `order` VALUES (167, 'erin.xu', '100', '存入', '2012-05-04 12:56:37', 'erin.xu', '0', '2012-05-04 12:56:37,erin.xu,100,存入,erin.xu');
INSERT INTO `order` VALUES (168, 'rui.gao', '-100', '支出', '2012-05-04 12:57:03', 'rui.gao', '0', '2012-05-04 12:57:03,rui.gao,-100,支出,rui.gao');
INSERT INTO `order` VALUES (169, 'tao.zhou', '90', '紫缘', '2012-05-04 13:08:45', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,weiming.mao,jing.ban,erin.xu', '11.25', '2012-05-04 13:08:45,tao.zhou,90,紫缘,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,weiming.mao,jing.ban,erin.xu');
INSERT INTO `order` VALUES (170, 'rui.gao', '85', '紫缘', '2012-05-07 13:04:11', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,jing.ban,erin.xu', '12.14', '2012-05-07 13:04:11,rui.gao,85,紫缘,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,jing.ban,erin.xu');
INSERT INTO `order` VALUES (171, 'jing.ban', '100', '存入', '2012-05-08 13:02:24', 'jing.ban', '0', '2012-05-08 13:02:24,jing.ban,100,存入,jing.ban');
INSERT INTO `order` VALUES (172, 'rui.gao', '-100', '支出', '2012-05-08 13:02:56', 'rui.gao', '0', '2012-05-08 13:02:56,rui.gao,-100,支出,rui.gao');
INSERT INTO `order` VALUES (173, 'rui.gao', '74', '农家小厨', '2012-05-08 13:04:17', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,jing.ban,erin.xu', '12.33', '2012-05-08 13:04:17,rui.gao,74,农家小厨,rui.gao,tao.zhou,yongbiao.chen,luli.dai,jing.ban,erin.xu');
INSERT INTO `order` VALUES (174, 'rui.gao', '64', '阿贵嫂', '2012-05-09 13:08:13', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,erin.xu', '10.67', '2012-05-09 13:08:13,rui.gao,64,阿贵嫂,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,erin.xu');
INSERT INTO `order` VALUES (175, 'rui.gao', '84', '紫缘', '2012-05-10 13:05:30', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,jing.ban,erin.xu', '12', '2012-05-10 13:05:30,rui.gao,84,紫缘,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,jing.ban,erin.xu');
INSERT INTO `order` VALUES (176, 'yongbiao.chen', '80', '紫缘', '2012-05-14 12:43:26', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,jing.ban,erin.xu', '11.43', '2012-05-14 12:43:26,yongbiao.chen,80,紫缘,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,jing.ban,erin.xu');
INSERT INTO `order` VALUES (177, 'erin.xu', '100', '存入', '2012-05-15 12:51:03', 'erin.xu', '0', '2012-05-15 12:51:03,erin.xu,100,存入,erin.xu');
INSERT INTO `order` VALUES (178, 'rui.gao', '95', '紫缘', '2012-05-15 12:51:50', 'rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,jing.ban,erin.xu', '13.57', '2012-05-15 12:51:50,rui.gao,95,紫缘,rui.gao,tao.zhou,yongbiao.chen,luli.dai,neil.mao,jing.ban,erin.xu');
INSERT INTO `order` VALUES (179, 'rui.gao', '-100', '支出', '2012-05-15 12:52:35', 'rui.gao', '0', '2012-05-15 12:52:35,rui.gao,-100,支出,rui.gao');

-- --------------------------------------------------------

-- 
-- 表的结构 `user_info`
-- 

CREATE TABLE `user_info` (
  `user_id` int(5) unsigned NOT NULL auto_increment,
  `user_name` varchar(100) NOT NULL,
  `user_mail` varchar(100) NOT NULL,
  `user_money` varchar(100) NOT NULL default '0',
  PRIMARY KEY  (`user_id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

-- 
-- 导出表中的数据 `user_info`
-- 

INSERT INTO `user_info` VALUES (1, 'rui.gao', 'rui.gao@neulion.com.cn', '-309.95');
INSERT INTO `user_info` VALUES (2, 'tao.zhou', 'tao.zhou@neulion.com.cn', '2.3');
INSERT INTO `user_info` VALUES (3, 'yongbiao.chen', 'yongbiao.chen@neulion.cn', '41.85');
INSERT INTO `user_info` VALUES (4, 'luli.dai', 'luli.dai@neulion.com.cn', '183.3');
INSERT INTO `user_info` VALUES (5, 'neil.mao', 'neil.mao@neulion.com.cn', '46.69');
INSERT INTO `user_info` VALUES (7, 'weiming.mao', 'weiming.mao@neulion.com.cn', '33.75');
INSERT INTO `user_info` VALUES (6, 'vincent.lai', 'vincent.lai@neulion.com.cn', '-0.3');
INSERT INTO `user_info` VALUES (11, 'erin.xu', 'Erin.xu@neulion.com.cn', '60.61');
INSERT INTO `user_info` VALUES (8, 'jing.ban', 'jing.ban@neulion.com.cn', '-11.62');
INSERT INTO `user_info` VALUES (9, 'jia.xu', 'jia.xu@neulion.com.cn', '-16.6');
INSERT INTO `user_info` VALUES (10, 'maya', 'feipt.yan@neulion.com.cn', '-29.93');
INSERT INTO `user_info` VALUES (12, 'alex.guo', 'alex.guo@neulion.com.cn ', '-0.11');
