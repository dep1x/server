-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Окт 02 2018 г., 13:31
-- Версия сервера: 5.7.23-0ubuntu0.16.04.1
-- Версия PHP: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `america`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `person` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `admins`
--

INSERT INTO `admins` (`id`, `person`, `password`, `level`) VALUES
(0, 'Anthony_Cooper', '123456', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `banip`
--

CREATE TABLE `banip` (
  `id` int(11) NOT NULL,
  `ip` varchar(128) NOT NULL DEFAULT '127.0.0.1',
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `banip`
--

INSERT INTO `banip` (`id`, `ip`, `date`) VALUES
(1, 'Artur_Komkov', '2018-07-05 18:29:07'),
(2, '213.112.231.16', '2018-07-05 20:37:00'),
(3, '94.242.171.169', '2018-07-06 14:44:31'),
(4, '46.148.233.155', '2018-07-06 15:22:35'),
(5, '188.190.95.8', '2018-07-10 21:35:05'),
(6, '188.163.75.119', '2018-07-10 23:23:17'),
(7, '79.164.248.216', '2018-07-12 15:38:42'),
(8, '81.177.126.8', '2018-07-12 15:38:51'),
(9, '48', '2018-07-18 14:23:45'),
(10, '51', '2018-07-18 14:24:09'),
(11, '30', '2018-07-18 14:25:13'),
(12, '32', '2018-07-18 14:29:50'),
(13, '62', '2018-07-18 14:31:10'),
(14, '61', '2018-07-18 14:31:31'),
(15, '66', '2018-07-18 14:32:43'),
(16, '71', '2018-07-18 14:33:59'),
(17, '44', '2018-07-19 14:31:54'),
(18, '34', '2018-07-19 14:36:38'),
(19, '19', '2018-07-19 14:38:44'),
(20, '19\'', '2018-07-19 14:38:51');

-- --------------------------------------------------------

--
-- Структура таблицы `blips`
--

CREATE TABLE `blips` (
  `id` int(11) NOT NULL,
  `blip` int(11) NOT NULL DEFAULT '0',
  `blip_name` varchar(256) NOT NULL DEFAULT 'UNKNOWN',
  `pos_x` float NOT NULL DEFAULT '0',
  `pos_y` float NOT NULL DEFAULT '0',
  `pos_z` float NOT NULL DEFAULT '0',
  `scale` float NOT NULL DEFAULT '1.2',
  `color` int(11) NOT NULL DEFAULT '0',
  `alpha` int(11) NOT NULL DEFAULT '255',
  `drawDistance` int(11) NOT NULL DEFAULT '100',
  `shortRange` int(11) NOT NULL DEFAULT '0',
  `rotation` int(11) NOT NULL DEFAULT '0',
  `dimension` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `blips`
--

INSERT INTO `blips` (`id`, `blip`, `blip_name`, `pos_x`, `pos_y`, `pos_z`, `scale`, `color`, `alpha`, `drawDistance`, `shortRange`, `rotation`, `dimension`) VALUES
(0, 34, 'UNKNOWN', 0, 0, 0, 1.2, 0, 255, 100, 1, 0, 0),
(1, 41, 'UNKNOWN', 100, 100, 100, 1.2, 5, 255, 100, 1, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `business`
--

CREATE TABLE `business` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL DEFAULT 'UNKNOWN',
  `blip` int(11) NOT NULL DEFAULT '0',
  `pos_x` float NOT NULL DEFAULT '0',
  `pos_y` float NOT NULL DEFAULT '0',
  `pos_z` float NOT NULL DEFAULT '0',
  `work_pos_x` float NOT NULL DEFAULT '0',
  `work_pos_y` float NOT NULL DEFAULT '0',
  `work_pos_z` float NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '0',
  `owner` varchar(128) NOT NULL DEFAULT 'UNKNOWN',
  `coast` int(11) NOT NULL DEFAULT '50000',
  `lock` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `business`
--

INSERT INTO `business` (`id`, `type`, `name`, `blip`, `pos_x`, `pos_y`, `pos_z`, `work_pos_x`, `work_pos_y`, `work_pos_z`, `state`, `owner`, `coast`, `lock`) VALUES
(0, 0, 'South Los Santos Store', 0, 0, 0, 0, 0, 0, 0, 0, 'UNKNOWN', 50000, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `gangzones`
--

CREATE TABLE `gangzones` (
  `id` int(11) NOT NULL,
  `coord_one` float NOT NULL DEFAULT '0',
  `coord_two` float NOT NULL DEFAULT '0',
  `coord_three` float NOT NULL DEFAULT '0',
  `distance` float NOT NULL DEFAULT '0',
  `owner` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `gangzones`
--

INSERT INTO `gangzones` (`id`, `coord_one`, `coord_two`, `coord_three`, `distance`, `owner`) VALUES
(1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `houses`
--

CREATE TABLE `houses` (
  `id` int(11) NOT NULL,
  `pickup` int(11) DEFAULT '0',
  `pos_x` float NOT NULL DEFAULT '0',
  `pos_y` float NOT NULL DEFAULT '0',
  `pos_z` float NOT NULL DEFAULT '0',
  `pos_heading` float NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '0',
  `rare` int(11) NOT NULL DEFAULT '0',
  `owner` varchar(128) NOT NULL DEFAULT 'NONE',
  `coast` int(11) NOT NULL DEFAULT '0',
  `interior` int(11) NOT NULL DEFAULT '0',
  `garage` int(11) NOT NULL DEFAULT '0',
  `garage_enter_pos_x` float NOT NULL DEFAULT '0',
  `garage_enter_pos_y` float NOT NULL DEFAULT '0',
  `garage_enter_pos_z` float NOT NULL DEFAULT '0',
  `garage_enter_pos_r` int(11) NOT NULL,
  `max_cars_count` int(11) NOT NULL DEFAULT '1',
  `max_cars_pos` varchar(2018) NOT NULL DEFAULT '',
  `atr_lock` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `houses`
--

INSERT INTO `houses` (`id`, `pickup`, `pos_x`, `pos_y`, `pos_z`, `pos_heading`, `state`, `rare`, `owner`, `coast`, `interior`, `garage`, `garage_enter_pos_x`, `garage_enter_pos_y`, `garage_enter_pos_z`, `garage_enter_pos_r`, `max_cars_count`, `max_cars_pos`, `atr_lock`) VALUES
(0, 0, 85.4992, -1959.44, 21.1217, 231.57, 0, 0, 'NONE', 25000, 0, 0, 0, 0, 0, 0, 1, '[{"x":88.96917724609375,"y":-1967.377197265625,"z":20.747447967529297,"r":316.5727233886719}]', 0),
(1, 0, 114.293, -1961.17, 21.3343, 213.367, 1, 0, 'Carolina_Disney', 25000, 0, 0, 0, 0, 0, 0, 1, '[{"x":88.29222869873047,"y":-1968.3214111328125,"z":20.747453689575195,"r":322.0846252441406}]', 0),
(2, 0, 126.825, -1929.95, 21.3824, 216.343, 0, 0, 'NONE', 25000, 0, 0, 0, 0, 0, 0, 1, '[{"x":115.2136001586914,"y":-1934.1644287109375,"z":20.59546661376953,"r":29.907238006591797}]', 0),
(3, 0, -881.726, 363.957, 85.3627, 229.543, 0, 2, 'NONE', 500000, 0, 2, -888.374, 365.209, 0, 0, 3, '[{"x":202.23118591308594,"y":-1003.1529541015625,"z":-99.49470520019531,"r":179},{"x":194.75413513183594,"y":-1003.4713134765625,"z":-99.56991577148438,"r":179},{"x":195.84231567382812,"y":-996.6499633789062,"z":-99.60717010498047,"r":272}]', 0),
(4, 0, -824.045, 806.049, 202.784, 199.76, 0, 2, 'NONE', 1000000, 2, 3, -812.261, 808.543, 202.108, 23, 7, '[{"x":224.16061401367188,"y":-1004.6085205078125,"z":-98.99995422363281,"r":230.9367370605469},{"x":224.16061401367188,"y":-996.6085205078125,"z":-98.99995422363281,"r":230.9367370605469},{"x":224.16061401367188,"y":-988.6085205078125,"z":-98.99995422363281,"r":230.9367370605469},{"x":224.16061401367188,"y":-980.6085205078125,"z":-98.99995422363281,"r":230.9367370605469},{"x":232.04319763183594,"y":-985.688232421875,"z":-98.99993896484375,"r":130.57059478759766},{"x":232.48822021484375,"y":-993.688232421875,"z":-98.99993896484375,"r":130.57059478759766},{"x":233.21250915527344,"y":-1000.688232421875,"z":-98.99993896484375,"r":130.57059478759766}]', 0),
(5, 0, 76.5446, -1948.21, 21.1741, 53.5632, 0, 0, 'NONE', 25000, 0, 0, 0, 0, 0, 0, 1, '[{"x":90.45074462890625,"y":-1939.2852783203125,"z":20.65102195739746,"r":31.034435272216797}]', 0),
(6, 0, 55.4727, -1921.69, 21.9111, 142.116, 0, 0, 'NONE', 25000, 0, 0, 0, 0, 0, 0, 1, '[{"x":69.954345703125,"y":-1918.7520751953125,"z":21.207565307617188,"r":228.46336364746094}]', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `persons`
--

CREATE TABLE `persons` (
  `id` int(11) NOT NULL,
  `g_name` varchar(64) CHARACTER SET utf8 NOT NULL,
  `g_password` varchar(128) CHARACTER SET utf8 NOT NULL,
  `g_online` int(11) NOT NULL DEFAULT '0',
  `g_warns` int(11) NOT NULL DEFAULT '0',
  `g_web_ip` varchar(256) NOT NULL DEFAULT '127.0.0.1',
  `g_game_ip` varchar(256) NOT NULL DEFAULT '127.0.0.1',
  `g_ipreg` varchar(256) NOT NULL DEFAULT '127.0.0.1',
  `g_sex` int(11) NOT NULL DEFAULT '0',
  `g_date_reg` varchar(256) NOT NULL DEFAULT '2017-05-19 00:00:00',
  `g_character_create` int(11) NOT NULL DEFAULT '0',
  `g_character_style_1` varchar(2018) NOT NULL DEFAULT '{}',
  `g_character_style_2` varchar(2018) NOT NULL DEFAULT '{}',
  `g_character_style_3` varchar(2018) NOT NULL DEFAULT '{}',
  `g_character_style_4` varchar(2018) NOT NULL DEFAULT '{}',
  `g_character_head_color` int(11) NOT NULL DEFAULT '0',
  `g_level` int(11) NOT NULL DEFAULT '1',
  `g_exp` int(11) NOT NULL DEFAULT '0',
  `g_money` int(11) NOT NULL DEFAULT '0',
  `g_hungry` int(11) NOT NULL DEFAULT '100',
  `g_wanted` int(11) NOT NULL DEFAULT '0',
  `g_jail` int(11) NOT NULL DEFAULT '0',
  `g_jail_camera` int(11) NOT NULL DEFAULT '0',
  `g_jail_time` int(11) NOT NULL DEFAULT '0',
  `g_victims` int(11) NOT NULL DEFAULT '0',
  `g_respect` int(11) NOT NULL DEFAULT '0',
  `g_zavisim` int(11) NOT NULL DEFAULT '0',
  `g_drugs` int(11) NOT NULL DEFAULT '0',
  `g_materials` int(11) NOT NULL DEFAULT '0',
  `g_health` int(11) NOT NULL DEFAULT '100',
  `g_armour` int(11) NOT NULL DEFAULT '100',
  `g_job` int(11) NOT NULL DEFAULT '0',
  `g_fraction` int(11) NOT NULL DEFAULT '0',
  `g_fraction_clothes` int(11) NOT NULL DEFAULT '0',
  `g_fraction_rang` int(11) NOT NULL DEFAULT '0',
  `g_gang` int(11) NOT NULL DEFAULT '0',
  `g_gang_clothes` int(11) NOT NULL DEFAULT '0',
  `g_gang_rang` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `question` varchar(256) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL DEFAULT 'UNKNOWN',
  `answers` varchar(2018) NOT NULL DEFAULT '',
  `true_answer` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `registration`
--

INSERT INTO `registration` (`id`, `question`, `answers`, `true_answer`) VALUES
(1, 'Что такое PowerGaming?', '["Игра по ролям","Преувеличение физических и моральных возможностей персонажа","Умение быстро печатать","Преуменьшение физических и моральных возможностей персонажа"]', 1),
(2, 'Что такое флуд? ', '["Когда пишешь несколько сообщений одинакового значения несколько раз за короткое время", "Когда пишешь через пробел по одному слову", "Когда пишешь в верхнем регистре (CapsLock)", "Я стреляю по чайкам и не знаю ответа"]', 0),
(3, 'Что такое DeathMatch?', '["Вид американского футбола", "Убийство, совершенное с каким-либо ролевым смыслом","Убийство, совершаемое без ролевого смысла и видимых причин", "Стрельба по чайкам"]', 2),
(4, 'Что такое DriveBy?', '["Убийство машины", "Убийство машиной", "Стрельба из автомобиля", "Стрельба по автомобилю"]', 1),
(5, 'Пример OOC информации', '["Биография персонажа", "Возраст персонажа", "Имя игрока оффлайн", "Друзья персонажа"]', 2),
(6, 'Пример IC информации', '["Биография персонажа", "Игровой уровень", "Номер аккаунта", "Сайт LSFIVEM.COM"]', 0),
(7, 'Что такое MetaGaming? ', '["Использование OOC в IC", "Использование IC в OOC", "Когда ты перепутал чаты", "Когда пишешь в /b чат"]', 0),
(8, 'Что такое RevengeKill?', '["Стрельба в одного персонажа спустя время", "Стрельба в персонажа без причины", "Стрельба в персонажа после твоей смерти с целью мести", "Ограбление"]', 2),
(9, 'Торговля на сервере разрешена в случае', '["Когда продавец за, а покупатель против", "Когда продавец против, а покупатель за", "Когда обе стороны за", "Когда продавец продаёт что-то за внеигровую валюту или услуги"]', 1),
(10, 'Что запрещено в чатах (OOC)? ', '["Вежливое общение!", "Умение задавать вопросы!", "Умение давать правильные и полные ответы игрокам!", "Ругань, оскорбления, нецензурные выражения и хамство!"]', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT 'Faggio',
  `pos_x` float NOT NULL DEFAULT '0',
  `pos_y` float NOT NULL DEFAULT '0',
  `pos_z` float NOT NULL DEFAULT '0',
  `heading` int(11) NOT NULL DEFAULT '0',
  `numberPlate` varchar(128) NOT NULL DEFAULT 'LSFIVEM',
  `locked` int(11) NOT NULL DEFAULT '0',
  `engine` int(11) NOT NULL DEFAULT '0',
  `dimension` int(11) NOT NULL DEFAULT '0',
  `color1_1` int(11) NOT NULL DEFAULT '0',
  `color1_2` int(11) NOT NULL DEFAULT '0',
  `color1_3` int(11) NOT NULL DEFAULT '0',
  `color2_1` int(11) NOT NULL DEFAULT '0',
  `color2_2` int(11) NOT NULL DEFAULT '0',
  `color2_3` int(11) NOT NULL DEFAULT '0',
  `fuel` int(11) NOT NULL DEFAULT '200',
  `special_status` int(11) NOT NULL DEFAULT '0',
  `special_status_rent` int(11) NOT NULL DEFAULT '0',
  `special_job` int(11) NOT NULL DEFAULT '0',
  `special_fraction` int(11) NOT NULL DEFAULT '0',
  `special_fraction_rang` int(11) NOT NULL DEFAULT '0',
  `special_gang` int(11) NOT NULL DEFAULT '0',
  `special_gang_rang` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `vehicles`
--

INSERT INTO `vehicles` (`id`, `name`, `pos_x`, `pos_y`, `pos_z`, `heading`, `numberPlate`, `locked`, `engine`, `dimension`, `color1_1`, `color1_2`, `color1_3`, `color2_1`, `color2_2`, `color2_3`, `fuel`, `special_status`, `special_status_rent`, `special_job`, `special_fraction`, `special_fraction_rang`, `special_gang`, `special_gang_rang`) VALUES
(0, 'Faggio', -226.181, -949.56, 29.2883, 200, 'LSFIVEM', 0, 0, 0, 186, 186, 186, 186, 186, 186, 50, 3, 0, 0, 0, 0, 0, 0),
(1, 'Faggio', -227.181, -952.56, 29.2883, 200, 'LSFIVEM', 0, 0, 0, 186, 186, 186, 186, 186, 186, 50, 3, 0, 0, 0, 0, 0, 0),
(2, 'Faggio', -228.181, -955.56, 29.2883, 200, 'LSFIVEM', 0, 0, 0, 186, 186, 186, 186, 186, 186, 50, 3, 0, 0, 0, 0, 0, 0),
(3, 'Faggio', -229.181, -958.56, 29.2883, 200, 'LSFIVEM', 0, 0, 0, 186, 186, 186, 186, 186, 186, 50, 3, 0, 0, 0, 0, 0, 0),
(4, 'Faggio', -230.181, -961.56, 29.2883, 200, 'LSFIVEM', 0, 0, 0, 186, 186, 186, 186, 186, 186, 50, 3, 0, 0, 0, 0, 0, 0),
(5, 'Faggio', -231.181, -964.56, 29.2883, 200, 'LSFIVEM', 0, 0, 0, 186, 186, 186, 186, 186, 186, 50, 3, 0, 0, 0, 0, 0, 0),
(6, 'Faggio', -232.181, -967.56, 29.2883, 200, 'LSFIVEM', 0, 0, 0, 186, 186, 186, 186, 186, 186, 50, 3, 0, 0, 0, 0, 0, 0),
(7, 'Faggio', -842.16, -1180.81, 6, 90, 'LSFIVEM', 0, 0, 0, 186, 186, 186, 186, 186, 186, 50, 3, 0, 0, 0, 0, 0, 0),
(8, 'Faggio', -840.16, -1179.61, 6, 90, 'LSFIVEM', 0, 0, 0, 186, 186, 186, 186, 186, 186, 50, 3, 0, 0, 0, 0, 0, 0),
(9, 'Faggio', -838.16, -1178.41, 6, 90, 'LSFIVEM', 0, 0, 0, 186, 186, 186, 186, 186, 186, 50, 3, 0, 0, 0, 0, 0, 0),
(10, 'Faggio', -836.16, -1177.21, 6, 90, 'LSFIVEM', 0, 0, 0, 186, 186, 186, 186, 186, 186, 50, 3, 0, 0, 0, 0, 0, 0),
(11, 'Faggio', -834.16, -1176.01, 6, 90, 'LSFIVEM', 0, 0, 0, 186, 186, 186, 186, 186, 186, 50, 3, 0, 0, 0, 0, 0, 0),
(12, 'Faggio', -832.16, -1174.81, 6, 90, 'LSFIVEM', 0, 0, 0, 186, 186, 186, 186, 186, 186, 50, 3, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `warehouses`
--

CREATE TABLE `warehouses` (
  `id` int(11) NOT NULL,
  `organization` int(11) NOT NULL,
  `bank` int(11) NOT NULL,
  `mats` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `warehouses`
--

INSERT INTO `warehouses` (`id`, `organization`, `bank`, `mats`) VALUES
(1, 1, 0, 20850),
(2, 2, 0, 10000),
(3, 3, 124000, 0),
(4, 4, 0, 5595),
(5, 5, 0, 12705),
(6, 6, 0, 15000),
(7, 7, 0, 5268);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admins`
--
ALTER TABLE `admins`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `banip`
--
ALTER TABLE `banip`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `blips`
--
ALTER TABLE `blips`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gangzones`
--
ALTER TABLE `gangzones`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `houses`
--
ALTER TABLE `houses`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `banip`
--
ALTER TABLE `banip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `blips`
--
ALTER TABLE `blips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `business`
--
ALTER TABLE `business`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `gangzones`
--
ALTER TABLE `gangzones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `houses`
--
ALTER TABLE `houses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
--
-- AUTO_INCREMENT для таблицы `persons`
--
ALTER TABLE `persons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
