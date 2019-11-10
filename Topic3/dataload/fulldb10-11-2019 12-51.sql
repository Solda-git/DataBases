DROP DATABASE IF EXISTS vk_sol;
CREATE DATABASE vk_sol;

use  vk_sol;


/* 
#
# 1. TABLE STRUCTURE FOR: users
#
*/

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `users_phone_idx` (`phone`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('1', 'Linnea', 'Fritsch', 'schulist.buster@example.org', '665');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('2', 'Elfrieda', 'Fadel', 'hermiston.yasmine@example.com', '645206');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('3', 'Axel', 'Frami', 'streich.edwina@example.net', '304');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('4', 'Quinten', 'DuBuque', 'rprosacco@example.net', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('5', 'Camille', 'Schaefer', 'tressie.berge@example.com', '423185');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('6', 'Adrienne', 'Eichmann', 'gturcotte@example.net', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('7', 'Barrett', 'Schiller', 'purdy.tara@example.com', '5313979795');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('8', 'Geovanni', 'Schultz', 'rippin.kelli@example.com', '7650720110');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('9', 'Wilford', 'Champlin', 'ucummings@example.net', '884858');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('10', 'Winnifred', 'Heaney', 'ftorp@example.org', '288');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('11', 'Santos', 'Vandervort', 'drake.hoeger@example.net', '237');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('12', 'Betsy', 'Wolf', 'bashirian.nona@example.org', '22');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('13', 'Enos', 'Boyle', 'ari97@example.net', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('14', 'Catharine', 'Witting', 'josefina91@example.net', '143980');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('15', 'Randi', 'Schiller', 'fae.braun@example.net', '571560');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('16', 'Kiarra', 'Weber', 'keeling.natalie@example.net', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('17', 'Orrin', 'Schumm', 'ktowne@example.com', '794854');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('18', 'Velda', 'Kozey', 'raphael58@example.com', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('19', 'Adrien', 'Terry', 'ron17@example.net', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('20', 'Samir', 'Schneider', 'koss.lera@example.com', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('21', 'Hailie', 'Monahan', 'mnolan@example.net', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('22', 'Creola', 'Nienow', 'vonrueden.murphy@example.net', '32');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('23', 'Esta', 'Ledner', 'kwelch@example.org', '2511505725');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('24', 'Erik', 'Runte', 'era76@example.org', '823');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('25', 'Meghan', 'Greenholt', 'pnader@example.com', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('26', 'Gretchen', 'Simonis', 'jgoodwin@example.org', '332405');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('27', 'Kari', 'Jenkins', 'immanuel.johns@example.com', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('28', 'Frida', 'Hettinger', 'karelle.johnson@example.com', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('29', 'Hester', 'Simonis', 'ignatius27@example.org', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('30', 'Soledad', 'McClure', 'neal.baumbach@example.net', '255');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('31', 'Giles', 'Mayert', 'spinka.amparo@example.org', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('32', 'Chase', 'Hintz', 'augustus.mueller@example.org', '973503');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('33', 'Bryana', 'Blick', 'nick86@example.com', '860991');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('34', 'Tracy', 'Klein', 'xaltenwerth@example.net', '457');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('35', 'Alexandro', 'Emard', 'jerald.kovacek@example.org', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('36', 'Marisa', 'Carter', 'roma25@example.net', '8780613361');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('37', 'Itzel', 'Leffler', 'bahringer.dejon@example.net', '246942');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('38', 'Gino', 'McLaughlin', 'emmanuel.rempel@example.org', '338');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('39', 'Alessia', 'Larson', 'carolanne59@example.com', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('40', 'Bo', 'Mertz', 'wisozk.wallace@example.net', '573502');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('41', 'Janie', 'Renner', 'ofadel@example.org', '5453984036');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('42', 'Kirk', 'Vandervort', 'pfeffer.tatyana@example.org', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('43', 'Lily', 'Schinner', 'cruz66@example.org', '450');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('44', 'Kirk', 'Gottlieb', 'esmeralda.murazik@example.net', '55');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('45', 'Jessy', 'McKenzie', 'wisoky.britney@example.org', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('46', 'Haylie', 'Ruecker', 'mohr.jacey@example.org', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('47', 'Andy', 'Halvorson', 'leilani.spinka@example.com', '2240517238');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('48', 'Vicky', 'Welch', 'abuckridge@example.com', '3401873702');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('49', 'Teresa', 'Stamm', 'stark.angelica@example.net', '93');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('50', 'Helena', 'Stark', 'tamara.littel@example.net', '243428');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('51', 'Jarvis', 'Schmitt', 'green.dane@example.org', '201');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('52', 'Zelma', 'Schmeler', 'sonya.oconnell@example.org', '10246');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('53', 'Einar', 'Collier', 'zboncak.bailee@example.com', '5689029764');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('54', 'Chloe', 'Nolan', 'karen46@example.net', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('55', 'Erling', 'Stracke', 'freeman.beier@example.net', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('56', 'Yolanda', 'Hegmann', 'dominic.schulist@example.org', '339753');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('57', 'Alivia', 'Schuppe', 'tierra23@example.org', '386');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('58', 'Erna', 'Stokes', 'tbayer@example.org', '673638');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('59', 'Ayla', 'Hermiston', 'keagan.koepp@example.net', '49');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('60', 'Ransom', 'Miller', 'watsica.sanford@example.org', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('61', 'Billie', 'Kozey', 'mheaney@example.com', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('62', 'Wilber', 'Kuhlman', 'marley.pollich@example.com', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('63', 'Shany', 'Mohr', 'ubaldo19@example.com', '999');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('64', 'Gus', 'Hamill', 'dbosco@example.com', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('65', 'Adolfo', 'OKeefe', 'langosh.verda@example.org', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('66', 'Jada', 'Harber', 'kayleigh46@example.org', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('67', 'Gerald', 'Marvin', 'gorczany.tatyana@example.org', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('68', 'Kavon', 'Terry', 'ratke.rosendo@example.org', '198');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('69', 'Ericka', 'Ledner', 'jacobson.gabriella@example.org', '7406450728');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('70', 'Nicole', 'Osinski', 'sawayn.matteo@example.com', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('71', 'Dashawn', 'Gutkowski', 'pherzog@example.net', '179322');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('72', 'Erna', 'Macejkovic', 'windler.fredy@example.net', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('73', 'Belle', 'Lebsack', 'angus.hoppe@example.org', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('74', 'Logan', 'Nader', 'daphne72@example.org', '448240685');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('75', 'Viva', 'Kuhic', 'gleason.hollis@example.net', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('76', 'Shyanne', 'Runolfsdottir', 'bessie18@example.com', '820538');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('77', 'Lenna', 'Langworth', 'khilll@example.org', '8855715396');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('78', 'Clement', 'Lynch', 'jerrod.luettgen@example.org', '835');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('79', 'Corbin', 'Hartmann', 'brent72@example.org', '181');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('80', 'Lizzie', 'Balistreri', 'vleannon@example.org', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('81', 'Dereck', 'OConnell', 'lacy.oconnell@example.net', '93');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('82', 'Casey', 'Torphy', 'orin62@example.com', '300');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('83', 'Kristin', 'Larkin', 'providenci14@example.net', '7612996034');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('84', 'Donald', 'Bogan', 'philip.boyle@example.com', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('85', 'Erica', 'Dibbert', 'lluettgen@example.com', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('86', 'Jamaal', 'Howe', 'robb.ward@example.net', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('87', 'Uriah', 'Bruen', 'saul.bergstrom@example.org', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('88', 'Jayda', 'Kshlerin', 'annetta86@example.net', '366');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('89', 'Shania', 'Keebler', 'monroe36@example.net', '287');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('90', 'Emerson', 'Heller', 'lbogan@example.net', '894519');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('91', 'Stephany', 'Harris', 'coty.davis@example.org', '69454');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('92', 'Kendall', 'Metz', 'jschneider@example.org', '48');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('93', 'Georgianna', 'Koss', 'bella.thompson@example.net', '72');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('94', 'Mafalda', 'Hettinger', 'watsica.rodolfo@example.com', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('95', 'Tiffany', 'Hudson', 'gleichner.bo@example.org', '25');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('96', 'Bennie', 'Mueller', 'francesco.wisoky@example.net', '46');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('97', 'Lexie', 'Keeling', 'caleb.yost@example.org', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('98', 'Gaetano', 'Lebsack', 'hane.jesse@example.com', '529101');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('99', 'Maia', 'Ullrich', 'memard@example.net', '4583513238');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('100', 'Lorine', 'Corwin', 'hilbert96@example.com', '1');

/*
#
# 2. TABLE  STRUCTURE FOR: media_types
#
*/
DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media_types` (`id`, `name`) VALUES ('1', 'laborum');
INSERT INTO `media_types` (`id`, `name`) VALUES ('2', 'quis');
INSERT INTO `media_types` (`id`, `name`) VALUES ('3', 'architecto');
INSERT INTO `media_types` (`id`, `name`) VALUES ('4', 'est');
INSERT INTO `media_types` (`id`, `name`) VALUES ('5', 'voluptatem');

/*
#
# 3. TABLE STRUCTURE FOR: media
#
*/

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '1', '1', 'Corporis nesciunt dolor ad necessitatibus magnam et velit. Sed cum veniam exercitationem blanditiis eos culpa. Illum autem temporibus rerum veritatis.', 'velit', 6640, NULL, '1988-12-08 11:29:17', '1992-10-28 00:28:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '2', '2', 'Laborum omnis doloremque rerum quisquam nesciunt. Neque voluptatem quis error quod. Et soluta animi atque ipsa sequi corrupti autem. Sed aut consequatur minus ut veritatis et ex.', 'nemo', 956, NULL, '2005-02-17 01:22:37', '1978-08-13 04:08:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '3', '3', 'Molestiae et ipsum a fuga. Doloremque qui nisi dignissimos dolorum. Quis ut ex suscipit placeat corporis.', 'commodi', 20411605, NULL, '1982-07-07 18:50:43', '2008-04-25 07:53:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '4', '4', 'Molestiae itaque nesciunt doloribus sed dolor. Odio fugit culpa est voluptas. Ex commodi laudantium nemo tempora aliquid omnis est dolor.', 'alias', 861105, NULL, '2003-08-24 09:49:07', '1988-10-27 01:40:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '5', '5', 'Ut itaque non repellendus asperiores. Et officia eius ab rerum. Natus maiores iusto vitae minima officiis officia aut. Pariatur voluptate iste numquam.', 'praesentium', 8213017, NULL, '2011-02-13 04:45:33', '2008-08-24 11:35:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '1', '6', 'Quisquam vel iste optio consequatur voluptas atque. Minima provident eos nisi praesentium enim et.', 'sint', 5847979, NULL, '1984-06-30 19:26:04', '2013-04-18 03:21:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '2', '7', 'Similique et nulla id recusandae voluptas nam. In porro consectetur dolore ipsam. Libero velit fuga minima. Sapiente praesentium sint ea.', 'totam', 953646859, NULL, '1993-05-25 04:09:26', '1989-06-02 03:06:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '3', '8', 'Rem animi nulla voluptatum consequatur illum iusto similique. Provident eum sapiente cum voluptatem.', 'qui', 0, NULL, '1995-11-18 14:21:41', '1994-05-12 11:16:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '4', '9', 'Id porro vel qui soluta. Praesentium iusto sit quod consectetur. Ea est tempora nulla nostrum sed nulla aut qui. Eaque ipsam laudantium et placeat omnis.', 'cum', 6870776, NULL, '2012-01-20 12:53:38', '1996-03-09 04:15:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '5', '10', 'Culpa porro sequi maxime quam dolorem voluptate. Officia molestias excepturi quos natus sed. Vero voluptas provident facere aspernatur accusantium minus. Enim eligendi inventore velit non.', 'necessitatibus', 67349, NULL, '1976-11-02 01:15:56', '1985-08-21 13:20:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('11', '1', '11', 'Velit qui natus nostrum delectus sit odio exercitationem qui. Quas recusandae nihil ut illum nisi eius. Dolorum harum non numquam mollitia est quaerat. Tempora sed aut officiis occaecati aliquam voluptates adipisci. Quo quibusdam incidunt ab dolores sed consequuntur tempora consequatur.', 'cum', 1, NULL, '2010-01-15 12:30:14', '1990-09-18 10:01:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('12', '2', '12', 'Odit quo quae accusantium voluptas earum qui harum. Quae at repellat porro et repellat. Sit aut ut dolorum inventore qui sequi ut. Nihil velit non sit doloremque.', 'quis', 972471, NULL, '2004-12-06 16:09:13', '2009-08-09 04:05:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('13', '3', '13', 'Veniam voluptatem corrupti nostrum sed quis alias. Voluptatibus quis sed error officia. Omnis et quidem hic est natus autem.', 'eius', 58914152, NULL, '1986-09-27 23:27:39', '1998-01-08 01:45:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('14', '4', '14', 'Quisquam inventore aut earum. Nobis cumque sint dolorem. Voluptatem est facilis fugit maiores consectetur odio. Quis fugit tempora magni laudantium voluptatum.', 'consequatur', 1351234, NULL, '1977-06-21 00:20:00', '1988-02-02 05:00:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('15', '5', '15', 'Id quis eaque soluta vero non. Sunt doloribus temporibus ipsa exercitationem. Unde explicabo sit eligendi esse. Ipsa at non impedit molestiae illo accusamus.', 'at', 94, NULL, '1990-07-12 06:43:50', '2010-11-17 02:12:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('16', '1', '16', 'Qui sint non dolores officia et quisquam. Consequuntur cupiditate incidunt sed neque itaque aut. Qui qui fugiat placeat inventore libero sapiente quisquam. Necessitatibus pariatur culpa qui ea quod.', 'quaerat', 269041, NULL, '2013-12-30 09:00:20', '1972-09-05 16:38:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('17', '2', '17', 'Aspernatur blanditiis provident ut nam ea. Error in libero libero impedit non.', 'dolores', 5, NULL, '2016-09-09 01:13:32', '1974-11-06 18:59:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('18', '3', '18', 'Eius optio beatae veritatis deleniti excepturi. Commodi magni ut ea. Ducimus dignissimos qui molestiae voluptas consequuntur. Assumenda dolorum et velit itaque id velit quis nobis.', 'magnam', 40152, NULL, '2017-08-18 13:51:45', '2008-11-24 17:30:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('19', '4', '19', 'Ullam suscipit maxime illo possimus veritatis iure cupiditate. Aut tempora nihil officiis et a placeat sint cum. Quis in quis soluta id voluptatem. Magni accusantium similique dolores corrupti. Tempore laborum libero veniam nihil.', 'autem', 3014920, NULL, '1970-07-18 07:32:58', '1991-08-17 15:59:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('20', '5', '20', 'Ut qui voluptatum occaecati aut nesciunt quo. Aut rerum id est libero et. Nemo temporibus reprehenderit aliquam nihil odit aspernatur voluptas esse. Aspernatur nihil totam voluptatum quis eos beatae asperiores.', 'non', 909, NULL, '1982-06-06 05:37:02', '2007-08-31 02:04:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('21', '1', '21', 'Ut doloribus praesentium illum. Ipsa recusandae amet voluptatem omnis. Sit ut est quasi.', 'et', 0, NULL, '2010-05-14 02:32:21', '1997-03-26 22:01:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('22', '2', '22', 'Et harum quae et et ex. Voluptatibus praesentium et atque corrupti animi a eaque tenetur. Quaerat enim cumque quas quidem sit. Nobis repudiandae quia et sed in.', 'et', 5464, NULL, '1975-07-13 17:52:19', '1987-09-16 10:56:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('23', '3', '23', 'Et impedit et in tempora porro. Ratione voluptatem quia dolore quis enim eum. Ut praesentium asperiores dolores eum quasi architecto. A quos est voluptatem laborum sint neque deleniti qui.', 'et', 23666349, NULL, '2014-01-05 22:11:14', '1993-05-27 14:04:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('24', '4', '24', 'Nihil ea sit minima ex veritatis. Sed dignissimos quas enim omnis voluptas quasi. Occaecati quae eum est laborum.', 'necessitatibus', 53, NULL, '1972-12-21 21:38:02', '2012-06-30 05:52:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('25', '5', '25', 'Assumenda magni reprehenderit quos similique et et. Sit saepe et consequatur quis sunt magni. Dignissimos eaque et dicta qui recusandae illum eius. Vitae quis est voluptas similique animi minima.', 'dolor', 161159717, NULL, '1973-12-29 23:20:50', '1985-04-03 04:33:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('26', '1', '26', 'Omnis deleniti nulla et mollitia et totam voluptas. Earum non illum voluptas nulla necessitatibus quia ut. Non occaecati dolores eos quas quis eius. Delectus deserunt nisi ut nostrum natus consequatur.', 'rerum', 382120088, NULL, '1998-12-23 23:05:58', '2006-10-08 05:56:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('27', '2', '27', 'Odio eius explicabo nisi voluptatem. Commodi aperiam ut eum reiciendis ipsam similique hic. Eveniet reiciendis quis omnis sed ratione quam. Molestiae et corporis sapiente cupiditate sapiente cumque.', 'itaque', 6061411, NULL, '1981-03-03 20:03:54', '1993-05-06 20:14:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('28', '3', '28', 'Ut possimus ratione tempora modi. Consequatur perferendis voluptatem voluptatibus fuga fugiat praesentium. Qui rerum occaecati voluptas ex quae enim.', 'nihil', 0, NULL, '1991-12-28 07:28:10', '2007-08-27 21:17:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('29', '4', '29', 'Illo sint ducimus in suscipit officiis aut est dicta. Omnis ipsum et quo doloribus ipsa similique eligendi. Corrupti maiores quia facilis ut. Facilis laudantium necessitatibus vero et. Possimus natus officiis et vel provident.', 'cum', 0, NULL, '1973-12-20 06:06:40', '1972-10-07 09:49:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('30', '5', '30', 'Et quasi similique repudiandae. Suscipit ut ipsam iusto ipsam quasi nam quod. Omnis saepe quo nihil sint et aliquid nulla.', 'possimus', 131998792, NULL, '2001-08-01 13:17:47', '2001-09-08 15:03:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('31', '1', '31', 'Assumenda reprehenderit debitis ipsa doloribus a. Aut itaque quia et dolor cum omnis qui deleniti. Quia molestias voluptas vero odit. Voluptatem placeat sunt et esse voluptatum error.', 'aliquid', 0, NULL, '2016-08-26 01:11:55', '1984-11-06 08:00:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('32', '2', '32', 'Eos reiciendis mollitia ea. Nihil aliquid corporis commodi quisquam voluptatem esse praesentium facere. Suscipit illum officiis suscipit alias dolor.', 'voluptas', 585003, NULL, '1982-11-07 10:26:47', '1995-12-01 06:19:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('33', '3', '33', 'Reprehenderit aperiam ex harum et et. Recusandae nihil sapiente est aut nihil at. Nesciunt qui fugiat accusantium nobis temporibus. Sed ipsam blanditiis aliquid ex facilis voluptas laudantium.', 'quam', 47, NULL, '2002-04-11 20:18:32', '2015-11-05 01:40:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('34', '4', '34', 'Et sunt ut laborum est reprehenderit perspiciatis. Sunt maiores dolorum doloremque incidunt rem perspiciatis. Cupiditate eum tempore sunt sed suscipit. Vero voluptatem esse perferendis eos facere quia nobis.', 'aliquid', 5270, NULL, '1971-09-25 03:27:37', '2004-02-20 06:56:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('35', '5', '35', 'Culpa aut veniam et. Sit nostrum pariatur facere assumenda veritatis. Incidunt illum quia ullam quae. Illum omnis ipsum quo.', 'et', 736827, NULL, '1980-05-09 17:10:10', '2012-11-16 05:51:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('36', '1', '36', 'Officiis velit et aut sed asperiores. Sit aut accusantium fugit itaque veritatis veniam. Consequuntur et tenetur quidem a hic repudiandae quam.', 'et', 16660, NULL, '2018-04-19 21:57:11', '1973-10-14 03:34:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('37', '2', '37', 'Corrupti consequuntur nihil aut expedita est. Aut consequatur et atque consequatur ullam. Sed totam unde deserunt.', 'sed', 27364, NULL, '1990-07-20 04:34:20', '1970-10-23 15:51:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('38', '3', '38', 'Et repudiandae numquam numquam sapiente ratione doloribus incidunt. Ea repudiandae ratione vero reprehenderit porro omnis mollitia. Qui ut qui aut excepturi vel aperiam. Perspiciatis molestiae consectetur officiis modi odio nam.', 'quam', 825, NULL, '2000-04-24 06:29:42', '1971-05-04 11:12:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('39', '4', '39', 'Numquam esse itaque voluptatum rem sint quam quisquam. Ut eos nihil voluptates qui.', 'possimus', 98, NULL, '1991-12-24 08:45:20', '1983-01-17 15:13:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('40', '5', '40', 'Ullam ipsa optio libero qui nobis officia est aliquam. Voluptatem unde temporibus quia sunt. Sunt provident facilis dicta et nisi. Consequuntur nostrum aut illum aut enim rerum rerum. Est soluta dignissimos voluptate vero veniam ut omnis.', 'accusamus', 0, NULL, '1970-11-26 22:10:07', '1995-07-07 23:02:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('41', '1', '41', 'Quos voluptas repudiandae quasi. Eum iste in voluptas qui odio excepturi. Perferendis eaque ut perferendis assumenda explicabo. Ratione et perferendis sed placeat voluptatibus est. Et explicabo qui quis officiis.', 'dolorem', 730775379, NULL, '1989-04-09 14:40:42', '1975-02-12 14:12:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('42', '2', '42', 'Unde optio illum modi corporis animi aut molestiae. Quisquam nostrum porro tempora et ut. Sed dolores vel nihil quam nostrum porro consequatur beatae. Quo temporibus voluptates facilis dolores.', 'ut', 51901, NULL, '2013-12-30 17:27:32', '1988-10-28 16:43:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('43', '3', '43', 'Quisquam a sit dolor enim. Soluta occaecati pariatur cum. Libero similique cupiditate necessitatibus eius cupiditate. Sapiente quam sit omnis praesentium autem tempora.', 'quod', 5946, NULL, '2006-05-16 14:28:37', '1990-06-09 03:01:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('44', '4', '44', 'Eos omnis quia quam sed qui. Est quasi assumenda numquam tempore nemo recusandae est. Reiciendis ut molestiae deleniti ab aut. Vero ab voluptatem laborum ratione dicta omnis sit.', 'voluptatem', 4534, NULL, '2005-05-28 04:41:32', '2009-04-07 22:08:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('45', '5', '45', 'Aut aut et ducimus amet dolores aut sint. Et quisquam aut qui cum amet. Provident quidem iusto aut facere et molestiae hic. Modi modi et consequatur cum molestiae fugiat deleniti.', 'itaque', 56566401, NULL, '2007-09-14 21:49:04', '1971-03-22 02:50:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('46', '1', '46', 'Expedita facere dolorem aut ad nihil exercitationem laudantium. Quia libero autem ipsa. Saepe dolorem quo ad iste eaque. Tempore quis incidunt quibusdam.', 'illum', 71931, NULL, '2017-10-09 23:25:11', '1970-03-26 04:23:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('47', '2', '47', 'Amet ab ut repudiandae quis animi iure quam. Sed et qui iure ullam suscipit. Totam magnam tempore quas voluptas aut nulla delectus reiciendis.', 'est', 7308, NULL, '2000-09-08 04:40:16', '1974-01-16 02:52:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('48', '3', '48', 'Saepe enim corporis est veniam quibusdam quibusdam. Voluptas et expedita dolores molestiae. Sit non nisi consequatur rem consequatur. Rerum facere rerum animi rem.', 'molestias', 1, NULL, '1970-07-22 00:28:48', '2006-12-04 12:26:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('49', '4', '49', 'Error alias dolor non facilis dolorem. Labore atque placeat fugiat sint iste repellat quis. Laborum est provident dicta porro maiores iusto iste. Atque omnis quos quas excepturi iusto autem.', 'iure', 9, NULL, '2017-04-08 12:52:52', '1982-01-06 14:44:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('50', '5', '50', 'Ut excepturi nihil impedit laudantium consectetur ducimus recusandae voluptate. Deserunt ad vel doloremque expedita alias libero at. Voluptatem est natus quam molestiae et assumenda est odio.', 'quia', 765262, NULL, '1995-05-11 00:51:01', '1988-06-23 14:36:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('51', '1', '51', 'Quia sed vel esse itaque rerum ea. Quia eius dolorem aperiam in aut est dolor. Voluptas dolor eaque pariatur autem exercitationem maiores in.', 'provident', 780, NULL, '2013-09-06 07:18:32', '2007-01-29 00:12:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('52', '2', '52', 'Rerum est natus tenetur aliquam debitis ut earum. Harum non at officiis ducimus earum quis. Tempora consectetur alias laudantium maxime quam aliquam veritatis et.', 'soluta', 5877151, NULL, '2008-11-02 13:04:04', '1986-02-26 06:06:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('53', '3', '53', 'Dolorem qui maxime repudiandae odio laudantium a. Qui optio blanditiis qui autem dignissimos. Quas sit et porro ea a quae consequatur aspernatur. Voluptas quo sed saepe dolores.', 'sunt', 74, NULL, '2008-05-05 15:47:56', '1981-03-01 13:21:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('54', '4', '54', 'Et saepe sunt sunt id rerum eum. Numquam et atque maxime voluptatibus sed. Nihil excepturi quod iure sed est harum quod aut. Voluptas autem numquam quas cupiditate.', 'similique', 4732, NULL, '2017-06-26 05:59:45', '1991-06-02 01:40:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('55', '5', '55', 'Esse sed asperiores quidem soluta. Eveniet blanditiis eos animi repudiandae enim quibusdam voluptates. Pariatur rerum voluptatem dolor et doloremque.', 'blanditiis', 8715567, NULL, '1995-05-06 06:50:13', '1980-05-02 13:55:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('56', '1', '56', 'Dolores natus ut sed facere. Ipsum nostrum fugit numquam debitis sed sunt. Distinctio consequuntur officia deleniti doloribus quae nihil. Ipsa dolores doloribus quas quidem sapiente officiis.', 'expedita', 0, NULL, '1992-02-07 13:21:37', '2018-07-12 21:46:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('57', '2', '57', 'Nihil occaecati nam delectus unde. Laudantium qui voluptatibus et. Vel veritatis magni et quia beatae.', 'non', 520, NULL, '1992-02-02 09:00:44', '2002-03-10 20:31:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('58', '3', '58', 'Nihil in qui rerum. Voluptatum id sapiente in ut aut sed at. Suscipit similique ipsa dolorum deleniti perspiciatis minima quia ut. Est in qui ipsam harum dolor voluptatem. Amet laboriosam cupiditate asperiores sint laboriosam labore.', 'deserunt', 0, NULL, '1972-04-02 03:20:45', '2018-01-25 22:26:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('59', '4', '59', 'Consequuntur commodi similique voluptatem iure. Itaque pariatur accusamus tempora et optio. In autem dicta amet quam veritatis mollitia beatae.', 'odio', 805353, NULL, '2001-06-20 10:06:39', '1980-01-21 23:19:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('60', '5', '60', 'Eum minus non nesciunt voluptates inventore. Repudiandae sapiente non et soluta inventore. Architecto cumque voluptatem quo praesentium aut molestiae qui.', 'maxime', 10, NULL, '2012-11-18 13:30:03', '2004-09-10 19:47:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('61', '1', '61', 'Dignissimos nesciunt ut possimus doloremque voluptate non quae. Qui deserunt iure expedita debitis eum dolorum quae. Rerum officiis doloribus velit nesciunt error voluptatibus. Et labore non sit qui et. Sint in aliquam sequi earum.', 'laborum', 1461380, NULL, '2015-11-27 23:18:41', '1982-09-29 05:53:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('62', '2', '62', 'Debitis veniam exercitationem et ratione ut quisquam quibusdam dolore. Eos incidunt debitis occaecati molestiae natus reprehenderit.', 'modi', 471420, NULL, '1976-01-11 12:42:21', '2008-11-24 01:39:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('63', '3', '63', 'Sed libero iusto aut fugiat sunt itaque atque. Non voluptas delectus voluptatem alias sed. Doloremque cumque consectetur sunt illo alias aspernatur qui. Dolores molestiae maiores aut fugiat voluptas.', 'est', 671355825, NULL, '1972-05-29 12:01:10', '2007-06-19 17:56:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('64', '4', '64', 'Dicta nobis inventore nihil et tenetur. Sit at soluta aspernatur quia occaecati delectus optio. Voluptatem quia quasi voluptates cum nesciunt modi cum.', 'nihil', 33, NULL, '2017-05-03 12:58:56', '1978-04-23 17:45:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('65', '5', '65', 'Sint consequatur qui eveniet omnis corporis pariatur reprehenderit quia. In est et velit veniam. Atque vel provident aut vel voluptatem magni officia nulla. Consequatur provident ut dolorem minima.', 'quae', 57905086, NULL, '1978-06-18 05:04:32', '2012-08-16 12:31:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('66', '1', '66', 'Illum dicta quod qui et. Animi et provident voluptatem magni ea.', 'est', 965, NULL, '1987-03-06 18:47:31', '2003-02-07 19:03:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('67', '2', '67', 'Eos consectetur quia et qui quasi cumque. Cum non ut in voluptatibus delectus ipsum fugiat. Repellat accusamus consequatur et et aut sint ea aut.', 'est', 339062, NULL, '1995-10-08 11:01:56', '1987-06-11 18:48:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('68', '3', '68', 'Reprehenderit voluptas velit error minus odit. Esse aliquam ullam id quaerat. Et aut commodi ipsum qui saepe nostrum vitae. Et atque perspiciatis voluptas non molestiae.', 'est', 58991, NULL, '1973-01-12 17:00:16', '1991-08-09 20:25:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('69', '4', '69', 'Et incidunt facere illum magni quia quo molestiae. Asperiores omnis earum dolor minus ut quisquam sint id. Reiciendis natus ut nulla ullam sunt dolores est id. Libero ipsa autem quo aut perspiciatis.', 'facere', 0, NULL, '1994-12-15 07:58:16', '1976-02-16 10:20:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('70', '5', '70', 'Dolore sit non voluptatem excepturi et tempore a. Magnam soluta rem natus dolores sit voluptatem. Doloribus est magnam odit dolore est qui.', 'eaque', 3, NULL, '1987-01-24 14:36:16', '2011-10-20 00:14:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('71', '1', '71', 'Omnis ut laudantium hic eveniet voluptatem. Nemo non voluptatem quia nulla sit. Aut dolore ex enim veniam consequatur. Est error quisquam ab officiis.', 'eius', 0, NULL, '2015-06-16 02:41:23', '2015-01-29 00:45:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('72', '2', '72', 'Et fugiat itaque ex. Ut dolor magni praesentium et tempore et optio. Accusantium suscipit atque odio vero.', 'amet', 47607767, NULL, '2007-08-25 21:02:42', '1985-10-15 23:27:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('73', '3', '73', 'Deleniti est veniam neque fugiat repellat non tempora quia. Nihil minima praesentium nostrum qui doloremque magnam exercitationem. Quos eos et quos dolores libero id provident libero. Explicabo repellendus ut quos nemo. In et cum qui possimus maxime aut.', 'sit', 0, NULL, '1991-04-18 02:52:07', '1972-08-01 09:24:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('74', '4', '74', 'Incidunt sit facilis nulla omnis fugit. Quo corporis recusandae labore iusto ut et. In quia fuga vel quae sint quis ad. Soluta molestiae eos ut eum voluptas quod nisi.', 'repudiandae', 81, NULL, '1994-08-30 03:48:36', '1972-08-17 23:59:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('75', '5', '75', 'Placeat et consectetur voluptatem distinctio temporibus. Modi labore veritatis quibusdam recusandae iusto non dolor. Qui et est officiis omnis aut tenetur et.', 'ad', 192, NULL, '1973-08-25 19:53:50', '1977-06-08 04:48:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('76', '1', '76', 'Laboriosam voluptate deleniti et labore. Laborum est quod pariatur ipsum earum et. Nulla aut dolores corrupti dicta. Quia minus et accusamus deserunt.', 'sit', 0, NULL, '1981-12-02 10:40:29', '1989-11-14 12:29:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('77', '2', '77', 'Voluptatibus nobis delectus dolore quae sed. Qui dolorum dolorum unde ut omnis rem fuga. Eaque quasi dignissimos et et. Aperiam aut temporibus sed magni et quis asperiores qui.', 'distinctio', 725996140, NULL, '1973-12-02 05:08:13', '2003-10-23 19:57:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('78', '3', '78', 'Maxime excepturi omnis dignissimos voluptatem officia qui. Impedit dicta velit nemo eos voluptas ab aut. Cum occaecati quas repellendus est. Quis ut recusandae quia ab.', 'odit', 9, NULL, '1987-01-02 17:44:00', '1997-06-09 11:46:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('79', '4', '79', 'Velit id sequi in fugiat dignissimos voluptas. Soluta totam eligendi voluptatum cumque vel vel dolor. Est sit nesciunt voluptatem id fuga ratione placeat.', 'placeat', 9620608, NULL, '2017-06-04 00:27:30', '2004-06-14 08:28:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('80', '5', '80', 'Beatae illo quo id quis. Veritatis dolor quod expedita. Porro qui dolor laborum sint nihil culpa. Dolor temporibus error quidem aperiam. Perspiciatis est aut aut quibusdam eos.', 'autem', 2438, NULL, '2001-10-18 10:26:44', '2002-07-10 06:02:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('81', '1', '81', 'Dolores inventore atque dolore consequuntur dolorem tempora debitis enim. Similique quo est atque libero. Quo quis atque et omnis autem animi fuga. Aut facere sed ut excepturi iste repellat ut.', 'ipsam', 4, NULL, '1975-06-20 20:34:04', '1992-10-30 00:20:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('82', '2', '82', 'Maiores aut consequatur quis magnam. Sed a vel quisquam. Quia omnis quis ea consectetur ut optio.', 'excepturi', 831, NULL, '1974-09-05 10:24:57', '2017-07-30 22:04:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('83', '3', '83', 'Voluptatum consectetur aut velit itaque. Voluptatibus ut maiores et quibusdam. Ut cupiditate ut perspiciatis consequatur quod soluta vel.', 'ut', 421873610, NULL, '2001-07-11 17:59:53', '1993-06-11 19:16:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('84', '4', '84', 'Sit laudantium quae laboriosam. Vel accusamus et perspiciatis impedit asperiores error sed. Ducimus ullam dignissimos dolore officiis omnis enim.', 'qui', 2, NULL, '1983-09-24 23:02:57', '1982-11-30 18:00:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('85', '5', '85', 'Quo porro reprehenderit ex et ut enim nobis. Facilis blanditiis perferendis iste quia qui. Magni voluptas vel est sed error atque velit voluptatem. Et aut sunt quibusdam mollitia omnis est.', 'error', 82482, NULL, '2019-07-01 06:21:31', '2011-11-07 17:49:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('86', '1', '86', 'Quis quis quia deserunt harum quisquam rerum. Sit nisi ratione mollitia ex sint quisquam.', 'dolor', 9721002, NULL, '2009-03-28 07:00:42', '2014-05-24 23:54:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('87', '2', '87', 'Odio sapiente ex a enim rerum et. Nemo labore impedit adipisci culpa nostrum neque ea. Aut modi voluptate nihil vel necessitatibus suscipit.', 'qui', 48021742, NULL, '1979-12-12 04:08:25', '1990-12-01 18:48:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('88', '3', '88', 'Voluptas velit omnis doloribus veniam et ea quas. Corporis possimus atque et. Architecto eligendi esse eos nemo cupiditate voluptatum ut. Voluptatem ut blanditiis vero veritatis.', 'itaque', 258683678, NULL, '2013-11-08 03:52:43', '1987-05-06 02:00:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('89', '4', '89', 'Odio nulla asperiores labore pariatur. Minus cupiditate velit pariatur illo vel explicabo. Quod dolores laboriosam rerum aut. Dolor corporis dicta animi.', 'quaerat', 74, NULL, '2006-09-16 18:07:19', '2017-12-25 11:12:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('90', '5', '90', 'Harum cumque illo animi quidem et ex. Consequatur nisi iusto occaecati est reprehenderit esse occaecati aliquam. Consequatur dolor voluptates aspernatur quia id quia.', 'sit', 211, NULL, '2011-12-04 03:46:19', '1990-12-26 11:07:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('91', '1', '91', 'Autem aut officiis voluptatem dolore. Sunt deleniti ipsum assumenda non dolores. Voluptatem facilis impedit omnis totam eum. Cumque provident eius in ullam.', 'qui', 0, NULL, '2004-10-03 16:39:07', '2015-10-05 18:36:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('92', '2', '92', 'Sequi harum dignissimos voluptas sed magni voluptatum autem. Tenetur molestiae aut voluptatem ducimus rerum. Corrupti sint reprehenderit ipsum occaecati. Et alias id adipisci aut beatae eum sit.', 'rerum', 1465965, NULL, '1997-10-04 06:52:03', '2019-01-25 13:09:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('93', '3', '93', 'Ullam eos dicta quos quia repellat eos assumenda. Officia iusto culpa officiis id facere explicabo nihil distinctio. Totam vel eos aut quas nulla rem vitae delectus. Qui tempora nihil molestiae delectus maxime maxime nostrum.', 'laboriosam', 8120, NULL, '1998-01-06 01:52:10', '1970-07-20 08:10:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('94', '4', '94', 'Quis recusandae quia cum porro. Fugit sunt dignissimos quo praesentium. Et ut maiores saepe deleniti facilis. Commodi est eos perferendis.', 'est', 4686745, NULL, '1981-10-23 15:51:11', '1974-10-23 07:38:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('95', '5', '95', 'Velit reprehenderit cum fugit sint et aut. Fuga veritatis voluptates et optio quaerat veritatis. Laboriosam voluptatem molestiae laudantium. Corrupti explicabo voluptatem pariatur similique consequatur esse quibusdam.', 'incidunt', 561408, NULL, '2004-06-28 12:13:25', '1980-04-27 06:48:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('96', '1', '96', 'Est aliquid molestiae maiores fugit. Et et placeat nisi ut tenetur.', 'est', 806265009, NULL, '2010-03-13 16:40:24', '1994-05-12 04:04:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('97', '2', '97', 'Enim qui quo voluptatem accusamus ut ea doloribus minus. Fugiat non voluptas quam sunt ut provident esse. Cumque illum illo rerum non aliquam.', 'consequuntur', 4072885, NULL, '2012-05-06 10:48:39', '1998-05-02 18:57:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('98', '3', '98', 'Laborum officia aut et veniam. Quia consequatur quae facilis ea nemo quibusdam nesciunt modi. Distinctio rem optio rerum consequatur perspiciatis est nihil. Incidunt magni quo mollitia tempore quisquam fugit.', 'quis', 0, NULL, '2009-07-09 13:57:58', '1976-06-22 15:31:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('99', '4', '99', 'Est placeat voluptatem labore est sint. Pariatur exercitationem et et iure vero dolore. Adipisci accusamus blanditiis consequatur voluptas voluptatem nobis tempore. Quia voluptatibus ut magni.', 'in', 5429574, NULL, '2015-03-05 16:02:55', '1983-11-14 17:15:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('100', '5', '100', 'Eos at esse repellendus est sunt beatae dolores. Dicta sapiente nihil ab placeat. Maiores provident velit vel non saepe voluptatibus. Consectetur provident quia rerum magnam voluptas modi.', 'adipisci', 4210, NULL, '1997-03-16 07:38:32', '1997-11-18 05:14:26');


/*
#
# 4. TABLE STRUCTURE FOR: profiles
#
*/
DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `gender` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `hometown` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `photo_id` (`photo_id`),
  CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`photo_id`) REFERENCES `media` (`id`),
  CONSTRAINT `profiles_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE ON DELETE CASCADE -- если не загрузит!!!!
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('1', NULL, '2006-10-01', '1', '2013-11-02 10:58:08', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('2', NULL, '1981-12-15', '2', '2014-03-12 23:14:33', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('3', NULL, '1970-06-13', '3', '2017-05-27 18:20:02', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('4', NULL, '2005-02-14', '4', '2005-07-24 06:53:01', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('5', NULL, '1995-12-30', '5', '1976-08-12 22:26:35', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('6', NULL, '1998-09-28', '6', '1995-06-08 06:24:34', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('7', NULL, '1989-05-24', '7', '1990-01-25 08:00:47', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('8', NULL, '2006-04-13', '8', '1989-03-11 22:26:49', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('9', NULL, '2018-11-13', '9', '2006-09-25 18:29:45', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('10', NULL, '2001-08-01', '10', '1975-02-05 08:59:17', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('11', NULL, '2014-02-04', '11', '1989-07-04 00:28:02', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('12', NULL, '1972-07-28', '12', '1998-01-10 20:48:42', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('13', NULL, '1992-05-29', '13', '2011-07-15 13:50:14', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('14', NULL, '1986-03-25', '14', '2007-04-29 04:33:08', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('15', NULL, '2002-09-21', '15', '1973-04-22 05:41:17', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('16', NULL, '2001-02-09', '16', '1992-10-17 20:40:32', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('17', NULL, '1987-03-28', '17', '2012-07-16 04:18:39', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('18', NULL, '1988-11-01', '18', '1970-07-23 17:17:00', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('19', NULL, '1971-04-29', '19', '2008-08-04 14:26:32', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('20', NULL, '1976-05-21', '20', '2000-02-27 16:04:31', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('21', NULL, '1997-08-20', '21', '1999-07-06 09:23:31', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('22', NULL, '1992-05-25', '22', '1986-07-10 11:44:50', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('23', NULL, '2007-06-25', '23', '2006-04-26 15:29:56', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('24', NULL, '2019-05-03', '24', '2008-05-24 18:56:52', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('25', NULL, '2014-12-18', '25', '2018-08-09 20:00:21', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('26', NULL, '2010-08-07', '26', '1979-05-14 04:35:17', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('27', NULL, '2012-09-13', '27', '1980-07-13 20:42:14', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('28', NULL, '1980-02-10', '28', '1983-11-06 01:41:20', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('29', NULL, '1997-12-07', '29', '1975-06-07 01:13:10', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('30', NULL, '2012-08-15', '30', '1980-10-22 21:00:02', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('31', NULL, '1987-07-12', '31', '2014-03-09 04:38:10', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('32', NULL, '1973-12-16', '32', '2007-10-19 23:57:48', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('33', NULL, '2015-06-04', '33', '2019-01-12 14:24:23', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('34', NULL, '1993-11-27', '34', '1976-10-21 11:12:19', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('35', NULL, '1995-05-25', '35', '2004-11-25 03:09:33', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('36', NULL, '1999-01-15', '36', '1971-08-06 00:45:03', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('37', NULL, '2005-08-15', '37', '2002-10-16 13:41:09', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('38', NULL, '2005-10-17', '38', '1990-01-10 23:06:48', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('39', NULL, '1990-06-26', '39', '1985-09-11 05:35:06', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('40', NULL, '1996-06-18', '40', '2019-07-11 20:37:51', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('41', NULL, '1991-04-07', '41', '1981-10-12 19:19:02', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('42', NULL, '2014-07-12', '42', '1981-04-30 16:41:42', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('43', NULL, '1994-10-25', '43', '1971-07-23 16:39:04', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('44', NULL, '1990-06-08', '44', '1977-10-30 22:20:08', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('45', NULL, '1976-12-18', '45', '1986-08-16 17:20:21', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('46', NULL, '1983-04-09', '46', '2003-06-08 20:26:24', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('47', NULL, '1981-11-15', '47', '1987-01-23 10:46:12', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('48', NULL, '1986-01-13', '48', '2002-10-18 15:14:54', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('49', NULL, '1988-07-07', '49', '1985-05-05 11:17:12', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('50', NULL, '2000-09-06', '50', '2007-12-23 23:19:54', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('51', NULL, '2016-06-08', '51', '2000-05-02 17:39:30', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('52', NULL, '1983-09-19', '52', '1999-06-19 18:41:17', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('53', NULL, '1992-04-29', '53', '1994-08-10 02:23:34', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('54', NULL, '2015-12-03', '54', '2018-08-31 05:03:00', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('55', NULL, '1990-07-08', '55', '1974-12-18 19:15:45', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('56', NULL, '2009-12-11', '56', '2004-10-03 21:35:47', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('57', NULL, '1998-03-07', '57', '1986-09-06 22:23:42', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('58', NULL, '1977-06-25', '58', '1985-07-22 07:18:05', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('59', NULL, '2011-01-05', '59', '1983-11-12 01:59:35', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('60', NULL, '2009-02-15', '60', '1988-09-24 09:58:28', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('61', NULL, '1990-09-25', '61', '2011-02-18 02:16:14', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('62', NULL, '1979-03-25', '62', '1994-01-26 14:05:59', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('63', NULL, '1985-03-15', '63', '1985-08-22 09:57:39', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('64', NULL, '1984-05-19', '64', '2015-11-23 12:01:52', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('65', NULL, '1977-05-18', '65', '2007-10-20 01:06:00', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('66', NULL, '2011-01-22', '66', '2001-04-06 06:56:55', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('67', NULL, '1990-12-13', '67', '2010-05-08 01:21:29', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('68', NULL, '1977-11-28', '68', '2010-06-28 19:02:55', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('69', NULL, '2019-06-01', '69', '1993-06-16 10:20:19', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('70', NULL, '1991-07-16', '70', '1973-12-31 14:39:00', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('71', NULL, '1997-04-29', '71', '2000-09-02 06:04:42', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('72', NULL, '1978-09-20', '72', '1971-08-24 22:52:48', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('73', NULL, '1985-07-04', '73', '1981-07-24 03:11:00', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('74', NULL, '1976-11-26', '74', '2008-06-06 06:32:42', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('75', NULL, '1983-04-15', '75', '2010-12-31 11:13:44', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('76', NULL, '2003-09-15', '76', '2016-01-01 14:28:36', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('77', NULL, '2011-03-10', '77', '1971-03-02 02:22:08', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('78', NULL, '2008-01-31', '78', '1997-05-06 15:41:19', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('79', NULL, '1997-12-27', '79', '2002-02-21 16:42:06', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('80', NULL, '1980-12-05', '80', '2006-08-21 00:37:53', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('81', NULL, '2006-09-06', '81', '1998-11-24 06:19:19', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('82', NULL, '2004-09-21', '82', '2009-07-30 13:30:40', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('83', NULL, '1996-03-03', '83', '2017-02-15 14:10:41', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('84', NULL, '1984-09-28', '84', '1975-11-11 15:22:19', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('85', NULL, '1991-07-07', '85', '2018-08-04 11:34:57', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('86', NULL, '1999-04-04', '86', '1988-11-26 16:29:53', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('87', NULL, '2012-09-04', '87', '2002-09-05 02:21:41', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('88', NULL, '1978-10-15', '88', '2016-08-23 01:34:23', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('89', NULL, '1979-12-13', '89', '2011-06-04 04:22:13', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('90', NULL, '1974-10-03', '90', '1991-08-22 03:46:38', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('91', NULL, '1996-05-27', '91', '1974-08-17 04:56:20', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('92', NULL, '1971-04-17', '92', '2011-11-11 14:12:27', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('93', NULL, '2019-01-13', '93', '1985-12-22 15:44:00', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('94', NULL, '1997-02-25', '94', '1980-08-22 12:42:44', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('95', NULL, '1994-12-30', '95', '1982-07-07 17:03:00', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('96', NULL, '2005-03-15', '96', '1992-05-14 21:40:10', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('97', NULL, '1975-07-04', '97', '1981-04-13 20:17:54', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('98', NULL, '2014-04-25', '98', '1982-07-02 23:26:26', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('99', NULL, '1986-04-12', '99', '2013-11-14 15:47:20', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('100', NULL, '1980-03-15', '100', '2006-09-20 09:24:19', NULL);


/*

#
# 5.TABLE STRUCTURE FOR: communities
#
*/
DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `communities_name_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities` (`id`, `name`) VALUES ('14', 'a');
INSERT INTO `communities` (`id`, `name`) VALUES ('24', 'a');
INSERT INTO `communities` (`id`, `name`) VALUES ('46', 'aspernatur');
INSERT INTO `communities` (`id`, `name`) VALUES ('7', 'at');
INSERT INTO `communities` (`id`, `name`) VALUES ('27', 'at');
INSERT INTO `communities` (`id`, `name`) VALUES ('50', 'consectetur');
INSERT INTO `communities` (`id`, `name`) VALUES ('13', 'consequatur');
INSERT INTO `communities` (`id`, `name`) VALUES ('3', 'debitis');
INSERT INTO `communities` (`id`, `name`) VALUES ('9', 'dignissimos');
INSERT INTO `communities` (`id`, `name`) VALUES ('36', 'dignissimos');
INSERT INTO `communities` (`id`, `name`) VALUES ('15', 'dolor');
INSERT INTO `communities` (`id`, `name`) VALUES ('21', 'dolor');
INSERT INTO `communities` (`id`, `name`) VALUES ('4', 'ea');
INSERT INTO `communities` (`id`, `name`) VALUES ('22', 'ea');
INSERT INTO `communities` (`id`, `name`) VALUES ('43', 'eaque');
INSERT INTO `communities` (`id`, `name`) VALUES ('49', 'earum');
INSERT INTO `communities` (`id`, `name`) VALUES ('19', 'et');
INSERT INTO `communities` (`id`, `name`) VALUES ('30', 'et');
INSERT INTO `communities` (`id`, `name`) VALUES ('47', 'et');
INSERT INTO `communities` (`id`, `name`) VALUES ('42', 'eum');
INSERT INTO `communities` (`id`, `name`) VALUES ('25', 'illum');
INSERT INTO `communities` (`id`, `name`) VALUES ('34', 'in');
INSERT INTO `communities` (`id`, `name`) VALUES ('44', 'incidunt');
INSERT INTO `communities` (`id`, `name`) VALUES ('41', 'ipsum');
INSERT INTO `communities` (`id`, `name`) VALUES ('17', 'labore');
INSERT INTO `communities` (`id`, `name`) VALUES ('37', 'labore');
INSERT INTO `communities` (`id`, `name`) VALUES ('28', 'laudantium');
INSERT INTO `communities` (`id`, `name`) VALUES ('11', 'libero');
INSERT INTO `communities` (`id`, `name`) VALUES ('16', 'magnam');
INSERT INTO `communities` (`id`, `name`) VALUES ('1', 'minima');
INSERT INTO `communities` (`id`, `name`) VALUES ('26', 'minus');
INSERT INTO `communities` (`id`, `name`) VALUES ('48', 'minus');
INSERT INTO `communities` (`id`, `name`) VALUES ('45', 'natus');
INSERT INTO `communities` (`id`, `name`) VALUES ('6', 'omnis');
INSERT INTO `communities` (`id`, `name`) VALUES ('8', 'omnis');
INSERT INTO `communities` (`id`, `name`) VALUES ('35', 'omnis');
INSERT INTO `communities` (`id`, `name`) VALUES ('12', 'quasi');
INSERT INTO `communities` (`id`, `name`) VALUES ('5', 'quia');
INSERT INTO `communities` (`id`, `name`) VALUES ('20', 'quibusdam');
INSERT INTO `communities` (`id`, `name`) VALUES ('40', 'quod');
INSERT INTO `communities` (`id`, `name`) VALUES ('31', 'sit');
INSERT INTO `communities` (`id`, `name`) VALUES ('39', 'tempore');
INSERT INTO `communities` (`id`, `name`) VALUES ('32', 'temporibus');
INSERT INTO `communities` (`id`, `name`) VALUES ('29', 'tenetur');
INSERT INTO `communities` (`id`, `name`) VALUES ('2', 'ut');
INSERT INTO `communities` (`id`, `name`) VALUES ('33', 'vel');
INSERT INTO `communities` (`id`, `name`) VALUES ('23', 'velit');
INSERT INTO `communities` (`id`, `name`) VALUES ('38', 'vero');
INSERT INTO `communities` (`id`, `name`) VALUES ('10', 'voluptas');
INSERT INTO `communities` (`id`, `name`) VALUES ('18', 'voluptates');

/*
#
# 6. TABLE STRUCTURE FOR: users_communities
#
*/

DROP TABLE IF EXISTS `users_communities`;

CREATE TABLE `users_communities` (
  `user_id` bigint(20) unsigned NOT NULL,
  `community_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`community_id`),
  KEY `community_id` (`community_id`),
  CONSTRAINT `users_communities_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `users_communities_ibfk_2` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('1', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('2', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('3', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('4', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('5', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('6', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('7', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('8', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('9', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('10', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('11', '11');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('12', '12');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('13', '13');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('14', '14');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('15', '15');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('16', '16');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('17', '17');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('18', '18');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('19', '19');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('20', '20');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('21', '21');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('22', '22');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('23', '23');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('24', '24');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('25', '25');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('26', '26');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('27', '27');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('28', '28');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('29', '29');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('30', '30');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('31', '31');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('32', '32');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('33', '33');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('34', '34');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('35', '35');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('36', '36');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('37', '37');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('38', '38');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('39', '39');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('40', '40');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('41', '41');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('42', '42');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('43', '43');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('44', '44');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('45', '45');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('46', '46');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('47', '47');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('48', '48');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('49', '49');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('50', '50');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('51', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('52', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('53', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('54', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('55', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('56', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('57', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('58', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('59', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('60', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('61', '11');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('62', '12');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('63', '13');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('64', '14');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('65', '15');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('66', '16');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('67', '17');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('68', '18');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('69', '19');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('70', '20');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('71', '21');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('72', '22');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('73', '23');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('74', '24');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('75', '25');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('76', '26');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('77', '27');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('78', '28');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('79', '29');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('80', '30');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('81', '31');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('82', '32');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('83', '33');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('84', '34');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('85', '35');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('86', '36');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('87', '37');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('88', '38');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('89', '39');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('90', '40');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('91', '41');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('92', '42');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('93', '43');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('94', '44');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('95', '45');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('96', '46');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('97', '47');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('98', '48');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('99', '49');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('100', '50');


/*
#
# 7.TABLE STRUCTURE FOR: friend_requests
#
*/

DROP TABLE IF EXISTS `friend_requests`;

CREATE TABLE `friend_requests` (
  `initiator_user_id` bigint(20) unsigned NOT NULL,
  `target_user_id` bigint(20) unsigned NOT NULL,
  `status` enum('requested','approved','unfriended','declined') COLLATE utf8_unicode_ci DEFAULT NULL,
  `requested_at` datetime DEFAULT current_timestamp(),
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`initiator_user_id`,`target_user_id`),
  KEY `initiator_user_id` (`initiator_user_id`),
  KEY `target_user_id` (`target_user_id`),
  CONSTRAINT `friend_requests_ibfk_1` FOREIGN KEY (`initiator_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `friend_requests_ibfk_2` FOREIGN KEY (`target_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('1', '1', 'declined', '1984-05-14 11:22:07', '2009-02-10 05:05:24');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('2', '2', 'unfriended', '1993-05-28 12:03:50', '2003-07-27 00:19:50');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('3', '3', 'unfriended', '2005-12-31 07:03:54', '2001-04-12 02:49:35');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('4', '4', 'declined', '1983-09-19 22:37:58', '1983-06-07 00:49:37');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('5', '5', 'approved', '2003-12-15 00:16:18', '1978-12-06 09:04:53');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('6', '6', 'requested', '2003-02-12 00:35:31', '1971-02-07 00:44:01');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('7', '7', 'declined', '1994-09-23 17:57:14', '2003-08-14 08:45:37');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('8', '8', 'requested', '1987-10-14 02:22:45', '2018-07-20 06:10:35');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('9', '9', 'unfriended', '1999-06-26 19:51:41', '1978-03-24 04:40:13');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('10', '10', 'declined', '1987-07-14 23:23:03', '2015-08-23 01:18:33');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('11', '11', 'declined', '1972-11-03 03:39:11', '1982-09-26 10:19:07');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('12', '12', 'requested', '2009-07-29 11:16:00', '1988-12-22 21:44:43');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('13', '13', 'unfriended', '1978-07-01 08:37:48', '1972-02-14 15:12:13');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('14', '14', 'unfriended', '1999-07-03 03:16:04', '2003-11-09 09:26:59');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('15', '15', 'requested', '1995-05-20 15:55:22', '2005-04-02 04:14:36');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('16', '16', 'declined', '2013-08-20 05:00:55', '1978-06-30 05:08:03');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('17', '17', 'unfriended', '1975-06-13 17:25:02', '1984-06-28 13:35:16');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('18', '18', 'declined', '1986-04-25 08:01:51', '2010-10-16 08:40:03');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('19', '19', 'approved', '1986-10-09 00:59:35', '1985-01-03 20:14:37');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('20', '20', 'unfriended', '2014-12-15 10:07:55', '1988-05-13 02:08:35');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('21', '21', 'approved', '2000-01-10 05:35:18', '2006-06-20 23:41:35');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('22', '22', 'approved', '1981-05-13 20:27:27', '1995-05-18 03:42:37');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('23', '23', 'requested', '1989-01-24 13:09:05', '1976-05-15 14:09:50');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('24', '24', 'unfriended', '1985-11-14 02:26:26', '2008-01-19 18:41:05');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('25', '25', 'approved', '2004-04-28 15:53:06', '1985-01-19 16:18:23');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('26', '26', 'requested', '1984-06-03 18:34:03', '2018-03-01 13:31:50');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('27', '27', 'approved', '1972-10-24 19:22:22', '2014-03-14 15:33:22');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('28', '28', 'requested', '2018-06-07 08:38:36', '1994-06-24 06:57:22');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('29', '29', 'requested', '1991-04-17 22:42:45', '2015-09-07 14:13:13');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('30', '30', 'approved', '2010-06-06 02:39:54', '1970-02-08 11:01:59');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('31', '31', 'unfriended', '2018-03-26 20:34:43', '1978-05-16 16:40:25');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('32', '32', 'declined', '2010-09-04 08:47:20', '1972-01-31 12:52:44');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('33', '33', 'unfriended', '2012-10-04 08:13:38', '2007-09-04 06:45:57');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('34', '34', 'requested', '2011-07-01 11:18:13', '1974-03-29 21:54:59');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('35', '35', 'declined', '2018-06-30 00:56:21', '2006-12-24 23:47:47');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('36', '36', 'requested', '1982-09-23 17:28:18', '1986-09-14 05:26:04');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('37', '37', 'unfriended', '1975-01-12 11:28:58', '1988-08-21 04:44:57');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('38', '38', 'unfriended', '2006-03-13 11:40:32', '2009-01-24 17:40:50');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('39', '39', 'declined', '1977-08-19 05:35:19', '2001-12-02 01:06:31');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('40', '40', 'requested', '1982-08-23 05:04:22', '2018-11-24 22:48:44');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('41', '41', 'unfriended', '2001-09-07 23:59:37', '2010-09-29 14:18:36');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('42', '42', 'requested', '2000-01-10 14:17:57', '1999-06-17 17:35:32');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('43', '43', 'approved', '2010-06-05 12:44:34', '1983-07-05 22:21:42');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('44', '44', 'unfriended', '1991-10-17 13:01:40', '1995-09-25 14:34:36');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('45', '45', 'requested', '1993-01-23 14:41:15', '1979-08-07 13:21:01');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('46', '46', 'requested', '1981-02-04 14:03:10', '2015-12-28 03:23:36');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('47', '47', 'declined', '1992-02-01 03:38:00', '2005-01-14 07:32:27');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('48', '48', 'declined', '1981-03-18 01:45:05', '1974-08-21 01:38:14');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('49', '49', 'approved', '2017-01-30 21:39:12', '1993-08-13 00:07:27');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('50', '50', 'unfriended', '1987-04-02 01:46:23', '2006-10-23 00:42:14');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('51', '51', 'declined', '2011-03-05 09:42:51', '2005-01-15 14:17:12');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('52', '52', 'unfriended', '2015-03-24 12:09:54', '2012-02-21 03:40:33');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('53', '53', 'requested', '1970-11-12 14:49:45', '1993-08-23 01:20:14');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('54', '54', 'unfriended', '1988-01-13 02:33:13', '2015-12-21 05:11:37');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('55', '55', 'approved', '2009-06-12 10:52:02', '1970-09-19 17:50:50');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('56', '56', 'unfriended', '1974-12-26 14:06:37', '2010-04-19 06:05:05');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('57', '57', 'unfriended', '2018-11-20 05:51:42', '2013-10-16 16:17:22');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('58', '58', 'requested', '1989-05-29 16:55:49', '2006-01-01 21:42:16');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('59', '59', 'declined', '1992-11-16 21:22:10', '1994-03-29 04:28:48');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('60', '60', 'declined', '2012-03-27 14:14:44', '2012-12-18 12:19:53');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('61', '61', 'requested', '1987-09-14 19:27:06', '1979-04-08 17:25:44');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('62', '62', 'requested', '2000-08-10 06:15:05', '2009-02-14 10:26:18');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('63', '63', 'requested', '1982-04-10 11:10:54', '1975-07-04 23:43:07');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('64', '64', 'requested', '1972-12-29 02:50:21', '2014-10-16 08:42:21');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('65', '65', 'declined', '2001-05-28 20:13:30', '1979-06-20 22:53:54');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('66', '66', 'requested', '1975-09-21 23:23:55', '1989-08-05 06:25:05');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('67', '67', 'requested', '2007-05-24 06:24:00', '2007-11-19 03:48:13');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('68', '68', 'approved', '1980-04-15 19:01:02', '1989-12-31 11:16:04');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('69', '69', 'requested', '1970-04-22 11:51:30', '1976-08-29 23:19:32');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('70', '70', 'approved', '2010-07-25 00:16:52', '1990-09-13 20:50:26');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('71', '71', 'unfriended', '2002-08-01 14:55:46', '1981-09-12 08:21:01');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('72', '72', 'unfriended', '1997-01-26 03:52:02', '2009-04-09 22:02:09');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('73', '73', 'unfriended', '2002-07-11 13:27:23', '1983-12-31 00:48:45');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('74', '74', 'requested', '2013-12-15 11:19:19', '2006-03-30 00:35:32');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('75', '75', 'requested', '1997-01-27 10:20:53', '1972-11-16 11:29:48');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('76', '76', 'approved', '2018-08-16 01:34:25', '2009-03-21 18:04:22');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('77', '77', 'approved', '1975-03-08 23:18:47', '1979-10-08 23:44:00');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('78', '78', 'requested', '1972-05-19 20:28:11', '1974-06-27 21:56:32');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('79', '79', 'requested', '2005-11-06 09:05:36', '2000-12-13 10:19:49');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('80', '80', 'unfriended', '2006-07-18 16:51:30', '1977-01-16 03:41:42');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('81', '81', 'requested', '1984-02-06 09:00:38', '1978-09-22 20:58:43');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('82', '82', 'unfriended', '1987-01-13 12:53:48', '2018-09-30 10:56:43');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('83', '83', 'approved', '2018-03-24 10:16:44', '1970-09-29 23:52:58');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('84', '84', 'unfriended', '1989-03-02 05:57:12', '2002-06-28 06:25:48');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('85', '85', 'approved', '1993-09-05 03:00:06', '2006-10-10 14:32:02');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('86', '86', 'declined', '1985-05-02 23:06:38', '1997-07-23 05:47:41');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('87', '87', 'declined', '1972-12-31 18:50:44', '2018-09-10 04:16:14');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('88', '88', 'approved', '1978-01-02 21:32:16', '2017-12-15 13:50:34');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('89', '89', 'unfriended', '1996-08-17 20:21:44', '2005-04-06 08:45:02');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('90', '90', 'requested', '2007-08-05 19:44:07', '2017-02-04 11:36:31');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('91', '91', 'unfriended', '1995-10-16 01:42:49', '1975-03-20 01:04:48');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('92', '92', 'approved', '2004-09-05 14:33:55', '1991-05-24 07:43:10');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('93', '93', 'approved', '1998-03-08 18:19:08', '1989-01-25 08:52:21');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('94', '94', 'declined', '2017-08-31 06:23:08', '1980-12-19 14:56:39');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('95', '95', 'requested', '1985-05-02 07:37:51', '2007-01-07 11:59:51');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('96', '96', 'requested', '1990-08-25 08:34:23', '1980-07-20 00:16:27');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('97', '97', 'requested', '2011-07-10 01:01:36', '2005-09-27 23:30:44');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('98', '98', 'declined', '2010-06-01 01:58:46', '2000-07-31 05:20:16');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('99', '99', 'unfriended', '2009-11-13 14:00:00', '1997-09-20 06:35:49');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('100', '100', 'declined', '2011-01-29 12:20:54', '1981-02-04 07:40:07');

/*
#
# 8. TABLE STRUCTURE FOR: photo_albums
#
*/

DROP TABLE IF EXISTS `photo_albums`;

CREATE TABLE `photo_albums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `media_id` (`media_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `photo_albums_ibfk_1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `photo_albums_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `photo_albums_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('1', 'consequuntur', '1', '1');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('2', 'debitis', '2', '2');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('3', 'aut', '3', '3');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('4', 'rerum', '4', '4');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('5', 'voluptatem', '5', '5');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('6', 'perferendis', '6', '6');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('7', 'natus', '7', '7');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('8', 'nisi', '8', '8');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('9', 'quidem', '9', '9');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('10', 'accusamus', '10', '10');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('11', 'omnis', '11', '11');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('12', 'vel', '12', '12');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('13', 'rerum', '13', '13');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('14', 'et', '14', '14');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('15', 'doloremque', '15', '15');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('16', 'deserunt', '16', '16');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('17', 'est', '17', '17');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('18', 'ipsa', '18', '18');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('19', 'rerum', '19', '19');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('20', 'a', '20', '20');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('21', 'illo', '21', '21');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('22', 'aliquid', '22', '22');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('23', 'nesciunt', '23', '23');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('24', 'dolor', '24', '24');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('25', 'suscipit', '25', '25');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('26', 'aut', '26', '26');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('27', 'perspiciatis', '27', '27');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('28', 'est', '28', '28');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('29', 'sit', '29', '29');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('30', 'iste', '30', '30');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('31', 'porro', '31', '31');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('32', 'eveniet', '32', '32');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('33', 'animi', '33', '33');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('34', 'facilis', '34', '34');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('35', 'expedita', '35', '35');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('36', 'repellat', '36', '36');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('37', 'facere', '37', '37');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('38', 'hic', '38', '38');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('39', 'harum', '39', '39');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('40', 'laudantium', '40', '40');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('41', 'nostrum', '41', '41');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('42', 'eveniet', '42', '42');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('43', 'possimus', '43', '43');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('44', 'aliquid', '44', '44');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('45', 'esse', '45', '45');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('46', 'suscipit', '46', '46');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('47', 'delectus', '47', '47');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('48', 'et', '48', '48');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('49', 'autem', '49', '49');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('50', 'dolore', '50', '50');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('51', 'enim', '51', '51');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('52', 'sunt', '52', '52');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('53', 'ipsum', '53', '53');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('54', 'et', '54', '54');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('55', 'ab', '55', '55');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('56', 'nisi', '56', '56');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('57', 'sed', '57', '57');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('58', 'voluptatem', '58', '58');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('59', 'fugiat', '59', '59');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('60', 'rerum', '60', '60');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('61', 'corrupti', '61', '61');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('62', 'rem', '62', '62');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('63', 'quia', '63', '63');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('64', 'omnis', '64', '64');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('65', 'ut', '65', '65');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('66', 'dolore', '66', '66');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('67', 'omnis', '67', '67');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('68', 'ad', '68', '68');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('69', 'omnis', '69', '69');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('70', 'quae', '70', '70');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('71', 'sunt', '71', '71');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('72', 'alias', '72', '72');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('73', 'sit', '73', '73');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('74', 'mollitia', '74', '74');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('75', 'voluptatibus', '75', '75');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('76', 'non', '76', '76');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('77', 'esse', '77', '77');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('78', 'modi', '78', '78');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('79', 'quibusdam', '79', '79');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('80', 'in', '80', '80');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('81', 'assumenda', '81', '81');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('82', 'in', '82', '82');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('83', 'sed', '83', '83');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('84', 'architecto', '84', '84');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('85', 'qui', '85', '85');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('86', 'qui', '86', '86');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('87', 'rem', '87', '87');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('88', 'delectus', '88', '88');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('89', 'expedita', '89', '89');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('90', 'error', '90', '90');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('91', 'consequatur', '91', '91');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('92', 'quia', '92', '92');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('93', 'commodi', '93', '93');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('94', 'commodi', '94', '94');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('95', 'repudiandae', '95', '95');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('96', 'soluta', '96', '96');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('97', 'reiciendis', '97', '97');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('98', 'dolore', '98', '98');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('99', 'dolor', '99', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`, `media_id`) VALUES ('100', 'quam', '100', '100');

/*
#
# 9. TABLE STRUCTURE FOR: like_types
#
*/

DROP TABLE IF EXISTS `like_types`;

CREATE TABLE `like_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `like_type` enum('like','heart','funny','wow','cry','dislike') COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `like_types` (`id`, `like_type`) VALUES ('1', 'funny');
INSERT INTO `like_types` (`id`, `like_type`) VALUES ('2', 'cry');
INSERT INTO `like_types` (`id`, `like_type`) VALUES ('3', 'heart');
INSERT INTO `like_types` (`id`, `like_type`) VALUES ('4', 'dislike');
INSERT INTO `like_types` (`id`, `like_type`) VALUES ('5', 'like');
INSERT INTO `like_types` (`id`, `like_type`) VALUES ('6', 'wow');

/*
#
# 10. TABLE STRUCTURE FOR: messages
#
*/

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `messages_from_user_id` (`from_user_id`),
  KEY `messages_to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('1', '1', '1', 'Quae rerum non est repellendus voluptas accusantium eum. Provident quo temporibus nesciunt animi est veniam. Iure ut non voluptates autem eos non. Non tempore aperiam eligendi quis dolores eius ut. Itaque atque possimus quisquam autem numquam sunt sit.', '1977-07-09 04:58:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('2', '2', '2', 'Cum animi explicabo perspiciatis. Tempore tempora qui pariatur ducimus distinctio ut voluptas. Omnis voluptates voluptatibus magni rerum nesciunt nihil quo. Perferendis quam voluptatum facere ut.', '1998-10-17 15:30:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('3', '3', '3', 'Dolores at unde atque dolores consectetur aliquam velit. Eos et autem est laudantium. Velit velit similique quidem consequatur. Cupiditate quo in deleniti voluptatem.', '1991-09-09 19:58:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('4', '4', '4', 'Corporis architecto repellendus laborum a porro nemo. Ullam officia qui laboriosam molestiae.', '2005-12-11 07:32:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('5', '5', '5', 'Et aut et dignissimos vitae. Et modi soluta eveniet aut quisquam. Accusantium qui tempora repellat suscipit voluptatem.', '1987-06-17 23:02:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('6', '6', '6', 'Porro facere et magni explicabo sed. Veniam similique nemo non inventore. Praesentium quia eaque et unde nihil iste et.', '1976-04-02 07:03:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('7', '7', '7', 'Corporis est labore hic. Alias in ad numquam qui. Est perspiciatis necessitatibus fugiat. Facere iure commodi molestias voluptatum. Suscipit unde quis amet illo laudantium amet minus.', '2001-02-11 16:07:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('8', '8', '8', 'Temporibus fuga iste nemo fuga voluptas. Ab voluptates culpa architecto impedit. Corrupti laudantium tenetur eum vel architecto.', '1970-08-27 07:28:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('9', '9', '9', 'Sapiente sit quia officia qui et iusto. Aut consequatur tenetur dignissimos aut vero. Omnis assumenda quam perspiciatis suscipit quos dolorem ducimus.', '1984-08-21 01:56:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('10', '10', '10', 'Esse temporibus aut vero magni ut aliquid error numquam. Omnis ut quo mollitia facere suscipit in odio. Mollitia alias quo magnam dicta et exercitationem sit.', '1981-01-31 12:49:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('11', '11', '11', 'Quo ratione iure et. Dolores officiis voluptate dignissimos voluptatem. Et rerum recusandae non quo sunt fugiat vel assumenda. Est architecto et in dicta qui inventore.', '1990-08-15 03:50:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('12', '12', '12', 'Fuga consequatur ipsam animi. Error aut neque ut nihil excepturi. Voluptatem hic est quo accusantium velit soluta quod.', '1998-11-09 19:42:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('13', '13', '13', 'Porro occaecati ut dolore aliquid cumque dolores quod. Aut eius omnis vero beatae impedit excepturi quasi. Consequatur molestiae labore provident. Assumenda molestias illum doloremque.', '2014-02-03 07:59:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('14', '14', '14', 'Atque ut suscipit modi iusto impedit porro. Delectus magni magni quo facere. Et dicta est voluptas tempore reiciendis nemo.', '1985-08-14 23:45:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('15', '15', '15', 'Harum optio et qui vitae ut voluptatem hic. Quo fugit corporis similique beatae est alias non mollitia. Voluptas inventore excepturi qui magni ut.', '1989-07-24 23:53:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('16', '16', '16', 'Quasi aperiam repellat veniam laborum enim qui tempore. Et adipisci odio sed sit nam ratione et. Praesentium error odit quibusdam. Et natus atque sit magni.', '2012-06-15 20:47:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('17', '17', '17', 'Autem magnam ducimus quas et aut non rem. Voluptatum praesentium sunt iste pariatur consequuntur reiciendis qui. Porro excepturi quo autem aspernatur aut qui veniam. Rem totam praesentium eum voluptatum tempora.', '1995-04-26 11:16:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('18', '18', '18', 'Asperiores ut accusantium fugit. Quasi qui numquam provident voluptatem quae. Quia blanditiis aut ipsa.', '1974-03-11 07:36:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('19', '19', '19', 'Fuga ipsum nemo praesentium quis. Veniam dolorem totam qui perspiciatis tempora. Ad aut iure suscipit dignissimos qui non aut.', '1975-04-16 12:14:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('20', '20', '20', 'Consequatur eaque officiis rem cupiditate quo molestias. Facilis totam voluptatibus officia nam ea quia cupiditate. Quo aut dolorem dolor maiores non. Aperiam minus dolorem omnis animi non est libero.', '2005-05-03 14:29:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('21', '21', '21', 'Aut omnis voluptatum cum non unde quibusdam qui. Suscipit nobis numquam labore rerum.', '2011-01-30 06:59:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('22', '22', '22', 'Consequatur velit quia repellat aut quae. Enim nemo et quam. Consequuntur ullam sit ut. Dolores corrupti a placeat sint aut labore.', '1981-09-21 04:13:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('23', '23', '23', 'Occaecati quae officiis corporis esse in eum provident qui. Vel harum a voluptates molestiae et eos. Sunt magnam dignissimos minus.', '2018-05-12 19:18:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('24', '24', '24', 'Quibusdam beatae quo vero delectus assumenda quia nihil officiis. Qui consequatur error quae omnis. Minus ut itaque excepturi debitis porro.', '2011-08-07 18:38:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('25', '25', '25', 'Dolorum officia ut unde est sequi eos cupiditate dolore. Excepturi et consequuntur modi. Tenetur reiciendis aut temporibus voluptatibus numquam est. Aliquam eos placeat nemo ratione cupiditate et.', '1988-04-30 07:21:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('26', '26', '26', 'Ut dolore cum quidem modi. Iure laboriosam voluptatem libero quia sed fugit. Ullam aut doloremque fugit minima vitae. Quia hic est id fugiat enim reprehenderit dolorem.', '2008-08-18 12:57:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('27', '27', '27', 'Vel nisi maxime odio aut. Vel quidem dolor voluptas eos. Sapiente in non voluptatem dolore repudiandae rerum.', '1978-06-18 03:41:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('28', '28', '28', 'Aspernatur labore cum sint voluptatum asperiores aut. Est aut rerum officiis voluptatem. Vel cumque laudantium aut optio debitis laudantium impedit sunt.', '2005-09-16 05:00:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('29', '29', '29', 'Fugit incidunt veniam unde perferendis enim amet eos. Voluptatem dignissimos dolorem omnis nobis amet quo. Eos eos libero sed nisi sed.', '2001-07-30 18:27:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('30', '30', '30', 'At repudiandae suscipit saepe fugiat. Nesciunt voluptatem iste et et aut sed. Rerum perferendis in iusto aut.', '1970-09-29 23:06:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('31', '31', '31', 'Veniam neque ipsam sunt. Ipsum accusamus sed doloremque sint. In aut et magnam.', '2000-10-23 21:17:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('32', '32', '32', 'Sint sit autem deserunt commodi modi tenetur. Est ea sed error est.', '1987-07-21 03:42:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('33', '33', '33', 'Quia voluptatem labore consequatur. Qui et eligendi quasi maxime illo. Cupiditate pariatur neque fuga sint.', '2013-02-11 11:51:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('34', '34', '34', 'Omnis in ut vel ea earum et harum. Sit voluptas distinctio et sequi. Rem tempora reiciendis quam ea odio eligendi sapiente. Perferendis est sequi dolores ipsum quae.', '2013-08-25 08:08:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('35', '35', '35', 'Sit qui voluptas temporibus sed odit consectetur delectus. Suscipit deleniti non qui earum est voluptatem. Et aut laborum atque molestias sapiente possimus. Fugit rerum omnis officia vel illo voluptas aut.', '1971-05-02 02:08:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('36', '36', '36', 'Non iure aut neque corporis mollitia voluptatibus in. Expedita et totam assumenda officia fugit non. Fugiat eaque eum assumenda commodi est quaerat tenetur corrupti.', '1993-09-27 00:52:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('37', '37', '37', 'Recusandae et voluptas in ut eveniet et. Incidunt laborum et veritatis tempora iste. Veniam corrupti provident cupiditate assumenda ut enim.', '1996-01-09 18:52:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('38', '38', '38', 'Sit voluptate iusto qui provident. At esse esse est animi eius dolores ea eius. Exercitationem voluptate explicabo eveniet fugit pariatur unde et. Voluptas molestiae debitis eius quam.', '2013-04-18 19:35:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('39', '39', '39', 'Quo omnis sed rerum aut corrupti optio. Veniam corporis illum eaque quod fugit fuga eos id. Et ut nulla error commodi non impedit quis.', '2004-03-05 15:56:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('40', '40', '40', 'Blanditiis neque voluptatem error ut est iusto voluptatibus. Amet sunt incidunt quis sit necessitatibus consequatur fugit. Qui assumenda sunt eum dolores culpa nihil incidunt esse.', '1987-10-25 11:51:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('41', '41', '41', 'Voluptatem ut aut voluptates vel tenetur beatae voluptatem. Est quos eos ratione cupiditate.', '1998-11-22 07:46:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('42', '42', '42', 'Dolores debitis voluptate voluptatum repudiandae. Mollitia maiores non quibusdam temporibus voluptas earum. Quibusdam aliquam deserunt minima quis adipisci. Reiciendis sapiente illum placeat soluta modi quia eius.', '2005-12-10 17:50:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('43', '43', '43', 'Quis architecto quia voluptatem molestiae mollitia. A minus eum sunt et. Quam sit est ducimus. Architecto amet reprehenderit qui aliquam et non sit. Illum vel soluta consectetur blanditiis amet et.', '2002-12-21 17:45:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('44', '44', '44', 'Deserunt et nam quaerat est ex. Eum placeat vel et id. Eum quo doloremque odio. Commodi possimus et consequatur sint.', '1989-03-31 15:53:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('45', '45', '45', 'Aspernatur necessitatibus sed sunt exercitationem debitis accusamus. Ullam sit rerum rerum nisi commodi omnis molestiae. Perferendis inventore rem illum dolores.', '1974-02-21 13:59:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('46', '46', '46', 'Sed labore veritatis omnis sed. Fugiat cumque amet enim autem sunt consequuntur delectus. Ad qui aperiam consequatur quas.', '1998-08-31 14:22:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('47', '47', '47', 'Quasi cupiditate ullam odit dignissimos consequuntur aspernatur pariatur voluptatem. Est corporis itaque laudantium tempora et facere. Veniam repellat et modi repudiandae est dolorum sed.', '2014-08-06 19:24:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('48', '48', '48', 'Incidunt est quo sit dolore optio rerum repudiandae. Necessitatibus asperiores ut est ut. Magni numquam quos et rem.', '1996-06-30 00:39:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('49', '49', '49', 'Saepe eum alias distinctio corrupti unde et reiciendis. Quos assumenda ut voluptas quis. Quidem autem totam perspiciatis doloremque vel natus rem.', '1971-06-22 10:26:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('50', '50', '50', 'Adipisci amet officiis consequatur quisquam accusamus aut. Ipsam tempore amet maxime.', '2008-08-29 09:00:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('51', '51', '51', 'Qui ad est quia ut est sint. Sunt ipsum dolore labore corrupti est voluptatem omnis.', '2000-01-25 23:30:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('52', '52', '52', 'Deserunt tenetur fugit explicabo. Eius eveniet quia quas nihil omnis debitis eligendi neque. Et impedit explicabo suscipit dolore.', '2003-04-05 22:22:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('53', '53', '53', 'Adipisci vel voluptas qui magni. Sit culpa mollitia officiis est aut. Repellat qui ut et et.', '1989-03-12 14:08:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('54', '54', '54', 'Qui et aut voluptas labore sit dicta error. Eius fugit et aliquid. Reprehenderit aliquam magnam placeat numquam deleniti accusantium.', '1986-12-29 03:21:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('55', '55', '55', 'A aliquam est molestias quibusdam fuga exercitationem corporis natus. Ut nostrum est voluptas numquam debitis sit quia. Aut nemo dicta ratione velit nulla. Cupiditate possimus consequatur voluptatum et suscipit sunt.', '1990-04-22 10:34:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('56', '56', '56', 'Quo qui consequuntur et repellat. Quae necessitatibus dicta aut consequatur est sunt. In voluptatem cum et temporibus dolore assumenda et. Aliquam deserunt voluptatem saepe dolores ipsam porro ad.', '2017-06-03 06:21:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('57', '57', '57', 'Voluptatem molestias similique voluptatem voluptatem. Doloremque aliquam mollitia repudiandae est reprehenderit cum quis. Dolorem et illo dolor et enim.', '1971-02-17 13:55:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('58', '58', '58', 'Saepe eveniet placeat sit provident sit qui. Maiores dicta consectetur voluptatum modi fuga quod. Rerum tempore assumenda sit eum maiores minima rerum. Alias saepe repellat ipsam eum tempore unde et est.', '2000-10-22 05:10:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('59', '59', '59', 'Dicta consectetur aperiam explicabo voluptatem culpa. Qui ut qui dolore non facilis. Aperiam dolores tempora dolorem unde odio.', '2005-02-21 04:05:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('60', '60', '60', 'Cumque ex accusantium soluta accusamus. Quod est et facere libero laboriosam molestiae. Necessitatibus tempore qui quis cumque aliquam voluptas iusto.', '1992-12-05 19:32:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('61', '61', '61', 'Maiores voluptatem voluptatibus quibusdam eos facilis. Corrupti voluptatum voluptas consectetur beatae nesciunt asperiores deleniti. Natus quis temporibus ad fugiat.', '2012-04-10 19:56:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('62', '62', '62', 'Et qui culpa nemo sequi nemo sunt. Id omnis deserunt excepturi est ullam aliquam cupiditate explicabo. At voluptatem provident possimus exercitationem dolor autem. Explicabo autem fugit qui dolorum neque sequi aliquam repellat.', '1989-10-28 01:48:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('63', '63', '63', 'Alias quis eligendi fugit itaque et qui. Odio pariatur officiis voluptas maiores. Nihil a neque cum vel iusto.', '1972-07-07 13:55:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('64', '64', '64', 'Non quis vel aut ea. Perferendis voluptatem reiciendis et recusandae laudantium. Quam molestiae harum at est non exercitationem reprehenderit quis. Qui vero rerum tenetur et ab. Quibusdam quia amet et facilis ut quia sapiente.', '2011-11-18 22:16:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('65', '65', '65', 'Eum aut dolor ullam dicta et. Blanditiis tempora doloribus aut omnis molestiae voluptatibus. Sed non voluptatum harum ut aut ea voluptas. Iure porro earum illo nesciunt.', '1972-04-23 19:04:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('66', '66', '66', 'Blanditiis atque voluptas eum. Non quod facere error maxime distinctio est id. Deleniti omnis nam soluta consectetur provident. Tempore et aut aut neque dolorum.', '1999-07-21 22:52:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('67', '67', '67', 'Itaque ut natus unde nihil voluptatum voluptatem. Tenetur commodi laborum debitis amet fuga impedit. Explicabo impedit autem omnis cupiditate animi voluptate adipisci. Natus rerum in praesentium non occaecati unde non quam.', '2014-12-23 21:11:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('68', '68', '68', 'Qui fuga quam alias ipsa provident sunt ut vitae. Ex id totam sed est possimus qui. Fuga officiis velit officia architecto. Et nostrum dolores molestiae ut fugit expedita corrupti officia.', '1974-09-02 18:05:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('69', '69', '69', 'Aliquam perspiciatis provident voluptatem. Quia earum similique vero dolores.', '2008-08-13 05:00:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('70', '70', '70', 'Excepturi magnam soluta modi eveniet. Voluptates et quam iusto laborum consequatur. Voluptas omnis ut laborum sint odit suscipit. Quia at harum odio repellendus sequi. Non omnis et iste.', '1990-05-12 23:50:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('71', '71', '71', 'Eius eligendi consequatur quia aut culpa iure maxime assumenda. Dolorem nobis eum non laboriosam aliquam amet tempore beatae. Autem facilis aut dolorum assumenda repellendus molestiae.', '2003-03-13 16:20:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('72', '72', '72', 'Soluta id ipsam praesentium velit. Quaerat autem neque debitis non unde velit autem. Nam fugit voluptatum est.', '2013-03-30 18:44:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('73', '73', '73', 'Quod iure maxime nulla id commodi a rem. Ratione id fuga consequuntur et et reprehenderit aut. Tempore nihil sit alias necessitatibus ut. Unde saepe animi accusamus totam. Non et delectus fugiat atque dolores.', '2000-06-12 22:14:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('74', '74', '74', 'Possimus ullam a excepturi quibusdam et. Aut amet voluptatem sed. Delectus et non qui officiis quasi minus voluptate dignissimos.', '1974-07-16 07:09:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('75', '75', '75', 'Consequatur illum officiis quasi. Sequi eveniet sed quod fugiat aut sequi tempore. Et eos nihil nobis possimus. Placeat in ducimus odio dolores eos voluptate.', '2004-07-20 01:57:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('76', '76', '76', 'Eum ut sapiente quo accusantium molestias. Error at ut rerum. Voluptas aut nesciunt necessitatibus temporibus quidem. Consectetur molestiae perspiciatis praesentium quisquam iure dignissimos dignissimos.', '1986-11-20 07:27:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('77', '77', '77', 'Et enim et ullam et consectetur perspiciatis eos. Sunt ipsam inventore modi sit minus et voluptatem. Impedit et tempora quasi quisquam eligendi rerum. Amet culpa in deserunt magnam aut.', '1982-08-08 02:33:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('78', '78', '78', 'In id quam cupiditate ut ut. Ut fugit excepturi eum doloribus autem. Omnis consectetur fugit magni aliquid. Nisi sit minus tenetur eveniet.', '1986-11-26 06:41:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('79', '79', '79', 'Veritatis qui et voluptatem aut vero nihil tempora et. Consectetur provident enim laudantium suscipit voluptatem voluptas. Ipsa eos ut explicabo dolor.', '2005-03-27 05:33:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('80', '80', '80', 'Et omnis quis est eaque et quia perspiciatis. Tempore sequi corporis ipsa sit. Error nemo debitis vitae ipsam.', '1996-09-29 16:37:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('81', '81', '81', 'Voluptatibus harum aut quas possimus unde molestias. Temporibus asperiores sapiente aut ducimus ut exercitationem. Adipisci adipisci quibusdam in aut.', '1971-08-29 17:02:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('82', '82', '82', 'Dolor aliquid ex ab neque. Dolores inventore dolorum sit aut. Et adipisci quo et consequatur tempora excepturi rerum. Modi nihil odit quasi quisquam aut.', '2004-10-13 05:09:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('83', '83', '83', 'Inventore ut tenetur aliquam dignissimos. Quia natus ducimus atque ut ad veritatis et. Repellendus ut est cupiditate molestias vel ipsam.', '2006-01-16 06:01:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('84', '84', '84', 'Quo in ad rerum reprehenderit non eum maxime iusto. Et ullam atque aut qui. Omnis facere tenetur vero dolores. Voluptates cupiditate doloremque dolorum quo ab aut et velit.', '1991-03-06 11:53:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('85', '85', '85', 'Ea non cum enim libero odio veritatis nostrum ratione. Occaecati sit fuga tenetur ullam tempore. Eveniet tenetur quam incidunt rem cupiditate qui accusantium consequatur.', '1982-03-09 19:14:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('86', '86', '86', 'Velit tenetur ut ut dignissimos nemo cumque corrupti libero. Quia aut ut perferendis. Autem dolor quidem quo unde vel modi.', '2006-04-21 17:13:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('87', '87', '87', 'Consequatur aliquam asperiores natus dolorum quis dolorem consequuntur. Corporis expedita modi consequatur. Ducimus quis a asperiores voluptatem.', '1986-09-17 00:49:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('88', '88', '88', 'Nihil est ad modi mollitia impedit quis assumenda. Quas quia et quo deserunt earum consequatur numquam quis. Suscipit et quas aut qui voluptas molestias repellendus nam.', '2014-03-21 06:42:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('89', '89', '89', 'Quo aut maiores harum odio. Et id voluptatem iure quisquam. In amet magnam molestiae id ut. Laboriosam rerum autem voluptatem est reiciendis.', '1980-01-06 14:40:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('90', '90', '90', 'Quaerat cupiditate non dolorem laboriosam. Tempora quasi impedit numquam nam aut sit aperiam possimus. Esse et aut eius esse dolores corrupti aut nemo. Ut consequatur molestiae eos consectetur tempora officia.', '1973-12-19 13:09:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('91', '91', '91', 'Excepturi omnis sequi quia non id qui. Omnis sed ipsam id temporibus. Quod rerum ratione neque. Repudiandae saepe quam aut.', '2008-10-25 14:44:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('92', '92', '92', 'Eius voluptatem fuga ipsam eveniet unde veniam. In et consequuntur similique quidem dolore. Aperiam ipsam nihil sapiente autem dignissimos.', '1972-05-21 00:43:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('93', '93', '93', 'Ducimus sapiente suscipit et. Maxime alias labore nemo eum molestiae modi consequatur. Eum quas odit voluptas. Aut earum labore incidunt quo laboriosam ipsam.', '1979-04-21 07:55:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('94', '94', '94', 'Ut et quos iusto. Veniam quisquam nam perspiciatis eaque tenetur facilis quis. Voluptatum dolore autem quisquam pariatur facilis ut consequatur quibusdam.', '2003-03-08 13:56:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('95', '95', '95', 'Est nam impedit similique. Corrupti tempore saepe voluptatem consequatur. Hic unde sed dolorum in. Aut numquam officiis ut aut cum. Dicta quaerat itaque perferendis.', '1971-01-15 04:16:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('96', '96', '96', 'Omnis sit omnis amet. Placeat illo doloremque voluptatem repudiandae commodi aut hic. Ab porro accusantium quod quia assumenda ipsa vel. Rerum ipsum perferendis excepturi aliquid occaecati quia voluptate.', '2018-01-21 02:14:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('97', '97', '97', 'Natus provident pariatur labore consequatur veritatis. Aliquam minima sapiente omnis culpa. Tenetur enim quibusdam nisi est vitae velit eius. Aut aut vel nihil consequuntur enim sunt.', '1993-03-24 13:01:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('98', '98', '98', 'Recusandae quis sapiente libero omnis esse sed exercitationem. Qui voluptas aliquam ut culpa vel veritatis sed exercitationem. Ut dolor odit odit blanditiis et quis autem. Veritatis eos alias et ea sed.', '1991-06-15 19:31:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('99', '99', '99', 'Voluptates architecto explicabo aut nulla fuga laboriosam. Consequatur inventore unde ex.', '1987-01-17 20:57:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('100', '100', '100', 'Harum rerum sunt aut. Sed debitis necessitatibus sit dolorem. Voluptatum deserunt rerum reprehenderit perferendis quia omnis dicta. Sed occaecati rem doloremque quod vitae.', '1974-07-09 19:57:07');



/*
#
# 11. TABLE STRUCTURE FOR: like_messages
#
*/

DROP TABLE IF EXISTS `like_messages`;

CREATE TABLE `like_messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `message_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `like_type_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `message_id` (`message_id`),
  KEY `like_type_id` (`like_type_id`),
  CONSTRAINT `like_messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `like_messages_ibfk_2` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`),
  CONSTRAINT `like_messages_ibfk_3` FOREIGN KEY (`like_type_id`) REFERENCES `like_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('1', '1', '1', '1995-07-15 12:08:58', '1');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('2', '2', '2', '1992-04-11 21:04:56', '2');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('3', '3', '3', '1971-08-29 08:50:58', '3');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('4', '4', '4', '1978-04-02 09:57:08', '4');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('5', '5', '5', '1999-11-26 12:09:24', '5');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('6', '6', '6', '2008-09-04 13:24:37', '6');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('7', '7', '7', '2016-10-21 09:25:12', '1');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('8', '8', '8', '1971-05-19 10:07:36', '2');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('9', '9', '9', '1992-06-16 18:05:04', '3');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('10', '10', '10', '1981-03-04 16:16:08', '4');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('11', '11', '11', '1972-10-15 19:03:27', '5');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('12', '12', '12', '1993-05-26 09:14:37', '6');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('13', '13', '13', '1990-08-03 01:53:33', '1');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('14', '14', '14', '1977-08-15 13:54:48', '2');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('15', '15', '15', '1975-10-30 00:23:56', '3');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('16', '16', '16', '1990-11-09 02:19:58', '4');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('17', '17', '17', '1977-11-06 06:25:48', '5');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('18', '18', '18', '1995-12-29 02:31:18', '6');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('19', '19', '19', '2006-04-26 02:06:52', '1');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('20', '20', '20', '1978-04-17 03:00:22', '2');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('21', '21', '21', '2019-06-15 09:56:57', '3');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('22', '22', '22', '1983-02-13 20:34:03', '4');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('23', '23', '23', '2000-05-07 01:49:33', '5');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('24', '24', '24', '1994-04-18 05:19:34', '6');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('25', '25', '25', '1972-01-22 23:05:52', '1');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('26', '26', '26', '2000-05-28 22:54:02', '2');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('27', '27', '27', '1984-06-23 13:25:14', '3');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('28', '28', '28', '1975-04-02 22:41:14', '4');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('29', '29', '29', '1982-01-21 20:35:33', '5');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('30', '30', '30', '2006-10-20 01:05:25', '6');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('31', '31', '31', '2000-11-11 17:15:34', '1');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('32', '32', '32', '2003-10-29 08:39:31', '2');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('33', '33', '33', '1973-12-10 08:05:50', '3');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('34', '34', '34', '1970-01-21 22:22:41', '4');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('35', '35', '35', '2015-12-24 00:49:40', '5');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('36', '36', '36', '1991-10-05 01:57:09', '6');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('37', '37', '37', '1976-09-17 09:48:06', '1');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('38', '38', '38', '2007-02-25 12:58:53', '2');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('39', '39', '39', '1973-02-13 03:11:34', '3');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('40', '40', '40', '2010-12-27 05:21:18', '4');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('41', '41', '41', '1979-07-22 13:19:34', '5');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('42', '42', '42', '2012-01-30 18:46:31', '6');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('43', '43', '43', '1995-09-11 21:51:40', '1');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('44', '44', '44', '2005-07-02 12:16:10', '2');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('45', '45', '45', '2005-12-04 05:36:56', '3');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('46', '46', '46', '1979-02-26 07:49:41', '4');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('47', '47', '47', '2003-06-28 13:21:36', '5');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('48', '48', '48', '1977-10-24 09:21:20', '6');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('49', '49', '49', '1985-02-11 02:14:47', '1');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('50', '50', '50', '1972-06-07 11:08:54', '2');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('51', '51', '51', '1983-04-06 03:56:50', '3');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('52', '52', '52', '1996-10-18 13:00:47', '4');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('53', '53', '53', '1999-11-23 23:13:56', '5');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('54', '54', '54', '1971-04-18 17:38:23', '6');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('55', '55', '55', '2016-02-28 21:46:06', '1');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('56', '56', '56', '2011-11-16 07:36:47', '2');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('57', '57', '57', '1980-04-12 19:34:41', '3');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('58', '58', '58', '2002-11-20 16:30:39', '4');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('59', '59', '59', '1976-03-01 18:05:26', '5');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('60', '60', '60', '1992-08-26 06:17:47', '6');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('61', '61', '61', '1991-05-24 05:52:43', '1');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('62', '62', '62', '2000-05-26 14:23:30', '2');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('63', '63', '63', '1979-06-29 18:24:53', '3');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('64', '64', '64', '1973-12-14 11:56:00', '4');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('65', '65', '65', '2005-03-15 01:17:50', '5');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('66', '66', '66', '2001-09-20 19:44:55', '6');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('67', '67', '67', '1971-09-17 00:28:39', '1');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('68', '68', '68', '1999-10-09 06:50:59', '2');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('69', '69', '69', '1985-04-14 07:03:58', '3');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('70', '70', '70', '1985-03-16 21:13:01', '4');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('71', '71', '71', '1997-09-07 04:46:05', '5');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('72', '72', '72', '2015-12-17 02:13:22', '6');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('73', '73', '73', '2015-09-21 14:40:31', '1');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('74', '74', '74', '1987-03-03 04:47:12', '2');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('75', '75', '75', '1985-03-11 23:18:41', '3');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('76', '76', '76', '1992-08-08 12:24:05', '4');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('77', '77', '77', '1980-05-03 04:53:29', '5');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('78', '78', '78', '1992-12-26 04:26:24', '6');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('79', '79', '79', '2009-09-10 17:09:12', '1');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('80', '80', '80', '1978-04-19 07:43:16', '2');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('81', '81', '81', '2011-09-27 23:04:41', '3');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('82', '82', '82', '1986-05-18 22:26:29', '4');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('83', '83', '83', '1999-11-22 09:52:47', '5');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('84', '84', '84', '1988-11-29 05:22:56', '6');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('85', '85', '85', '1995-03-23 11:54:14', '1');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('86', '86', '86', '1995-10-30 07:11:35', '2');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('87', '87', '87', '1993-06-20 12:05:53', '3');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('88', '88', '88', '1977-08-20 07:06:40', '4');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('89', '89', '89', '1988-08-08 02:45:07', '5');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('90', '90', '90', '1999-09-03 19:53:44', '6');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('91', '91', '91', '1985-08-09 14:43:36', '1');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('92', '92', '92', '2017-12-21 02:18:20', '2');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('93', '93', '93', '1999-05-30 09:26:26', '3');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('94', '94', '94', '2002-04-29 05:01:31', '4');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('95', '95', '95', '2014-09-28 11:30:51', '5');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('96', '96', '96', '2012-04-21 23:50:06', '6');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('97', '97', '97', '1977-10-16 15:29:12', '1');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('98', '98', '98', '1970-10-15 08:23:12', '2');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('99', '99', '99', '1992-11-15 15:08:02', '3');
INSERT INTO `like_messages` (`id`, `user_id`, `message_id`, `created_at`, `like_type_id`) VALUES ('100', '100', '100', '1996-03-26 10:14:39', '4');




/*
#
# 12 TABLE STRUCTURE FOR: like_users
#
*/

DROP TABLE IF EXISTS `like_users`;

CREATE TABLE `like_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `whom_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `like_type_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `whom_id` (`whom_id`),
  KEY `like_type_id` (`like_type_id`),
  CONSTRAINT `like_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `like_users_ibfk_2` FOREIGN KEY (`whom_id`) REFERENCES `users` (`id`),
  CONSTRAINT `like_users_ibfk_3` FOREIGN KEY (`like_type_id`) REFERENCES `like_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('1', '1', '1', '1996-06-06 09:27:00', '1');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('2', '2', '2', '1986-05-21 22:59:39', '2');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('3', '3', '3', '1970-06-17 05:52:50', '3');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('4', '4', '4', '1980-01-13 05:11:40', '4');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('5', '5', '5', '1971-09-11 18:48:53', '5');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('6', '6', '6', '2014-09-01 06:54:02', '6');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('7', '7', '7', '1987-04-21 13:48:19', '1');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('8', '8', '8', '1974-04-28 23:26:56', '2');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('9', '9', '9', '2017-05-27 01:43:54', '3');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('10', '10', '10', '2010-07-02 05:18:06', '4');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('11', '11', '11', '2012-08-05 12:29:52', '5');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('12', '12', '12', '1977-01-28 18:05:26', '6');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('13', '13', '13', '2017-01-06 04:37:22', '1');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('14', '14', '14', '1990-04-08 12:15:57', '2');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('15', '15', '15', '2010-10-03 04:36:30', '3');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('16', '16', '16', '1973-10-29 21:32:21', '4');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('17', '17', '17', '1982-12-24 07:45:53', '5');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('18', '18', '18', '2002-11-15 14:04:22', '6');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('19', '19', '19', '2006-07-25 09:14:33', '1');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('20', '20', '20', '1970-06-23 15:14:22', '2');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('21', '21', '21', '2001-01-30 10:10:13', '3');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('22', '22', '22', '2003-05-08 16:58:50', '4');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('23', '23', '23', '2016-11-12 15:23:14', '5');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('24', '24', '24', '2017-07-26 14:47:30', '6');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('25', '25', '25', '2018-03-10 21:57:56', '1');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('26', '26', '26', '1979-03-15 11:26:25', '2');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('27', '27', '27', '1996-06-09 23:11:11', '3');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('28', '28', '28', '1993-12-06 15:29:06', '4');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('29', '29', '29', '2017-08-11 16:30:37', '5');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('30', '30', '30', '2004-09-10 20:00:08', '6');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('31', '31', '31', '1975-04-23 06:32:11', '1');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('32', '32', '32', '1973-11-05 21:43:16', '2');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('33', '33', '33', '1987-08-10 23:58:40', '3');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('34', '34', '34', '2019-04-08 08:11:33', '4');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('35', '35', '35', '2013-12-08 08:30:38', '5');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('36', '36', '36', '1988-10-05 19:26:55', '6');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('37', '37', '37', '1971-03-01 16:19:50', '1');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('38', '38', '38', '1980-04-03 19:39:58', '2');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('39', '39', '39', '1993-02-06 05:01:10', '3');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('40', '40', '40', '1972-05-11 10:39:54', '4');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('41', '41', '41', '2014-12-22 00:34:15', '5');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('42', '42', '42', '1983-08-11 13:59:18', '6');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('43', '43', '43', '1970-09-02 03:26:57', '1');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('44', '44', '44', '1985-08-14 18:30:58', '2');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('45', '45', '45', '2004-07-04 18:30:48', '3');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('46', '46', '46', '1998-10-17 12:08:38', '4');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('47', '47', '47', '2003-02-14 20:44:58', '5');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('48', '48', '48', '1978-07-27 01:31:46', '6');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('49', '49', '49', '2015-11-26 16:40:26', '1');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('50', '50', '50', '1980-09-30 14:54:58', '2');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('51', '51', '51', '1980-03-07 10:49:08', '3');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('52', '52', '52', '1985-06-13 23:13:22', '4');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('53', '53', '53', '1997-06-25 00:55:59', '5');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('54', '54', '54', '2013-01-12 23:36:56', '6');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('55', '55', '55', '1996-01-20 12:04:59', '1');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('56', '56', '56', '2010-04-23 13:49:30', '2');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('57', '57', '57', '1990-05-06 10:10:14', '3');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('58', '58', '58', '1988-12-03 08:13:55', '4');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('59', '59', '59', '2003-05-06 15:54:15', '5');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('60', '60', '60', '1987-09-19 09:17:23', '6');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('61', '61', '61', '2004-04-09 09:27:19', '1');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('62', '62', '62', '1982-08-18 15:13:29', '2');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('63', '63', '63', '2009-05-16 18:37:33', '3');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('64', '64', '64', '2009-06-09 05:46:13', '4');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('65', '65', '65', '2018-12-19 21:00:40', '5');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('66', '66', '66', '2009-01-21 05:02:35', '6');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('67', '67', '67', '1973-06-07 06:38:48', '1');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('68', '68', '68', '2003-06-01 18:52:59', '2');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('69', '69', '69', '2015-01-27 22:02:20', '3');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('70', '70', '70', '1997-12-30 12:39:48', '4');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('71', '71', '71', '1977-04-08 17:32:10', '5');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('72', '72', '72', '1973-12-25 21:35:54', '6');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('73', '73', '73', '1971-11-14 22:46:52', '1');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('74', '74', '74', '1992-03-05 01:12:01', '2');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('75', '75', '75', '1991-03-28 23:13:46', '3');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('76', '76', '76', '1985-05-22 17:44:38', '4');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('77', '77', '77', '1987-01-03 22:04:40', '5');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('78', '78', '78', '2009-02-28 17:38:26', '6');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('79', '79', '79', '1992-03-28 17:09:44', '1');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('80', '80', '80', '1998-10-11 05:36:49', '2');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('81', '81', '81', '2012-01-29 15:31:49', '3');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('82', '82', '82', '1984-01-11 09:44:31', '4');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('83', '83', '83', '2012-11-13 12:59:04', '5');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('84', '84', '84', '2001-08-07 05:19:06', '6');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('85', '85', '85', '1980-02-17 07:45:16', '1');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('86', '86', '86', '1972-11-30 00:31:02', '2');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('87', '87', '87', '2004-10-29 22:01:20', '3');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('88', '88', '88', '1987-06-28 10:25:50', '4');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('89', '89', '89', '1970-10-14 01:25:12', '5');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('90', '90', '90', '2006-07-10 08:03:55', '6');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('91', '91', '91', '2002-08-11 14:42:04', '1');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('92', '92', '92', '1984-01-19 23:26:44', '2');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('93', '93', '93', '2005-12-08 05:43:40', '3');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('94', '94', '94', '1977-03-18 12:45:47', '4');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('95', '95', '95', '1995-09-28 05:20:41', '5');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('96', '96', '96', '2015-12-03 20:58:46', '6');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('97', '97', '97', '1998-04-07 23:28:57', '1');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('98', '98', '98', '1990-02-27 17:38:55', '2');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('99', '99', '99', '1989-12-04 00:21:57', '3');
INSERT INTO `like_users` (`id`, `user_id`, `whom_id`, `created_at`, `like_type_id`) VALUES ('100', '100', '100', '2016-06-06 13:09:07', '4');

/*
#
# 13. TABLE STRUCTURE FOR: likes
#
*/

DROP TABLE IF EXISTS `likes`;

CREATE TABLE `likes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `like_type_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_id` (`media_id`),
  KEY `like_type_id` (`like_type_id`),
  CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `likes_ibfk_3` FOREIGN KEY (`like_type_id`) REFERENCES `like_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('1', '1', '1', '2002-10-29 16:09:27', '1');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('2', '2', '2', '2010-10-07 03:34:30', '2');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('3', '3', '3', '1990-09-06 10:34:33', '3');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('4', '4', '4', '1979-12-31 08:41:37', '4');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('5', '5', '5', '2008-10-10 15:23:38', '5');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('6', '6', '6', '1998-09-25 03:50:07', '6');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('7', '7', '7', '2015-09-03 05:09:57', '1');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('8', '8', '8', '1974-10-05 22:29:47', '2');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('9', '9', '9', '1989-06-27 09:10:22', '3');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('10', '10', '10', '2009-10-18 23:38:47', '4');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('11', '11', '11', '1975-07-21 02:50:26', '5');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('12', '12', '12', '2014-07-31 16:44:33', '6');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('13', '13', '13', '2015-03-14 02:55:08', '1');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('14', '14', '14', '2003-08-04 14:18:41', '2');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('15', '15', '15', '1981-05-09 10:33:49', '3');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('16', '16', '16', '2001-07-28 06:31:42', '4');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('17', '17', '17', '1994-03-26 00:49:37', '5');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('18', '18', '18', '1981-10-11 05:54:24', '6');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('19', '19', '19', '1972-06-21 17:18:57', '1');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('20', '20', '20', '2008-05-14 16:35:31', '2');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('21', '21', '21', '2005-01-19 16:26:55', '3');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('22', '22', '22', '1970-05-30 23:46:21', '4');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('23', '23', '23', '2010-09-12 21:55:54', '5');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('24', '24', '24', '2010-10-05 20:26:45', '6');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('25', '25', '25', '1992-07-28 08:17:07', '1');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('26', '26', '26', '1975-12-17 13:07:24', '2');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('27', '27', '27', '1999-06-12 04:04:48', '3');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('28', '28', '28', '2003-07-07 10:26:57', '4');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('29', '29', '29', '1998-06-18 22:24:02', '5');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('30', '30', '30', '1974-06-12 12:50:10', '6');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('31', '31', '31', '2018-03-28 05:32:10', '1');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('32', '32', '32', '2005-05-13 09:03:57', '2');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('33', '33', '33', '2007-05-25 08:11:24', '3');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('34', '34', '34', '2007-02-02 20:20:00', '4');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('35', '35', '35', '1976-01-07 20:27:32', '5');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('36', '36', '36', '1996-05-04 11:56:53', '6');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('37', '37', '37', '2017-11-16 23:32:06', '1');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('38', '38', '38', '2004-11-01 20:14:25', '2');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('39', '39', '39', '1993-02-27 06:25:11', '3');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('40', '40', '40', '1994-04-23 09:38:33', '4');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('41', '41', '41', '1983-03-19 00:57:46', '5');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('42', '42', '42', '1999-07-08 17:30:09', '6');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('43', '43', '43', '1996-07-30 07:39:35', '1');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('44', '44', '44', '1989-01-04 23:20:34', '2');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('45', '45', '45', '2014-07-02 00:38:47', '3');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('46', '46', '46', '1998-03-11 07:50:33', '4');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('47', '47', '47', '1983-03-29 06:17:28', '5');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('48', '48', '48', '2009-11-14 09:27:14', '6');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('49', '49', '49', '1987-05-02 21:58:38', '1');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('50', '50', '50', '1977-08-26 00:47:17', '2');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('51', '51', '51', '1972-12-16 06:22:20', '3');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('52', '52', '52', '2013-09-10 18:30:49', '4');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('53', '53', '53', '2009-12-21 22:25:48', '5');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('54', '54', '54', '2002-04-06 04:01:07', '6');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('55', '55', '55', '1970-09-13 03:32:44', '1');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('56', '56', '56', '1993-08-21 01:59:17', '2');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('57', '57', '57', '1979-03-05 19:04:10', '3');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('58', '58', '58', '1989-06-13 12:10:53', '4');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('59', '59', '59', '1998-08-05 06:14:16', '5');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('60', '60', '60', '1990-04-28 21:08:48', '6');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('61', '61', '61', '1980-10-19 07:06:50', '1');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('62', '62', '62', '2004-06-17 00:58:25', '2');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('63', '63', '63', '2005-02-05 07:19:14', '3');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('64', '64', '64', '1972-01-11 18:44:55', '4');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('65', '65', '65', '1984-12-05 13:04:23', '5');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('66', '66', '66', '2018-12-30 13:47:31', '6');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('67', '67', '67', '2001-02-26 04:00:07', '1');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('68', '68', '68', '1973-12-16 02:54:29', '2');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('69', '69', '69', '2004-08-17 10:33:54', '3');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('70', '70', '70', '1979-09-05 19:01:17', '4');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('71', '71', '71', '1988-05-11 11:54:34', '5');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('72', '72', '72', '2015-09-18 04:15:50', '6');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('73', '73', '73', '2002-01-15 18:23:40', '1');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('74', '74', '74', '1999-10-10 04:31:54', '2');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('75', '75', '75', '1982-10-01 03:08:37', '3');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('76', '76', '76', '2005-04-04 03:38:09', '4');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('77', '77', '77', '1997-08-29 09:48:56', '5');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('78', '78', '78', '2012-09-13 19:19:36', '6');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('79', '79', '79', '1980-03-29 05:29:49', '1');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('80', '80', '80', '1997-11-19 01:51:29', '2');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('81', '81', '81', '1995-03-20 18:32:54', '3');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('82', '82', '82', '2001-07-31 17:35:27', '4');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('83', '83', '83', '2016-12-05 05:40:42', '5');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('84', '84', '84', '1988-04-28 01:32:37', '6');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('85', '85', '85', '1971-09-07 18:24:15', '1');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('86', '86', '86', '1993-11-23 22:22:48', '2');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('87', '87', '87', '2013-08-01 12:04:19', '3');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('88', '88', '88', '1971-01-31 22:50:42', '4');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('89', '89', '89', '1973-08-30 02:06:18', '5');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('90', '90', '90', '2012-02-23 05:00:15', '6');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('91', '91', '91', '1993-06-21 03:22:53', '1');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('92', '92', '92', '1984-07-18 13:14:08', '2');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('93', '93', '93', '2018-01-23 10:33:18', '3');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('94', '94', '94', '2000-12-05 17:43:35', '4');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('95', '95', '95', '1993-03-27 10:16:02', '5');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('96', '96', '96', '2006-11-16 07:38:41', '6');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('97', '97', '97', '1998-03-05 08:28:40', '1');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('98', '98', '98', '1972-03-02 03:22:21', '2');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('99', '99', '99', '2013-09-16 01:13:59', '3');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`, `like_type_id`) VALUES ('100', '100', '100', '2001-05-16 07:43:18', '4');








