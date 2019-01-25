/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : cbjlayui

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2019-01-25 19:19:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cl_admin`
-- ----------------------------
DROP TABLE IF EXISTS `cl_admin`;
CREATE TABLE `cl_admin` (
  `userid` smallint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(20) DEFAULT NULL COMMENT '管理账号',
  `password` varchar(32) DEFAULT NULL COMMENT '管理密码',
  `roleid` tinyint(4) unsigned DEFAULT '0' COMMENT '角色id',
  `encrypt` varchar(6) DEFAULT NULL COMMENT '加密因子',
  `nickname` char(16) NOT NULL COMMENT '昵称',
  `last_login_time` int(10) unsigned DEFAULT '0' COMMENT '最后登录时间',
  `last_login_ip` bigint(20) unsigned DEFAULT '0' COMMENT '最后登录IP',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `email` varchar(40) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '会员状态',
  `openid` varchar(255) DEFAULT NULL COMMENT '微信openid',
  `headimg` varchar(255) DEFAULT NULL COMMENT '微信头像',
  `weicatname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `phone` (`phone`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of cl_admin
-- ----------------------------
INSERT INTO `cl_admin` VALUES ('1', 'admin', '9724b5e6c56b95f5723009ef81961bfe', '1', 'Wo0bAa', '车炳进', '1548234351', '2130706433', '15986235366', '530765310@qq.com', '1', 'oteqq1YfQHxsoTozMhhCigk9tqzI', 'http://thirdwx.qlogo.cn/mmopen/vUBgN3xrUvxn6aEnpYnCnFpqXhxc8bTibKE7nYiaefJ4hba9eibib5baKTwDs5ib0fVSn95pLpLgOceNOqicc7fNvE6UyZwe3uq6Gb/132', '车炳进');
INSERT INTO `cl_admin` VALUES ('24', 'Sally', '7156d5fc312aaa67a4c9b464a5379de7', '1', 'bJ0ZYk', '方雪妮', '1545036060', '1902954234', '13826448844', null, '1', 'oteqq1fH5VzvKkWy56YUgzq8aFXU', 'http://thirdwx.qlogo.cn/mmopen/yxDDC3AWENMcbjI1YsTo227zx2C0kHfT8qqCTo6fu6uibGFIvnOr5gQD1bFl2yRdric968K94OiaC38n122JKeL2XFCP0VDO3nl/132', 'Sally_Fong');
INSERT INTO `cl_admin` VALUES ('25', 'yueying', '85748699b594c21dcb9f5c0cc5e56592', '6', 'LxMvZ7', '冯月盈', '1544691225', '1902954234', '15521000465', null, '1', 'oteqq1QKn_gk4ogpV6j5myEF3BWQ', 'http://thirdwx.qlogo.cn/mmopen/AbruuZ3ILCkLicRibIdxyviaCoTgtXexE1iboL9zX68YiatlDVibOibCpjic5D1ib88kibxCPnqDJOpONeNC2Y6Y3qPWgcg0LycTQLyc3B/132', 'Yy月盈');
INSERT INTO `cl_admin` VALUES ('16', '13611494743', '3c5e40c5b5272cb3afa4455abd164f0e', '1', 'PJhv25', '大boss', '0', '0', '13611494743', null, '1', 'oteqq1bxX0hSeOoZIQt196eSBlmY', 'http://thirdwx.qlogo.cn/mmopen/AbruuZ3ILCkLicRibIdxyviaDGEiaVRZzX6m5uhwvDoJIIj6ZzQK5ULpbXbIfGCOib5N0YGDlhdYrDhSIMZBUpAUYCd7kJia6mwJo9/132', '抖音公众号加粉服务');
INSERT INTO `cl_admin` VALUES ('21', '1234', 'c6073696b60d1e7cba16afadb2f6278b', '1', 'EMeGLN', '李慧慧', '0', '0', '13750095383', null, '1', 'oteqq1YkdkJYkYTuq4azI-Jm9dFM', 'http://thirdwx.qlogo.cn/mmopen/vUBgN3xrUvxBl55AxwEY5emKclLdQyiaZul0t9XvaZ38a4cswtWyKj3Xialibm24RSPmR3YibNnz6k8nSnqm0xLt3dk7pic6cCrjL/132', 'lxy');
INSERT INTO `cl_admin` VALUES ('27', 'summer', '8e73ba8ffbe7c748c606686178af9b59', '6', 'RycSqw', '邓伟钧', '0', '0', '13570588842', null, '1', 'oteqq1foo2JmzOHlyfTnqkc6Myrc', 'http://thirdwx.qlogo.cn/mmopen/AbruuZ3ILCnhmib2HnCp79fRKp4icorC9pTTD5jDnvZHnWC7KbCnAk8QVCODnWb2UrhvbYESb65ib70yj3uauYNwOAGumaqDh72/132', 'summer');
INSERT INTO `cl_admin` VALUES ('23', 'verygood', '014b043202cd52668491b2dc19d5cfae', '6', '4gki2T', '秘密', '1544690942', '1902954234', '18529293726', null, '1', 'oteqq1Zl0wTU7sfuYx8EcVwWBTK0', 'http://thirdwx.qlogo.cn/mmopen/AbruuZ3ILClOsUh3haQB9KABibzMJRMcqGDwLPAnBx5Cv5eBesD2nmmfvC3zUPDwxxesjLiaIib8PGott3zMjRYQQ/132', 'hey-Jackie');
INSERT INTO `cl_admin` VALUES ('26', 'xunbin', '4c00e086b33d9064cabfe66b25f2da55', '6', '16P88C', '吴训斌', '1544683116', '1902954234', '18617156489', null, '1', 'oteqq1eUpVbpYVayFohDaWH5be94', 'http://thirdwx.qlogo.cn/mmopen/FfBhJ6dXazH7SGASoiagOb0v04Q0JiaIzaicCBCBMKicsjgibwu0vfKqKq2wg1kkSvrbjxpwwkvticiaofUb1UBIklfMU2S6J4ZT7ep/132', '斌');
INSERT INTO `cl_admin` VALUES ('28', 'adminis123', 'd9c91749d8f451510420a45217c22d8b', '1', 'QoOZ92', '设置', '0', '0', '13118826268', null, '1', 'oteqq1acj-FZqE46BIf0Y3qLrsps', 'http://thirdwx.qlogo.cn/mmopen/yxDDC3AWENMzkGia8yKUFFRtsSjIK6viadUra2XENMoWvuJSSuEMTgv2tdsKkglLhfkWcgVzIMEHrnDEFQjtHoj2Y4nlibdEMVX/132', '200年ig老粉丝');

-- ----------------------------
-- Table structure for `cl_adminlog`
-- ----------------------------
DROP TABLE IF EXISTS `cl_adminlog`;
CREATE TABLE `cl_adminlog` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `uid` smallint(3) NOT NULL DEFAULT '0' COMMENT '操作者ID',
  `info` text COMMENT '说明',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` bigint(20) unsigned NOT NULL DEFAULT '0',
  `get` varchar(255) NOT NULL DEFAULT '',
  `update_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COMMENT='管理员日志表';

-- ----------------------------
-- Records of cl_adminlog
-- ----------------------------
INSERT INTO `cl_adminlog` VALUES ('1', '1', '1', '提示语:恭喜您，登陆成功', '1545216917', '3683137418', '/admin/index/login.html', null);
INSERT INTO `cl_adminlog` VALUES ('2', '1', '1', '提示语:文件删除成功~', '1545217184', '3683137418', '/attachment/attachments/delete.html', null);
INSERT INTO `cl_adminlog` VALUES ('3', '0', '0', '提示语:请先登陆', '1545621743', '2130706433', '/admin/index/index', null);
INSERT INTO `cl_adminlog` VALUES ('4', '0', '0', '提示语:密码错误！', '1545621854', '2130706433', '/admin/index/login.html', null);
INSERT INTO `cl_adminlog` VALUES ('5', '1', '1', '提示语:恭喜您，登陆成功', '1545621867', '2130706433', '/admin/index/login.html', null);
INSERT INTO `cl_adminlog` VALUES ('6', '1', '1', '提示语:添加成功！', '1545621884', '2130706433', '/admin/framework/add.html', null);
INSERT INTO `cl_adminlog` VALUES ('7', '1', '1', '提示语:添加成功！', '1545621898', '2130706433', '/admin/framework/add.html', null);
INSERT INTO `cl_adminlog` VALUES ('8', '1', '1', '提示语:添加成功！', '1545621910', '2130706433', '/admin/framework/add.html', null);
INSERT INTO `cl_adminlog` VALUES ('9', '1', '1', '提示语:添加成功！', '1545621956', '2130706433', '/admin/workbusiness/add.html', null);
INSERT INTO `cl_adminlog` VALUES ('10', '1', '1', '提示语:添加成功！', '1545621981', '2130706433', '/admin/business/add.html', null);
INSERT INTO `cl_adminlog` VALUES ('11', '1', '1', '提示语:添加成功！', '1545622017', '2130706433', '/admin/tags/add.html', null);
INSERT INTO `cl_adminlog` VALUES ('12', '1', '1', '提示语:添加成功！', '1545622026', '2130706433', '/admin/tags/add.html', null);
INSERT INTO `cl_adminlog` VALUES ('13', '1', '1', '提示语:添加成功！', '1545622130', '2130706433', '/admin/project/add.html', null);
INSERT INTO `cl_adminlog` VALUES ('14', '1', '1', '提示语:编辑成功！', '1545622250', '2130706433', '/admin/project/edit.html', null);
INSERT INTO `cl_adminlog` VALUES ('15', '1', '1', '提示语:编辑成功！', '1545622308', '2130706433', '/admin/project/edit.html', null);
INSERT INTO `cl_adminlog` VALUES ('16', '0', '1', '提示语:此次审核正在由电商成员:管理审批', '1545627364', '2130706433', '/admin/orders/edit.html?id=1', null);
INSERT INTO `cl_adminlog` VALUES ('17', '1', '1', '提示语:编辑成功！', '1545627408', '2130706433', '/admin/orders/edit.html', null);
INSERT INTO `cl_adminlog` VALUES ('18', '0', '1', '提示语:该页面不存在！', '1545627436', '2130706433', '/admin/orders/upload/baobei/2018-12-24/M1545627385.png', null);
INSERT INTO `cl_adminlog` VALUES ('19', '0', '1', '提示语:该页面不存在！', '1545627447', '2130706433', '/admin/orders/upload/baobei/2018-12-24/M1545627385.png', null);
INSERT INTO `cl_adminlog` VALUES ('20', '0', '1', '提示语:该页面不存在！', '1545627451', '2130706433', '/admin/orders/upload/baobei/2018-12-24/M1545627385.png', null);
INSERT INTO `cl_adminlog` VALUES ('21', '0', '1', '提示语:该页面不存在！', '1545627537', '2130706433', '/admin/index/upload/baobei/2018-12-24/M1545627385.png', null);
INSERT INTO `cl_adminlog` VALUES ('22', '1', '1', '提示语:删除订单成功！', '1545628465', '2130706433', '/admin/orders/delete.html', null);
INSERT INTO `cl_adminlog` VALUES ('23', '0', '0', '提示语:工号不能为空！', '1548215694', '2130706433', '/admin/index/login', '1548215694');
INSERT INTO `cl_adminlog` VALUES ('24', '0', '0', '提示语:工号不能为空！', '1548215982', '2130706433', '/admin/index/login', '1548215982');
INSERT INTO `cl_adminlog` VALUES ('25', '0', '0', '提示语:工号不能为空！', '1548216251', '2130706433', '/admin/index/login', '1548216251');
INSERT INTO `cl_adminlog` VALUES ('26', '0', '0', '提示语:工号不能为空！', '1548216547', '2130706433', '/admin/index/login', '1548216547');
INSERT INTO `cl_adminlog` VALUES ('27', '0', '0', '提示语:工号不能为空！', '1548216558', '2130706433', '/admin/index/login', '1548216558');
INSERT INTO `cl_adminlog` VALUES ('28', '0', '0', '提示语:工号不能为空！', '1548216647', '2130706433', '/admin/index/login', '1548216647');
INSERT INTO `cl_adminlog` VALUES ('29', '0', '0', '提示语:工号不能为空！', '1548216706', '2130706433', '/admin/index/login', '1548216706');
INSERT INTO `cl_adminlog` VALUES ('30', '0', '0', '提示语:用户名已经存在！', '1548216762', '2130706433', '/admin/index/login', '1548216762');
INSERT INTO `cl_adminlog` VALUES ('31', '0', '0', '提示语:用户名已经存在！', '1548217133', '2130706433', '/admin/index/login', '1548217133');
INSERT INTO `cl_adminlog` VALUES ('32', '0', '0', '提示语:用户名已经存在！', '1548217187', '2130706433', '/admin/index/login', '1548217187');
INSERT INTO `cl_adminlog` VALUES ('33', '1', '1', '提示语:恭喜您，登陆成功', '1548218086', '2130706433', '/admin/index/login', '1548218086');
INSERT INTO `cl_adminlog` VALUES ('34', '1', '0', '提示语:注销成功！', '1548221385', '2130706433', '/admin/index/logout', '1548221385');
INSERT INTO `cl_adminlog` VALUES ('35', '1', '0', '提示语:注销成功！', '1548221387', '2130706433', '/admin/index/logout', '1548221387');
INSERT INTO `cl_adminlog` VALUES ('36', '1', '1', '提示语:恭喜您，登陆成功', '1548221410', '2130706433', '/admin/index/login', '1548221410');
INSERT INTO `cl_adminlog` VALUES ('37', '0', '1', '提示语:该页面不存在！', '1548223760', '2130706433', '/admin/menu/index?menuid=14', '1548223760');
INSERT INTO `cl_adminlog` VALUES ('38', '0', '1', '提示语:该页面不存在！', '1548223765', '2130706433', '/admin/menu/index?menuid=14', '1548223765');
INSERT INTO `cl_adminlog` VALUES ('39', '0', '1', '提示语:该页面不存在！', '1548223935', '2130706433', '/admin/menu/index?menuid=14', '1548223935');
INSERT INTO `cl_adminlog` VALUES ('40', '1', '0', '提示语:注销成功！', '1548234289', '2130706433', '/admin/index/logout', '1548234289');
INSERT INTO `cl_adminlog` VALUES ('41', '1', '0', '提示语:注销成功！', '1548234291', '2130706433', '/admin/index/logout', '1548234291');
INSERT INTO `cl_adminlog` VALUES ('42', '0', '0', '提示语:验证码输入错误！', '1548234327', '2130706433', '/admin/index/login', '1548234327');
INSERT INTO `cl_adminlog` VALUES ('43', '0', '0', '提示语:验证码输入错误！', '1548234335', '2130706433', '/admin/index/login', '1548234335');
INSERT INTO `cl_adminlog` VALUES ('44', '0', '0', '提示语:验证码输入错误！', '1548234344', '2130706433', '/admin/index/login', '1548234344');
INSERT INTO `cl_adminlog` VALUES ('45', '1', '1', '提示语:恭喜您，登陆成功', '1548234351', '2130706433', '/admin/index/login', '1548234351');
INSERT INTO `cl_adminlog` VALUES ('46', '0', '1', '提示语:含有子菜单，无法删除！', '1548235177', '2130706433', '/admin/menu/delete', '1548235177');
INSERT INTO `cl_adminlog` VALUES ('47', '0', '1', '提示语:含有子菜单，无法删除！', '1548235184', '2130706433', '/admin/menu/delete', '1548235184');
INSERT INTO `cl_adminlog` VALUES ('48', '1', '1', '提示语:清理缓存', '1548235560', '2130706433', '/admin/index/cache?type=all&_=1548235542835', '1548235560');
INSERT INTO `cl_adminlog` VALUES ('49', '1', '1', '提示语:清理缓存', '1548235764', '2130706433', '/admin/index/cache?type=all&_=1548235542836', '1548235764');
INSERT INTO `cl_adminlog` VALUES ('50', '1', '1', '提示语:清理缓存', '1548236093', '2130706433', '/admin/index/cache?type=all&_=1548235542837', '1548236093');
INSERT INTO `cl_adminlog` VALUES ('51', '1', '1', '提示语:删除菜单成功！', '1548236195', '2130706433', '/admin/menu/delete', '1548236195');
INSERT INTO `cl_adminlog` VALUES ('52', '1', '1', '提示语:删除菜单成功！', '1548236202', '2130706433', '/admin/menu/delete', '1548236202');
INSERT INTO `cl_adminlog` VALUES ('53', '1', '1', '提示语:菜单排序成功！', '1548236518', '2130706433', '/admin/menu/listorder', '1548236518');
INSERT INTO `cl_adminlog` VALUES ('54', '1', '1', '提示语:菜单排序成功！', '1548236530', '2130706433', '/admin/menu/listorder', '1548236530');
INSERT INTO `cl_adminlog` VALUES ('55', '1', '1', '提示语:菜单排序成功！', '1548236564', '2130706433', '/admin/menu/listorder', '1548236564');
INSERT INTO `cl_adminlog` VALUES ('56', '1', '1', '提示语:清理缓存', '1548236820', '2130706433', '/admin/index/cache?type=all&_=1548235542838', '1548236820');
INSERT INTO `cl_adminlog` VALUES ('57', '1', '1', '提示语:菜单排序成功！', '1548237188', '2130706433', '/admin/menu/listorder', '1548237188');
INSERT INTO `cl_adminlog` VALUES ('58', '1', '1', '提示语:菜单排序成功！', '1548237272', '2130706433', '/admin/menu/listorder', '1548237272');
INSERT INTO `cl_adminlog` VALUES ('59', '1', '1', '提示语:菜单排序成功！', '1548237279', '2130706433', '/admin/menu/listorder', '1548237279');
INSERT INTO `cl_adminlog` VALUES ('60', '1', '1', '提示语:删除菜单成功！', '1548237433', '2130706433', '/admin/menu/delete', '1548237433');
INSERT INTO `cl_adminlog` VALUES ('61', '1', '1', '提示语:删除菜单成功！', '1548237440', '2130706433', '/admin/menu/delete', '1548237440');
INSERT INTO `cl_adminlog` VALUES ('62', '1', '1', '提示语:删除菜单成功！', '1548237445', '2130706433', '/admin/menu/delete', '1548237445');
INSERT INTO `cl_adminlog` VALUES ('63', '1', '1', '提示语:删除菜单成功！', '1548237451', '2130706433', '/admin/menu/delete', '1548237451');
INSERT INTO `cl_adminlog` VALUES ('64', '1', '1', '提示语:删除菜单成功！', '1548237468', '2130706433', '/admin/menu/delete', '1548237468');
INSERT INTO `cl_adminlog` VALUES ('65', '1', '1', '提示语:删除菜单成功！', '1548237475', '2130706433', '/admin/menu/delete', '1548237475');
INSERT INTO `cl_adminlog` VALUES ('66', '1', '1', '提示语:删除菜单成功！', '1548237484', '2130706433', '/admin/menu/delete', '1548237484');
INSERT INTO `cl_adminlog` VALUES ('67', '1', '1', '提示语:删除菜单成功！', '1548237492', '2130706433', '/admin/menu/delete', '1548237492');
INSERT INTO `cl_adminlog` VALUES ('68', '1', '1', '提示语:删除菜单成功！', '1548237499', '2130706433', '/admin/menu/delete', '1548237499');
INSERT INTO `cl_adminlog` VALUES ('69', '1', '1', '提示语:删除菜单成功！', '1548237519', '2130706433', '/admin/menu/delete', '1548237519');
INSERT INTO `cl_adminlog` VALUES ('70', '0', '1', '提示语:该页面不存在！', '1548238455', '2130706433', '/admin/menu/%E6%89%93%E5%8D%B0%E7%AA%97%E5%8F%A3', '1548238455');
INSERT INTO `cl_adminlog` VALUES ('71', '1', '1', '提示语:清理缓存', '1548238941', '2130706433', '/admin/index/cache?type=all&_=1548238300606', '1548238941');
INSERT INTO `cl_adminlog` VALUES ('72', '0', '1', '提示语:该页面不存在！', '1548239858', '2130706433', '/admin/menu/edi?id=1', '1548239858');
INSERT INTO `cl_adminlog` VALUES ('73', '0', '1', '提示语:该页面不存在！', '1548239867', '2130706433', '/admin/menu/edi?id=38', '1548239867');
INSERT INTO `cl_adminlog` VALUES ('74', '0', '1', '提示语:该页面不存在！', '1548239869', '2130706433', '/admin/menu/edi?id=38', '1548239869');

-- ----------------------------
-- Table structure for `cl_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `cl_attachment`;
CREATE TABLE `cl_attachment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `name` char(50) NOT NULL DEFAULT '' COMMENT '文件名',
  `module` char(15) NOT NULL DEFAULT '' COMMENT '模块名，由哪个模块上传的',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '文件路径',
  `thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '缩略图路径',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '文件链接',
  `mime` varchar(64) NOT NULL DEFAULT '' COMMENT '文件mime类型',
  `ext` char(4) NOT NULL DEFAULT '' COMMENT '文件类型',
  `size` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `md5` char(32) NOT NULL DEFAULT '' COMMENT '文件md5',
  `sha1` char(40) NOT NULL DEFAULT '' COMMENT 'sha1 散列值',
  `driver` varchar(16) NOT NULL DEFAULT 'local' COMMENT '上传驱动',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `listorders` int(5) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COMMENT='附件表';

-- ----------------------------
-- Records of cl_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for `cl_auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `cl_auth_group`;
CREATE TABLE `cl_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组id,自增主键',
  `pid` int(10) NOT NULL COMMENT '组id',
  `module` varchar(20) NOT NULL COMMENT '用户组所属模块',
  `type` tinyint(4) NOT NULL COMMENT '组类型',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '用户组中文名称',
  `description` varchar(80) NOT NULL DEFAULT '' COMMENT '描述信息',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户组状态：为1正常，为0禁用,-1为删除',
  `rules` varchar(500) NOT NULL DEFAULT '' COMMENT '用户组拥有的规则id，多个规则 , 隔开',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='权限组表';

-- ----------------------------
-- Records of cl_auth_group
-- ----------------------------
INSERT INTO `cl_auth_group` VALUES ('1', '0', 'admin', '1', '超级管理员', '拥有所有权限', '1', '155,154,183,149,150,151,164,171,160,184,157,153,152,156,173,159,158,185,165,186,167,172,187,168,188,169,189,170');
INSERT INTO `cl_auth_group` VALUES ('6', '0', 'admin', '1', '项目组客服', '报备/带看/成交审核+公告发布', '1', '155,154,183,164,184,157,173,159,158,185,165,186,167,172,187,168,188,169');
INSERT INTO `cl_auth_group` VALUES ('7', '0', 'admin', '1', '后台管理', '项目/架构、用户管理', '1', '155,154,183,149,150,151,164,171,160,184,157,173,159,158,185,165,186,167,172,187,168,188,169,189,170');

-- ----------------------------
-- Table structure for `cl_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `cl_auth_rule`;
CREATE TABLE `cl_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '规则所属module',
  `type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1-url;2-主菜单',
  `name` char(80) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '规则中文描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `condition` varchar(300) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  KEY `module` (`module`,`status`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=190 DEFAULT CHARSET=utf8 COMMENT='规则表';

-- ----------------------------
-- Records of cl_auth_rule
-- ----------------------------
INSERT INTO `cl_auth_rule` VALUES ('146', 'admin', '2', 'admin/setting/index', '设置', '-1', '');
INSERT INTO `cl_auth_rule` VALUES ('161', 'admin', '1', 'admin/business/add', '新增电商成员', '-1', '');
INSERT INTO `cl_auth_rule` VALUES ('149', 'admin', '1', 'admin/config/index', '配置管理', '1', '');
INSERT INTO `cl_auth_rule` VALUES ('150', 'admin', '1', 'admin/config/setting', '网站设置', '1', '');
INSERT INTO `cl_auth_rule` VALUES ('151', 'admin', '1', 'admin/menu/index', '菜单管理', '1', '');
INSERT INTO `cl_auth_rule` VALUES ('152', 'admin', '1', 'admin/manager/index', '管理员管理', '1', '');
INSERT INTO `cl_auth_rule` VALUES ('153', 'admin', '1', 'admin/authManager/index', '角色管理', '1', '');
INSERT INTO `cl_auth_rule` VALUES ('154', 'admin', '2', 'admin/index/index', '设置', '1', '');
INSERT INTO `cl_auth_rule` VALUES ('155', 'admin', '2', 'admin/main/index', '控制面板', '1', '');
INSERT INTO `cl_auth_rule` VALUES ('156', 'admin', '1', 'admin/adminlog/index', '管理员日志', '1', '');
INSERT INTO `cl_auth_rule` VALUES ('157', 'admin', '1', 'admin/framework/index', '架构管理', '1', '');
INSERT INTO `cl_auth_rule` VALUES ('158', 'admin', '1', 'admin/workbusiness/index', '合作电商管理', '1', '');
INSERT INTO `cl_auth_rule` VALUES ('159', 'admin', '1', 'admin/business/index', '电商成员管理', '1', '');
INSERT INTO `cl_auth_rule` VALUES ('160', 'attachment', '1', 'attachment/attachments/index', '附件管理', '1', '');
INSERT INTO `cl_auth_rule` VALUES ('162', 'admin', '1', 'admin/business/edit', '修改电商成员', '-1', '');
INSERT INTO `cl_auth_rule` VALUES ('163', 'admin', '1', 'admin/business/delete', '删除电商成员', '-1', '');
INSERT INTO `cl_auth_rule` VALUES ('164', 'admin', '1', 'admin/tags/index', '区域类别', '1', '');
INSERT INTO `cl_auth_rule` VALUES ('165', 'admin', '1', 'admin/notice/index', '公告列表', '1', '');
INSERT INTO `cl_auth_rule` VALUES ('166', 'admin', '1', 'admin/weicat/index', '微信管理', '-1', '');
INSERT INTO `cl_auth_rule` VALUES ('167', 'admin', '1', 'admin/weicat/setting', '微信配置', '1', '');
INSERT INTO `cl_auth_rule` VALUES ('168', 'admin', '1', 'admin/banner/index', '轮播图管理', '1', '');
INSERT INTO `cl_auth_rule` VALUES ('169', 'admin', '1', 'admin/project/index', '项目列表', '1', '');
INSERT INTO `cl_auth_rule` VALUES ('170', 'admin', '1', 'admin/orders/index', '报备订单列表', '1', '');
INSERT INTO `cl_auth_rule` VALUES ('171', 'admin', '1', 'admin/field/index', '报备字段管理', '1', '');
INSERT INTO `cl_auth_rule` VALUES ('172', 'admin', '1', 'admin/weicat/menu', '微信菜单', '1', '');
INSERT INTO `cl_auth_rule` VALUES ('173', 'admin', '1', 'admin/zusers/index', '中介用户管理', '1', '');
INSERT INTO `cl_auth_rule` VALUES ('174', 'admin', '1', 'admin/orders/edit', '订单审核', '-1', '');
INSERT INTO `cl_auth_rule` VALUES ('175', 'admin', '1', 'admin/orders/delete', '订单删除', '-1', '');
INSERT INTO `cl_auth_rule` VALUES ('176', 'admin', '1', 'admin/project/add', '添加轮播图', '-1', '');
INSERT INTO `cl_auth_rule` VALUES ('177', 'admin', '1', 'admin/project/edit', '修改项目', '-1', '');
INSERT INTO `cl_auth_rule` VALUES ('178', 'admin', '1', 'admin/project/delete', '项目删除', '-1', '');
INSERT INTO `cl_auth_rule` VALUES ('179', 'admin', '1', 'admin/banner/edit', '修改轮播图', '-1', '');
INSERT INTO `cl_auth_rule` VALUES ('180', 'admin', '1', 'admin/banner/delete', '轮播图删除', '-1', '');
INSERT INTO `cl_auth_rule` VALUES ('181', 'admin', '1', 'admin/project/changIsup', '是否推荐', '-1', '');
INSERT INTO `cl_auth_rule` VALUES ('182', 'admin', '1', 'admin/weicat/imageupload', '回复图片上传', '-1', '');
INSERT INTO `cl_auth_rule` VALUES ('183', 'admin', '1', 'admin/config/#', '系统配置', '1', '');
INSERT INTO `cl_auth_rule` VALUES ('184', 'admin', '1', 'admin/manager/#', '账户管理', '1', '');
INSERT INTO `cl_auth_rule` VALUES ('185', 'admin', '1', 'admin/notice/#', '公告管理', '1', '');
INSERT INTO `cl_auth_rule` VALUES ('186', 'admin', '1', 'admin/weicat/#', '微信管理', '1', '');
INSERT INTO `cl_auth_rule` VALUES ('187', 'admin', '1', 'admin/banner/#', '首页管理', '1', '');
INSERT INTO `cl_auth_rule` VALUES ('188', 'admin', '1', 'admin/project/#', '项目管理', '1', '');
INSERT INTO `cl_auth_rule` VALUES ('189', 'admin', '1', 'admin/orders/#', '报备订单管理', '1', '');

-- ----------------------------
-- Table structure for `cl_command`
-- ----------------------------
DROP TABLE IF EXISTS `cl_command`;
CREATE TABLE `cl_command` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型',
  `params` varchar(1500) NOT NULL DEFAULT '' COMMENT '参数',
  `command` varchar(1500) NOT NULL DEFAULT '' COMMENT '命令',
  `content` text COMMENT '返回结果',
  `executetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '执行时间',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` enum('successed','failured') NOT NULL DEFAULT 'failured' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='在线命令表';

-- ----------------------------
-- Records of cl_command
-- ----------------------------
INSERT INTO `cl_command` VALUES ('2', 'crud', '[\"--table=gw_category\",\"--controller=category\",\"--fields=id,pid,name,nickname,image,createtime,updatetime,weigh,status\"]', 'php think crud --table=gw_category --controller=category --fields=id,pid,name,nickname,image,createtime,updatetime,weigh,status', 'Build Successed', '1547016895', '1547016895', '1547016895', 'successed');
INSERT INTO `cl_command` VALUES ('3', 'menu', '[\"--controller=Category\"]', 'php think menu --controller=Category', 'Build Successed!', '1547016916', '1547016916', '1547016916', 'successed');
INSERT INTO `cl_command` VALUES ('4', 'crud', '[\"--table=gw_banner\",\"--controller=banner\",\"--fields=id,title,image,link,createtime,updatetime,weigh,status\",\"--relation=gw_category\",\"--relationmode=belongsto\",\"--relationforeignkey=pid\",\"--relationprimarykey=id\",\"--relationfields=name\"]', 'php think crud --table=gw_banner --controller=banner --fields=id,title,image,link,createtime,updatetime,weigh,status --relation=gw_category --relationmode=belongsto --relationforeignkey=pid --relationprimarykey=id --relationfields=name', 'Build Successed', '1547020909', '1547020909', '1547020909', 'successed');
INSERT INTO `cl_command` VALUES ('5', 'menu', '[\"--controller=Banner\"]', 'php think menu --controller=Banner', 'Build Successed!', '1547020920', '1547020920', '1547020920', 'successed');
INSERT INTO `cl_command` VALUES ('6', 'crud', '[\"--table=gw_content\",\"--controller=content\\/firstpage\",\"--fields=id,title,sec_title,createtime,updatetime,status\"]', 'php think crud --table=gw_content --controller=content/firstpage --fields=id,title,sec_title,createtime,updatetime,status', 'Build Successed', '1547087049', '1547087049', '1547087050', 'successed');
INSERT INTO `cl_command` VALUES ('7', 'menu', '[\"--controller=content\\/Firstpage\"]', 'php think menu --controller=content/Firstpage', 'Build Successed!', '1547087069', '1547087069', '1547087069', 'successed');
INSERT INTO `cl_command` VALUES ('12', 'menu', '[\"--controller=content\\/product\\/Mate\"]', 'php think menu --controller=content/product/Mate', 'Build Successed!', '1547107218', '1547107218', '1547107218', 'successed');
INSERT INTO `cl_command` VALUES ('17', 'menu', '[\"--controller=content\\/Productmate\"]', 'php think menu --controller=content/Productmate', null, '1547108282', '1547108282', '1547108282', 'failured');
INSERT INTO `cl_command` VALUES ('18', 'menu', '[\"--controller=content\\/Productmate\"]', 'php think menu --controller=content/Productmate', null, '1547108301', '1547108301', '1547108301', 'failured');
INSERT INTO `cl_command` VALUES ('19', 'menu', '[\"--controller=product\\/Productmate\"]', 'php think menu --controller=product/Productmate', null, '1547108913', '1547108913', '1547108913', 'failured');
INSERT INTO `cl_command` VALUES ('20', 'menu', '[\"--controller=product\\/Productmate\"]', 'php think menu --controller=product/Productmate', null, '1547108936', '1547108936', '1547108936', 'failured');
INSERT INTO `cl_command` VALUES ('21', 'crud', '[\"--table=gw_content\",\"--controller=content\\/productmate\",\"--fields=id,title,sec_title,pname,image,createtime,updatetime,status\"]', 'php think crud --table=gw_content --controller=content/productmate --fields=id,title,sec_title,pname,image,createtime,updatetime,status', 'controller already exists!\nIf you need to rebuild again, use the parameter --force=true', '1547109214', '1547109214', '1547109215', 'failured');
INSERT INTO `cl_command` VALUES ('22', 'crud', '[\"--table=gw_content\",\"--controller=content\\/productmate\",\"--fields=id,title,sec_title,pname,image,createtime,updatetime,status\"]', 'php think crud --table=gw_content --controller=content/productmate --fields=id,title,sec_title,pname,image,createtime,updatetime,status', 'model already exists!\nIf you need to rebuild again, use the parameter --force=true', '1547109240', '1547109240', '1547109240', 'failured');
INSERT INTO `cl_command` VALUES ('23', 'crud', '[\"--table=gw_content\",\"--controller=content\\/productmate\",\"--fields=id,title,sec_title,pname,image,createtime,updatetime,status\"]', 'php think crud --table=gw_content --controller=content/productmate --fields=id,title,sec_title,pname,image,createtime,updatetime,status', 'Build Successed', '1547109408', '1547109408', '1547109408', 'successed');
INSERT INTO `cl_command` VALUES ('24', 'menu', '[\"--controller=content\\/Productmate\"]', 'php think menu --controller=content/Productmate', 'Build Successed!', '1547109435', '1547109435', '1547109435', 'successed');
INSERT INTO `cl_command` VALUES ('25', 'menu', '[\"--controller=content\\/Firstpage\"]', 'php think menu --controller=content/Firstpage', 'Build Successed!', '1547180768', '1547180768', '1547180768', 'successed');
INSERT INTO `cl_command` VALUES ('26', 'menu', '[\"--controller=content\\/Productmate\"]', 'php think menu --controller=content/Productmate', 'Build Successed!', '1547180800', '1547180800', '1547180800', 'successed');
INSERT INTO `cl_command` VALUES ('27', 'menu', '[\"--controller=Firstpage\",\"--controller=Productmate\"]', 'php think menu --controller=Firstpage --controller=Productmate', 'Build Successed!', '1547180932', '1547180932', '1547180933', 'successed');
INSERT INTO `cl_command` VALUES ('28', 'menu', '[\"--controller=Solution\"]', 'php think menu --controller=Solution', 'Build Successed!', '1547197020', '1547197020', '1547197021', 'successed');
INSERT INTO `cl_command` VALUES ('29', 'crud', '[\"--table=gw_clients\",\"--controller=clients\",\"--fields=id,title,image,content,createtime,updatetime,nums,status\"]', 'php think crud --table=gw_clients --controller=clients --fields=id,title,image,content,createtime,updatetime,nums,status', 'Build Successed', '1547200479', '1547200479', '1547200479', 'successed');
INSERT INTO `cl_command` VALUES ('30', 'menu', '[\"--controller=Clients\"]', 'php think menu --controller=Clients', 'Build Successed!', '1547200495', '1547200495', '1547200495', 'successed');
INSERT INTO `cl_command` VALUES ('31', 'crud', '[\"--table=gw_expertservices\",\"--controller=expertservices\",\"--fields=id,title,sec_title,content,createtime,updatetime,status\"]', 'php think crud --table=gw_expertservices --controller=expertservices --fields=id,title,sec_title,content,createtime,updatetime,status', 'Build Successed', '1547202306', '1547202306', '1547202306', 'successed');
INSERT INTO `cl_command` VALUES ('32', 'menu', '[\"--controller=Expertservices\"]', 'php think menu --controller=Expertservices', 'Build Successed!', '1547202319', '1547202319', '1547202319', 'successed');
INSERT INTO `cl_command` VALUES ('33', 'crud', '[\"--table=gw_applay\",\"--controller=info\\/apply\",\"--fields=id,name,phone,company,createtime,updatetime,status\"]', 'php think crud --table=gw_applay --controller=info/apply --fields=id,name,phone,company,createtime,updatetime,status', 'Build Successed', '1547781718', '1547781718', '1547781719', 'successed');
INSERT INTO `cl_command` VALUES ('34', 'menu', '[\"--controller=info\\/Apply\"]', 'php think menu --controller=info/Apply', 'Build Successed!', '1547781736', '1547781736', '1547781736', 'successed');
INSERT INTO `cl_command` VALUES ('35', 'crud', '[\"--table=gw_words\",\"--controller=info\\/words\",\"--fields=id,name,phone,email,content,createtime,status\"]', 'php think crud --table=gw_words --controller=info/words --fields=id,name,phone,email,content,createtime,status', 'Build Successed', '1547783670', '1547783670', '1547783670', 'successed');
INSERT INTO `cl_command` VALUES ('36', 'menu', '[\"--controller=info\\/Words\"]', 'php think menu --controller=info/Words', 'Build Successed!', '1547783680', '1547783680', '1547783681', 'successed');

-- ----------------------------
-- Table structure for `cl_config`
-- ----------------------------
DROP TABLE IF EXISTS `cl_config`;
CREATE TABLE `cl_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text COMMENT '变量值',
  `content` text COMMENT '变量字典数据',
  `rule` varchar(100) NOT NULL DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) NOT NULL DEFAULT '' COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统配置';

-- ----------------------------
-- Records of cl_config
-- ----------------------------
INSERT INTO `cl_config` VALUES ('1', 'name', 'basic', 'Site name', '请填写站点名称', 'string', '后台管理系统', '', 'required', '');
INSERT INTO `cl_config` VALUES ('2', 'beian', 'basic', 'Beian', '粤ICP备15054802号-4', 'string', '粤ICP备15054802号-4', '', '', '');
INSERT INTO `cl_config` VALUES ('3', 'gonganbeian', 'basic', 'Gonganbeian', '沪公网安备 31010602000548号', 'string', '沪公网安备 31010602000548号', null, '', '');
INSERT INTO `cl_config` VALUES ('4', 'cdnurl', 'basic', 'Cdn url', '如果静态资源使用第三方云储存请配置该值', 'string', '', '', '', '');
INSERT INTO `cl_config` VALUES ('5', 'version', 'basic', 'Version', '如果静态资源有变动请重新配置该值', 'string', '1.0.1', '', 'required', '');
INSERT INTO `cl_config` VALUES ('6', 'timezone', 'basic', 'Timezone', '', 'string', 'Asia/Shanghai', '', 'required', '');
INSERT INTO `cl_config` VALUES ('7', 'forbiddenip', 'basic', 'Forbidden ip', '一行一条记录', 'text', '', '', '', '');
INSERT INTO `cl_config` VALUES ('8', 'languages', 'basic', 'Languages', '', 'array', '{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}', '', 'required', '');
INSERT INTO `cl_config` VALUES ('9', 'fixedpage', 'basic', 'Fixed page', '请尽量输入左侧菜单栏存在的链接', 'string', 'dashboard', '', 'required', '');
INSERT INTO `cl_config` VALUES ('10', 'categorytype', 'dictionary', 'Category type', '', 'array', '{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}', '', '', '');
INSERT INTO `cl_config` VALUES ('11', 'configgroup', 'dictionary', 'Config group', '', 'array', '{\"basic\":\"Basic\",\"email\":\"Email\",\"lianxi\":\"Lianxi\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"example\":\"Example\"}', '', '', '');
INSERT INTO `cl_config` VALUES ('12', 'mail_type', 'email', 'Mail type', '选择邮件发送方式', 'select', '1', '[\"Please select\",\"SMTP\",\"Mail\"]', '', '');
INSERT INTO `cl_config` VALUES ('13', 'mail_smtp_host', 'email', 'Mail smtp host', '错误的配置发送邮件会导致服务器超时', 'string', 'smtp.qq.com', '', '', '');
INSERT INTO `cl_config` VALUES ('14', 'mail_smtp_port', 'email', 'Mail smtp port', '(不加密默认25,SSL默认465,TLS默认587)', 'string', '465', '', '', '');
INSERT INTO `cl_config` VALUES ('15', 'mail_smtp_user', 'email', 'Mail smtp user', '（填写完整用户名）', 'string', '10000', '', '', '');
INSERT INTO `cl_config` VALUES ('16', 'mail_smtp_pass', 'email', 'Mail smtp password', '（填写您的密码）', 'string', 'password', '', '', '');
INSERT INTO `cl_config` VALUES ('17', 'mail_verify_type', 'email', 'Mail vertify type', '（SMTP验证方式[推荐SSL]）', 'select', '2', '[\"None\",\"TLS\",\"SSL\"]', '', '');
INSERT INTO `cl_config` VALUES ('18', 'mail_from', 'email', 'Mail from', '', 'string', '10000@qq.com', '', '', '');
INSERT INTO `cl_config` VALUES ('19', 'server_phone', 'basic', 'phone', '填写热线服务电话', 'string', '020-12345678', ' ', '', '');
INSERT INTO `cl_config` VALUES ('20', 'qq', 'basic', 'QQ', '填写QQ号码联系', 'string', '3396964818', null, '', '');
INSERT INTO `cl_config` VALUES ('21', 'wechat', 'basic', 'Wechat', '', 'image', '/uploads/20190115/af9525165e872551ff67e28ca5add9cf.jpg', null, '', '');
INSERT INTO `cl_config` VALUES ('22', 'index_title', 'basic', 'Index_title', '填写前台首页标题', 'string', '某某某公司', null, '', '');
INSERT INTO `cl_config` VALUES ('23', 'keyword', 'basic', 'Keyword', '填写网站的SEO关键字', 'string', '组件化ERP_ERP系统软件_ERP软件系统_企业ERP_企业ERP系统_ERP管理软件_ERP软件_企业管理软件_企业管理系统_ERP管理系统_ERP系统_ERP_可卓_Ctrlbox_Ctrlbox可卓', null, '', '');
INSERT INTO `cl_config` VALUES ('24', 'description', 'basic', 'Description', '填写网站的SEO描述', 'text', '我们致力于通过Ctrlbox组件化ERP，帮助企业解决发展过程中遇到的所有问题。提供企业级互联网产品，为不同行业和规模的企业提供个性化解决方案、信息化咨询与实施服务。', null, '', '');
INSERT INTO `cl_config` VALUES ('25', 'logo', 'basic', 'Logo', '', 'image', '/uploads/20190111/793128fcc2a451ca0961c2d90fc3a4df.png', ' ', '', '');
INSERT INTO `cl_config` VALUES ('26', 'lianxi_image', 'lianxi', 'Lianxi_image', '', 'image', '/uploads/20190115/87a2a910a8338c9e25ecc914b4efdb49.jpg', null, '', '');
INSERT INTO `cl_config` VALUES ('27', 'address', 'lianxi', 'Address', '填写总部地址', 'string', '上海市虹口区长阳路235号鼎立大厦8楼812室', null, '', '');
INSERT INTO `cl_config` VALUES ('28', 'lianxi_mail', 'lianxi', 'Lianxi_mail', '填写邮编', 'string', '200082', null, '', '');
INSERT INTO `cl_config` VALUES ('29', 'lianxi_phone', 'lianxi', 'Lianxi_phone', '填写总部联系电话', 'string', '400-920-1018', null, '', '');
INSERT INTO `cl_config` VALUES ('30', 'lianxi_email', 'lianxi', 'Lianxi_email', '填写总部邮箱号', 'string', 'info@glanway.com', null, '', '');

-- ----------------------------
-- Table structure for `cl_icons`
-- ----------------------------
DROP TABLE IF EXISTS `cl_icons`;
CREATE TABLE `cl_icons` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `unicode` varchar(50) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=141 DEFAULT CHARSET=utf8 COMMENT='icon图标表';

-- ----------------------------
-- Records of cl_icons
-- ----------------------------
INSERT INTO `cl_icons` VALUES ('1', '半星', '&#xe6c9;', 'layui-icon-rate-half');
INSERT INTO `cl_icons` VALUES ('2', '星星-空心', '&#xe67b;', 'layui-icon-rate');
INSERT INTO `cl_icons` VALUES ('3', '星星-实心', '&#xe67a;', 'layui-icon-rate-solid');
INSERT INTO `cl_icons` VALUES ('4', '手机', '&#xe678;', 'layui-icon-cellphone');
INSERT INTO `cl_icons` VALUES ('5', '验证码', '&#xe679;', 'layui-icon-vercode');
INSERT INTO `cl_icons` VALUES ('6', '微信', '&#xe677;', 'layui-icon-login-wechat');
INSERT INTO `cl_icons` VALUES ('7', 'QQ', '&#xe676;', 'layui-icon-login-qq');
INSERT INTO `cl_icons` VALUES ('8', '微博', '&#xe675;', 'layui-icon-login-weibo');
INSERT INTO `cl_icons` VALUES ('9', '密码', '&#xe673;', 'layui-icon-password');
INSERT INTO `cl_icons` VALUES ('10', '用户名', '&#xe66f;', 'layui-icon-username');
INSERT INTO `cl_icons` VALUES ('11', '刷新-粗', '&#xe9aa;', 'layui-icon-refresh-3');
INSERT INTO `cl_icons` VALUES ('12', '授权', '&#xe672;', 'layui-icon-auz');
INSERT INTO `cl_icons` VALUES ('13', '左向右伸缩菜单', '&#xe66b;', 'layui-icon-spread-left');
INSERT INTO `cl_icons` VALUES ('14', '右向左伸缩菜单', '&#xe668;', 'layui-icon-shrink-right');
INSERT INTO `cl_icons` VALUES ('15', '雪花', '&#xe6b1;', 'layui-icon-snowflake');
INSERT INTO `cl_icons` VALUES ('16', '提示说明', '&#xe702;', 'layui-icon-tips');
INSERT INTO `cl_icons` VALUES ('17', '便签', '&#xe66e;', 'layui-icon-note');
INSERT INTO `cl_icons` VALUES ('18', '主页', '&#xe68e;', 'layui-icon-home');
INSERT INTO `cl_icons` VALUES ('19', '高级', '&#xe674;', 'layui-icon-senior');
INSERT INTO `cl_icons` VALUES ('20', '刷新', '&#xe669;', 'layui-icon-refresh');
INSERT INTO `cl_icons` VALUES ('21', '刷新', '&#xe666;', 'layui-icon-refresh-1');
INSERT INTO `cl_icons` VALUES ('22', '旗帜', '&#xe66c;', 'layui-icon-flag');
INSERT INTO `cl_icons` VALUES ('23', '主题', '&#xe66a;', 'layui-icon-theme');
INSERT INTO `cl_icons` VALUES ('24', '消息-通知', '&#xe667;', 'layui-icon-notice');
INSERT INTO `cl_icons` VALUES ('25', '网站', '&#xe7ae;', 'layui-icon-website');
INSERT INTO `cl_icons` VALUES ('26', '控制台', '&#xe665;', 'layui-icon-console');
INSERT INTO `cl_icons` VALUES ('27', '表情-惊讶', '&#xe664;', 'layui-icon-face-surprised');
INSERT INTO `cl_icons` VALUES ('28', '设置-空心', '&#xe716;', 'layui-icon-set');
INSERT INTO `cl_icons` VALUES ('29', '模板', '&#xe656;', 'layui-icon-template-1');
INSERT INTO `cl_icons` VALUES ('30', '应用', '&#xe653;', 'layui-icon-app');
INSERT INTO `cl_icons` VALUES ('31', '模板', '&#xe663;', 'layui-icon-template');
INSERT INTO `cl_icons` VALUES ('32', '赞', '&#xe6c6;', 'layui-icon-praise');
INSERT INTO `cl_icons` VALUES ('33', '踩', '&#xe6c5;', 'layui-icon-tread');
INSERT INTO `cl_icons` VALUES ('34', '男', '&#xe662;', 'layui-icon-male');
INSERT INTO `cl_icons` VALUES ('35', '女', '&#xe661;', 'layui-icon-female');
INSERT INTO `cl_icons` VALUES ('36', '相机-空心', '&#xe660;', 'layui-icon-camera');
INSERT INTO `cl_icons` VALUES ('37', '相机-实心', '&#xe65d;', 'layui-icon-camera-fill');
INSERT INTO `cl_icons` VALUES ('38', '菜单-水平', '&#xe65f;', 'layui-icon-more');
INSERT INTO `cl_icons` VALUES ('39', '菜单-垂直', '&#xe671;', 'layui-icon-more-vertical');
INSERT INTO `cl_icons` VALUES ('40', '金额-人民币', '&#xe65e;', 'layui-icon-rmb');
INSERT INTO `cl_icons` VALUES ('41', '金额-美元', '&#xe659;', 'layui-icon-dollar');
INSERT INTO `cl_icons` VALUES ('42', '钻石-等级', '&#xe735;', 'layui-icon-diamond');
INSERT INTO `cl_icons` VALUES ('43', '火', '&#xe756;', 'layui-icon-fire');
INSERT INTO `cl_icons` VALUES ('44', '返回', '&#xe65c;', 'layui-icon-return');
INSERT INTO `cl_icons` VALUES ('45', '位置-地图', '&#xe715;', 'layui-icon-location');
INSERT INTO `cl_icons` VALUES ('46', '办公-阅读', '&#xe705;', 'layui-icon-read');
INSERT INTO `cl_icons` VALUES ('47', '调查', '&#xe6b2;', 'layui-icon-survey');
INSERT INTO `cl_icons` VALUES ('48', '表情-微笑', '&#xe6af;', 'layui-icon-face-smile');
INSERT INTO `cl_icons` VALUES ('49', '表情-哭泣', '&#xe69c;', 'layui-icon-face-cry');
INSERT INTO `cl_icons` VALUES ('50', '购物车', '&#xe698;', 'layui-icon-cart-simple');
INSERT INTO `cl_icons` VALUES ('51', '购物车', '&#xe657;', 'layui-icon-cart');
INSERT INTO `cl_icons` VALUES ('52', '下一页', '&#xe65b;', 'layui-icon-next');
INSERT INTO `cl_icons` VALUES ('53', '上一页', '&#xe65a;', 'layui-icon-prev');
INSERT INTO `cl_icons` VALUES ('54', '上传-空心-拖拽', '&#xe681;', 'layui-icon-upload-drag');
INSERT INTO `cl_icons` VALUES ('55', '上传-实心', '&#xe67c;', 'layui-icon-upload');
INSERT INTO `cl_icons` VALUES ('56', '下载-圆圈', '&#xe601;', 'layui-icon-download-circle');
INSERT INTO `cl_icons` VALUES ('57', '组件', '&#xe857;', 'layui-icon-component');
INSERT INTO `cl_icons` VALUES ('58', '文件-粗', '&#xe655;', 'layui-icon-file-b');
INSERT INTO `cl_icons` VALUES ('59', '用户', '&#xe770;', 'layui-icon-user');
INSERT INTO `cl_icons` VALUES ('60', '发现-实心', '&#xe670;', 'layui-icon-find-fill');
INSERT INTO `cl_icons` VALUES ('61', 'loading', '&#xe63d;', 'layui-icon-loading');
INSERT INTO `cl_icons` VALUES ('62', 'loading', '&#xe63e;', 'layui-icon-loading-1');
INSERT INTO `cl_icons` VALUES ('63', '添加', '&#xe654;', 'layui-icon-add-1');
INSERT INTO `cl_icons` VALUES ('64', '播放', '&#xe652;', 'layui-icon-play');
INSERT INTO `cl_icons` VALUES ('65', '暂停', '&#xe651;', 'layui-icon-pause');
INSERT INTO `cl_icons` VALUES ('66', '音频-耳机', '&#xe6fc;', 'layui-icon-headset');
INSERT INTO `cl_icons` VALUES ('67', '视频', '&#xe6ed;', 'layui-icon-video');
INSERT INTO `cl_icons` VALUES ('68', '语音-声音', '&#xe688;', 'layui-icon-voice');
INSERT INTO `cl_icons` VALUES ('69', '消息-通知-喇叭', '&#xe645;', 'layui-icon-speaker');
INSERT INTO `cl_icons` VALUES ('70', '删除线', '&#xe64f;', 'layui-icon-fonts-del');
INSERT INTO `cl_icons` VALUES ('71', '代码', '&#xe64e;', 'layui-icon-fonts-code');
INSERT INTO `cl_icons` VALUES ('72', 'HTML', '&#xe64b;', 'layui-icon-fonts-html');
INSERT INTO `cl_icons` VALUES ('73', '字体加粗', '&#xe62b;', 'layui-icon-fonts-strong');
INSERT INTO `cl_icons` VALUES ('74', '删除链接', '&#xe64d;', 'layui-icon-unlink');
INSERT INTO `cl_icons` VALUES ('75', '图片', '&#xe64a;', 'layui-icon-picture');
INSERT INTO `cl_icons` VALUES ('76', '链接', '&#xe64c;', 'layui-icon-link');
INSERT INTO `cl_icons` VALUES ('77', '表情-笑-粗', '&#xe650;', 'layui-icon-face-smile-b');
INSERT INTO `cl_icons` VALUES ('78', '左对齐', '&#xe649;', 'layui-icon-align-left');
INSERT INTO `cl_icons` VALUES ('79', '右对齐', '&#xe648;', 'layui-icon-align-right');
INSERT INTO `cl_icons` VALUES ('80', '居中对齐', '&#xe647;', 'layui-icon-align-center');
INSERT INTO `cl_icons` VALUES ('81', '字体-下划线', '&#xe646;', 'layui-icon-fonts-u');
INSERT INTO `cl_icons` VALUES ('82', '字体-斜体', '&#xe644;', 'layui-icon-fonts-i');
INSERT INTO `cl_icons` VALUES ('83', 'Tabs-选项卡', '&#xe62a;', 'layui-icon-tabs');
INSERT INTO `cl_icons` VALUES ('84', '单选框-选中', '&#xe643;', 'layui-icon-radio');
INSERT INTO `cl_icons` VALUES ('85', '单选框-候选', '&#xe63f;', 'layui-icon-circle');
INSERT INTO `cl_icons` VALUES ('86', '编辑', '&#xe642;', 'layui-icon-edit');
INSERT INTO `cl_icons` VALUES ('87', '分享', '&#xe641;', 'layui-icon-share');
INSERT INTO `cl_icons` VALUES ('88', '删除', '&#xe640;', 'layui-icon-delete');
INSERT INTO `cl_icons` VALUES ('89', '表单', '&#xe63c;', 'layui-icon-form');
INSERT INTO `cl_icons` VALUES ('90', '手机-细体', '&#xe63b;', 'layui-icon-cellphone-fine');
INSERT INTO `cl_icons` VALUES ('91', '聊天-对话-沟通', '&#xe63a;', 'layui-icon-dialogue');
INSERT INTO `cl_icons` VALUES ('92', '文字格式化', '&#xe639;', 'layui-icon-fonts-clear');
INSERT INTO `cl_icons` VALUES ('93', '窗口', '&#xe638;', 'layui-icon-layer');
INSERT INTO `cl_icons` VALUES ('94', '日期', '&#xe637;', 'layui-icon-date');
INSERT INTO `cl_icons` VALUES ('95', '水-下雨', '&#xe636;', 'layui-icon-water');
INSERT INTO `cl_icons` VALUES ('96', '代码-圆圈', '&#xe635;', 'layui-icon-code-circle');
INSERT INTO `cl_icons` VALUES ('97', '轮播组图', '&#xe634;', 'layui-icon-carousel');
INSERT INTO `cl_icons` VALUES ('98', '翻页', '&#xe633;', 'layui-icon-prev-circle');
INSERT INTO `cl_icons` VALUES ('99', '布局', '&#xe632;', 'layui-icon-layouts');
INSERT INTO `cl_icons` VALUES ('100', '工具', '&#xe631;', 'layui-icon-util');
INSERT INTO `cl_icons` VALUES ('101', '选择模板', '&#xe630;', 'layui-icon-templeate-1');
INSERT INTO `cl_icons` VALUES ('102', '上传-圆圈', '&#xe62f;', 'layui-icon-upload-circle');
INSERT INTO `cl_icons` VALUES ('103', '树', '&#xe62e;', 'layui-icon-tree');
INSERT INTO `cl_icons` VALUES ('104', '表格', '&#xe62d;', 'layui-icon-table');
INSERT INTO `cl_icons` VALUES ('105', '图表', '&#xe62c;', 'layui-icon-chart');
INSERT INTO `cl_icons` VALUES ('106', '图标-报表-屏幕', '&#xe629;', 'layui-icon-chart-screen');
INSERT INTO `cl_icons` VALUES ('107', '引擎', '&#xe628;', 'layui-icon-engine');
INSERT INTO `cl_icons` VALUES ('108', '下三角', '&#xe625;', 'layui-icon-triangle-d');
INSERT INTO `cl_icons` VALUES ('109', '右三角', '&#xe623;', 'layui-icon-triangle-r');
INSERT INTO `cl_icons` VALUES ('110', '文件', '&#xe621;', 'layui-icon-file');
INSERT INTO `cl_icons` VALUES ('111', '设置-小型', '&#xe620;', 'layui-icon-set-sm');
INSERT INTO `cl_icons` VALUES ('112', '添加-圆圈', '&#xe61f;', 'layui-icon-add-circle');
INSERT INTO `cl_icons` VALUES ('113', '404', '&#xe61c;', 'layui-icon-404');
INSERT INTO `cl_icons` VALUES ('114', '关于', '&#xe60b;', 'layui-icon-about');
INSERT INTO `cl_icons` VALUES ('115', '箭头-向上', '&#xe619;', 'layui-icon-up');
INSERT INTO `cl_icons` VALUES ('116', '箭头-向下', '&#xe61a;', 'layui-icon-down');
INSERT INTO `cl_icons` VALUES ('117', '箭头-向左', '&#xe603;', 'layui-icon-left');
INSERT INTO `cl_icons` VALUES ('118', '箭头-向右', '&#xe602;', 'layui-icon-right');
INSERT INTO `cl_icons` VALUES ('119', '圆点', '&#xe617;', 'layui-icon-circle-dot');
INSERT INTO `cl_icons` VALUES ('120', '搜索', '&#xe615;', 'layui-icon-search');
INSERT INTO `cl_icons` VALUES ('121', '设置-实心', '&#xe614;', 'layui-icon-set-fill');
INSERT INTO `cl_icons` VALUES ('122', '群组', '&#xe613;', 'layui-icon-group');
INSERT INTO `cl_icons` VALUES ('123', '好友', '&#xe612;', 'layui-icon-friends');
INSERT INTO `cl_icons` VALUES ('124', '回复-评论-实心', '&#xe611;', 'layui-icon-reply-fill');
INSERT INTO `cl_icons` VALUES ('125', '菜单-隐身-实心', '&#xe60f;', 'layui-icon-menu-fill');
INSERT INTO `cl_icons` VALUES ('126', '记录', '&#xe60e;', 'layui-icon-log');
INSERT INTO `cl_icons` VALUES ('127', '图片-细体', '&#xe60d;', 'layui-icon-picture-fine');
INSERT INTO `cl_icons` VALUES ('128', '表情-笑-细体', '&#xe60c;', 'layui-icon-face-smile-fine');
INSERT INTO `cl_icons` VALUES ('129', '列表', '&#xe60a;', 'layui-icon-list');
INSERT INTO `cl_icons` VALUES ('130', '发布-纸飞机', '&#xe609;', 'layui-icon-release');
INSERT INTO `cl_icons` VALUES ('131', '对-OK', '&#xe605;', 'layui-icon-ok');
INSERT INTO `cl_icons` VALUES ('132', '帮助', '&#xe607;', 'layui-icon-help');
INSERT INTO `cl_icons` VALUES ('133', '客服', '&#xe606;', 'layui-icon-chat');
INSERT INTO `cl_icons` VALUES ('134', 'top-置顶', '&#xe604;', 'layui-icon-top');
INSERT INTO `cl_icons` VALUES ('135', '收藏-空心', '&#xe600;', 'layui-icon-star');
INSERT INTO `cl_icons` VALUES ('136', '收藏-实心', '&#xe658;', 'layui-icon-star-fill');
INSERT INTO `cl_icons` VALUES ('137', '关闭-实心', '&#x1007;', 'layui-icon-close-fill');
INSERT INTO `cl_icons` VALUES ('138', '关闭-空心', '&#x1006;', 'layui-icon-close');
INSERT INTO `cl_icons` VALUES ('139', '正确', '&#x1005;', 'layui-icon-ok-circle');
INSERT INTO `cl_icons` VALUES ('140', '添加-圆圈-细体', '&#xe608;', 'layui-icon-add-circle-fine');

-- ----------------------------
-- Table structure for `cl_menu`
-- ----------------------------
DROP TABLE IF EXISTS `cl_menu`;
CREATE TABLE `cl_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `icon` varchar(64) NOT NULL DEFAULT '' COMMENT '图标',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `app` char(20) NOT NULL DEFAULT '' COMMENT '应用标识',
  `controller` char(20) NOT NULL DEFAULT '' COMMENT '控制器标识',
  `action` char(20) NOT NULL DEFAULT '' COMMENT '方法标识',
  `parameter` char(255) NOT NULL DEFAULT '' COMMENT '附加参数',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `tip` varchar(255) NOT NULL DEFAULT '' COMMENT '提示',
  `is_dev` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否开发者可见',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序ID',
  PRIMARY KEY (`id`),
  KEY `pid` (`parentid`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

-- ----------------------------
-- Records of cl_menu
-- ----------------------------
INSERT INTO `cl_menu` VALUES ('3', '系统设置', 'layui-icon layui-icon-set', '0', 'admin', 'index', 'index', '', '1', '', '0', '2');
INSERT INTO `cl_menu` VALUES ('10', '系统配置', 'iconfont icon-zidongxiufu', '3', 'admin', 'config', '#', '', '1', '', '0', '0');
INSERT INTO `cl_menu` VALUES ('11', '配置管理', 'iconfont icon-peizhi', '10', 'admin', 'config', 'index', '', '0', '', '0', '0');
INSERT INTO `cl_menu` VALUES ('13', '网站设置', 'iconfont icon-shezhi', '10', 'admin', 'config', 'setting', '', '0', '', '0', '0');
INSERT INTO `cl_menu` VALUES ('14', '菜单管理', 'iconfont icon-liebiao', '10', 'admin', 'menu', 'index', '', '1', '', '0', '0');
INSERT INTO `cl_menu` VALUES ('15', '账户管理', 'iconfont icon-guanliyuan', '3', 'admin', 'manager', '#', '', '1', '', '0', '0');
INSERT INTO `cl_menu` VALUES ('16', '管理员管理', 'iconfont icon-guanliyuan', '15', 'admin', 'manager', 'index', '', '1', '', '0', '2');
INSERT INTO `cl_menu` VALUES ('17', '角色管理', 'iconfont icon-chengyuan', '15', 'admin', 'authManager', 'index', '', '1', '', '0', '1');
INSERT INTO `cl_menu` VALUES ('23', '附件管理', 'iconfont icon-fujian', '10', 'attachment', 'attachments', 'index', '', '1', '', '0', '1');
INSERT INTO `cl_menu` VALUES ('1', '控制面板', 'layui-icon layui-icon-home', '0', 'admin', 'main', 'index', '', '1', '', '0', '0');
INSERT INTO `cl_menu` VALUES ('35', '微信管理', 'layui-icon layui-icon-login-wechat', '3', 'admin', 'weicat', '#', '', '1', '', '0', '0');
INSERT INTO `cl_menu` VALUES ('36', '微信配置', 'layui-icon layui-icon-set-fill', '35', 'admin', 'weicat', 'setting', '', '1', '', '0', '0');
INSERT INTO `cl_menu` VALUES ('37', '微信菜单', 'layui-icon layui-icon-spread-left', '35', 'admin', 'weicat', 'menu', '', '1', '', '0', '1');
INSERT INTO `cl_menu` VALUES ('38', '首页管理', 'layui-icon layui-icon-home', '1', 'admin', 'banner', '#', '', '1', '', '0', '0');
INSERT INTO `cl_menu` VALUES ('39', '轮播图管理', 'layui-icon layui-icon-carousel', '38', 'admin', 'banner', 'index', '', '1', '', '0', '0');
INSERT INTO `cl_menu` VALUES ('45', '管理员日志', 'layui-icon layui-icon-edit', '15', 'admin', 'adminlog', 'index', '', '1', '', '0', '2');
