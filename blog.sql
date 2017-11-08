-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017-11-08 09:34:12
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
(1, '不要跳着拿东西', '罗志祥', '我知道那是因为我又想起了妈妈说过的那句话。', '<p><span style="font-size:16px;word-wrap: break-word; color: rgb(67, 74, 84); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; white-space: normal; background-color: rgb(255, 255, 255);">窗外辽阔的视野，远方有绿地、高架道路、好多的人和车子 这真是一间我梦想了好久的房子，我终于买下它，在我租了七年的国宅之后，我终于完成了自己的梦想。\r\n我知道那是我脚踏实地、终于完成的梦想。我很骄傲、很安心，因为那是我用心努力，最后得到的结果。\r\n然后我真的就高兴得掉下眼泪，自己都觉得莫名其妙，但我就那么高兴得哭了起来。\r\n我知道那是因为我又想起了妈妈说过的那句话。</span><span style="font-size:16px;word-wrap: break-word; color: rgb(67, 74, 84); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; white-space: normal; background-color: rgb(255, 255, 255);"><br style="word-wrap: break-word;"/>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; 网站已经上线了，但是目前视频课程还没有发布完毕，预计将于本周全面搞定。</span><br style="word-wrap: break-word; color: rgb(67, 74, 84); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; white-space: normal; background-color: rgb(255, 255, 255);"/><span style="font-size:16px;word-wrap: break-word; color: rgb(67, 74, 84); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; white-space: normal; background-color: rgb(255, 255, 255);"><br style="word-wrap: break-word;"/>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;哈哈哈哈哈哈哈哈或或或或或或或或或</span><br style="word-wrap: break-word; color: rgb(67, 74, 84); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; white-space: normal; background-color: rgb(255, 255, 255);"/><span style="font-size:16px;word-wrap: break-word; color: rgb(67, 74, 84); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; white-space: normal; background-color: rgb(255, 255, 255);"><br style="word-wrap: break-word;"/>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; hhhhhhhhhh<a href="http://www.houdunren.com/" target="_blank" style="word-wrap: break-word; color: rgb(255, 102, 0); text-decoration-line: none;">www.houdunren.com</a></span><br style="word-wrap: break-word; color: rgb(67, 74, 84); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; white-space: normal; background-color: rgb(255, 255, 255);"/><span style="font-size:16px;word-wrap: break-word; color: rgb(67, 74, 84); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;</span><img src="http://bbs.houdunwang.com/static/image/smiley/tusiji/15.gif" smilieid="189" border="0" alt="" style="word-wrap: break-word; color: rgb(67, 74, 84); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; white-space: normal; background-color: rgb(255, 255, 255); width: 41px; height: 46px;" width="41" height="46"/><span style="font-size:16px;word-wrap: break-word; color: rgb(67, 74, 84); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; white-space: normal; background-color: rgb(255, 255, 255);">没毛病！</span><img src="http://bbs.houdunwang.com/static/image/smiley/tusiji/15.gif" smilieid="189" border="0" alt="" style="word-wrap: break-word; color: rgb(67, 74, 84); font-family: &quot;Microsoft Yahei&quot;, Simsun, Tahoma; white-space: normal; background-color: rgb(255, 255, 255); width: 37px; height: 45px;" width="37" height="45"/></p>', 1491989851, 1492175397, 4, 2, 'http://blog.com:8080/uploads/20170412/efa83ed677e33be338d3a3de32b95166.jpg', 3, 0, 100),
(2, '哈哈哈哈哈哈哈哈或或或', '111', '重点是一切都免费，免费使用、免费视频、免费解答。无论是商业用户还是个人用户100%免费！。', '哈哈哈哈哈哈哈哈或或或或或或或或或或', 1491989954, 0, 2, 2, 'http://blog.com:8080/uploads/20170412/435b900f2e806d7b7f35d10818893e7d.jpg', 5, 2, 100),
(3, '33333', '3333', '33333333333', '333333333333333333', 1491990302, 1492155115, 0, 2, 'http://blog.com:8080/uploads/20170412/b7f863c8be7ed44ec2f6c94191b906d1.jpg', 9, 2, 160),
(4, '444444444', '444444444', '4444444444', '444444444444', 1491990379, 1492174853, 0, 2, 'http://blog.com:8080/uploads/20170412/b7f863c8be7ed44ec2f6c94191b906d1.jpg', 9, 0, 190);

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
(15, '子栏目的子栏目', 14, 20),
(14, '子栏目1', 0, 100),
(4, '随便起个名字吧', 0, 200),
(2, '娱乐', 2, 100),
(1, '搞笑', 1, 100),
(16, '略略略', 4, 50);

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
(2, '学习php'),
(4, 'php和MySQL'),
(5, 'html'),
(11, '运动'),
(12, 'Python');

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
(1, 'title', 'PHP是最好的语言', '网站名称'),
(2, 'email', '1137846153@qq.com', '站长邮箱'),
(3, 'copyright', 'Copyright @ 2017 ', '版权信息');

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
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- 使用表AUTO_INCREMENT `blog_link`
--
ALTER TABLE `blog_link`
  MODIFY `link_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `blog_tag`
--
ALTER TABLE `blog_tag`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- 使用表AUTO_INCREMENT `blog_webset`
--
ALTER TABLE `blog_webset`
  MODIFY `webset_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
