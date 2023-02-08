-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2023 at 04:06 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `category` text NOT NULL,
  `description` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `category`, `description`, `date_created`) VALUES
(2, 'Phim ảnh', 'No des', '2020-11-16 09:53:32'),
(3, 'Truyện tranh', 'No des', '2020-11-16 09:53:49'),
(4, 'Khoa học', 'No Des', '2022-12-17 16:25:53');

-- --------------------------------------------------------

--
-- Table structure for table `post_list`
--

CREATE TABLE `post_list` (
  `id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `category_id` int(30) NOT NULL,
  `content` text NOT NULL,
  `cover_img` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_published` datetime NOT NULL DEFAULT current_timestamp(),
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post_list`
--

INSERT INTO `post_list` (`id`, `title`, `category_id`, `content`, `cover_img`, `status`, `date_published`, `date_created`) VALUES
(3, 'Doraemon là một nhân vật hư cấu trong bộ truyện tranh Nhật Bản', 3, '																								&lt;p style=&quot;margin: 0.5em 0px; animation-delay: -0.01ms !important; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0ms !important;&quot;&gt;&lt;font color=&quot;#202122&quot; face=&quot;sans-serif&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Doraemon l&agrave; nh&acirc;n vật hư cấu trong loạt manga c&ugrave;ng t&ecirc;n của họa sĩ Fujiko&lt;/span&gt;&lt;/font&gt;&lt;font color=&quot;#202122&quot; face=&quot;sans-serif&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;. Trong truyện lấy bối cảnh ở thế kỷ 22, Doraemon l&agrave; ch&uacute; m&egrave;o robot&lt;/span&gt;&lt;/font&gt;&lt;font color=&quot;#202122&quot; face=&quot;sans-serif&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;của tương lai do xưởng Matsushiba &mdash; c&ocirc;ng xưởng chuy&ecirc;n sản xuất robot vốn dĩ nhằm mục đ&iacute;ch chăm s&oacute;c trẻ nhỏ.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px; animation-delay: -0.01ms !important; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0ms !important;&quot;&gt;Theo như lời kể của họa sĩ Fujiko, trong một đ&ecirc;m &ocirc;ng đang t&igrave;m kiếm đề t&agrave;i v&agrave; nh&acirc;n vật cho một bộ truyện tranh t&acirc;m đắc th&igrave; một con&amp;nbsp;&lt;a href=&quot;https://vi.wikipedia.org/wiki/M%C3%A8o&quot; title=&quot;M&egrave;o&quot; style=&quot;color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; animation-delay: -0.01ms !important; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0ms !important;&quot;&gt;m&egrave;o&lt;/a&gt;&amp;nbsp;hoang nhảy v&agrave;o nh&agrave;, n&oacute; k&ecirc;u v&agrave;i tiếng rồi nhảy v&agrave;o l&ograve;ng &ocirc;ng m&agrave; ngủ. Do qu&aacute; mệt mỏi Fujiko cũng thiếp đi l&uacute;c n&agrave;o kh&ocirc;ng biết. S&aacute;ng h&ocirc;m sau thức dậy, &ocirc;ng vội v&agrave;ng bước xuống cầu thang v&agrave; vấp phải&amp;nbsp;&lt;a href=&quot;https://vi.wikipedia.org/wiki/Con_l%E1%BA%ADt_%C4%91%E1%BA%ADt&quot; class=&quot;mw-redirect&quot; title=&quot;Con lật đật&quot; style=&quot;color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; animation-delay: -0.01ms !important; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0ms !important;&quot;&gt;con lật đật&lt;/a&gt;&amp;nbsp;của c&ocirc; con g&aacute;i, từ đ&oacute; sinh ra sự kết hợp giữa lật đật v&agrave; m&egrave;o v&agrave; ra đời nh&acirc;n vật Doraemon. Ngo&agrave;i nước da m&agrave;u xanh kh&ocirc;ng c&oacute; tai, b&agrave;n tay tr&ograve;n vo th&igrave; Fujiko c&ograve;n đ&iacute;nh k&egrave;m một c&aacute;i chu&ocirc;ng v&agrave;ng ở cổ với d&atilde;y ruy băng m&agrave;u đỏ đậm. Bộ manga ba lần được chuyển thể th&agrave;nh&amp;nbsp;&lt;a href=&quot;https://vi.wikipedia.org/wiki/Anime&quot; title=&quot;Anime&quot; style=&quot;color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; animation-delay: -0.01ms !important; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0ms !important;&quot;&gt;anime&lt;/a&gt;&amp;nbsp;với nhiều người đ&atilde; lồng tiếng cho nh&acirc;n vật. Ở phi&ecirc;n bản chuyển thể năm 1973 do&amp;nbsp;&lt;a href=&quot;https://vi.wikipedia.org/w/index.php?title=Tomita_K%C5%8Dsei&amp;amp;action=edit&amp;amp;redlink=1&quot; class=&quot;new&quot; title=&quot;Tomita Kōsei (trang kh&ocirc;ng tồn tại)&quot; style=&quot;color: rgb(221, 51, 51); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; animation-delay: -0.01ms !important; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0ms !important;&quot;&gt;Tomita Kōsei&lt;/a&gt;&amp;nbsp;lồng tiếng từ tập 1 đến tập 13 c&ograve;n từ tập 14 trở đi l&agrave;&amp;nbsp;&lt;a href=&quot;https://vi.wikipedia.org/w/index.php?title=Nozawa_Masako&amp;amp;action=edit&amp;amp;redlink=1&quot; class=&quot;new&quot; title=&quot;Nozawa Masako (trang kh&ocirc;ng tồn tại)&quot; style=&quot;color: rgb(221, 51, 51); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; animation-delay: -0.01ms !important; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0ms !important;&quot;&gt;Nozawa Masako&lt;/a&gt;. Ở phi&ecirc;n bản 1979 đến th&aacute;ng 3 năm 2005 l&agrave;&amp;nbsp;&lt;a href=&quot;https://vi.wikipedia.org/wiki/%C5%8Cyama_Nobuyo&quot; title=&quot;Ōyama Nobuyo&quot; style=&quot;color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; animation-delay: -0.01ms !important; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0ms !important;&quot;&gt;Ōyama Nobuyo&lt;/a&gt;. Từ th&aacute;ng 4 năm 2005 đến nay, Doraemon do&amp;nbsp;&lt;a href=&quot;https://vi.wikipedia.org/wiki/Mizuta_Wasabi&quot; title=&quot;Mizuta Wasabi&quot; style=&quot;color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; animation-delay: -0.01ms !important; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0ms !important;&quot;&gt;Mizuta Wasabi&lt;/a&gt;&amp;nbsp;lồng tiếng.&lt;/p&gt;&lt;p style=&quot;margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px; animation-delay: -0.01ms !important; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0ms !important;&quot;&gt;Kh&ocirc;ng chỉ nổi tiếng tại qu&ecirc; nh&agrave;&amp;nbsp;&lt;a href=&quot;https://vi.wikipedia.org/wiki/Nh%E1%BA%ADt_B%E1%BA%A3n&quot; title=&quot;Nhật Bản&quot; style=&quot;color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; animation-delay: -0.01ms !important; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0ms !important;&quot;&gt;Nhật Bản&lt;/a&gt;&amp;nbsp;m&agrave; Doraemon c&ograve;n được biết đến ở nhiều quốc gia kh&aacute;c nhau tr&ecirc;n thế giới. Năm 2002, Doraemon được tạp ch&iacute;&amp;nbsp;&lt;i style=&quot;animation-delay: -0.01ms !important; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0ms !important;&quot;&gt;Time Asia&lt;/i&gt;&amp;nbsp;b&igrave;nh chọn l&agrave; một trong hai mươi hai người h&ugrave;ng đ&aacute;ng y&ecirc;u nhất của ch&acirc;u &Aacute;. Kh&ocirc;ng những vậy, v&agrave;o năm 2008, được&amp;nbsp;&lt;a href=&quot;https://vi.wikipedia.org/wiki/Ch%C3%ADnh_ph%E1%BB%A7_Nh%E1%BA%ADt_B%E1%BA%A3n&quot; title=&quot;Ch&iacute;nh phủ Nhật Bản&quot; style=&quot;color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; animation-delay: -0.01ms !important; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0ms !important;&quot;&gt;Ch&iacute;nh phủ Nhật Bản&lt;/a&gt;&amp;nbsp;chọn l&agrave;m đại sứ hoạt h&igrave;nh của Nhật Bản trong một buổi lễ do đ&iacute;ch th&acirc;n Ngoại trưởng Nhật Bản&amp;nbsp;&lt;a href=&quot;https://vi.wikipedia.org/w/index.php?title=Komura_Masahiko&amp;amp;action=edit&amp;amp;redlink=1&quot; class=&quot;new&quot; title=&quot;Komura Masahiko (trang kh&ocirc;ng tồn tại)&quot; style=&quot;color: rgb(221, 51, 51); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; animation-delay: -0.01ms !important; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0ms !important;&quot;&gt;Komura Masahiko&lt;/a&gt;&amp;nbsp;chủ tr&igrave;. Trước đ&oacute; v&agrave;o năm 2007,&amp;nbsp;&lt;a href=&quot;https://vi.wikipedia.org/wiki/Oricon&quot; title=&quot;Oricon&quot; style=&quot;color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; animation-delay: -0.01ms !important; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0ms !important;&quot;&gt;Oricon&lt;/a&gt;&amp;nbsp;xếp Doraemon vị tr&iacute; thứ hai trong danh s&aacute;ch c&aacute;c nh&acirc;n vật manga quyền năng nhất. Thậm ch&iacute; nh&acirc;n vật c&ograve;n được th&agrave;nh phố&amp;nbsp;&lt;a href=&quot;https://vi.wikipedia.org/wiki/Kawasaki&quot; title=&quot;Kawasaki&quot; style=&quot;color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; animation-delay: -0.01ms !important; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0ms !important;&quot;&gt;Kawasaki&lt;/a&gt;&amp;nbsp;cấp&amp;nbsp;&lt;a href=&quot;https://vi.wikipedia.org/wiki/H%E1%BB%99_kh%E1%BA%A9u&quot; title=&quot;Hộ khẩu&quot; style=&quot;color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; animation-delay: -0.01ms !important; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0ms !important;&quot;&gt;hộ khẩu&lt;/a&gt;&amp;nbsp;như l&agrave; một c&ocirc;ng d&acirc;n ch&iacute;nh thức năm 2012. H&agrave;ng loạt c&aacute;c sản phẩm thương mại ăn theo như th&uacute; nhồi b&ocirc;ng, figure,... B&ecirc;n cạnh việc xuất hiện trong&amp;nbsp;&lt;i style=&quot;animation-delay: -0.01ms !important; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0ms !important;&quot;&gt;Doraemon&lt;/i&gt;, Doraemon thỉnh thoảng c&ograve;n xuất hiện trong&amp;nbsp;&lt;i style=&quot;animation-delay: -0.01ms !important; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0ms !important;&quot;&gt;&lt;a href=&quot;https://vi.wikipedia.org/wiki/Doraemon_b%C3%B3ng_ch%C3%A0y&quot; class=&quot;mw-redirect&quot; title=&quot;Doraemon b&oacute;ng ch&agrave;y&quot; style=&quot;color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; animation-delay: -0.01ms !important; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0ms !important;&quot;&gt;Doraemon b&oacute;ng ch&agrave;y&lt;/a&gt;&lt;/i&gt;&amp;nbsp;v&agrave;&amp;nbsp;&lt;i style=&quot;animation-delay: -0.01ms !important; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0ms !important;&quot;&gt;&lt;a href=&quot;https://vi.wikipedia.org/wiki/%C4%90%E1%BB%99i_qu%C3%A2n_Doraemon&quot; title=&quot;Đội qu&acirc;n Doraemon&quot; style=&quot;color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; animation-delay: -0.01ms !important; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0ms !important;&quot;&gt;Đội qu&acirc;n Doraemon&lt;/a&gt;&lt;/i&gt;&amp;nbsp;&mdash; l&agrave; một chuyển thể kh&aacute;c của&amp;nbsp;&lt;i style=&quot;animation-delay: -0.01ms !important; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0ms !important;&quot;&gt;Doraemon&lt;/i&gt;&amp;nbsp;nhưng kh&ocirc;ng do họa sĩ Fujiko chấp b&uacute;t cũng như trong c&aacute;c&amp;nbsp;&lt;a href=&quot;https://vi.wikipedia.org/wiki/Tr%C3%B2_ch%C6%A1i_%C4%91i%E1%BB%87n_t%E1%BB%AD&quot; title=&quot;Tr&ograve; chơi điện tử&quot; style=&quot;color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; animation-delay: -0.01ms !important; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0ms !important;&quot;&gt;tr&ograve; chơi điện tử&lt;/a&gt;.&lt;/p&gt;																															', '1671267360_sh8fzyt4-159886611234720470620-5969-5840-1599809570.jpg', 1, '2022-12-17 15:57:00', '2022-12-17 15:56:41'),
(4, 'Phim Hành Động Hấp dẫn', 2, '						Đ&acirc;y l&agrave; một bộ phim rất hay =)))					', '1675868280_82908634_285489936196290_4373062737451367907_o.jpg', 1, '2023-02-08 21:58:10', '2023-02-08 21:58:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`) VALUES
(1, 'Quản trị viên', 'admin', '202cb962ac59075b964b07152d234b70'),
(2, 'Đỗ Minh Đức', 'staff1', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_list`
--
ALTER TABLE `post_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post_list`
--
ALTER TABLE `post_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
