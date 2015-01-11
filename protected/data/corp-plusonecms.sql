-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Сен 11 2015 г., 09:56
-- Версия сервера: 5.5.41
-- Версия PHP: 5.4.39-0+deb7u2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `corp-plusonecms`
--

-- --------------------------------------------------------

--
-- Структура таблицы `area`
--

DROP TABLE IF EXISTS `area`;
CREATE TABLE IF NOT EXISTS `area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `area`
--

INSERT INTO `area` (`id`, `name`, `title`) VALUES
(3, 'telefony-v-shapke', 'Телефоны в шапке'),
(7, 'preimuschestva-na-glavnoj', 'Преимущества на главной'),
(8, 'dostupy-na-glavnoj', 'Доступы на главной'),
(9, 'uslugi-na-glavnoj', 'Услуги на главной'),
(10, 'sotsseti-v-podvale-shablona', 'Соцсети в подвале шаблона'),
(11, 'zagolovok-v-shapke', 'Заголовок в шапке'),
(12, 'o-kompanii', 'О компании'),
(14, 'kontakty', 'Контакты');

-- --------------------------------------------------------

--
-- Структура таблицы `area_block`
--

DROP TABLE IF EXISTS `area_block`;
CREATE TABLE IF NOT EXISTS `area_block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT NULL,
  `content` text,
  `view` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `AREA` (`area_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

--
-- Дамп данных таблицы `area_block`
--

INSERT INTO `area_block` (`id`, `name`, `title`, `area_id`, `visible`, `content`, `view`, `sort_order`) VALUES
(45, 'vozmozhnost-zarekomendovat-sebja-dlja-naibolshego-chisla-potentsialnyh-klientov', 'Возможность зарекомендовать себя для наибольшего числа потенциальных клиентов', 7, 1, '<p>\r\n	Возможность зарекомендовать себя для наибольшего числа потенциальных клиентов</p>\r\n', 'areablocknotitle', 270),
(46, 'sozdanie-progressivnogo-imidzha-dlja-kompanii', 'Создание прогрессивного имиджа для компании', 7, 1, '<p>\r\n	Создание прогрессивного имиджа для компании</p>\r\n', 'areablocknotitle', 280),
(17, 'telefony', 'Телефоны', 3, 1, '<p><a href="/">+7(499) 3223-404</a> <a href="/">+7(8412) 25 04 04</a></p>\r\n', 'areablocknotitle', 10),
(56, 'vk', 'vk', 10, 1, '<p><a href=""><img alt="" src="/images/social-vk.png" style="height:42px; width:42px" /></a></p>\r\n', 'areablocknotitle', 350),
(38, 'sharkcompany', 'sharkcompany', 11, 0, '<p>Почувствуй себя акулой бизнеса</p>\r\n', 'areablock', 210),
(39, 'o-kompanii-fishpangram', 'О компании «Fishpangram»', 12, 1, '<p>\r\n	Компания &laquo;Fishpangram&raquo; создана для того, чтобы вы смогли в полной мере оценить информационное наполнение и функциональные возможности вашего будущего сайта. Созданный визуальный образ и услуги на данной демонстрационной версии компании приведены для примера.</p>\r\n<p>\r\n	Для вашего бизнеса мы разработаем свой индивидуальный дизайн, ориентируясь на деятельность именно вашей компании с использованием предложенного функционала.</p>\r\n', 'areablock', 220),
(47, 'effektivnoe-prodvizhenie-predlagaemyh-uslug', 'Эффективное продвижение предлагаемых услуг', 7, 1, '<p>\r\n	Эффективное продвижение предлагаемых услуг</p>\r\n', 'areablocknotitle', 290),
(48, 'uvelichenie-rynka-sbyta', 'Увеличение рынка сбыта', 7, 1, '<p>\r\n	Увеличение рынка сбыта</p>\r\n', 'areablocknotitle', 300),
(49, 'rasshirenie-geografii-kompanii', 'Расширение географии компании', 7, 1, '<p>\r\n	Расширение географии компании</p>\r\n', 'areablocknotitle', 310),
(50, 'slogan', 'slogan', 11, 1, '<a href="/">\r\n					<div class="slogan">\r\n						<span>sharkcompany</span>\r\n						<p>Почувствуй себя акулой бизнеса</p>\r\n					</div>\r\n				</a>', 'areablocknotitle', 320),
(51, 'usluga-1', 'Услуга 1', 9, 1, '<div class = "service" >Услуга 1</span></div>\r\n', 'areablock', 330),
(57, 'fb', 'fb', 10, 1, '<p><a href=""><img alt="" src="/images/social-fb.png" style="height:42px; width:42px" /></a></p>\r\n', 'areablocknotitle', 360),
(58, 'in', 'in', 10, 1, '<p><a href=""><img alt="" src="/images/social-in.png" style="height:42px; width:42px" /></a></p>\r\n', 'areablocknotitle', 370),
(59, 'tw', 'tw', 10, 1, '<p><a href=""><img alt="" src="/images/social-tw.png" style="height:42px; width:42px" /></a></p>\r\n', 'areablocknotitle', 380),
(60, 'kontakty', 'Контакты', 14, 1, '<p>Телефон: +7 (8412) 25 04 04, +7 (499) 322 34 04</p>\r\n\r\n<p>Адрес: г. Пенза, ул. Кураева 1а, 3 этаж</p>\r\n\r\n<p>E-mail:&nbsp;info@plusonedev.ru</p>\r\n', 'areablocknotitle', 390);

-- --------------------------------------------------------

--
-- Структура таблицы `area_block_old`
--

DROP TABLE IF EXISTS `area_block_old`;
CREATE TABLE IF NOT EXISTS `area_block_old` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT NULL,
  `content` text,
  `view` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `AREA` (`area_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- Дамп данных таблицы `area_block_old`
--

INSERT INTO `area_block_old` (`id`, `name`, `title`, `area_id`, `visible`, `content`, `view`, `sort_order`) VALUES
(45, 'vozmozhnost-zarekomendovat-sebja-dlja-naibolshego-chisla-potentsialnyh-klientov', 'Возможность зарекомендовать себя для наибольшего числа потенциальных клиентов', 7, 1, '<p>\r\n	Возможность зарекомендовать себя для наибольшего числа потенциальных клиентов</p>\r\n', 'areablocknotitle', 270),
(46, 'sozdanie-progressivnogo-imidzha-dlja-kompanii', 'Создание прогрессивного имиджа для компании', 7, 1, '<p>\r\n	Создание прогрессивного имиджа для компании</p>\r\n', 'areablocknotitle', 280),
(17, 'telefony', 'Телефоны', 3, 1, '<a href="/">+7(499) 674 76 44</a>\r\n<a href="/">+7(8412) 25 04 04</a>\r\n', 'areablocknotitle', 10),
(33, 'vk', 'vk', 10, 1, '<a href="#" class="socialnet vk" target="_blank"></a>', 'areablocknotitle', 170),
(34, 'fb', 'fb', 10, 1, '<a href="#" class="socialnet fb" target="_blank"></a>', 'areablocknotitle', 180),
(36, 'tw', 'tw', 10, 1, '', 'areablocknotitle', 200),
(38, 'sharkcompany', 'sharkcompany', 11, 0, '<p>Почувствуй себя акулой бизнеса</p>\r\n', 'areablock', 210),
(39, 'o-kompanii-fishpangram', 'О компании «Fishpangram»', 12, 1, '<p>\r\n	Компания &laquo;Fishpangram&raquo; создана для того, чтобы вы смогли в полной мере оценить информационное наполнение и функциональные возможности вашего будущего сайта. Созданный визуальный образ и услуги на данной демонстрационной версии компании приведены для примера.</p>\r\n<p>\r\n	Для вашего бизнеса мы разработаем свой индивидуальный дизайн, ориентируясь на деятельность именно вашей компании с использованием предложенного функционала.</p>\r\n', 'areablock', 220),
(47, 'effektivnoe-prodvizhenie-predlagaemyh-uslug', 'Эффективное продвижение предлагаемых услуг', 7, 1, '<p>\r\n	Эффективное продвижение предлагаемых услуг</p>\r\n', 'areablocknotitle', 290),
(48, 'uvelichenie-rynka-sbyta', 'Увеличение рынка сбыта', 7, 1, '<p>\r\n	Увеличение рынка сбыта</p>\r\n', 'areablocknotitle', 300),
(49, 'rasshirenie-geografii-kompanii', 'Расширение географии компании', 7, 1, '<p>\r\n	Расширение географии компании</p>\r\n', 'areablocknotitle', 310),
(50, 'slogan', 'slogan', 11, 1, '<a href="/">\r\n					<div class="slogan">\r\n						<span>sharkcompany</span>\r\n						<p>Почувствуй себя акулой бизнеса</p>\r\n					</div>\r\n				</a>', 'areablocknotitle', 320),
(51, 'usluga-1', 'Услуга 1', 9, 1, '<div class = "service" >Услуга 1</span></div>\r\n', 'areablock', 330),
(55, 'in', 'in', 10, 1, '', 'areablocknotitle', 350);

-- --------------------------------------------------------

--
-- Структура таблицы `area_old`
--

DROP TABLE IF EXISTS `area_old`;
CREATE TABLE IF NOT EXISTS `area_old` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Дамп данных таблицы `area_old`
--

INSERT INTO `area_old` (`id`, `name`, `title`) VALUES
(3, 'telefony-v-shapke', 'Телефоны в шапке'),
(7, 'preimuschestva-na-glavnoj', 'Преимущества на главной'),
(8, 'dostupy-na-glavnoj', 'Доступы на главной'),
(9, 'uslugi-na-glavnoj', 'Услуги на главной'),
(10, 'sotsseti-v-podvale-shablona', 'Соцсети в подвале шаблона'),
(11, 'zagolovok-v-shapke', 'Заголовок в шапке'),
(12, 'o-kompanii', 'О компании');

-- --------------------------------------------------------

--
-- Структура таблицы `banners`
--

DROP TABLE IF EXISTS `banners`;
CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `code` text,
  `content_type` int(11) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `clicks` int(11) DEFAULT NULL,
  `notactive` tinyint(1) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `bannerarea` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Дамп данных таблицы `banners`
--

INSERT INTO `banners` (`id`, `name`, `title`, `description`, `image`, `link`, `code`, `content_type`, `views`, `clicks`, `notactive`, `sort_order`, `bannerarea`) VALUES
(18, 'banner3', 'Баннер3', 'Решаем задачи любого масштаба!\r\nМы - команда профессионалов, готовая реализовать любые ваши бизнес идеи в кратчайшие сроки.', 'ae8c8710c2acf162b6b23959239d06e4.jpg', '', '', 1, 27, NULL, 0, 30, 7),
(17, 'banner-2', 'Баннер 2', 'Решаем задачи любого масштаба!\r\nМы - команда профессионалов, готовая реализовать любые ваши бизнес идеи в кратчайшие сроки.', '67f70b84e02e176f9bc808e604d0ca15.jpg', '', '', 1, 25, NULL, 0, 20, 7),
(16, 'banner-1', 'Баннер 1', 'Решаем задачи любого масштаба!\r\nМы - команда профессионалов, готовая реализовать любые ваши бизнес идеи в кратчайшие сроки.', '670267940d28eee81ef9753f545b01a9.jpg', '', '', 1, 28, NULL, 0, 10, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `banner_area`
--

DROP TABLE IF EXISTS `banner_area`;
CREATE TABLE IF NOT EXISTS `banner_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `mode` int(11) DEFAULT NULL,
  `queue` int(11) DEFAULT NULL,
  `widget` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `banner_area`
--

INSERT INTO `banner_area` (`id`, `name`, `title`, `mode`, `queue`, `widget`) VALUES
(7, 'header', 'header', 5, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `banner_area_old`
--

DROP TABLE IF EXISTS `banner_area_old`;
CREATE TABLE IF NOT EXISTS `banner_area_old` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `mode` int(11) DEFAULT NULL,
  `queue` int(11) DEFAULT NULL,
  `widget` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `banner_area_old`
--

INSERT INTO `banner_area_old` (`id`, `name`, `title`, `mode`, `queue`, `widget`) VALUES
(7, 'header', 'header', 5, NULL, ''),
(8, 'newheader', 'new_header', 1, NULL, '');

-- --------------------------------------------------------

--
-- Структура таблицы `callback_config`
--

DROP TABLE IF EXISTS `callback_config`;
CREATE TABLE IF NOT EXISTS `callback_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `enabled` tinyint(1) NOT NULL,
  `type` varchar(255) NOT NULL,
  `host` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `port` varchar(255) NOT NULL,
  `encryption` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `verify_code` tinyint(1) DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `timeout` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `callback_config`
--

INSERT INTO `callback_config` (`id`, `enabled`, `type`, `host`, `username`, `password`, `port`, `encryption`, `sender`, `verify_code`, `email`, `timeout`) VALUES
(1, 1, 'smtp', 'smtp.mail.ru', 'zakazstroy@bk.ru', '1234qwe', '465', 'ssl', 'Корпоративный сайт', 1, 'zakazstroy@bk.ru', '');

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_category`
--

DROP TABLE IF EXISTS `catalog_category`;
CREATE TABLE IF NOT EXISTS `catalog_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `short_title` varchar(100) DEFAULT NULL,
  `long_title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `keywords` text,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `text` text,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=62 ;

--
-- Дамп данных таблицы `catalog_category`
--

INSERT INTO `catalog_category` (`id`, `short_title`, `long_title`, `link`, `keywords`, `description`, `image`, `text`, `sort_order`) VALUES
(4, 'Recruiting', 'Тестовая категория 1', 'recruiting', 'тест', 'тестовая категория!!!', '259cc202110a3aa8fbc837a873af1dde.jpg', '<p>Осуществление бизнес-процессов и задач, направленных на решение кадровых вопросов компаний.</p>\r\n', 30),
(51, 'Screening', 'провееерка', 'screening', 'проверка', 'проверка', '237344911e9eccc5491e8f669364f86e.jpg', '<p>Подбор по формальным требованиям с сопоставлением требований клиента с данными резюме и анкет кандидатов.</p>\r\n', 60),
(49, 'Executive Search', 'Тестовая категория 2', 'executive-search', 'тест', 'тестовая категория!!!', '04086dc2c8651ba13cafc616b5520b72.jpg', '<p>Подбор топ-менеджеров и других редких специалистов из небольшого числа высокооплачиваемых кандидатов.</p>\r\n', 40),
(50, 'Assessment Center', 'Тестовая категория 3', 'assessment-center', 'Категория 3', 'Категория 3', '90c2e2fedf7b09facc6470ce0b2b7c36.jpg', '<p>Предлагает стандартизированную многоаспектную оценку персонала, тестирование, презентации и игры.</p>\r\n', 50),
(61, 'Главная категория', 'Общая категория для всех услуг', 'head-category', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_config`
--

DROP TABLE IF EXISTS `catalog_config`;
CREATE TABLE IF NOT EXISTS `catalog_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `keywords` text,
  `description` text,
  `layout` varchar(255) DEFAULT NULL,
  `category_perpage` int(11) DEFAULT NULL,
  `service_perpage` int(11) DEFAULT NULL,
  `widget_count` tinyint(1) NOT NULL DEFAULT '0',
  `c_image_small_w` int(11) DEFAULT NULL,
  `c_image_small_h` int(11) DEFAULT NULL,
  `s_image_middle_w` int(11) DEFAULT NULL,
  `s_image_middle_h` int(11) DEFAULT NULL,
  `s_image_small_w` int(11) DEFAULT NULL,
  `s_image_small_h` int(11) DEFAULT NULL,
  `resize_mode` int(11) DEFAULT NULL,
  `watermark_image` varchar(255) DEFAULT NULL,
  `watermark_x` int(11) DEFAULT NULL,
  `watermark_y` int(11) DEFAULT NULL,
  `no_watermark` tinyint(1) DEFAULT '0',
  `text` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `catalog_config`
--

INSERT INTO `catalog_config` (`id`, `title`, `keywords`, `description`, `layout`, `category_perpage`, `service_perpage`, `widget_count`, `c_image_small_w`, `c_image_small_h`, `s_image_middle_w`, `s_image_middle_h`, `s_image_small_w`, `s_image_small_h`, `resize_mode`, `watermark_image`, `watermark_x`, `watermark_y`, `no_watermark`, `text`) VALUES
(1, 'Услуги компании', 'ключевые слова', 'описание', '', 4, 4, 4, 600, 600, 500, 500, 250, 250, 0, '4b89bf04a1cc0271214c6c6a934d8ca9.png', 1, 1, 1, '');

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_image`
--

DROP TABLE IF EXISTS `catalog_image`;
CREATE TABLE IF NOT EXISTS `catalog_image` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_service` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `alt_text` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Дамп данных таблицы `catalog_image`
--

INSERT INTO `catalog_image` (`id`, `id_service`, `image`, `alt_text`, `sort_order`) VALUES
(4, 45, '0417a8aeab009670e28f22a75be9345c.png', '  nm,m,', 40),
(9, 44, 'a29b96a88e53f2451db5a6a6e784874e.jpg', '     sdfsdfs  ', 70),
(11, 51, '7384aaafb3c19d106568d61bb58cd118.png', NULL, 80),
(12, 52, 'ac1c9a6a316f08dc1e1187b76975205e.jpg', NULL, 30),
(13, 52, 'ea140273be85f7705d8606976a5b9a9e.png', NULL, 90),
(14, 52, '799c347a2404b2056c4e41772c9764b9.jpg', NULL, 10),
(15, 52, '819fe73a006330dbf0b551a89b0c24a8.png', NULL, 20);

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_service`
--

DROP TABLE IF EXISTS `catalog_service`;
CREATE TABLE IF NOT EXISTS `catalog_service` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_category` int(11) NOT NULL,
  `short_title` varchar(100) DEFAULT NULL,
  `long_title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `keywords` text,
  `description` text,
  `photo` varchar(255) DEFAULT NULL,
  `on_main` tinyint(1) DEFAULT '0',
  `text` text,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=126 ;

--
-- Дамп данных таблицы `catalog_service`
--

INSERT INTO `catalog_service` (`id`, `id_category`, `short_title`, `long_title`, `link`, `keywords`, `description`, `photo`, `on_main`, `text`, `sort_order`) VALUES
(121, 0, 'Executive Search', 'Правильный выбор в океане кандидатов', 'Executive-Search', 'Подбор топ-менеджеров и других редких специалистов из небольшого числа высокооплачиваемых кандидатов.', 'Подбор топ-менеджеров и других редких специалистов из небольшого числа высокооплачиваемых кандидатов.', '0f099fe8957d4ba61420ca2beb7aec3c.png', 0, '<p>Выбор кандидата может помочь в увеличении производительности, прибыли и повышении лояльности сотрудников. Неправильный выбор обычно сказывается на большой текучке персонала или недостаточной компетенции сотрудников.</p>\r\n\r\n<p>Подбор персонала начинается с описания вакансии и анализа её на адекватность сложившейся ситуации на кадровом рынке и в компании-работодателе. При необходимости описание вакансии корректируется. Далее начинается этап поиска кандидатов. Желательно иметь начальную базу кандидатов, а в процессе работы постоянно её пополнять.</p>\r\n', 2),
(122, 0, 'Assessment Center', 'Правильный выбор в океане кандидатов', 'Assessment-Center', 'Предлагает стандартизированную многоаспектную оценку персонала, тестирование, презентации и игры.', 'Предлагает стандартизированную многоаспектную оценку персонала, тестирование, презентации и игры.', 'd57742728180c24c50dff82a45d7251e.png', 0, '<p>Выбор кандидата может помочь в увеличении производительности, прибыли и повышении лояльности сотрудников. Неправильный выбор обычно сказывается на большой текучке персонала или недостаточной компетенции сотрудников.</p>\r\n\r\n<p>Подбор персонала начинается с описания вакансии и анализа её на адекватность сложившейся ситуации на кадровом рынке и в компании-работодателе. При необходимости описание вакансии корректируется. Далее начинается этап поиска кандидатов. Желательно иметь начальную базу кандидатов, а в процессе работы постоянно её пополнять.</p>\r\n', 3),
(123, 0, 'Screening', 'Правильный выбор в океане кандидатов', 'Screening', 'Подбор по формальным требованиям с сопоставлением требований клиента с данными резюме и анкет кандидатов.', 'Подбор по формальным требованиям с сопоставлением требований клиента с данными резюме и анкет кандидатов.', 'd40fe69434c561a49866ef2db9c8864f.png', 0, '<p>Выбор кандидата может помочь в увеличении производительности, прибыли и повышении лояльности сотрудников. Неправильный выбор обычно сказывается на большой текучке персонала или недостаточной компетенции сотрудников.</p>\r\n\r\n<p>Подбор персонала начинается с описания вакансии и анализа её на адекватность сложившейся ситуации на кадровом рынке и в компании-работодателе. При необходимости описание вакансии корректируется. Далее начинается этап поиска кандидатов. Желательно иметь начальную базу кандидатов, а в процессе работы постоянно её пополнять.</p>\r\n', 4),
(120, 0, 'Recruiting', 'Правильный выбор в океане кандидатов', 'RECRUITING', 'Осуществление бизнес-процессов и задач, направленных на решение кадровых вопросов компаний.', 'Рекрутинг (англ. recruiting) — это бизнес-процесс, являющийся одной из основных обязанностей <br>\r\nHR-менеджеров или рекрутеров. Также подбор персонала — основная услуга, предлагаемая кадровыми агентствами и специализированными интернет-сайтами по поиску персонала.', '491b107e575b3b2775f70c3002b6f4a6.jpg', 0, '<p>Выбор кандидата может помочь в увеличении производительности, прибыли и повышении лояльности сотрудников. Неправильный выбор обычно сказывается на большой текучке персонала или недостаточной компетенции сотрудников.</p>\r\n\r\n<p>Подбор персонала начинается с описания вакансии и анализа её на адекватность сложившейся ситуации на кадровом рынке и в компании-работодателе. При необходимости описание вакансии корректируется. Далее начинается этап поиска кандидатов. Желательно иметь начальную базу кандидатов, а в процессе работы постоянно её пополнять.</p>\r\n', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `config`
--

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sitename` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `adminonly` int(11) DEFAULT NULL,
  `mainpage_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `config`
--

INSERT INTO `config` (`id`, `sitename`, `author`, `adminonly`, `mainpage_id`) VALUES
(1, 'Корпоративный сайт', 'plusodin-web', 0, 39);

-- --------------------------------------------------------

--
-- Структура таблицы `gallery`
--

DROP TABLE IF EXISTS `gallery`;
CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `cover_photo_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `gallery`
--

INSERT INTO `gallery` (`id`, `title`, `cover_photo_id`, `sort_order`) VALUES
(3, 'Весёлый корпоративный отдых в океанских глубинах', 44, 10),
(5, 'Подари праздник акулятам! Мероприятие ко дню защиты детей ', 53, 20),
(6, 'Наши победы и достижения', 62, 30);

-- --------------------------------------------------------

--
-- Структура таблицы `gallery_config`
--

DROP TABLE IF EXISTS `gallery_config`;
CREATE TABLE IF NOT EXISTS `gallery_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `limit` int(11) DEFAULT NULL,
  `display_mode` int(11) DEFAULT NULL,
  `selected_gallery_id` int(11) DEFAULT NULL,
  `prev_x` int(11) DEFAULT NULL,
  `prev_y` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `gallery_config`
--

INSERT INTO `gallery_config` (`id`, `title`, `limit`, `display_mode`, `selected_gallery_id`, `prev_x`, `prev_y`) VALUES
(1, 'Фотогалереи', 3, 0, NULL, 260, 260);

-- --------------------------------------------------------

--
-- Структура таблицы `gallery_photo`
--

DROP TABLE IF EXISTS `gallery_photo`;
CREATE TABLE IF NOT EXISTS `gallery_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `alt_text` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=75 ;

--
-- Дамп данных таблицы `gallery_photo`
--

INSERT INTO `gallery_photo` (`id`, `gallery_id`, `file`, `caption`, `alt_text`, `sort_order`) VALUES
(49, 3, 'c5347ed9da6a2ca66327a5e318ce7709.png', NULL, NULL, 60),
(50, 3, '00bc393634642c694fa90cea5f3434a1.png', NULL, NULL, 70),
(51, 3, 'e4fdd84a1db3d2ce55fc8bc891256a87.png', NULL, NULL, 80),
(52, 3, '735322cad2db33d478ff1bc764459e48.png', NULL, NULL, 90),
(48, 3, '04b747486bf86f356ae317ddc61f05b0.png', NULL, NULL, 50),
(47, 3, 'fe8b5036afa87df9089cf115b9049ef1.png', NULL, NULL, 40),
(45, 3, 'b0876f8bb80067f87083cc9119f678bc.png', NULL, NULL, 20),
(44, 3, 'ed6017d77f1fcf909ba95a3fca470cfa.png', NULL, NULL, 10),
(53, 5, 'bd53ed6a59883dc3c38e05a02eb26711.png', NULL, NULL, 100),
(54, 5, 'c06aabe003a064c84bc8d46a7a6560fb.png', NULL, NULL, 110),
(55, 5, '7e4134ae81f3515dfe430905d89bd745.png', NULL, NULL, 120),
(56, 5, 'f5a3637c0aaa88a782888533162e83b9.png', NULL, NULL, 130),
(57, 5, 'c9a6763b2764f2296303ca25c9478a9d.png', NULL, NULL, 140),
(58, 5, '4b67a476a0e60edc3dec91b73ceebf01.png', NULL, NULL, 150),
(59, 5, 'f5dd8a141a7e3beb41ffbfdd64189bec.png', NULL, NULL, 160),
(60, 5, 'a332f2a0b7f3ca4dad448ac2a0037b5d.png', NULL, NULL, 170),
(61, 5, '4dee1b8671e0dd5cace941b965d03dff.png', NULL, NULL, 180),
(62, 6, '81ee9d31b19a4cdd851807fd20394eb6.png', NULL, NULL, 190),
(63, 6, '329775f9bfe80f02f6a89e37b28ae3f7.png', NULL, NULL, 200),
(64, 6, 'b9faa812439ae00f9f0e7f9f3f9e54b7.png', NULL, NULL, 210),
(65, 6, 'c8a2e7e891aeeb5ebbe46762b4dc47d9.png', NULL, NULL, 220),
(66, 6, 'c6d7ee155fce87387a8cdb736e7d6e84.png', NULL, NULL, 230),
(67, 6, 'ef5bb00455e27709821c3a06b721687b.png', NULL, NULL, 240),
(68, 6, '5ac63fb0508de36b87b9e36fc4bcbdfa.png', NULL, NULL, 250),
(69, 6, '2d25d25ce688e08b3acf2dab30a78621.png', NULL, NULL, 260),
(70, 6, 'a8243f02bb9099100c3dbeb45c6e5956.png', NULL, NULL, 270);

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `items_template` varchar(255) DEFAULT NULL,
  `activeitem_class` varchar(255) DEFAULT NULL,
  `firstitem_class` varchar(255) DEFAULT NULL,
  `lastitem_class` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NAME` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`id`, `title`, `name`, `items_template`, `activeitem_class`, `firstitem_class`, `lastitem_class`) VALUES
(1, 'Главное меню', 'main', '{menu}', '', 'home', '');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_item`
--

DROP TABLE IF EXISTS `menu_item`;
CREATE TABLE IF NOT EXISTS `menu_item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL DEFAULT '',
  `link` varchar(128) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL,
  `menu_id` int(11) unsigned NOT NULL,
  `sort_order` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `PARENT` (`parent_id`),
  KEY `MENU` (`menu_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `menu_item`
--

INSERT INTO `menu_item` (`id`, `title`, `link`, `parent_id`, `menu_id`, `sort_order`) VALUES
(1, 'О компании', '/about', 0, 1, 10),
(2, 'Услуги', '/services', 0, 1, 20),
(3, 'Фотогалерея', '/gallery', 0, 1, 30),
(4, 'Новости', '/news', 0, 1, 40),
(5, 'Отзывы', '/reviews', 0, 1, 50),
(6, 'Контакты', '/callback', 0, 1, 60);

-- --------------------------------------------------------

--
-- Структура таблицы `menu_item_old`
--

DROP TABLE IF EXISTS `menu_item_old`;
CREATE TABLE IF NOT EXISTS `menu_item_old` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL DEFAULT '',
  `link` varchar(128) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL,
  `menu_id` int(11) unsigned NOT NULL,
  `sort_order` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `PARENT` (`parent_id`),
  KEY `MENU` (`menu_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `menu_item_old`
--

INSERT INTO `menu_item_old` (`id`, `title`, `link`, `parent_id`, `menu_id`, `sort_order`) VALUES
(1, 'О компании', '/about', 0, 1, 10),
(2, 'Услуги', '/services', 0, 1, 20),
(3, 'Фотогалерея', '/gallery', 0, 1, 30),
(4, 'Новости', '/news', 0, 1, 40),
(5, 'Отзывы', '/reviews', 0, 1, 50),
(6, 'Контакты', '/callback', 0, 1, 60);

-- --------------------------------------------------------

--
-- Структура таблицы `menu_old`
--

DROP TABLE IF EXISTS `menu_old`;
CREATE TABLE IF NOT EXISTS `menu_old` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `items_template` varchar(255) DEFAULT NULL,
  `activeitem_class` varchar(255) DEFAULT NULL,
  `firstitem_class` varchar(255) DEFAULT NULL,
  `lastitem_class` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NAME` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `menu_old`
--

INSERT INTO `menu_old` (`id`, `title`, `name`, `items_template`, `activeitem_class`, `firstitem_class`, `lastitem_class`) VALUES
(1, 'Главное меню', 'main', '{menu}', '', 'home', '');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `annotation` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `public` tinyint(1) NOT NULL,
  `cover_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `link` (`link`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `link`, `date`, `annotation`, `description`, `meta_keywords`, `meta_description`, `public`, `cover_id`) VALUES
(2, 'Огромное пополнение в океанской базе', 'ogromnoe-popolnenie-v-okeanskoj-baze-v', '2015-01-28 21:39:17', 'В нашей океанской базе самых востребованных и редких профессий 2015 года насчитывается 2500 соискателей, готовых работать в вашей компании.', '<p>В нашей океанской базе самых востребованных и редких профессий 2015 года насчитывается 2500 соискателей, готовых работать в вашей компании.</p>\r\n', 'second news', 'second news', 1, 45),
(4, 'Новый дизайнерский морской офис!', 'novyj-dizajnerskij-morskoj-ofis-x', '2015-01-28 21:43:58', 'Новый дизайнерский морской офис открылся в самом сердце океана. Всегда рады новым клиентам и новым соискателям. Всех ждем в гости!', '<p>Новый дизайнерский морской офис открылся в самом сердце океана. Всегда рады новым клиентам и новым соискателям.</p>\r\n\r\n<p>Всех ждем в гости!</p>\r\n', 'fourth news', 'fourth news', 1, 29),
(7, 'Огромное пополнение в океанской базе', 'ogromnoe-popolnenie-v-okeanskoj-baze', '2015-02-12 11:37:52', 'В нашей океанской базе самых востребованных и редких профессий 2015 года насчитывается 2500 соискателей, готовых работать в вашей компании.', '<p>В нашей океанской базе самых востребованных и редких профессий 2015 года насчитывается 2500 соискателей, готовых работать в вашей компании.</p>\r\n', 'news', 'news', 1, 23),
(9, 'Новый дизайнерский морской офис', 'novyj-dizajnerskij-morskoj-ofis', '2015-04-16 10:59:05', 'Новый дизайнерский морской офис открылся в самом сердце океана. Всегда рады новым клиентам и новым соискателям. Всех ждем в гости!', '<p>Новый дизайнерский морской офис открылся в самом сердце океана. Всегда рады новым клиентам и новым соискателям.<br />\r\nВсех ждем в гости!</p>\r\n', 'морской офис', 'офис', 1, 52);

-- --------------------------------------------------------

--
-- Структура таблицы `news_config`
--

DROP TABLE IF EXISTS `news_config`;
CREATE TABLE IF NOT EXISTS `news_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `view_count` int(11) NOT NULL,
  `widget_count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `news_config`
--

INSERT INTO `news_config` (`id`, `title`, `view_count`, `widget_count`) VALUES
(1, 'Новости', 4, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `news_images`
--

DROP TABLE IF EXISTS `news_images`;
CREATE TABLE IF NOT EXISTS `news_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- Дамп данных таблицы `news_images`
--

INSERT INTO `news_images` (`id`, `news_id`, `filename`) VALUES
(52, 9, 'a4bdcc208922e7bc6b65ae0175f22725.png'),
(53, 9, '72fb189b5e38055821329f7befb7092d.png'),
(54, 9, 'e635630086b855e29dfcbd8043a02cc2.png');

-- --------------------------------------------------------

--
-- Структура таблицы `page`
--

DROP TABLE IF EXISTS `page`;
CREATE TABLE IF NOT EXISTS `page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL,
  `link` varchar(128) NOT NULL DEFAULT '',
  `title` varchar(512) NOT NULL DEFAULT '',
  `content` longtext,
  `keywords` varchar(1000) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `layout` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `LINK` (`link`),
  KEY `PARENT` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- Дамп данных таблицы `page`
--

INSERT INTO `page` (`id`, `parent_id`, `link`, `title`, `content`, `keywords`, `description`, `layout`, `view`) VALUES
(39, 0, 'glavnaja', 'Главная', '', '', '', 'first_page', 'view'),
(38, 0, 'about', 'О компании', '<p>Данный текст предназначен для того, чтобы было хорошо и ясно видно, как будут выглядеть стили текста. Делается это для того, чтобы заказчик, дизайнер и верстальщик правильно поняли друг друга и не было потом никаких вопросов и претензий типа &laquo;я думал, что это будет выглядеть по-другому&raquo; и так далее...</p>\r\n\r\n<p>Здесь, например, можно увидеть, каким будет абзац основного текста. Просим обратить внимание на межстрочное расстояние, отступ первой строки, выравнивание, расстояние между абзацами. Также важна сама гарнитура основного шрифта, кегль (размер).</p>\r\n\r\n<h2>Заголовок 2</h2>\r\n\r\n<p>Заголовок, который Вы видите выше имеет стиль заголовка 2. Такова будет его гарнитура, начертание, отступы, размер.</p>\r\n\r\n<h3>Заголовок 3</h3>\r\n\r\n<p>Внутри текста могут быть фразы, выделенные жирным шрифтом. Также могут быть <em>слова и целые предложения выделенные курсивом</em>. В тексте могут встречаться <a href="#">ссылки</a>.</p>\r\n\r\n<p><img alt="" src="/upload/userfiles/images/896952746df5653f8845d41d19b5aa26.jpg" style="float:left; height:195px; width:195px" />Текст может содержать рисунки. Они могут быть помещены в текст с обтеканием или без, иметь выравнивание влево, вправо или по центру. Имеет значение рамка вокруг рисунка, ее цвет, толщина, и начертание (сплошная, пунктирная и т. д.), отступ картинки от рамки и отстсупы. рамки от обрамляющего текста.</p>\r\n\r\n<table border="1" cellpadding="1" cellspacing="1" style="width:820px">\r\n	<caption>\r\n	<p style="text-align:left">Также текст может содержать таблицы:</p>\r\n	</caption>\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">Заголовок 1</th>\r\n			<th scope="col">Заголовок 2</th>\r\n			<th scope="col">Заголовок 3</th>\r\n			<th scope="col">Заголовок 4</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Содержание 1.1</td>\r\n			<td>Содержание 2.1</td>\r\n			<td>Содержание 3.1</td>\r\n			<td>Содержание 4.1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Содержание 1.2</td>\r\n			<td>Содержание 2.2</td>\r\n			<td>Содержание 3.2</td>\r\n			<td>Содержание 4.2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Содержание 1.3</td>\r\n			<td>Содержание 2.3</td>\r\n			<td>Содержание 3.3</td>\r\n			<td>Содержание 4.3</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Содержание 1.4</td>\r\n			<td>Содержание 2.4</td>\r\n			<td>Содержание 3.4</td>\r\n			<td>Содержание 4.4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Содержание 1.5</td>\r\n			<td>Содержание 2.5</td>\r\n			<td>Содержание 3.5</td>\r\n			<td>Содержание 4.5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Содержание 1.6</td>\r\n			<td>Содержание 2.6</td>\r\n			<td>Содержание 3.6</td>\r\n			<td>Содержание 4.6</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Таблица может иметь разные стили рамки, отступы внутри ячеек, расстояния между ячейками, заголовок таблицы, цвет фона ячеек и другие параметры.</p>\r\n\r\nВ тексте может присутствовать список. В нем надо обратить внимание на:\r\n\r\n<ul>\r\n	<li>отступы списка относительно окружающего текста;</li>\r\n	<li>тип списка: нумерованный числами, буквами, размеченный маркерами;</li>\r\n	<li>отступы каждого элемента списка слева, справа, сверху и снизу;</li>\r\n	<li>вид, форма, цвет маркера</li>\r\n</ul>\r\n\r\n<p>Это, пожалуй, все. Желаем Вам, чтобы Ваш текст выглядел красиво, презентабельно, информативно. Чтобы его было приятно, удобно и полезно читать!</p>\r\n', '', '', 'main', 'view');

-- --------------------------------------------------------

--
-- Структура таблицы `page_old`
--

DROP TABLE IF EXISTS `page_old`;
CREATE TABLE IF NOT EXISTS `page_old` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL,
  `link` varchar(128) NOT NULL DEFAULT '',
  `title` varchar(512) NOT NULL DEFAULT '',
  `content` longtext,
  `keywords` varchar(1000) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `layout` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `LINK` (`link`),
  KEY `PARENT` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Дамп данных таблицы `page_old`
--

INSERT INTO `page_old` (`id`, `parent_id`, `link`, `title`, `content`, `keywords`, `description`, `layout`, `view`) VALUES
(16, 0, 'main', 'Главная', '', 'Главная', 'Главная', 'first_page', 'notitle'),
(28, 0, 'about', 'О компании', ' <h1>О компании (Наполнение сайта)</h1>\r\n        <p>\r\n            Данный текст предназначен для того, чтобы было хорошо и ясно видно, как будут выглядеть стили текста. Делается это для того, чтобы заказчик, дизайнер и верстальщик правильно поняли друг друга и не было потом никаких вопросов и претензий типа «я думал, что это будет выглядеть по-другому» и так далее...\r\n        </p>\r\n        <p>\r\n            Здесь, например, можно увидеть, каким будет абзац основного текста. Просим обратить внимание на межстрочное расстояние, отступ первой строки, выравнивание, расстояние между абзацами. Также важна сама гарнитура основного шрифта, кегль (размер).\r\n        </p>\r\n        <h2>\r\n            Заголовок 2\r\n        </h2>\r\n        <p>\r\n            Заголовок, который Вы видите выше имеет стиль заголовка 2. Такова будет его гарнитура, начертание, отступы, размер.\r\n        </p>\r\n        <h3>\r\n            Заголовок 3\r\n        </h3>\r\n        <p>\r\n            Внутри текста могут быть фразы, выделенные <b>жирным шрифтом</b>. Также могут быть <i>слова и целые предложения выделенные курсивом</i>. В тексте могут встречаться <a href="#">ссылки</a>.\r\n        </p>\r\n        <img src="/images/photo-gallery.jpg">\r\n        <p>\r\n            Текст может содержать рисунки. Они могут быть помещены в текст с обтеканием или без, иметь выравнивание влево, вправо или по центру. Имеет значение рамка вокруг рисунка, ее цвет, толщина, и начертание (сплошная, пунктирная и т. д.), отступ картинки от рамки и отстсупы. рамки от обрамляющего текста.\r\n        </p>\r\n        <table>\r\n            <caption>Также текст может содержать таблицы:</caption>\r\n            <tbody><tr>\r\n                <th>заголовок 1</th>\r\n                <th>заголовок 2</th>\r\n                <th>заголовок 3</th>\r\n                <th>заголовок 4</th>\r\n            </tr>\r\n            <tr>\r\n                <td>Содержание 1.1</td>\r\n                <td>Содержание 2.1</td>\r\n                <td>Содержание 3.1</td>\r\n                <td>Содержание 4.1</td>\r\n            </tr>\r\n            <tr>\r\n                <td>Содержание 1.2</td>\r\n                <td>Содержание 2.2</td>\r\n                <td>Содержание 3.2</td>\r\n                <td>Содержание 4.2</td>\r\n            </tr>\r\n            <tr>\r\n                <td>Содержание 1.3</td>\r\n                <td>Содержание 2.3</td>\r\n                <td>Содержание 3.3</td>\r\n                <td>Содержание 4.3</td>\r\n            </tr>\r\n            <tr>\r\n                <td>Содержание 1.4</td>\r\n                <td>Содержание 2.4</td>\r\n                <td>Содержание 3.4</td>\r\n                <td>Содержание 4.4</td>\r\n            </tr>					<tr>\r\n                <td>Содержание 1.5</td>\r\n                <td>Содержание 2.5</td>\r\n                <td>Содержание 3.5</td>\r\n                <td>Содержание 4.5</td>\r\n            </tr>					<tr>\r\n                <td>Содержание 1.6</td>\r\n                <td>Содержание 2.6</td>\r\n                <td>Содержание 3.6</td>\r\n                <td>Содержание 4.6</td>\r\n            </tr>\r\n        </tbody></table>\r\n        <p>\r\n            Таблица может иметь разные стили рамки, отступы внутри ячеек, расстояния между ячейками, заголовок таблицы, цвет фона ячеек и другие параметры.\r\n        </p>\r\n        В тексте может присутствовать список. В нем надо обратить внимание на:\r\n        <ul>\r\n            <li>отступы списка относительно окружающего текста;</li>\r\n            <li>тип списка: нумерованный числами, буквами, размеченный маркерами;</li>\r\n            <li>отступы каждого элемента списка слева, справа, сверху и снизу;</li>\r\n            <li>вид, форма, цвет маркера</li>\r\n        </ul>\r\n        <p>\r\n            Это, пожалуй, все. Желаем Вам, чтобы Ваш текст выглядел красиво, презентабельно, информативно. Чтобы его было приятно, удобно и полезно читать!\r\n        </p>', 'О кампании', 'О компании', 'main', 'view'),
(30, 0, 'content', 'Наполнение сайта', '<p>\r\n	<em>Страница в разработке.</em></p>\r\n', 'Наполнение сайта', 'Наполнение сайта', 'main', 'view');

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_create` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `text` text,
  `public` tinyint(1) NOT NULL,
  `checked` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id`, `date_create`, `name`, `email`, `text`, `public`, `checked`) VALUES
(24, '2015-05-15 12:56:11', 'Акула Акулярова', 'zakazstroy@bk.ru', 'В восторге! Спасибо за отличную работу! С новыми задачами обязательно обратимся к вам. Вы - настоящая команда профессионалов.', 1, 0),
(38, '2015-08-10 17:24:05', 'Иванов Иван Иванович', 'ivmartin@yandex.ru', 'Проверка', 0, 0),
(26, '2015-05-15 12:59:03', 'Акулина Акулясова', 'zakazstroy@bk.ru', 'Спасибо за работу, отлично во всех смыслах! Чудесно, что есть такие профессионалы, как вы. Обязательно обратимся с новыми задачами.', 1, 0),
(29, '2015-07-02 13:30:06', 'Акулина Акулясова', 'sffds@sdf.ru', 'Работать с вашей командой - сплошное удовольствие! Спасибо за быстроту и качество исполнения. вы - лучшие.', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `reviews_config`
--

DROP TABLE IF EXISTS `reviews_config`;
CREATE TABLE IF NOT EXISTS `reviews_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `premoder` tinyint(1) DEFAULT NULL,
  `reviews_perpage` int(11) DEFAULT NULL,
  `show_captcha` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `reviews_config`
--

INSERT INTO `reviews_config` (`id`, `premoder`, `reviews_perpage`, `show_captcha`) VALUES
(1, 1, 3, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_migration`
--

DROP TABLE IF EXISTS `tbl_migration`;

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `salt` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `salt`, `role`, `status`) VALUES
(1, 'admin', 'dispetcher.bikow@yandex.ru', '2656a196fb1f511628fe61365bf596db', '54862c1be6f582.03655350', 'admin', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
