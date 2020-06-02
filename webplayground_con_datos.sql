-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-06-2020 a las 17:40:15
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `webplayground`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add profile', 1, 'add_profile'),
(2, 'Can change profile', 1, 'change_profile'),
(3, 'Can delete profile', 1, 'delete_profile'),
(4, 'Can view profile', 1, 'view_profile'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session'),
(29, 'Can add message', 8, 'add_message'),
(30, 'Can change message', 8, 'change_message'),
(31, 'Can delete message', 8, 'delete_message'),
(32, 'Can view message', 8, 'view_message'),
(33, 'Can add thread', 9, 'add_thread'),
(34, 'Can change thread', 9, 'change_thread'),
(35, 'Can delete thread', 9, 'delete_thread'),
(36, 'Can view thread', 9, 'view_thread'),
(37, 'Can add página', 10, 'add_page'),
(38, 'Can change página', 10, 'change_page'),
(39, 'Can delete página', 10, 'delete_page'),
(40, 'Can view página', 10, 'view_page');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$Qx6XPrJBjD8a$Sj8eF2j+G2EUrqHwdTlUFbBjBi+EdRs+Z/RRL+0NBeY=', '2020-06-02 15:29:51.006784', 1, 'luis', '', '', 'luis44larios.99@gmail.com', 1, 1, '2020-06-02 15:24:58.201202'),
(2, 'pbkdf2_sha256$180000$2GXRc0QqpMtv$+xntN8BkXLgpNXmxKWqZjd7nO1I3hSoULOqbNwuMPok=', '2020-06-02 15:38:45.322191', 0, 'manuel', '', '', 'malc137alex@gmail.com', 0, 1, '2020-06-02 15:27:41.982696'),
(3, 'pbkdf2_sha256$180000$thlR4iURlPKO$kb3EvoV91882L5Tyg4Y/LHeDBRBJI20nZpMLp3BGuRE=', NULL, 0, 'wicho', '', '', 'wicho4499.larios@gmail.com', 0, 1, '2020-06-02 15:36:11.436360'),
(4, 'pbkdf2_sha256$180000$S5qB8OYQ8ZCw$3soTBVTzFR9rOS/NzUDt3vxLKUZ3P6oFJk3ChvLFblw=', NULL, 0, 'sandi', '', '', 'sup-admin@gmail.com', 0, 1, '2020-06-02 15:36:53.056586'),
(5, 'pbkdf2_sha256$180000$uLXiI0pOBSHp$4/Ovzj2TgpT460vvIcoUnz6ETr+i3cM43N13WMeORJA=', '2020-06-02 15:39:04.662775', 0, 'mario', '', '', 'marios.blazter99@gmail.com', 0, 1, '2020-06-02 15:38:08.994514');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(2, 'admin', 'logentry'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(6, 'contenttypes', 'contenttype'),
(8, 'messenger', 'message'),
(9, 'messenger', 'thread'),
(10, 'pages', 'page'),
(1, 'registration', 'profile'),
(7, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-06-02 03:12:24.636641'),
(2, 'auth', '0001_initial', '2020-06-02 03:12:26.101651'),
(3, 'admin', '0001_initial', '2020-06-02 03:12:32.980260'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-06-02 03:12:35.465833'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-06-02 03:12:35.504754'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-06-02 03:12:36.444615'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-06-02 03:12:37.191110'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-06-02 03:12:37.996521'),
(9, 'auth', '0004_alter_user_username_opts', '2020-06-02 03:12:38.055743'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-06-02 03:12:39.225474'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-06-02 03:12:39.280992'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-06-02 03:12:39.331917'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-06-02 03:12:39.943843'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-06-02 03:12:40.607883'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-06-02 03:12:41.483118'),
(16, 'auth', '0011_update_proxy_permissions', '2020-06-02 03:12:41.748360'),
(17, 'messenger', '0001_initial', '2020-06-02 03:12:44.127846'),
(18, 'messenger', '0002_auto_20200601_2142', '2020-06-02 03:12:50.337793'),
(19, 'pages', '0001_initial', '2020-06-02 03:12:50.655083'),
(20, 'registration', '0001_initial', '2020-06-02 03:12:50.909117'),
(21, 'sessions', '0001_initial', '2020-06-02 03:12:51.735624');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('r5hm3dca7cmbx6hcze8klngu8qdqxsmr', 'NGZlMzliZTM2ZWZmOTI0ZWI5Njk1NWQ0MDk0NjdiYTM4MDVlNTFkNTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYjMwM2YzNWQ2Mjg5MDAwODZjYzZlMGZmYzM1NjI1OTI2YTgzMTkzIn0=', '2020-06-16 15:39:04.710773');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messenger_message`
--

CREATE TABLE `messenger_message` (
  `id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `messenger_message`
--

INSERT INTO `messenger_message` (`id`, `content`, `created`, `user_id`) VALUES
(1, 'Hola Luis', '2020-06-02 15:29:22.190068', 2),
(2, 'como estas', '2020-06-02 15:29:32.070542', 2),
(3, 'Bien y tu', '2020-06-02 15:30:12.111532', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messenger_thread`
--

CREATE TABLE `messenger_thread` (
  `id` int(11) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `messenger_thread`
--

INSERT INTO `messenger_thread` (`id`, `updated`) VALUES
(1, '2020-06-02 15:30:12.579449');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messenger_thread_messages`
--

CREATE TABLE `messenger_thread_messages` (
  `id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `messenger_thread_messages`
--

INSERT INTO `messenger_thread_messages` (`id`, `thread_id`, `message_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messenger_thread_users`
--

CREATE TABLE `messenger_thread_users` (
  `id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `messenger_thread_users`
--

INSERT INTO `messenger_thread_users` (`id`, `thread_id`, `user_id`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages_page`
--

CREATE TABLE `pages_page` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `order` smallint(6) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pages_page`
--

INSERT INTO `pages_page` (`id`, `title`, `content`, `order`, `created`, `updated`) VALUES
(1, 'Anime Re:zero', '<p><em><strong>Re:Zero kara Hajimeru Isekai Seikatsu</strong></em>&nbsp;(Re<big>?</big>?????????????,&nbsp;<em>Ri: Zero kara hajimeru isekai Seikatsu</em><a href=\"https://es.wikipedia.org/wiki/Ayuda:Idioma_japon%C3%A9s\" title=\"Ayuda:Idioma japonés\">?</a>, lit.&nbsp;<em>Re:Vida en un mundo diferente desde cero</em>), tambi&eacute;n conocida de forma abreviada como&nbsp;<em><strong>Re: Zero</strong></em>&nbsp;(???&nbsp;<em>Ri Zero</em><a href=\"https://es.wikipedia.org/wiki/Ayuda:Idioma_japon%C3%A9s\" title=\"Ayuda:Idioma japonés\">?</a>), es una serie de&nbsp;<a href=\"https://es.wikipedia.org/wiki/Novela_ligera\" title=\"Novela ligera\">novelas ligeras</a>&nbsp;escritas por&nbsp;<a href=\"https://es.wikipedia.org/w/index.php?title=Tappei_Nagatsuki&amp;action=edit&amp;redlink=1\" title=\"Tappei Nagatsuki (aún no redactado)\">Tappei Nagatsuki</a>&nbsp;e ilustradas por Shinichirou Otsuka.&nbsp;<a href=\"https://es.wikipedia.org/wiki/Media_Factory\" title=\"Media Factory\">Media Factory</a>&nbsp;ha publicado once vol&uacute;menes desde el 25 de enero del 2014 bajo su imprenta&nbsp;<a href=\"https://es.wikipedia.org/wiki/MF_Bunko_J\" title=\"MF Bunko J\">MF Bunko J</a>.&nbsp;</p>\r\n\r\n<p>Ha recibido cuatro adaptaciones a&nbsp;<a href=\"https://es.wikipedia.org/wiki/Manga\" title=\"Manga\">manga</a>. Una adaptaci&oacute;n a&nbsp;<a href=\"https://es.wikipedia.org/wiki/Anime\" title=\"Anime\">anime</a>&nbsp;por&nbsp;<a href=\"https://es.wikipedia.org/wiki/White_Fox\" title=\"White Fox\">White Fox</a>se estren&oacute; el 4 de abril del 2016 con el primer episodio siendo un especial de una hora; hasta el 18 de septiembre del 2016. A finales de agosto de 2016 fue anunciado un videojuego llamado&nbsp;<em><strong>Re:Zero kara Hajimeru Isekai Seikatsu -DEATH OR KISS-</strong></em>, lanzado el 30 de marzo de 2017.<a href=\"https://es.wikipedia.org/wiki/Re:Zero_kara_Hajimeru_Isekai_Seikatsu#cite_note-2\">2</a>?Crunchyroll a trav&eacute;s de su p&aacute;gina oficial revel&oacute; el doblaje de la serie al espa&ntilde;ol latino, el cu&aacute;l se comenz&oacute; a emitir semanalmente a partir del 15 de agosto de 2018 mediante su sitio web.<a href=\"https://es.wikipedia.org/wiki/Re:Zero_kara_Hajimeru_Isekai_Seikatsu#cite_note-3\">3</a>?</p>', 0, '2020-06-02 15:31:56.266086', '2020-06-02 15:32:26.373548'),
(2, 'Anime Konosuba', '<p><em><strong>Kono Subarashii Sekai ni Shukufuku wo!</strong></em>&nbsp;(?????????????!&nbsp;<em>lit. &iexcl;Dar bendiciones a este maravilloso mundo!</em><a href=\"https://es.wikipedia.org/wiki/Ayuda:Idioma_japon%C3%A9s\" title=\"Ayuda:Idioma japonés\">?</a>), m&aacute;s conocido de manera abreviada como&nbsp;<em><strong>KonoSuba!</strong></em>&nbsp;(????<a href=\"https://es.wikipedia.org/wiki/Ayuda:Idioma_japon%C3%A9s\" title=\"Ayuda:Idioma japonés\">?</a>), es una serie de&nbsp;<a href=\"https://es.wikipedia.org/wiki/Novela_ligera\" title=\"Novela ligera\">novelas ligeras</a>&nbsp;japonesas escritas por Natsume Akatsuki e ilustradas por Kurone Mishima. La editorial&nbsp;<a href=\"https://es.wikipedia.org/wiki/Kadokawa_Sh%C5%8Dten\" title=\"Kadokawa Sh?ten\">Kadokawa Sh?ten</a>&nbsp;ha publicado 17 vol&uacute;menes desde el 1 de octubre de 2013 hasta el 1 de mayo de 2020 por&nbsp;<em><a href=\"https://es.wikipedia.org/wiki/Kadokawa_Sneaker_Bunko\" title=\"Kadokawa Sneaker Bunko\">Kadokawa Sneaker Bunko</a></em>.<a href=\"https://es.wikipedia.org/wiki/KonoSuba!#cite_note-2\">2</a>? Tambi&eacute;n recibi&oacute; dos series&nbsp;<a href=\"https://es.wikipedia.org/wiki/Serie_derivada\" title=\"Serie derivada\">spin-off</a>&nbsp;de la novela ligera tituladas&nbsp;<em>Kono Subarashii Sekai ni Bakuen o!</em>&nbsp;(?????????????!<a href=\"https://es.wikipedia.org/wiki/Ayuda:Idioma_japon%C3%A9s\" title=\"Ayuda:Idioma japonés\">?</a>)&nbsp;y&nbsp;<em>Kono Kamen no Akuma ni S?dan o!</em>&nbsp;(???????????!<a href=\"https://es.wikipedia.org/wiki/Ayuda:Idioma_japon%C3%A9s\" title=\"Ayuda:Idioma japonés\">?</a>). Una adaptaci&oacute;n a&nbsp;<a href=\"https://es.wikipedia.org/wiki/Manga\" title=\"Manga\">manga</a>, ilustrada por Masahito Watari empez&oacute; a serializarse el 9 de septiembre de 2014 en la revista de manga&nbsp;<a href=\"https://es.wikipedia.org/wiki/Sh%C5%8Dnen\" title=\"Sh?nen\">sh?nen</a>&nbsp;<em><a href=\"https://es.wikipedia.org/wiki/Dragon_Age_(revista)\" title=\"Dragon Age (revista)\">Dragon Age</a></em>.<a href=\"https://es.wikipedia.org/wiki/KonoSuba!#cite_note-3\">3</a>?&nbsp;</p>', 0, '2020-06-02 15:33:13.388083', '2020-06-02 15:33:13.388083'),
(3, 'overlord anime', '<p><em><strong>Overlord</strong></em>&nbsp;(???????&nbsp;<em>?b?r?do</em><a href=\"https://es.wikipedia.org/wiki/Ayuda:Idioma_japon%C3%A9s\" title=\"Ayuda:Idioma japonés\">?</a>)&nbsp;es una serie de&nbsp;<a href=\"https://es.wikipedia.org/wiki/Novela_ligera\" title=\"Novela ligera\">novelas ligeras</a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Jap%C3%B3n\" title=\"Japón\">japonesas</a>&nbsp;escritas por&nbsp;<a href=\"https://es.wikipedia.org/w/index.php?title=Kugane_Maruyama&amp;action=edit&amp;redlink=1\" title=\"Kugane Maruyama (aún no redactado)\">Kugane Maruyama</a>&nbsp;e ilustradas por So bin. Empez&oacute; su serializaci&oacute;n en l&iacute;nea en 2010, antes de ser adquirido por&nbsp;<a href=\"https://es.wikipedia.org/wiki/Enterbrain\" title=\"Enterbrain\">Enterbrain</a>. Catorce vol&uacute;menes han sido publicados desde el 30 de julio de 2012. Una adaptaci&oacute;n a manga con ilustraciones de Hugin Miyama empez&oacute; a publicarse en la revista&nbsp;<em><a href=\"https://es.wikipedia.org/wiki/Seinen\" title=\"Seinen\">seinen</a></em>&nbsp;<em><a href=\"https://es.wikipedia.org/wiki/Comp_Ace\" title=\"Comp Ace\">Comp As</a></em>&nbsp;de&nbsp;<a href=\"https://es.wikipedia.org/wiki/Kadokawa_Sh%C5%8Dten\" title=\"Kadokawa Sh?ten\">Kadokawa Shoten</a>&nbsp;el 26 de noviembre de 2014.<a href=\"https://es.wikipedia.org/wiki/Overlord_(novela_ligera)#cite_note-1\">1</a>? Un&nbsp;<a href=\"https://es.wikipedia.org/wiki/Anime\" title=\"Anime\">anime</a>&nbsp;de 13 episodios producido por&nbsp;<a href=\"https://es.wikipedia.org/wiki/Madhouse_(animaci%C3%B3n)\" title=\"Madhouse (animación)\">Madhouse</a>&nbsp;se emiti&oacute; del 7 de julio de 2015 al 29 de septiembre de 2015. Una segunda temporada se empez&oacute; a emitir el 9 de enero de 2018 al 3 del abril del mismo a&ntilde;o. Despu&eacute;s en el mismo a&ntilde;o se empez&oacute; a emitir la tercera temporada con una duraci&oacute;n de 13 episodios.<a href=\"https://es.wikipedia.org/wiki/Overlord_(novela_ligera)#cite_note-2\">2</a>?</p>', 0, '2020-06-02 15:34:04.052824', '2020-06-02 15:34:04.052824'),
(4, 'Kobayashi-san Chi no Maid Dragon', '<p><em><strong>Kobayashi-san Chi no Maid Dragon</strong></em>&nbsp;(????????????&nbsp;<em>Kobayashi-san Chi no Meidoragon</em><a href=\"https://es.wikipedia.org/wiki/Ayuda:Idioma_japon%C3%A9s\" title=\"Ayuda:Idioma japonés\">?</a>, lit.&nbsp;<em>La sirvienta drag&oacute;n de Kobayashi-san</em>)&nbsp;es una serie de&nbsp;<a href=\"https://es.wikipedia.org/wiki/Manga\" title=\"Manga\">manga</a>&nbsp;escrita e ilustrada por Coolkyoushinja. La serializaci&oacute;n comenz&oacute; la en la revista Monthly Action de Futabasha en mayo de 2013. Un manga spin-off de Mitsuhiro Kimura comenz&oacute; la serializaci&oacute;n en Monthly Action en diciembre de 2016. Una adaptaci&oacute;n a&nbsp;<a href=\"https://es.wikipedia.org/wiki/Anime\" title=\"Anime\">anime</a>&nbsp;producida por&nbsp;<a href=\"https://es.wikipedia.org/wiki/Kyoto_Animation\" title=\"Kyoto Animation\">Kyoto Animation</a>&nbsp;se emiti&oacute; entre el 11 de enero y el 5 de abril de 2017.</p>', 0, '2020-06-02 15:34:50.073563', '2020-06-02 15:34:50.073563');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registration_profile`
--

CREATE TABLE `registration_profile` (
  `id` int(11) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `bio` longtext,
  `link` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `registration_profile`
--

INSERT INTO `registration_profile` (`id`, `avatar`, `bio`, `link`, `user_id`) VALUES
(1, 'profiles/boruto-png-6.png', 'Hola soy Luis Angel Larios Castillo y soy programador', 'https://www.facebook.com/watch/?v=1578370355637849', 1),
(2, 'profiles/png_chibi_naruto_shippuden_by_marcinha20_d8fmz2m-pre_cMrRGW2.png', 'Hola soy manuel larios', 'https://www.facebook.com/watch/?v=1578370355637849', 2),
(3, '', NULL, NULL, 3),
(4, '', NULL, NULL, 4),
(5, 'profiles/73a0e8ebdc6343f23c9ed6a780da3ab2.png', '', NULL, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `messenger_message`
--
ALTER TABLE `messenger_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messenger_message_user_id_44204cf3_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `messenger_thread`
--
ALTER TABLE `messenger_thread`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `messenger_thread_messages`
--
ALTER TABLE `messenger_thread_messages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `messenger_thread_messages_thread_id_message_id_bb58b3ca_uniq` (`thread_id`,`message_id`),
  ADD KEY `messenger_thread_mes_message_id_e4d4b7af_fk_messenger` (`message_id`);

--
-- Indices de la tabla `messenger_thread_users`
--
ALTER TABLE `messenger_thread_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `messenger_thread_users_thread_id_user_id_d8023aff_uniq` (`thread_id`,`user_id`),
  ADD KEY `messenger_thread_users_user_id_008b18f6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `pages_page`
--
ALTER TABLE `pages_page`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registration_profile`
--
ALTER TABLE `registration_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `messenger_message`
--
ALTER TABLE `messenger_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `messenger_thread`
--
ALTER TABLE `messenger_thread`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `messenger_thread_messages`
--
ALTER TABLE `messenger_thread_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `messenger_thread_users`
--
ALTER TABLE `messenger_thread_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pages_page`
--
ALTER TABLE `pages_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `registration_profile`
--
ALTER TABLE `registration_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `messenger_message`
--
ALTER TABLE `messenger_message`
  ADD CONSTRAINT `messenger_message_user_id_44204cf3_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `messenger_thread_messages`
--
ALTER TABLE `messenger_thread_messages`
  ADD CONSTRAINT `messenger_thread_mes_message_id_e4d4b7af_fk_messenger` FOREIGN KEY (`message_id`) REFERENCES `messenger_message` (`id`),
  ADD CONSTRAINT `messenger_thread_mes_thread_id_a70e3887_fk_messenger` FOREIGN KEY (`thread_id`) REFERENCES `messenger_thread` (`id`);

--
-- Filtros para la tabla `messenger_thread_users`
--
ALTER TABLE `messenger_thread_users`
  ADD CONSTRAINT `messenger_thread_users_thread_id_8c4fd4f2_fk_messenger_thread_id` FOREIGN KEY (`thread_id`) REFERENCES `messenger_thread` (`id`),
  ADD CONSTRAINT `messenger_thread_users_user_id_008b18f6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `registration_profile`
--
ALTER TABLE `registration_profile`
  ADD CONSTRAINT `registration_profile_user_id_e133ce43_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
