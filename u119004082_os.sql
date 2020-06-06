-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 23 2020 г., 06:58
-- Версия сервера: 10.2.30-MariaDB
-- Версия PHP: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `u119004082_os`
--

-- --------------------------------------------------------

--
-- Структура таблицы `baby_answer`
--

CREATE TABLE `baby_answer` (
  `id` int(11) NOT NULL,
  `temp_min` int(11) NOT NULL,
  `temp_max` int(11) NOT NULL,
  `age_min` float NOT NULL,
  `age_max` float NOT NULL,
  `discr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `options` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `baby_answer`
--

INSERT INTO `baby_answer` (`id`, `temp_min`, `temp_max`, `age_min`, `age_max`, `discr`, `options`) VALUES
(1, -21, -10, 0, 0.5, '', '3,8,1,7,5,4,2,6'),
(2, -10, -5, 0, 0.5, '', '3,8,7,5,4,2,6'),
(3, -5, 0, 0, 0.5, '', '3,8,5,2,6'),
(4, 0, 5, 0, 0.5, '', '3,8,5,2,6'),
(5, 5, 10, 0, 0.5, '', '3,8,5,2'),
(6, 10, 15, 0, 0.5, '', '3,8,28,2'),
(7, 15, 18, 0, 0.5, '', '3,30,2'),
(8, 18, 20, 0, 0.5, '', '3,29,4'),
(9, 20, 35, 0, 0.5, '', '3,31,9'),
(10, -20, -10, 1, 100, '', '8,1,7,5,4,2,6'),
(11, -10, -5, 1, 100, '', '8,7,5,4,2,6'),
(12, -5, 0, 1, 100, '', '8,5,2,6'),
(13, 0, 5, 1, 100, '', '8,5,2,6'),
(14, 5, 10, 1, 100, '', '8,5,2,6'),
(15, 10, 15, 1, 100, '', '8,28,2'),
(16, 15, 18, 1, 100, '', '32,14,33,9'),
(17, 18, 20, 1, 100, '', '32,9'),
(18, 20, 35, 1, 100, '', '31,9'),
(27, -10, -5, 0.5, 1, '', '8,1,7,5,4,2,6'),
(28, -5, 0, 0.5, 1, '', '8,7,5,4,2,6'),
(29, 0, 5, 0.5, 1, '', '8,5,2,6'),
(30, 5, 10, 0.5, 1, '', '8,5,2,6'),
(31, 10, 15, 0.5, 1, '', '8,28,2'),
(32, 15, 18, 0.5, 1, '', '30,2'),
(33, 18, 20, 0.5, 1, '', '29,4'),
(34, 20, 35, 0.5, 1, '', '31,9'),
(35, -20, -10, 0.5, 1, '', '8,1,7,5,4,2,6');

-- --------------------------------------------------------

--
-- Структура таблицы `kleidung`
--

CREATE TABLE `kleidung` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `kleidung`
--

INSERT INTO `kleidung` (`id`, `name`, `image`) VALUES
(1, 'Теплая кофта', 'http://androiddev.xyz/weatherApp/images/blouse.svg'),
(2, 'Демисезонная тонкая шапочка под капюшон', 'http://androiddev.xyz/weatherApp/images/beanie.svg'),
(3, 'Подгузник', 'http://androiddev.xyz/weatherApp/images/diaper.svg'),
(4, 'Легкий чепчик х/б', 'http://androiddev.xyz/weatherApp/images/hat.svg'),
(5, 'Комбинезон или меховой теплый конверт', 'http://androiddev.xyz/weatherApp/images/overall.svg'),
(6, 'Шарф', 'http://androiddev.xyz/weatherApp/images/scarf.svg'),
(7, 'Пинетки, носки', 'http://androiddev.xyz/weatherApp/images/sock.svg'),
(8, 'Хлопковый слип, флисовый слип(или хлопковый комбинезон-слип)', 'http://androiddev.xyz/weatherApp/images/star.svg'),
(9, 'Панама, кепка', 'http://androiddev.xyz/weatherApp/images/cap.svg'),
(10, 'Варежки', 'http://androiddev.xyz/weatherApp/images/mittens.svg'),
(11, 'Плотные колготки', 'http://androiddev.xyz/weatherApp/images/tights.svg'),
(12, 'Теплые носки', 'http://androiddev.xyz/weatherApp/images/garment.svg'),
(13, 'Ботинки', 'http://androiddev.xyz/weatherApp/images/footwear.svg'),
(14, 'Штаны', 'http://androiddev.xyz/weatherApp/images/shorts.svg'),
(15, 'Платье', 'http://androiddev.xyz/weatherApp/images/skirt.svg'),
(16, 'Шорты', 'http://androiddev.xyz/weatherApp/images/denim-shorts.svg'),
(28, 'Комбинезон межсезонный', 'http://androiddev.xyz/weatherApp/images/overall.svg'),
(29, 'Легкий комбинезон-слип', 'http://androiddev.xyz/weatherApp/images/star.svg'),
(30, 'Теплый комбинезон-слип', 'http://androiddev.xyz/weatherApp/images/star.svg'),
(31, 'Боди с коротким рукавом', 'http://androiddev.xyz/weatherApp/images/star.svg'),
(32, 'Теплое боди с длинными рукавами', 'http://androiddev.xyz/weatherApp/images/star.svg'),
(33, 'Кофта', 'http://androiddev.xyz/weatherApp/images/blouse.svg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `baby_answer`
--
ALTER TABLE `baby_answer`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `kleidung`
--
ALTER TABLE `kleidung`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `baby_answer`
--
ALTER TABLE `baby_answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT для таблицы `kleidung`
--
ALTER TABLE `kleidung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
