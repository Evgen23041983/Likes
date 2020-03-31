-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 01 2020 г., 00:42
-- Версия сервера: 8.0.15
-- Версия PHP: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `user`
--

-- --------------------------------------------------------

--
-- Структура таблицы `ips`
--

CREATE TABLE `ips` (
  `id` int(11) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `login` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ips`
--

INSERT INTO `ips` (`id`, `ip`, `url`, `title`, `data`, `login`) VALUES
(39, '127.0.0.1', '/index.php', 'Cистема лайков на PHP и JQuery', '03.22.20', 'admin'),
(40, '127.0.0.1fff', '/index.php', 'Cистема лайков на PHP и JQuery', '03.22.20', 'admin'),
(41, '127.0.0.1ff', '/index.php', 'Cистема лайков на PHP и JQuery', '03.22.20', 'admin'),
(42, '127.0.0.1ff999', '/index.php', 'Cистема лайков на PHP и JQuery', '03.22.20', 'admin'),
(43, '127.0.0.1ff122', '/index2.php', 'Cистема лайков на PHP и JQuery', '03.22.20', 'admin'),
(44, '127.0.0.1ooqq', '/index2.php', 'Cистема лайков на PHP и JQuery', '03.22.20', '1'),
(45, '127.0.0.1wwww', '/index2.php', 'Cистема лайков на PHP и JQuery', '03.22.20', 'admin'),
(46, '127.0.0.1owwww', '/index2.php', 'Cистема лайков на PHP и JQuery', '03.22.20', 'mather'),
(47, '127.0.0.1o3wwww', '/index2.php', 'Cистема лайков на PHP и JQuery', '03.22.20', ''),
(48, '127.0.0.1o333wwww', '/index2.php', 'Cистема лайков на PHP и JQuery', '03.22.20', 'admin'),
(49, '127.0.0.1khjgghf', 'http://reg/index2.php', 'Cистема лайков на PHP и JQuery', '31-3-2020', 'admin'),
(50, '127.0.0.1dfdgfb65356', 'http://reg/index2.php', 'Cистема лайков на PHP и JQuery', '31-3-2020', 'admin'),
(51, '127.0.0.17777777777777', 'http://reg/index2.php', 'Cистема лайков на PHP и JQuery', '31-3-2020', 'admin'),
(52, '127.0.0.15555555555555', 'http://reg/index2.php', 'Cистема лайков на PHP и JQuery', '31-3-2020', 'admin'),
(53, '127.0.0.144444444444', 'http://reg/index2.php', 'Cистема лайков на PHP и JQuery', '31-3-2020', 'admin'),
(54, '127.0.0.144455544444444', 'http://reg/index2.php', 'Cистема лайков на PHP и JQuery', '31-3-2020', 'mather'),
(55, '127.0.0.144422255544444444', 'http://reg/index2.php', 'Cистема лайков на PHP и JQuery', '31-3-2020', 'mather'),
(56, '127.0.0.1zzzzzzzzzzzz', 'http://reg/index2.php', 'Cистема лайков на PHP и JQuery', '31-3-2020', 'mather'),
(57, '127.0.0.1aaaaaaaaaaa', 'http://reg/index2.php', 'Cистема лайков на PHP и JQuery', '31-3-2020', 'mather'),
(58, '127.0.0.1xxxxxxxxxxxxx', 'http://reg/index2.php', 'Cистема лайков на PHP и JQuery', '31-3-2020', 'mather'),
(59, '127.0.0.1qqqqqqqqqqqqq', 'http://reg/index2.php', 'Cистема лайков на PHP и JQuery', '31-3-2020', 'mather'),
(60, '127.0.0.133333', 'http://reg/index2.php', 'Cистема лайков на PHP и JQuery', '31-3-2020', 'mather'),
(61, '127.0.0.100', 'http://reg/index2.php', 'Cистема лайков на PHP и JQuery', '31-3-2020', 'mather'),
(62, '127.0.0.1000', 'http://reg/index2.php', 'Cистема лайков на PHP и JQuery', '31-3-2020', 'mather'),
(63, '127.0.0.13303', 'http://reg/index2.php', 'Cистема лайков на PHP и JQuery', '31-3-2020', 'mather'),
(64, '127.0.0.13304', 'http://reg/index2.php', 'Cистема лайков на PHP и JQuery', '31-3-2020', 'mather'),
(65, '127.0.0.1330555', 'http://reg/index2.php', 'Cистема лайков на PHP и JQuery', '31-3-2020', 'qqqqqq'),
(66, '127.0.0.133055544', 'http://reg/index2.php', 'Cистема лайков на PHP и JQuery', '31-3-2020', 'qqqqqq');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `login` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_like` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `email`, `password`, `count_like`) VALUES
(3, 'admin', 'evgen23041983@gmail.com', '$2y$10$z41ztj1KuYBbSHAIyrSdROruFuLFRxtSDWgqXdT5qxjsPgv/WANFO', 1),
(4, 'qqqqqq', 'father@gmail.com', '$2y$10$1Fook0269yq9IXAHKKXaxuYnD3PpANp1Iv8Y4kRd12aZ7shbXfMjG', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `ips`
--
ALTER TABLE `ips`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `ips`
--
ALTER TABLE `ips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
