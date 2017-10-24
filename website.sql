-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2017-10-22 14:34:05
-- 服务器版本： 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website`
--

-- --------------------------------------------------------

--
-- 表的结构 `backmenu`
--

CREATE TABLE `backmenu` (
  `id_backmenu` int(11) NOT NULL,
  `lang` int(1) NOT NULL DEFAULT '1',
  `name` varchar(25) NOT NULL,
  `remark` text NOT NULL,
  `url` varchar(100) NOT NULL,
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  `dele` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `backmenu`
--

INSERT INTO `backmenu` (`id_backmenu`, `lang`, `name`, `remark`, `url`, `fatherid`, `level`, `ordernum`, `dele`) VALUES
(1, 1, '项目系统', '', 'product', 0, 1, 2, 1),
(3, 1, '信息系统', '', 'news', 0, 1, 3, 1),
(4, 1, '人事系统', '', 'hr', 0, 1, 4, 1),
(5, 1, '权限系统', '', 'perm', 0, 1, 5, 1),
(6, 1, '数据库备份', '', 'dbase', 0, 1, 6, 0),
(9, 1, '项目管理', '', '/admin/product/product_manage.php', 1, 2, 9, 1),
(8, 1, '项目分类', '', '/admin/product/product_dir.php', 1, 2, 8, 1),
(47, 1, '区块管理', '', '/admin/siteset/layout.php', 44, 2, 47, 1),
(15, 1, '信息分类', '', '/admin/news/news_dir.php', 3, 2, 15, 1),
(16, 1, '新闻管理', '', '/admin/news/news_manage.php', 3, 2, 16, 1),
(17, 1, '员工档案', '', '/admin/hr/hr_staff.php', 4, 2, 17, 1),
(18, 1, 'test', '', '/admin/hr/hr_exam.php', 4, 2, 18, 0),
(19, 1, 'test2', '', '/admin/hr/hr_job.php', 4, 2, 19, 0),
(20, 1, '系统菜单', '', '/admin/perm/perm_menu.php', 5, 2, 20, 1),
(21, 1, '权限管理', '', '/admin/perm/perm_manage.php', 5, 2, 21, 1),
(22, 1, '数据库备份', '', '/phpMyAdmin/', 6, 2, 22, 1),
(48, 1, '版面管理', '', '/admin/siteset/pageset.php', 44, 2, 48, 1),
(49, 1, '前台菜单', '', '/admin/siteset/webmenu.php', 44, 2, 49, 0),
(39, 1, '信息回收站', '', '/admin/news/newsrecycle.php', 3, 2, 39, 1),
(41, 1, '回收站', '', '/admin/product/productrecycle.php', 1, 2, 41, 1),
(46, 1, '站点设定', '', '/admin/siteset/siteset.php', 44, 2, 46, 1),
(44, 1, '站点管理', '', 'siteset', 0, 1, 1, 1),
(50, 1, '留言反馈', '', '/admin/news/news_manage.php?&searchselect=4', 3, 2, 50, 0),
(51, 1, '留言反馈', '', '/admin/news/feedback.php', 3, 2, 51, 1),
(52, 1, '预约报名', '', '/admin/news/case_manage.php', 3, 2, 52, 1),
(53, 1, '评估系统', '', '/admin/news/zixun_manage.php', 3, 2, 53, 1),
(54, 1, '技术合作伙伴', '', '/admin/news/tech_manage.php', 3, 2, 54, 1),
(55, 1, '顶部滚动', '', '/admin/news/top_news.php', 3, 2, 55, 1);

-- --------------------------------------------------------

--
-- 表的结构 `dept`
--

CREATE TABLE `dept` (
  `id_dept` int(11) NOT NULL,
  `dept` varchar(25) NOT NULL,
  `lang` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dept`
--

INSERT INTO `dept` (`id_dept`, `dept`, `lang`) VALUES
(36, '111', 1),
(35, 'q', 1);

-- --------------------------------------------------------

--
-- 表的结构 `exam`
--

CREATE TABLE `exam` (
  `id_exam` int(11) NOT NULL,
  `lang` int(1) NOT NULL DEFAULT '1',
  `name` varchar(25) NOT NULL,
  `level` varchar(1) NOT NULL,
  `examdate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hr`
--

CREATE TABLE `hr` (
  `id_hr` int(11) NOT NULL,
  `lang` int(1) NOT NULL DEFAULT '1',
  `name` varchar(25) NOT NULL,
  `sex` int(1) NOT NULL DEFAULT '1',
  `birthday` date NOT NULL,
  `hrcode` varchar(10) NOT NULL,
  `dept` int(11) NOT NULL,
  `iswork` int(1) NOT NULL DEFAULT '1',
  `idcard` varchar(28) NOT NULL,
  `ismarry` int(1) NOT NULL,
  `nation` varchar(30) NOT NULL,
  `native` varchar(30) NOT NULL,
  `register` varchar(60) NOT NULL,
  `inwork` date NOT NULL,
  `education` varchar(20) NOT NULL,
  `profession` varchar(20) NOT NULL,
  `school` varchar(40) NOT NULL,
  `political` varchar(20) NOT NULL,
  `post` int(11) NOT NULL,
  `title` int(11) NOT NULL,
  `address` varchar(60) NOT NULL,
  `hometel` varchar(20) NOT NULL,
  `mobi` varchar(20) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `hjqk` text NOT NULL,
  `cfqk` text NOT NULL,
  `gwbd` text NOT NULL,
  `ldht` text NOT NULL,
  `sbjn` text NOT NULL,
  `remark` text NOT NULL,
  `user` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `dele` int(1) NOT NULL DEFAULT '1',
  `level` int(1) NOT NULL DEFAULT '1',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `logindate` datetime NOT NULL,
  `loginip` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hr`
--

INSERT INTO `hr` (`id_hr`, `lang`, `name`, `sex`, `birthday`, `hrcode`, `dept`, `iswork`, `idcard`, `ismarry`, `nation`, `native`, `register`, `inwork`, `education`, `profession`, `school`, `political`, `post`, `title`, `address`, `hometel`, `mobi`, `photo`, `hjqk`, `cfqk`, `gwbd`, `ldht`, `sbjn`, `remark`, `user`, `password`, `dele`, `level`, `indate`, `modate`, `deldate`, `logindate`, `loginip`) VALUES
(1, 1, 'administrator', 1, '0000-00-00', '', 36, 1, '', 0, '', '', '', '2011-01-29', '', '', '', '', 9, 15, '', '', '', '', '', '', '', '', '', '', 'admin', 'admin888', 1, 1, '2011-01-29 18:08:13', '2012-12-22 09:31:36', '0000-00-00 00:00:00', '2017-07-06 16:49:45', '101.81.66.152');

-- --------------------------------------------------------

--
-- 表的结构 `layout`
--

CREATE TABLE `layout` (
  `id_layout` int(11) NOT NULL,
  `lang` int(1) NOT NULL DEFAULT '1',
  `title` varchar(250) NOT NULL,
  `url` text NOT NULL,
  `intro` text NOT NULL,
  `tag` text NOT NULL,
  `icon` text NOT NULL,
  `content` text NOT NULL,
  `openstat` int(1) NOT NULL DEFAULT '1',
  `ordernum` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `layout`
--

INSERT INTO `layout` (`id_layout`, `lang`, `title`, `url`, `intro`, `tag`, `icon`, `content`, `openstat`, `ordernum`) VALUES
(1, 1, '我们的优势', '#', '上海圣鸿出入境服务有限公司是上海的一家专业提供境外留学、移民、安家、旅游签证、海外资产配置业务的咨询服务公司，本公司依托海外公司的资源和优势、在国内又与多家国内外顶尖的私人银行、基金公司、保险公司、信托机构以及财富教育机构等建立了广泛深入的合作关系......\r\n', '', '', '', 0, 1),
(2, 1, '热门移民项目 HOT PROJECT', '', '', '', '', '', 0, 2),
(3, 1, '首页BANNER大图', '', '', '', '', '', 0, 3),
(4, 1, '热门移民国家 HOT COUNTRY', '', '', '', '', '', 0, 4),
(5, 1, '我们的团队', '', '', '', '', '', 0, 5),
(6, 1, '首页中间广告图', '', '', '', '', '', 0, 6),
(7, 1, '最新新闻 LAST NEWS', '', '2017已经悄悄到来，过去的一年里，更多的人基于各种各样的考虑，不管是为了孩子获得更好的教育、转换更健康的生活环境还是全球资产配置保值资产，都选择了“走出去”——移民。', '', '', '', 0, 7),
(8, 1, '全局-页脚文字', '', '上海圣鸿出入境服务有限公司', '', '', 'Copyright&copy;2017 上海圣鸿出入境服务有限公司 版权所有 沪ICP备17008488号-2', 0, 8),
(9, 1, '微信图片', '', '', '', '', '<img alt=\"\" src=\"/upload/other/images/20170413_090232.jpg\" style=\"width: 110px; height: 110px\" />', 0, 9),
(10, 1, '友情链接', '', '<div class=\"ss\">\r\n                <span class=\"txt\"><a href=\"http://www.cic.gc.ca/\" target=\"_blank\">加拿大移民局</a></span>\r\n                <span class=\"txt\"><a href=\"https://personal.hsbc.com.cn/\" target=\"_blank\">汇丰银行</a></span>\r\n</div>\r\n<div class=\"ss\">\r\n                <span class=\"txt\"><a href=\"http://www.border.gov.au/\" target=\"_blank\">澳大利亚移民局</a></span>\r\n                 <span class=\"txt\"><a href=\"http://www.aia.com.cn/zh-cn/index.html\" target=\"_blank\">友邦保险</a></span>\r\n</div>\r\n<div class=\"ss\">\r\n                <span class=\"txt\"><a href=\"https://www.uscis.gov/\" target=\"_blank\">美国移民局</a></span>\r\n                <span class=\"txt\"><a href=\"https://www.prudential.com.hk/scws/pages/tc?null\" target=\"_blank\">保城保险</a></span>\r\n</div>\r\n\r\n<div class=\"ss\"> </div>\r\n<div class=\"ss\"> </div>\r\n<div class=\"ss\"> </div>\r\n<div class=\"ss\"> </div>\r\n\r\n', '', '', '', 0, 10),
(11, 1, '圣鸿移民头条', '', '', '', '', '', 0, 11);

-- --------------------------------------------------------

--
-- 表的结构 `layoutpic`
--

CREATE TABLE `layoutpic` (
  `id_layoutpic` int(11) NOT NULL,
  `id_layout` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `tag` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL DEFAULT '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  `ordernum` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `layoutpic`
--

INSERT INTO `layoutpic` (`id_layoutpic`, `id_layout`, `id_hr`, `title`, `intro`, `tag`, `url`, `opicname`, `spicname`, `dele`, `type`, `indate`, `modate`, `deldate`, `browsecount`, `ordernum`) VALUES
(1, 2, 1, '加拿大留学+工作+移民', '雅思成绩不高\r\n学历不高\r\n工作经验不多......\r\n      ', '', '/case/case-24.html', '1493026276.jpg', '', 1, 'JPG', '2017-04-03 08:09:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1),
(63, 3, 1, '', '', '', '/news/news-16.html', '1499160409.jpg', '', 1, 'JPG', '2017-05-03 17:11:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 13),
(4, 2, 1, '加拿大投资移民（萨省）', '无雅思成绩\r\n有经商经验\r\n有一定家庭资产......\r\n', '', '/case/case-12.html', '1493021463.jpg', '', 1, 'JPG', '2017-04-03 10:37:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 4),
(6, 2, 1, '加拿大雇主担保移民（BC）', '有一定的雅思成绩\r\n有一定的工作经验......\r\n\r\n', '', '/case/case-9.html', '1493888580.jpg', '', 1, 'JPG', '2017-04-03 13:47:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 7),
(7, 2, 1, '加拿大投资移民（BC省）', '无英语要求\r\n无学历要求\r\n具有经商或企业管理经验......\r\n  ', '', '/case/case-11.html', '1493709587.jpg', '', 1, 'JPG', '2017-04-03 13:47:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 6),
(52, 4, 1, '德国企业高管移民', '有一定的学历\r\n无需提供雅思要求\r\n具有经商或企业管理经验......', '欧洲移民', '/case/case-14.html', '1493709047.jpg', '', 1, 'JPG', '2017-04-25 11:36:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 52),
(12, 3, 1, '', '', '', '/case/case-24.html', '1497239548.jpg', '', 1, 'JPG', '2017-04-03 15:27:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 14),
(13, 3, 1, '', '', '', '/case/case-11.html', '1497239557.jpg', '', 1, 'JPG', '2017-04-03 15:27:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 50),
(67, 3, 1, '', '', '', '/case/case-7.html', '1497239637.jpg', '', 1, 'JPG', '2017-06-01 17:21:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 67),
(16, 4, 1, '澳洲投资移民（188A）', '    无需提供雅思成绩\r\n    无需提供学历背景\r\n    在国内有一定的经商经验......\r\n    \r\n', '澳洲投资', '/case/case-3.html', '1493712478.jpg', '', 1, 'JPG', '2017-04-04 09:15:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 16),
(17, 4, 1, '澳大利亚投资移民（132）', '无需提供雅思成绩\r\n无需提供学历背景\r\n在国内有较好的经商经验......\r\n\r\n', '澳洲投资', '/case/case-2.html', '1493946905.jpg', '', 1, 'JPG', '2017-04-04 09:16:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 17),
(61, 4, 1, '澳大利亚投资移民188C', '无需提供雅思成绩\r\n无需提供学历背景\r\n有较好的家庭资产......', '', '/case/case-6.html', '1493713798.jpg', '', 1, 'JPG', '2017-05-02 16:29:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 61),
(18, 4, 1, '美国EB-5', '无需提供英语要求\r\n无需提供学历背景\r\n有一定的家庭资产......\r\n\r\n', '美国投资', '/case/case-7.html', '1493712391.jpg', '', 1, 'JPG', '2017-04-04 09:16:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 18),
(62, 4, 1, '加拿大投资移民（萨省）', ' 无雅思成绩\r\n 有经商经验\r\n 有一定家庭资产......', '', '/case/case-12.html', '1493715842.png', '', 1, 'PNG', '2017-05-02 17:04:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 62),
(59, 4, 1, '马耳他投资', '无需提供雅思要求\r\n无需提供学历要求\r\n没有居住要求......\r\n', '欧洲移民', '/case/case-33.html', '1493714921.jpg', '', 1, 'JPG', '2017-05-02 11:44:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 59),
(31, 2, 1, '澳大利亚雇主担保186', '有较高的雅思成绩\r\n有较好的工作经验\r\n符合职业列表中的职业......\r\n', '', '/case/case-5.html', '1493709835.jpg', '', 1, 'JPG', '2017-04-13 09:59:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 31),
(40, 2, 1, '澳大利亚雇主移民（187）', '有较高的雅思成绩\r\n有一定的工作经验\r\n符合职业列表中的职业...\r\n\r\n', '', '/case/case-34.html', '1493709848.jpg', '', 1, 'JPG', '2017-04-24 15:58:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 40),
(38, 1, 1, '', '', '', '', '1492597988.jpg', '', 1, 'JPG', '2017-04-19 18:33:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 38),
(29, 6, 1, '', '', '', '', '1492652042.jpg', '', 1, 'JPG', '2017-04-04 15:11:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 29),
(43, 5, 1, 'Rain  顾', '', '移民顾问', '', '1493086200.png', '', 1, 'PNG', '2017-04-25 10:10:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 43),
(41, 2, 1, '澳洲打工度假（462）', '有一定的雅思成绩\r\n有一定的工作经验\r\n希望在海外有一定的学历和工作经验...', '', '/case/case-15.html', '1493709986.jpg', '', 1, 'JPG', '2017-04-24 16:01:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 42),
(42, 2, 1, '澳大利亚技术移民（190）', '有较高的雅思成绩\r\n符合职业列表中的职业\r\n有一定的工作经验......', '', '/case/case-35.html', '1493709977.jpg', '', 1, 'JPG', '2017-04-24 16:04:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 41),
(46, 5, 1, 'Iris  丁', '', '移民顾问', '', '1493089316.png', '', 1, 'PNG', '2017-04-25 10:10:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 47),
(47, 5, 1, 'Vincent  张', '', '移民顾问', '', '1493086268.png', '', 1, 'PNG', '2017-04-25 10:11:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 48),
(49, 5, 1, 'Michael  邓', '', '移民顾问', '', '1493089288.png', '', 1, 'PNG', '2017-04-25 10:11:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 56),
(56, 5, 1, 'Susan 何', '', '移民顾问', '', '1493687695.jpg', '', 1, 'JPG', '2017-05-02 09:11:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 46),
(51, 4, 1, '德国技术移民（蓝卡）', '有较高的学历\r\n无需提供雅思成绩\r\n有2年以上的工作经验......\r\n\r\n', '欧洲移民', '/case/case-13.html', '1493709025.jpg', '', 1, 'JPG', '2017-04-25 11:35:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 51),
(65, 11, 1, '2017第二届中国产业合作对接会暨园区展览会即将开幕', '2017 年是实施“十三五”规划的重要一年，是供给侧结构性改革的深化之年。2017年7月05日', '', '/news/news-90.html', '1497256232.jpg', '', 1, 'JPG', '2017-05-07 09:38:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 65),
(66, 3, 1, '', '', '', '/news/news-71.html', '1497239651.jpg', '', 1, 'JPG', '2017-05-23 15:54:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 12);

-- --------------------------------------------------------

--
-- 表的结构 `newsdir`
--

CREATE TABLE `newsdir` (
  `id_newsdir` int(11) NOT NULL,
  `lang` int(1) NOT NULL DEFAULT '1',
  `name` varchar(25) NOT NULL,
  `intro` text NOT NULL,
  `dele` int(1) NOT NULL DEFAULT '1',
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `newsdir`
--

INSERT INTO `newsdir` (`id_newsdir`, `lang`, `name`, `intro`, `dele`, `fatherid`, `level`, `ordernum`) VALUES
(1, 1, '资讯服务', '', 1, 0, 1, 1),
(2, 1, '公司新闻', '', 1, 1, 2, 2),
(3, 1, '行业动态', '', 1, 1, 2, 3),
(4, 1, '产品新闻', '', 1, 1, 2, 4),
(5, 1, '最新通知', '', 1, 1, 2, 5),
(6, 1, '活动报名', '', 1, 0, 1, 6),
(7, 1, '欧洲', '', 0, 6, 2, 17),
(8, 1, '报名留言', '', 1, 6, 2, 8),
(9, 1, '北京', '', 0, 6, 2, 9),
(10, 1, '天津', '', 0, 6, 2, 10),
(11, 1, '在线资料', '', 1, 1, 2, 11),
(12, 1, '资料下载', '', 0, 0, 1, 12),
(13, 1, '评估系统', '', 1, 6, 2, 13),
(14, 1, '南京', '', 0, 6, 2, 14),
(15, 1, '杭州', '', 0, 6, 2, 15),
(16, 1, '成都', '', 0, 6, 2, 16),
(17, 1, '热门移民国家', '', 1, 1, 2, 17),
(18, 1, '热门移民项目', '', 0, 1, 2, 18),
(19, 1, '圣鸿活动', '', 1, 1, 2, 19),
(20, 1, '活动报名', '', 0, 6, 2, 20),
(21, 1, '经典案例', '', 1, 1, 2, 21),
(22, 1, '职位详情', '', 1, 1, 2, 22);

-- --------------------------------------------------------

--
-- 表的结构 `newsinfo`
--

CREATE TABLE `newsinfo` (
  `id_newsinfo` int(11) NOT NULL,
  `id_newsdir` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `lang` int(1) NOT NULL DEFAULT '1',
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `content` longtext NOT NULL,
  `tag` text NOT NULL,
  `dele` int(1) NOT NULL DEFAULT '1',
  `isnew` int(1) NOT NULL DEFAULT '1',
  `url` varchar(255) NOT NULL,
  `newsdate` date NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  `ordernum` int(11) NOT NULL,
  `pagetitle` text NOT NULL,
  `pagekey` text NOT NULL,
  `pagetag` text NOT NULL,
  `pagedesc` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `newsinfo`
--

INSERT INTO `newsinfo` (`id_newsinfo`, `id_newsdir`, `id_hr`, `lang`, `title`, `intro`, `content`, `tag`, `dele`, `isnew`, `url`, `newsdate`, `indate`, `modate`, `deldate`, `browsecount`, `ordernum`, `pagetitle`, `pagekey`, `pagetag`, `pagedesc`) VALUES
(117, 13, 0, 1, '王道瑞-加拿大移民评估', '无法办理', '<p><br>年龄 : 18-34岁<hr>学历 : ＜高二<hr>雅思 : 4.5-6分<hr>工作年龄 : 1-3年<hr>家庭资产 : 100万-1000万RMB<hr>姓名：王道瑞<hr>电话：13651863053<hr></p>', '', 1, 1, '', '2017-07-04', '2017-07-04 10:32:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', '', '', ''),
(118, 13, 0, 1, '王道瑞-加拿大移民评估', '留学+工作+移民、萨省雇主担保', '<p><br>年龄 : 18-34岁<hr>学历 : 本科或以上<hr>雅思 : 4.5-6分<hr>工作年龄 : > 3年以上<hr>家庭资产 : 100万-1000万RMB<hr>姓名：王道瑞<hr>电话：13651863053<hr></p>', '', 1, 1, '', '2017-07-04', '2017-07-04 10:33:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', '', '', ''),
(58, 22, 0, 1, '行政人事（郑州）', '行政人事（郑州）', '<span style=\"font-size: 14px\"><strong>行政人事（郑州）</strong><br />\r\n工作地点：郑州&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 职位类型：综合部&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 招聘人数：1<br />\r\n<br />\r\n<strong>岗位职责：</strong><a onclick=\"showhtml(118)\"><br />\r\n1、熟悉国家各项劳动人事法规政策，并能实际操作运用；监督并管理规划、培训、绩效考核、薪酬福利、员工关系等工作的开展；<br />\r\n2、负责组织起草、修改和完善人力资源相关管理制度和工作流程，监督实施并执行；<br />\r\n3、制定年度招聘计划和招聘预算，负责组织编写各部门职位说明书，发布招聘信息、组织、安排应聘人员的面试、筛选应聘人员；<br />\r\n4、办理员工入职、转正、离职、调岗、调薪、社保，合同签订或续签管理等人事手续，员工人事档案的建立；<br />\r\n5、负责员工试用期考评和员工绩效考核相关数据的统计；<br />\r\n6、负责每月员工工资福利奖金的核算；<br />\r\n7、严格按照公司的财务制度报销结算公司各项费用；<br />\r\n8、申请票据，购买发票，协助办理税务的申报<br />\r\n9、协助制订完善相关规章制度和工作流程；<br />\r\n10、做好会议记录整理发送相关部门；<br />\r\n11、负责公司的印鉴、文印、证照的管理，公司信息管理工作的管控和维护；<br />\r\n12、负责公司行政文书的处理，以及行政文书、档案的管理与归档工作；<br />\r\n13、负责制订公司各类物资采购管理办法，组织实施，并进行管控；<br />\r\n14、总经理安排的其他工作；</a><br />\r\n<br />\r\n<strong>职位要求：</strong><br />\r\n1、人力资源管理或相关专业全日制本科以上学历；<br />\r\n2、三年以上相关工作经验，至少两年以上薪酬管理实施经验；<br />\r\n3、熟练掌握人力资源专业绩效、薪酬福利等领域；<br />\r\n4、熟悉国家、地区薪酬福利、保险等方面的法律法规；<br />\r\n5、熟练操作计算机，熟练使用各种人力资源事务办公软件；<br />\r\n6、了解税务、银行等办事机关的办事流程；<br />\r\n7、逻辑思维能力强，善于进行数据分析，有较强的人际交往能力、语言表达能力<br />\r\n8、具备良好的沟通能力、协调能力及亲和力，工作执行力强<br />\r\n<br />\r\n<strong>工作地址：</strong><span style=\"widows: 1; text-transform: none; text-indent: 0px; letter-spacing: normal; display: inline !important; font: 14px/25px arial, helvetica, sans-serif; white-space: normal; float: none; color: rgb(0,0,0); word-spacing: 0px; -webkit-text-stroke-width: 0px\">河南省郑州市郑东新区东风路西榆林北路北绿地中心南塔</span><br />\r\n<strong>接收简历邮箱：<a href=\"mailto:cara_hr@hjshchina.com\">cara_hr@hjshchina.com</a><br />\r\n<font size=\"3\"><strong>咨询热线：</strong></font></strong><font size=\"3\">0371-55052981、55052955</font></span>', '', 1, 1, '', '2017-05-17', '2017-05-17 09:13:49', '2017-05-18 15:59:26', '0000-00-00 00:00:00', 0, 21, '', '', '', ''),
(59, 22, 0, 1, '行政前台（郑州）', '', '<span style=\"font-size: 14px\"><strong>行政前台（郑州）</strong><br />\r\n工作地点：郑州&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 职位类型：行政部&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 招聘人数：1<br />\r\n<br />\r\n<strong>岗位职责：</strong><a onclick=\"showhtml(118)\"><br />\r\n1、及时、准确接听/转接电话，如需要，记录留言并及时转达；<br />\r\n2、接待来访客人并及时准确通知被访人员；<br />\r\n3、收发公司邮件、报刊、传真和物品，并做好登记管理以及转递工作；<br />\r\n4、负责快件收发、机票及火车票的准确预定；<br />\r\n5、做好会议记录整理发送相关部门；<br />\r\n6、协助完成各项培训活动；<br />\r\n7、统计并购买每月公司所需的办公用品；<br />\r\n8、统计每月员工考勤、请假、人员外出等事项；<br />\r\n9、负责办公区域的环境维护，绿化维护，保证设备安全及正常运转（包括复印机、扫描式、空调及考勤系统维护等）；<br />\r\n10、协助公司员工的复印、传真等工作；<br />\r\n11、总经理安排的其他工作；</a><br />\r\n<br />\r\n<strong>职位要求：</strong><br />\r\n1、形象好，气质佳，年龄18&mdash;35岁，普通话准确流利；<br />\r\n2、大专及以上学历，1年相关工作经验，文秘、行政管理等相关专业优先考虑；<br />\r\n3、较强的服务意识，具备一定商务礼仪知识；<br />\r\n4、能熟练操作office等办公软件、办公自动化设备；<br />\r\n5、具备良好的协调能力、沟通能力，负有责任心，性格活泼开朗，具有亲和力；<br />\r\n<br />\r\n<strong>工作地址：</strong><span style=\"widows: 1; text-transform: none; text-indent: 0px; letter-spacing: normal; display: inline !important; font: 14px/25px arial, helvetica, sans-serif; white-space: normal; float: none; color: rgb(0,0,0); word-spacing: 0px; -webkit-text-stroke-width: 0px\">河南省郑州市郑东新区东风路西榆林北路北绿地中心南塔</span><br />\r\n<strong>接收简历邮箱：<a href=\"mailto:cara_hr@hjshchina.com\">cara_hr@hjshchina.com</a><br />\r\n<font size=\"3\"><strong>咨询热线：</strong></font></strong><font size=\"3\">0371-55052981、55052955</font></span>', '', 1, 1, '', '2017-05-17', '2017-05-17 17:54:30', '2017-05-18 15:59:05', '0000-00-00 00:00:00', 0, 35, '', '', '', ''),
(60, 22, 0, 1, '移民文案（郑州）', '', '<span style=\"font-size: 14px\"><strong>移民文案（郑州）</strong><br />\r\n工作地点：郑州&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 职位类型：销售部&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 招聘人数：1<br />\r\n<br />\r\n<strong>岗位职责：</strong><a onclick=\"showhtml(118)\"><br />\r\n1、全面配合签约客户准备全套移民申请材料；<br />\r\n2、独立处理移民客户全套申请文件的编辑和制作；<br />\r\n3、按要求处理客户提交的材料，保证其完整性和逻辑性并给出指导意见；<br />\r\n4、细致认真，责任心强。<br />\r\n5、维护与客户的良好关系，维护客户的满意度和企业美誉度</a><br />\r\n<br />\r\n<strong>职位要求：</strong><br />\r\n1、大专以上学历，英语、金融、财会、等相关专业优先考虑<br />\r\n2．工作1年以上，优秀的应届毕业生亦可，有同行业工作经验者优先考虑；<br />\r\n3．英语4级或以上，了解企业财务制度和税收制度；<br />\r\n4．逻辑思维能力强，善于学习，反应灵活，出色的口头和书面表达能力。<br />\r\n5、抗压性强，有良好的团队合作精神，脚踏实地的实干精神<br />\r\n<br />\r\n<strong>工作地址：</strong><span style=\"widows: 1; text-transform: none; text-indent: 0px; letter-spacing: normal; display: inline !important; font: 14px/25px arial, helvetica, sans-serif; white-space: normal; float: none; color: rgb(0,0,0); word-spacing: 0px; -webkit-text-stroke-width: 0px\">河南省郑州市郑东新区东风路西榆林北路北绿地中心南塔</span><br />\r\n<strong>接收简历邮箱：<a href=\"mailto:cara_hr@hjshchina.com\">cara_hr@hjshchina.com</a><br />\r\n<font size=\"3\"><strong>咨询热线：</strong></font></strong><font size=\"3\">0371-55052981、55052955</font></span>', '', 1, 1, '', '2017-05-17', '2017-05-17 18:03:49', '2017-05-18 15:58:46', '0000-00-00 00:00:00', 0, 36, '', '', '', ''),
(61, 22, 0, 1, '移民顾问（郑州）', '', '<span style=\"font-size: 14px\"><strong>移民顾问（郑州）</strong><br />\r\n工作地点：郑州&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 职位类型：销售部&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 招聘人数：3<br />\r\n<br />\r\n<strong>岗位职责：</strong><a onclick=\"showhtml(118)\"><br />\r\n1. 积极学习掌握市场最新动态，性格开朗、热情，具有良好的心态及团队精神。<br />\r\n2. 熟悉专业知识，与主动来电、来访的客户进行电话、邮件沟通或面对面咨询，解答客户关于海外移民的各种问题。<br />\r\n3. 积极配合、参加市场活动，并在这些高端活动中积极挖掘潜在客户。<br />\r\n4. 为客户设计切实可行的移民方案，保证优质高效的完成客户的移民咨询服务；挖掘潜客户、拓展销售渠道、为客户做咨询并进行评估、确定申请方案。<br />\r\n5. 协助并指导已签约客户准备全套海外移民材料；建立客户满意度，为客户主动推荐或二次销售打好基础</a><br />\r\n<br />\r\n<strong>职位要求：</strong><br />\r\n1. 大专以上学历（具有以往能证明的优秀销售业绩者可不受此限制）；<br />\r\n2. 海外留学或生活经验或有海外移民留学顾问工作经验者优先 ；<br />\r\n3. 热情，勤奋，热爱销售行业，有较强的社会人脉和渠道开发能力；<br />\r\n4. 有较具备卓越的沟通能力和说服技巧，具备很强的工作主动性、自信心、亲和力；<br />\r\n5. 有明确目标，具备自我激励，自我指导的心态，具有良好的团队合作精神、能够承受较大的销售压力<br />\r\n<br />\r\n<strong>工作地址：</strong><span style=\"widows: 1; text-transform: none; text-indent: 0px; letter-spacing: normal; display: inline !important; font: 14px/25px arial, helvetica, sans-serif; white-space: normal; float: none; color: rgb(0,0,0); word-spacing: 0px; -webkit-text-stroke-width: 0px\">河南省郑州市郑东新区东风路西榆林北路北绿地中心南塔</span><br />\r\n<strong>接收简历邮箱：<a href=\"mailto:cara_hr@hjshchina.com\">cara_hr@hjshchina.com</a><br />\r\n<font size=\"3\"><strong>咨询热线：</strong></font></strong><font size=\"3\">0371-55052981、55052955</font></span>', '', 1, 1, '', '2017-05-17', '2017-05-17 18:06:05', '2017-05-18 15:58:12', '0000-00-00 00:00:00', 0, 42, '', '', '', ''),
(62, 22, 0, 1, '海外保险顾问（郑州）', '', '<span style=\"font-size: 14px\"><strong>海外保险顾问（郑州）</strong><br />\r\n工作地点：郑州&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 职位类型：销售部&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;招聘人数：3<br />\r\n<br />\r\n<strong>岗位职责：</strong><a onclick=\"showhtml(118)\"><br />\r\n1、有保险代理人资格者优先；<br />\r\n2、有保险销售及助理经验者优先；<br />\r\n3、有一定的人脉资源、高端客户信息资源者优先；</a><br />\r\n<br />\r\n<strong>职位要求：</strong><br />\r\n1、大专及以上学历（优秀人才可放宽学历）；<br />\r\n2、具有完全民事行为能力，机敏灵活，具有较强的沟通协调能力，良好的逻辑思维能力和行动力；<br />\r\n3、对保险业及保险中介行业的发展及情况有一定的了解；<br />\r\n4、熟悉国外保险行业现状；<br />\r\n5、具有服务意识，热爱第三方理财行业；<br />\r\n<br />\r\n<strong>工作地址：</strong><span style=\"widows: 1; text-transform: none; text-indent: 0px; letter-spacing: normal; display: inline !important; font: 14px/25px arial, helvetica, sans-serif; white-space: normal; float: none; color: rgb(0,0,0); word-spacing: 0px; -webkit-text-stroke-width: 0px\">河南省郑州市郑东新区东风路西榆林北路北绿地中心南塔</span><br />\r\n<strong>接收简历邮箱：<a href=\"mailto:cara_hr@hjshchina.com\">cara_hr@hjshchina.com</a><br />\r\n<font size=\"3\"><strong>咨询热线：</strong></font></strong><font size=\"3\">0371-55052981、55052955</font></span>', '', 1, 1, '', '2017-05-17', '2017-05-17 18:10:39', '2017-05-18 15:57:28', '0000-00-00 00:00:00', 0, 43, '', '', '', ''),
(63, 22, 0, 1, '新媒体运营 文案编辑', '', '<span style=\"font-size: 14px\"><strong>新媒体运营 文案编辑</strong><br />\r\n工作地点：上海&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 职位类型：企划部&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 招聘人数：1<br />\r\n<br />\r\n<strong>岗位职责：</strong><a onclick=\"showhtml(118)\"><br />\r\n1、负责企业产品媒体软文和广告资料的收集与整理；<br />\r\n2、公司品牌与产品广告、对外宣传文案、市场活动文案、媒体软文等撰写；<br />\r\n3、利用各种互联网资源和网络媒介推广公司品牌，产品及服务，提高公司网站和产品的曝光度和知名度，网站访问量及传播效果；<br />\r\n4、 负责各推广渠道的日常运营和维护，独立完成、并实施执行。如：微信、微博、百度贴吧、社区论坛等；相关宣传推广资料、文案的撰写；<br />\r\n5、 定期或不定期的进行网站推广效果跟踪，评估；及时提出网络推广改进建议，给出实际可行的改进方案并实施；<br />\r\n6、 整合推广资源，优化推广流程，达到推广效果；<br />\r\n7、&nbsp;针对公司重点活动配合其他媒体进行社会化传播，与其他媒体平台进行社会化营销的合作。<br />\r\n8、&nbsp;熟悉市场推广、品牌策划、活动策划的整个流程。<br />\r\n9、 配合其它部门以及领导交办的其它工作。</a><br />\r\n<br />\r\n<strong>职位要求：</strong><br />\r\n1、年及以上互联网或广告公司创意文案等相关经验，广告、中文、新闻等相关专业优先；熟悉移民行业优先。<br />\r\n2、优秀的文字处理能力，热爱文案创作，文笔流畅、思维敏捷、逻辑性强，能够驾驭不同文案风格；<br />\r\n3、熟练使用办公软件/PS/PPT，了解PR/H5，能简单使用PS、绘声绘影等图文编辑工具；<br />\r\n4、熟悉消费者心理，对各群体的语言文化及流行趋势有敏锐的观察，<br />\r\n8、挖掘和分析用户使用习惯、体验感受，及时掌握信息热点，有效完成专题策划活动；<br />\r\n<br />\r\n<strong>工作地址：</strong><span style=\"widows: 1; text-transform: none; text-indent: 0px; letter-spacing: normal; display: inline !important; font: 14px/25px arial, helvetica, sans-serif; white-space: normal; float: none; color: rgb(0,0,0); word-spacing: 0px; -webkit-text-stroke-width: 0px\">上海市黄浦区茂名南路205号瑞金大厦</span><br />\r\n<strong>接收简历邮箱：<a href=\"mailto:cara_hr@hjshchina.com\">cara_hr@hjshchina.com</a><br />\r\n咨询热线：</strong>0371-55052981、55052955</span>', '', 1, 1, '', '2017-05-17', '2017-05-17 18:13:59', '2017-05-22 14:43:21', '0000-00-00 00:00:00', 0, 45, '', '', '', ''),
(64, 22, 0, 1, '市场经理', '', '<span style=\"font-size: 14px\"><strong>市场经理</strong><br />\r\n工作地点：上海&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;职位类型：企划部&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 招聘人数：1<br />\r\n<br />\r\n<strong>岗位职责：</strong><br />\r\n1、&nbsp;参与制订公司留学移民市场营销战略，根据营销战略制订公司营销组合策略和营销计划，经批准后组织实施；<br />\r\n2、&nbsp;根据市场及同业情况制订公司新产品市场价格，经批准后执行；<br />\r\n3、&nbsp;负责公司在留学移民行业的全部宣传、活动策划执行及品牌推广，扩展公司在市场的影响力；<br />\r\n4、&nbsp;严格执行公司的费用政策，做好市场推广预算，制订公司年度市场营销推广方案，并组织实施，包括管理及进度的推进，建立公司的市场推广运作体制；<br />\r\n5、&nbsp;能够独立完成活动方案的撰写，包括撰写完整的项目策略方案、活动策划方案、细化执行方案等，对公关传播、活动管理、危机管理有深刻的理解，具有充分实践经验；<br />\r\n6、&nbsp;具备扎实的策划功底和敏锐的策略思维，对市场有独到的见解和观点。对市场信息的把握及反映速度快，创意及整合能力强，能够开拓性的开展工作；<br />\r\n7、&nbsp;代表公司与政府对口部门和有关社会团体、机构联络。<br />\r\n<br />\r\n<strong>职位要求：</strong><br />\r\n1、教育背景：本科以上学历，市场营销类等相关专业；<br />\r\n2、培训及资历：接受过市场营销、业务营销等相关培训；<br />\r\n3、工作经验：有3年以上市场销售管理相关工作经验，有海外留学、移民行业、金融、证券、信托行业相关工作经验优先考虑；<br />\r\n4、基本技能和素质：熟悉海外留学、游学项目和移民，具有行业相关人脉和资源，熟悉公司产品和竞争产品情况，具有强烈的责任心，具备良好的人际沟通能力、良好的影响与说服能力、良好的学习能力和分析判断能力，条理性强，有团队合作精神，抗压能力较强。<br />\r\n<br />\r\n<strong>工作地址：</strong><span style=\"widows: 1; text-transform: none; text-indent: 0px; letter-spacing: normal; display: inline !important; font: 14px/25px arial, helvetica, sans-serif; white-space: normal; float: none; color: rgb(0,0,0); word-spacing: 0px; -webkit-text-stroke-width: 0px\">上海市黄浦区茂名南路205号瑞金大厦</span><br />\r\n<strong>接收简历邮箱：<a href=\"mailto:cara_hr@hjshchina.com\">cara_hr@hjshchina.com</a><br />\r\n<font size=\"3\"><strong>咨询热线：</strong></font></strong><font size=\"3\">021-54270376</font></span>', '', 1, 1, '', '2017-05-17', '2017-05-17 18:17:06', '2017-05-22 17:16:53', '0000-00-00 00:00:00', 0, 47, '', '', '', ''),
(65, 22, 0, 1, '出纳', '', '<span style=\"font-size: 14px\"><strong>市场策划</strong><br />\r\n工作地点：上海&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 职位类型：财务部&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 招聘人数：1<br />\r\n<br />\r\n<strong>岗位职责：</strong><br />\r\n<font size=\"3\">1、负责现金、支票、承兑汇票的收入保管、签发支付工作；<br />\r\n2、严格按照公司的财务制度报销结算公司各项费用；<br />\r\n3、网上银行的日常支付和款项到账情况，管理银行账户，及时与银行定期对账；<br />\r\n4、保管有关印章、空白收据和空白支票；<br />\r\n5、申请票据，购买发票，协助办理税务的申报<br />\r\n6、能够完成领导临时交办的其他工作。</font><br />\r\n<br />\r\n<strong>职位要求：</strong><br />\r\n1、大专及以上学历，财务、会计或相关专业；<br />\r\n2、熟练使用Word、Excel等日常办公软件及财务软件；<br />\r\n3、熟悉网银操作及银行结算业务，熟悉会计核算流程、；<br />\r\n4、熟悉税务、银行等办事机关的办事流程；<br />\r\n5、沟通能力好，良好的团队合作意识，保密性强，性格稳重；<br />\r\n6、为人正直诚实，工作勤奋细致，善于学习，有强烈的责任心；<br />\r\n7、需要有会计实务经验一年以上。<br />\r\n<br />\r\n<strong>工作地址：</strong><span style=\"widows: 1; text-transform: none; text-indent: 0px; letter-spacing: normal; display: inline !important; font: 14px/25px arial, helvetica, sans-serif; white-space: normal; float: none; color: rgb(0,0,0); word-spacing: 0px; -webkit-text-stroke-width: 0px\">上海市黄浦区茂名南路205号瑞金大厦</span><br />\r\n<strong>接收简历邮箱：<a href=\"mailto:cara_hr@hjshchina.com\">cara_hr@hjshchina.com</a><br />\r\n<font size=\"3\"><strong>咨询热线：</strong></font></strong><font size=\"3\">021-54270376</font></span>', '', 1, 1, '', '2017-05-17', '2017-05-17 18:20:06', '2017-05-18 15:52:08', '0000-00-00 00:00:00', 0, 46, '', '', '', ''),
(14, 19, 0, 1, '【沙龙】6月10号澳洲主题沙龙为您解疑答惑最新政策,欲报从速！', '2017年6月10日', '<span style=\"font-size: 14px\"><strong>澳洲解疑答惑最新政策</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2017年6月10日 下午 13:30&mdash;15:30<br />\r\n<strong>讲座看点</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.律师现场解读澳洲最新政策<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.澳洲移民项目推荐与解读<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.项目、政策优劣势横向对比及适合人群分析<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.有任何疑问，律师当场为你解答<br />\r\n<br />\r\n<strong>活动信息：</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 时间：2017年6月10日（周六）13：30-15：30<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 地点：黄浦区茂名南路205号（瑞金大厦1107室）<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 预约热线：021-54270380 &nbsp;021-54270375 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n&nbsp;<br />\r\n<strong>活动流程：</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 13：20-13：30 &nbsp;来宾签到<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 13：30-14：30 &nbsp;政策、项目分析解答 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 14：30-15：30 &nbsp;自由咨询、交流。<br />\r\n&nbsp;<br />\r\n&nbsp;<br />\r\n&nbsp;<br />\r\n&nbsp;</span><br />\r\n', '往期', 1, 1, '', '2017-05-06', '2017-05-06 13:13:36', '2017-06-12 17:12:30', '0000-00-00 00:00:00', 0, 67, '', '', '', ''),
(97, 19, 0, 1, '2017第二届中国产业合作对接会暨园区展览会即将开幕，报名从速！', '', '<img alt=\"\" src=\"/upload/other/images/20170612_101112.jpg\" style=\"width: 569px; height: 648px\" /><br />\r\n<img alt=\"\" src=\"/upload/other/images/20170612_101125.jpg\" style=\"width: 590px; height: 813px\" /><br />\r\n<br />\r\n<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170612_101138.jpg\" style=\"width: 580px; height: 858px\" /><br />\r\n<br />\r\n<br />\r\n<br />\r\n<span style=\"font-size: 16px\"><strong>注： 下载该报名表并填写好后，<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请传真至021-64309553, 64309573<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 或直接致电：：021-51600329，13917415252&nbsp; 罗丽</strong></span>', '展讯', 1, 1, '', '2017-06-12', '2017-06-12 16:10:06', '2017-07-05 16:13:43', '0000-00-00 00:00:00', 0, 70, '', '', '', ''),
(37, 19, 0, 1, '【往期】业内专业人士讲解海外保险的优势主题沙龙！', '2017年4月8日', '', '往期', 1, 1, '', '2017-05-09', '2017-05-09 16:50:45', '2017-06-12 15:25:03', '0000-00-00 00:00:00', 0, 61, '', '', '', ''),
(15, 19, 0, 1, '【往期】加拿大海外留学+工作+移民及雇主担保主题沙龙！', '2017年4月15日', '<p>\r\n	<span style=\"font-size: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 加拿大海外留学+工作+移民及雇主担保主题沙龙<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 如今，海外移民已成为越来越多家庭的选择，经过几年的海外生活，往往希望留下来寻求更好的发展，也希望通过移民让整个家庭享受高品质的生活。那么，如何规划留学+工作+移民？有哪些方式可以获得海外身份？人民币贬值背景之下，家庭应如何规划资产配置？如何选择家庭移民路径？</span></p>\r\n<p>\r\n	<br />\r\n	<span style=\"font-size: 14px\">4月15日（周六），将有一场留学+工作+移民及雇主担保主题沙龙，移民专家将针对家庭，提供留学+工作+移民及雇主担保最佳方案，网罗最新加拿大移民最新姿态，为您保驾护航。诚邀您莅临！<br />\r\n	<br />\r\n	活动信息：加拿大留学+工作+移民及雇主担保主题沙龙<br />\r\n	时间：2017年4月15日（周六）13：30-15：30<br />\r\n	地点：黄浦区茂名南路205号（瑞金大厦1107室）<br />\r\n	预约热线：31608591&nbsp;&nbsp;&nbsp;&nbsp; 15221780565</span></p>\r\n<p>\r\n	<span style=\"font-size: 14px\"><strong>活动流程</strong><br />\r\n	13：20-13：30 &nbsp;来宾签到<br />\r\n	13：30-14：00 &nbsp;主题分享：家庭海外规划<br />\r\n	14：00-14：30 &nbsp;主题分享：加拿大的身份获取攻略详解<br />\r\n	14：30-15：30 &nbsp;自由咨询、交流<br />\r\n	<br />\r\n	<strong>活动亮点</strong><br />\r\n	★业内专家解读：加拿大留学+工作+移民及雇主担保最新趋势</span></p>\r\n<p>\r\n	<span style=\"font-size: 14px\">★移民规划：各国移民难易评估，哪类已够格拿身份？</span></p>\r\n<p>\r\n	<span style=\"font-size: 14px\">★家庭投资：汇率机遇，海外资产配置：人民币贬值背景下，家庭资产如何保值增值？</span></p>\r\n', '往期', 1, 1, '', '2017-05-08', '2017-05-08 07:27:05', '2017-06-12 15:24:22', '0000-00-00 00:00:00', 0, 65, '', '', '', ''),
(16, 19, 0, 1, '【巡回】加拿大新风向全国大型移民巡展', '2017年6月', '<p>\r\n	<img alt=\"\" src=\"/upload/other/images/20170524_071722.jpg\" style=\"width: 793px; height: 1200px\" /></p>\r\n', '', 1, 1, '', '2017-05-08', '2017-05-08 07:27:51', '2017-05-24 13:18:25', '0000-00-00 00:00:00', 0, 68, '', '', '', ''),
(17, 19, 0, 1, '【往期】加拿大移民主题活动再次开启，欲报从速！', '2017年5月13日', '<span style=\"font-size: 14px\"><strong>尊敬的嘉宾：</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 准备移民加拿大的您是否已经对加拿大的生活做好了准备？在文化、语言沟通方面是否已经的道路解决？孩子的教育是否有利头绪？不用担心！！！圣鸿带您走进加拿大！领略加拿大的美妙生活！一路保驾护航！让您没有后顾之忧！<br />\r\n<strong>会议主题：</strong>&nbsp;&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 加拿大身份获取攻略详解&nbsp;&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 加拿大移民条件&nbsp;&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 加拿大移民优势&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 加拿大移民的流程详解<br />\r\n<strong>会议流程：</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;13:20&mdash;&mdash;13:30&nbsp;&nbsp;&nbsp; 入场&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 13:30&mdash;&mdash;14:00&nbsp;&nbsp;&nbsp; 家庭海外规划&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;14:00&mdash;&mdash;14:30&nbsp;&nbsp;&nbsp; 加拿大的身份获取攻略详解&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 14:00&mdash;&mdash;15:30&nbsp;&nbsp;&nbsp; 自有咨询、交流&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 15:30&mdash;&mdash;15:40&nbsp;&nbsp;&nbsp; 会议结束<br />\r\n<strong>会议信息：<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong>&nbsp; 联系电话：021-34608591<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 地址：黄浦区茂名南路205号瑞金大厦1107室</span>', '往期', 1, 1, '', '2017-05-08', '2017-05-08 07:27:51', '2017-06-12 15:16:54', '0000-00-00 00:00:00', 0, 66, '', '', '', ''),
(48, 21, 0, 1, '【成功案例】恭喜H获得签证', '', '<img alt=\"\" src=\"/upload/other/images/20170608_112921.jpg\" style=\"width: 578px; height: 800px\" /><br />\r\n<span style=\"font-size: 14px\"><strong>案例背景：</strong>H女士和先生结婚五年，先生有澳洲绿卡，因工作需要会经常留在澳洲。<br />\r\n<strong>申请进度：</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2013年8月来公司咨询<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2013年9月签约&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2014年5月获得临时配偶签证<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2016年8月整理材料，递交移民局<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2017年4月获得配偶签证</span><br />\r\n', '', 1, 1, '', '2017-05-11', '2017-05-11 12:01:49', '2017-06-08 17:29:28', '0000-00-00 00:00:00', 0, 17, '', '', '', ''),
(49, 21, 0, 1, '【成功案例】恭喜X先生获得457工签', '', '<img alt=\"\" src=\"/upload/other/images/20170608_113119.jpg\" style=\"width: 684px; height: 1200px\" /><br />\r\n<br />\r\n<span style=\"font-size: 14px\">案例背景：X先生是一个持有二级厨师证的厨师，有亲戚在澳洲开餐馆邀请他过去帮忙。<br />\r\n申请进度：<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 15年7月网上咨询，规划移民方案；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 15年9月签约，为申请人准备申请资料，寻找匹配的雇主；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 15年12月获得雇主发放的offer;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 16年5月递交资料到移民局，获得档案号；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;16年9月收到体检通知；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;16年10月获得457签证批准通知</span><br />\r\n<br />\r\n<span style=\"font-size: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>', '', 1, 1, '', '2017-05-11', '2017-05-11 12:05:15', '2017-06-08 17:31:30', '0000-00-00 00:00:00', 0, 16, '', '', '', ''),
(53, 8, 0, 1, '唐先生-预约报名', '', '<p>【沙龙】本周六加拿大移民主题活动再次开启，欲报从速！<br>2017年5月13日<br><hr>姓名：唐先生<br>电话：15201911979</p>', '', 1, 1, '', '2017-05-12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', '', '', ''),
(82, 21, 0, 1, '【成功案例】恭喜X先生获得了加拿大工作签证', '', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img alt=\"\" src=\"/upload/other/images/20170608_111623.jpg\" style=\"width: 700px; height: 962px\" /><br />\r\n<br />\r\n<span style=\"font-size: 14px\"><strong>案例背景：</strong><br />\r\nX先生，42岁，本科学历，育有一子，雅思5分，他是国内私营企业担任部门负责人，为了孩子的教育发展，于是全家决定移民加拿大。<br />\r\n<strong>申请进度：</strong><br />\r\n2016年4月 到公司咨询<br />\r\n2016年5月 签约<br />\r\n2016年8月 拿到雇主offer<br />\r\n2017年5月 获得签证</span><br />\r\n', '', 1, 1, '', '2017-06-05', '2017-06-05 13:39:21', '2017-06-08 17:18:40', '0000-00-00 00:00:00', 0, 20, '', '', '', ''),
(44, 21, 0, 1, '【成功案例】恭喜W先生通过萨省企业家移民甄选', '', '<span style=\"font-size: 14px\"><strong><img alt=\"\" src=\"/upload/other/images/20170608_114109.jpg\" style=\"width: 534px; height: 800px\" /><br />\r\n案例背景：</strong>W先生，年龄48岁，专科学历，是一家家电行业的高管。育有1女。<br />\r\n<strong>案例分析：</strong>W先生在家电行业工作了将近二十年，成为公司的高管干部。他名下有两套房产，一套出租出去。并且在银行有一定额度的资金项目。W先生和他妻子决定出国是因为加拿大的环境、师资力量等，并且希望女儿能够去国外读书发展。因此经过网站的介绍以及实地面谈考察之后，选择了我们圣鸿移民。在经过顾问的一系列讲解了解之后，加上考核自己的资金情况之后，W先生一家决定做企业家投资移民项目。<br />\r\n<strong>申请进度：</strong>2016年6月到公司咨询<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2016年9月去里贾纳商考<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2016年10月签约，为申请人收集并准备资料，撰写商业计划书<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2017年2月注册，在线递交申请<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2017年3月申请被选中，收到邀请函；</span><br />\r\n', '', 1, 1, '', '2017-05-10', '2017-05-10 15:51:53', '2017-06-08 17:41:14', '0000-00-00 00:00:00', 0, 8, '', '', '', ''),
(41, 21, 0, 1, '【成功案例】恭喜S女士获得BC省雇主offer', '', '<span style=\"font-size: 14px\"><strong><img alt=\"\" src=\"/upload/other/images/20170608_113453.jpg\" style=\"width: 700px; height: 906px\" /><br />\r\n案例背景：</strong>S女士，硕士学历，在外企从事财务工作十年，有一个5岁的孩子，为了孩子教育想移民加拿大；<br />\r\n<strong>案例分析：</strong>S女士英语基础较好，从业经历清晰且2006年至今收入及个税支持文件完整，建议做BC省的雇主担保移民，依托集团内部完整的产业链，匹配适合的工作，直接发放offer,帮助客户能够最快一年时间登录加拿大，她的孩子就可以立即就读加拿大小学，享受优质免费的教育资源。<br />\r\n<strong>申请进度：</strong>2016年10月来电咨询，设计移民方案<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;2016年12月申请人雅思成绩出来，平均分6分，与公司签约，为申请人准备申请资料<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2017年3月22日获得雇主发放的offer</span><br />\r\n', '', 1, 1, '', '2017-05-10', '2017-05-10 13:50:54', '2017-06-08 17:35:07', '0000-00-00 00:00:00', 0, 15, '', '', '', ''),
(42, 21, 0, 1, '【成功案例】恭喜Z先生获得457签证批准函', '', '<span style=\"font-size: 14px\"><strong><img alt=\"\" src=\"/upload/other/images/20170608_112528.jpg\" style=\"width: 682px; height: 940px\" /><br />\r\n案例背景：</strong>Z先生 38岁，大专学历，工作经验15年其中海外工作12年，雅思4.5分，焊接，想移民澳洲。<br />\r\n<strong>案例分析：</strong>客户雅思没办法达到单科6分的成绩，但有国际认可的技能证书，建议客户先办理457签证，二年后再转187获得永久居留签证。<br />\r\n<strong>申请进程</strong>：16年3月网上咨询，规划移民方案；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 16年4月签约，为申请人准备申请资料，寻找匹配的雇主；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;16年7月获得雇主发放的offer;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 16年10月递交资料到移民局，获得档案号；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;17年2月收到体检通知；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;17年3月获得457签证批准通知</span><br />\r\n', '', 1, 1, '', '2017-05-10', '2017-05-10 14:33:37', '2017-06-08 17:25:35', '0000-00-00 00:00:00', 0, 19, '', '', '', ''),
(43, 21, 0, 1, '【成功案例】恭喜王女士通过萨省企业家移民甄选', '', '<span style=\"font-size: 14px\"><strong><img alt=\"\" src=\"/upload/other/images/20170608_113750.jpg\" style=\"width: 534px; height: 800px\" /><br />\r\n案例背景：</strong>王女士，43岁，在上海拥有一个贸易公司，10年在市郊购入一栋别墅。孩子初二，想让孩子去美国接受世界一流教育。<br />\r\n<strong>案例分析：</strong>移民顾问与客户进行了详细的沟通，分析该客户的综合情况及移民诉求，指出现在移民美国，排期要长达5年左右，孩子去美国读书只能以留学生身份，顾问建议客户选择办理加拿大萨省投资移民，最快一年，客户可以获得工签，可以先携孩子登陆加拿大，免费就读高中。在加拿大投资生意一年后全家可以获得枫叶卡，孩子也可以以加拿大永久居民的身份再选择去美国读书，学费会比留学生少很多。因为王女士在公司占有股份不多，需进行资产的评估。为充分展现白女士的管理经验和合法的收入，文案团队深入分析研究，整理出一套完善、合理、有序的材料。于2017年1月帮客户递交EOI申请，最终以120分于3月3日获得甄选<br />\r\n<strong>申请进度：</strong>2016年7月到公司咨询<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2016年9月去里贾纳商考<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2016年9月签约，为申请人收集并准备资料，撰写商业计划书<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017年2月注册，在线递交申请</span><br />\r\n<span style=\"font-size: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2017年3月申请被选中，收到邀请函；</span><br />\r\n', '', 1, 1, '', '2017-05-10', '2017-05-10 15:24:25', '2017-06-08 17:37:54', '0000-00-00 00:00:00', 0, 14, '', '', '', ''),
(124, 2, 0, 1, '澳洲7月起实行刷脸通关！华人永久享受英美国家同等待遇！', '', '<div>\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp; 或许很多人都知道了：从七月一日起，澳洲海关开始取消旅客出境卡了！以后再也不用随时备着笔，也不用担心不小心遗失这张薄薄的纸片了！</span></div>\r\n<div>\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp; 从无纸化电子签证，到部分国家护照快速通关，直到现在，竟然已经发展到了刷脸入境通关这种黑科技了！将会把这种远程的，包含面部识别相机、虹膜识别系统、以及指纹扫描系统的生物识别技术，将其应用到各大国际机场的出入境管理系统中。能看出澳洲为了方便游客，真的是煞费苦心呐~~~澳洲政府宣布，7月1日起，澳洲出入境将试行无护照通关！首先在堪培拉机场试运营！11月份的时候，在悉尼和墨尔本机场实施！在2019年3月份之前，在澳洲所有的国际机场正式实行！在全面推行之后，出入境澳洲的人，就再也不需要携带护照通关了！只要刷脸刷手，就可以快速通关了！机场会设置一个长长的走廊运送乘客。在旅客前进的过程中，生物信息就会被周围设备所采集，旅客们在经过安检门或智能门时，将不再需要停下来接受护照核查。 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 在本月刚刚宣布的财政预算案中，澳洲政府还向移民局拨款了6000万澳元进行研究！而所有收集到的个人指纹、面部识别、虹膜将会与澳洲联邦警察、澳洲移民局、澳洲证券和投资委员会、澳洲外交部、澳洲国防部以及澳洲税务局进行共享！而在去年的时候，澳洲税务局更是已经装备上了声音识别系统！所有拨打ATO电话的人都会被要求录音，用声音信息来取代账户名和密码。目前澳洲移民局已经在其官方网站上公布了会收集签证申请者信息的消息！</span></div>\r\n<div>\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp; 一些国家或地区的签证申请者已需提供生物系统！根据澳洲移民局网站的资料显示，签证申请者无论来自什么国家，只在特定地区，都必须在澳洲签证申请中心、澳洲生物信息收集中心或澳洲驻他国的代表处提供生物系统！也就是说，如果你是中国公民，你在以下国家或地区递交申请，都会被收集指纹、虹膜等生物信息！</span></div>\r\n<div>\r\n	<br />\r\n	<span style=\"font-size:14px;\">必须被收集生物信息的签证包括：</span></div>\r\n<div>\r\n	<span style=\"font-size:14px;\">家庭移民永居签证：100 &ndash; 配偶签证101 &ndash; 子女签证102 &ndash; 领养子女签证114 &ndash; 年迈依亲亲属签证115 &ndash; 最后家庭成员类签证116 &ndash; 护理人永居签证117 &ndash;境外孤儿亲属永久移民签证</span></div>\r\n<div>\r\n	<span style=\"font-size:14px;\">旅游和其他临时签证：400 &ndash; 临时工作签证 (短期逗留的专家)403 &ndash; 临时工作签证 (国际关系) 408 &ndash; 临时活动签证 &ndash;受邀人员、澳洲政府认证活动、交流、体育、宗教工作者、研究活动人员等 417 &ndash; 打工度假签证457 &ndash; 商务签证 （长期）462 &ndash; Work and Holiday签证</span></div>\r\n<div>\r\n	<span style=\"font-size:14px;\">600 &ndash; 旅游签证601 &ndash; 电子旅行签证Electronic Travel Authority602 &ndash; 医疗签证771 &ndash; 过境签证</span></div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<span style=\"font-size:14px;\">临时家庭签证：300 &ndash; 潜在婚姻签证309 &ndash; 配偶 (临时)签证445 &ndash; 供养人子女签证461 &ndash;新西兰公民家庭关系签证(临时)</span></div>\r\n<div>\r\n	<span style=\"font-size:14px;\">学生签证：500 &ndash; 学生签证590 &ndash; 学生监护人签证</span></div>\r\n<div>\r\n	<span style=\"font-size:14px;\">其他签证：200 &ndash; 难民签证201 &ndash; 在岸特殊人道主义移民签证202 &ndash; 全球特殊人道移民签证203 &ndash; 紧急救助签证另外，申请澳洲十年签证的中国公民，也必须在位于中国的澳大利亚签证申请者提供生物识别信息！刷脸通关，究竟有什么好处？</span></div>\r\n<div>\r\n	<span style=\"font-size:14px;\">保护签证申请者和澳洲公民的个人信息，免去了因护照丢失而出现的的一系列麻烦。</span></div>\r\n<div>\r\n	<span style=\"font-size:14px;\">加速澳洲海关和移民局审理通关人员的速度，更方便旅客出入澳洲机场。</span></div>\r\n<div>\r\n	<span style=\"font-size:14px;\">集中手机生物信息资源，辨识具威胁的出入境人士</span></div>\r\n<div>\r\n	&nbsp;</div>\r\n', '头条', 1, 1, '', '2017-07-05', '2017-07-05 16:03:17', '2017-07-05 16:04:04', '0000-00-00 00:00:00', 0, 124, '', '', '', ''),
(90, 2, 0, 1, '2017第二届中国产业合作对接会暨园区展览会即将开幕', '', '<div style=\"text-align: center\">\r\n	<span style=\"font-family: arial,helvetica,sans-serif\"><span style=\"font-size: 14px\">第19 届中国工博会--绿色产业园区<br />\r\n	第二届中国产业合作对接会暨园区展览会<br />\r\n	2017 中国(上海)国际智慧园区技术设备展览会</span><br />\r\n	&nbsp;</span></div>\r\n<div style=\"text-align: center\">\r\n	<span style=\"font-family: arial,helvetica,sans-serif\"><span style=\"font-size: 14px\">所属行业:&nbsp;综合&nbsp;<br />\r\n	举办国家: 中国&nbsp;<br />\r\n	举办城市:&nbsp;上海&nbsp;<br />\r\n	展馆名称:国家会展中心（E4.1 馆）<br />\r\n	（上海虹桥崧泽大道333 号）&nbsp;<br />\r\n	举办时间:&nbsp;2017/11/07~2017/11/11&nbsp;<br />\r\n	<br />\r\n	<img alt=\"\" src=\"/upload/other/images/20170612_102759.jpg\" style=\"width: 600px; height: 182px\" /></span><br />\r\n	<br />\r\n	&nbsp;</span></div>\r\n<div>\r\n	<span style=\"font-family: arial,helvetica,sans-serif\"><span style=\"font-size: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2017 年是实施&ldquo;十三五&rdquo;规划的重要一年，是供给侧结构性改革的深化之年。上海市有关主管部门编制完成《上海产业结构调整重点区域转向&ldquo;1350 行动计划&rdquo;》、《上海市产业结构调整&ldquo;十三五&rdquo;规划》、扩充修编《上海产业结构调整负面清单（2016 版）》，促进产业结构调整全局规划再提升。上海产业合作促进中心结合其功能定位，围绕产业升级、转型、合作，聚焦供给侧改革，有效化解产能过剩，促进产业优化重组，推动及加强跨区域产业合作，上海产业合作促进中心定于2017 年11 月7-11 日在上海举办&ldquo;第二届中国产业合作对接会暨园区展览会&rdquo;。通过举办展览会、对接会，集中推介一批全国范围内，具有 &ldquo;政策环境优越、产业定位清晰、空间布局合理、配套设施完善&rdquo;的产业园区，引导企业、创客、科研机构、高校与园区共建产业发展新载体，推进具有相关产业发展基础的区域通过产业引进、项目合作，提升产业规划与集群水平，实现合作共赢！</span></span></div>\r\n<div>\r\n	<span style=\"font-family: arial,helvetica,sans-serif\">&nbsp;</span></div>\r\n<div>\r\n	<span style=\"font-family: arial,helvetica,sans-serif\"><span style=\"font-size: 14px\"><strong>主办单位</strong><br />\r\n	国家工业和信息化部<br />\r\n	国家发展和改革委员会<br />\r\n	国家商务部<br />\r\n	国家科学技术部<br />\r\n	中国科学院<br />\r\n	中国工程院<br />\r\n	中国国际贸易促进委员会<br />\r\n	联合国工业发展组织<br />\r\n	上海市人民政府<br />\r\n	&nbsp;<br />\r\n	<strong>协办单位 </strong><br />\r\n	上海产业合作促进中心 上海德瑞展览策划有限公司<br />\r\n	上海圣鸿投资有限公司<br />\r\n	&nbsp;<br />\r\n	<strong>承办单位</strong><br />\r\n	中国机械工业联合会 东浩兰生集团<br />\r\n	<br />\r\n	<strong>一、时间地点</strong><br />\r\n	2017 年11 月7 日-11 日<br />\r\n	国家会展中心（E4.1 馆）（上海虹桥崧泽大道333 号）<br />\r\n	<br />\r\n	<strong>二、参展范围</strong><br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 园区运营单位包括：各级经济技术开发区、高新区、文创园区、特色小镇、绿色低碳工业园区争创试点单位以及园区主导产业入驻企业等。园区运营服务商包括：智慧园区规划设计和技术整体解决方案提供商；信息化系统集成商；运营服务商；互联网服务商；物联网、云计算、大数据等服务提供商；节能环保设备及服务提供商；投融资机构；与产业园区相关的认证、质量、金融、知识产权、商标、管理咨询等服务机构。先进制造装备及技术：石油石化设备及技术；液化天然气工程技术；油气储运成套设备及相关配件；节能环保技术及设备；农产品精深加工技术及设备；木材加工、运输新设备新技术等。<br />\r\n	<br />\r\n	<strong>三、同期活动</strong><br />\r\n	<br />\r\n	<strong>（一）首届绿色制造颁奖大会</strong><br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 为贯彻落实《中国制造2025》、《绿色制造工程实施指南（2016-2020 年）》、《关于开展绿色制造体系建设的通知》、《绿色制造标准体系建设指南》，推进绿色制造体系建设，鼓励和支持企业开发绿色产品、创建绿色工厂、建设绿色工业园区、打造绿色供应链，国家工信部、工信部节能与综合利用司等部门2017 年将在全国范围内评选出&ldquo;首批绿色制造体系建设示范单位&rdquo;，并在展会现场举办首届绿色制造颁奖大会。<br />\r\n	<strong>活动时间：</strong>2017 年11 月7 日 13:30-15:00<br />\r\n	<strong>活动地点：</strong>国家会展中心（上海）洲际酒店（暂定）<br />\r\n	<strong>活动规模：</strong>300 人<br />\r\n	<strong>参会群体：</strong>国家工信部、国家发改委、国家科技部领导及主管部门领导，全国绿色制造体系建设创建单位；特邀企业单位负责人。<br />\r\n	<br />\r\n	<strong>（二）智慧园区建设与产业发展研讨会</strong><br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 为促进产业园区管理和运营模式转变，充分发挥智慧产业在推动园区产业转型升级中的重要作用，推动智慧园区发展的跨界合作，本届展会期间将同期举办智慧园区建设与产业发展研讨会，针对智慧园区发展过程中的重点、热点和创新点展开探讨交流，分享智慧园区建设和管理方面的先进技术和成熟经验。<br />\r\n	时间：2017 年11 月8 号<br />\r\n	地点：国家会展中心（上海）洲际酒店（暂定）<br />\r\n	规模：100 人<br />\r\n	参会群体：政府智慧城市主管部门及相关机构领导；智慧城市（园区）专家、学者；经济开发区、高新区领导；国内产业园区负责人；房地产开发商；园区运营商；园区物业管理；智慧城市（园区）企业家；园区服务商；行业媒体等。<br />\r\n	<br />\r\n	<strong>（三）产业合作对接大会（仅限参展单位）</strong><br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 为推动及加强跨区域产业合作，促进区域梯度、联动、协调发展，帮助项目承接地全方位推介、宣传区域济发展环境,充分展示区位、资源优势及发展前景,积极与客商建立广泛的联系,强化产业&ldquo;转型、转移、合作&rdquo;工作力度，围绕《上海产业结构调整重点区域转向&ldquo;1350 行动计划&rdquo;》、《上海市产业结构调整&ldquo;十三五&rdquo;规划》、扩充修编《上海产业结构调整负面清单（2016 版）》，《上海产业结构调整负面清单及能效指南》，邀请全国20 多家行业社团（商会、协会、产业联盟）及部分金融机构、园区运营主体，分设不同产业主题为园区商、资本项目对接提供精准高效互动。<br />\r\n	<br />\r\n	<strong>1、国际专场对接会</strong><br />\r\n	时间：2017 年11 月8 日10：00-11：00<br />\r\n	地点：国家会展中心（上海）<br />\r\n	主宾园区：拟邀国家级、省级产业园区，或省、市级产业发展主管部门，仅限1 家。<br />\r\n	参会群体：美国、德国、日本及一带一路沿线部分国家的商务机构、企业高级管理人员。约30 家。<br />\r\n	<br />\r\n	<strong>2、生物医药产业专题对接会</strong><br />\r\n	对接园区：仅接受参展单位对接申请，限3 家。<br />\r\n	时间：2017 年11 月8 日<br />\r\n	地点：国家会展中心（上海）<br />\r\n	活动规模：50 人左右。<br />\r\n	<br />\r\n	<strong>3、高端装备制造、新能源汽车产业专题对接会</strong><br />\r\n	以智能机器人、数控机床、轨道交通等高端装备制造和新能源汽车整车及电机、电控、电池研发制造等为重点，邀请国内外知名企业参会。<br />\r\n	对接园区：仅接受参展单位对接申请，限3 家。<br />\r\n	时间：2017 年11 月8 日<br />\r\n	地点：国家会展中心（上海）<br />\r\n	活动规模：50 人左右。<br />\r\n	<br />\r\n	<strong>4、新一代信息技术专题对接会</strong><br />\r\n	以新一代平板显示、集成电路、智能终端、云计算与大数据、卫星导航、半导体照明（LED）、通信设备为重点，邀请国内知名企业参与对接洽谈交流。<br />\r\n	对接园区：仅接受参展单位对接申请，限3 家。<br />\r\n	时间：2017 年11 月8 日<br />\r\n	地点：国家会展中心（上海）<br />\r\n	活动规模：50 人左右。<br />\r\n	<br />\r\n	<strong>5、新材料产业专题对接会</strong><br />\r\n	以特种金属功能材料、高端金属结构材料、先进高分子材料、新型无机非金属材料、高性能纤维及复合材料以及前沿新材料等为重点，邀请国内外知名院校、团体和企业参会，与园区和企业进行交流洽谈对接。<br />\r\n	对接园区：待定，限3 家，仅接受参展单位对接申请。<br />\r\n	时间：2017 年11 月8 日<br />\r\n	地点：国家会展中心（上海）<br />\r\n	活动规模：50 人左右。<br />\r\n	<br />\r\n	<strong>6、上海产业升级合作说明会</strong><br />\r\n	围绕《上海产业结构调整重点区域转向&ldquo;1350行动计划&rdquo;》、《上海市产业结构调整&ldquo;十三五&rdquo;规划》、《上海产业结构调整负面清单（2016 版）》，邀请重点企业参会，与园区进行洽谈对接。<br />\r\n	时间：2017 年11 月8 日<br />\r\n	地点：国家会展中心（上海）<br />\r\n	活动规模：70 人左右。<br />\r\n	<br />\r\n	<span style=\"color: #ff0000\"><strong><span style=\"font-size: 12px\">注：</span></strong></span><u><span style=\"font-size: 12px\">以上未涵盖的行业，已参展并办理参展费用的园区可根据当地产业优势向大会秘书处提交专题对接会申请，大会秘书处结合实际情况另行安排。相关活动如有变动以现场公布为准，解释权归主办方。</span></u><br />\r\n	<br />\r\n	<strong>四、参展办法</strong><br />\r\n	1、申请截止时间：2017 年9 月20 日。<br />\r\n	2、参展报名：确定参展企业请于2017 年9 月20 日前填写《参展申请表》（附件1），加盖参展单位公章或传真或电子版提交至大会秘书处。表中内容将刊入展览会会刊，故请提供中英文打印稿或电子版。<br />\r\n	3、同期举办的各项会议，参展单位根据需要申请，并在《参展申请表》中勾选所需事项，随同《参展申请表》（附件1），一并提交至大会秘书处。产业合作对接会仅接受参展单位申请。<br />\r\n	4、相关费用:展位收费标准请参见《大会服务项目及收费标准》（附件2），参展单位提交《参展申请表》需在7 个工作日内支付全部参展费用。<br />\r\n	5、展位安排：大会秘书处根据&ldquo;报名及付款先后顺序&rdquo;确认参展单位展位，预期未支付参展费用，大会秘书处不再保留展位及其申请其他宣传项目。<br />\r\n	<br />\r\n	<strong>五、大会秘书处</strong><br />\r\n	联系人：罗 丽<br />\r\n	电话：021-51600329，13917415252<br />\r\n	传真：021-64309553, 64309573<br />\r\n	网址：<a href=\"http://www.nipce.com\">www.nipce.com</a></span><br />\r\n	&nbsp;</span></div>\r\n', '', 1, 1, '', '2017-07-05', '2017-06-09 18:27:01', '2017-07-05 15:46:26', '0000-00-00 00:00:00', 0, 90, '', '', '', ''),
(127, 2, 0, 1, '移民政策解读！2018年将有大批移民涌入加拿大？！', '', '<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;7月1日，不仅是加拿大150周年庆，也代表着下半年的正式开始。加拿大移民专业网站CICNews发表了一份《加拿大国庆日：移民半年报告》，也预测了今后的移民政策走向。<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;根据CICNews 4月份的报告，2017年第一季度，EE获邀人数突然激增至24,632人，比之前的任何一个季度都要多。接着第二季度的获邀人数更多，26,653人。<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;加拿大移民部的高级官员指出，由于2017年经济类移民的目标人数有所增加，而快速通道（Express Entry）又成为经济类移民的最主要类别，因此，移民部的邀请人数不断增加，以达到年度目标。另外，2015年1月实施快速通道前所积压的旧案，已经基本审核完毕，不用占用大量配额。 同时，报告预测省提名PNP的配额也会有所增加。<br />\r\n&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; 获邀人数的增加，直接导致最低分数线（CRS）的下调。今年上半年的16次抽签中，有大约7次的分数线都降至历史最低点。<br />\r\n&nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; 2016年12月的分数线是497分，而今年5月31日的分数线已经下降至413。尽管最近一次抽签的分数线有所上升（449分），但主要是因为移民部增加了两个额外加分项&mdash;&mdash;申请人直系兄弟姐妹的分值和法语水平分值。再加上上一轮抽签间隔时间较长，因此分数线上升是暂时的，也是可以预见的，并没有改变上半年CRS一路走低的趋势。<br />\r\n<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;下半年移民部为了引进加拿大劳动力市场急需的移民人才，会通过增加新的移民加分条件，或者设立特别移民项目（program-specific）调整每轮抽签的分数线标准。2017年中至年底获邀的大批申请人，将于2018年正式登陆加拿大成为永久居民。<br />\r\n&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;尽管2018年移民配额的具体数字尚未公布，但移民部长Ahmed Hussen于近期透露，应该是至少300,000人，很可能会超过今年。部长同时表示，移民，未来将继续成为这个国家经济的重要组成部分，预示着经济类移民所占比重仍是主体。<br />\r\n&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;根据联邦移民部长的表态，和积压旧案几乎被清理完毕的实际情况，报告预计今年下半年至未来几年，联邦移民部通过&ldquo;快速通道&rdquo;引进的移民数量会继续保持较大规模，每轮抽签可能会看到更低的CRS要求门槛。</span><br />\r\n', '头条', 1, 1, '', '2017-07-05', '2017-07-05 16:14:37', '2017-07-05 17:29:35', '0000-00-00 00:00:00', 0, 127, '', '', '', ''),
(128, 2, 0, 1, '关于7.1新政:澳洲移民法学会最新通知', '', '<span style=\"font-size:14px;\"><img alt=\"\" src=\"/upload/other/images/20170705_094940.jpg\" style=\"width: 640px; height: 687px;\" /><br />\r\n昨天收到来自澳洲移民法学会的最新通知.以上新政将在今年7.1之后正式实施.摘要如下:<br />\r\n今年7.1之后,所有签证申请费将根据最新的CPI预测进行调整<br />\r\n&nbsp;<br />\r\n关于雇主担保移民（186&amp;187）相关政策做以下调整<br />\r\na. STSOL短期职业列表将根据澳洲就业部的建议进行重审。 MLTSSL中长期 职业列表将根据澳洲教育与培训部的建议进行重审<br />\r\nb. 要求所有申请人达到雅思四个六分的英语水平c. &nbsp;对于直接申请186/187的申请人的年龄要为最高45周岁。<br />\r\nC.对于457转186/187的申请人年龄要求为最高50周岁。<br />\r\n关于对457签证申请的相关政策做以下调整<br />\r\n&nbsp;&nbsp;&nbsp;a. 扩充强制性职业评估的职业列表<br />\r\n&nbsp;&nbsp;&nbsp;b. 引入强制性无犯罪记录公证要求<br />\r\n&nbsp;&nbsp;&nbsp;c. 取消&ldquo;高薪豁免英语要求&rdquo;的政策<br />\r\n&nbsp;&nbsp;&nbsp;d. 对STSOL短期职业列表重审<br />\r\n&nbsp;&nbsp;&nbsp;e. 对MLTSSL中长期职业列表重审<br />\r\n&nbsp;&nbsp;&nbsp;f. &nbsp;自今年7月1日期，457的在线申请系统由&ldquo;eVISA&rdquo; 改为 &ldquo;ePLUS&quot;<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170705_095010.jpg\" style=\"width: 639px; height: 588px;\" /></span><br />\r\n<br />\r\n<br />\r\n', '头条', 1, 1, '', '2017-07-05', '2017-07-05 17:29:49', '2017-07-05 17:30:22', '0000-00-00 00:00:00', 0, 128, '', '', '', ''),
(45, 21, 0, 1, '【成功案例】恭喜Y女士通过萨省企业家移民甄选', '', '<div>\r\n	<span style=\"font-size: 14px\"><strong><img alt=\"\" src=\"/upload/other/images/20170608_112718.jpg\" style=\"width: 534px; height: 800px\" /><br />\r\n	案例背景：</strong>Y女士，年龄33岁，硕士学历。之前就是从加拿大留学回国的，回国之后在某银行做大客户部经理。<br />\r\n	<strong>案例分析：</strong>Y女士与丈夫结婚两年左右，在事业成功之后，他们决定要一个孩子，但是为了将来孩子的教育生活，夫妻决定移民去国外。再经过讨论商量之后，Y女士决定还是以曾经生活过的加拿大为主要考虑国家。通过多方面的对比，圣鸿在加拿大移民方面有着一定的背景依靠，再与顾问的详细沟通之后，夫妻两位决定和圣鸿移民公司合作。经过资产的评估，Y女士决定直接做企业家投资类移民。<br />\r\n	<strong>申请进度：</strong> 2016年5月到公司咨询<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2016年7月签约，为申请人收集并准备资料&nbsp;<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2016年8月去里贾纳商考,回来后准备资料，撰写商业计划书&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2017年1月注册，在线递交申请<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2017年3月申请被选中，收到邀请函；</span><br />\r\n	&nbsp;</div>\r\n', '', 1, 1, '', '2017-05-10', '2017-05-10 15:59:41', '2017-06-08 17:27:24', '0000-00-00 00:00:00', 0, 18, '', '', '', ''),
(46, 21, 0, 1, '【成功案例】恭喜Z先生获得186雇主准签信', '', '<img alt=\"\" src=\"/upload/other/images/20170608_113930.jpg\" style=\"width: 588px; height: 848px\" /><br />\r\n<br />\r\n<span style=\"font-size: 14px\">案例背景：L先生，年龄43岁，学历本科，在学期间担任过学生会会长，现在在一家国企任高管，有工程师职称。<br />\r\n案例分析：L先生结婚十多年了，有两个孩子，一个小学一个中学，妻子是中医医生，家中有两套房子，其中一套有贷款，L先生虽然有英语基础，但很多年没有实际用过英语，因为国内教育压力太大，他希望两个孩子成长是在一个快乐的环境下，所以他们考察完几个国家后，根据自己的情况决定移民澳洲。但是现在他担心澳洲的移民政策经常变动（希望一步到位直接拿绿卡），自己和太太的英语很多年没用了，担心达不到要求，经过我们的顾问耐心解说、分析情况，根据L先生的实际状况为他量身制定了两套方案，最终L先生选择了其中一套，后期也如愿的拿到了绿卡。<br />\r\n申请进度：2015年5月来咨询<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2015年7月签约<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2015年9月获得offer<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2015年12月通过职业评估<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2016年7月递交移民局，获得档案号<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2017年1月获得体检通知<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2017年2月获得绿卡批准</span>', '', 1, 1, '', '2017-05-10', '2017-05-10 16:06:32', '2017-06-08 17:39:38', '0000-00-00 00:00:00', 0, 11, '', '', '', ''),
(66, 22, 0, 1, '移民文案', '', '<span style=\"font-size: 14px\"><strong>移民文案</strong><br />\r\n工作地点：上海&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 职位类型：销售部&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;招聘人数：2<br />\r\n<br />\r\n<strong>岗位职责：</strong><br />\r\n<font size=\"3\">1、全面配合签约客户准备全套移民申请材料；<br />\r\n2、独立处理移民客户全套申请文件的编辑和制作；<br />\r\n3、按要求处理客户提交的材料，保证其完整性和逻辑性并给出指导意见；<br />\r\n4、细致认真，责任心强。<br />\r\n5、维护与客户的良好关系，维护客户的满意度和企业美誉度</font><br />\r\n<br />\r\n<strong>职位要求：</strong><br />\r\n1、大专以上学历，英语、金融、财会、等相关专业优先考虑<br />\r\n2．工作1年以上，优秀的应届毕业生亦可，有同行业工作经验者优先考虑；<br />\r\n3．英语4级或以上，了解企业财务制度和税收制度；<br />\r\n4．逻辑思维能力强，善于学习，反应灵活，出色的口头和书面表达能力。<br />\r\n5、抗压性强，有良好的团队合作精神，脚踏实地的实干精神<br />\r\n<br />\r\n<strong>工作地址：</strong><span style=\"widows: 1; text-transform: none; text-indent: 0px; letter-spacing: normal; display: inline !important; font: 14px/25px arial, helvetica, sans-serif; white-space: normal; float: none; color: rgb(0,0,0); word-spacing: 0px; -webkit-text-stroke-width: 0px\">上海市黄浦区茂名南路205号瑞金大厦</span><br />\r\n<strong>接收简历邮箱：<a href=\"mailto:cara_hr@hjshchina.com\">cara_hr@hjshchina.com</a><br />\r\n<font size=\"3\"><strong>咨询热线：</strong></font></strong><font size=\"3\">021-54270376</font></span>', '', 1, 1, '', '2017-05-17', '2017-05-17 18:23:39', '2017-05-18 15:51:53', '0000-00-00 00:00:00', 0, 48, '', '', '', ''),
(67, 22, 0, 1, '商务渠道总监', '', '<span style=\"font-size: 14px\"><strong>商务渠道总监</strong><br />\r\n工作地点：上海&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 职位类型：市场部&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 招聘人数：1<br />\r\n<br />\r\n<strong>岗位职责：</strong><br />\r\n<font size=\"3\">1、完成公司下达的渠道开发和客户开发的任务，通过对渠道的寻找与开拓，达成公司渠道业务指标，根据公司移民项目规划、制定渠道销售策略；<br />\r\n2、负责公司的移民项目市场活动策划，保证销售的任务达成；<br />\r\n3、负责配合渠道客户的市场活动及提供支持；<br />\r\n4、负责收集并统计市场信息和客户需求，进行分析后及时汇报，为公司提供合理的建议；<br />\r\n5、按时完成交办的其他任务。</font><br />\r\n<br />\r\n<strong>职位要求：</strong><br />\r\n1、本科及以上学历，条件优秀者可放宽至大专，具有3年以上工作经验，有一定的机构渠道资源、高端客户资源和广泛的社会关系；<br />\r\n2、在证券、保险、投资银行和资产管理业务相关操作，具有同行业或银行、证券、保险从业经验者优先；<br />\r\n3、具备较好的语言表达能力、沟通能力、逻辑思维能力、协调能力及团队意识，具有较强的公关、谈判能力；<br />\r\n4、高度的敬业精神及高涨的工作激情，能接受较大压力的工作，工作态度积极乐观；<br />\r\n<br />\r\n<strong>工作地址：</strong><span style=\"widows: 1; text-transform: none; text-indent: 0px; letter-spacing: normal; display: inline !important; font: 14px/25px arial, helvetica, sans-serif; white-space: normal; float: none; color: rgb(0,0,0); word-spacing: 0px; -webkit-text-stroke-width: 0px\">上海市黄浦区茂名南路205号瑞金大厦</span><br />\r\n<strong>接收简历邮箱：<a href=\"mailto:cara_hr@hjshchina.com\">cara_hr@hjshchina.com</a><br />\r\n<font size=\"3\"><strong>咨询热线：</strong></font></strong><font size=\"3\">021-54270376</font></span>', '', 1, 1, '', '2017-05-17', '2017-05-17 18:26:04', '2017-05-18 15:51:36', '0000-00-00 00:00:00', 0, 59, '', '', '', ''),
(68, 22, 0, 1, '移民顾问', '', '<span style=\"font-size: 14px\"><strong>移民顾问</strong><br />\r\n工作地点：上海&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 职位类型：销售部&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 招聘人数：3<br />\r\n<br />\r\n<strong>岗位职责：</strong><br />\r\n<font size=\"3\">1. 积极学习掌握市场最新动态，性格开朗、热情，具有良好的心态及团队精神。<br />\r\n2. 熟悉专业知识，与主动来电、来访的客户进行电话、邮件沟通或面对面咨询，解答客户关于海外移民的各种问题。<br />\r\n3. 积极配合、参加市场活动，并在这些高端活动中积极挖掘潜在客户。<br />\r\n4. 为客户设计切实可行的移民方案，保证优质高效的完成客户的移民咨询服务；挖掘潜客户、拓展销售渠道、为客户做咨询并进行评估、确定申请方案。<br />\r\n5. 协助并指导已签约客户准备全套海外移民材料；建立客户满意度，为客户主动推荐或二次销售打好基础</font><br />\r\n<br />\r\n<strong>职位要求：</strong><br />\r\n1. 大专以上学历（具有以往能证明的优秀销售业绩者可不受此限制）；<br />\r\n2. 海外留学或生活经验或有海外移民留学顾问工作经验者优先 ；<br />\r\n3. 热情，勤奋，热爱销售行业，有较强的社会人脉和渠道开发能力；<br />\r\n4. 有较具备卓越的沟通能力和说服技巧，具备很强的工作主动性、自信心、亲和力；<br />\r\n5. 有明确目标，具备自我激励，自我指导的心态，具有良好的团队合作精神、能够承受较大的销售压力<br />\r\n<br />\r\n<strong>工作地址：</strong><span style=\"widows: 1; text-transform: none; text-indent: 0px; letter-spacing: normal; display: inline !important; font: 14px/25px arial, helvetica, sans-serif; white-space: normal; float: none; color: rgb(0,0,0); word-spacing: 0px; -webkit-text-stroke-width: 0px\">上海市黄浦区茂名南路205号瑞金大厦</span><br />\r\n<strong>接收简历邮箱：<a href=\"mailto:cara_hr@hjshchina.com\">cara_hr@hjshchina.com</a><br />\r\n<strong><font size=\"3\">咨询热线：</font></strong></strong><font size=\"3\">021-54270376</font></span>', '', 1, 1, '', '2017-05-17', '2017-05-17 18:28:06', '2017-05-18 15:50:43', '0000-00-00 00:00:00', 0, 58, '', '', '', ''),
(69, 22, 0, 1, '海外保险顾问', '', '<span style=\"font-size: 14px\"><strong>海外保险顾问</strong><br />\r\n工作地点：上海&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 职位类型：销售部&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 招聘人数：3<br />\r\n<br />\r\n<strong>岗位职责：</strong><br />\r\n<font size=\"3\">1、有保险代理人资格者优先；<br />\r\n2、有保险销售及助理经验者优先；<br />\r\n3、有一定的人脉资源、高端客户信息资源者优先；</font><br />\r\n<br />\r\n<strong>职位要求：</strong><br />\r\n1、大专及以上学历（优秀人才可放宽学历）；<br />\r\n2、具有完全民事行为能力，机敏灵活，具有较强的沟通协调能力，良好的逻辑思维能力和行动力；<br />\r\n3、对保险业及保险中介行业的发展及情况有一定的了解；<br />\r\n4、熟悉国外保险行业现状；<br />\r\n5、具有服务意识，热爱第三方理财行业；<br />\r\n<br />\r\n<strong>工作地址：</strong><span style=\"widows: 1; text-transform: none; text-indent: 0px; letter-spacing: normal; display: inline !important; font: 14px/25px arial, helvetica, sans-serif; white-space: normal; float: none; color: rgb(0,0,0); word-spacing: 0px; -webkit-text-stroke-width: 0px\">上海市黄浦区茂名南路205号瑞金大厦</span><br />\r\n<strong>接收简历邮箱：<a href=\"mailto:cara_hr@hjshchina.com\">cara_hr@hjshchina.com</a><br />\r\n咨询热线：</strong>021-54270376</span>', '', 1, 1, '', '2017-05-17', '2017-05-17 18:30:03', '2017-05-18 15:50:57', '0000-00-00 00:00:00', 0, 49, '', '', '', ''),
(70, 22, 0, 1, '市场经理（郑州）', '', '<span style=\"font-size: 14px\"><strong>市场经理</strong><br />\r\n工作地点：郑州&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 职位类型：企划部&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 招聘人数：1<br />\r\n<br />\r\n<strong>岗位职责：</strong><br />\r\n1、 参与制订公司留学移民市场营销战略，根据营销战略制订公司营销组合策略和营销计划，经批准后组织实施；<br />\r\n2、 根据市场及同业情况制订公司新产品市场价格，经批准后执行；<br />\r\n3、 负责公司在留学移民行业的全部宣传、活动策划执行及品牌推广，扩展公司在市场的影响力；<br />\r\n4、 严格执行公司的费用政策，做好市场推广预算，制订公司年度市场营销推广方案，并组织实施，包括管理及进度的推进，建立公司的市场推广运作体制；<br />\r\n5、 能够独立完成活动方案的撰写，包括撰写完整的项目策略方案、活动策划方案、细化执行方案等，对公关传播、活动管理、危机管理有深刻的理解，具有充分实践经验；<br />\r\n6、 具备扎实的策划功底和敏锐的策略思维，对市场有独到的见解和观点。对市场信息的把握及反映速度快，创意及整合能力强，能够开拓性的开展工作；<br />\r\n7、 代表公司与政府对口部门和有关社会团体、机构联络。<br />\r\n<br />\r\n<strong>职位要求：</strong><br />\r\n1、教育背景：本科以上学历，市场营销类等相关专业；<br />\r\n2、培训及资历：接受过市场营销、业务营销等相关培训；<br />\r\n3、工作经验：有3年以上市场销售管理相关工作经验，有海外留学、移民行业、金融、证券、信托行业相关工作经验优先考虑；<br />\r\n4、基本技能和素质：熟悉海外留学、游学项目和移民，具有行业相关人脉和资源，熟悉公司产品和竞争产品情况，具有强烈的责任心，具备良好的人际沟通能力、良好的影响与说服能力、良好的学习能力和分析判断能力，条理性强，有团队合作精神，抗压能力较强。<br />\r\n<br />\r\n<strong><strong><font size=\"3\">工作地址：</font></strong><span style=\"widows: 1; text-transform: none; text-indent: 0px; letter-spacing: normal; display: inline !important; font: 14px/25px arial, helvetica, sans-serif; white-space: normal; float: none; color: rgb(0,0,0); word-spacing: 0px; -webkit-text-stroke-width: 0px\">河南省郑州市郑东新区东风路西榆林北路北绿地中心南塔</span><br />\r\n<strong><font size=\"3\">接收简历邮箱：</font><a href=\"mailto:cara_hr@hjshchina.com\"><font size=\"3\">cara_hr@hjshchina.com</font></a><br />\r\n<strong><font size=\"3\">咨询热线：</font></strong></strong></strong><font size=\"3\">0371-55052981、55052955</font></span>', '', 1, 1, '', '2017-05-22', '2017-05-22 17:20:35', '2017-05-22 17:21:46', '0000-00-00 00:00:00', 0, 44, '', '', '', '');
INSERT INTO `newsinfo` (`id_newsinfo`, `id_newsdir`, `id_hr`, `lang`, `title`, `intro`, `content`, `tag`, `dele`, `isnew`, `url`, `newsdate`, `indate`, `modate`, `deldate`, `browsecount`, `ordernum`, `pagetitle`, `pagekey`, `pagetag`, `pagedesc`) VALUES
(121, 2, 0, 1, '新政引来移民大浪？加拿大华人移民人数比去年同期上涨85%！', '', '<br />\r\n<span style=\"font-size:14px;\">据加拿大移民部数据显示，今年第一季度有7770名中国人以永久居民的身份定居加拿大，相比于2016年第一季度的4195人，同期上升了85%。而今年上半年，加拿大于半年时间内已经完成了8万留学生移民指标的60%，即近5万名申请人，而其中安省上半年接收了2200名。<br />\r\n&nbsp;<br />\r\n永久居民数量的暴涨证明了加拿大对华人的强大吸引力，而加拿大移民部近年来推出的诸多新政策，放宽了移民的条件要求，也是促使华人移民数量暴涨的重要原因。<br />\r\n&nbsp;&nbsp;<br />\r\n<strong>夫妻团聚移民取消2年&ldquo;考察期&rdquo;</strong><br />\r\n&nbsp;<br />\r\n2012年，加拿大出台了一项政策，即夫妻团聚移民登录后两年的时间内，夫妻双方不得分开，否则配偶的永久居民身份就会被取消。而在登陆两年后续枫叶卡，才能由原来的&ldquo;有条件枫叶卡&rdquo;变成&ldquo;无条件枫叶卡&rdquo;，这项政策可以说是有力的打击了通过假结婚的手段来进行移民的人。<br />\r\n&nbsp;<br />\r\n今年4月28日，加拿大移民、难民及公民部正式取消了夫妻团聚移民中有条件的枫叶卡政策，也就是说，申请人和担保人生活在加拿大就无需维持婚姻/同居的限制，就算分居或离婚，也不会影响申请人的永久居民身份。<br />\r\n&nbsp;<br />\r\n<strong>随行子女的年龄上限提高到22岁</strong><br />\r\n&nbsp;<br />\r\n今年5月3日起，联邦移民部正式放宽了子女随父母申请移民的年龄，即由原来的19岁以下，提高到了22岁以下，这意味着那些有年龄较大孩子的家庭将有机会一起拿到枫叶卡，这对占移民多数的华裔社区是一大好消息。<br />\r\n&nbsp;<br />\r\n<strong>C-6法案正式通过 入籍门槛降低</strong><br />\r\n&nbsp;<br />\r\n今年6月13日，广受关注的C-6修正法案正式通过，让移民获得加拿大国籍的门槛大幅度降低。其中包括缩短了入籍时间要求，取消&ldquo;留加意图&rdquo;条款，减少报税记录时间，以及降低语言要求等等。<br />\r\n&nbsp;<br />\r\nC-6法案的通过让永久居民正式成为加拿大公民的机会大大增加，这也成为了吸引华人移民加拿大的重要原因。<br />\r\n&nbsp;<br />\r\n中国新移民数量的暴涨，对加拿大来说，意味着华裔社区将继续迅速壮大。广大的华人移民为加拿大带来了技术、生产经验和不同的文化背景，同时，华人移民作为一个巨大的消费群体,也刺激了加拿大国内需求,对经济发展显然有诸多利好。</span><br />\r\n', '头条', 1, 1, '', '2017-07-05', '2017-07-05 15:59:09', '2017-07-05 16:00:27', '0000-00-00 00:00:00', 0, 123, '', '', '', ''),
(122, 2, 0, 1, '最新消息！加拿大EE低于400分也能申请安省啦！', '', '<span style=\"font-size:14px;\">6月28日，安省定向邀请了一批职业为计算机类别且EE分数低于400分的申请人试水。本周（7月4日）安省即公布了ICT类别申请人的具体NOC代码，那什么是安省ICT呢，ICT是information and communications technology，说白了就是您的职业跟计算机信息相关！<br />\r\n&nbsp;<br />\r\n安省公布省提名EE项目的最新政策：IT类定向邀请职业名单。简单的说只要是符合以下职业名单，并且能满足联邦67的准入门槛，就有可希望被安省提名。<br />\r\n<br />\r\n&nbsp;<br />\r\n安省的技术移民EE项目一直非常有特点，它不需要像萨省或者新省一样要到省移民局去抢名额，安省是直接在联邦的EE大池子里捞人。简单的说，只要分数达到CRS评分系统的400分，并且在注册EE的时候选了有意向在安省生活，那么安省就会自动从系统中抓取，中签率很高，大伟认识的一位移民朋友就以401分的成绩被安省提名。<br />\r\n&nbsp;<br />\r\n该通道入选标准：<br />\r\n&nbsp;<br />\r\n1.您能入池（EE选池），也就是CTC够67分；（这大家肯定都不陌生，打分表第一栏，这是做加技的基础）<br />\r\n&nbsp;<br />\r\n2.您的职业是以下计算机信息类，15分之1；<br />\r\n<br />\r\n※ 满足以上两点即可申请安省最新ICT通道，最终拿到的邀请同EE400分以上受选的是一样的，提名后均可为EE加600分！看着这15个职业是不是特别眼熟：计算机软硬件，系统数据分析，多媒体，电子电气工程，统统回来了！<br />\r\n&nbsp;<br />\r\n400分虽然比联邦EE捞人的分数线低了一些，但对于海外申请者来说，想要达到400分，雅思7778是必不可少的。EE的评分规则注定了400分是一个门槛，7778和6666相对应的是完全不同的两个世界！<br />\r\n&nbsp;<br />\r\n而此次开放的IT类定向邀请职业可以说是一扇充满着阳光的落地大窗。只要是这些职业的申请者，可以不用到400分，也就是说可以不用达到雅思7778。只要求雅思四个6，本科以上学历，一年以上相关经验，准入分数达到联邦技术移民的67分即可。<br />\r\n7月1日，不仅是加拿大150周年庆，也代表着半年已过，新的半年已开始。加拿大移民局CICNews近日发表了一份《加拿大国庆日：移民年中报告》，总结过去也预测了今后的EE移民政策走向，将一片大好。<br />\r\n&nbsp;<br />\r\n<strong>一、上半年EE获邀人数大幅增加</strong><br />\r\n&nbsp;<br />\r\n加拿大移民部的高级官员指出，17年获邀人数增加主要有两个影响因素：首先，由于2017年经济类移民的配额增加，而快速通道（Express Entry）又成为经济类移民的最主要类别，因此，邀请人数不断攀升；另外，2015年1月快速通道实施以前所积压的旧案已经基本审核完毕，不用占用大量配额。<br />\r\n&nbsp;<br />\r\n<strong>二、下半年筛选分数的走向</strong><br />\r\n&nbsp;<br />\r\n获邀人数增加直接导致最低分数线（CRS）的下降。今年上半年的16次抽签中，有大约7次的分数线都降至历史最低点。<br />\r\n2017年的首次筛选分数为468分，而今年5月31日的筛选分数线已经下降至413分。尽管最近一次筛选分数有所上升（449分），但主要是因为移民部增加了两个额外加分项&mdash;&mdash;申请人在加国兄弟姐妹的分值和法语水平分值。再加上距上一轮筛选间隔时间较长，因此分数线上升是暂时的，也是可以预见的，并没有改变筛选分数一路走低的趋势。<br />\r\n&nbsp;<br />\r\n<strong>三、省提名将持续活跃</strong><br />\r\n&nbsp;<br />\r\n据统计，2016年有55%的收到ITA的申请人的核心CRS，都低于450分（即全年邀请最低分数），所谓核心CRS就是不计算申请人因省提名、工作offer或加拿大留学的额外加分。也就是说除去额外加分，多数获邀申请人的实际移民分数是低于每轮筛选最低分数的，他们都是通过额外加分获得ITA的。<br />\r\n&nbsp;<br />\r\n报告预计，下半年移民局为了引进加拿大劳动力市场急需的移民人才，会通过增加新的加分项，或定向筛选（program-specific）来调整每轮筛选的分数线。<br />\r\n&nbsp;<br />\r\n<strong>四、下半年邀请人数将持续增加</strong><br />\r\n&nbsp;<br />\r\n2017年中至年底获邀的大批申请人，将于2018年正式登陆加拿大成为永久居民。这意味着这些人将算入2018年的移民配额。尽管2018年的移民配额还未公布，但是移民部长已经明确公布今后每年经济类移民配额将不少于30万。移民将继续作为国家经济发展的关键组成部分。预示着经济移民将持续占据移民总配额的大多数。<br />\r\n&nbsp;<br />\r\n不论是【直接联邦】还是通过【省提名加分】的加拿大技术移民，无疑都在为申请人创造更多的机会，提供更多的机遇，所以，及时入池占名额是关键，有了名额才是技术移民的开始！</span><br />\r\n', '头条', 1, 1, '', '2017-07-05', '2017-07-05 16:01:31', '2017-07-05 16:02:08', '0000-00-00 00:00:00', 0, 126, '', '', '', ''),
(129, 13, 0, 1, '111-加拿大移民评估', '无法办理', '<p><br>年龄 : 18-34岁<hr>学历 : 高中、中专、技校<hr>雅思 : <hr>工作年龄 : 1-3年<hr>家庭资产 : 100万-1000万RMB<hr>姓名：111<hr>电话：111<hr></p>', '', 1, 1, '', '2017-07-07', '2017-07-07 13:51:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', '', '', ''),
(130, 13, 0, 1, '123331-加拿大移民评估', '无法办理', '<p><br>年龄 : 35-50岁<hr>学历 : 大专<hr>雅思 : ≥4个6分<hr>工作年龄 : > 3年以上<hr>家庭资产 : > 1000万以上RMB<hr>姓名：123331<hr>电话：12133<hr></p>', '', 1, 1, '', '2017-07-07', '2017-07-07 13:52:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', '', '', ''),
(131, 13, 0, 1, '123456-加拿大移民评估', '无法办理', '<p><br>年龄 : 35-50岁<hr>学历 : 本科或以上<hr>雅思 : ≥4个6分<hr>工作年龄 : > 3年以上<hr>家庭资产 : > 1000万以上RMB<hr>姓名：123456<hr>电话：12345678<hr></p>', '', 1, 1, '', '2017-07-07', '2017-07-07 14:17:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', '', '', ''),
(132, 13, 0, 1, '证-加拿大移民评估', '无法办理', '<p><br>年龄 : 35-50岁<hr>学历 : 本科或以上<hr>雅思 : ≥4个6分<hr>工作年龄 : > 3年以上<hr>家庭资产 : > 1000万以上RMB<hr>姓名：证<hr>电话：18001820871<hr></p>', '', 1, 1, '', '2017-07-07', '2017-07-07 14:17:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', '', '', ''),
(125, 2, 0, 1, '​澳洲移民局突然废除186高薪英语豁免，无任何过渡期！雇主担保大幅收紧！申请人何去何从？', '', '<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp; 上周，移民局昨日突然对419新政进行解释，立即废除186高薪豁免，不给任何过渡期，同时对于普通类186实施岗位真实性要求提升等等，对申请人影响很大！澳洲雇主担保移民趋势大幅收紧！雇主担保类移民新政要点01申请年龄下调原本50岁的年龄限制，下调至45岁！<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;此次下调收到影响的签证有：186/187雇主担保，189独立技术、190州担保、489偏远地区担保。02英语水平要求大幅提高不仅仅是186/187一步到位雇主担保移民需要申请人达到英文等同于雅思4个6的水平，457转186/187也同样需要，这无疑是一个巨大的打击，将彻底狙击技工类457签证转186的可能，很多457持有人将不得不打道回府！03立即关闭186高薪豁免移民局强制关闭186高薪移民，不给任何过渡时间，18万高薪豁免英语水平以及职业评估的通道遭遇阻断，这等同于封闭了很多国内高管及小型企业家的移民道路。更可怕的是，这一项规定适用于所有还未审批通过的申请，也就是说，即便是在7月1日之前递交的高薪豁免的186/187申请，也无法幸免。申请人可以申请退还申请费用。04增加职位真实性的审查要求以前457转186/187是不需要证明职位真实性的。现在新政策把这条挡了无数人457之路的令牌拿出来，无疑是变相把186/187的生杀大权死死捏在了签证官手里。以前只要符合其他要求，移民局没法不批提名，但是现在一个职位真实性的问题摆出来，想要把提名拒掉简直就是分分钟的事情。根据分析，移民局主要是要修正过去几年轻松获得457签证的大众化岗位，特别是小企业的457签证申请人，在递交186申请时，将再次面临岗位真实性审查。05培训上次改革时，移民局就提到过，对于培训会有更严格的规定。此次对于培训基金、培训机构、培训方式等，都做出了更明确的指示。06星标职业星标职业增加了，并且扩展至186申请，也是这次改革放出的一枚冷箭。大家还记得4月19日针对457签证而对一些职业进行了三星标注吗？是的，这些标注同样适用于186签证了！我们今天就更具体的说一说被标注的职业。<br />\r\n<br />\r\n<strong>这些职业分为三类：</strong><br />\r\n类别一：需要2年工作经验该类别包含这些职业：Advertising Specialist，ContractAdministrator，Finance Manager，Graphic Designer，Information and Organisation Professionals nec，University Lecturer ，Web Developer等国人经常申请的职业受到影响。<br />\r\n类别二：只有偏远地区的雇主可进行担保该类别包含这些职业：Agricultural Technician，Aquaculture Farmer，Fitness Centre Manager ，Flower Grower ，Fruit or Nut Grower，Grape Grower ，Production Manager (Forestry) ，Wine Maker 等。<br />\r\n类别三：移民局根据每个职业的不同而制定的不同要求移民局这次花了很多精力对大众化岗位制定了严格差异化要求，受到影响的职业包括会计，酒店/旅馆经理，厨师，管理岗位，公司经理，客户服务经理，按摩，市场专员，销售经理，零售采购及经理，税务会计等所大部分华人申请的职业都受到影响，申请186永居之路将变得更加困难。<br />\r\n<strong>难上加难的雇主担保职位举例在如今形势下，符合以下范畴的雇主将很难担保的职位有：</strong><br />\r\n1、普通会计仅涉及简单记账工作，营业额小于一百万或公司少于5人的。<br />\r\n2、餐厅经理及厨师（包含总厨，西厨，糕点师）快餐及非正餐形式的，只提供有限服务的，规模较小的caf&eacute;，或没有桌前服务的pizza店。<br />\r\n3、执行总裁，总经理工资低于18万澳币的。（正如前文所说，18万高薪豁免被取消，这些职位即使提了如此高薪，依然需要提供语言水平及职业评估。这两个职位的职业评估有AIM机构审核，几乎无异于登天。）<br />\r\n4、管理顾问营业额少于一百万的，或员工人数少于5人。<br />\r\n5、市场专员，销售及市场经理，供销经理零售型企业，营业额少于一百万的，或提名工资少于6万5澳币每年的。<br />\r\n仍然可继续豁免英语的人群关于英语豁免人群：<br />\r\n1. 高薪（+$96,000）英语豁免政策被取消的条例仅适用于澳洲当地经营的企业。也就是说，在海外经营或有关联实体的澳大利亚公司仍然可以申请英语豁免资格；<br />\r\n2. 英国、美国、加拿大、新西兰以及爱尔兰护照持有人；<br />\r\n3. 申请人在高中或以上学历有5年全日制英文学习时间；<br />\r\n4. 外交使团工作；<br />\r\n5. 或取得提名职业中要求注册资格即可豁免英语成绩。<br />\r\n澳洲&ldquo;高薪豁免&rdquo;政策的关闭，再次为许多嫌188商业移民麻烦，而想走186或187雇主提名捷径直接拿永居的企业家们敲响了警钟。<br />\r\n相比之下，188商业移民对许多企业家来说，要实在很多。毕竟188商业移民的投资和回报是企业家自己可以控制的东西，是企业家可以通过努力真真实实实收获的东西，同时，如果其他条件足够，英语没有硬性分数规定！<br />\r\n&nbsp;</span><br />\r\n', '头条', 1, 1, '', '2017-07-05', '2017-07-05 16:05:10', '2017-07-05 16:08:18', '0000-00-00 00:00:00', 0, 121, '', '', '', ''),
(126, 2, 0, 1, ' 澳洲移民必看：7.1起实施的澳大利亚移民新政汇总', '', '<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp;澳洲移民政策一直受到关注，自7月1日起，澳大利亚一波移民新政策开始实施。移民政策的变迁不仅影响到数以万计的移民申请人，也影射出澳大利亚移民政策和其经济发展间关联度的进一步提高，移民门槛的调高，从另一层面折射出移民政策在澳经济发展中将扮演更重要角色，移民产业链条生态环境也将由此发生深刻变化。<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;澳洲7.1起正式执行 新政要点集锦英文：提高了英文要求，需要满足相当于雅思4个6分的英文水平（不仅是186/187一步到位需要申请人达到英文等同于雅思4个6的水平，457转186/187也同样需要）年龄：一步到位186/187申请人年龄上限从50岁下调至45岁；457转186/187申请人年龄上限依然是50岁豁免及真实性：一步到位186/187申请人取消了原先的年薪超过$180,000可以高薪豁免英文及职业评估的条款；457转186/187申请人的将再次面临岗位真实性审查其他重要信息&mdash;&mdash;短期职业清单STSOL将会每半年调整更新中长期职业清单MLTSSL将会每财年调整更新 ➢ 技术移民最新政策<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;此次签证改革，涉及技术移民类签证的所有主要组成部分，但核心是新的技术移民职业清单。在原有体系下，澳大利亚的技术移民有两个职业清单，一个叫做SOL（独立技术移民职业 清单），一个叫做CSOL（合并的技术移民清单）。在新政下，SOL更名为MLTSSL（中到长期短缺职业清单），CSOL更名为STSOL（短期内短缺的职业清单）。如果您的职业是澳大利亚 &nbsp; &nbsp; &nbsp; &nbsp;在中到长期的时间里短缺的（MLTSSL），那么您仍然有机会通过雇主担保的方式获得澳洲永居签证（绿卡）；如果您的职业仅仅是澳大利亚在短期内短缺的（STSOL），那么您仍有机会来澳洲工作，但是除非您去澳洲的偏远地区。<br />\r\n<br />\r\n<strong>新职业清单显著特点：</strong><br />\r\n● 在所有其他类别清单都受到血洗的情况下，187（偏远地区雇主提名类永居签证）独享一份长达近700个职业的清单，显示出政府发展偏远地区经济的决心。<br />\r\n● 由雇主提名的457签证和186签证适用同一份中长期职业清单，清单上共有207个职业；但独立技术移民类签证（189／190／485／489签证）适用的中长期职业清单上只有178个职业，在457／186签证的中长期职业清单上，增加了不少高级管理类职业（如企业的总经理、首席信息官等等）。另外，新的职业清单中Caveats职业的适用范围将扩大至一步到位186签证。<br />\r\n● 与此同时，通过规定提名职位的最低工资和职责要求、提名企业的规模、以及签证申请人的年龄、技能、学历等一系列手段，使雇主提名类签证向那些拥有更高学历、更多经验、工作技能更高的申请人，以及那些规模更大的澳洲本地企业倾斜。这与之前雇主提名签证主要由本地中小型企业使用的情况也有所不同。<br />\r\n● 毕业生临时工作签证（485签证）今后将只提供给那些职业在中长期清单上的毕业生。其政策目标是促进偏远地区教育产业的发展。<br />\r\n➢ 雇主担保最新政策<br />\r\n7月1日前已经拿到457签证的人，不受新职业清单的影响。还可以加入副申请人，签证有效期与主申请人一样。如果已经拿到457签证，到期后续签457或者打算更换雇主、职位，提名职业必须在新的MLTSSL或STSOL清单上。对于7月1日前已递交未获批的457签证申请，如果提名职业已经被移除或者被加了caveat，申请不会获批。申请人可以选择撤销签证并申请退费。对于457转186或187申请，必须持457签证为提名雇主在同一职位上工作2年，但是457转永居跟提名职业无关，所以不受职业清单影响。但仍然需要满足英文、健康、品格等方面的要求。<br />\r\n2017年7月1日及之后递交的一步到位186和187签证，申请人年龄不能超过45岁。不过现有的年龄豁免条件依然有效。2018年3月1日前，457转永居的年龄要求还是50岁以下。但是3月1日之后， 年龄要求也降至45岁以下。<br />\r\n&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;英文要求2017年7月1日及以后，无论是457转永居还是一步到位永居，所有申请人的英文都必须达到competent水平（相当于雅思4个6）。而且186和187签证的高薪（$180,001）英文豁免被取消了，这一要求适用于所有的186和187，包括2017年7月1日前已递交未下签的签证申请。新的英文要求等同于雅思7分水平！对于非申请人的原因导致的186和187撤签， 比如因新政实施而无法满足要求，在某些情况下可以退还第一期申请费。对于457签证来说，原有的高薪豁免英文在7月1日之后也不复存在，除非申请人是在公司内调动工作（比如从国外的母公司调到澳洲的分公司）并且提名的基本工资达到96400澳元。技术评估一步到位186和187签证高薪（$180,001）技术评估豁免被取消，适用于所有的186和187，包括2017年7月1日前已递交未下签的签证申请。<br />\r\n<strong>担保和提名</strong><br />\r\n● 某个职业的第一次提名撤销或被拒，在签证没撤/没拒的情况下，同一职位不能再次提名。<br />\r\n● 无论是457转永居还是和一步到位186签证，雇主都必须提供证据证明提名职位的真实性，而且签证官有要求进一步补充材料的权利。<br />\r\n● &nbsp;对于一步到位186和187签证，雇主在提名环节就必须提供被提名人的身份信息。<br />\r\n● 7月1日前已递交未获批的457雇主担保资格申请不受新职业清单的影响，但提名和签证申请需按照最新要求。<br />\r\n● 457签证申请在2018年3月前仍可递交。在3月之后，担保资格已经获批的雇主还可继续担保海外员工申请TSS签证。担保资格到期后还要继续担保的话，则需重新申请。<br />\r\n<strong>➢ 塔斯马尼亚州州担保改革</strong><br />\r\n●由于收到众多海外人士的州担保申请，塔州决定从7月1日起，针对境外489引入新的州担保职业清单。<br />\r\n●有亲属在塔州的申请人只能申请489签证<br />\r\n●从8月1日开始，对于在塔州有工作offer并递交489担保申请的人， 如果是在ANZSCO skill level 4或以下的岗位，必须跟当地政府提供在本地劳工市场真实招聘的证明。<br />\r\n●从10月1日开始，190和489签证的境内工作offer申请人必须在递交申请前已经在塔州工作满3个月。<br />\r\n●从2018年1月1日开始，对于190申请人来说，需要在塔州政府认可的学校里完成两年学习。现行政策下只有一年的学习时间。<br />\r\n● 如果要申请489签证，申请人可以在完成一年的学习后提出申请。<br />\r\n<strong>➢ 签证费上涨通知</strong><br />\r\n从2017年7月1日起，政府将根据每年预算中公布的CPI指数来制定签证申请费。预计可增加收入4.1亿澳元，这笔钱将用来支持签证改革以及其他相关政策的实施。此次签证费用上涨涵盖了大部分的签证类别，包括访客签证、留学签证、配偶签证、父母签证、家庭团聚签证、雇主担保、技术移民、永居回头签证等；针对国内高净值人士最关心的商业移民类别签证费用均有上涨，具体涨幅见下图：<br />\r\n&nbsp;<br />\r\n&nbsp;<br />\r\n&nbsp;</span><br />\r\n', '头条', 1, 1, '', '2017-07-05', '2017-07-05 16:08:45', '2017-07-05 16:11:26', '0000-00-00 00:00:00', 0, 122, '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `newspic`
--

CREATE TABLE `newspic` (
  `id_newspic` int(11) NOT NULL,
  `id_newsinfo` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL DEFAULT '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `newspic`
--

INSERT INTO `newspic` (`id_newspic`, `id_newsinfo`, `id_hr`, `title`, `intro`, `url`, `opicname`, `spicname`, `dele`, `type`, `indate`, `modate`, `deldate`, `browsecount`) VALUES
(21, 43, 1, '', '', '', '1494405297.jpg', '', 1, 'JPG', '2017-05-10 15:51:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(22, 44, 1, '', '', '', '1494405274.jpg', '', 1, 'JPG', '2017-05-10 15:52:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(23, 45, 1, '', '', '', '1494405251.jpg', '', 1, 'JPG', '2017-05-10 16:00:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(8, 14, 1, '', '', '', '1494321173.jpg', '', 1, 'JPG', '2017-05-08 07:17:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(9, 13, 1, '', '', '', '1494199085.jpg', '', 1, 'JPG', '2017-05-08 07:18:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(10, 12, 1, '', '', '', '1494199102.jpg', '', 1, 'JPG', '2017-05-08 07:18:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(11, 15, 1, '', '', '', '1494199653.jpg', '', 1, 'JPG', '2017-05-08 07:27:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(12, 17, 1, '', '', '', '1494320817.jpg', '', 1, 'JPG', '2017-05-08 07:28:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(13, 16, 1, '', '', '', '1494199704.jpg', '', 1, 'JPG', '2017-05-08 07:28:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(14, 36, 1, '', '', '', '1494321486.jpg', '', 1, 'JPG', '2017-05-09 17:18:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(15, 37, 1, '', '', '', '1494321605.jpg', '', 1, 'JPG', '2017-05-09 17:20:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(19, 41, 1, '', '', '', '1494405339.jpg', '', 1, 'JPG', '2017-05-10 15:50:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(20, 42, 1, '', '', '', '1494405318.jpg', '', 1, 'JPG', '2017-05-10 15:51:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(24, 46, 1, '', '', '', '1494405224.jpg', '', 1, 'JPG', '2017-05-10 16:14:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(26, 48, 1, '', '', '', '1494475334.jpg', '', 1, 'JPG', '2017-05-11 12:02:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(27, 49, 1, '', '', '', '1494475528.jpg', '', 1, 'JPG', '2017-05-11 12:05:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(28, 82, 1, '', '', '', '1496641320.jpg', '', 1, 'JPG', '2017-06-05 13:42:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(29, 78, 1, '', '', '', '1497324023.jpg', '', 1, 'JPG', '2017-06-13 11:20:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(30, 97, 1, '', '', '', '1497324050.jpg', '', 1, 'JPG', '2017-06-13 11:20:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- 表的结构 `pageset`
--

CREATE TABLE `pageset` (
  `id_pageset` int(11) NOT NULL,
  `lang` int(1) NOT NULL DEFAULT '1',
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` text NOT NULL,
  `pagetitle` text NOT NULL,
  `keywords` text NOT NULL,
  `pagetag` text NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  `location` int(2) NOT NULL DEFAULT '1',
  `ordernum` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pageset`
--

INSERT INTO `pageset` (`id_pageset`, `lang`, `title`, `intro`, `url`, `pagetitle`, `keywords`, `pagetag`, `description`, `content`, `location`, `ordernum`) VALUES
(1, 0, '了解我们', '上海圣鸿出入境服务有限公司', '', '', '', '', '', '<p>\r\n	<span style=\"font-size: 12px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 华京圣鸿集团是一家专业提供海外移民、资产配比、资产保全业务咨询服务，公司与多家国内外顶尖的私人银行、基金公司、保险公司、信托机构以及财富教育机构等建立了广泛深入的合作关系，传递先进的理财观念，捕捉全球理财热点，以完美的资产配置为核心，致力于为客户打造一个视野国际化、品种多样化、服务专业化和操作精细化的理财平台，帮助客户实现资产安全长久稳健增值的财务目标。</span></p>\r\n<p>\r\n	<span style=\"font-size: 12px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我们秉承，诚信：诚以待客是我们一贯秉承的优良传统；融合：全面优质资源融合是我们独特的优势；专业：专注于财富解决方案体现我们的专业；卓越：一站式资本策略使财富价值更为卓越。</span></p>\r\n<p>\r\n	<span style=\"font-size: 12px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 上海圣鸿出入境服务有限公司是<span style=\"font-size: 12px\">华京圣鸿集团</span>旗下上海的一家专业提供境外留学、移民、安家、旅游签证、海外资产配置业务的咨询服务公司，本公司依托海外公司的资源和优势、在国内又与多家国内外顶尖的私人银行、基金公司、保险公司、信托机构以及财富教育机构等建立了广泛深入的合作关系。<br />\r\n	&nbsp;</span></p>\r\n<p>\r\n	<span style=\"font-size: 12px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我们秉承，诚信、专业、专注的服务态度，致力成为中国高净值人群移居海外全方位服务提供商。公司依托自身的优势与资源，保证客户从移民前到海外登陆后都获得贴心、省心、安心的全程&ldquo;管家&rdquo;式服务。</span></p>\r\n<p>\r\n	<span style=\"font-size: 12px\"><img src=\"/inc/pics/global.jpg\" /></span></p>\r\n', 0, 1),
(2, 0, '联系我们', '圣鸿中国', '', '', '', '', '', '<p>\r\n	上海圣鸿嘉澳因私出入境服务有限公司<br />\r\n	地址：上海浦东新区世纪大道201号渣打银行大厦5楼551室<br />\r\n	<br />\r\n	上海圣鸿出入境服务有限公司（上海）<br />\r\n	地址：上海市黄浦区茂名南路205号瑞金大厦1107室<br />\r\n	<br />\r\n	<br />\r\n	上海圣鸿出入境服务有限公司（郑州）<br />\r\n	地址：河南省郑州市郑东新区东风路西榆林北路北绿地中心南塔1号楼4606-4607室<br />\r\n	<br />\r\n	中国圣鸿香港投资有限公司<br />\r\n	地址：Unit 17,9/F.,Tower A, New Mandarin Plaza, No. 14 Science Museum Road, Tsimshatsui, Kowloon</p>\r\n<p>\r\n	<br />\r\n	澳大利亚圣鸿国际控股有限公司<br />\r\n	地址：Level 1, 45 Exhibition Street , Melbourne Australia VIC 3000<br />\r\n	<br />\r\n	加拿大圣鸿投资有限公司<br />\r\n	地址：278 selby street Nanaimo.BC<br />\r\n	&nbsp;</p>\r\n<hr />\r\n', 0, 2),
(3, 0, '圣鸿活动', '', '', '', '', '', '', '<img alt=\"\" src=\"/upload/other/images/20170516_053021.jpg\" style=\"width: 700px; height: 1059px\" />', 0, 3),
(4, 0, '我们的优势', '我们的优势', '', '', '', '', '', '<h2 style=\"text-align: center\">\r\n	服 务 优 势</h2>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 上海圣鸿出入境服务有限公司是华京圣鸿集团设立在上海的一家专业提供境外留学、移民、安家、旅游签证、海外资产配置业务的咨询服务公司，本公司依托海外公司的资源和优势、在国内又与多家国内外顶尖的私人银行、基金公司、保险公司、信托机构以及财富教育机构等建立了广泛深入的合作关系。</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我们秉承，诚信、专业、专注的服务态度，致力成为中国高净值人群移居海外全方位服务提供商。公司依托自身的优势与资源，保证客户从移民前到海外登陆后都获得贴心、省心、安心的全程&ldquo;管家&rdquo;式服务。</p>\r\n<h2 style=\"text-align: center\">\r\n	我们与其他移民公司的区别</h2>\r\n<p>\r\n	区别一：经过十多年的累积和沉淀，有着很多优秀的律师资源；<br />\r\n	区别二：在海外与多家有着百年历史的家族企业有着良好的合作关系，长期为我们的客户提供雇主担保名额以及投资项目资源；<br />\r\n	区别三：我们在墨尔本以及加拿大有自己的分公司及办事处，可以为我们的客户提供&ldquo;管家式&rdquo;落地服务；<br />\r\n	区别四： 因我们在澳洲及加拿大有自己的公司和资源，我们可以为客户打理或经营因办理移民需要而开设的公司，最后为客户获得PR.同时也可以为客户的资产提供投向当地其他产业的投资机会。<br />\r\n	区别五：在主推项目的同时，我们不忘开拓其他移民国家的项目，但我们不做简单的代理，而是与当地的移民律师、移民官沟通，开发或研发移民项目，做到是项目的源头。</p>\r\n<h2 style=\"text-align: center\">\r\n	项 目 优 势</h2>\r\n<p>\r\n	雇主类移民的优势：<br />\r\n	1. HJSH不但是澳洲或加拿大的项目方也是雇主方，为移民客户省却了大量的找雇主的时间和精力，<br />\r\n	&nbsp;&nbsp; 有雅思并符合雇主工作要求的可以提供真&nbsp; 实岗位；<br />\r\n	2. HJSH具有强大的实力，可以保证自身作为雇主的优质性，如果客户的专业性太过特殊，<br />\r\n	&nbsp;&nbsp;&nbsp; 本公司也可以在我们的相关合作公司中为客户找到合适的、优质的雇主为其担保移民；<br />\r\n	3. HJSH作为雇主方，可以与客户进行一个良好的沟通，减少了不必要的麻烦、手续和沟通上的误解，保持信息畅通；<br />\r\n	4. 公司承诺如签证不成功，全额退款；<br />\r\n	5. 律师一对一，专业评估，精准设计移民方案，高成功率；<br />\r\n	6. 付款方式灵活，公司可提供分期付款，降低移民办理成本。<br />\r\n	7. 免费为客户提供优质的后续服务。</p>\r\n<p>\r\n	投资类移民优势：<br />\r\n	1. 申请人在海外注册的公司中的业务以及移民局对此公司的业绩要求全部由本公司代为完成,<br />\r\n	&nbsp;&nbsp;&nbsp; 申请人无需自己亲身经营（免去经营烦恼和风险）<br />\r\n	2. 保证客户永居签证，承诺如不成功，全额退款<br />\r\n	3. 将产品模式化、统一化，简单明了，让客户更加容易了解投资和回报模式<br />\r\n	4. 律师一对一，专业评估，精准设计移民方案，高成功率</p>\r\n<p>\r\n	房产投资优势：<br />\r\n	1. HJSH特有的房产投资评估系统，为投资者选择房产时提供客观的评估分数，以供投资者选择<br />\r\n	2. 为客户提供从开发、贷款、装修到物业出租理财再售等一条龙服务<br />\r\n	3. 赠送客户房屋租金担保，保障客户收益</p>\r\n', 0, 4),
(5, 0, '英才招聘', '英才招聘', '', '', '', '', '', '<table cellpadding=\"0\" cellspacing=\"0\" class=\"listtable\" style=\"table-layout: fixed\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<th class=\"nameth\">\r\n				职位名称</th>\r\n			<th class=\"classth\">\r\n				职位类别</th>\r\n			<th class=\"numbth\">\r\n				招聘人数</th>\r\n			<th class=\"locth\">\r\n				工作地点</th>\r\n			<th class=\"timeth\">\r\n				发布时间</th>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"nameth\" title=\"移民文案（武汉）\">\r\n				<a href=\"/news/news-58.html\">行政人事</a><a href=\"/news/news-58.html\" target=\"_blank\">（郑州）</a></td>\r\n			<td class=\"classth\" title=\"项目助理\">\r\n				综合部</td>\r\n			<td class=\"numbth\" title=\"4\">\r\n				1</td>\r\n			<td class=\"locth\" title=\"\">\r\n				郑州</td>\r\n			<td class=\"timeth\">\r\n				2017-06-20</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"nameth\" title=\"项目经理（武汉）\">\r\n				<a href=\"/news/news-58.html\">行政前台（郑州）</a></td>\r\n			<td class=\"classth\" title=\"项目助理\">\r\n				行政部</td>\r\n			<td class=\"numbth\" title=\"4\">\r\n				1</td>\r\n			<td class=\"locth\" title=\"\">\r\n				郑州</td>\r\n			<td class=\"timeth\">\r\n				2017-06-20</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"nameth\" title=\"出纳（武汉）\">\r\n				<a href=\"/news/news-60.html\" target=\"_blank\">移民文案（郑州）</a></td>\r\n			<td class=\"classth\" title=\"出纳会计\">\r\n				销售部</td>\r\n			<td class=\"numbth\" title=\"1\">\r\n				1</td>\r\n			<td class=\"locth\" title=\"\">\r\n				郑州</td>\r\n			<td class=\"timeth\">\r\n				2017-06-20</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"nameth\" title=\"移民顾问（南京）\">\r\n				<a href=\"/news/news-58.html\">移民顾问</a><a href=\"/news/news-58.html\" target=\"_blank\">（郑州）</a></td>\r\n			<td class=\"classth\" title=\"移民顾问\">\r\n				销售部</td>\r\n			<td class=\"numbth\" title=\"3\">\r\n				3</td>\r\n			<td class=\"locth\" title=\"\">\r\n				郑州</td>\r\n			<td class=\"timeth\">\r\n				2017-06-20</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"nameth\" title=\"移民文案/文案助理（南京）\">\r\n				<a href=\"/news/news-58.html\">海外保险顾问</a><a href=\"/news/news-58.html\" target=\"_blank\">（郑州）</a></td>\r\n			<td class=\"classth\" title=\"项目助理\">\r\n				销售部</td>\r\n			<td class=\"numbth\" title=\"3\">\r\n				3</td>\r\n			<td class=\"locth\" title=\"\">\r\n				郑州</td>\r\n			<td class=\"timeth\">\r\n				2017-06-20</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"nameth\" title=\"移民文案/文案助理（南京）\">\r\n				<a href=\"/news/news-64.html\" target=\"_blank\">市场经理</a><a href=\"/news/news-58.html\" target=\"_blank\">（郑州）</a></td>\r\n			<td class=\"classth\" title=\"项目助理\">\r\n				市场部</td>\r\n			<td class=\"numbth\" title=\"3\">\r\n				1</td>\r\n			<td class=\"locth\" title=\"\">\r\n				郑州</td>\r\n			<td class=\"timeth\">\r\n				2017-06-20</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"nameth\" title=\"移民顾问\">\r\n				<a href=\"/news/news-63.html\" target=\"_blank\">新媒体运营 文案编辑</a></td>\r\n			<td class=\"classth\" title=\"移民顾问\">\r\n				企划部</td>\r\n			<td class=\"numbth\" title=\"2\">\r\n				1</td>\r\n			<td class=\"locth\" title=\"\">\r\n				上海</td>\r\n			<td class=\"timeth\">\r\n				2017-06-20</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"nameth\" title=\"人事专员（北京）\">\r\n				<a href=\"/news/news-64.html\" target=\"_blank\">市场经理</a></td>\r\n			<td class=\"classth\" title=\"人力资源\">\r\n				市场部</td>\r\n			<td class=\"numbth\" title=\"1\">\r\n				1</td>\r\n			<td class=\"locth\" title=\"\">\r\n				上海</td>\r\n			<td class=\"timeth\">\r\n				2017-06-20</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"nameth\" title=\"客戶經理（香港）\">\r\n				<a href=\"/news/news-65.html\" target=\"_blank\">出纳</a></td>\r\n			<td class=\"classth\" title=\"客户经理\">\r\n				财务部</td>\r\n			<td class=\"numbth\" title=\"2\">\r\n				1</td>\r\n			<td class=\"locth\" title=\"\">\r\n				上海</td>\r\n			<td class=\"timeth\">\r\n				2017-06-20</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"nameth\" title=\"移民顾问（成都）\">\r\n				<a href=\"/news/news-66.html\" target=\"_blank\">移民文案</a></td>\r\n			<td class=\"classth\" title=\"移民顾问\">\r\n				销售部</td>\r\n			<td class=\"numbth\" title=\"5\">\r\n				2</td>\r\n			<td class=\"locth\" title=\"\">\r\n				上海</td>\r\n			<td class=\"timeth\">\r\n				2017-06-20</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"nameth\" title=\"移民顾问（武汉）\">\r\n				<a href=\"/news/news-67.html\" target=\"_blank\">商务渠道总监</a></td>\r\n			<td class=\"classth\" title=\"移民顾问\">\r\n				市场部</td>\r\n			<td class=\"numbth\" title=\"2\">\r\n				1</td>\r\n			<td class=\"locth\" title=\"\">\r\n				上海</td>\r\n			<td class=\"timeth\">\r\n				2017-06-20</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"nameth\" title=\"移民文案（北京)\">\r\n				<a href=\"/news/news-68.html\" target=\"_blank\">移民顾问</a></td>\r\n			<td class=\"classth\" title=\"项目助理\">\r\n				销售部</td>\r\n			<td class=\"numbth\" title=\"2\">\r\n				3</td>\r\n			<td class=\"locth\" title=\"\">\r\n				上海</td>\r\n			<td class=\"timeth\">\r\n				2017-06-20</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"nameth\" title=\"移民文案（成都）\">\r\n				<a href=\"/news/news-69.html\" target=\"_blank\">海外保险顾问</a></td>\r\n			<td class=\"classth\" title=\"项目助理\">\r\n				销售部</td>\r\n			<td class=\"numbth\" title=\"4\">\r\n				3</td>\r\n			<td class=\"locth\" title=\"\">\r\n				上海</td>\r\n			<td class=\"timeth\">\r\n				2017-06-20</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<div style=\"text-align: center\">\r\n	<br />\r\n	更多招聘信息：请点击智联招聘.......</div>\r\n<span style=\"line-height: 24px; font-family: Helvetica, Arial, sans-serif; color: rgb(0,0,0)\">&nbsp; &nbsp; &nbsp; &nbsp;华京圣鸿集团是一家专业提供海外移民、资产配比、资产保全业务咨询服务，公司与多家国内外顶尖的私人银行、基金公司、保险公司、信托机构以及财富教育机构等建立了广泛深入的合作关系，传递先进的理财观念，捕捉全球理财热点，以完美的资产配置为核心，致力于为客户打造一个视野国际化、品种多样化、服务专业化和操作精细化的理财平台，帮助客户实现资产安全长久稳健增值的财务目标。</span>', 0, 5);

-- --------------------------------------------------------

--
-- 表的结构 `pagesetpic`
--

CREATE TABLE `pagesetpic` (
  `id_pagesetpic` int(11) NOT NULL,
  `id_pageset` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL DEFAULT '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  `ordernum` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pagesetpic`
--

INSERT INTO `pagesetpic` (`id_pagesetpic`, `id_pageset`, `id_hr`, `title`, `intro`, `url`, `opicname`, `spicname`, `dele`, `type`, `indate`, `modate`, `deldate`, `browsecount`, `ordernum`) VALUES
(1, 1, 1, '', '', '', '1493109309.jpg', '', 1, 'JPG', '2017-04-10 11:15:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1),
(2, 1, 1, '', '', '', '1493109320.jpg', '', 1, 'JPG', '2017-04-10 11:16:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 2),
(3, 3, 1, '', '', '/case/case-37.html', '1494905381.jpg', '', 1, 'JPG', '2017-04-14 17:47:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 3),
(4, 4, 1, '', '', '', '1492585617.jpg', '', 1, 'JPG', '2017-04-16 09:42:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 4);

-- --------------------------------------------------------

--
-- 表的结构 `pavy1`
--

CREATE TABLE `pavy1` (
  `id_pavy1` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `lang` int(1) NOT NULL DEFAULT '1',
  `product_visit` int(1) NOT NULL DEFAULT '0',
  `store_visit` int(1) NOT NULL DEFAULT '0',
  `news_visit` int(1) NOT NULL DEFAULT '0',
  `hr_visit` int(1) NOT NULL DEFAULT '0',
  `pavy_visit` int(1) NOT NULL DEFAULT '0',
  `data_visit` int(1) NOT NULL DEFAULT '0',
  `siteset_visit` int(1) NOT NULL DEFAULT '0',
  `level` int(1) NOT NULL DEFAULT '0',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pavy1`
--

INSERT INTO `pavy1` (`id_pavy1`, `id_hr`, `lang`, `product_visit`, `store_visit`, `news_visit`, `hr_visit`, `pavy_visit`, `data_visit`, `siteset_visit`, `level`, `indate`, `modate`, `deldate`) VALUES
(28, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `pavy2`
--

CREATE TABLE `pavy2` (
  `id_pvay2` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `id_backmenu` int(11) NOT NULL,
  `lang` int(1) NOT NULL DEFAULT '1',
  `browseprem` int(1) NOT NULL DEFAULT '0',
  `addprem` int(1) NOT NULL DEFAULT '0',
  `editprem` int(1) NOT NULL DEFAULT '0',
  `deleprem` int(1) NOT NULL DEFAULT '0',
  `display` int(1) NOT NULL DEFAULT '1',
  `level` int(1) NOT NULL DEFAULT '0',
  `state` int(1) NOT NULL DEFAULT '1',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pavy2`
--

INSERT INTO `pavy2` (`id_pvay2`, `id_hr`, `id_backmenu`, `lang`, `browseprem`, `addprem`, `editprem`, `deleprem`, `display`, `level`, `state`, `indate`, `modate`, `deldate`) VALUES
(246, 1, 46, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 1, 41, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 1, 39, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 1, 22, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 1, 21, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 1, 20, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 1, 19, 1, 0, 0, 0, 0, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 1, 18, 1, 0, 0, 0, 0, 0, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 1, 17, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 1, 16, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 1, 15, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 1, 47, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 1, 8, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 1, 9, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, 1, 49, 1, 0, 0, 0, 0, 0, 0, 1, '2012-02-26 20:27:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 1, 48, 1, 1, 1, 1, 1, 1, 0, 1, '2011-03-09 16:42:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, 1, 50, 1, 0, 0, 0, 0, 1, 0, 1, '2012-06-15 10:47:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, 1, 51, 1, 0, 0, 0, 0, 1, 0, 1, '2013-04-06 19:51:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(280, 1, 52, 1, 1, 1, 1, 1, 1, 0, 1, '2014-03-10 14:18:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(281, 1, 53, 1, 1, 1, 1, 1, 1, 0, 1, '2014-03-10 14:19:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(282, 1, 54, 1, 0, 0, 0, 0, 1, 0, 1, '2014-03-10 15:15:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(283, 1, 55, 1, 0, 0, 0, 0, 1, 0, 1, '2014-03-24 18:47:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `post`
--

CREATE TABLE `post` (
  `id_post` int(11) NOT NULL,
  `post` varchar(25) NOT NULL,
  `lang` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `post`
--

INSERT INTO `post` (`id_post`, `post`, `lang`) VALUES
(1, '普通员工', 1),
(2, '物料收发员', 1),
(3, 'IQC', 1),
(4, '仓库主管', 1),
(5, '采购主管', 1),
(6, '销售主管', 1),
(7, '副总经理', 1),
(8, '总经理', 1),
(9, '网站管理员', 1);

-- --------------------------------------------------------

--
-- 表的结构 `productdir`
--

CREATE TABLE `productdir` (
  `id_proddir` int(11) NOT NULL,
  `lang` int(1) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '1',
  `intro` text NOT NULL,
  `dele` int(1) NOT NULL DEFAULT '1',
  `dirurl` varchar(50) NOT NULL,
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `productdir`
--

INSERT INTO `productdir` (`id_proddir`, `lang`, `name`, `intro`, `dele`, `dirurl`, `fatherid`, `level`, `ordernum`) VALUES
(1, 1, '新品分类', '', 1, '', 0, 1, 1),
(2, 1, '行业产品', '', 1, '', 1, 2, 2),
(3, 1, '新品上市', '', 1, '', 1, 2, 3);

-- --------------------------------------------------------

--
-- 表的结构 `productdir3`
--

CREATE TABLE `productdir3` (
  `id_proddir` int(11) NOT NULL,
  `lang` int(1) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '1',
  `intro` text NOT NULL,
  `dele` int(1) NOT NULL DEFAULT '1',
  `dirurl` varchar(50) NOT NULL,
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `dirtree` text NOT NULL,
  `ordernum` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `productdir3`
--

INSERT INTO `productdir3` (`id_proddir`, `lang`, `name`, `intro`, `dele`, `dirurl`, `fatherid`, `level`, `dirtree`, `ordernum`) VALUES
(17, 0, '澳洲移民', '', 1, '', 0, 1, '17', 17),
(18, 0, '雇主担保', '', 1, '/case/case-5.html', 17, 2, '17,18', 18),
(19, 0, '投资移民', '', 1, '', 17, 2, '17,19', 19),
(67, 0, '澳大利亚187雇主担保移民', '', 1, '/case/case-34.html', 18, 3, '17,18,67', 67),
(21, 0, '澳大利亚132类商业天才移民', '', 1, '/case/case-2.html', 19, 3, '17,19,21', 21),
(22, 0, '美国移民', '', 1, '', 0, 1, '22', 22),
(23, 0, '纽约市无线网基础设施建设项目（二期）', '', 1, '/case/case-7.html', 22, 2, '22,23', 23),
(24, 0, '蓝带基金七期-珍珠酒店投资项目', '', 1, '/case/case-8.html', 22, 2, '22,24', 24),
(25, 0, '加拿大移民', '', 1, '', 0, 1, '25', 25),
(26, 0, '雇主担保移民', '', 1, '', 25, 2, '25,26', 26),
(27, 0, '投资移民', '', 1, '', 25, 2, '25,27', 27),
(28, 0, 'BC省雇主担保', '', 1, '/case/case-9.html', 26, 3, '25,26,28', 28),
(29, 0, '萨省雇担保', '', 1, '/case/case-10.html', 26, 3, '25,26,29', 29),
(30, 0, 'BC省投资', '', 1, '/case/case-11.html', 27, 3, '25,27,30', 30),
(31, 0, '萨省投资（奥特莱斯商铺）', '', 1, '/case/case-12.html', 27, 3, '25,27,31', 31),
(32, 0, '欧洲移民', '', 1, '', 0, 1, '32', 32),
(33, 0, '德国移民', '', 1, '', 32, 2, '32,33', 33),
(34, 0, '马耳他移民', '', 1, '', 32, 2, '32,34', 34),
(35, 0, '欧盟蓝卡', '', 1, '/case/case-13.html', 33, 3, '32,33,35', 35),
(36, 0, '企业高管移民', '', 1, '/case/case-14.html', 33, 3, '32,33,36', 36),
(37, 0, '留学签证', '', 1, '', 0, 1, '37', 37),
(110, 0, '加拿大', '', 1, '/case/case-24.html', 108, 3, '37,108,110', 110),
(112, 0, '新加坡', '', 1, '/case/case-38.html', 111, 3, '37,111,112', 112),
(115, 0, '新西兰', '', 1, '/case/case-31.html', 113, 3, '37,113,115', 115),
(109, 0, '美国', '', 1, '/case/case-29.html', 108, 3, '37,108,109', 109),
(50, 0, '其他签证', '', 1, '', 0, 1, '50', 50),
(51, 0, '澳洲打工渡假', '', 1, '/case/case-15.html', 50, 2, '50,51', 51),
(52, 0, '澳洲亲属团聚', '', 1, '/case/case-16.html', 50, 2, '50,52', 52),
(53, 0, '加拿大亲属团聚    ', '', 1, '/case/case-17.html', 50, 2, '50,53', 53),
(54, 0, '海外房产', '', 1, '', 0, 1, '54', 54),
(55, 0, '澳洲房产', '', 1, '', 54, 2, '54,55', 55),
(56, 0, '加拿大房产', '', 1, '', 54, 2, '54,56', 56),
(57, 0, '美国房产', '', 1, '', 54, 2, '54,57', 57),
(58, 0, '马来西亚房产', '', 1, '', 54, 2, '54,58', 58),
(72, 0, '海外家族信托', '', 1, '', 64, 2, '64,72', 72),
(71, 0, '海外上市', '', 1, '', 63, 2, '63,71', 71),
(63, 0, '海外上市', '', 1, '', 0, 1, '63', 63),
(64, 0, ' 家族信托', '', 1, '', 0, 1, '64', 64),
(66, 0, '澳大利亚186雇主担保移民', '', 1, '/case/case-5.html', 18, 3, '17,18,66', 66),
(69, 0, '澳大利亚188A类创业投资移民', '', 1, '/case/case-3.html', 19, 3, '17,19,69', 69),
(70, 0, '澳大利亚188C类重大投资移民', '', 1, '/case/case-6.html', 19, 3, '17,19,70', 70),
(73, 0, '马耳他移民', '', 1, '/case/case-33.html', 34, 3, '32,34,73', 73),
(74, 0, '商务旅游签证', '', 1, '', 0, 1, '74', 74),
(75, 0, '欧洲', '', 1, '', 74, 2, '74,75', 75),
(76, 0, '美洲', '', 1, '', 74, 2, '74,76', 76),
(77, 0, '亚洲', '', 1, '', 74, 2, '74,77', 77),
(78, 0, '大洋洲', '', 1, '', 74, 2, '74,78', 78),
(79, 0, '非洲', '', 1, '', 74, 2, '74,79', 79),
(80, 0, '英国', '', 1, '', 75, 3, '74,75,80', 80),
(81, 0, '德国', '', 1, '', 75, 3, '74,75,81', 81),
(82, 0, '法国', '', 1, '', 75, 3, '74,75,82', 82),
(83, 0, '意大利', '', 1, '', 75, 3, '74,75,83', 83),
(84, 0, '瑞士', '', 1, '', 75, 3, '74,75,84', 84),
(85, 0, '西班牙', '', 1, '', 75, 3, '74,75,85', 85),
(105, 0, '加拿大', '', 1, '/case/case-19.html', 76, 3, '74,76,105', 105),
(89, 0, '美国', '', 1, '/case/case-29.html', 76, 3, '74,76,89', 89),
(91, 0, '日本', '', 1, '/case/case-22.html', 77, 3, '74,77,91', 91),
(92, 0, '韩国', '', 1, '', 77, 3, '74,77,92', 92),
(93, 0, '澳大利亚', '', 1, '/case/case-18.html', 78, 3, '74,78,93', 93),
(94, 0, '新西兰', '', 1, '/case/case-21.html', 78, 3, '74,78,94', 94),
(95, 0, '南非', '', 1, '', 79, 3, '74,79,95', 95),
(97, 0, '留学+工作+移民', '', 1, '/case/case-24.html', 96, 3, '25,96,97', 97),
(96, 0, '留学移民', '', 1, '', 25, 2, '25,96', 96),
(101, 0, '澳大利亚技术移民（190）', '', 1, '/case/case-35.html', 100, 3, '17,100,101', 101),
(100, 0, '技术移民', '', 1, '', 17, 2, '17,100', 100),
(107, 0, '英国', '', 1, '/case/case-30.html', 106, 3, '37,106,107', 107),
(106, 0, '欧洲', '', 1, '', 37, 2, '37,106', 106),
(108, 0, '美洲', '', 1, '', 37, 2, '37,108', 108),
(111, 0, '亚洲', '', 1, '', 37, 2, '37,111', 111),
(113, 0, '大洋洲', '', 1, '', 37, 2, '37,113', 113),
(114, 0, '澳洲', '', 1, '/news/news-84.html', 113, 3, '37,113,114', 114);

-- --------------------------------------------------------

--
-- 表的结构 `productinfo`
--

CREATE TABLE `productinfo` (
  `id_prodinfo` int(11) NOT NULL,
  `id_proddir` int(11) NOT NULL,
  `dirtree` text NOT NULL,
  `id_hr` int(11) NOT NULL,
  `lang` int(1) NOT NULL DEFAULT '1',
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `content` longtext NOT NULL,
  `tag` text NOT NULL,
  `dele` int(1) NOT NULL DEFAULT '1',
  `isnew` int(1) NOT NULL DEFAULT '1',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  `ordernum` int(11) NOT NULL,
  `pagetitle` text NOT NULL,
  `pagekey` text NOT NULL,
  `pagetag` text NOT NULL,
  `pagedesc` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `productinfo`
--

INSERT INTO `productinfo` (`id_prodinfo`, `id_proddir`, `dirtree`, `id_hr`, `lang`, `title`, `intro`, `content`, `tag`, `dele`, `isnew`, `indate`, `modate`, `deldate`, `browsecount`, `ordernum`, `pagetitle`, `pagekey`, `pagetag`, `pagedesc`) VALUES
(3, 69, '17,19,69', 0, 1, '澳大利亚188A类创业投资移民', '', '<p>\r\n	<span style=\"font-size: 14px\"><span style=\"text-align: left; line-height: normal; widows: 1; text-transform: none; background-color: rgb(255,255,255); font-variant: normal; font-style: normal; text-indent: 0px; letter-spacing: normal; display: inline !important; font-family: Consolas, ´Lucida Console´, monospace; white-space: pre-wrap; float: none; color: rgb(34,34,34); font-weight: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px\"><img alt=\"\" src=\"/upload/other/images/20170413_083025.png\" style=\"width: 391px; height: 245px\" />&nbsp; <img alt=\"\" src=\"/upload/other/images/20170502_095759.jpg\" style=\"width: 405px; height: 250px\" /><br />\r\n	<img alt=\"\" src=\"/upload/other/images/20170502_093541.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n	&nbsp;<span style=\"text-align: left; line-height: normal; widows: 1; text-transform: none; background-color: rgb(255,255,255); font-variant: normal; font-style: normal; text-indent: 0px; letter-spacing: normal; display: inline !important; font-family: Consolas, ´Lucida Console´, monospace; white-space: pre-wrap; float: none; color: rgb(34,34,34); font-weight: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px\">&nbsp; 188商业创新类签证属于澳洲商业技术移民，通常也被成为澳洲投资移民、澳洲商业移民、（类似原澳洲163、164移民签证等）。此签证申请对审计要求相对较轻、注重公司的营业额，对投资金额要求不高，投资方式可灵活变通。</span><br />\r\n	<strong><img alt=\"\" src=\"/upload/other/images/20170502_093611.jpg\" style=\"width: 100px; height: 42px\" /></strong></span><br />\r\n	<span style=\"text-align: left; line-height: normal; widows: 1; text-transform: none; background-color: rgb(255,255,255); font-variant: normal; font-style: normal; text-indent: 0px; letter-spacing: normal; display: inline !important; font-family: Consolas, ´Lucida Console´, monospace; white-space: pre-wrap; float: none; color: rgb(34,34,34); font-weight: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&amp;&nbsp; 取得&ldquo;意向申请&rdquo;邀请；<br />\r\n	&amp;&nbsp; 55岁以下或州政府豁免年龄要求，有至少2年以上的管理经验；<br />\r\n	&amp;&nbsp; 评分大道65分或以上；<br />\r\n	&amp;&nbsp; 80万澳元以上资产；<br />\r\n	&amp;&nbsp; 过去4年，有2年：<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;公司销售额超过50万澳元（最多2家公司相加）；<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;最少拥有30%股份。<br />\r\n	<strong><img alt=\"\" src=\"/upload/other/images/20170502_093705.jpg\" style=\"width: 100px; height: 42px\" /></strong><br />\r\n	&amp;&nbsp; 无学历和英语要求<br />\r\n	&amp;&nbsp; 办理周期较短，最快4-6个月可以获得临时居留签证<br />\r\n	&amp;&nbsp; 确定性好，成功率位100%<br />\r\n	&amp;&nbsp; 无双重征税的后顾之忧<br />\r\n	<img alt=\"\" src=\"/upload/other/images/20170502_101059.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n	&amp;&nbsp; 客户申请免费评估<br />\r\n	&amp;&nbsp; 签订办理协议<br />\r\n	&amp;&nbsp; 递交意向申请<br />\r\n	&amp;&nbsp; 澳洲/香港注册会计师审计&amp;递交移民签证申请<br />\r\n	&amp;&nbsp; 面试（由资深专家为客户进行专业的面试辅导）&nbsp;<br />\r\n	&nbsp;&nbsp; 免面试（进入快速通道）<br />\r\n	&amp;&nbsp; 预签（体检、缴纳英语培训费）<br />\r\n	&amp;&nbsp; 正式188A签证<br />\r\n	&amp;&nbsp; 登陆澳洲<br />\r\n	&amp;&nbsp; 为客户提供必要的后护服务</span><br />\r\n	<br />\r\n	&nbsp;</span></p>\r\n', '', 1, 1, '2017-04-12 10:16:56', '2017-05-12 11:25:52', '0000-00-00 00:00:00', 0, 3, '', '', '', ''),
(2, 21, '17,19,21', 0, 1, ' 澳大利亚132类商业天才移民', '', '<span style=\"font-size: 14px\"><img alt=\"\" src=\"/upload/other/images/20170502_100342.jpg\" style=\"width: 391px; height: 243px\" />&nbsp; <img alt=\"\" src=\"/upload/other/images/20170502_100310.jpg\" style=\"width: 405px; height: 250px\" /><br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_093958.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 澳洲132商业移民项目又称&lsquo;商业天才移民项目&rsquo;，132类别的申请人是一步到位拿&lsquo;绿卡&rsquo;的，也是目前在所有澳洲商业移民的项目中，唯一一个一步到位拿&lsquo;绿卡&rsquo;的项目，比较适合大中型企业主。所谓&lsquo;绿卡&rsquo;的持有者，申请人及其家人与当地居民一样免费享受，诸如：免费医疗保障、子女抚养津贴、子女高等教育津贴、配偶津贴、疾病和伤残津贴、电话和房租津贴、交通津贴等社会福利。<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_094012.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n&amp;&nbsp; 成功的经商（管理）背景，参与日常管理<br />\r\n&amp;&nbsp; 过去4年终有2年，在公司中拥有30%的股份（或如上市公司10%）<br />\r\n&amp;&nbsp; 对应的2年，此股份价值超过40万澳币；<br />\r\n&amp;&nbsp; 对应的2年，公司营业额超过300万澳币；<br />\r\n&amp;&nbsp; 全家总资产在150万澳币以上；<br />\r\n&amp;&nbsp; 有州政府担保（一般最少要求投资200万澳币到澳洲项目上）。<br />\r\n<strong><img alt=\"\" src=\"/upload/other/images/20170502_094056.jpg\" style=\"width: 100px; height: 42px\" /></strong><br />\r\n&amp;&nbsp; 申请人资格免费评估，评估后签约；<br />\r\n&amp;&nbsp; 递交意向申请；<br />\r\n&amp;&nbsp; 审计；<br />\r\n&amp;&nbsp; 递交签证申请；<br />\r\n&amp;&nbsp; 获批前面试（面试前需单独培训）/免面试；<br />\r\n&amp;&nbsp; 预签；<br />\r\n&amp;&nbsp; 正式签证；<br />\r\n&amp;&nbsp; 第一次登陆。<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_094157.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n&amp;&nbsp; 永久居留身份有保障<br />\r\n&amp;&nbsp; 避免移民监、来去自由有保障<br />\r\n&amp;&nbsp; 材料制作更符合中国国情，申请成功有保障<br />\r\n&amp;&nbsp; 无雅思学历限制，不参加打分系统测试</span><br />\r\n', '投资移民', 1, 1, '2017-04-11 17:10:28', '2017-05-02 17:29:43', '0000-00-00 00:00:00', 0, 2, '', '', '', ''),
(4, 67, '17,18,67', 0, 1, '澳大利亚457转186/187雇主担保移民', '', '<span style=\"font-size: 12px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 457签证是澳洲政府为澳洲企业从海外引进各类专业人士或者技术工人而设立的一种工作签证。可办理457签证的工种有400多个，其中各类经理，专业人员，技工等。签证有效期为3个月至4年不等，雇员在澳洲工作满两年后可以申请雇主担保移民。<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170412_071310.jpg\" style=\"width: 600px; height: 400px\" /><br />\r\n<strong>申请要求：<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp; &nbsp;</strong>1.&nbsp; 有澳大利亚雇主担保提名技术职业；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.&nbsp; 满足提名职业要求的技能和经验，如果申请的是技工类职业，还需通过职业评估（TRA）；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.&nbsp; 雅思不低于平均4个5（可豁免）；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.&nbsp; 如果提名职业要求，需持有相关的登记许可或资格证书；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5.&nbsp; 所有申请人都需要购买健康保险；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6.&nbsp; 海外留学生必须完成学业；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7.&nbsp; 建议年龄45周岁以下<br />\r\n<br />\r\n<strong>转186/187签证要求</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.&nbsp; 年龄50岁以下；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.&nbsp; 为同一雇主在相同职位上工作满2年<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.&nbsp; 雅思每门5分（可豁免）<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.&nbsp; 免职业评估<br />\r\n<br />\r\n<strong>办理流程及时间</strong><br />\r\n<br />\r\n<span style=\"font-family: verdana,geneva,sans-serif\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. 457评估；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. 457转187签证<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. 收集客户资料，在澳洲找雇佣公司，收到雇主457Offer（1-3个月）<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4. 获得457档案号，电调（1-2个月）<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. 体检通知，获得457签证（2-4个月）<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. 登陆<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. 在澳洲工作两年（2年）<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8.&nbsp;转186PR签证（1-2个月）<br />\r\n<br />\r\n<strong>项目优势：</strong><br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.&nbsp;快速拿到工作签证（3个月左右）<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. 可安排工作，最长4年工作合同<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. 雅思4个5分，或高工资和面（2012年7月以后为年薪$96,400）&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; <strong>澳大利亚雇主给予申请人的工资不能低于政府公布的最低年薪，2012年公布的最低年薪是$51,400澳元。申请人一经雇主雇佣，即可享受带薪病假、一年4星期年假等福利。中国申请人的配偶可以在澳洲全职工作，18岁以下子女可免费接收公立中、小学教育。</strong></span></span><br />\r\n', '', 1, 1, '2017-04-12 10:43:02', '2017-04-27 17:13:14', '0000-00-00 00:00:00', 0, 4, '', '', '', ''),
(5, 66, '17,18,66', 0, 1, '澳大利亚186雇主担保移民', '', '<span style=\"font-size: 14px\"><strong><img alt=\"\" src=\"/upload/other/images/20170412_055947.jpg\" style=\"width: 390px; height: 235px\" />&nbsp; <img alt=\"\" src=\"/upload/other/images/20170502_075958.jpg\" style=\"width: 405px; height: 250px\" /><br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_080014.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>186签证既可以在境内申请也可以在境外申请，它是原121和856签证合并之后的签证。属于澳洲雇主担保技术移民项目，通常也被称作雇主担保移民。澳洲政府允许澳洲境内的企业或机构从海外聘请专业人才，并担保聘用的人到澳洲工作、生活。并一次性获得永久居留权利，雇主所在地为澳大利也一线城市。<br />\r\n<strong><span style=\"color: #000000\"><span style=\"font-family: 宋体\"><img alt=\"\" src=\"/upload/other/images/20170502_080032.jpg\" style=\"width: 100px; height: 42px\" /></span></span></strong>&nbsp;&nbsp;<br />\r\n&amp;&nbsp; 年龄50岁以下<br />\r\n&amp;&nbsp; 学历大专以上<br />\r\n&amp;&nbsp; 雅思每门6分（可豁免）<br />\r\n&amp; &nbsp;申请人需要通过职业评估，并且从事相关职业1-3年以上<br />\r\n&amp;&nbsp; 申请地区<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 根据雇主所在地的不同，此签证属于6个主要一线城市类别：雇主所在地为悉尼、墨尔本等大城市。<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_080140.jpg\" style=\"width: 100px; height: 42px\" />&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n&amp;&nbsp; 评估并签约；<br />\r\n&amp;&nbsp; 收集客户资料，在澳洲找雇佣公司，收到雇主457Offer<br />\r\n&amp;&nbsp; 等待雇主提名<br />\r\n&amp;&nbsp; 获得PR签证；<br />\r\n&amp;&nbsp; 登陆<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_080155.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n&amp;&nbsp; 一步到位全家拿到绿卡，并可居住在澳洲的任何城市<br />\r\n&amp;&nbsp; &nbsp;享有澳洲社会所有的福利：子女上学免费、免费医疗、置业优惠等<br />\r\n&amp;&nbsp; 可自由来往中国和澳洲、新西兰、无需签证、享有新西兰绿卡待遇<br />\r\n&amp; &nbsp;3-6个月拿到绿卡、免面试、免审计</span><br />\r\n', '', 1, 1, '2017-04-12 11:08:27', '2017-05-04 16:43:58', '0000-00-00 00:00:00', 0, 5, '', '', '', ''),
(34, 66, '17,18,66', 0, 1, '澳大利亚187雇主担保移民', '', '<span style=\"font-size: 14px\"><strong><img alt=\"\" src=\"/upload/other/images/20170412_055947.jpg\" style=\"width: 390px; height: 235px\" />&nbsp; <img alt=\"\" src=\"/upload/other/images/20170502_075958.jpg\" style=\"width: 405px; height: 250px\" /><br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_080014.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong>&nbsp;&nbsp;187签证（边远地区雇主担保移民）既可以在境内申请也可以在境外申请，它是119和857签证合并之后的签证。属于澳大利亚偏远地区雇主担保移民项目，雇主所在地为澳大利亚二线城市。<br />\r\n<strong><span style=\"color: #000000\"><span style=\"font-family: 宋体\"><img alt=\"\" src=\"/upload/other/images/20170502_080032.jpg\" style=\"width: 100px; height: 42px\" /></span></span></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n&amp;&nbsp; 年龄50岁以下<br />\r\n&amp;&nbsp; 学历大专以上<br />\r\n&amp;&nbsp; 雅思每门6分（可豁免）<br />\r\n&amp; &nbsp;申请人需要通过职业评估，并且从事相关职业1-3年以上<br />\r\n&amp;&nbsp; 申请地区<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 根据雇主所在地的不同，此签证属于偏远地区类别：雇主所在地为二线城市。此类别对申请人的要求相对低些。<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_080140.jpg\" style=\"width: 100px; height: 42px\" />&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n&amp;&nbsp; 评估并签约；<br />\r\n&amp;&nbsp; 收集客户资料，在澳洲找雇佣公司，收到雇主457Offer<br />\r\n&amp;&nbsp; 等待雇主提名<br />\r\n&amp;&nbsp; 获得PR签证；<br />\r\n&amp;&nbsp; 登陆<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_080155.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n&amp;&nbsp; 一步到位全家拿到绿卡，并可居住在澳洲的任何城市<br />\r\n&amp;&nbsp; &nbsp;享有澳洲社会所有的福利：子女上学免费、免费医疗、置业优惠等<br />\r\n&amp;&nbsp; 可自由来往中国和澳洲、新西兰、无需签证、享有新西兰绿卡待遇<br />\r\n&amp; &nbsp;3-6个月拿到绿卡、免面试、免审计</span><br />\r\n', '', 1, 1, '2017-05-02 14:03:55', '2017-05-12 11:20:43', '0000-00-00 00:00:00', 0, 36, '', '', '', ''),
(6, 70, '17,19,70', 0, 1, '澳大利亚188C类重大投资移民', '', '<span style=\"font-size: 14px\"><img alt=\"\" height=\"238\" src=\"/upload/other/images/20170502_103852.jpg\" style=\"width: 403px; height: 236px\" /><img alt=\"\" src=\"/upload/other/images/20170502_103922.jpg\" style=\"width: 405px; height: 250px\" /><br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_103152.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 澳洲与2012年11月24日正式启动重大投资者快速移民通道&mdash;&mdash;500万重大投资移民。该重大投资移民。该重大投资移民项目重点在于：投资移民的申请人只要在澳洲投资500万澳币，即可获得&ldquo;重要投资者签证&rdquo;的快速移民通道的资格，最快两个月可获得临时绿卡。在满足了四年临时居住的要求后将获得永久绿卡。<br />\r\n<strong><img alt=\"\" src=\"/upload/other/images/20170502_103204.jpg\" style=\"width: 100px; height: 42px\" /></strong>&nbsp;<br />\r\n&amp;&nbsp; 没有年龄限制，没有英语要求，不需打分；<br />\r\n&amp;&nbsp; 资金来源证明宽松；<br />\r\n&amp;&nbsp; 投资500万澳元到规定的投资产品4年；<br />\r\n&amp;&nbsp; 年中，主申请人累计在澳洲住满160天；<br />\r\n&amp;&nbsp; 要有州政府担保，取得EOT邀请；<br />\r\n<strong><img alt=\"\" src=\"/upload/other/images/20170502_103259.jpg\" style=\"width: 100px; height: 42px\" /></strong><br />\r\n&amp;&nbsp; 递交EOT申请；<br />\r\n&amp;&nbsp; EOT申请批复；<br />\r\n&amp; &nbsp;递交全套材料，原则性批准信；<br />\r\n&amp;&nbsp; 正式批准信；<br />\r\n&amp;&nbsp; 188签证。<br />\r\n<br />\r\n<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 188投资四年后，两个选择：a.直接转888永居身份；b.续签、最多两年、转888永居身份。</strong><br />\r\n&nbsp;<br />\r\n<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 500万188签证有效期4年，必须满足160天居住要求。</strong><br />\r\n<strong><img alt=\"\" src=\"/upload/other/images/20170502_103419.jpg\" style=\"width: 100px; height: 42px\" /></strong><br />\r\n&amp;&nbsp; 无语言、无年龄、无打分要求<br />\r\n&amp;&nbsp; 4年内仅需累计住满160天即可或永久居留权<br />\r\n&amp;&nbsp; 最快只要3个月即或批准<br />\r\n&amp;&nbsp; 可组合投资，降低了投资风险</span><br />\r\n', '', 1, 1, '2017-04-12 13:43:02', '2017-05-02 17:29:09', '0000-00-00 00:00:00', 0, 6, '', '', '', ''),
(7, 23, '22,23', 0, 1, '纽约市无线网基础设施建设项目 (二期)', '纽约市无线网基础建设项目（二期）', '<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170412_085551.jpg\" style=\"width: 776px; height: 600px\" /><br />\r\n<img alt=\"\" src=\"/upload/other/images/20170412_085658.jpg\" style=\"width: 800px; height: 584px\" /><br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170412_085747.jpg\" style=\"width: 798px; height: 600px\" /><br />\r\n<img alt=\"\" src=\"/upload/other/images/20170412_085826.jpg\" style=\"width: 800px; height: 573px\" /><br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170412_085857.jpg\" style=\"width: 800px; height: 582px\" /><br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170412_085915.jpg\" style=\"width: 800px; height: 512px\" /><br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170412_085932.jpg\" style=\"width: 800px; height: 526px\" /><br />\r\n<img alt=\"\" src=\"/upload/other/images/20170412_090218.jpg\" style=\"width: 800px; height: 595px\" /><br />\r\n<img alt=\"\" src=\"/upload/other/images/20170412_090235.jpg\" style=\"width: 800px; height: 591px\" /><br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170412_090301.jpg\" style=\"width: 794px; height: 600px\" /><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n<br />\r\n<br />\r\n<br />\r\n', '热门移民项目', 1, 1, '2017-04-12 13:51:29', '2017-04-19 14:34:41', '0000-00-00 00:00:00', 0, 7, '', '', '', ''),
(8, 24, '22,24', 0, 1, '蓝带基金七期——珍珠酒店投资项目', '', '<h5>\r\n	<img alt=\"\" src=\"/upload/other/images/20170412_082319.jpg\" style=\"width: 787px; height: 1200px\" /></h5>\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170412_082333.jpg\" style=\"width: 892px; height: 1200px\" /><br />\r\n<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170412_083024.jpg\" style=\"width: 897px; height: 1200px\" /><br />\r\n<img alt=\"\" src=\"/upload/other/images/20170412_083045.jpg\" style=\"width: 863px; height: 1200px\" /><br />\r\n<img alt=\"\" src=\"/upload/other/images/20170412_083105.jpg\" style=\"width: 948px; height: 1200px\" /><br />\r\n<img alt=\"\" src=\"/upload/other/images/20170412_083120.jpg\" style=\"width: 828px; height: 1200px\" /><br />\r\n', '', 1, 1, '2017-04-12 13:57:59', '2017-04-27 18:24:27', '0000-00-00 00:00:00', 0, 8, '', '', '', ''),
(9, 28, '25,26,28', 0, 1, '加拿大BC省雇主担保移民', '加拿大BC省提名技术移民，叫做BC省战略性行业类别（Provincial Nominee Program: Strategic Occupations）省提名项目，是卑诗省（BC省）自己的提名技术移民项目. ', '<span style=\"font-size: 14px\"><img alt=\"\" src=\"/upload/other/images/20170412_091940.jpg\" style=\"width: 390px; height: 259px\" />&nbsp;&nbsp; <img alt=\"\" src=\"/upload/other/images/20170502_074519.jpg\" style=\"width: 405px; height: 250px\" /><br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_074536.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; 加拿大BC省提名技术移民，叫做BC省战略性行业类别（Provincial Nominee Program: Strategic Occupations）省提名项目，是卑诗省（BC省）自己的提名技术移民项目.<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; BC省雇主担保项目旨在帮助BC省当地雇主招聘合格的外国劳工，从而满足当前及未来劳务的空缺需求。该项目的申请人必须从BC省雇主处获得一份雇佣函。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; 继而雇主和申请人需要联名向BC省提名项目递交一份申请。对雇用国外工人的需求评估是根据当前劳动市场情况和对BC省是否产生经济效益决定的。<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_074617.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n<br />\r\n&amp;&nbsp; 申请人相当于大专及以上学历或者有专业技术的证书<br />\r\n&amp;&nbsp; 申请人具有有雇主匹配的工作经验<br />\r\n&amp;&nbsp; 申请人必须有至少三年直接相关工作经验&nbsp;&nbsp;<br />\r\n&amp;&nbsp; 申请人需要有足够的资金支持<br />\r\n&amp;&nbsp; 雅思平均6分以上<br />\r\n&amp;&nbsp; 年龄在25-50之间<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_074709.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n&amp;&nbsp; 申请人评估是否符合项目条件，关注点是工作经验与学历专业<br />\r\n&amp;&nbsp; 找到合适的企业雇主担保申请人<br />\r\n&amp;&nbsp; 雇主与申请人签定雇佣合同，雇主以担保形式帮助申请人申请BC省提名<br />\r\n&amp;&nbsp; 经由此获得BC省提名的移民申请人可凭借省提名担保向联邦移民局申请加拿大永居身份<br />\r\n&amp;&nbsp; 通过加拿大联邦移民局体检及安检，通过联邦移民局审查，获得加拿大永久居留权<br />\r\n<br />\r\n<strong><img alt=\"\" src=\"/upload/other/images/20170502_074741.jpg\" style=\"width: 100px; height: 42px\" /></strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n&amp;&nbsp; 办理周期短<br />\r\n&amp;&nbsp; 申请人无需解释资产来源<br />\r\n&amp;&nbsp; 一人移民，全家获绿卡，所获绿卡与别的移民项目没任何区别<br />\r\n&amp;&nbsp; 对申请人要求条件低，需提供材料简单<br />\r\n<br />\r\n<br />\r\n&nbsp;</span><br />\r\n<br />\r\n<br />\r\n', '热门移民项目', 1, 1, '2017-04-12 15:08:43', '2017-05-02 17:28:53', '0000-00-00 00:00:00', 0, 9, '', '', '', ''),
(10, 29, '25,26,29', 0, 1, '萨省雇主担保移民', '', '<span style=\"font-size: 14px\"><img alt=\"\" src=\"/upload/other/images/20170502_110159.jpg\" style=\"width: 390px; height: 224px\" />&nbsp; <img alt=\"\" src=\"/upload/other/images/20170502_105846.jpg\" style=\"width: 405px; height: 250px\" /><br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_105230.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 省提名技术移民是相对于联邦技术移民而言的，是指加拿大的一些省份根据自己的经济发展情况及对人才需要而与联邦移民局协商出来的移民途径，简称PNP，即provincial nominee program.不同省份对申请人的要求不一样，但是大部分是对申请者的年龄、学历、职业、工作经验、语言能力、适应能力这些情况来判断，并且有一定的配额限制。<br />\r\n<strong><img alt=\"\" src=\"/upload/other/images/20170502_105247.jpg\" style=\"width: 100px; height: 42px\" /></strong><br />\r\n&amp;&nbsp; 语言能力：CLB4级以上，即雅思G类4分以上<br />\r\n&amp;&nbsp; 申请人没有向加拿大政府提出过难民申请；<br />\r\n&amp; &nbsp;申请人具备一年大专以上的学历；<br />\r\n&amp; &nbsp;过去10年内有1年符合60个需求职位工作经验；<br />\r\n&amp;&nbsp; 申请人资产达到4万加元以上。<br />\r\n&amp;&nbsp; 申请人年龄20-50岁<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_105333.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n&amp;&nbsp; 评估申请人移民资格可行性并签约<br />\r\n&amp;&nbsp;&nbsp;收集申请人准备全家移民的基本文件。<br />\r\n&amp;&nbsp; 寻找和联系雇主。<br />\r\n&amp; &nbsp;准备和办理政府需要的手续。<br />\r\n&amp;&nbsp; 得到萨省省提名&nbsp;<br />\r\n&amp;&nbsp; 联邦申请工签<br />\r\n&amp;&nbsp; 背景调查、体检<br />\r\n&amp; &nbsp;获得工签<br />\r\n&amp; &nbsp;申请枫叶卡<br />\r\n<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>获得省移民局审批的申请人，如果本人愿意、雇主也需要，可以办理临时工作签证先行进入加拿大工作。办理临时工作签证的审批手续比较简单，需要的时间比较短，申请人可以单独也可以与家人同时办理这个短期签证。</strong></span><br />\r\n<br />\r\n', '', 1, 1, '2017-04-12 15:22:33', '2017-05-02 17:28:40', '0000-00-00 00:00:00', 0, 10, '', '', '', ''),
(11, 30, '25,27,30', 0, 1, '加拿大投资移民项目（BC）', '卑诗省位于加拿大西岸，濒临太平洋海岸，面积近95万平方公里，约有人口410万，其中华人18万。海岸线长达8， 850公里，沿岸风景优美，海产丰富。', '<span style=\"font-size: 14px\"><img alt=\"\" src=\"/upload/other/images/20170412_094647.jpg\" style=\"width: 391px; height: 245px\" />&nbsp; <img alt=\"\" src=\"/upload/other/images/20170602_122158.jpg\" style=\"width: 405px; height: 250px\" /><br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_075334.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 大不列颠-哥伦比亚省(BritishColumbia)，简称BC省，一般叫卑诗省。卑诗省位于加拿大西岸，濒临太平洋海岸，面积近95万平方公里，约有人口410万，其中华人18万。海岸线长达8， 850公里，沿岸风景优美，海产丰富。卑斯省山脉连绵、河流纵横、森林茂密，自然资源极其丰富，主要产业为林木业、旅游业、制造业、渔业及农业。<br />\r\n省内山脉连绵、河流纵横、森林茂密；东部耸立巍峨的洛矶山脉，与在太平洋沿岸的高山互相呼应，气象万千。省内大部份面积均为森林地带，地势高低不平，保持原野风貌。林木业为省内的重要工业，但已经不再是省内最大工业。一九九六年，根据国民生产总值计算，卑诗省的首要工业界别是金融财务业、保险业及地产业；继而是批发及零售业，商业、个人及其他服务行业，与及运输、贮存及通讯业等经济类别，旅游、采矿、捕鱼及农业也是省内重要的工业。 </span>\r\n<div>\r\n	<span style=\"font-size: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BC省是最受海外移民青睐的省份，截止到2013年，BC省的海外移民人数是1，254，016，占本身总人口的28.5%。</span></div>\r\n<span style=\"font-size: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BC省的主要城市有：省府维多利亚（Victoria）、温哥华（Vancouver）、阿伯斯福特市(Abbotsford) 和基隆拿市 (Kelowna) 。<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_075349.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n<br />\r\n&amp;&nbsp; 夫妻双方名下净资产60万加币（350万人民币）以上（包括房产、股票、公司股份、存款等）资金来源合法；<br />\r\n&amp;&nbsp; 10年内4年以上企业管理经验，股东和高管均可；<br />\r\n&amp;&nbsp; 最少在BC省创建或投资一个企业，投资额20万加币以上；&nbsp;<br />\r\n&amp;&nbsp; 新设立或购买、参股BC省当地公司，至少拥有公司股份不低于1/3；否则需要投资100万加元&nbsp;<br />\r\n&amp;&nbsp; 在线申请通过甄选<br />\r\n&amp;&nbsp; 为加拿大公民或永久居民创造至少1个以上全职就业机会；&nbsp;<br />\r\n&amp;&nbsp; 申请人应参积极与公司的运营和管理。&nbsp;<br />\r\n&amp;&nbsp; 投资40万加元的申请人可携带一位关键职员，但需额外创造3个全职就业；<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp; 若申请人满足过去5年拥有3年或以上的股东兼高管经验（100%股份，配偶股份可计算在内），可免学历要求<br />\r\n<br />\r\n<br />\r\n<strong><img alt=\"\" src=\"/upload/other/images/20170502_075455.jpg\" style=\"width: 100px; height: 42px\" /></strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp; <strong>第一步：甄选阶段</strong><br />\r\n&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1、评估<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、到BC省进行商务考察<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3、在线提交申请<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4、申请被选中，收到邀请函<br />\r\n&nbsp;<br />\r\n&nbsp;&nbsp;<strong>第二步：省提名申请阶段</strong><br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1、收到邀请信的4个月内递交PNP全部申请文件；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2、参加省移民局面试；面试通过签署创业履行协议<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3、申请被批准，收到批准信，向CIC申请工作签证<br />\r\n&nbsp;<br />\r\n&nbsp;&nbsp;<strong>第三步：省提名审理阶段</strong>&nbsp;<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.&nbsp; 收到BC省批准新的12个月内登录加拿大<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.&nbsp; 登录之日起18-20个月，必须递交创业报告<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.&nbsp; 持工作签证期间，需在BC居住超过75%的时间<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.&nbsp; 省提名申请通过<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5.&nbsp; 收到提名纸注：<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 如申请人曾经或正在申请过其他省或曾经放弃过申请，对BC省提名没有影响，BC省允许申请人同时申请两个省的移民类别，但一旦获得BC省的提名，就必须撤销其他省提名的申请<br />\r\n&nbsp;<br />\r\n<strong>&nbsp; 第四步：加拿大永久居民申请阶段</strong><br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.&nbsp; 向CIC递交永居申请<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.&nbsp; 完成补件及体检<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.&nbsp; 申请获批、办理加拿大绿卡（枫叶卡）<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 备注：本流程为基本操作程序，根据实际情况，某些程序会有所不同。EIR申请的有效期为6个月，过期没被选中的EIR申请将失效<br />\r\n<br />\r\n<br />\r\n<strong><img alt=\"\" src=\"/upload/other/images/20170502_075512.jpg\" style=\"width: 100px; height: 42px\" /></strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n&amp;&nbsp; 引入在线申请系统，简化申请流程，使高质量客户快速获得邀请<br />\r\n&amp;&nbsp; 个人资产引入了第三方权威机构参与审核资料，审核周期大大缩短<br />\r\n&amp;&nbsp; 在线申请每个月最多接收200个名额，先到先得<br />\r\n&amp;&nbsp; 对申请人没有学历和英语能力的要求；5、投资移民在签证面试成功之后，才开始实施投资计划，非常安全。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; 该项目对于管理经验丰富，个人资产情况好，并有意在BC省投资创业的申请人将是个不错的选择</span><br />\r\n<br />\r\n', '热门移民项目', 1, 1, '2017-04-12 15:37:06', '2017-06-02 18:23:40', '0000-00-00 00:00:00', 0, 11, '', '', '', ''),
(12, 31, '25,27,31', 0, 1, '加拿大投资移民项目（萨省）', '此项移民计划是针对已取得萨省雇主全职聘用合同的技术工人及专业人士而设立的移民计划。', '<span style=\"font-size: 14px\">&nbsp;<img alt=\"\" src=\"/upload/other/images/20170413_081838.JPG\" style=\"width: 389px; height: 247px\" />&nbsp; <img alt=\"\" src=\"/upload/other/images/20170602_122400.jpg\" style=\"width: 405px; height: 250px\" /><br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_073508.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 加拿大当地时间2015年3月23日上午9:30，萨省移民部长Harrison在位于里贾纳市Albert大街1441号的Presents World Wide Gifts商店(中国新移民投资创业店)现场宣布了最新的加拿大萨省投资移民新政。关闭两年的&ldquo;萨省投资移民&rdquo;政策终于重开，此消息一出即在华人圈一片沸腾，同时，萨省移民局的官网也公布了新政。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 值得注意的是，本次移民新政选择在一个中国投资移民者的商店里举行，显示了萨省政府对符合条件的投资移民的肯定和鼓励。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 对中小企业家而言，萨省创业移民项目无疑是移民加拿大门槛最低的项目之一，而且此项目结合了创业与移民两方面，因此更加适合打算来加拿大定居创业的申请人。<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_073545.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n&amp;&nbsp; 主申请人或夫妻双方名下的净资产至少有50万加币<br />\r\n&amp;&nbsp;&nbsp;近五年中三年以上管理经验，高管和股东都可以申请<br />\r\n&amp;&nbsp; EOI打分系统在110分以上<br />\r\n&amp;&nbsp; 随性子女年龄要求：23岁以下未婚<br />\r\n&amp;&nbsp; 在萨斯卡通、里贾纳投资至少30万加币，或在萨省其他地区投资至少20万加币<br />\r\n&amp;&nbsp; 如果在里贾纳或萨斯卡通投资的，需至少为加拿大居民或永久居住居民创造2个就业机会（非亲属关系）<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_073646.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n&amp;&nbsp; 提交萨省移民厅网上筛选系统<br />\r\n&amp;&nbsp; 移民厅通过打分评比、高分优先原则将符合要求的申请者选出<br />\r\n&amp;&nbsp; 第三方审计对客户资料进行审计<br />\r\n&amp;&nbsp; 向联邦申请工签，登录加拿大<br />\r\n&amp;&nbsp; 由萨省移民厅对申请者的商业投资进行考核<br />\r\n&amp;&nbsp; 向联邦申请枫叶卡<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170602_123340.jpg\" style=\"width: 220px; height: 43px\" /><br />\r\n<img alt=\"\" src=\"/upload/other/images/20170602_123439.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n<font size=\"3\">&amp; 资产要求200万加元以上<br />\r\n&amp; 3年以上企业主管理经验<br />\r\n&amp; 通过EOI筛选（可另加15分）<br />\r\n&amp; 投资70万（60+10）加元<br />\r\n&amp; 在萨省居住6-9个月</font><br />\r\n<br />\r\n<strong><img alt=\"\" src=\"/upload/other/images/20170502_073736.jpg\" style=\"width: 100px; height: 42px\" /></strong><br />\r\n&amp;&nbsp; 区域性（将是SK &amp; MB地区最大也是牌子最全的名牌折扣购物中心）<br />\r\n&amp;&nbsp; 专业知名名牌管理团队<br />\r\n&amp;&nbsp; 公司持有项目60%资产<br />\r\n&amp;&nbsp; 此项目解决了500个就业岗位，得到政府大力支持，使得申请成功有保障&nbsp;&nbsp;<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170602_125045.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n1. 100%保证本金安全<br />\r\n2. 100%保证拿到枫叶卡（不成功全额退款）<br />\r\n3. 固定投资回报<br />\r\n4. 项目可回购（按客户意愿）<br />\r\n5. 一份投资，三份收益&mdash;&mdash;商铺、生意、移民<br />\r\n6. 项目透明，投资灵活，永久产权</span><br />\r\n', '热门移民项目', 1, 1, '2017-04-12 15:54:47', '2017-06-02 19:02:27', '0000-00-00 00:00:00', 0, 12, '', '', '', ''),
(13, 35, '32,33,35', 0, 1, '欧盟蓝卡', '', '<span style=\"font-size: 12px\"><img alt=\"\" src=\"/upload/other/images/20170412_100824.jpg\" style=\"width: 399px; height: 230px\" />&nbsp;<img alt=\"\" src=\"/upload/other/images/20170502_105049.jpg\" style=\"width: 405px; height: 250px\" /><br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_092826.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n<span style=\"font-size: 12px\">&nbsp;&nbsp; &ldquo;欧盟蓝卡&rdquo;：2012年2月，德国联邦内阁通过了方案，正式向非欧盟国家的专业人才发放&ldquo;欧盟蓝卡&rdquo;。欧盟蓝卡是欧盟位吸引技术人才来欧盟工作出台的制度。所以本身即是一种居留许可，也是一种工作许可，欧盟蓝卡与2012年8月1日正式启动。</span><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n<br />\r\n<strong><img alt=\"\" src=\"/upload/other/images/20170502_092838.jpg\" style=\"width: 100px; height: 42px\" /></strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img alt=\"\" src=\"/upload/other/images/20170412_104710.jpg\" style=\"width: 800px; height: 391px\" /><br />\r\n<br />\r\n<strong><img alt=\"\" src=\"/upload/other/images/20170502_092856.jpg\" style=\"width: 100px; height: 42px\" /></strong><br />\r\n&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp; <img alt=\"\" src=\"/upload/other/images/20170412_104229.jpg\" style=\"width: 800px; height: 386px\" /><br />\r\n<br />\r\n<strong><img alt=\"\" src=\"/upload/other/images/20170502_092909.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n<br />\r\n&nbsp; <img alt=\"\" src=\"/upload/other/images/20170412_104536.jpg\" style=\"width: 800px; height: 385px\" />&nbsp;</strong></span><br />\r\n<br />\r\n<br />\r\n<br />\r\n', '', 1, 1, '2017-04-12 16:04:13', '2017-05-02 17:27:41', '0000-00-00 00:00:00', 0, 13, '', '', '', ''),
(14, 36, '32,33,36', 0, 1, '德国企业高管移民', '', '<span style=\"font-size: 14px\"><strong>&nbsp; </strong><img alt=\"\" src=\"/upload/other/images/20170412_105604.jpg\" style=\"width: 406px; height: 232px\" />&nbsp; <img alt=\"\" src=\"/upload/other/images/20170502_094712.jpg\" style=\"width: 405px; height: 250px\" /><br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_094534.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; 根据德国外国人法相关政策第18条，若外国人拥有被德国认可的技能，拥有符合德国劳动法的劳动合同，有一个符合德国当地标准的工资，且具备一定的外语能力，可申请德国职业签证。职业签证持有者在缴满60个月养老保险，并且德语水平达到B1即可申请德国永久居留证。<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_094549.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 年龄&mdash;&mdash;22-25周岁<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 学历&mdash;&mdash;大专以上学历毕业<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 记录&mdash;&mdash;无犯罪记录<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 职业&mdash;&mdash;有成功经商经历，或丰富的企业就职经历<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_094613.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 办理周期为<strong>9-12</strong>个月，获得签证后90天内登陆德国领取电子卡。<br clear=\"all\" />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 评估并签约&mdash;&mdash;确定移居方案&mdash;&mdash;准备材料&mdash;&mdash;面试培训&mdash;&mdash;面签指导递交签证获得签证<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;登陆德国&nbsp;&mdash;&mdash;获取电子卡&mdash;&mdash;永居入籍<br />\r\n<strong><img alt=\"\" src=\"/upload/other/images/20170502_094634.jpg\" style=\"width: 100px; height: 42px\" />&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>手续简单周期短<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 办理手续简单，办理周期短，从递交材料到获得企业高管签证，仅 &nbsp;&nbsp;&nbsp;需3个季度。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 申请成功率100%<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 企业高管签证申请成功率100%，根据德国法律明文规定，依托 背景强大的德国律师团队，保障客户合法顺利移民德国。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 无需高额投资<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 无需购置不动产或其他形式高额投资，项目总体花费远低于其他欧洲国家。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 无资金来源证明<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 无资金来源证明，无双重征税困扰。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;轻移民监入籍易<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 持居留卡期间，每年登陆一次即可；永居身份期间，每年登陆一次即可，取得永居起3年便可申请入籍德国。<br />\r\n&nbsp;<br />\r\n<br />\r\n<br />\r\n<br />\r\n&nbsp;</span>', '', 1, 1, '2017-04-12 16:04:25', '2017-05-02 17:27:31', '0000-00-00 00:00:00', 0, 14, '', '', '', ''),
(15, 51, '50,51', 0, 1, '澳大利亚打工度假签证（462）', '', '<span style=\"font-size: 14px\"><img alt=\"\" src=\"/upload/other/images/20170412_110945.jpg\" style=\"width: 390px; height: 260px\" />&nbsp; <img alt=\"\" src=\"/upload/other/images/20170502_081353.jpg\" style=\"width: 405px; height: 250px\" /><br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_081414.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 工作假期签证（<span style=\"font-family: arial,helvetica,sans-serif\">Work and Holiday visa </span>），又称打工度假签证，是一种旅行许可。它允许签证持有人出于弥补其旅行资金的目的而在签证颁发国从事一些临时性工作。这是澳洲第一次面向中国开放工作度假签证，目的是让更多的中国人有机会了澳洲的文化，了解澳洲的教育，选择到澳洲留学。目前澳大利亚开放的&ldquo;打工度假签证&rdquo;有两种类型，Work and Holiday Visa（462）和Working Holiday Visa（417），澳大利亚将向中国公民开放的&ldquo;打工度假签证&rdquo;是462类型。在线预约递交打工与度假(462类别)签证申请系统将于2015年9月21日北京时间早上9点开放。预约成功以后请在你选定的日期和时间亲自往澳洲签证申请中心递交申请。<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_081429.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n&amp;&nbsp; 年龄必须在18~31岁&nbsp;<br />\r\n&amp;&nbsp; 不能有小孩跟随申请人同来&nbsp;<br />\r\n&amp;&nbsp; 签证开放国的护照&nbsp;<br />\r\n&amp;&nbsp; 有一封政府的支持信(美国申请者除外)<br />\r\n&amp;&nbsp; 没有申请过澳大利亚工作假期签证(417)<br />\r\n&amp;&nbsp; 足够的经济担保最少5000澳币&nbsp;<br />\r\n&amp;&nbsp; 能承担自己的往返机票&nbsp;<br />\r\n&amp;&nbsp; 英语雅思通过平均4.5分&nbsp;<br />\r\n&amp;&nbsp; 满足学历至少本科或在读的要求&nbsp;<br />\r\n&amp;&nbsp; 通过品行和健康检查&nbsp;<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_081459.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n<strong>&amp;&nbsp; 如果申请好了打工度假签证，你拥有如下权利</strong>&nbsp;<br />\r\n1. 持有人可以从事文化交流活动以及旅游<br />\r\n2. 在澳大利亚停留12个月<br />\r\n3. 学习最多四个月<br />\r\n4. 可以在澳大利亚每个雇主手下工作最多六个月&nbsp;<br />\r\n5. 在签证有效期内离开、进入澳大利亚的任意次都是有效的。<br />\r\n<strong>&amp;&nbsp; 如果申请好了打工度假签证，你必须遵守如下澳洲法律：</strong><br />\r\n1.在你的签证有效期内，你的受抚养子女不能以任何形式来澳。&nbsp;<br />\r\n2.你的配偶可以来澳，但必须申请自己的独立签证。<br />\r\n3.在申请期间，你不能因为任何原因申请其他签证来澳，直到你拿到签证。<br />\r\n<strong>&amp;&nbsp; 签证费用的计算：</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Work and Holiday visa 工作假期签证( 462 ) 申请费：440AUD&nbsp;<br />\r\n<strong>&amp;&nbsp; 大家都很关心的二签</strong>：<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;每年提供给中国申请人5000个名额。如果当年名额已满，澳大利亚将于第二年再接受新申请。此签证不可二签，每个人一生只能申请一次。<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n&nbsp;</span><br />\r\n', '', 1, 1, '2017-04-12 17:07:33', '2017-05-12 11:21:21', '0000-00-00 00:00:00', 0, 15, '', '', '', ''),
(35, 101, '17,100,101', 0, 1, '澳大利亚技术移民（190）', '', '<span style=\"font-size: 14px\"><img alt=\"\" src=\"/upload/other/images/20170502_082541.png\" style=\"width: 392px; height: 245px\" />&nbsp; <img alt=\"\" src=\"/upload/other/images/20170502_082751.jpg\" style=\"width: 405px; height: 250px\" /><br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_082812.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 190 签证既可以在澳洲境内申请也可以在澳洲境外申请。它是之前176签证和886签证合并后的签证类型。申请成功后是一步到位的永居签证，与189相比，190需要有州担保，移民成功后需要到担保的州居住2年以后才可以去其他地区定居（有居住限制）。&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SOL上的职业&nbsp;无论是 SOL1 还是 SOL2 上的职业都可以申请州担保，190州担保可以给申请人加5分，按照评分标准如果申请人可以达到55分，就有机会申请190州担保技术移民申请。71新政后190签证的申请流程是职业评估-EOI-州担保-收到邀请后申请签证。&nbsp;<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_082844.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n&amp;&nbsp; 需要获得EOI邀请；<br />\r\n&amp;&nbsp; 年龄小于50岁<br />\r\n&amp;&nbsp; 职业属于SOL1或SOL2，并且通过职业评估；<br />\r\n&amp;&nbsp; 雅思最少4个6；<br />\r\n&amp;&nbsp; 有州政府担保<br />\r\n&amp;&nbsp; 评分达到至少55分，获得州担保5分后达到60分<br />\r\n&amp;&nbsp; 符合身体和平直要求<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_083123.jpg\" style=\"width: 100px; height: 42px\" /></span><br />\r\n&amp;&nbsp; 客户申请免费评估<br />\r\n&amp;&nbsp; 签订办理协议<br />\r\n&amp;&nbsp; 职业评估<br />\r\n&amp;&nbsp; 提交EQI并通知州政府<br />\r\n&amp;&nbsp; 收到州政府邀请，申请提名<br />\r\n&amp;&nbsp; 提名通过，递交签证申请<br />\r\n&amp;&nbsp; 签证获批', '', 1, 1, '2017-05-02 14:20:12', '2017-05-12 11:20:21', '0000-00-00 00:00:00', 0, 37, '', '', '', ''),
(16, 52, '50,52', 0, 1, ' 澳大利亚捐资类父母永居签证143', '', '<span style=\"font-size: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 百善孝为先&ldquo;。 孝敬父母和长辈是我们中华民族千百年来格守的传统美德。如果我们能以给孩子无私的爱的一半，来奉献给父母，那天下父母都能很快乐的安享晚年。如果经济许可的话，赶快申请父母来澳洲与你们团聚。现有的父母移民签证分为两种，一种称为&ldquo;一般排队父母移民103签证&rdquo;，另一种称为&ldquo;捐献款父母移民143签证&rdquo;。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img alt=\"\" src=\"/upload/other/images/20170412_111613.jpg\" style=\"width: 500px; height: 318px\" /><br />\r\n<br />\r\n<strong>申请条件：</strong><br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. 申请人子女是澳洲永居/澳洲公民/新西兰公民，并且在澳洲合法居住至少2年<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. 通过家庭平衡测试（注1）（举例来件，三个子女中一个澳洲公民，两个中国居民，既不符合此项要求）<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. 一般情况下，担保人过去两年须持合法签证常住澳洲（不要求两年都是PR身份）<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. 申请人满足健康和品格要求<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. 如果申请人在澳洲境内，当前签证上不能有8503条款<br />\r\n&nbsp;<br />\r\n<strong>注 </strong>：家庭平衡测试是指申请人至少有一半以上的子女长久居住在澳大利亚或子女居住在澳大利亚的比居住在其他国家的要多。要符合此项标准，主&nbsp;&nbsp;&nbsp; 申请人要满足以下条件：<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. 申请人至少有一半的子女是澳大利亚公民或永久居民并在澳洲居住<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. 在澳洲永居的子女比在其他国家永居的子女多<br />\r\n&nbsp;&nbsp; 家庭平衡测试中所涉及的子女包括：子女、继子女、收养子女等<br />\r\n&nbsp;&nbsp; 103排队类父母永居签证申请方式：<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 申请人准备好材料后，邮寄到澳洲的Perth的办公室<br />\r\n&nbsp;<br />\r\n<strong>通常来讲捐资类父母永居签证可以分成两类：143捐资类父母永居签证和173捐资类父母临时签证。<br />\r\n<br />\r\n<br />\r\n项目优势</strong><br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 对比澳洲103排队类父母移民签证的漫长审理周期，143和173签证的审理时间短，可以尽快的让父母与子女团聚<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 143签证需要一次性支付所有捐献款项。而173捐资类父母临时签证可以分两期支付所有捐钱款项，可以在获得173签证后在2年内支付剩余的捐献款额时，转成永居签证。拿到永居后，申请人会直接享受澳洲国民医疗保险体制，60岁以上的父母可申请SeniorCard及Myki乘车优惠卡，但是其他社会保险或者补贴需要再等待2年，老年养老金补贴则需要等待10年以后才可享受。</span><br />\r\n<br />\r\n<br />\r\n', '', 1, 1, '2017-04-12 17:14:41', '2017-05-02 17:22:34', '0000-00-00 00:00:00', 0, 16, '', '', '', '');
INSERT INTO `productinfo` (`id_prodinfo`, `id_proddir`, `dirtree`, `id_hr`, `lang`, `title`, `intro`, `content`, `tag`, `dele`, `isnew`, `indate`, `modate`, `deldate`, `browsecount`, `ordernum`, `pagetitle`, `pagekey`, `pagetag`, `pagedesc`) VALUES
(17, 53, '50,53', 0, 1, '加拿大亲属团聚', '', '<span style=\"font-size: 14px\"><span style=\"color: #000000\"><span style=\"line-height: 26px; text-transform: none; background-color: rgb(255,255,255); font-variant: normal; font-style: normal; text-indent: 0px; letter-spacing: normal; display: inline !important; font-family: ´microsoft yahei´, STXihei; white-space: normal; float: none; font-weight: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;加拿大公民及永久居民可以申请配偶和子女到加拿大团聚。如果配偶和孩子已经在加拿大境内，则可以在加拿大境内申请永久居留；如果配偶和孩子在海外原居地，则需循海外申请的方式申请移民签证。</span></span><br />\r\n<br />\r\n<span style=\"line-height: 26px; text-transform: none; background-color: rgb(255,255,255); font-variant: normal; font-style: normal; text-indent: 0px; letter-spacing: normal; display: inline !important; font-family: ´microsoft yahei´, STXihei; white-space: normal; float: none; color: rgb(102,102,102); font-weight: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px\"><img alt=\"\" src=\"/upload/other/images/20170414_124949.jpg\" style=\"width: 800px; height: 450px\" /></span><br />\r\n<br />\r\n<span style=\"line-height: 26px; text-transform: none; background-color: rgb(255,255,255); font-variant: normal; font-style: normal; text-indent: 0px; letter-spacing: normal; display: inline !important; font-family: ´microsoft yahei´, STXihei; white-space: normal; float: none; font-weight: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px\"><strong>移民要求：</strong></span><br />\r\n<br />\r\n<span style=\"line-height: 26px; text-transform: none; background-color: rgb(255,255,255); font-variant: normal; font-style: normal; text-indent: 0px; letter-spacing: normal; display: inline !important; font-family: ´microsoft yahei´, STXihei; white-space: normal; float: none; font-weight: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px\"><span style=\"color: #000000\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1、担保人要求：18岁以上，加拿大公民或永久居民。<br />\r\n<span style=\"box-sizing: border-box; padding-bottom: 0px; margin: 0px; outline-style: none; outline-color: invert; padding-left: 0px; outline-width: 0px; padding-right: 0px; padding-top: 0px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2、办理周期：配偶/子女，6-9个月。</span></span></span></span><br />\r\n<div style=\"box-sizing: border-box; padding-bottom: 0px; text-transform: none; background-color: rgb(255,255,255); text-indent: 0px; margin: 0px; outline-style: none; outline-color: invert; padding-left: 0px; outline-width: 0px; letter-spacing: normal; padding-right: 0px; font: 14px ´microsoft yahei´, STXihei; white-space: normal; color: rgb(102,102,102); word-spacing: 0px; padding-top: 0px; -webkit-text-stroke-width: 0px\">\r\n	<p style=\"box-sizing: border-box; padding-bottom: 0px; line-height: 26px; margin: 0px; outline-style: none; outline-color: invert; padding-left: 0px; outline-width: 0px; padding-right: 0px; color: rgb(102,102,102); padding-top: 0px\">\r\n		<span style=\"font-size: 14px\"><span style=\"line-height: 26px; text-transform: none; background-color: rgb(255,255,255); font-variant: normal; font-style: normal; text-indent: 0px; letter-spacing: normal; display: inline !important; font-family: ´microsoft yahei´, STXihei; white-space: normal; float: none; font-weight: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px\"><span style=\"color: #000000\"><span style=\"box-sizing: border-box; padding-bottom: 0px; margin: 0px; outline-style: none; outline-color: invert; padding-left: 0px; outline-width: 0px; padding-right: 0px; padding-top: 0px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3、担保配偶及子女：不需要提供担保人的家庭收入证明。</span></span></span></span></p>\r\n	<p style=\"box-sizing: border-box; padding-bottom: 0px; line-height: 26px; margin: 0px; outline-style: none; outline-color: invert; padding-left: 0px; outline-width: 0px; padding-right: 0px; color: rgb(102,102,102); padding-top: 0px\">\r\n		<span style=\"font-size: 14px\"><span style=\"line-height: 26px; text-transform: none; background-color: rgb(255,255,255); font-variant: normal; font-style: normal; text-indent: 0px; letter-spacing: normal; display: inline !important; font-family: ´microsoft yahei´, STXihei; white-space: normal; float: none; font-weight: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px\"><span style=\"color: #000000\"><span style=\"box-sizing: border-box; padding-bottom: 0px; margin: 0px; outline-style: none; outline-color: invert; padding-left: 0px; outline-width: 0px; padding-right: 0px; padding-top: 0px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4、担保期限：在担保期限内，可以享受免费医疗，但不得申请政府的各项救济金，配偶担保3年。</span></span></span></span></p>\r\n	<span style=\"font-size: 14px\"><span style=\"line-height: 26px; text-transform: none; background-color: rgb(255,255,255); font-variant: normal; font-style: normal; text-indent: 0px; letter-spacing: normal; display: inline !important; font-family: ´microsoft yahei´, STXihei; white-space: normal; float: none; font-weight: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px\"><span style=\"box-sizing: border-box; padding-bottom: 0px; margin: 0px; outline-style: none; outline-color: invert; padding-left: 0px; outline-width: 0px; padding-right: 0px; padding-top: 0px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style=\"color: #000000\">子女：如小于22岁，10年或者担保到25周岁。如大于22岁，3年</span>。</span></span></span><br />\r\n	<p style=\"box-sizing: border-box; padding-bottom: 0px; line-height: 26px; margin: 0px; outline-style: none; outline-color: invert; padding-left: 0px; outline-width: 0px; padding-right: 0px; color: rgb(102,102,102); padding-top: 0px\">\r\n		<span style=\"font-size: 14px\">&nbsp;</span></p>\r\n	<p style=\"box-sizing: border-box; padding-bottom: 0px; line-height: 26px; margin: 0px; outline-style: none; outline-color: invert; padding-left: 0px; outline-width: 0px; padding-right: 0px; color: rgb(102,102,102); padding-top: 0px\">\r\n		<span style=\"font-size: 14px\"><span style=\"line-height: 26px; text-transform: none; background-color: rgb(255,255,255); font-variant: normal; font-style: normal; text-indent: 0px; letter-spacing: normal; display: inline !important; font-family: ´microsoft yahei´, STXihei; white-space: normal; float: none; font-weight: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px\"><span style=\"box-sizing: border-box; padding-bottom: 0px; margin: 0px; outline-style: none; outline-color: invert; padding-left: 0px; outline-width: 0px; padding-right: 0px; padding-top: 0px\">&nbsp;</span></span></span></p>\r\n	<p style=\"padding-bottom: 20px; text-transform: none; background-color: rgb(255,255,255); text-indent: 0px; margin: 0px; padding-left: 0px; letter-spacing: normal; padding-right: 0px; font: 14px/25px 宋体, arial; white-space: normal; color: rgb(51,51,51); word-spacing: 0px; padding-top: 0px; -webkit-text-stroke-width: 0px\">\r\n		<span style=\"font-size: 14px\"><span style=\"line-height: 26px; text-transform: none; background-color: rgb(255,255,255); font-variant: normal; font-style: normal; text-indent: 0px; letter-spacing: normal; display: inline !important; font-family: ´microsoft yahei´, STXihei; white-space: normal; float: none; font-weight: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px\"><span style=\"box-sizing: border-box; padding-bottom: 0px; margin: 0px; outline-style: none; outline-color: invert; padding-left: 0px; outline-width: 0px; padding-right: 0px; padding-top: 0px\"><strong>亲属团聚有条件</strong></span></span></span></p>\r\n	<p style=\"padding-bottom: 20px; text-transform: none; background-color: rgb(255,255,255); text-indent: 0px; margin: 0px; padding-left: 0px; letter-spacing: normal; padding-right: 0px; font: 14px/25px 宋体, arial; white-space: normal; color: rgb(51,51,51); word-spacing: 0px; padding-top: 0px; -webkit-text-stroke-width: 0px\">\r\n		<span style=\"font-size: 14px\"><span style=\"line-height: 26px; text-transform: none; background-color: rgb(255,255,255); font-variant: normal; font-style: normal; text-indent: 0px; letter-spacing: normal; display: inline !important; font-family: ´microsoft yahei´, STXihei; white-space: normal; float: none; font-weight: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px\"><span style=\"box-sizing: border-box; padding-bottom: 0px; margin: 0px; outline-style: none; outline-color: invert; padding-left: 0px; outline-width: 0px; padding-right: 0px; padding-top: 0px\"><span style=\"color: #000000\">　　据统计，2012年以随行子女身份申请移民者有64757人年龄在19岁以下，约占总数的90%，子女中19至22岁者有7237人。</span></span></span></span></p>\r\n	<p style=\"padding-bottom: 20px; text-transform: none; background-color: rgb(255,255,255); text-indent: 0px; margin: 0px; padding-left: 0px; letter-spacing: normal; padding-right: 0px; font: 14px/25px 宋体, arial; white-space: normal; color: rgb(51,51,51); word-spacing: 0px; padding-top: 0px; -webkit-text-stroke-width: 0px\">\r\n		<span style=\"font-size: 14px\"><span style=\"line-height: 26px; text-transform: none; background-color: rgb(255,255,255); font-variant: normal; font-style: normal; text-indent: 0px; letter-spacing: normal; display: inline !important; font-family: ´microsoft yahei´, STXihei; white-space: normal; float: none; font-weight: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px\"><span style=\"box-sizing: border-box; padding-bottom: 0px; margin: 0px; outline-style: none; outline-color: invert; padding-left: 0px; outline-width: 0px; padding-right: 0px; padding-top: 0px\"><span style=\"color: #000000\">　　移民部发言人勒萨热提醒民众，原本计划于明年1月2日起实施的，各类团聚移民申请随行子女年龄下调至未满19岁的新措施，会延后实施。19岁至22岁的子女或自己的父母及祖父母都可申请。</span></span></span></span></p>\r\n	<p style=\"padding-bottom: 20px; text-transform: none; background-color: rgb(255,255,255); text-indent: 0px; margin: 0px; padding-left: 0px; letter-spacing: normal; padding-right: 0px; font: 14px/25px 宋体, arial; white-space: normal; color: rgb(51,51,51); word-spacing: 0px; padding-top: 0px; -webkit-text-stroke-width: 0px\">\r\n		<span style=\"font-size: 14px\"><span style=\"line-height: 26px; text-transform: none; background-color: rgb(255,255,255); font-variant: normal; font-style: normal; text-indent: 0px; letter-spacing: normal; display: inline !important; font-family: ´microsoft yahei´, STXihei; white-space: normal; float: none; font-weight: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px\"><span style=\"box-sizing: border-box; padding-bottom: 0px; margin: 0px; outline-style: none; outline-color: invert; padding-left: 0px; outline-width: 0px; padding-right: 0px; padding-top: 0px\"><span style=\"color: #000000\">　　超过19岁，目前必须是全职学生，且从19岁起必须是持续就学，经济大部分或全部由父母亲支持，若就学有中断，则不能超过一年。如子女超过19岁，在身份或心理有残疾，而无法照顾自己，在财务上大部分或全部受父母支持，也可视为未独立子女，但在体检方面，却属于不能入境类。</span></span></span></span></p>\r\n	<p style=\"padding-bottom: 20px; text-transform: none; background-color: rgb(255,255,255); text-indent: 0px; margin: 0px; padding-left: 0px; letter-spacing: normal; padding-right: 0px; font: 14px/25px 宋体, arial; white-space: normal; color: rgb(51,51,51); word-spacing: 0px; padding-top: 0px; -webkit-text-stroke-width: 0px\">\r\n		<span style=\"font-size: 14px\"><span style=\"line-height: 26px; text-transform: none; background-color: rgb(255,255,255); font-variant: normal; font-style: normal; text-indent: 0px; letter-spacing: normal; display: inline !important; font-family: ´microsoft yahei´, STXihei; white-space: normal; float: none; font-weight: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px\"><span style=\"box-sizing: border-box; padding-bottom: 0px; margin: 0px; outline-style: none; outline-color: invert; padding-left: 0px; outline-width: 0px; padding-right: 0px; padding-top: 0px\"><span style=\"color: #000000\">　　未独立的子女也包含在19岁以前被收养的孩子。子女必须依照当地法律，完成收养手续，且该收养不能以移民为目的。</span></span></span></span></p>\r\n	<p style=\"padding-bottom: 20px; text-transform: none; background-color: rgb(255,255,255); text-indent: 0px; margin: 0px; padding-left: 0px; letter-spacing: normal; padding-right: 0px; font: 14px/25px 宋体, arial; white-space: normal; color: rgb(51,51,51); word-spacing: 0px; padding-top: 0px; -webkit-text-stroke-width: 0px\">\r\n		<span style=\"font-size: 14px\"><span style=\"line-height: 26px; text-transform: none; background-color: rgb(255,255,255); font-variant: normal; font-style: normal; text-indent: 0px; letter-spacing: normal; display: inline !important; font-family: ´microsoft yahei´, STXihei; white-space: normal; float: none; font-weight: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px\"><span style=\"box-sizing: border-box; padding-bottom: 0px; margin: 0px; outline-style: none; outline-color: invert; padding-left: 0px; outline-width: 0px; padding-right: 0px; padding-top: 0px\"><span style=\"color: #000000\">　　父亲或母亲，祖父或祖母。父亲或母亲是指任何年龄的父母，必须说明一下，如果申请人取得加拿大永久居留权尚不到3年，则只能申请60岁或60岁以上的父母，父亲或母亲丧偶，或不能工作。</span></span></span></span></p>\r\n	<p style=\"padding-bottom: 20px; text-transform: none; background-color: rgb(255,255,255); text-indent: 0px; margin: 0px; padding-left: 0px; letter-spacing: normal; padding-right: 0px; font: 14px/25px 宋体, arial; white-space: normal; color: rgb(51,51,51); word-spacing: 0px; padding-top: 0px; -webkit-text-stroke-width: 0px\">\r\n		<span style=\"font-size: 14px\"><span style=\"line-height: 26px; text-transform: none; background-color: rgb(255,255,255); font-variant: normal; font-style: normal; text-indent: 0px; letter-spacing: normal; display: inline !important; font-family: ´microsoft yahei´, STXihei; white-space: normal; float: none; font-weight: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px\"><span style=\"box-sizing: border-box; padding-bottom: 0px; margin: 0px; outline-style: none; outline-color: invert; padding-left: 0px; outline-width: 0px; padding-right: 0px; padding-top: 0px\"><span style=\"color: #000000\">　　无双亲的亲属。这类亲属包含担保人的兄弟姐妹、侄子、侄女、外甥、外甥女、孙子及孙女。他们必须是19岁以下且未婚。担保人也必须取得亲属未来欲居住省份的书面同意。<br />\r\n		<br />\r\n		<img alt=\"\" src=\"/upload/other/images/20170414_125008.jpg\" style=\"width: 800px; height: 534px\" /></span></span></span><br />\r\n		<br />\r\n		<br />\r\n		<br />\r\n		&nbsp;</span></p>\r\n	<p style=\"box-sizing: border-box; padding-bottom: 0px; line-height: 26px; margin: 0px; outline-style: none; outline-color: invert; padding-left: 0px; outline-width: 0px; padding-right: 0px; color: rgb(102,102,102); padding-top: 0px\">\r\n		<br />\r\n		<span style=\"font-size: 14px\"><span style=\"line-height: 26px; text-transform: none; background-color: rgb(255,255,255); font-variant: normal; font-style: normal; text-indent: 0px; letter-spacing: normal; display: inline !important; font-family: ´microsoft yahei´, STXihei; white-space: normal; float: none; font-weight: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px\"><span style=\"box-sizing: border-box; padding-bottom: 0px; margin: 0px; outline-style: none; outline-color: invert; padding-left: 0px; outline-width: 0px; padding-right: 0px; padding-top: 0px\">&nbsp;</span></span></span></p>\r\n</div>\r\n', '', 1, 1, '2017-04-12 17:20:43', '2017-05-02 17:22:21', '0000-00-00 00:00:00', 0, 17, '', '', '', ''),
(18, 93, '74,78,93', 0, 1, '澳洲旅游签证', '', '<span style=\"font-size: 14px\"><span style=\"line-height: 24px; text-transform: none; background-color: rgb(255,255,255); font-variant: normal; font-style: normal; text-indent: 28px; letter-spacing: normal; display: inline !important; font-family: arial, 宋体, sans-serif; white-space: normal; float: none; color: rgb(51,51,51); font-weight: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px\">澳洲旅游签证是澳大利亚访客签证的一种，根据不同的访问目的，有多种类别的访客签证可供选择。目前在我国主要办理的是600旅游签证。<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170413_032623.jpg\" style=\"width: 800px; height: 600px\" /><br />\r\n<br />\r\n<strong>申请条件</strong><br />\r\n<br />\r\n&nbsp; 676所需资料<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.填写表格：48RCHS表；54 表；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.本人有效护照的 原件；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.护照规格照片一张；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.申请人户口本正本复印件；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5.资金证明：<br />\r\n&nbsp;&nbsp;个人存款证明（建议有5万存款的定期存单），股票和有价证劵证明，房产证明，车辆证明等； 和能反映出您的存款历史或工资收入的银行存折复印件；信用卡明细单和信用额度证明。注：如果您在澳大利亚的朋友或亲戚为您的旅行提供经济资助，请提供他们的邀请信及有能力提供经济资助的证明）；邀请人的姓名和联系方式及澳大利亚签证的复印件。<br />\r\n<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170413_032639.jpg\" style=\"width: 800px; height: 500px\" /><br />\r\n<br />\r\n<br />\r\n<strong>在职（学）人员需提供：工作单位准假信，同时在信上注明：</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &middot; 你的职位和薪资<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&middot; 在职时间<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &middot; 批准休假时间<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &middot;签发批准的负责人员的姓名和联系方式<br />\r\n<strong>注：</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &middot; 私营业主需提供营业执照公证件（复印件）<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&middot; 退休人员需提供退休证公证件（复印件）<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &middot; 在读学生需提供在读证明 。<br />\r\n<br />\r\n<strong>申请流程</strong><br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 自收到您的申请之日起，北京大使馆、广州领事馆签证处和上海领事馆签证处处理一个材料完整的申请的平均时间为五个工作日。如果您的申请材料完整并允许我们通过电子邮件与您进行联系，那么您的申请受理时间可以缩短。<br />\r\n常见的会导致受理时间超过平均受理周期的原因包括：<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &middot; 递交的申请材料不完整；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&middot; 需要进行额外调查、要求补充资料或进行面试；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &middot; 健康问题：申请人体检需要复检或进一步治疗；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &middot; 任何和申请人有关的品行事宜需要进行正式品行评估。<br />\r\n<br />\r\n<strong>递交申请前，请预留较为宽裕的时间。请勿自认为在平均受理时间内会获得签证而制定任何旅行计划或购买机票。<br />\r\n<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170413_032653.jpg\" style=\"width: 800px; height: 450px\" /><br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170413_032708.jpg\" style=\"width: 800px; height: 320px\" /></strong><br />\r\n<br />\r\n&nbsp;<br />\r\n&nbsp;</span></span><br />\r\n', '', 1, 1, '2017-04-12 17:22:42', '2017-05-03 09:54:24', '0000-00-00 00:00:00', 0, 18, '', '', '', ''),
(19, 105, '74,76,105', 0, 1, '加拿大旅游签证', '', '<span style=\"font-size: 14px\"><span style=\"line-height: 24px; text-transform: none; background-color: rgb(255,255,255); font-variant: normal; font-style: normal; text-indent: 28px; letter-spacing: normal; display: inline !important; font-family: arial, 宋体, sans-serif; white-space: normal; float: none; color: rgb(51,51,51); font-weight: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px\">加国签证，即</span>加拿大<span style=\"line-height: 24px; text-transform: none; background-color: rgb(255,255,255); font-variant: normal; font-style: normal; text-indent: 28px; letter-spacing: normal; display: inline !important; font-family: arial, 宋体, sans-serif; white-space: normal; float: none; color: rgb(51,51,51); font-weight: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px\">旅游签证，是指颁发给赴加拿大旅游申请人的签证。<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170414_124547.jpg\" style=\"width: 800px; height: 534px\" /><br />\r\n<br />\r\n<strong>申请条件</strong><br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1、填写完整的&ldquo;临时居民访问签证申请表（IMM5257）&rdquo;。每位申请人及每名随行子女均需一份单独的申请表格。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2、申请人及每位年满18周岁及以上的随行家庭成员完整填写&ldquo;家庭信息表（IMM5645）&rdquo;，请用中英文或中法文填写。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3、申请人及每位年满18周岁及以上的随行家庭成员完整填写&ldquo;教育和就业细节表&rdquo;，请使用中英文或中法文填写。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4、申请人及每位随行的家庭成员每人需递交两张相同的在六个月内拍摄的彩色或黑白照片，背景为纯白色或浅色。相片外框大小为35毫米X 45毫米。每张照片后以拼音注明此人的姓名及出生日期（日/月/年）。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5、申请人及每位随行的家庭成员的有效护照。每本护照须包含除最后一页外的至少一整页空白页、且护照必须在行程前至少六个月有效。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6、两份用中文写有申请人现住址的粘性贴纸 (无需信封)。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7、以现金支付正确的申请受理费。受理费不予退还。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8、如有第三方人士帮助你准备此次申请，请填写代理人信息表（IMM5476E）。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9、18岁以下的申请人需有其未随行父/母出具的同意其旅行的父母同意函，此函应包含申请人旅行日期及其父母联系方式等信息。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;10、如果在职，使用印有公司抬头信笺的由雇主签字的准假信原件，并包含以下信息： 申请人的姓名、职位、收入和起聘日期；以及用中文注明的雇主全称和地址，以及电话和传真号码。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 11、如果退休，说明申请人养老金的退休证明。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12、若申请人为学生且于非学校假期期间旅行，一份学校出具的确认其在读及良好表现、并同意其缺勤的信函原件。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 13、详细的旅行行程安排。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 14、显示过去若干月中财政历史的银行文件原件(如存款证明、存折等)。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;15、在中国的资产证明 (如房产证原件、车辆登记证原件等)。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 16、所有过往旅行的证明 ( 如已用护照等)。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 17、协助申请人安排此次行程的所有中介的全称和地址 (无论在中国或加拿大，如适用)。<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170414_124510.jpg\" style=\"width: 800px; height: 533px\" /><br />\r\n<br />\r\n中国公民前往或离开美国，如需过境加拿大，满足以下所有条件时无须办理过境签证：<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;(一)持有效中国护照;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (二)持有效美国签证;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (三)搭乘加拿大航空(Air Canada)、加拿大爵士乐航空(Jazz Aviation LP)、香港国泰航空(Cathay Pacific)、中华航空(China Airlines )、菲律宾航空(Philippine Airlines)、中国国际航空(Air China);<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (四)从加拿大温哥华国际机场(Vancouver International Airport)或多伦多皮尔逊国际机场1号航站楼(Lester B. Pearson International Airport (Toronto) (Terminal 1 only))过境;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (五)必须从亚洲的北京、香港、上海、广州、马尼拉、台北出发，乘坐直达加拿大的航班。<br />\r\n二、前往美国旅客需注意<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (一)除满足以上各项条件外，过境加拿大的中国公民须持有确认的、飞往美国的、同日离开加拿大的联程直航机票(不能在加拿大临时滞留或过夜);<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (二)在加拿大转机的乘客在美国过境预先清关设备工作时间内(during the hours of operation of the U.S. in-transit pre-clearance facility)抵达，可不办理过境签证。因此，旅客应仔细核对航班时间。<br />\r\n<br />\r\n<strong>特殊备注</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1、办理加拿大签证是不需要面试的，领馆对资料要求比较高，建议尽量提供户口本、结婚证、房产证、机动车登记证，存折等等的原件。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2、申请人如在过往5年内曾获得过加拿大签证且正常访问并合法离开加拿大的，需要递交一份陈述此次申请访问加拿大的目的证明。<br />\r\n<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170414_124528.jpg\" style=\"width: 800px; height: 600px\" /></span></span><br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n', '', 1, 1, '2017-04-12 17:23:18', '2017-05-03 09:54:04', '0000-00-00 00:00:00', 0, 19, '', '', '', ''),
(20, 89, '74,76,89', 0, 1, '美国旅游签证', '', '<p>\r\n	<span style=\"font-size: 14px\"><span style=\"line-height: 24px; text-transform: none; background-color: rgb(255,255,255); font-variant: normal; font-style: normal; text-indent: 28px; letter-spacing: normal; display: inline !important; font-family: arial, 宋体, sans-serif; white-space: normal; float: none; color: rgb(51,51,51); font-weight: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px\">美国旅游签证（B－2签证）：B－2签证颁发给赴美国旅游的申请人，包括：1.探亲访友；2.旅游观光；3.就医；4.处理突发事件亲属伤亡、财产纠纷等；5.参加儿女毕业典礼或婚礼；6.参加各种性质的社团活动；7.参加各种业余性的音乐会和运动会等。<br />\r\n	<br />\r\n	<img alt=\"\" src=\"/upload/other/images/20170414_124003.jpg\" style=\"width: 800px; height: 500px\" /><br />\r\n	<br />\r\n	<strong>申请条件</strong><br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 填妥的DS-160申请表 发自在美国的亲属或朋友的邀请信，或证明参加了旅游团或会议的信件。（自2010年3月1日起，将全部启用DS-160在线申请表）证明申请人经济能力或在美国亲友的经济能力的文件，如税单或I－134经济担保书。如果申请人有任何既往病史，申请人应该出示在赴美期间的旅游或健康保险。二寸照片2-4张 其它有关证明材料 &middot; 有效护照(有效期半年以上) 能否获得签证，关键在与美国领事馆的面谈。<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 01、申请人有效因私护照原件（确认有效期在半年以上，护照末页要有本人签名）。<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 02、申请人身份证原件。<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 03、申请人户口本原件（全家页）。<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 04、申请人结婚证或相关机构所开具的证明原件。<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 05、申请人本人或配偶名下由存款银行开据的存折或存单原件，建议存期一年以上，金额人民币十万元以上。<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;06、申请人物产证明原件（如房产、车辆及证明个人财产的相关证明材料）。<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 07、公司担保函：<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; A、申请人公司简介并加盖公章原件。<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; B、申请人在职证明信并加盖公司公章原件。<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C、申请人请提供月收入证明原件如工资单需加盖公司公章或工资卡请打印流水单并加盖银行公章。<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;08、申请人全家福照片原件。<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 09、申请人曾出访去过国家的签证页及在国外拍的3-5张照片原件(要有境外标志性建筑物的) 。<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10、申请人公司营业执照原件或复印件加盖公司公章。<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 11、申请人50mm*50mm的免冠彩色白底相片2张原件（并在背面用铅笔签名）柯达店均有<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12、申请人名片原件2张。<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;13、申请人曾使用的旧护照原件。<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;14、申请人详细填写的赴美申请表原件。<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 15、申请人若是十六岁以下孩子，需提供与父母关系的公证书。如一方带孩子去，需要第三方委托公证书<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;16、申请人的毕业证书、嘉奖证书等。<br />\r\n	<br />\r\n	<img alt=\"\" src=\"/upload/other/images/20170414_124019.jpg\" style=\"width: 800px; height: 500px\" /><br />\r\n	<br />\r\n	<strong>办理流程</strong><br />\r\n	&nbsp;&nbsp;&nbsp;<strong>一、护照</strong><br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1．有效期从美国离境时至少半年以上的护照原件，至少留有一整张空白页申请人护照原件；<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2．护照首页复印件；<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3．请在护照最后一页签名(中文姓名)；<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4．持换发护照者，需同时提供所有旧护照原件。<br />\r\n	&nbsp;&nbsp; <strong>二、照片</strong><br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 51X51毫米6个月之内彩色免冠照片2张（要求背景需为白色，且露出耳朵）。如果当地无条件拍摄，可于面试前一天到使馆附近的照相馆照<br />\r\n	&nbsp;&nbsp;<strong> 三、名片</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 个人名片2张<br />\r\n	&nbsp;&nbsp; <strong>四、美国签证所需要的家庭证明</strong><br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1．身份证复印件（要求身份证正反两面复印在A4纸的同一面上）；<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2．全家户口本原件、复印件（复印件包含户口本首页,户主页,本人页,配偶页）；<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3．结婚证原件（如证件丢失请提供民政局开具的丢失证明），复印件一份，全家福照片；<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4．申请人个人简历一式两份，中英文各一份。<br />\r\n	&nbsp;&nbsp;<strong>&nbsp;五、美国签证所需要的资产证明</strong><br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1．（以下任何方式的原件，余额总和至少有10万元以上）<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ①银行存折本原件（上有正常规律的存取记录）；<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ②定期银行存单原件（请注意大额存钱时间须在至少3个月前）；<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ③银行储蓄卡、信用卡原件(建议：一并带上银行打印并盖章的3-6个月的流水帐)；<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ④股票交割单、有价证券、工资收入单；<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ⑤自己或配偶或其他直系亲属的房产证原件，汽车行驶证（蓝本）原件（若有）；<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ⑥其他任何证明申请人财力的材料身份证复印件（要求身份证正反两面复印在A4纸的同一面上）。<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2．不少于拾万(100,000元)&quot;存款证明&quot;原件，&quot;存款证明&quot;需为银行标准格式，有正确的英文译文，不可手写。<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;<strong>六、营业执照</strong><br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 所在单位为企业单位的申请者，请提供营业执照副本的清晰复印件，用A4纸复印，有年检记录，并在复印件上加盖单位公章。<br />\r\n	&nbsp;&nbsp;&nbsp;<strong>七、机构代码证</strong><br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 所在单位为事业单位的申请者，请提供组织机构代码证的清晰复印件，用A4纸复印，有年检记录，并在复印件上加盖单位公章。<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;<strong>八、在职证明</strong><br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1．在职证明一式两份,中文一份,英文一份. 在职证明和收入证明开在同一张抬头纸上；<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2．在职证明必须使用公司正规抬头纸打印，并加盖公司红章；<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3．在职证明内容需包括：单位名称、本人职务及收入、旅行时间、负责人职务、签字以及电话、传真，和单位的营业执照/企业机构代码证号。并需要注明担保申请人按期回国；<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4．每人面签时都要提供担保原件。<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>九、机票酒店订单</strong><br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1．机票订单一份<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2．酒店订单一份<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>十、派遣涵</strong><br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 用公司抬头纸打印的公司派遣函一式两份，中英文各一份。<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>十一、行程表</strong><br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 商务考察期间的行程表，中英文各一份，要求尽量详细。<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>十二、填写完整的DS-160电子表</strong><br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 网上填写完整的160表格，并打印签名。<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>十三、在任意一个中信银行网点购买的两联&ldquo;MRV Fee Receipt&rdquo;（美国签证申请费，246美金）。</strong><br />\r\n	<br />\r\n	<img alt=\"\" src=\"/upload/other/images/20170414_124033.jpg\" style=\"width: 800px; height: 459px\" /><br />\r\n	<br />\r\n	<br />\r\n	&nbsp;</span><br />\r\n	<br />\r\n	&nbsp;</span></p>\r\n', '', 1, 1, '2017-04-12 17:23:40', '2017-05-03 09:50:45', '0000-00-00 00:00:00', 0, 20, '', '', '', ''),
(21, 94, '74,78,94', 0, 1, '新西兰旅游签证', '', '<span style=\"font-size: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新西兰旅游签证颁发给赴新西兰旅游的申请人，包括观光旅游及医疗治病等。申请人必须能证明其意图只是临时进入新西兰,目的仅为旅游。申请人还必须证明有充足的资金支付在新西兰停留期间的费用,并证明其在祖国有牢固的社会、经济和其它方面的联系以迫使其在新西兰短期、合法访问后如期返回.<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170413_073109.jpg\" style=\"width: 800px; height: 518px\" /><br />\r\n<br />\r\n<strong>办理要求</strong><br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 若需携带学生或儿童同行，请另准备以下资料(学生或儿童独立申请使馆不予受理)：<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. 若是与父母双方同行，请提供一套三方亲属关系证明的公证文件。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. 若是与父母双方中的其中一方同行，请提供一套三方亲属关系证明公证文件、不前往旅行的一方还要出具一套同意书的公证。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. 若是与父母以外的非直系亲属同行，请请提供一套三方亲属关系证明公证文件、一套父母双方同意书的公证文件。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. 上述公证文件均需以孩子为主申请人。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. 若申请人是学生，请提供学校准假证明信，需使用学校正规抬头纸打印的英文信一份，内容包括：学校名称、学生所在系或班级、旅行时间、系领导或校长的签字以及电话、联系地址，并需注明担保申请人按期回国后继续学业。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6.申请人如果为暂住人员 需提供暂住证复印件(半年以前开始生效，如不足半年请提供旧暂住证或当地公安局、居委街道出具的证明信原件，具体国家具体要求，请咨询确认)<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7.申请人若为退休人员 无需中方公司资料这一项，只需要提供退休证原件 （如尚未办理退休证必须提供原单位出具的内退证明）。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;8.申请人若为家庭主妇 需提供家庭主妇证明原件（当地居委会出具，证明其家庭主妇身份；一个签证一份<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9.申请之前，必须在中国居住2年以上<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170413_073129.jpg\" style=\"width: 800px; height: 532px\" /><br />\r\n<br />\r\n<strong>办理流程</strong><br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;办理新西兰旅游签证，无论采取哪一种方式，是委托代办，还是自己直接办理，一般需要经过下列几个程序：<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(l)递交有效的护照。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(2)递交与新西兰旅游签证申请事由相关的各种证件，例如有关自己出生、婚姻状况、学历、工作经历等的证明。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (3)填写并递交签证申请表格。签证不同，表格也不同，多数要用外文填写、同时缴付本人照片。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(4)同前往国驻华大使馆或领事馆官员会见。有的国家规定，凡移民申请者必须面谈后，才能决定；也有的国家规定，申请非移民签证也必须面谈。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (5)大使馆或者领事馆，将填妥的各种签证申请表格和必要的证明材料，呈报国内主管部属门审查批准。有少数国家的使领馆有权直接发给签证，但仍须转报国内备案。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (6)前往国家的主管部门进行必要的审核后，将审批意见通知驻华使领馆。如果同意，即发给签证。如果拒绝，也会通知申请者。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (7)缴纳签证费用。一般来说，递交签证申请的时候就要先缴纳费用，也个别国家是签证申请成功的时候才收取费用。一般而言，移民签证费用略高，非移民签证费用略低。也有些国家和地区的签证是免费的。<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170413_073150.jpg\" style=\"width: 800px; height: 513px\" /></span><br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n', '', 1, 1, '2017-04-12 17:24:01', '2017-05-03 09:50:23', '0000-00-00 00:00:00', 0, 21, '', '', '', ''),
(22, 91, '74,77,91', 0, 1, '日本旅游签证', '', '<span style=\"font-size: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 日本个人旅游签证是前往日本必须的旅游签证。为了提高签发效率，日本使领馆简化了签发手续，并且规定：除外交签证外，其余签证均由日本驻华使领馆指定的代办机构代理，旅游签证由指定旅行社代理，不接受个人申请。<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170414_123254.jpg\" style=\"width: 800px; height: 557px\" /><br />\r\n<br />\r\n<strong>申请条件</strong><br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 原则上，如果签证申请人具备下列所有条件，符合要求即予以发给签证。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. 申请人持有有效护照，并拥有回国或居住国的再入境权利及资格。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. 提出的申请资料真实且符合规定。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. 申请人在日本将从事的活动或身份、地位及停留时间符合出入国及难民认定法（1951年政令第319号，以下称「入管法」）规定的在留资格及停留时间。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4．申请人不符合入管法第5条第1项各条的任何一项。<br />\r\n<br />\r\n<strong>注：</strong>入管法第5条第1项：符合下列各款情况之一的外国人不得进入日本。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第1款：有关传染病预防及传染病患者医疗的法律（1998年法律第114号）所规定的一类传染病、二类传染病或指定传染病（仅限于根据该法第 7条规定、根据政令规定，适用该法第19条或第20条规定者）的患者（包含该法第8条规定的一类传染病、二类传染病或指定传染病患者）及有新的传染症状者；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第2款：精神保健及精神障碍者福利相关法律（1950年法律第122号）规定的精神障碍者；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第3款：贫困者、流浪者等生活上有可能成为地方公共团体负担者；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第4款：违反日本或日本以外国家的法律，被处以1年以上徒刑或监禁或受相当于这些刑罚处罚的人。<br />\r\n<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170414_123307.jpg\" style=\"width: 800px; height: 476px\" /><br />\r\n<br />\r\n<br />\r\n<strong>申请流程</strong><br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 为了提高签发效率，日本使领馆简化了签发手续，并且规定：除外交签证外，其余签证均由日本驻华使领馆指定的代办机构代理，旅游签证由指定旅行社代理，不接受个人申请。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 所以在申请日本签证时，申请人须先电话咨询代办机构或旅行社，了解需要准备的具体资料并送交代办机构即可，无须亲自去使领馆排队申请。<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170414_123320.jpg\" style=\"width: 800px; height: 442px\" /><br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170414_123341.jpg\" style=\"width: 800px; height: 490px\" /><br />\r\n<br />\r\n<strong>&nbsp;</strong></span><br />\r\n<br />\r\n', '', 1, 1, '2017-04-12 17:24:23', '2017-05-03 09:49:43', '0000-00-00 00:00:00', 0, 22, '', '', '', ''),
(23, 37, '37', 0, 1, '澳洲留学签证', '', '<span style=\"font-size: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 澳大利亚的教育质量具有一流水准，高等教育事业十分发达，有大批高等院校，培养了大批优秀人才。全国有38所大学及230多所专科技术学院。这些大学和专科技术学院几乎都是政府公立学校(一所私立大学除外)，其教育体制由所在州政府管辖，因此行政体系各州略有差别，但基本上教育质量是由澳大利亚联邦政府控制管理，所以各校都能保持平均但同时又较高的教育质量。各学校的学历文凭，是被各州相互认同且全国通行的。澳大利亚的学历资格，被世界各国包括我国所广泛承认。<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170412_112645.jpg\" style=\"width: 498px; height: 321px\" />&nbsp;<br />\r\n<br />\r\n<strong>澳大利亚教育系统分为五大部分，它们是：<br />\r\n<br />\r\n　　 </strong>1、大学；<br />\r\n　　&nbsp;&nbsp;&nbsp;&nbsp; 2、由技术与继续教育学院(TAFE)构成的职业培训系统；<br />\r\n　　&nbsp;&nbsp;&nbsp;&nbsp; 3、为海外留学生提供英语补习课程的英语补习学校(ELICOS)；<br />\r\n　　&nbsp;&nbsp;&nbsp;&nbsp; 4、开设商业、饭店管理、航空学课程的私立学校；<br />\r\n　　&nbsp;&nbsp;&nbsp;&nbsp; 5、小学和中学。<br />\r\n<br />\r\n<strong>办理流程：</strong><br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 申请学校&rarr;获得入学通知书&rarr;准备签证材料&rarr;递交签证&rarr;签证预评估通过&rarr;缴费获得E-COE&rarr;体检&rarr;申请正式签证&rarr;获签。<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170414_100048.jpg\" style=\"width: 511px; height: 463px\" /><br />\r\n<br />\r\n<strong>澳洲留学的六大优势：</strong><br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>一、 舒适安全的学习生活环境</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1、 好气候，小时差，易于适应与联络<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2、 远离战争和疫情<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3、 犯罪率低，安全有保障<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4、 经济发达，生活水准高<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp; <strong>二、 包容性强的社会环境</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1、 华人地位普遍居于中等以上<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2、 移民政策宽松，标准明晰<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;<strong> 三、优越的教育制度</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.教育系统仅次美、英，排名世界第三<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. 政府制度保护国际学生利益<br />\r\n<br />\r\n&nbsp;&nbsp;<strong>&nbsp;&nbsp; 四、低失业率，高工资<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; 五、优厚会福利制度<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;六、留学签证政策放宽<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170414_102516.jpg\" style=\"width: 549px; height: 327px\" /></strong></span><br />\r\n<br />\r\n<br />\r\n<br />\r\n', '', 1, 1, '2017-04-12 17:24:48', '2017-05-02 17:20:35', '0000-00-00 00:00:00', 0, 23, '', '', '', ''),
(24, 37, '37', 0, 1, '加拿大留学+工作+移民直通车', '', '<br />\r\n<span style=\"font-size: 14px\"><img alt=\"\" src=\"/upload/other/images/20170412_113343.jpg\" style=\"width: 394px; height: 272px\" />&nbsp;&nbsp;&nbsp;&nbsp; <img alt=\"\" src=\"/upload/other/images/20170502_072909.jpg\" style=\"width: 405px; height: 250px\" /><br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_072040.jpg\" style=\"width: 100px; height: 42px\" /></span><br />\r\n<div>\r\n	<span style=\"font-size: 14px\">加拿大留学+工作+移民项目是，为了解决现在很多留学到海外的孩子遇到的现实问题：<br />\r\n	&amp;&nbsp; 孩子英文成绩不高，没有相关工作经验，怎么移民？<br />\r\n	&amp;&nbsp; 孩子想去国外学习和生活，但现在很多老牌的移民国家已经关掉了留学移民的政策，导致留学后怎么留下？<br />\r\n	&amp;&nbsp; 如何在留学国找到合适的工作？<br />\r\n	&amp;&nbsp; 现在留学费用年年上涨，最后还不一定拿到毕业文凭，以后怎么办？<br />\r\n	&amp;&nbsp; 留学以后再办移民，又多了一笔费用，移民成本加高，怎么办？<br />\r\n	<br />\r\n	如果您有以上这些问题，那选择加拿大留学+工作+移民项目是您不二的选择。</span></div>\r\n<span style=\"font-size: 14px\"><img alt=\"\" src=\"/upload/other/images/20170502_072109.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n&amp; &nbsp;<strong>办理周期短</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BC省、萨省移民局要求最低只要在当地完成8 个月的课程学习，只需在BC 省、萨省全职工作一年即可申请省提名移民，约24-30个月左右便可拿到枫叶卡。<br />\r\n&amp;&nbsp; <strong>申请要求极低</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 高中毕业即可，可以直接录取，也可无语言成绩双录。雅思6 分或同等水平即可直接录取（如雅思5.5 只需参加一期语言强化课程即可直入专业课）。<br />\r\n&amp;&nbsp; <strong>提供真实工作</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BC 省、萨省特快学习--工作--移民一条龙项目真实工作，真实工资，24 个月完成PNP 省提名<br />\r\n&amp; &nbsp;<strong>学费极低</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 学费总计1.3-1.5 万加币（不同专业课费略有不同）。<br />\r\n&amp; &nbsp;<strong>申请过程极为省力---全程跟踪VIP&nbsp;服务</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 包括报名、学习中的追踪服务、当地接待接机，找房买菜。毕业后申请工作签证、三个月内保证找到工作、工作中的追踪服务、申请BC 省、萨省提名、申请联邦移民签证直到拿到枫叶卡。<br />\r\n&amp; &nbsp;<strong>非一次性全额收款</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;采用阶段式收费方式，按完成的步骤分期收费，详见合同付费条款。<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_072405.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;&nbsp; 雅思每门4.5分<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;&nbsp; 高中学历<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170503_101737.jpg\" style=\"width: 100px; height: 42px\" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;&nbsp; 留学咨询<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;&nbsp; 帮助客户准备申请学校材料<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;&nbsp;&nbsp;申请学校&amp;收到学校通知<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&amp;&nbsp; 收到使馆准签信<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;&nbsp; 订机票、安排住宿<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;&nbsp; 开始留学<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;&nbsp; 毕业后发offer<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;&nbsp; 申请工作签证<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;&nbsp; 申请枫叶卡<br />\r\n<strong><img alt=\"\" src=\"/upload/other/images/20170502_072315.jpg\" style=\"width: 100px; height: 42px\" /></strong><br />\r\n&amp;&nbsp; 加拿大不列颠哥伦比亚理工大学 &nbsp;British Columbia Institute of Technology（简称BCIT）<br />\r\n位于加拿大BC 省本纳比市，是一所提供应用技术和高等教育的公立学校。BCIT 于1964 年建校，是加拿大目前规模最大的综合性应用理工大学。BCIT 下设运输分院、计算机分院、制造与电子及<br />\r\n机械分院、卫生科学分院、商学院、建筑工程及环境分院、远程教育分院、教学与学习中心、研究生分院和应用研究中心，共有四百多个专业与方向。BCIT 拥有两千多名教职员工，其中包括一支双师型的教工队伍。BCIT 现有约五万五千名在校生，年度总预算为二亿二千万加元。<br />\r\n&nbsp;<br />\r\n创办时间：1964&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n类别：公立大学<br />\r\n学校类型：综合、理工<br />\r\n所属地区：BC 省<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170412_114137.png\" style=\"width: 294px; height: 404px\" /><br />\r\n<br />\r\n&amp;&nbsp; 兰加拉学院 &nbsp;Langara College<br />\r\n加拿大盛誉的公立院校，创办于1965 年，处于温哥华市中心地区。该校以师资获奖多，学生素质高，以及高比例的大学升学率而远近闻名，每年为1,9000 名学生提供学习培训的机会，国际学生每年400人，还有半日制暑期就读英语作为第二语言（ESL）课程的学生200 名。专业有：会计，商业金融与投资管理，计算机信息系统，展示和设计，美术，国际商务，新闻学，图书馆技术，营销与销售，护理学，专业电脑科技，娱乐设施管理，娱乐活动组织领导，小型企业开发，包括合作教育与实习的证书与结业证,应用计算机科技、加拿大研究、古典研究、商学、计算机科学、工程学(1 年)、环境科学、物理学等。<br />\r\n&nbsp;<br />\r\n创办时间：1965&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n类别：公立大学<br />\r\n学校类型：综合<br />\r\n所属地区：BC 省<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170412_114210.png\" style=\"width: 480px; height: 346px\" /><br />\r\n<br />\r\n&amp;&nbsp; 萨省理工学院 &nbsp;Saskatchewan Polytechnic<br />\r\n萨省理工学院是加拿大一所公立多科性工学院，始建于1959 年，在萨斯喀切温省有四个分校区。萨省理工学院，原名萨省应用科技学院，2014 年9 月24 日改为现名。该校是经国家认证的卓越技能与技术培训中心，提供一年制的毕业证书课程和两年制的证书课程，课程众多，可供学生任意选择。具体课程有：会计学、高级护理、农业机器技术、自动服务技术、基生物科技、建筑系统专家、工商管理、商业学、商业财政服务、商业市场、商业计划、计算机科学、计算机网络技术、计算机工程技术、土木工程、化学技术、细胞技术、数码平面造型设计、美学、环境工程技术、电子工程技术、食品服务、电影、视频与新媒体、健康信息管理等。<br />\r\n&nbsp;<br />\r\n创办时间：1959 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n类别：公立大学<br />\r\n学校类型：综合、理工<br />\r\n所属地区：萨省<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170412_114237.png\" style=\"width: 677px; height: 451px\" /><br />\r\n<br />\r\n&amp;&nbsp; 东南大学 &nbsp;southeast collage<br />\r\n面积20000 平方公里有多个校园和学习中心，遍布70 多个社区，是整个地区和周围的&ldquo;第一民族&rdquo;社区。东南大学能够提供全职或兼职教育学生在交易,成人基本教育、医疗、护理、早期儿童教育,和农业重点课程等。通过与高等院校合作,大学提供了各种各样的职业,职业和学术项目以满足萨斯喀彻温省东南部的经济要求。此外,大学是许多业务和行业利益相关者通过提供大量业务,安全,和工业项目和课程。校区分布在Assiniboia Estevan Moosomin Weyburn 等城市.东南大学是骄傲的教练选择在萨斯喀彻温省东南部,大约8000 学习者和每年生产超过5000毕业生。大学超过1900 万美元有助于该地区的GDP 和提供创新和灵活的编程,鼓励学生学习。</span><br />\r\n<br />\r\n', '', 1, 1, '2017-04-12 17:30:28', '2017-05-12 11:18:00', '0000-00-00 00:00:00', 0, 24, '', '', '', ''),
(37, 0, '', 0, 1, '加拿大投资移民新风向大型全国移民巡展', '', '<img alt=\"\" src=\"/upload/other/images/20170704_112711.jpg\" style=\"width: 793px; height: 1200px;\" />', '', 1, 1, '2017-05-03 18:39:44', '2017-07-04 17:27:27', '0000-00-00 00:00:00', 0, 38, '', '', '', ''),
(38, 41, '37,41', 0, 1, '新加坡留学签证', '', '<span style=\"font-size: 14px\">新加坡留学签证办理的事项是所有到新加坡留学的人需要知道的一件非常重要的事。新加坡留学签证办理流程很规范，大家只要准备好相关材料到新加坡大使馆就可以办理了。下面便是整理好的关于新加坡留学签证办理流程的相关信息。<br />\r\n&nbsp;<img alt=\"\" src=\"/upload/other/images/20170504_081812.jpg\" style=\"width: 600px; height: 399px\" /><br />\r\n新加坡留学签证办理有两种情况：<br />\r\n&nbsp;<br />\r\n一种是向大使馆递表，批准前学生要到使馆面试；<br />\r\n&nbsp;<br />\r\n另一种是在新加坡办返签证，一般由中介公司或学校代办，学生无须面试。<br />\r\n&nbsp;<br />\r\n1、担保人：申请人申请学生准证必须自行担保，即把担保金交到新加坡驻华使馆。不需要另找担保人。<br />\r\n2、课程：申请新的学生准证只限于私立学校所设语言，商务，工艺和艺术课程。学生必须自己先向学校提出申请入学。每项新的课程都必须重新提出申请。<br />\r\n3、所需呈上的资料与文件：请按以下次序整理申请资料。缺少以下任何资料，文件，或者表格填写不齐全将会被拒签。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; A、近期二寸相片三张(彩色或黑白都可)；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; B、学校的录取通知；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C、已正式填好的第16号文件原件三份，并附上中文中国联络地址，邮编及电话；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D、已正式填好的第V36号文件原件三份；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; E、已正式填好的第V39号文件原件三份；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; F、已由学校填好的第(E)5号文件；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; G、由新加坡教育部提供给学校的批准授课函复印件；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; H、已填好的第IMM(E)555号记录修正卡一份；<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; L、申请人的银行存款证明公证书，出生证明公证书，最高学历公证书，成绩单公证书及其父母结婚公证书的复印件并附上英文。<br />\r\n上述公证书一定要由申请人所在地公证处公证并由中国外交部领事司认证。<br />\r\n4、面试：申请人必须能到新加坡驻华使馆面试(材料呈交后约一个半月)，届时请带下列文件的原件：<br />\r\n公证书，身份证，毕业证书，成绩单，父母结婚证及银行存折、存单。若无身份证，请带户口本。父母结婚证遗失须由父母工作单位开发证明。其他文件遗失须由有关单位开发证明。面试后约两、三个月，学校将会收到书面通知申请结果。请直接与学校联系并避免向使馆挂电询问。<br />\r\n5、担保金：已被批准的申请人将会收到新加坡驻华使馆的通知到使馆缴交三万元人民币现金(RMB30，000)的担保金。在没收到使馆通知前，请勿直接到使馆要求缴交担保金。担保金将在学生回国后由使馆通知学生亲自到使馆取回。<br />\r\n6、手续费：学生准证的收费为每年40元新币。入境签证的收费为每年20元新币。入境签证将于学校确定开学日期前四个星期签发。入境签证手续在新加坡驻华使馆办理。<br />\r\n7、呈交地点及时间：凡是申请上述课程者都必须向新加坡驻华使馆学生准证处提出申请。请将填好的文件及上述有关资料由学校或申请按如下地址邮寄或手送：<br />\r\n新加坡驻华使馆学生准证处收<br />\r\n&nbsp;<br />\r\n地址：中国北京建国门外秀水北街1号<br />\r\n&nbsp;<br />\r\n邮编：100600<br />\r\n&nbsp;<br />\r\n对外办公时间：周一至周五上午：9：00-12：00，通常办理时间为3至6个月。</span><br />\r\n<img alt=\"\" src=\"/upload/other/images/20170504_081832.jpg\" style=\"width: 600px; height: 383px\" />', '', 1, 1, '2017-05-04 14:06:05', '2017-05-04 14:19:55', '0000-00-00 00:00:00', 0, 35, '', '', '', ''),
(29, 43, '37,43', 0, 1, '美国留学签证', '无论公费留学还是自费留学，美国都是大家心目中的首选之地。', '<span style=\"font-size: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 无论公费留学还是自费留学，美国都是大家心目中的首选之地。当然，到美国留学的费用也可以说是最高的。据最新统计，美国许多私立大学1年的费用已超过3万美元，一些名校的收费则更加昂贵。虽然，美国的普通公立大学学费不算太贵，1年7000-8000美元，很少超过1万，但是，如果把几年学费换算成人民币，也得超过20万。所以，如果你没有申请到奖学金，没有雄厚的经济实力作后盾根本不行。<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170413_071835.jpg\" style=\"width: 800px; height: 500px\" /><br />\r\n<br />\r\n选择去美国的理由<br />\r\n<br />\r\n<strong>学校：</strong><br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 美国是世界上大学数量最多的国家，各类大学加起来有1万所之多，其中，有2000多所受我国教育部的认证。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 美国教育学制与我国学制相仿，美国初等教育和中等教育12年，高等教育4年，研究生教育2- 4年，总计学程为20年左右。儿童一般6岁上小学，通常在18岁念完高中。进入高等学校学习的，22岁可本科毕业，取得学士学位。进研究生院学习的，24岁左右可获得硕士学位，26岁左右可获得博士学位。<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170413_071846.jpg\" style=\"width: 800px; height: 600px\" /><br />\r\n<br />\r\n<strong>美国留学费用</strong><br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 一般私立大学学费每年约为1.7万- 2.4万美元，公立大学学费每年约为9000-1.4万美元。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 美国留学经济担保提供至少100万元人民币以上的经济担保才行。<br />\r\n<br />\r\n<strong>美国留学签证</strong><br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 自&ldquo;9&amp;#8226;11&rdquo;恐怖事件以后，美国对留学签证采取了更为严厉的管制措施，并且在国内建立了一张国际学生追踪网，以保证国内安全。但是，即便这样，申请的人数依然不减。<br />\r\n留学打工：可以。<br />\r\n<br />\r\n<strong>提示：虽然美国的教育先进，但也存在参差不齐的现象，要小心骗人的&ldquo;野鸡大学&rdquo;，特别是那些廉价兜售MBA文凭的&ldquo;大学&rdquo;。另外，也要把申请美国签证的高难度(对学习MBA的签证更难)考虑进去。<br />\r\n<br />\r\n<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170413_071940.jpg\" style=\"width: 800px; height: 500px\" /></strong></span>', '其他签证', 1, 1, '2017-04-12 18:35:25', '2017-05-02 17:20:13', '0000-00-00 00:00:00', 0, 29, '', '', '', '');
INSERT INTO `productinfo` (`id_prodinfo`, `id_proddir`, `dirtree`, `id_hr`, `lang`, `title`, `intro`, `content`, `tag`, `dele`, `isnew`, `indate`, `modate`, `deldate`, `browsecount`, `ordernum`, `pagetitle`, `pagekey`, `pagetag`, `pagedesc`) VALUES
(30, 39, '37,39', 0, 1, '英国留学签证', '正统英语国家、悠久的历史文明、浓郁的文化氛围、安全的校园环境和严格有效的教育管理体制，成就了英国作为传统教育输出大国的地位。', '<br />\r\n<span style=\"font-size: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 正统英语国家、悠久的历史文明、浓郁的文化氛围、安全的校园环境和严格有效的教育管理体制，成就了英国作为传统教育输出大国的地位。虽然留学英国的花费很高，一般人望尘莫及，不过，因为英国的学制时间短，比美国少1年，这无形中就省下了一笔开支，再加上可以合法打工，所以，有一定积蓄的家庭一般都愿意把英国作为留学的首选。<br />\r\n<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170414_122913.jpg\" style=\"width: 800px; height: 496px\" /><br />\r\n<br />\r\n<br />\r\n<strong>选择留学英国的理由</strong><br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 文凭含金量高，国际承认，留学生活浪漫丰富，物有所值。<br />\r\n<br />\r\n<strong>英国学校</strong><br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 英国现有180多所从事高等教育的院校，提供优良的学习环境和多种专业课程，颁发国际公认的文凭。此外，各个院校分别有自己的优势、特点及特长专业。<br />\r\n<br />\r\n<strong>英国教育学制</strong><br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 小学学制为6年，中学教育7年，在18岁通过高级普通教育证书考试或同等水平考试(HNC／HND)后，进入高等教育阶段。<br />\r\n需要注意的是，英国学生16岁以后的2年A level教育毕业水平高于中国的3年高中教育毕业水平，所以，也就不难理解他们的大学学制是3年的原因了。<br />\r\n从总体上看，中国的小学教育时间与英国一样，同为6年，而中国的中学教育(3年初中＋3年高中)却比英国少了1年，这就是为什么中国高中毕业生要必须先读预科，才可以上英国的大学的原因。英国的学士学位3年，硕士1年。<br />\r\n<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170414_123133.jpg\" style=\"width: 800px; height: 600px\" /><br />\r\n<br />\r\n<br />\r\n<strong>英国留学费用</strong><br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 每年的学费加生活费平均约为17万元人民币。具体来看，英国语言学校学费相差很大，每周学费从100英镑到300英镑不等；大学每年学费从6000英镑- 1万英镑不等(人民币7万-12万)；研究生课程平均学费6500- 9950英镑(人民币8万-12万)；全日制MBA平均学费7000-1.15万英镑(人民币8万- 14万)。留学生每月生活费约500-600英镑，一年的生活费用大致在5万-6万人民币。(1英镑相当于12元人民币)<br />\r\n<br />\r\n<strong>英国留学经济担保</strong><br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 把留学的年数乘以15万-20万人民币／年即可得出。一般来说，读本科需要出具至少50万元以上的存款证明。<br />\r\n<br />\r\n<strong>英国留学签证</strong><br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 英国吸收中国留学生的态度相当积极，尤其是对中学生和读大学预科的，只要符合条件，签证不会很难。当然，和美国一样，英国的签证官对有没有移民倾向也是非常在意的。<br />\r\n<br />\r\n<strong>英国留学打工</strong><br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;就读6个月以上课程的，每周可打工20小时，每小时5-8英镑，假期可全天打工(英国假期比较多，每年至少3个月以上)。<br />\r\n<br />\r\n<strong>提示：英国的语言学校质量参差不齐，要特别注意，最保险的办法就是选择英国文化委员会推荐的语言学校。另外，不能把打工作为解决留学费用的手段，因为打工收入仅能够生活费用的支出，学费还是要靠家里负担的。况且，在英国学习并不轻松，尤其是研究生课程非常紧张，除假期外，平时很难抽出时间打工。<br />\r\n<br />\r\n<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170414_123002.jpg\" style=\"width: 800px; height: 539px\" /></strong></span><br />\r\n', '其他签证', 1, 1, '2017-04-12 18:38:49', '2017-05-02 17:20:02', '0000-00-00 00:00:00', 0, 30, '', '', '', ''),
(31, 42, '37,42', 0, 1, '新西兰留学签证', '众所周知，新西兰是英联邦的成员国之一，理所当然的，教育就沿袭了英式的教育体制。英国的教育体系经过几百年的传承沿革，相当的完善和复杂，并且也具有非常大的灵活性。', '<p>\r\n	<span style=\"font-size: 14px\"><strong>优势一：英语国家、英制教学</strong></span></p>\r\n<p>\r\n	<span style=\"font-size: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 众所周知，新西兰是英联邦的成员国之一，理所当然的，教育就沿袭了英式的教育体制。英国的教育体系经过几百年的传承沿革，相当的完善和复杂，并且也具有非常大的灵活性。同时，新西兰和中国之间十分友好，学历也是互相承认的，同学们不用担心辛苦留学归来，学历还不被承认。<br />\r\n	<br />\r\n	<br />\r\n	<img alt=\"\" src=\"/upload/other/images/20170414_123545.jpg\" style=\"width: 800px; height: 584px\" /><br />\r\n	<br />\r\n	<br />\r\n	<strong>优势二：经济大国、适宜居住</strong></span></p>\r\n<p>\r\n	<span style=\"font-size: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;新西兰是一个发达的资本主义国家。世界银行已经将新西兰列为世界上最方便营商的国家之一。同时，新西兰也被公认为是&ldquo;世界上最后一片净土&rdquo;，不仅是环境清新、风景如画，更来源于政府的公正廉洁。新西兰对枪支等物品也是有管控的，整个国家人人安居乐业，夜不闭户。相信很多人都希望去这样一个安宁祥和、环境优美的地方居住吧！</span></p>\r\n<p>\r\n	<br />\r\n	<span style=\"font-size: 14px\"><strong>优势三：就业移民两不误</strong></span></p>\r\n<p>\r\n	<span style=\"font-size: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新西兰人才需求量很大，很多职业一直是常年需要人才去支持的！像教师、护理，乃至IT、工程等等职业都非常热门，薪酬也很不错。同学们大可前去留学，读满一年7级以上的课程就能获得一年工签！在这段时间找到心仪的工作，获得雇主的青睐后，移民的机会和几率是很大的哟！<br />\r\n	<br />\r\n	:<br />\r\n	<img alt=\"\" src=\"/upload/other/images/20170414_123601.jpg\" style=\"width: 800px; height: 533px\" /><br />\r\n	<br />\r\n	<br />\r\n	<br />\r\n	<strong>一、私立学校强劲优势。</strong></span></p>\r\n<p>\r\n	<span style=\"font-size: 14px\">① 就业率高，前景广阔。</span></p>\r\n<p>\r\n	<span style=\"font-size: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新加坡作为中国留学生首要考虑的亚洲留学优势国家，咨询率一直居高不下，这与新加坡私立大学的实操性课程设置密切相关。新加坡的私立大学最初成立的宗旨就是为了更好的为新加坡这个国际化大融合的国家服务，发展国家经济。因此，设立了很多全球热门的专业供学生选择。如：酒店管理、金融、物流、计算机、环境工程等专业。新加坡私立大学不但拥有一流的教育水准，也培养了社会需求的实用型人才，成为众多理性选择留学国家的家长的首要考虑因素。</span></p>\r\n<p>\r\n	<span style=\"font-size: 14px\">② 黄金跳板，欧美同步。</span></p>\r\n<p>\r\n	<span style=\"font-size: 14px\">&nbsp;&nbsp;&nbsp;&nbsp; 新加坡私立大学的学历及课程受到世界各国的承认，受欢迎度高。选择新加坡私立大学的学生，同时可以考虑新加坡与欧美国家共同开办的双联课程。学生可以自主选择在新加坡完成所有课业，也可以选择跳转第三方欧美国家继续攻读。无论哪种方式，在学生进一步升读硕士课程或者就业面试时，都有强大的优势。</span></p>\r\n<p>\r\n	<br />\r\n	<span style=\"font-size: 14px\"><strong>二、公立大学政府津贴种类多，学费低廉。</strong></span></p>\r\n<p>\r\n	<span style=\"font-size: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新加坡的公立大学，在世界大学排名榜上赫赫有名，所授文凭受全世界高度认可。不仅如此，新加坡政府对公立大学的教育投资也是非常可观，对学生的学费减免甚至有高达80%的优惠政策，大大缩减了学生及家庭对于出国留学的经费投入。</span></p>\r\n<p>\r\n	<span style=\"font-size: 14px\"><img alt=\"\" src=\"/upload/other/images/20170414_123623.jpg\" style=\"width: 800px; height: 500px\" /><br />\r\n	<br />\r\n	<br />\r\n	<strong>三、双语教学、签证率高、较容易拿到绿卡。</strong></span></p>\r\n<p>\r\n	<span style=\"font-size: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;新加坡的语言秉承两种母语，即华语和英语。学生学习期间极容易适应当地的授课方式和生活环境，不会产生强烈的孤独感和陌生感等负面情绪。</span></p>\r\n<p>\r\n	<span style=\"font-size: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新加坡的签证通过率高，一般2-6周即可拿到签证。同时，拥有新加坡当地的公私立大学文凭，毕业后更容易在当地找到工作，拥有丰富的海外工作经验，并在申请加坡绿卡时有强大优势。<br />\r\n	<br />\r\n	<br />\r\n	<br />\r\n	<img alt=\"\" src=\"/upload/other/images/20170414_123636.jpg\" style=\"width: 800px; height: 535px\" /><br />\r\n	<br />\r\n	&nbsp;</span></p>\r\n', '其他签证', 1, 1, '2017-04-12 18:43:16', '2017-05-02 17:19:51', '0000-00-00 00:00:00', 0, 31, '', '', '', ''),
(33, 34, '32,34', 0, 1, '马耳他', '', '<span style=\"font-size: 14px\"><img alt=\"\" src=\"/upload/other/images/20170502_104923.jpg\" style=\"width: 390px; height: 327px\" />&nbsp;&nbsp; <img alt=\"\" src=\"/upload/other/images/20170502_104938.jpg\" style=\"width: 405px; height: 250px\" /><br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_094813.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 马耳他共和国的首都瓦莱塔，是一座欧洲文化名城，至今约500年历史。是全国政治、文化和商业中心。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在这个城池里的街头巷尾，你随时可以看到雄伟的巴洛克式的建筑和泛光灯照耀古堡垒及教堂；古老狭窄街道两旁的各色小店妆点着这个城市；古玩小店，书店及珠宝商行等。漫步瓦莱塔，你会发现每个角落里都有着神秘的历史遗迹。瓦莱塔城布局整齐，是巴罗克式建筑风格与当地建筑形式协调融合的城市，拥有320座具有建筑艺术和历史价值的古建筑，整个城市都为宝贵的人类文化遗产，1980年被联合国教育、科学及文化组织列入世界文化与自然遗产保护名录<br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_094832.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n<strong><img alt=\"\" src=\"/upload/other/images/20170413_093921.jpg\" style=\"width: 800px; height: 600px\" /></strong><br />\r\n<strong><img alt=\"\" src=\"/upload/other/images/20170502_094850.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n<img alt=\"\" src=\"/upload/other/images/20170413_093740.jpg\" style=\"width: 800px; height: 600px\" /><br />\r\n<img alt=\"\" src=\"/upload/other/images/20170502_094904.jpg\" style=\"width: 100px; height: 42px\" /><br />\r\n<img alt=\"\" src=\"/upload/other/images/20170413_093818.jpg\" style=\"width: 800px; height: 600px\" /></strong></span><br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n', '', 1, 1, '2017-04-13 15:31:50', '2017-05-02 17:19:34', '0000-00-00 00:00:00', 0, 34, '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `productpic`
--

CREATE TABLE `productpic` (
  `id_prodpic` int(11) NOT NULL,
  `id_prodinfo` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL DEFAULT '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `siteset`
--

CREATE TABLE `siteset` (
  `id_siteset` int(11) NOT NULL,
  `lang` int(1) NOT NULL DEFAULT '1',
  `title` text NOT NULL,
  `keywords` text NOT NULL,
  `tag` text NOT NULL,
  `description` text NOT NULL,
  `otherheader` text NOT NULL,
  `iscopy` int(1) NOT NULL DEFAULT '0',
  `rmailbox` varchar(50) NOT NULL,
  `smailbox` varchar(50) NOT NULL,
  `smailboxpass` varchar(50) NOT NULL,
  `icp` varchar(25) NOT NULL,
  `mapcode` text NOT NULL,
  `statistics` text NOT NULL,
  `isstyle` varchar(8) NOT NULL,
  `weburl` text NOT NULL,
  `newsnum` int(2) NOT NULL,
  `productnum` int(2) NOT NULL,
  `bannertime` int(11) NOT NULL DEFAULT '3000',
  `pagetransition` varchar(20) NOT NULL DEFAULT 'none'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `siteset`
--

INSERT INTO `siteset` (`id_siteset`, `lang`, `title`, `keywords`, `tag`, `description`, `otherheader`, `iscopy`, `rmailbox`, `smailbox`, `smailboxpass`, `icp`, `mapcode`, `statistics`, `isstyle`, `weburl`, `newsnum`, `productnum`, `bannertime`, `pagetransition`) VALUES
(1, 1, '圣鸿移民', '圣鸿移民', '圣鸿移民', '圣鸿移民', '', 0, 'info@systechn.com', '400-778-5053      ', '', '', '121.391838,31.226643', '', '', 'demo-8.8800.org:6004', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `title`
--

CREATE TABLE `title` (
  `id_title` int(11) NOT NULL,
  `title` varchar(25) NOT NULL,
  `lang` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `title`
--

INSERT INTO `title` (`id_title`, `title`, `lang`) VALUES
(15, 'q', 1);

-- --------------------------------------------------------

--
-- 表的结构 `webmenu`
--

CREATE TABLE `webmenu` (
  `id_webmenu` int(11) NOT NULL,
  `lang` int(1) NOT NULL DEFAULT '1',
  `name` varchar(25) NOT NULL,
  `url` text NOT NULL,
  `dele` int(1) NOT NULL DEFAULT '1',
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `webmenu`
--

INSERT INTO `webmenu` (`id_webmenu`, `lang`, `name`, `url`, `dele`, `fatherid`, `level`, `ordernum`) VALUES
(1, 1, '网站首页----HOME', '/', 1, 0, 1, 8),
(2, 1, '关于我们----About us', '/about/aboutus.php', 1, 0, 1, 7),
(3, 1, '产品中心----Products', '/product/products.php', 1, 0, 1, 6),
(4, 1, '新闻中心----News', '/news/news.php', 1, 0, 1, 5),
(5, 1, '联系我们----Contact us', '/contactus/contactus.php', 1, 0, 1, 4),
(11, 1, '公司介绍----Introduction', '/about/intro.php', 1, 2, 2, 0),
(12, 1, '关于我们----About us', '/about/aboutus.php', 1, 2, 2, 0),
(13, 1, '总经理致辞----CEO\'s Message', '/about/ceomessage.php', 1, 2, 2, 0),
(14, 1, '产品中心----Products', '/product/products.php', 1, 3, 2, 0),
(15, 1, '资料下载----PDF download', '/product/productpdf.php', 1, 3, 2, 0),
(16, 1, '我们的工厂----Our factory', '/product/ourfactory.php', 1, 3, 2, 0),
(17, 1, '公司新闻----Company news', '/news/companynews.php', 1, 4, 2, 0),
(18, 1, '产品新闻----Product news', '/news/productnews.php', 1, 4, 2, 0),
(19, 1, '加入我们----Join us', '/news/joinus.php', 1, 4, 2, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backmenu`
--
ALTER TABLE `backmenu`
  ADD PRIMARY KEY (`id_backmenu`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`id_dept`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id_exam`);

--
-- Indexes for table `hr`
--
ALTER TABLE `hr`
  ADD PRIMARY KEY (`id_hr`);

--
-- Indexes for table `layout`
--
ALTER TABLE `layout`
  ADD PRIMARY KEY (`id_layout`);

--
-- Indexes for table `layoutpic`
--
ALTER TABLE `layoutpic`
  ADD PRIMARY KEY (`id_layoutpic`);

--
-- Indexes for table `newsdir`
--
ALTER TABLE `newsdir`
  ADD PRIMARY KEY (`id_newsdir`);

--
-- Indexes for table `newsinfo`
--
ALTER TABLE `newsinfo`
  ADD PRIMARY KEY (`id_newsinfo`);

--
-- Indexes for table `newspic`
--
ALTER TABLE `newspic`
  ADD PRIMARY KEY (`id_newspic`);

--
-- Indexes for table `pageset`
--
ALTER TABLE `pageset`
  ADD PRIMARY KEY (`id_pageset`);

--
-- Indexes for table `pagesetpic`
--
ALTER TABLE `pagesetpic`
  ADD PRIMARY KEY (`id_pagesetpic`);

--
-- Indexes for table `pavy1`
--
ALTER TABLE `pavy1`
  ADD PRIMARY KEY (`id_pavy1`);

--
-- Indexes for table `pavy2`
--
ALTER TABLE `pavy2`
  ADD PRIMARY KEY (`id_pvay2`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post`);

--
-- Indexes for table `productdir`
--
ALTER TABLE `productdir`
  ADD PRIMARY KEY (`id_proddir`);

--
-- Indexes for table `productdir3`
--
ALTER TABLE `productdir3`
  ADD PRIMARY KEY (`id_proddir`);

--
-- Indexes for table `productinfo`
--
ALTER TABLE `productinfo`
  ADD PRIMARY KEY (`id_prodinfo`);

--
-- Indexes for table `productpic`
--
ALTER TABLE `productpic`
  ADD PRIMARY KEY (`id_prodpic`);

--
-- Indexes for table `siteset`
--
ALTER TABLE `siteset`
  ADD PRIMARY KEY (`id_siteset`);

--
-- Indexes for table `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`id_title`);

--
-- Indexes for table `webmenu`
--
ALTER TABLE `webmenu`
  ADD PRIMARY KEY (`id_webmenu`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `backmenu`
--
ALTER TABLE `backmenu`
  MODIFY `id_backmenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- 使用表AUTO_INCREMENT `dept`
--
ALTER TABLE `dept`
  MODIFY `id_dept` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- 使用表AUTO_INCREMENT `exam`
--
ALTER TABLE `exam`
  MODIFY `id_exam` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hr`
--
ALTER TABLE `hr`
  MODIFY `id_hr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- 使用表AUTO_INCREMENT `layout`
--
ALTER TABLE `layout`
  MODIFY `id_layout` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- 使用表AUTO_INCREMENT `layoutpic`
--
ALTER TABLE `layoutpic`
  MODIFY `id_layoutpic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- 使用表AUTO_INCREMENT `newsdir`
--
ALTER TABLE `newsdir`
  MODIFY `id_newsdir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- 使用表AUTO_INCREMENT `newsinfo`
--
ALTER TABLE `newsinfo`
  MODIFY `id_newsinfo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
--
-- 使用表AUTO_INCREMENT `newspic`
--
ALTER TABLE `newspic`
  MODIFY `id_newspic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- 使用表AUTO_INCREMENT `pageset`
--
ALTER TABLE `pageset`
  MODIFY `id_pageset` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `pagesetpic`
--
ALTER TABLE `pagesetpic`
  MODIFY `id_pagesetpic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `pavy1`
--
ALTER TABLE `pavy1`
  MODIFY `id_pavy1` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- 使用表AUTO_INCREMENT `pavy2`
--
ALTER TABLE `pavy2`
  MODIFY `id_pvay2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;
--
-- 使用表AUTO_INCREMENT `post`
--
ALTER TABLE `post`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- 使用表AUTO_INCREMENT `productdir`
--
ALTER TABLE `productdir`
  MODIFY `id_proddir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- 使用表AUTO_INCREMENT `productdir3`
--
ALTER TABLE `productdir3`
  MODIFY `id_proddir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- 使用表AUTO_INCREMENT `productinfo`
--
ALTER TABLE `productinfo`
  MODIFY `id_prodinfo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- 使用表AUTO_INCREMENT `productpic`
--
ALTER TABLE `productpic`
  MODIFY `id_prodpic` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `siteset`
--
ALTER TABLE `siteset`
  MODIFY `id_siteset` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `title`
--
ALTER TABLE `title`
  MODIFY `id_title` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- 使用表AUTO_INCREMENT `webmenu`
--
ALTER TABLE `webmenu`
  MODIFY `id_webmenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
