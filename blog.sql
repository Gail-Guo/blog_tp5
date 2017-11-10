-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017-11-10 08:10:09
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
(1, 'admin', 'admin'),
(2, 'a', 'a');

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
(9, 17),
(10, 17),
(11, 18),
(12, 17),
(11, 17),
(11, 17),
(13, 16),
(13, 17);

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
  `admin_id` int(11) NOT NULL DEFAULT '3',
  `arc_sort` int(11) NOT NULL DEFAULT '100' COMMENT '文章排序'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章表';

--
-- 转存表中的数据 `blog_article`
--

INSERT INTO `blog_article` (`arc_id`, `arc_title`, `arc_author`, `arc_digest`, `arc_content`, `sendtime`, `updatetime`, `arc_click`, `is_recycle`, `arc_thumb`, `cate_id`, `admin_id`, `arc_sort`) VALUES
(9, '风', 'gail', '风啊风', '<p>大风刮啊</p><p>刮啊刮</p><p>刮啊刮</p><p><br/></p>', 1510276997, 0, 1, 2, 'http://web.blog.com/uploads/20171110\\a8cd176513a50884b5bf8f4366df1669.jpg', 17, 3, 100),
(11, '在下名叫蓝忘机', 'oh', '蓝忘机', '<p>夷陵老祖魏无羡</p><p><embed type="application/x-shockwave-flash" class="edui-faked-music" pluginspage="http://www.macromedia.com/go/getflashplayer" src="http://box.baidu.com/widget/flash/bdspacesong.swf?from=tiebasongwidget&url=&name=%E3%80%90%E9%AD%94%E9%81%93%E7%A5%96%E5%B8%88%E7%B3%BB%E5%88%97%E3%80%91%E2%80%94%E2%80%94%E8%93%9D%E5%BF%98%E6%9C%BA%26%E9%AD%8F%E6%97%A0%E7%BE%A1%E3%80%8A%E6%9E%95%E6%9C%88%E4%BA%91%E6%B7%B1%E3%80%8B&artist=%E8%AF%97%E9%9B%AA&extra=&autoPlay=false&loop=true" width="400" height="95" align="none" wmode="transparent" play="true" loop="false" menu="false" allowscriptaccess="never" allowfullscreen="true"/></p>', 1510278848, 1510287061, 2, 1, 'http://web.blog.com/uploads/20171110\\dbd04e106a685eebaf81d3e795c9979a.jpg', 20, 3, 100),
(12, '权御天下', '洛天依', '权御天下', '<p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;"><embed type="application/x-shockwave-flash" class="edui-faked-music" pluginspage="http://www.macromedia.com/go/getflashplayer" src="http://box.baidu.com/widget/flash/bdspacesong.swf?from=tiebasongwidget&url=&name=%E6%9D%83%E5%BE%A1%E5%A4%A9%E4%B8%8BFt.%E4%BC%A6%E6%A1%91%20%E8%A3%82%E5%A4%A9%20%E5%B0%8F%E9%AD%82&artist=%E8%90%A7%E5%BF%86%E6%83%85Alex&extra=&autoPlay=false&loop=true" width="400" height="95" align="none" wmode="transparent" play="true" loop="false" menu="false" allowscriptaccess="never" allowfullscreen="true"/></p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">东汉末 狼烟不休</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">常侍乱 朝野陷</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">阿瞒挟天子 令诸侯</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">据江东 志在九州</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">继祖业 承父兄</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">既冕主吴越 万兜鍪</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">纵天下 几变春秋</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">稳东南 面中原</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">水师锁长江 抗曹刘</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">镇赤壁雄风赳赳</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">夺荆楚 抚山越</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">驱金戈铁马 灭仇讎</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">紫发髯 碧色眼眸</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">射猛虎 倚黄龙</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">胆识过凡人 谁敌手</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">御天下 半百之久</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">选贤臣 任能将</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">覆江东云雨 尽风流</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">千秋过 再难回首</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">问古今 兴亡事</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">几人耀青史 芳名留</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">笑谈间 云烟已旧</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">终留下 万古叹</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">生子该当如 孙仲谋</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">运帷幄 英雄几拂袖</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">阴谋 阳谋 明仇 暗斗</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">化作一江浊浪东流</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">君不见 军赤壁纵野火铁索连环</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">也不见 御北敌联西蜀长江上鏖战</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">继遗志 领江东</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">屹立于 神州东南</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">尽心力 洒英血</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">展伟业 剑气指苍天</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">军帐内 公瑾智 张昭谋 奇策频献</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">沙场上 太史勇甘宁霸一骑当十千</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">纵使有 千万种</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">寂寞和 孤单相伴</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">既受终 冠帝冕</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">龙椅上 成败也笑看</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">铁瓮城 难攻易守</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">旌旗立 苍空蔽</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">逾百千雄狮 万蒙舟</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">善制衡 眼光独秀</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">擢鲁肃 劝阿蒙</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">聚贤成霸业 名利收</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">固疆土 施德恩厚</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">军心定 百姓安</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">富国又强兵 重耕耨</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">交远好 未雨绸缪</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">联南洋 合林邑</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">行军远渡海 驻夷洲</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">残垣下 枯木凋朽</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">想当年 麦城边</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">截兵缚关羽 终其寿</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">凭栏倚 横看吴钩</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">叹乱世 几时了</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">天下归一统 没其咎</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">称帝王壮心仍稠</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">却无奈 自孤傲</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">同室亦操戈 子嗣斗</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">千年后 恚恨徒留</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">再何寻 军帐里</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">将士聚欢饮 赏箜篌</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">运帷幄 英雄几拂袖</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">阴谋 阳谋 明仇 暗斗</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">化作一江浊浪东流</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">君不见 吕子明 踏轻舟 白衣渡川</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">也不见 陆伯言 烧连营 火光上冲天</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">善制衡 选贤臣 任能将 共谋江山</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">听忠言 摒逆语 树威严 宝剑斫书案</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">夺荆州 抗刘备 合曹操 共克襄樊</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">守夷陵 任陆逊 剿敌军 火计破蜀胆</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">固江河 成帝业 立国家 终归于乱</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">光阴逝 千载过 功成者 都付笑谈间</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">君不见 军赤壁纵野火铁索连环</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">也不见 御北敌联西蜀长江上鏖战</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">继遗志 领江东</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">屹立于 神州东南</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">尽心力 洒英血</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">展伟业 剑气指苍天</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">君不见 吕子明 踏轻舟 白衣渡川</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">也不见 陆伯言 烧连营 火光上冲天</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">善制衡 选贤臣 任能将 共谋江山</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">听忠言 摒逆语 树威严 宝剑斫书案</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">纵使有 千万种 寂寞和 孤单相伴</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">既受终 冠帝冕 龙椅上 成败也笑看</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">固江河 成帝业 立国家 终归于乱</p><p class="f-ust f-ust-1" style="margin-top: 0px; margin-bottom: 16px; padding: 0px; outline: none; user-select: text; cursor: text; line-height: 18px; word-wrap: break-word;">光阴逝 千载过 功成者 都付笑谈间</p><p><br/></p>', 1510283970, 0, 2, 2, 'http://web.blog.com/uploads/20171110\\a6571f5a35929ddcebeed8ee6704c20b.jpg', 19, 3, 100);

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
(26, 'Lighthouse.jpg', 'a8cd176513a50884b5bf8f4366df1669.jpg', 'uploads/20171110\\a8cd176513a50884b5bf8f4366df1669.jpg', 'jpg', 1510276961, 561276),
(27, 'Tulips.jpg', 'b2d488c068f5e02701686a010a5c38c2.jpg', 'uploads/20171110\\b2d488c068f5e02701686a010a5c38c2.jpg', 'jpg', 1510277034, 620888),
(28, '1.jpg', 'f1f48dd592aea9708b0afd0ebf730ea2.jpg', 'uploads/20171110\\f1f48dd592aea9708b0afd0ebf730ea2.jpg', 'jpg', 1510278793, 55144),
(29, '4.jpg', 'a6571f5a35929ddcebeed8ee6704c20b.jpg', 'uploads/20171110\\a6571f5a35929ddcebeed8ee6704c20b.jpg', 'jpg', 1510283564, 58090),
(30, '3.jpg', 'dbd04e106a685eebaf81d3e795c9979a.jpg', 'uploads/20171110\\dbd04e106a685eebaf81d3e795c9979a.jpg', 'jpg', 1510284055, 24804);

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
(17, '日常', 0, 100),
(19, '上午', 17, 1),
(20, '下午', 17, 1);

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
(8, 'Google', 'http://www.google.com', 20),
(9, 'Coursera', 'https://www.coursera.org/', 50);

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
(14, 'PHP'),
(16, 'Python'),
(17, 'weather'),
(18, '蓝忘机');

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
(1, 'title', '我的博客', '网站名称'),
(2, 'email', '1137846153@qq.com', '邮箱'),
(3, 'copyright', 'Copyright @ 2017', '版权信息');

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
  MODIFY `arc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- 使用表AUTO_INCREMENT `blog_attachment`
--
ALTER TABLE `blog_attachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- 使用表AUTO_INCREMENT `blog_cate`
--
ALTER TABLE `blog_cate`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- 使用表AUTO_INCREMENT `blog_link`
--
ALTER TABLE `blog_link`
  MODIFY `link_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- 使用表AUTO_INCREMENT `blog_tag`
--
ALTER TABLE `blog_tag`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- 使用表AUTO_INCREMENT `blog_webset`
--
ALTER TABLE `blog_webset`
  MODIFY `webset_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
