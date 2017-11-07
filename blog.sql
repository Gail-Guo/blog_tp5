-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017-11-07 09:18:23
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- 表的结构 `blog_admin`
--

CREATE TABLE `blog_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_username` varchar(45) NOT NULL DEFAULT '' COMMENT '用户名',
  `admin_password` varchar(45) NOT NULL DEFAULT '' COMMENT '登录密码'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='后台管理员表';

--
-- 转存表中的数据 `blog_admin`
--

INSERT INTO `blog_admin` (`admin_id`, `admin_username`, `admin_password`) VALUES
(1, 'a', 'a'),
(2, 'admin', 'h3vPU8JGuF3VS/uxIpjRSw=='),
(3, 'gail', '0000');

-- --------------------------------------------------------

--
-- 表的结构 `blog_arc_tag`
--

CREATE TABLE `blog_arc_tag` (
  `arc_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章标签中间表';

--
-- 转存表中的数据 `blog_arc_tag`
--

INSERT INTO `blog_arc_tag` (`arc_id`, `tag_id`) VALUES
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 1),
(2, 2),
(3, 11),
(4, 11);

-- --------------------------------------------------------

--
-- 表的结构 `blog_article`
--

CREATE TABLE `blog_article` (
  `arc_id` int(11) NOT NULL,
  `arc_title` varchar(45) NOT NULL DEFAULT '' COMMENT '文章标题',
  `arc_author` varchar(45) NOT NULL DEFAULT '' COMMENT '文章作者',
  `arc_digest` varchar(200) NOT NULL DEFAULT '' COMMENT '文章摘要',
  `arc_content` text,
  `sendtime` int(11) NOT NULL DEFAULT '0' COMMENT '发表时间',
  `updatetime` int(11) NOT NULL DEFAULT '0' COMMENT '文章更新时间',
  `arc_click` int(11) NOT NULL DEFAULT '0' COMMENT '点击次数',
  `is_recycle` tinyint(4) NOT NULL DEFAULT '2' COMMENT '是否在回收站，1在回收站2代表不在回收站，默认2',
  `arc_thumb` varchar(100) NOT NULL DEFAULT '' COMMENT '文章缩略图',
  `cate_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `arc_sort` int(11) NOT NULL DEFAULT '100' COMMENT '文章排序'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章表';

--
-- 转存表中的数据 `blog_article`
--

INSERT INTO `blog_article` (`arc_id`, `arc_title`, `arc_author`, `arc_digest`, `arc_content`, `sendtime`, `updatetime`, `arc_click`, `is_recycle`, `arc_thumb`, `cate_id`, `admin_id`, `arc_sort`) VALUES
(1, '后盾人在线视频网站上线啦！', '后盾网深水鱼', '好消息！好消息！后盾人在线视频站上线啦！经过多日的熬夜奋战，后盾人以全新的面貌和大家见面啦！', '<p><span style="font-size:16px;word-wrap: break-word; color: rgb(67, 74, 84); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; white-space: normal; background-color: rgb(255, 255, 255);">大家应该也注意到了，我们同行好多也都有自己的视频站，但是目的不纯的占多数（为了融资，博噱头....水太深不能细说），但是我们不一样，我们仅仅是想用心打造一个纯粹的IT技能学习平台，让喜欢技术的朋友轻松受益，在嘈杂的环境中我们只想安静的干点实事。</span><span style="font-size:16px;word-wrap: break-word; color: rgb(67, 74, 84); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; white-space: normal; background-color: rgb(255, 255, 255);"><br style="word-wrap: break-word;"/>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; 网站已经上线了，但是目前视频课程还没有发布完毕，预计将于本周全面搞定。</span><br style="word-wrap: break-word; color: rgb(67, 74, 84); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; white-space: normal; background-color: rgb(255, 255, 255);"/><span style="font-size:16px;word-wrap: break-word; color: rgb(67, 74, 84); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; white-space: normal; background-color: rgb(255, 255, 255);"><br style="word-wrap: break-word;"/>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; 后盾人视频平台上的视频暂时无需注册，无需费用，无广告（这个‘三无’很给力），而且提供高清版打包下载。后盾人视频整理自原来论坛和快学网中发布的视频，在后盾人平台中我们对原来录制的海量视频进行的了筛选和精心分类，让大家更容易找到适合自己的视频进行学习。</span><br style="word-wrap: break-word; color: rgb(67, 74, 84); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; white-space: normal; background-color: rgb(255, 255, 255);"/><span style="font-size:16px;word-wrap: break-word; color: rgb(67, 74, 84); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; white-space: normal; background-color: rgb(255, 255, 255);"><br style="word-wrap: break-word;"/>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; 好了不多说了，大家自己去体验吧！<a href="http://www.houdunren.com/" target="_blank" style="word-wrap: break-word; color: rgb(255, 102, 0); text-decoration-line: none;">www.houdunren.com</a></span><br style="word-wrap: break-word; color: rgb(67, 74, 84); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; white-space: normal; background-color: rgb(255, 255, 255);"/><span style="font-size:16px;word-wrap: break-word; color: rgb(67, 74, 84); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;</span><img src="http://bbs.houdunwang.com/static/image/smiley/tusiji/15.gif" smilieid="189" border="0" alt="" style="word-wrap: break-word; color: rgb(67, 74, 84); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; white-space: normal; background-color: rgb(255, 255, 255); width: 41px; height: 46px;" width="41" height="46"/><span style="font-size:16px;word-wrap: break-word; color: rgb(67, 74, 84); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; white-space: normal; background-color: rgb(255, 255, 255);">动动小手回复一下本帖，就有66个后盾币奖励哦！老铁们别犹豫了！双击666！没毛病！</span><img src="http://bbs.houdunwang.com/static/image/smiley/tusiji/15.gif" smilieid="189" border="0" alt="" style="word-wrap: break-word; color: rgb(67, 74, 84); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; white-space: normal; background-color: rgb(255, 255, 255); width: 37px; height: 45px;" width="37" height="45"/></p>', 1491989851, 1492175397, 4, 2, 'http://blog.com:8080/uploads/20170412/efa83ed677e33be338d3a3de32b95166.jpg', 3, 0, 100),
(2, 'HDCMS2.0发布了，让大家久等了。', '后盾向军', '重点是一切都免费，免费使用、免费视频、免费解答。无论是商业用户还是个人用户100%免费！。', '<p><span style="color: rgb(67, 74, 84); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; background-color: rgb(255, 255, 255);"><img src="http://blog.com:8080/uploads/20170412/435b900f2e806d7b7f35d10818893e7d.jpg"/></span></p><p><span style="color: rgb(67, 74, 84); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; background-color: rgb(255, 255, 255);">后盾网做为业内认真的培训机构，也是唯一拥有开源产品的培训机构，我们始终将技术更新迭代放在第一位。在HDCMS1.0受到众多用户喜欢的基础上，我们开发了HDCMS2.0，拥有更方便的扩展机制，集成微信功能、模块化架构、阿里OSS、微信支付、微信红包、插件机制、自动升级、云模块安装更新....等等前卫的功能。相信会为开发移动/桌面平台应用的中小企业带来福音。</span><br style="word-wrap: break-word; color: rgb(67, 74, 84); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; white-space: normal; background-color: rgb(255, 255, 255);"/><br style="word-wrap: break-word; color: rgb(67, 74, 84); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; white-space: normal; background-color: rgb(255, 255, 255);"/><span style="word-wrap: break-word; font-weight: 700; color: rgb(67, 74, 84); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; background-color: rgb(255, 255, 255);">重点是一切都免费，免费使用、免费视频、免费解答。无论是商业用户还是个人用户100%免费！。</span><br style="word-wrap: break-word; color: rgb(67, 74, 84); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; white-space: normal; background-color: rgb(255, 255, 255);"/><br style="word-wrap: break-word; color: rgb(67, 74, 84); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; white-space: normal; background-color: rgb(255, 255, 255);"/><span style="color: rgb(67, 74, 84); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; background-color: rgb(255, 255, 255);">无论安装或使用中遇到的问题，后盾团队都会认真帮助大家解决。</span><br style="word-wrap: break-word; color: rgb(67, 74, 84); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; white-space: normal; background-color: rgb(255, 255, 255);"/><br style="word-wrap: break-word; color: rgb(67, 74, 84); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; white-space: normal; background-color: rgb(255, 255, 255);"/><span style="color: rgb(67, 74, 84); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; background-color: rgb(255, 255, 255);">团队近期会录制HDCMS开发视频教程，敬请期待。</span></p>', 1491989954, 0, 2, 2, 'http://blog.com:8080/uploads/20170412/435b900f2e806d7b7f35d10818893e7d.jpg', 5, 2, 100),
(3, '后盾网2016羽毛球赛', '后盾武斌', '2016年9月14日，后盾网北京校区举办了秋季羽毛球赛，在校的数百名学员参加了本次活动。大家本着友谊第一，比赛第二的原则，都非常投入，也让自己在紧张的学习中得以放松', '<p><img src="http://blog.com:8080/uploads/20170412/b7f863c8be7ed44ec2f6c94191b906d1.jpg"/></p><p><span style="color: rgb(65, 105, 225); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; font-size: medium; background-color: rgb(255, 255, 255);">2016年9月14日，后盾网北京校区举办了秋季羽毛球赛，在校的数百名学员参加了本次活动。大家本着友谊第一，比赛第二的原则，都非常投入，也让自己在紧张的学习中得以放松</span></p>', 1491990302, 1492155115, 0, 2, 'http://blog.com:8080/uploads/20170412/b7f863c8be7ed44ec2f6c94191b906d1.jpg', 9, 2, 160),
(4, '后盾网2016中秋佳节长城励志行', '后盾武斌', '2016年9月15日， 值中秋佳节之际，后盾网北京校区组织在校学员和部分毕业学员举行长城游活动。后盾的大部分学员都来自外地，此次来长城，圆了不少同学的梦想，在后盾不仅能学到扎实的技术，还能和大家一起参加集体活动，大家都非常开心和兴奋。一起来回顾一下精彩集锦吧！', '<p><img src="http://blog.com:8080/uploads/20170412/b7f863c8be7ed44ec2f6c94191b906d1.jpg"/></p><p><span style="color: rgb(0, 0, 255); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; font-size: medium; background-color: rgb(255, 255, 255);">&nbsp;&nbsp;&nbsp;&nbsp;2016年9月15日， 值中秋佳节之际，后盾网北京校区组织在校学员和部分毕业学员举行长城游活动。后盾的大部分学员都来自外地，此次来长城，圆了不少同学的梦想，在后盾不仅能学到扎实的技术，还能和大家一起参加集体活动，大家都非常开心和兴奋。一起来回顾一下精彩集锦吧！</span></p><p><br/></p>', 1491990379, 1492174853, 0, 2, 'http://blog.com:8080/uploads/20170412/b7f863c8be7ed44ec2f6c94191b906d1.jpg', 9, 0, 190);

-- --------------------------------------------------------

--
-- 表的结构 `blog_attachment`
--

CREATE TABLE `blog_attachment` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `filename` varchar(300) NOT NULL COMMENT '文件名',
  `path` varchar(300) NOT NULL COMMENT '路径',
  `extension` varchar(10) NOT NULL DEFAULT '' COMMENT '类型',
  `createtime` int(10) NOT NULL COMMENT '上传时间',
  `size` mediumint(9) NOT NULL COMMENT '文件大小'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='附件' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `blog_attachment`
--

INSERT INTO `blog_attachment` (`id`, `name`, `filename`, `path`, `extension`, `createtime`, `size`) VALUES
(1, '100.png', '509908fd4b53f4bf124c2c2f09ce6222.png', 'uploads/20170412/509908fd4b53f4bf124c2c2f09ce6222.png', 'png', 1491980109, 13168),
(2, '100.png', 'c87b1c1d2cc6eb1f804cde8e89372bd2.png', 'uploads/20170412/c87b1c1d2cc6eb1f804cde8e89372bd2.png', 'png', 1491980278, 13168),
(3, '56451488617429.jpg', 'efa83ed677e33be338d3a3de32b95166.jpg', 'uploads/20170412/efa83ed677e33be338d3a3de32b95166.jpg', 'jpg', 1491981460, 101092),
(4, 'hdcms.jpg', '435b900f2e806d7b7f35d10818893e7d.jpg', 'uploads/20170412/435b900f2e806d7b7f35d10818893e7d.jpg', 'jpg', 1491981468, 119456),
(5, 'timg.jpeg', '6c1df3d4d3998c3e5c431fb43f8e7342.jpeg', 'uploads/20170412/6c1df3d4d3998c3e5c431fb43f8e7342.jpeg', 'jpeg', 1491981515, 39375),
(6, '100.png', '2a0d3034046e162d25696d74eeda6ccd.png', 'uploads/20170412/2a0d3034046e162d25696d74eeda6ccd.png', 'png', 1491985612, 13168),
(7, '100.png', 'd33f58a6f170eae2ff5dba73fd205a99.png', 'uploads/20170412/d33f58a6f170eae2ff5dba73fd205a99.png', 'png', 1491985645, 13168),
(8, '100.png', '429c03f9280832f26056cdd6ba6a092d.png', 'uploads/20170412/429c03f9280832f26056cdd6ba6a092d.png', 'png', 1491987688, 13168),
(9, '47731487768392.jpg', 'b7f863c8be7ed44ec2f6c94191b906d1.jpg', 'uploads/20170412/b7f863c8be7ed44ec2f6c94191b906d1.jpg', 'jpg', 1491990274, 85229);

-- --------------------------------------------------------

--
-- 表的结构 `blog_cate`
--

CREATE TABLE `blog_cate` (
  `cate_id` int(11) NOT NULL,
  `cate_name` varchar(45) NOT NULL DEFAULT '' COMMENT '栏目名称',
  `cate_pid` int(11) NOT NULL DEFAULT '0' COMMENT '父id',
  `cate_sort` int(11) NOT NULL DEFAULT '100' COMMENT '栏目排序'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目管理';

--
-- 转存表中的数据 `blog_cate`
--

INSERT INTO `blog_cate` (`cate_id`, `cate_name`, `cate_pid`, `cate_sort`) VALUES
(15, '子子栏目1', 14, 20),
(14, '子栏目1', 3, 100),
(4, '随便起个名字吧', 0, 200),
(5, '11', 0, 0),
(3, '哈哈哈', 0, 20),
(2, '娱乐', 2, 100),
(1, '搞笑', 1, 100);

-- --------------------------------------------------------

--
-- 表的结构 `blog_link`
--

CREATE TABLE `blog_link` (
  `link_id` int(11) NOT NULL,
  `link_name` varchar(45) NOT NULL DEFAULT '' COMMENT '友链名称',
  `link_url` varchar(100) NOT NULL DEFAULT '' COMMENT '友链url',
  `link_sort` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '友链排序'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='友链数据表';

--
-- 转存表中的数据 `blog_link`
--

INSERT INTO `blog_link` (`link_id`, `link_name`, `link_url`, `link_sort`) VALUES
(1, '后盾网', 'http://www.houdunwang.com', 100),
(2, '后盾论坛', 'http://bbs.houdunwang.com/portal.php', 100),
(3, '后盾人视频站', 'http://www.houdunren.com', 100);

-- --------------------------------------------------------

--
-- 表的结构 `blog_tag`
--

CREATE TABLE `blog_tag` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(45) NOT NULL DEFAULT '' COMMENT '标签名称'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标签管理';

--
-- 转存表中的数据 `blog_tag`
--

INSERT INTO `blog_tag` (`tag_id`, `tag_name`) VALUES
(1, '框架'),
(2, '学习'),
(3, '视频'),
(4, 'php'),
(5, 'html'),
(11, '运动');

-- --------------------------------------------------------

--
-- 表的结构 `blog_webset`
--

CREATE TABLE `blog_webset` (
  `webset_id` int(11) NOT NULL,
  `webset_name` varchar(45) NOT NULL DEFAULT '' COMMENT '配置项名称',
  `webset_value` varchar(45) NOT NULL DEFAULT '' COMMENT '配置项值',
  `webset_des` varchar(45) NOT NULL DEFAULT '' COMMENT '配置项描述'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='站点配置';

--
-- 转存表中的数据 `blog_webset`
--

INSERT INTO `blog_webset` (`webset_id`, `webset_name`, `webset_value`, `webset_des`) VALUES
(1, 'title', '后盾人 人人做后盾', '网站名称'),
(2, 'email', 'houdunwang@163.com', '站长邮箱'),
(3, 'copyright', 'Copyright @ 2017 后盾网', '版权信息');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_admin`
--
ALTER TABLE `blog_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `blog_arc_tag`
--
ALTER TABLE `blog_arc_tag`
  ADD KEY `fk_table1_blog_article1_idx` (`arc_id`),
  ADD KEY `fk_table1_blog_tag1_idx` (`tag_id`);

--
-- Indexes for table `blog_article`
--
ALTER TABLE `blog_article`
  ADD PRIMARY KEY (`arc_id`),
  ADD KEY `fk_blog_article_blog_cate_idx` (`cate_id`),
  ADD KEY `fk_blog_article_blog_admin1_idx` (`admin_id`);

--
-- Indexes for table `blog_attachment`
--
ALTER TABLE `blog_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `extension` (`extension`);

--
-- Indexes for table `blog_cate`
--
ALTER TABLE `blog_cate`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `blog_link`
--
ALTER TABLE `blog_link`
  ADD PRIMARY KEY (`link_id`);

--
-- Indexes for table `blog_tag`
--
ALTER TABLE `blog_tag`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `blog_webset`
--
ALTER TABLE `blog_webset`
  ADD PRIMARY KEY (`webset_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `blog_admin`
--
ALTER TABLE `blog_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `blog_article`
--
ALTER TABLE `blog_article`
  MODIFY `arc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `blog_attachment`
--
ALTER TABLE `blog_attachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- 使用表AUTO_INCREMENT `blog_cate`
--
ALTER TABLE `blog_cate`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- 使用表AUTO_INCREMENT `blog_link`
--
ALTER TABLE `blog_link`
  MODIFY `link_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `blog_tag`
--
ALTER TABLE `blog_tag`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- 使用表AUTO_INCREMENT `blog_webset`
--
ALTER TABLE `blog_webset`
  MODIFY `webset_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
