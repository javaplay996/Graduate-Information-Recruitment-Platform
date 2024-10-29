/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50636
Source Host           : localhost:3306
Source Database       : springbootan251

Target Server Type    : MYSQL
Target Server Version : 50636
File Encoding         : 65001

Date: 2021-01-04 11:22:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for biyesheng
-- ----------------------------
DROP TABLE IF EXISTS `biyesheng`;
CREATE TABLE `biyesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1609729129905 DEFAULT CHARSET=utf8 COMMENT='毕业生';

-- ----------------------------
-- Records of biyesheng
-- ----------------------------
INSERT INTO `biyesheng` VALUES ('41', '2021-01-04 10:03:29', '001', '001', '小吴', '男', 'http://localhost:8080/springbootan251/upload/biyesheng_touxiang1.jpg', '计算机', '13823888881', '773890001@qq.com');
INSERT INTO `biyesheng` VALUES ('42', '2021-01-04 10:03:29', '毕业生2', '123456', '姓名2', '男', 'http://localhost:8080/springbootan251/upload/biyesheng_touxiang2.jpg', '专业2', '13823888882', '773890002@qq.com');
INSERT INTO `biyesheng` VALUES ('43', '2021-01-04 10:03:29', '毕业生3', '123456', '姓名3', '男', 'http://localhost:8080/springbootan251/upload/biyesheng_touxiang3.jpg', '专业3', '13823888883', '773890003@qq.com');
INSERT INTO `biyesheng` VALUES ('44', '2021-01-04 10:03:29', '毕业生4', '123456', '姓名4', '男', 'http://localhost:8080/springbootan251/upload/biyesheng_touxiang4.jpg', '专业4', '13823888884', '773890004@qq.com');
INSERT INTO `biyesheng` VALUES ('45', '2021-01-04 10:03:29', '毕业生5', '123456', '姓名5', '男', 'http://localhost:8080/springbootan251/upload/biyesheng_touxiang5.jpg', '专业5', '13823888885', '773890005@qq.com');
INSERT INTO `biyesheng` VALUES ('46', '2021-01-04 10:03:29', '毕业生6', '123456', '姓名6', '男', 'http://localhost:8080/springbootan251/upload/biyesheng_touxiang6.jpg', '专业6', '13823888886', '773890006@qq.com');
INSERT INTO `biyesheng` VALUES ('1609729129904', '2021-01-04 10:58:49', '666', '666', '小吴', '男', 'http://localhost:8080/springbootan251/upload/1609729149762.jpg', '计算机', '16459887988', '13532@123.com');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', 'picture1', 'http://localhost:8080/springbootan251/upload/picture1.jpg');
INSERT INTO `config` VALUES ('2', 'picture2', 'http://localhost:8080/springbootan251/upload/picture2.jpg');
INSERT INTO `config` VALUES ('3', 'picture3', 'http://localhost:8080/springbootan251/upload/picture3.jpg');
INSERT INTO `config` VALUES ('6', 'homepage', null);

-- ----------------------------
-- Table structure for discusskongzhongxuanjianghui
-- ----------------------------
DROP TABLE IF EXISTS `discusskongzhongxuanjianghui`;
CREATE TABLE `discusskongzhongxuanjianghui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609727942798 DEFAULT CHARSET=utf8 COMMENT='空中宣讲会评论表';

-- ----------------------------
-- Records of discusskongzhongxuanjianghui
-- ----------------------------
INSERT INTO `discusskongzhongxuanjianghui` VALUES ('171', '2021-01-04 10:03:29', '1', '1', '评论内容1', '回复内容1');
INSERT INTO `discusskongzhongxuanjianghui` VALUES ('172', '2021-01-04 10:03:29', '2', '2', '评论内容2', '回复内容2');
INSERT INTO `discusskongzhongxuanjianghui` VALUES ('173', '2021-01-04 10:03:29', '3', '3', '评论内容3', '回复内容3');
INSERT INTO `discusskongzhongxuanjianghui` VALUES ('174', '2021-01-04 10:03:29', '4', '4', '评论内容4', '回复内容4');
INSERT INTO `discusskongzhongxuanjianghui` VALUES ('175', '2021-01-04 10:03:29', '5', '5', '评论内容5', '回复内容5');
INSERT INTO `discusskongzhongxuanjianghui` VALUES ('176', '2021-01-04 10:03:29', '6', '6', '评论内容6', '回复内容6');
INSERT INTO `discusskongzhongxuanjianghui` VALUES ('1609727942797', '2021-01-04 10:39:02', '1609727708373', '41', '666', '管理员在后台可以查看评论并回复');

-- ----------------------------
-- Table structure for discussqiuzhixinxi
-- ----------------------------
DROP TABLE IF EXISTS `discussqiuzhixinxi`;
CREATE TABLE `discussqiuzhixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8 COMMENT='求职信息评论表';

-- ----------------------------
-- Records of discussqiuzhixinxi
-- ----------------------------
INSERT INTO `discussqiuzhixinxi` VALUES ('191', '2021-01-04 10:03:29', '1', '1', '评论内容1', '回复内容1');
INSERT INTO `discussqiuzhixinxi` VALUES ('192', '2021-01-04 10:03:29', '2', '2', '评论内容2', '回复内容2');
INSERT INTO `discussqiuzhixinxi` VALUES ('193', '2021-01-04 10:03:29', '3', '3', '评论内容3', '回复内容3');
INSERT INTO `discussqiuzhixinxi` VALUES ('194', '2021-01-04 10:03:29', '4', '4', '评论内容4', '回复内容4');
INSERT INTO `discussqiuzhixinxi` VALUES ('195', '2021-01-04 10:03:29', '5', '5', '评论内容5', '回复内容5');
INSERT INTO `discussqiuzhixinxi` VALUES ('196', '2021-01-04 10:03:29', '6', '6', '评论内容6', '回复内容6');

-- ----------------------------
-- Table structure for discusszhaopingangwei
-- ----------------------------
DROP TABLE IF EXISTS `discusszhaopingangwei`;
CREATE TABLE `discusszhaopingangwei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609729283384 DEFAULT CHARSET=utf8 COMMENT='招聘岗位评论表';

-- ----------------------------
-- Records of discusszhaopingangwei
-- ----------------------------
INSERT INTO `discusszhaopingangwei` VALUES ('181', '2021-01-04 10:03:29', '1', '1', '评论内容1', '回复内容1');
INSERT INTO `discusszhaopingangwei` VALUES ('182', '2021-01-04 10:03:29', '2', '2', '评论内容2', '回复内容2');
INSERT INTO `discusszhaopingangwei` VALUES ('183', '2021-01-04 10:03:29', '3', '3', '评论内容3', '回复内容3');
INSERT INTO `discusszhaopingangwei` VALUES ('184', '2021-01-04 10:03:29', '4', '4', '评论内容4', '回复内容4');
INSERT INTO `discusszhaopingangwei` VALUES ('185', '2021-01-04 10:03:29', '5', '5', '评论内容5', '回复内容5');
INSERT INTO `discusszhaopingangwei` VALUES ('186', '2021-01-04 10:03:29', '6', '6', '评论内容6', '回复内容6');
INSERT INTO `discusszhaopingangwei` VALUES ('1609729283383', '2021-01-04 11:01:23', '1609727756251', '1609729129904', '登录后可以评论  收藏  咨询跟应聘等操作 ', null);

-- ----------------------------
-- Table structure for exampaper
-- ----------------------------
DROP TABLE IF EXISTS `exampaper`;
CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609727818673 DEFAULT CHARSET=utf8 COMMENT='试卷表';

-- ----------------------------
-- Records of exampaper
-- ----------------------------
INSERT INTO `exampaper` VALUES ('1609727818672', '2021-01-04 10:36:58', 'XX测试', '30', '1');

-- ----------------------------
-- Table structure for examquestion
-- ----------------------------
DROP TABLE IF EXISTS `examquestion`;
CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609727898077 DEFAULT CHARSET=utf8 COMMENT='试题表';

-- ----------------------------
-- Records of examquestion
-- ----------------------------
INSERT INTO `examquestion` VALUES ('1609727831061', '2021-01-04 10:37:10', '1609727818672', 'XX测试', '1', '[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]', '20', 'A', '1', '2', '1');
INSERT INTO `examquestion` VALUES ('1609727886352', '2021-01-04 10:38:05', '1609727818672', 'XX测试', '2', '[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]', '20', 'A', '2', '2', '2');
INSERT INTO `examquestion` VALUES ('1609727898076', '2021-01-04 10:38:17', '1609727818672', 'XX测试', '3', '[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]', '20', 'A', '3', '2', '3');

-- ----------------------------
-- Table structure for examrecord
-- ----------------------------
DROP TABLE IF EXISTS `examrecord`;
CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609729529476 DEFAULT CHARSET=utf8 COMMENT='考试记录表';

-- ----------------------------
-- Records of examrecord
-- ----------------------------
INSERT INTO `examrecord` VALUES ('1609729524320', '2021-01-04 11:05:23', '1609729129904', null, '1609727818672', 'XX测试', '1609727831061', '1', '[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]', '20', 'A', '1', '20', 'A');
INSERT INTO `examrecord` VALUES ('1609729526879', '2021-01-04 11:05:26', '1609729129904', null, '1609727818672', 'XX测试', '1609727886352', '2', '[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]', '20', 'A', '2', '0', 'B');
INSERT INTO `examrecord` VALUES ('1609729529475', '2021-01-04 11:05:28', '1609729129904', null, '1609727818672', 'XX测试', '1609727898076', '3', '[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]', '20', 'A', '3', '20', 'A');

-- ----------------------------
-- Table structure for forum
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609729549901 DEFAULT CHARSET=utf8 COMMENT='论坛表';

-- ----------------------------
-- Records of forum
-- ----------------------------
INSERT INTO `forum` VALUES ('1609728073295', '2021-01-04 10:41:12', '长江日报报业集团招聘公告', '<p class=\"ql-align-justify\">因事业发展需要，长江日报报业集团面向社会招聘各种人才。根据集团全媒体建设规划，在前期招聘报名基础上，对相关岗位类别、岗位能力要求进行优化，继续面向社会招聘。现将有关事项公告如下：</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><strong>一、报名基本条件</strong></p><p class=\"ql-align-justify\">1.热爱党的新闻舆论工作，综合素质好，身体健康，具有强烈事业心、责任感，有良好职业道德。</p><p class=\"ql-align-justify\">2.具有全日制硕士研究生及以上学历（含应届毕业生），特别优秀者适当放宽条件。</p><p class=\"ql-align-justify\">3.年龄在28周岁以内，有媒体工作经历可适当放宽至30周岁以内。</p><p class=\"ql-align-justify\">4.具有良好的合作沟通意识、组织协调能力，适应全天候工作状态。</p><p class=\"ql-align-justify\"><strong>二、集团招聘岗位及岗位能力要求</strong></p><p class=\"ql-align-justify\"><strong>管理员在后台可以修改删除用户帖子</strong>	</p><p class=\"ql-align-justify\"><br></p>', '0', '41', '001', '开放');
INSERT INTO `forum` VALUES ('1609728098421', '2021-01-04 10:41:38', '“人才夜市” 开启招聘新模式', '<p style=\"box-sizing: inherit; margin: 34px 0px; padding: 0px; text-align: justify; color: #404040; font-family: Arial, \'Hiragino Sans GB\', STHeiti, \'Helvetica Neue\', Helvetica, \'Microsoft Yahei\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\">瓯网讯 （通讯员 邵卢静） 最近，温州白鹿洲公园内除了锻炼、休闲的市民，还来了一群特殊的&ldquo;游客&rdquo;。在南塘街1号楼北广场，由温州市人力社保局主办的&ldquo;月光经济&rdquo;公益性招聘会热闹开市，近30家企业摆开&ldquo;摊位&rdquo;。</p>\n<p style=\"box-sizing: inherit; margin: 34px 0px; padding: 0px; text-align: justify; color: #404040; font-family: Arial, \'Hiragino Sans GB\', STHeiti, \'Helvetica Neue\', Helvetica, \'Microsoft Yahei\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\">　　暮色下的&ldquo;人才夜市&rdquo;热闹非凡。记者看到，包括奥康鞋业股份有限公司、纪梵喜服饰有限公司等知名企业在内的近30家企业，带来了1000余个就业岗位。这些岗位中，有男女管工、喷绘师傅、部门文员、餐饮服务员、保安员、保洁员、咖啡师、家政阿姨等30多个工种，吸引近千人次到场应聘。现场还设置了多个咨询台，为求职人员提供政策指导和咨询服务。求职人员纷纷表示，这场打破空间限制的公益招聘活动，给了他们一个休闲舒适的洽谈平台。</p>\n<p style=\"box-sizing: inherit; margin: 34px 0px; padding: 0px; text-align: justify; color: #404040; font-family: Arial, \'Hiragino Sans GB\', STHeiti, \'Helvetica Neue\', Helvetica, \'Microsoft Yahei\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\">　　温州洞头区、永嘉县等地也纷纷推出&ldquo;人才夜市&rdquo;招聘新模式。洞头区的&ldquo;月光招聘周&rdquo;吸引了16家企业入驻，带来普工、文员、检验员、仓管员等345个岗位。永嘉县的&ldquo;人才夜市&rdquo;按需制定，活动现场提供车工、普工、电焊工等需求岗位3134个，吸引2700余位应聘者。</p>', '0', '41', '001', '开放');
INSERT INTO `forum` VALUES ('1609729486244', '2021-01-04 11:04:45', null, '这里可以回复帖子', '1609728073295', '1609729129904', '666', null);
INSERT INTO `forum` VALUES ('1609729499003', '2021-01-04 11:04:58', null, '66', '1609728098421', '1609729129904', '666', null);
INSERT INTO `forum` VALUES ('1609729549900', '2021-01-04 11:05:49', '这里可以发帖', '<p>发帖</p>', '0', '1609729129904', '666', '开放');

-- ----------------------------
-- Table structure for gangweiyingpin
-- ----------------------------
DROP TABLE IF EXISTS `gangweiyingpin`;
CREATE TABLE `gangweiyingpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gangweimingcheng` varchar(200) DEFAULT NULL COMMENT '岗位名称',
  `xingye` varchar(200) DEFAULT NULL COMMENT '行业',
  `qiyebianhao` varchar(200) DEFAULT NULL COMMENT '企业编号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `chengshi` varchar(200) DEFAULT NULL COMMENT '城市',
  `yingpinneirong` longtext COMMENT '应聘内容',
  `qiuzhijianli` varchar(200) DEFAULT NULL COMMENT '求职简历',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609729352365 DEFAULT CHARSET=utf8 COMMENT='岗位应聘';

-- ----------------------------
-- Records of gangweiyingpin
-- ----------------------------
INSERT INTO `gangweiyingpin` VALUES ('81', '2021-01-04 10:03:29', '岗位名称1', '行业1', '企业编号1', '企业名称1', '城市1', '应聘内容1', '', '备注1', '用户名1', '姓名1', '专业1', '手机1', '否', '');
INSERT INTO `gangweiyingpin` VALUES ('82', '2021-01-04 10:03:29', '岗位名称2', '行业2', '企业编号2', '企业名称2', '城市2', '应聘内容2', '', '备注2', '用户名2', '姓名2', '专业2', '手机2', '否', '');
INSERT INTO `gangweiyingpin` VALUES ('83', '2021-01-04 10:03:29', '岗位名称3', '行业3', '企业编号3', '企业名称3', '城市3', '应聘内容3', '', '备注3', '用户名3', '姓名3', '专业3', '手机3', '否', '');
INSERT INTO `gangweiyingpin` VALUES ('84', '2021-01-04 10:03:29', '岗位名称4', '行业4', '企业编号4', '企业名称4', '城市4', '应聘内容4', '', '备注4', '用户名4', '姓名4', '专业4', '手机4', '否', '');
INSERT INTO `gangweiyingpin` VALUES ('85', '2021-01-04 10:03:29', '岗位名称5', '行业5', '企业编号5', '企业名称5', '城市5', '应聘内容5', '', '备注5', '用户名5', '姓名5', '专业5', '手机5', '否', '');
INSERT INTO `gangweiyingpin` VALUES ('86', '2021-01-04 10:03:29', '岗位名称6', '行业6', '企业编号6', '企业名称6', '城市6', '应聘内容6', '', '备注6', '用户名6', '姓名6', '专业6', '手机6', '否', '');
INSERT INTO `gangweiyingpin` VALUES ('1609727991531', '2021-01-04 10:39:50', '岗位1', '汽修业', '000', '吉利汽车', '深圳', '<p>121212我要应聘</p>', 'http://localhost:8080/springbootan251/upload/1609727981530.docx', '1', '001', '小吴', '计算机', '13823888881', '否', null);
INSERT INTO `gangweiyingpin` VALUES ('1609729352364', '2021-01-04 11:02:32', '岗位1', '汽修业', '000', '吉利汽车', '深圳', '<p>这里输入应聘内容</p>', 'http://localhost:8080/springbootan251/upload/1609729339528.docx', '1', '666', '小吴', '计算机', '16459887988', '是', '收到求职信息');

-- ----------------------------
-- Table structure for gerenjianli
-- ----------------------------
DROP TABLE IF EXISTS `gerenjianli`;
CREATE TABLE `gerenjianli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `juzhushengfen` varchar(200) DEFAULT NULL COMMENT '居住省份',
  `juzhuchengshi` varchar(200) DEFAULT NULL COMMENT '居住城市',
  `chushengnianyue` date DEFAULT NULL COMMENT '出生年月',
  `gongzuoshijian` varchar(200) DEFAULT NULL COMMENT '工作时间',
  `dangqianzhuangtai` varchar(200) DEFAULT NULL COMMENT '当前状态',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `zuigaoxueli` varchar(200) DEFAULT NULL COMMENT '最高学历',
  `jianlifujian` varchar(200) DEFAULT NULL COMMENT '简历附件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609729599194 DEFAULT CHARSET=utf8 COMMENT='个人简历';

-- ----------------------------
-- Records of gerenjianli
-- ----------------------------
INSERT INTO `gerenjianli` VALUES ('51', '2021-01-04 10:03:29', '用户名1', '姓名1', '性别1', 'http://localhost:8080/springbootan251/upload/gerenjianli_touxiang1.jpg', '居住省份1', '居住城市1', '2021-01-04', '工作时间1', '在职', '手机1', '专业1', '最高学历1', '');
INSERT INTO `gerenjianli` VALUES ('52', '2021-01-04 10:03:29', '用户名2', '姓名2', '性别2', 'http://localhost:8080/springbootan251/upload/gerenjianli_touxiang2.jpg', '居住省份2', '居住城市2', '2021-01-04', '工作时间2', '在职', '手机2', '专业2', '最高学历2', '');
INSERT INTO `gerenjianli` VALUES ('53', '2021-01-04 10:03:29', '用户名3', '姓名3', '性别3', 'http://localhost:8080/springbootan251/upload/gerenjianli_touxiang3.jpg', '居住省份3', '居住城市3', '2021-01-04', '工作时间3', '在职', '手机3', '专业3', '最高学历3', '');
INSERT INTO `gerenjianli` VALUES ('54', '2021-01-04 10:03:29', '用户名4', '姓名4', '性别4', 'http://localhost:8080/springbootan251/upload/gerenjianli_touxiang4.jpg', '居住省份4', '居住城市4', '2021-01-04', '工作时间4', '在职', '手机4', '专业4', '最高学历4', '');
INSERT INTO `gerenjianli` VALUES ('55', '2021-01-04 10:03:29', '用户名5', '姓名5', '性别5', 'http://localhost:8080/springbootan251/upload/gerenjianli_touxiang5.jpg', '居住省份5', '居住城市5', '2021-01-04', '工作时间5', '在职', '手机5', '专业5', '最高学历5', '');
INSERT INTO `gerenjianli` VALUES ('56', '2021-01-04 10:03:29', '用户名6', '姓名6', '性别6', 'http://localhost:8080/springbootan251/upload/gerenjianli_touxiang6.jpg', '居住省份6', '居住城市6', '2021-01-04', '工作时间6', '在职', '手机6', '专业6', '最高学历6', '');
INSERT INTO `gerenjianli` VALUES ('1609728143985', '2021-01-04 10:42:23', '001', '小吴', '男', 'http://localhost:8080/springbootan251/upload/biyesheng_touxiang1.jpg', '湖南省', '长沙市', '2016-12-25', '无', '在校生', '13823888881', '计算机', '本科', 'http://localhost:8080/springbootan251/upload/1609728142479.docx');
INSERT INTO `gerenjianli` VALUES ('1609729599193', '2021-01-04 11:06:39', '666', '小吴', '男', 'http://localhost:8080/springbootan251/upload/1609729149762.jpg', '这里可以填写自己的简历', '上海', '2010-01-10', '无', '在校生', '16459887988', '计算机', '本科', 'http://localhost:8080/springbootan251/upload/1609729598401.docx');

-- ----------------------------
-- Table structure for kongzhongxuanjianghui
-- ----------------------------
DROP TABLE IF EXISTS `kongzhongxuanjianghui`;
CREATE TABLE `kongzhongxuanjianghui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyebianhao` varchar(200) DEFAULT NULL COMMENT '企业编号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `guimo` varchar(200) DEFAULT NULL COMMENT '规模',
  `xingzhi` varchar(200) DEFAULT NULL COMMENT '性质',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `xuanchuanshipin` varchar(200) DEFAULT NULL COMMENT '宣传视频',
  `bangongdizhi` varchar(200) DEFAULT NULL COMMENT '办公地址',
  `xuanjiangneirong` longtext COMMENT '宣讲内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609727708374 DEFAULT CHARSET=utf8 COMMENT='空中宣讲会';

-- ----------------------------
-- Records of kongzhongxuanjianghui
-- ----------------------------
INSERT INTO `kongzhongxuanjianghui` VALUES ('21', '2021-01-04 10:03:29', '企业编号1', '企业名称1', '规模1', '性质1', 'http://localhost:8080/springbootan251/upload/kongzhongxuanjianghui_tupian1.jpg', '联系人1', '联系电话1', '', '办公地址1', '宣讲内容1');
INSERT INTO `kongzhongxuanjianghui` VALUES ('22', '2021-01-04 10:03:29', '企业编号2', '企业名称2', '规模2', '性质2', 'http://localhost:8080/springbootan251/upload/kongzhongxuanjianghui_tupian2.jpg', '联系人2', '联系电话2', '', '办公地址2', '宣讲内容2');
INSERT INTO `kongzhongxuanjianghui` VALUES ('23', '2021-01-04 10:03:29', '企业编号3', '企业名称3', '规模3', '性质3', 'http://localhost:8080/springbootan251/upload/kongzhongxuanjianghui_tupian3.jpg', '联系人3', '联系电话3', '', '办公地址3', '宣讲内容3');
INSERT INTO `kongzhongxuanjianghui` VALUES ('24', '2021-01-04 10:03:29', '企业编号4', '企业名称4', '规模4', '性质4', 'http://localhost:8080/springbootan251/upload/kongzhongxuanjianghui_tupian4.jpg', '联系人4', '联系电话4', '', '办公地址4', '宣讲内容4');
INSERT INTO `kongzhongxuanjianghui` VALUES ('25', '2021-01-04 10:03:29', '企业编号5', '企业名称5', '规模5', '性质5', 'http://localhost:8080/springbootan251/upload/kongzhongxuanjianghui_tupian5.jpg', '联系人5', '联系电话5', '', '办公地址5', '宣讲内容5');
INSERT INTO `kongzhongxuanjianghui` VALUES ('26', '2021-01-04 10:03:29', '企业编号6', '企业名称6', '规模6', '性质6', 'http://localhost:8080/springbootan251/upload/kongzhongxuanjianghui_tupian6.jpg', '联系人6', '联系电话6', '', '办公地址6', '宣讲内容6');
INSERT INTO `kongzhongxuanjianghui` VALUES ('1609727708373', '2021-01-04 10:35:08', '000', '吉利汽车', '大型', '汽车业', 'http://localhost:8080/springbootan251/upload/qiye_tupian1.jpg', '李生', '13823888881', 'http://localhost:8080/springbootan251/upload/1609727700582.mp4', '上海', '<p>1212</p>');

-- ----------------------------
-- Table structure for mianshihuifu
-- ----------------------------
DROP TABLE IF EXISTS `mianshihuifu`;
CREATE TABLE `mianshihuifu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mianshibiaoti` varchar(200) DEFAULT NULL COMMENT '面试标题',
  `mianshihuifu` longtext COMMENT '面试回复',
  `huifufujian` varchar(200) DEFAULT NULL COMMENT '回复附件',
  `huifushijian` datetime DEFAULT NULL COMMENT '回复时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `qiyebianhao` varchar(200) DEFAULT NULL COMMENT '企业编号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609730287402 DEFAULT CHARSET=utf8 COMMENT='面试回复';

-- ----------------------------
-- Records of mianshihuifu
-- ----------------------------
INSERT INTO `mianshihuifu` VALUES ('101', '2021-01-04 10:03:29', '面试标题1', '面试回复1', '', '2021-01-04 10:03:29', '备注1', '企业编号1', '企业名称1', '用户名1', '姓名1', '手机1', '否', '');
INSERT INTO `mianshihuifu` VALUES ('102', '2021-01-04 10:03:29', '面试标题2', '面试回复2', '', '2021-01-04 10:03:29', '备注2', '企业编号2', '企业名称2', '用户名2', '姓名2', '手机2', '否', '');
INSERT INTO `mianshihuifu` VALUES ('103', '2021-01-04 10:03:29', '面试标题3', '面试回复3', '', '2021-01-04 10:03:29', '备注3', '企业编号3', '企业名称3', '用户名3', '姓名3', '手机3', '否', '');
INSERT INTO `mianshihuifu` VALUES ('104', '2021-01-04 10:03:29', '面试标题4', '面试回复4', '', '2021-01-04 10:03:29', '备注4', '企业编号4', '企业名称4', '用户名4', '姓名4', '手机4', '否', '');
INSERT INTO `mianshihuifu` VALUES ('105', '2021-01-04 10:03:29', '面试标题5', '面试回复5', '', '2021-01-04 10:03:29', '备注5', '企业编号5', '企业名称5', '用户名5', '姓名5', '手机5', '否', '');
INSERT INTO `mianshihuifu` VALUES ('106', '2021-01-04 10:03:29', '面试标题6', '面试回复6', '', '2021-01-04 10:03:29', '备注6', '企业编号6', '企业名称6', '用户名6', '姓名6', '手机6', '否', '');
INSERT INTO `mianshihuifu` VALUES ('1609730287401', '2021-01-04 11:18:06', '这里添加线上面试相关问题  附件可以上传文档类文件', '<p>这里添加回复的内容  附件同样可以上传文档类文件</p>', null, '2021-01-27 16:00:00', null, '000', '吉利汽车', '666', '小吴', '16459887988', '是', '这里可以回复面试后回复  比如你已通过面试之类  XX时候来报道');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COMMENT='招聘资讯';

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('161', '2021-01-04 10:03:29', '2021界首市人民医院医疗卫生急需紧缺人员招聘3人公告（第一批）', 'http://localhost:8080/springbootan251/upload/news_picture1.jpg', '<p>	根据医院发展需要，经研究决定，我院面向社会公开定向招聘医疗卫生专业技术人员3名，现将招聘工作有关事宜公告如下：</p><p>	一、招聘岗位</p><p>	急诊科住院医师2人;</p><p>	功能检查室医师1人。</p><p>	二、招聘条件</p><p>	应聘人员需遵守国家法律法规，具有良好的品行和职业道德，身体健康，具有履行具体工作职责的基本能力并符合以下条件：</p><p>	急诊科住院医师2人，条件如下：</p><p>	①临床医学全日制本科及以上学历，年龄35周岁及以下，有执业医师证，执业范围为内科、全科医学、急救医学、重症医学;</p><p>	②临床医学全日制大专及以上学历，年龄30周岁及以下，有执业医师证，执业范围为内科、全科医学、急救医学、重症医学;</p><p>	具备上述任一条件者且有急诊医学、重症医学、全科医学工作经历者或二级医院及以上临床工作经历者优先。</p><p>	功能检查室医师1人，条件如下：</p><p>	临床医学全日制大专及以上学历，年龄40周岁以下，有执业医师证者优先，女性优先。</p>');
INSERT INTO `news` VALUES ('162', '2021-01-04 10:03:29', '2021中国邮政有限公司黑龙江省分公司社会招聘公告', 'http://localhost:8080/springbootan251/upload/news_picture2.jpg', '<p>请仔细阅读招聘须知，如果您报名参加招聘，将被视为已经详细阅读本文，并同意我公司的要求。</p><p>中国邮政有限公司黑龙江省分公司是中央大型国有邮政通信企业，主要经营邮政基础业务、金融业务、速递物流业务，肩负着为社会提供邮政通信普遍服务、为党和政府提供特殊通信服务以及为经济社会发展提供商业化服务等重要任务。中国邮政有限公司黑龙江省分公司下辖13个地市分公司、71个县级分公司，1个二级邮区中心局、12个邮件处理中心。共有2113处邮政网点、1317处代理金融网点、1641处普遍服务网点;投递网点1134个，投递段道4814条，其中县以下投递段道2755条;552条邮路，总长度14.5万公里。为全省904个乡镇、113个农牧场、716个林场开展邮政服务，服务面积达47.3万平方公里。中国邮政有限公司黑龙江省分公司为促进我省经济社会发展、维护政令畅通、公民基本通信权利等方面发挥了不可替代的重要作用。为满足企业发展的需要，现面向社会招聘工作人员。</p><p>一、招聘岗位</p><p>招聘岗位为各地市、县分公司网点营销员。</p><p>二、招聘范围</p><p>符合招聘岗位要求的往届大学生及相关行业从业人员。</p><p>三、报名条件</p><p>1.具备良好的思想政治素质，遵纪守法，无违法违纪等不良记录;</p><p>2.有志于邮政事业，适应邮政基层工作，具有良好的敬业精神;</p>');
INSERT INTO `news` VALUES ('163', '2021-01-04 10:03:29', '全国冬季平均招聘月薪上涨至8923元！这个行业收入最高', 'http://localhost:8080/springbootan251/upload/news_picture3.jpg', '<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(153, 153, 153);\">2020年大家经历了一个不平凡的一年，中国电影业也经历了非常不寻常的一年，年初受到巨大冲击后，但如今依然给我们带来了好消息。根据猫眼研究院发布的《2020中国电影市场数据洞察》，2020年中国内地电影市场总票房为204.17亿，成为全球率先复苏的电影市场。受中国境内疫情防控利好形势的影响，中国电影票房产量恢复到了去年三成，年票房折合约为31.29亿美元，历史上首年成为全球票房最高的电影市场。2020年从1月底到7月20日中国电影院都处于关闭状态，就算下半年电影院逐渐复工，对电影占座率都有控制，而且下半年的新片和大片并不多。半年时间能够实现200亿票房确实非常不易。2020年中国电影票房达到31亿美元，北美票房降到21亿美元，中国取代北美成为全球第一大电影市场，特殊之年中国电影保持超强的韧性和反弹力，相信2021年中国电影市场将会迎来更好的发展。</span></p>');
INSERT INTO `news` VALUES ('164', '2021-01-04 10:03:29', '智联招聘李强：行业新生力量的3个“新”特质', 'http://localhost:8080/springbootan251/upload/news_picture4.jpg', '<p>	<strong>在此次采访中谈及企业危机感时，李强</strong>坦言<strong>危机感一直存在</strong>。首先是整个时代在变化，危机感存在于能不能在这个时代的大<a href=\"http://list.b2b.hc360.com/supplytrade/020/kw/%B7%E7%BF%DA.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 0, 255);\">风口</a>中不被淘汰，因此就要求我们永远跑在前列、不停地来回观察。与外界的认知不同，<strong>智联招聘</strong>认为自己是创业型企业，智联招聘内部的创业氛围浓厚，每天都在探索创新，看能否被这个时代风口给吹起来，而不是被它给吹走，吹得越来越远。</p><p>	<span style=\"color: rgb(51, 51, 51); background-color: white;\">第二个危机感是平台离用户的距离到底够不够近，能不能真实地了解到我们B、C端用户的需求，然后开发出适合用户使用的产品，让效率变得更高，让双方连接变得更快，这也是智联招聘认为的最大危机。</span></p><p>	<span style=\"color: rgb(51, 51, 51); background-color: white;\">最后是智联招聘跟友商的关系。智联招聘认为，赛道足够大、足够宽，可以有更多的人进来，才代表着这个市场是更好的、更有活力的。非常欢迎更多的人进来，一起研究把更高的发挥市场效能。所以希望竞品间能互相促进，而不仅仅只是竞争。</span></p><p>	<span style=\"color: rgb(51, 51, 51); background-color: white;\">对于哪些业务可以代表“行业新生力量”这一问题，李强认为，每家企业都有自己的优势和特点，“新生力量”可以从三个方向进行评定——新技术（如AI），能运用一系列新科技、新技术改变这个行业的，便是值得关注的企业；新的产品形态，能加以利用、有效率地解决一些问题的企业；新的人群，真正能抓住新的用户，尤其是00后、Z世代人群，能与他们的需求相契合。</span></p>');
INSERT INTO `news` VALUES ('165', '2021-01-04 10:03:29', '有编！新一轮招聘来了~', 'http://localhost:8080/springbootan251/upload/news_picture5.jpg', '<p class=\"ql-align-justify\">找工作的小伙伴看过来</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">新一波招聘来了</p><p class=\"ql-align-justify\">敲重点，都有编！!</p><p class=\"ql-align-justify\">清远市图书馆招聘</p><p class=\"ql-align-justify\">3名事业编制工作人员</p><p class=\"ql-align-justify\">招聘岗位：</p><p><img src=\"https://pics1.baidu.com/feed/77c6a7efce1b9d161abd6e81e3c962888d5464f3.png?token=913838aefc00c9a7c49f4f00cc56370c&amp;s=79283C729B40504156F511CE0300F0B2\"></p><p class=\"ql-align-justify\">报名时间：1月6日-8日</p><p class=\"ql-align-justify\">报名方式：网上报名，报考人员进入清远市图书馆2020年公开招聘报名系统进行报名，请报考人员根据页面提示及要求如实填写个人信息并完成报名操作。</p><p><br></p>');
INSERT INTO `news` VALUES ('166', '2021-01-04 10:03:29', 'SpaceX星链网络目标是全球农村社区都能连接到互联网，正在招聘', 'http://localhost:8080/springbootan251/upload/1609728306392.jpeg', '<p class=\"ql-align-justify\">SpaceX的目标是将全球农村社区连接到可靠的卫星互联网上。这家航空航天公司正在将数千颗星链卫星部署到轨道上，每颗卫星都将向地球发送宽带互联网连接。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">该公司表示：“凭借远远超过传统卫星互联网的性能，以及不受地面基础设施限制的全球网络，Starlink将为那些接入不可靠、昂贵或完全不可用的地区提供高速卫星宽带互联网。”</p><p><br></p>');

-- ----------------------------
-- Table structure for qiuzhixinxi
-- ----------------------------
DROP TABLE IF EXISTS `qiuzhixinxi`;
CREATE TABLE `qiuzhixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiuzhibiaoti` varchar(200) NOT NULL COMMENT '求职标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `qiwangzhiwei` varchar(200) DEFAULT NULL COMMENT '期望职位',
  `qiwangxingye` varchar(200) DEFAULT NULL COMMENT '期望行业',
  `gongzuochengshi` varchar(200) DEFAULT NULL COMMENT '工作城市',
  `xinziyaoqiu` varchar(200) DEFAULT NULL COMMENT '薪资要求',
  `qiuzhineirong` longtext COMMENT '求职内容',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609729464585 DEFAULT CHARSET=utf8 COMMENT='求职信息';

-- ----------------------------
-- Records of qiuzhixinxi
-- ----------------------------
INSERT INTO `qiuzhixinxi` VALUES ('61', '2021-01-04 10:03:29', '求职标题1', 'http://localhost:8080/springbootan251/upload/qiuzhixinxi_tupian1.jpg', '期望职位1', '期望行业1', '工作城市1', '3k', '求职内容1', '用户名1', '邮箱1');
INSERT INTO `qiuzhixinxi` VALUES ('62', '2021-01-04 10:03:29', '求职标题2', 'http://localhost:8080/springbootan251/upload/qiuzhixinxi_tupian2.jpg', '期望职位2', '期望行业2', '工作城市2', '3k', '求职内容2', '用户名2', '邮箱2');
INSERT INTO `qiuzhixinxi` VALUES ('63', '2021-01-04 10:03:29', '求职标题3', 'http://localhost:8080/springbootan251/upload/qiuzhixinxi_tupian3.jpg', '期望职位3', '期望行业3', '工作城市3', '3k', '求职内容3', '用户名3', '邮箱3');
INSERT INTO `qiuzhixinxi` VALUES ('64', '2021-01-04 10:03:29', '求职标题4', 'http://localhost:8080/springbootan251/upload/qiuzhixinxi_tupian4.jpg', '期望职位4', '期望行业4', '工作城市4', '3k', '求职内容4', '用户名4', '邮箱4');
INSERT INTO `qiuzhixinxi` VALUES ('65', '2021-01-04 10:03:29', '求职标题5', 'http://localhost:8080/springbootan251/upload/qiuzhixinxi_tupian5.jpg', '期望职位5', '期望行业5', '工作城市5', '3k', '求职内容5', '用户名5', '邮箱5');
INSERT INTO `qiuzhixinxi` VALUES ('66', '2021-01-04 10:03:29', '求职标题6', 'http://localhost:8080/springbootan251/upload/qiuzhixinxi_tupian6.jpg', '期望职位6', '期望行业6', '工作城市6', '3k', '求职内容6', '用户名6', '邮箱6');
INSERT INTO `qiuzhixinxi` VALUES ('1609728030786', '2021-01-04 10:40:30', '这里添加求职信息', 'http://localhost:8080/springbootan251/upload/1609728015117.png', '11', '11', '11', '7k', '<p>这里输入求职的内容</p>', '001', '773890001@qq.com');
INSERT INTO `qiuzhixinxi` VALUES ('1609729464584', '2021-01-04 11:04:24', '这里添加求职信息', 'http://localhost:8080/springbootan251/upload/1609729438439.jpg', '职位1', '行业1', '上海', '8k以上', '<p>这里输入求职的内容</p>', '666', '13532@123.com');

-- ----------------------------
-- Table structure for qiye
-- ----------------------------
DROP TABLE IF EXISTS `qiye`;
CREATE TABLE `qiye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyebianhao` varchar(200) NOT NULL COMMENT '企业编号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `qiyemingcheng` varchar(200) NOT NULL COMMENT '企业名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guimo` varchar(200) DEFAULT NULL COMMENT '规模',
  `xingzhi` varchar(200) DEFAULT NULL COMMENT '性质',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qiyebianhao` (`qiyebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='企业';

-- ----------------------------
-- Records of qiye
-- ----------------------------
INSERT INTO `qiye` VALUES ('11', '2021-01-04 10:03:29', '000', '000', '吉利汽车', 'http://localhost:8080/springbootan251/upload/qiye_tupian1.jpg', '大型', '汽车业', '李生', '13823888881');
INSERT INTO `qiye` VALUES ('12', '2021-01-04 10:03:29', '企业2', '123456', '企业名称2', 'http://localhost:8080/springbootan251/upload/qiye_tupian2.jpg', '规模2', '性质2', '联系人2', '13823888882');
INSERT INTO `qiye` VALUES ('13', '2021-01-04 10:03:29', '企业3', '123456', '企业名称3', 'http://localhost:8080/springbootan251/upload/qiye_tupian3.jpg', '规模3', '性质3', '联系人3', '13823888883');
INSERT INTO `qiye` VALUES ('14', '2021-01-04 10:03:29', '企业4', '123456', '企业名称4', 'http://localhost:8080/springbootan251/upload/qiye_tupian4.jpg', '规模4', '性质4', '联系人4', '13823888884');
INSERT INTO `qiye` VALUES ('15', '2021-01-04 10:03:29', '企业5', '123456', '企业名称5', 'http://localhost:8080/springbootan251/upload/qiye_tupian5.jpg', '规模5', '性质5', '联系人5', '13823888885');
INSERT INTO `qiye` VALUES ('16', '2021-01-04 10:03:29', '企业6', '123456', '企业名称6', 'http://localhost:8080/springbootan251/upload/qiye_tupian6.jpg', '规模6', '性质6', '联系人6', '13823888886');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609729378240 DEFAULT CHARSET=utf8 COMMENT='收藏表';

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES ('1609729266330', '2021-01-04 11:01:06', '1609729129904', '1609727756251', 'zhaopingangwei', '岗位1', 'http://localhost:8080/springbootan251/upload/1609727747839.jpg');
INSERT INTO `storeup` VALUES ('1609729378239', '2021-01-04 11:02:57', '1609729129904', '1609727708373', 'kongzhongxuanjianghui', '吉利汽车', 'http://localhost:8080/springbootan251/upload/qiye_tupian1.jpg');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', '1', 'abo', 'users', '管理员', '3cxj7nf4xumsenjjy3i232d2vmzhcfo9', '2021-01-04 10:28:44', '2021-01-04 04:11:22');
INSERT INTO `token` VALUES ('2', '11', '000', 'qiye', '管理员', '603yejonm5hifcfl3c4xtlqr5l3o5tdc', '2021-01-04 10:34:31', '2021-01-04 04:18:20');
INSERT INTO `token` VALUES ('3', '41', '001', 'biyesheng', '毕业生', '2osdkaiopqw7nhg3k92fcz6feth47ecr', '2021-01-04 10:38:56', '2021-01-04 04:17:21');
INSERT INTO `token` VALUES ('4', '1609729129904', '666', 'biyesheng', '毕业生', '4ceuskg8tikey4t1od1zohx0dffljcbu', '2021-01-04 10:58:54', '2021-01-04 04:19:03');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'abo', 'abo', '管理员', '2021-01-04 10:03:29');

-- ----------------------------
-- Table structure for xianshangmianshi
-- ----------------------------
DROP TABLE IF EXISTS `xianshangmianshi`;
CREATE TABLE `xianshangmianshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mianshibiaoti` varchar(200) NOT NULL COMMENT '面试标题',
  `mianshiwenti` longtext COMMENT '面试问题',
  `mianshifujian` varchar(200) DEFAULT NULL COMMENT '面试附件',
  `qiyebianhao` varchar(200) DEFAULT NULL COMMENT '企业编号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609730191422 DEFAULT CHARSET=utf8 COMMENT='线上面试';

-- ----------------------------
-- Records of xianshangmianshi
-- ----------------------------
INSERT INTO `xianshangmianshi` VALUES ('91', '2021-01-04 10:03:29', '面试标题1', '面试问题1', '', '企业编号1', '企业名称1', '联系电话1', '2021-01-04', '用户名1', '姓名1', '手机1', '专业1');
INSERT INTO `xianshangmianshi` VALUES ('92', '2021-01-04 10:03:29', '面试标题2', '面试问题2', '', '企业编号2', '企业名称2', '联系电话2', '2021-01-04', '用户名2', '姓名2', '手机2', '专业2');
INSERT INTO `xianshangmianshi` VALUES ('93', '2021-01-04 10:03:29', '面试标题3', '面试问题3', '', '企业编号3', '企业名称3', '联系电话3', '2021-01-04', '用户名3', '姓名3', '手机3', '专业3');
INSERT INTO `xianshangmianshi` VALUES ('94', '2021-01-04 10:03:29', '面试标题4', '面试问题4', '', '企业编号4', '企业名称4', '联系电话4', '2021-01-04', '用户名4', '姓名4', '手机4', '专业4');
INSERT INTO `xianshangmianshi` VALUES ('95', '2021-01-04 10:03:29', '面试标题5', '面试问题5', '', '企业编号5', '企业名称5', '联系电话5', '2021-01-04', '用户名5', '姓名5', '手机5', '专业5');
INSERT INTO `xianshangmianshi` VALUES ('96', '2021-01-04 10:03:29', '面试标题6', '面试问题6', '', '企业编号6', '企业名称6', '联系电话6', '2021-01-04', '用户名6', '姓名6', '手机6', '专业6');
INSERT INTO `xianshangmianshi` VALUES ('1609730191421', '2021-01-04 11:16:31', '这里添加线上面试相关问题  附件可以上传文档类文件', '<p>这里可以输入问题</p>', 'http://localhost:8080/springbootan251/upload/1609730188973.docx', '000', '吉利汽车', '13823888881', '2021-01-19', '666', '小吴', '16459887988', '计算机');

-- ----------------------------
-- Table structure for xinxizixun
-- ----------------------------
DROP TABLE IF EXISTS `xinxizixun`;
CREATE TABLE `xinxizixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zixunbiaoti` varchar(200) NOT NULL COMMENT '咨询标题',
  `zixunneirong` longtext COMMENT '咨询内容',
  `qiyebianhao` varchar(200) DEFAULT NULL COMMENT '企业编号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `zixunriqi` date DEFAULT NULL COMMENT '咨询日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609729325112 DEFAULT CHARSET=utf8 COMMENT='信息咨询';

-- ----------------------------
-- Records of xinxizixun
-- ----------------------------
INSERT INTO `xinxizixun` VALUES ('71', '2021-01-04 10:03:29', '咨询标题1', '咨询内容1', '企业编号1', '企业名称1', '2021-01-04', '备注1', '用户名1', '姓名1', '手机1', '否', '');
INSERT INTO `xinxizixun` VALUES ('72', '2021-01-04 10:03:29', '咨询标题2', '咨询内容2', '企业编号2', '企业名称2', '2021-01-04', '备注2', '用户名2', '姓名2', '手机2', '否', '');
INSERT INTO `xinxizixun` VALUES ('73', '2021-01-04 10:03:29', '咨询标题3', '咨询内容3', '企业编号3', '企业名称3', '2021-01-04', '备注3', '用户名3', '姓名3', '手机3', '否', '');
INSERT INTO `xinxizixun` VALUES ('74', '2021-01-04 10:03:29', '咨询标题4', '咨询内容4', '企业编号4', '企业名称4', '2021-01-04', '备注4', '用户名4', '姓名4', '手机4', '否', '');
INSERT INTO `xinxizixun` VALUES ('75', '2021-01-04 10:03:29', '咨询标题5', '咨询内容5', '企业编号5', '企业名称5', '2021-01-04', '备注5', '用户名5', '姓名5', '手机5', '否', '');
INSERT INTO `xinxizixun` VALUES ('76', '2021-01-04 10:03:29', '咨询标题6', '咨询内容6', '企业编号6', '企业名称6', '2021-01-04', '备注6', '用户名6', '姓名6', '手机6', '否', '');
INSERT INTO `xinxizixun` VALUES ('1609727970487', '2021-01-04 10:39:30', '岗位咨询', '<p>1212</p>', '000', '吉利汽车', '2021-01-20', '1', '001', '小吴', '13823888881', '否', null);
INSERT INTO `xinxizixun` VALUES ('1609727971639', '2021-01-04 10:39:30', '岗位咨询', '<p>1212</p>', '000', '吉利汽车', '2021-01-20', '1', '001', '小吴', '13823888881', '否', null);
INSERT INTO `xinxizixun` VALUES ('1609729325111', '2021-01-04 11:02:04', '这里向企业咨询', '<p>这里输入咨询内容</p>\n<p><img src=\"../../..//upload/1609729310388.jpg\" />这里可以插图</p>', '000', '吉利汽车', '2021-01-25', '1', '666', '小吴', '16459887988', '是', '这里回复咨询');

-- ----------------------------
-- Table structure for zhaopingangwei
-- ----------------------------
DROP TABLE IF EXISTS `zhaopingangwei`;
CREATE TABLE `zhaopingangwei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gangweimingcheng` varchar(200) NOT NULL COMMENT '岗位名称',
  `xingye` varchar(200) DEFAULT NULL COMMENT '行业',
  `gangweiyaoqiu` varchar(200) DEFAULT NULL COMMENT '岗位要求',
  `zhuanyeyaoqiu` varchar(200) DEFAULT NULL COMMENT '专业要求',
  `gangweixingzhi` varchar(200) DEFAULT NULL COMMENT '岗位性质',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xinzidaiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `gongzuoshijian` varchar(200) DEFAULT NULL COMMENT '工作时间',
  `chengshi` varchar(200) DEFAULT NULL COMMENT '城市',
  `qiyebianhao` varchar(200) DEFAULT NULL COMMENT '企业编号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `gangweijieshao` longtext COMMENT '岗位介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609727756252 DEFAULT CHARSET=utf8 COMMENT='招聘岗位';

-- ----------------------------
-- Records of zhaopingangwei
-- ----------------------------
INSERT INTO `zhaopingangwei` VALUES ('31', '2021-01-04 10:03:29', '岗位名称1', '行业1', '岗位要求1', '专业要求1', '岗位性质1', 'http://localhost:8080/springbootan251/upload/zhaopingangwei_tupian1.jpg', '薪资待遇1', '工作时间1', '城市1', '企业编号1', '企业名称1', '联系人1', '联系电话1', '岗位介绍1', '2021-01-04 10:03:29', '1');
INSERT INTO `zhaopingangwei` VALUES ('32', '2021-01-04 10:03:29', '岗位名称2', '行业2', '岗位要求2', '专业要求2', '岗位性质2', 'http://localhost:8080/springbootan251/upload/zhaopingangwei_tupian2.jpg', '薪资待遇2', '工作时间2', '城市2', '企业编号2', '企业名称2', '联系人2', '联系电话2', '岗位介绍2', '2021-01-04 10:03:29', '2');
INSERT INTO `zhaopingangwei` VALUES ('33', '2021-01-04 10:03:29', '岗位名称3', '行业3', '岗位要求3', '专业要求3', '岗位性质3', 'http://localhost:8080/springbootan251/upload/zhaopingangwei_tupian3.jpg', '薪资待遇3', '工作时间3', '城市3', '企业编号3', '企业名称3', '联系人3', '联系电话3', '岗位介绍3', '2021-01-04 10:03:29', '3');
INSERT INTO `zhaopingangwei` VALUES ('34', '2021-01-04 10:03:29', '岗位名称4', '行业4', '岗位要求4', '专业要求4', '岗位性质4', 'http://localhost:8080/springbootan251/upload/zhaopingangwei_tupian4.jpg', '薪资待遇4', '工作时间4', '城市4', '企业编号4', '企业名称4', '联系人4', '联系电话4', '岗位介绍4', '2021-01-04 10:03:29', '4');
INSERT INTO `zhaopingangwei` VALUES ('35', '2021-01-04 10:03:29', '岗位名称5', '行业5', '岗位要求5', '专业要求5', '岗位性质5', 'http://localhost:8080/springbootan251/upload/zhaopingangwei_tupian5.jpg', '薪资待遇5', '工作时间5', '城市5', '企业编号5', '企业名称5', '联系人5', '联系电话5', '岗位介绍5', '2021-01-04 10:03:29', '5');
INSERT INTO `zhaopingangwei` VALUES ('36', '2021-01-04 10:03:29', '岗位名称6', '行业6', '岗位要求6', '专业要求6', '岗位性质6', 'http://localhost:8080/springbootan251/upload/zhaopingangwei_tupian6.jpg', '薪资待遇6', '工作时间6', '城市6', '企业编号6', '企业名称6', '联系人6', '联系电话6', '岗位介绍6', '2021-01-04 10:03:29', '6');
INSERT INTO `zhaopingangwei` VALUES ('1609727756251', '2021-01-04 10:35:55', '岗位1', '汽修业', '12', '数控', '11', 'http://localhost:8080/springbootan251/upload/1609727747839.jpg', '6000', '1', '深圳', '000', '吉利汽车', '李生', '13823888881', '<p>12121</p>', '2021-01-04 03:12:48', '10');
