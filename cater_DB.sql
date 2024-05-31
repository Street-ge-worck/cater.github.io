-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 30 2024 г., 01:24
-- Версия сервера: 8.0.30
-- Версия PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `cater_DB`
--

-- --------------------------------------------------------

--
-- Структура таблицы `broni`
--

CREATE TABLE `broni` (
  `id` int UNSIGNED NOT NULL,
  `login` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `tupeOfBoat` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `nameOfTheBoat` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `route` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `dateOfBirth` date NOT NULL,
  `pasportSeries` bigint NOT NULL,
  `issetBuWhom` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `dateOfIssue` date NOT NULL,
  `registrationAdress` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `startBroni` datetime NOT NULL,
  `endBroni` datetime NOT NULL,
  `numberHours` int NOT NULL,
  `price` bigint NOT NULL,
  `confirmation` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(256) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'катер'),
(2, 'яхта'),
(3, 'лодка'),
(7, 'qqqqqq'),
(14, 'новая'),
(15, 'cyjdf yjd');

-- --------------------------------------------------------

--
-- Структура таблицы `comentaries`
--

CREATE TABLE `comentaries` (
  `id` bigint NOT NULL,
  `name` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `surname` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `text` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `confirmation` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `comentaries`
--

INSERT INTO `comentaries` (`id`, `name`, `surname`, `date`, `text`, `confirmation`) VALUES
(2, 'Георгий', 'Бельченко', '2024-05-26 19:36:58', 'Добрый вечер, спасибо за прекрасную морскую прогулку', 1),
(4, 'Георгий', 'Бельченко', '2024-05-26 19:49:52', 'Очень понравился сервис, получили всей семьей незабываемые эмоции', 1),
(5, 'Георгий', 'Бельченко', '2024-05-26 19:50:08', 'Все супер, это последнее что нужно было реализовать, если сработает, я наконец стану свободен ура', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `sale`
--

CREATE TABLE `sale` (
  `number_hours` int NOT NULL,
  `number_sale` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `sale`
--

INSERT INTO `sale` (`number_hours`, `number_sale`) VALUES
(3, 5),
(4, 5),
(5, 10),
(6, 10),
(7, 15),
(8, 15),
(9, 20);

-- --------------------------------------------------------

--
-- Структура таблицы `tovar`
--

CREATE TABLE `tovar` (
  `id` int NOT NULL,
  `caterName` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `capacity` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `height` float NOT NULL,
  `width` float NOT NULL,
  `precipitation` varchar(266) COLLATE utf8mb4_general_ci NOT NULL,
  `cabin` int NOT NULL,
  `speed` int NOT NULL,
  `age` int NOT NULL,
  `crew` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `arenda` int NOT NULL,
  `zalog` int NOT NULL,
  `dateOfAdditions` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pathPhoto` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `number` tinyint(1) DEFAULT '1',
  `categoryCater` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `tovar`
--

INSERT INTO `tovar` (`id`, `caterName`, `description`, `capacity`, `height`, `width`, `precipitation`, `cabin`, `speed`, `age`, `crew`, `arenda`, `zalog`, `dateOfAdditions`, `pathPhoto`, `number`, `categoryCater`) VALUES
(2, 'катер!', 'во имя всего святого СРАБОТАЙ', '', 3, 3, '2', 1, 31, 2007, '23', 15000, 32000, '2024-05-27 18:20:14', 'sss', 0, ''),
(5, 'sadjk', 'asakkk', '10\r\n', 121, 434, '343435', 454, 567, 787, '7689', 5656, 34343, '2024-05-29 17:06:40', 'asasd', 1, 'qqqqqq'),
(7, 'Пароход 3000', 'Медленно плывет не потому что не может быстрее, а что бы рассмотрели все красоты', '20', 12, 6, '1', 2, 12, 2020, '6', 70000, 120000, '2024-05-29 18:01:42', 'пароход.jpg', 1, 'Моторный катер'),
(9, 'Лодка', 'Для настоящих любителей экстрима', '2', 12, 2, '1', 0, 90, 2003, '1', 12000, 30000, '2024-05-29 17:54:04', 'лодка.jpg', 1, 'новая'),
(10, 'корабль', 'Корабль в стиле викингов сделанный из красного дерева в соответсвующем стиле', '2', 27, 14, '6', 3, 5, 1232, '7', 200000, 500000, '2024-05-29 16:54:15', 'корабль.jpg', 0, 'лодка');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `surname` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `patronymic` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `login` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(266) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `apdate_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `patronymic`, `login`, `email`, `password`, `created_at`, `apdate_at`) VALUES
(1, 'Бельченко', 'Георгий', 'Дмитриевич', 'admin', 'weder3456789@gmail.com', 'yacht333', '2024-04-30 07:30:25', '2024-04-30 07:30:25'),
(2, 'Георгий', 'Бельченко', '', 'pipo', 'weder3456789@gmail.com', '922VVORQo', '2024-04-30 07:46:53', '2024-04-30 07:46:53'),
(3, 'Алевтина', 'Рашитовна', '', 'osa', 'alevtina-belchenko@yandex.ru', 'qwer1234', '2024-05-26 09:36:59', '2024-05-26 09:36:59');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `broni`
--
ALTER TABLE `broni`
  ADD PRIMARY KEY (`id`),
  ADD KEY `login` (`login`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comentaries`
--
ALTER TABLE `comentaries`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`number_hours`);

--
-- Индексы таблицы `tovar`
--
ALTER TABLE `tovar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `caterName` (`caterName`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `broni`
--
ALTER TABLE `broni`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `comentaries`
--
ALTER TABLE `comentaries`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `tovar`
--
ALTER TABLE `tovar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `broni`
--
ALTER TABLE `broni`
  ADD CONSTRAINT `broni_ibfk_1` FOREIGN KEY (`login`) REFERENCES `users` (`login`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
