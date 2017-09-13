-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: 2017-08-15 06:10:38
-- 服务器版本： 5.6.34-log
-- PHP Version: 7.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baidunews`
--
CREATE DATABASE IF NOT EXISTS `baidunews` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `baidunews`;

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `newstype` char(200) NOT NULL,
  `newstitle` varchar(200) NOT NULL,
  `newsimg` varchar(200) NOT NULL,
  `newstime` datetime NOT NULL,
  `newssrc` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `news`
--

INSERT INTO `news` (`id`, `newstype`, `newstitle`, `newsimg`, `newstime`, `newssrc`) VALUES
(26, '推荐', '习近平带领我们走过的这不平凡五年 从严治党篇', 'https://imgsa.baidu.com/news/q%3D100/sign=c2f1b4f727f5e0fee8188d016c6234e5/4610b912c8fcc3cef11372dd9845d688d53f2008.jpg', '2017-08-15 00:00:00', '热点'),
(27, '百家', '手机SIM卡将成为智能汽车的标配，有月租，按流量计费', 'https://t12.baidu.com/it/u=2519454668,197365677&fm=173&s=0F822EC1DC5602435C94F5260300E047&w=218&h=146&img.JPEG', '2017-07-21 00:00:00', ''),
(28, '本地', '北京一女大学生租房首日不慎坠亡', 'https://t11.baidu.com/it/u=1754492686,4124482191&fm=173&s=9F912DC528459EDA928C0CB303005042&w=218&h=146&img.JPEG', '2017-08-15 00:00:00', ''),
(29, '图片', '法国汽车冲撞餐馆致1死13伤 排除恐袭可能', 'https://imgsa.baidu.com/news/q%3D100/sign=a7a680902f1f95caa0f596b6f9167fc5/0e2442a7d933c895e1ef1d95db1373f08302004e.jpg', '2017-08-15 00:00:00', ''),
(30, '娱乐', '这部纪录片光看图都会潸然泪下 网友希望院线多支持', 'https://t10.baidu.com/it/u=3478191585,602384845&fm=173&s=88E272273E7228963A9C950B0100C091&w=218&h=146&img.JPEG', '2017-08-15 00:00:00', ''),
(31, '社会', '老人路边摔倒扶不扶 资阳低调英雄：被讹我也扶', 'https://t10.baidu.com/it/u=378105417,1339371423&fm=173&s=79307EDBC851F1D6030508160300C0C2&w=218&h=146&img.JPEG', '2017-08-15 00:00:00', ''),
(32, '军事', '好丽友上半年在华销售额骤降4成 韩媒：“萨德”系主因', 'https://t10.baidu.com/it/u=3547020867,1872406393&fm=173&s=64127C971AC86EC007B8D9640300A062&w=218&h=146&img.JPEG', '2017-08-15 00:00:00', ''),
(33, '互联网', '张昭升任乐视网CCO 原乐视影业董事长兼CEO职务不变', 'https://t11.baidu.com/it/u=2457323323,1332950751&fm=173&s=BF0FA04C4150907D4A7B1F8D0300F08B&w=218&h=146&img.JPEG', '2017-08-15 00:00:00', '乐视'),
(34, '女人', '为了跑步过程中避免肠胃不适 应该注意什么', 'https://t11.baidu.com/it/u=1501820929,123235912&fm=173&s=D3BA39C57C69D10D1EFE057303008030&w=218&h=146&img.JPEG', '2017-08-15 00:00:00', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
