-- Generation time: Sun, 15 Dec 2019 08:07:13 +0000
-- Host: mysql.hostinger.ro
-- DB name: u574849695_23
/*!40030 SET NAMES UTF8 */;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `baskets`;
CREATE TABLE `baskets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` bigint(20) unsigned NOT NULL,
  `item_quant_` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `baskets_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `baskets` VALUES ('1','1','4'),
('2','2','1'),
('3','3','8'),
('4','4','6'),
('5','5','2'),
('6','6','3'),
('7','7','5'),
('8','8','7'),
('9','9','0'),
('10','10','9'); 


DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `categories` VALUES ('1','neque','Occaecati occaecati id sapiente recusandae. Dolorem commodi nesciunt et consequatur repellat sed. Voluptas quae doloribus veritatis ullam porro excepturi. Qui hic quisquam voluptas consequatur facilis deleniti.'),
('2','nisi','Omnis natus soluta cumque ducimus debitis. Fuga alias debitis consequatur. Dolorem cumque pariatur doloribus magnam numquam fugiat. Distinctio consequuntur unde totam. Ut esse eos doloremque aut et.'),
('3','voluptatum','Suscipit doloribus quia porro aut enim. Culpa saepe dolores qui voluptatem est quidem. Eveniet rerum accusantium quibusdam. Dolorem aut reprehenderit eveniet aut voluptas officiis quam quae.'),
('4','delectus','Porro temporibus error quia ut odit sunt cumque. Vero numquam ut nihil eligendi non odit dolorum. Modi iure et neque ex assumenda. Consequatur asperiores quia et dolor sunt in cupiditate.'),
('5','dignissimos','Quis perspiciatis rerum voluptatem assumenda ipsum temporibus. Autem odit nihil quaerat voluptatem cupiditate. Laboriosam totam sit eos cumque eaque et.'); 


DROP TABLE IF EXISTS `discounts`;
CREATE TABLE `discounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pricelist_id` bigint(20) unsigned NOT NULL,
  `disc_type` enum('item','subcat','cat','user','all') COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `finish_date` datetime DEFAULT NULL,
  `object_id` bigint(20) unsigned DEFAULT NULL,
  `disc_value` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `discount_obj_idx` (`object_id`),
  KEY `discount_pricelist_idx` (`pricelist_id`),
  CONSTRAINT `discounts_ibfk_1` FOREIGN KEY (`pricelist_id`) REFERENCES `pricelists` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `discounts` VALUES ('1','1','cat','1997-03-01 21:17:17','1974-08-13 12:49:46','1','0'),
('2','2','subcat','2018-09-11 17:37:23','2001-08-10 14:57:58','2','0'),
('3','3','all','2007-06-30 20:35:57','2006-07-29 08:27:38','3','0'),
('4','1','subcat','2015-10-29 08:05:38','2011-01-27 15:55:52','4','0'),
('5','2','subcat','2001-04-28 18:14:22','1998-03-24 08:24:04','5','0'),
('6','3','user','2016-05-06 15:12:16','1995-01-12 12:42:06','6','0'),
('7','1','subcat','1974-10-02 02:18:59','1980-10-21 10:03:46','7','0'),
('8','2','subcat','2015-12-08 15:28:10','1978-11-02 02:16:38','8','0'),
('9','3','cat','1978-09-22 14:05:14','1970-04-10 19:49:11','9','0'),
('10','1','subcat','1977-10-26 03:13:16','1985-08-10 09:02:02','10','0'); 


DROP TABLE IF EXISTS `galery`;
CREATE TABLE `galery` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pic_type` enum('profile','reference') COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `galery` VALUES ('1','profile','/7f0e709fbe90ffb38ba8638c38fa1c6c.jpg'),
('2','profile','/c679e23bc70bb646596bbdf9708af92f.jpg'),
('3','reference','/5010df0eb7902babb3b89ddaa56327e3.jpg'),
('4','reference','/ac9fa019512fc83074c6bdccb102aa29.jpg'),
('5','reference','/1c3b4597d87adeca35b3e5e00bcdb3f8.jpg'),
('6','profile','/943c13ece7b7999be3e2b6da26289264.jpg'),
('7','profile','/00723704190e50dcca9578c59ae337a6.jpg'),
('8','profile','/3eb9a43d6c4fd23c794e91272d0f95a6.jpg'),
('9','reference','/e3f7d5eb7d48a8ee337a5789325b5116.jpg'),
('10','profile','/f2b4a4ff31aa9aff9f704f4a54faa4a1.jpg'),
('11','reference','/f5d50e12f34046f55f2242ca075a2c5f.jpg'),
('12','profile','/3a16ded720c3d80f29c0b1900c46e38b.jpg'),
('13','profile','/21fc70b30d59f4c92ac12df0c0097f62.jpg'),
('14','profile','/98cde185b3884bbabbd861490ffb9bd5.jpg'),
('15','reference','/7649d1882c642306d8fcd3d2ce2b2161.jpg'),
('16','profile','/47ffbb539b8a843484c23c4fa906ddbf.jpg'),
('17','profile','/8450777fc4941075508c22c6bb6e58c1.jpg'),
('18','reference','/51af9f0e35e365f8e3fca8ce6fe0a5e8.jpg'),
('19','reference','/363f57d92415283716e34338a3161e65.jpg'),
('20','reference','/5a9e4fb4d6e5805a635c4774868f063c.jpg'),
('21','reference','/e8410b9b26bd89f73000ba2819e7c070.jpg'),
('22','reference','/5fb897d8df38802e691d96f639034a0d.jpg'),
('23','reference','/d4673a149b30455885a5d82fbf433ea2.jpg'),
('24','reference','/b653986aa41a323a1735dbd38347da7e.jpg'),
('25','reference','/04f0985cd0d074ddc581af50e5d27d34.jpg'),
('26','profile','/2a4f1a4f9ca1b1febab9ecd7d9999f38.jpg'),
('27','reference','/92e5e746f66d3e84ddc58a5db904de1b.jpg'),
('28','profile','/0aaba1378713b02c22bd9836fe338f6b.jpg'),
('29','profile','/9ecdd2be156e2c56cd0ab1760b6aad4a.jpg'),
('30','profile','/aac8f629302377b7bec33a88c63090c3.jpg'),
('31','profile','/880a9238350340728ccea81d929f8f2d.jpg'),
('32','profile','/d008d4d7ae35e256215cbe43cb23c896.jpg'),
('33','reference','/d7383071271fa5a716e4e8d467012081.jpg'),
('34','profile','/d5f6d0314320aec49a0d7a4be976cd3a.jpg'),
('35','reference','/a2bea875c480eec5ee4361ba7f0447b6.jpg'),
('36','reference','/a6484b9dd79019012f8653ea84bbf80f.jpg'),
('37','profile','/85fbd3f80ff1531ae7a9d637d8f1a4a6.jpg'),
('38','reference','/84ae5c5f37396e17c4b52c75db70e4a2.jpg'),
('39','profile','/ebfe23ec72d5f855dc4398a5a20d6744.jpg'),
('40','profile','/ad3e9b6404247d934c328a7d24b0f032.jpg'),
('41','profile','/3ee5c1557e74b0641235590c1f128957.jpg'),
('42','profile','/ff63f6c7cca56f831ae0e840efae3718.jpg'),
('43','reference','/9078216c7facee6045c52afc02f8b98c.jpg'),
('44','profile','/3a12e11c032268e359c7a2ba37b6c3e6.jpg'),
('45','profile','/338ebc3586f8edc67ab03e09d826868c.jpg'),
('46','profile','/6cff00802ce34808d63cb58e1414b415.jpg'),
('47','reference','/7dcdf64422298de267683a1f32c6bae0.jpg'),
('48','reference','/326706407aadb01213fed00bb22b5ef9.jpg'),
('49','reference','/b1b8280550bb6a3f040b2d84f316f6ec.jpg'),
('50','reference','/6b07658e89951be92d0c98a6b3040a85.jpg'),
('51','reference','/d0430b4046f22f2be1ae5f6501be3e45.jpg'),
('52','reference','/bae505ee6b17c5bbaf274effdf6755f2.jpg'),
('53','reference','/5bf450066d2ec099ae2aaa8b7c901395.jpg'),
('54','profile','/6e39128256eef2caa58e6ab7049333a6.jpg'),
('55','reference','/37767a9c833179a6f21e26c6f82d83d1.jpg'),
('56','profile','/4cbb6fa5d4b9cbdea918829f6b581d3b.jpg'),
('57','reference','/b50f79e2b27a0e754a6291af58ea1016.jpg'),
('58','reference','/bfca0f15a7b76f5814636f370212fdb2.jpg'),
('59','profile','/1e89927bc4ed822bc091b4e9c534e54d.jpg'),
('60','reference','/fffdcba16c8e02f9638de2908c198b0f.jpg'),
('61','reference','/13ec28da45d9fc3963149eef1e7e7b44.jpg'),
('62','reference','/b0e1aade0aca5d6b559301c2dcfa7d02.jpg'),
('63','profile','/cd797755d433804360587b9009edb836.jpg'),
('64','reference','/a56f2b730c9cba72f92917a200230a20.jpg'),
('65','reference','/45143e10510a8d48bafe0ce9ec23aa1e.jpg'),
('66','reference','/bd6e88ae5a013f2b4c3d3ace221d1edf.jpg'),
('67','reference','/be5297e859f71e8eb7663d5c981ebe3a.jpg'),
('68','profile','/33bfd568fa510d9a264e459fb49ba193.jpg'),
('69','reference','/f155483351bd73fd375ec0fc83efab82.jpg'),
('70','profile','/4d3f541803e7e66dafabe63276ab23ae.jpg'),
('71','profile','/c6ceba50de796646e0afa80b33dfc095.jpg'),
('72','profile','/cd8839c86b6bd612451794fa8c0ef89e.jpg'),
('73','reference','/411dcd8d496eecf8f1d4ebd4b43f5c7d.jpg'),
('74','reference','/64cb864828feae940d1e2ec198111012.jpg'),
('75','reference','/191c4f2a481dbcf0782097211649b6c0.jpg'),
('76','reference','/f4984042254bc81cdcbdd98ae3482b2a.jpg'),
('77','profile','/482513e08f8c5a578c2d97d83f36ec04.jpg'),
('78','profile','/20904ec345014f69db419de117d0ce0c.jpg'),
('79','profile','/d1d44c035013e22001d61264f707920f.jpg'),
('80','profile','/c304b7b5c708d62d650fbebf23649258.jpg'),
('81','reference','/0b4989daa3899d34ebccd9ec38b89a67.jpg'),
('82','profile','/061bcf04591a0873da1df2251527ebe5.jpg'),
('83','reference','/bc6d737c3cb310d08cc9a1f97bbfcd71.jpg'),
('84','reference','/99e79411d3e22fd040d6241839a7889f.jpg'),
('85','profile','/a8b431ad43529f019e6deda1b0537a48.jpg'),
('86','profile','/133f852f4a62d59ee86e09acd59ac79e.jpg'),
('87','profile','/7a320500446e3b3c9650a8add6ba5bd4.jpg'),
('88','profile','/7551d8a41bc56e130f08132405805405.jpg'),
('89','profile','/fa454820de47fdd2bee8b7b7cac2f2ba.jpg'),
('90','profile','/c1dc29193684d6aa1a1750978f599e86.jpg'),
('91','reference','/e1074336f745b35eaee91bbc32e90941.jpg'),
('92','reference','/9a78039920d7abeb2f86b3fe04de3aa4.jpg'),
('93','profile','/dbca9872ee2ca3825bbd8d55a1aadba1.jpg'),
('94','profile','/0b33678b3b985a280eaf90bd79357429.jpg'),
('95','reference','/d4adf5fac9a72d369286e05e93c52df5.jpg'),
('96','profile','/f1ac19fd3876128dc922f41189079936.jpg'),
('97','profile','/1a6f38cd8ef0d24f615cc7557f64fddf.jpg'),
('98','reference','/f7b56ba15a4db7d164df1770557f11bb.jpg'),
('99','reference','/fe09fae0b003d951a8457784ad5634ed.jpg'),
('100','profile','/d282ad108642c592285662a75428c9c8.jpg'); 


DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subcat_id` bigint(20) unsigned NOT NULL,
  `item_size` tinyint(3) unsigned DEFAULT NULL,
  `pic_id` bigint(20) unsigned NOT NULL,
  `created` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `item_subcat_idx` (`subcat_id`),
  KEY `item_name_idx` (`name`),
  KEY `item_pic_idx` (`pic_id`),
  CONSTRAINT `items_ibfk_1` FOREIGN KEY (`subcat_id`) REFERENCES `subcategories` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `items_ibfk_2` FOREIGN KEY (`pic_id`) REFERENCES `galery` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `items` VALUES ('1','eos','Magni voluptas beatae temporibus et et molestiae. Ipsa quia labore voluptates sed officia. Et molestiae magni fuga nostrum. Omnis inventore quis nisi est.','1','0','1','2004-12-13 15:44:49'),
('2','accusamus','Aliquid harum quasi rerum. Eum rem id error eum sit. Et rem architecto vitae explicabo architecto porro sunt. Ipsam aut et alias qui ut hic tempora aspernatur.','2','255','2','2003-05-18 15:27:23'),
('3','sequi','Aut qui quis consequatur nihil qui ut eos. Amet a sapiente ducimus velit. Mollitia eius possimus sunt in ut.','3','255','3','2016-04-30 09:06:36'),
('4','ex','Voluptatem voluptas voluptatum et totam numquam. Ipsum alias deleniti ad at beatae inventore. Ut sunt labore beatae harum. Ipsam dolore voluptatum qui voluptate omnis quam ut itaque.','4','255','4','2017-12-09 05:48:08'),
('5','magni','Et voluptates eligendi qui non. Quis non accusamus sed laborum ducimus voluptatem.','5','255','5','1989-06-03 13:45:17'),
('6','nihil','Repudiandae culpa a quisquam et eligendi et. Rem voluptate sit accusantium quam blanditiis officia corporis. Nobis voluptatum enim aut aut qui. Earum numquam sed molestiae qui sit consectetur harum. Magni aperiam iure architecto.','6','255','6','1973-06-07 00:30:00'),
('7','repellendus','Maiores incidunt eligendi esse laboriosam. Qui suscipit qui ex debitis perspiciatis ratione. Distinctio eos commodi aut.','7','255','7','1990-08-08 15:08:10'),
('8','voluptates','Voluptates ipsam eos velit ratione fuga. Qui dolorem ab eaque eos. Voluptas enim ipsum sed qui molestiae. Nesciunt cumque non delectus sunt vel consequatur tempora.','8','0','8','2011-01-08 15:16:46'),
('9','ea','Vitae quia dolor dolorem cupiditate voluptatem corporis reprehenderit. Eos doloribus autem nihil iste optio facere aperiam. Ea nemo sit et quia accusamus dolorum.','9','255','9','1988-07-10 09:25:26'),
('10','quis','Quia quos quae ut. Et amet doloribus similique. Non optio ipsum qui ipsa.','10','8','10','1974-06-02 21:30:29'),
('11','laboriosam','Est vel minus sit nam. Blanditiis nobis asperiores tenetur dolorem eligendi adipisci. Voluptate minus enim molestiae cum.','11','255','11','1983-10-17 08:37:43'),
('12','possimus','Eveniet dolore beatae atque ducimus quibusdam. Et itaque quis laudantium neque. Error ut quas quia perferendis ducimus.','12','255','12','2007-05-21 03:35:55'),
('13','doloribus','Sed quia in nesciunt soluta. Beatae fugiat alias non a molestias. Eos iure rerum consequatur harum laborum officia ipsa illum. Quia qui commodi ea animi voluptatem.','13','255','13','2008-06-13 10:36:58'),
('14','omnis','Aut sed ex odio debitis ut. Deleniti ullam sed consectetur et. Enim fuga est ipsa et ut omnis ducimus nostrum.','14','255','14','1974-03-16 01:31:03'),
('15','rerum','Voluptas atque aut est veritatis quidem qui molestias. Nihil consequatur rerum eos quia. Laudantium nemo provident recusandae enim debitis.','15','9','15','2012-10-23 04:12:01'),
('16','provident','Repudiandae unde et nobis rerum. Eligendi blanditiis sed autem quia mollitia quam porro saepe. Quae et velit et ut in doloremque saepe.','16','73','16','1977-01-26 12:15:21'),
('17','illo','Suscipit ab impedit ut nihil et facere minus. In voluptatum recusandae dolores quia numquam. Et quia et velit cumque perspiciatis.','17','255','17','2015-01-12 01:56:25'),
('18','voluptatem','Expedita quasi nihil iste ipsum minus facilis. Dolorem delectus assumenda temporibus ea. Odio non sit repellendus qui voluptate explicabo. Harum accusantium ratione modi quas est. Ab odio enim sint recusandae occaecati hic.','18','255','18','1983-12-17 11:41:57'),
('19','magni','In est nobis itaque soluta impedit. Vel quis non sunt magni impedit id. Quam quidem ipsum rerum et.','19','255','19','1987-03-26 03:32:19'),
('20','libero','Iste ab ut blanditiis eveniet quae. Impedit sunt reiciendis ea repellat laborum. Libero ut eos dolore autem fugit sunt soluta. Nemo sunt inventore nihil sed fuga.','20','255','20','2016-06-20 18:16:47'),
('21','labore','In autem consequatur odio ducimus. Praesentium iusto suscipit et consequuntur aliquid deleniti. Minima et maiores impedit sequi quaerat tenetur. Ut rerum facilis ipsa sint.','21','0','21','2008-07-29 14:41:09'),
('22','atque','Et odit eos asperiores vel nostrum. Atque est id aliquid ut asperiores error. Est amet eos aperiam accusamus fugiat ut ut.','22','0','22','2007-11-15 01:20:53'),
('23','nobis','Possimus voluptate aliquid ratione. Sequi sed sunt numquam et omnis earum. Ullam odit et enim non libero similique.','23','255','23','1979-05-18 10:41:20'),
('24','quidem','Sed ipsam corporis odit magni itaque quae atque. Accusantium provident in eaque provident. Non hic et optio voluptas ut.','24','255','24','2018-03-25 19:59:44'),
('25','doloremque','Odio iusto cum reprehenderit blanditiis atque eum. Quae quia voluptatem autem ea deleniti eum corporis quo. Recusandae ratione doloribus et saepe earum libero. Amet nulla delectus ex aut nihil.','25','255','25','2012-02-09 09:28:40'),
('26','sed','Autem voluptates quidem sunt cum dolor ducimus. Rerum aut qui eum voluptas cum dolores. Non ea perferendis itaque quod delectus.','1','255','26','1985-03-25 01:46:59'),
('27','debitis','Occaecati et veritatis explicabo ex animi. Rerum harum sunt qui sit ratione cumque non. Et inventore cupiditate accusamus ab. Repellat repellat vel at officiis sit.','2','255','27','2004-02-22 19:59:16'),
('28','quia','Enim quos rerum aspernatur quaerat. Aperiam quasi et laboriosam molestiae molestiae blanditiis voluptates. Ab qui dolore aut dolorem expedita eligendi aut. Omnis quasi vel natus est nihil.','3','255','28','1977-12-20 09:42:55'),
('29','molestiae','Magni ut est libero. Facilis a modi illum adipisci sit molestiae id nam.','4','255','29','1983-06-08 23:20:27'),
('30','possimus','Temporibus non consequatur cumque consequuntur esse natus. Eligendi asperiores provident ea neque molestias. Expedita dolore placeat eveniet commodi dolor dignissimos quisquam aut.','5','255','30','1999-04-03 08:50:43'),
('31','aut','Accusantium accusamus natus quod itaque iste ea qui. Corporis corrupti repellat in. Quod vel reprehenderit aut non aut neque cumque magnam.','6','0','31','2003-04-26 07:34:46'),
('32','voluptatem','Rerum voluptas ullam quisquam in consectetur quae beatae. Dolores voluptatem reiciendis et est maiores. At optio alias ad in corrupti eos ut. Non error repellat ab quia eaque sint.','7','255','32','1977-05-21 07:42:43'),
('33','ut','Commodi ex ut accusantium nihil ipsa reiciendis sit. Accusamus et perferendis qui autem inventore. Dolorum non dolor atque dolores quia. Accusantium illum doloremque provident rem.','8','255','33','1980-05-07 05:03:04'),
('34','et','Non harum deserunt consequatur dolor dolores est molestiae. Est nihil rerum praesentium.','9','255','34','2003-02-24 12:14:35'),
('35','qui','Aspernatur reprehenderit laborum exercitationem et. Adipisci aut dicta omnis omnis ratione aliquid. Velit qui voluptas ad culpa sint culpa. Labore officiis ipsum sequi id.','10','255','35','1986-09-28 01:17:54'),
('36','voluptas','Quasi accusantium sunt soluta totam itaque sequi quia. Veritatis assumenda dolores nemo et perferendis. Et occaecati minus laboriosam vitae soluta dolorem nulla assumenda.','11','2','36','1970-05-15 10:12:59'),
('37','et','Magni tenetur quisquam ut repellat est. Earum aut quaerat quis cumque magnam. Voluptate repellendus dolorum rerum nobis placeat sit aperiam. Quibusdam odio ullam saepe voluptatum libero fuga ut. Corporis adipisci quo laudantium rerum quod fugiat nihil ape','12','255','37','2008-04-27 12:37:26'),
('38','eos','Optio quo sapiente rerum enim. Explicabo recusandae libero unde et harum. Suscipit ratione et dignissimos velit. Fuga accusantium dicta odio cupiditate eveniet ut debitis. Dolores possimus inventore sit molestiae et dolorem.','13','255','38','1997-11-13 06:04:03'),
('39','atque','Cupiditate et sed deserunt. Neque voluptatem dolor laboriosam voluptas possimus. Et possimus in adipisci necessitatibus. Architecto sed officiis perspiciatis.','14','255','39','2009-04-26 20:30:01'),
('40','neque','Ut qui perspiciatis eligendi eos debitis. Ab unde et deserunt voluptatum minima. Nemo accusamus aliquam laudantium amet sunt voluptatum. Numquam totam eos iusto dolorem sint molestiae. Unde est consequatur rem voluptas ut.','15','255','40','1999-10-24 07:56:24'),
('41','sunt','Aut culpa ad ut commodi rerum optio. Saepe ipsum aut vitae numquam et reprehenderit quam suscipit. Ea est beatae sint quam nostrum ratione dolorem saepe. Ut velit maxime qui.','16','0','41','2018-09-05 01:07:02'),
('42','omnis','Quia eum explicabo vel nesciunt nam et. Consequuntur nihil molestiae harum sunt praesentium. Quam numquam iure quasi ut voluptatem corrupti.','17','1','42','1998-02-18 13:53:14'),
('43','fuga','Consequatur voluptas doloremque debitis nulla quod provident. Id expedita eligendi aut. Molestiae excepturi corporis quia qui corrupti quo consequatur quasi. Aliquam soluta et quam accusamus fuga est dolor.','18','255','43','2017-06-25 05:59:58'),
('44','repellat','Sed alias alias cum voluptatem libero dolores saepe. Cum rem et harum explicabo recusandae. Est eligendi et aliquid quis animi. Rem itaque quos quidem vel.','19','92','44','1991-07-20 13:48:21'),
('45','quae','Exercitationem blanditiis quo ratione qui a voluptatem fuga a. Fuga ullam veniam officia aut nobis. Voluptate tempore aut delectus velit necessitatibus.','20','255','45','1973-10-11 11:52:18'),
('46','et','Alias molestias temporibus aut non fugiat eum. Mollitia dolor et et quam. Ad sint alias unde sit eligendi quam voluptas.','21','255','46','2015-06-13 06:31:15'),
('47','earum','Officiis sint maiores in neque unde nulla culpa. Autem dolor nobis quam voluptas eos cumque omnis. Cupiditate repudiandae dolorem et aut consequatur. Odio similique iste laudantium et placeat.','22','255','47','2017-01-26 15:56:08'),
('48','iste','Maxime quo voluptates consectetur similique expedita. Deleniti libero ipsa fugit eos possimus omnis. Aut voluptatibus tempora aut corporis. Amet in corrupti est. Facilis soluta possimus quasi.','23','5','48','2019-06-05 03:26:16'),
('49','praesentium','Aut quos magni voluptate. Architecto quaerat omnis earum ut rerum beatae. Consequatur ipsam aliquid aut quos.','24','5','49','2007-03-27 02:46:42'),
('50','assumenda','Dolorum quas ut aut porro dicta. Nesciunt et ipsa maxime autem officiis. Facere aut dignissimos quia.','25','255','50','2000-09-02 19:34:02'),
('51','magni','Dolorum dolor sed sunt alias nihil qui. Voluptas cumque illo eius. Perspiciatis quisquam ut nemo cumque. Maiores vel nulla blanditiis molestiae et.','1','255','51','2010-01-15 21:19:23'),
('52','aliquid','Deserunt sed reprehenderit et veniam ut voluptas omnis. Minus ea beatae dignissimos excepturi fuga. Autem aut quia fugiat libero sint. Dignissimos perspiciatis et ullam minima.','2','255','52','1970-02-03 02:35:51'),
('53','minus','Omnis laudantium a vel. Eius a aspernatur placeat fugit ut est ducimus libero. Omnis quas aliquam repudiandae dolorem dolor quo necessitatibus. Numquam est blanditiis voluptatem accusamus.','3','255','53','2015-03-03 00:24:50'),
('54','velit','Et blanditiis sit odit sunt. Aperiam facere sed odio sint. Et in rerum ipsum nihil. Voluptas dolorem sint eum dignissimos.','4','8','54','2017-07-20 04:03:24'),
('55','cum','Ullam mollitia sint architecto expedita ipsam dolorem. Nobis omnis quidem animi illo. Aut debitis nam pariatur. Veniam quos nihil sunt omnis voluptatem consectetur dolorem.','5','255','55','2001-03-13 17:29:28'),
('56','quas','Quia officiis excepturi et sed est soluta alias. Earum et fuga consequuntur quisquam culpa. Omnis aut quia pariatur distinctio et vel minus.','6','255','56','2013-06-18 04:34:56'),
('57','voluptas','Asperiores sunt aspernatur autem rerum quia nihil totam. Similique repellendus sit et quos. Quod aperiam optio ut voluptatum dicta provident.','7','255','57','2011-09-26 04:40:24'),
('58','libero','Iure quidem accusamus sunt sunt non et possimus sit. Porro voluptatem blanditiis dignissimos. Quo quibusdam minus magni corrupti molestiae quasi.','8','255','58','1984-10-07 07:05:06'),
('59','ipsa','Harum vitae nihil laudantium asperiores ratione qui corporis. Repudiandae amet labore distinctio rerum labore aut minima. At doloribus neque tempora modi corrupti fugit nemo.','9','255','59','1990-08-22 23:14:37'),
('60','corrupti','Accusantium ea sit reprehenderit qui itaque voluptatum cupiditate. Animi dolore aut eveniet velit praesentium sit ad. Dolor aperiam nisi aut. Velit ratione officiis molestiae deleniti ut eligendi nulla consequatur. Nostrum quia repudiandae est aliquam fug','10','255','60','1994-04-11 22:28:02'),
('61','consequatur','Rerum corrupti ipsa qui hic. Dignissimos vel architecto ut rem temporibus ad dolores. Illum fuga sit distinctio ut id. Voluptate ea alias voluptates voluptatem.','11','255','61','1970-09-15 14:53:47'),
('62','necessitatibus','Eum omnis exercitationem explicabo tempora ut possimus ab ratione. Non qui ducimus omnis perferendis tempore sint. Rem beatae ea incidunt. Aspernatur quibusdam distinctio maiores. Possimus eligendi est vero itaque mollitia molestias.','12','255','62','1991-03-24 20:44:05'),
('63','autem','Rem tempore ipsum alias nihil. Dolore est rem deserunt corrupti qui. Et laboriosam excepturi qui et.','13','7','63','2014-07-11 12:18:27'),
('64','est','Accusantium nobis accusamus tempora commodi officiis earum nemo dolor. Doloremque deserunt ipsa accusantium voluptatem. Et quas est perspiciatis dolorem minima.','14','255','64','1971-12-11 00:35:24'),
('65','voluptatem','Fugiat porro atque ut et accusamus modi. Adipisci distinctio quia totam ducimus numquam aut. Quo sit ut blanditiis et cumque sunt. Quis ea quam dolor neque. Velit cum amet ab consectetur minima esse animi.','15','255','65','1992-08-03 04:29:10'),
('66','aut','Quod minus autem dolores culpa ex expedita. Culpa laudantium dolores ducimus quae aut aut aperiam. Consequatur libero minus et reiciendis iusto et. Ipsa exercitationem modi consequatur doloribus error in.','16','0','66','1987-09-28 20:43:33'),
('67','aut','Iste repellendus suscipit nostrum sed. Autem velit molestiae fugit labore aliquid voluptatibus. Et voluptatem est non similique rerum.','17','255','67','1984-06-22 20:02:33'),
('68','ea','Quis laboriosam nihil fugiat vel. Amet explicabo et ut sed. Quo totam recusandae harum.','18','0','68','2009-05-21 15:50:37'),
('69','quia','Qui voluptatibus iure animi possimus consequatur distinctio delectus. Nemo voluptatem labore porro. Laborum labore distinctio beatae natus ipsum occaecati eius dolor. Tempora quod quam et doloribus dolorum.','19','7','69','1977-11-17 18:49:04'),
('70','quis','In assumenda saepe a praesentium sit et. Pariatur dolorem sunt eos ut dolorem nostrum voluptas nisi. Possimus mollitia enim ut fugit. Consequatur dolores porro incidunt vel est. Quia quae qui enim aut voluptatem.','20','43','70','1998-07-08 23:04:58'),
('71','sit','Voluptas provident doloremque laboriosam delectus doloremque quo porro. Dolores eum sint modi et sapiente eveniet ipsam. Et neque provident et explicabo sunt impedit. Rem corporis non totam fugit provident error est.','21','255','71','1983-08-24 08:51:25'),
('72','sed','Qui officia id quia dignissimos. Officia libero voluptas nostrum rem non consequatur. Est voluptates quia beatae similique est aut officiis.','22','0','72','1970-05-31 01:54:54'),
('73','omnis','Consectetur fugit fuga voluptatem voluptatum laboriosam et. Velit voluptatem quae nihil omnis laboriosam odit dolor.','23','255','73','1985-04-14 14:00:28'),
('74','non','Quam perspiciatis quis et impedit. Doloribus at rerum et sapiente beatae laudantium.','24','255','74','1982-02-14 03:35:03'),
('75','non','Aut placeat occaecati aut aut ab. Deleniti veritatis modi inventore quia cupiditate. In aspernatur qui nobis cupiditate saepe eum voluptatem perspiciatis.','25','255','75','1991-12-08 10:02:50'),
('76','ut','Autem est sed temporibus consectetur. Vel voluptatem pariatur molestiae. Natus eius distinctio non.','1','255','76','1989-10-24 15:43:18'),
('77','sequi','Vero voluptate sunt voluptates excepturi eos. Et qui id repellendus repudiandae et dignissimos. Aut earum est sed expedita. Aut et similique eum laudantium sed.','2','255','77','1973-06-05 03:07:11'),
('78','est','Quas neque id et rerum atque ut sint qui. Error dignissimos velit repudiandae itaque minus.','3','255','78','2012-12-20 01:39:42'),
('79','ex','Libero aspernatur rerum eaque aspernatur illum necessitatibus. Aperiam aut eum officiis nihil necessitatibus architecto officiis. Dicta est recusandae soluta quibusdam consequatur nesciunt eaque. Et omnis eligendi aperiam aut.','4','255','79','2013-06-13 20:18:29'),
('80','assumenda','Et cupiditate est ut aspernatur minus. Nihil quia et aut consequatur voluptatem sit. Non optio iure qui est libero.','5','7','80','2006-07-25 17:22:15'),
('81','voluptate','Omnis doloremque aut et. Qui voluptate autem cumque et error eius ratione. Nisi non voluptas ut soluta. Et molestiae occaecati distinctio vel.','6','3','81','1997-02-23 23:38:00'),
('82','quis','Quia perspiciatis eaque quisquam deleniti minima et. Alias aut nisi necessitatibus ratione. Similique ad nulla earum voluptatum cupiditate vel.','7','255','82','1989-09-13 16:18:23'),
('83','non','Soluta dolorem voluptatibus repudiandae et atque dolorem a necessitatibus. Et consequuntur ut saepe quo enim corrupti minus.','8','0','83','1983-08-26 10:51:17'),
('84','expedita','Quo necessitatibus deserunt laboriosam quas iste quia ut. Nihil sunt est error consequuntur et accusamus sint. Necessitatibus ad rem consequatur aperiam.','9','255','84','1996-08-25 21:35:10'),
('85','aut','Esse animi ut molestiae. Et ad occaecati vel expedita laudantium ullam accusantium debitis. Temporibus sequi autem quia.','10','255','85','1993-02-08 07:48:03'),
('86','reiciendis','Quisquam illum nisi perspiciatis. Explicabo est mollitia unde et perspiciatis recusandae. Dolorem tenetur ducimus in repellendus. Exercitationem ex error laborum similique.','11','255','86','1988-09-16 11:01:44'),
('87','odit','Itaque ut autem dolor laudantium. In vitae eum veniam fuga non tenetur tempora. Non quod recusandae eos eveniet quis.','12','255','87','1992-10-01 11:32:17'),
('88','minima','Corporis ullam officia aperiam ab fugit qui labore. Ea magni neque sit quia voluptatem dolore. Amet ducimus explicabo quisquam voluptas enim quaerat doloribus. Non velit unde veritatis omnis ipsam voluptatibus est. Dignissimos et quis atque voluptas.','13','94','88','2015-09-19 20:25:10'),
('89','quidem','Possimus vel earum modi quaerat sapiente molestiae aut velit. Asperiores voluptatem quia distinctio reprehenderit ut consequatur dolorem. Rerum nobis corporis fuga vitae corporis fuga voluptate ratione. Provident officia porro nulla aut.','14','0','89','2001-06-15 21:01:38'),
('90','reiciendis','Dolores ut voluptatem excepturi iure. Occaecati error exercitationem aut fugiat rerum sit. Quibusdam sint maxime fugit dolorem necessitatibus.','15','255','90','1972-07-01 18:42:13'),
('91','quidem','Qui eum delectus officia cupiditate aut dolorem possimus. Tempora id magni blanditiis beatae ullam. Eos corrupti error consequatur ex possimus. Eius natus architecto iusto natus distinctio consequuntur iusto.','16','0','91','1979-05-04 03:25:17'),
('92','modi','Qui enim officia deserunt quisquam voluptatum nobis. Pariatur consectetur ex et est. Voluptas magni incidunt ex sed officia dolorem.','17','255','92','2010-03-07 00:07:42'),
('93','et','Officiis velit velit nulla enim cupiditate reprehenderit corrupti. Et necessitatibus expedita ut enim et explicabo voluptatibus. Eligendi est consequatur vel.','18','86','93','2017-05-18 01:16:52'),
('94','rem','Ratione modi id fugit ut error optio molestiae. Earum doloribus qui eveniet id laborum et nihil veniam. Eum et praesentium fugiat ipsam amet odit.','19','255','94','1977-03-13 22:13:00'),
('95','et','Architecto modi et perferendis omnis. Eaque veritatis est in asperiores repellendus. Exercitationem ut distinctio doloremque.','20','0','95','1999-10-12 08:48:12'),
('96','modi','Et maiores qui ad dolor et aut veritatis. Vitae facilis doloremque veritatis dolores dolores quis. Aut architecto minus nulla quia veniam. Quas voluptas et illo qui est.','21','255','96','1975-09-05 08:09:57'),
('97','doloribus','Laudantium velit et officiis. Dolore voluptas quisquam enim pariatur optio. Laboriosam qui aut corporis eligendi voluptatem autem qui.','22','255','97','2016-07-26 10:57:14'),
('98','ducimus','Vel molestias sed reprehenderit in et. Non neque quis enim quam. Veniam alias asperiores itaque ut voluptatem quod vel illo.','23','255','98','1990-11-07 10:33:20'),
('99','illo','Error repellendus esse quidem veniam repudiandae vitae. Nesciunt est quo culpa nostrum iure nemo. Aspernatur quod porro enim rerum harum. Illo aspernatur minus et sed at. Et ea et ullam quam quo.','24','255','99','2005-12-04 19:31:20'),
('100','quam','Cupiditate qui est voluptatem molestiae quis molestias sed. Optio aut amet accusamus exercitationem. Qui sed sit est facere. Necessitatibus labore asperiores consequuntur modi.','25','5','100','1972-07-26 21:06:31'); 


DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL,
  `status_id` bigint(20) unsigned NOT NULL,
  `begin_date` datetime NOT NULL DEFAULT current_timestamp(),
  `end_date` datetime NOT NULL,
  `item_id` bigint(20) unsigned NOT NULL,
  `item_quant` int(10) unsigned NOT NULL,
  `item_cost` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`,`begin_date`),
  KEY `status_id` (`status_id`),
  KEY `orders_item_idx` (`item_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `orders` VALUES ('0','5','1971-07-20 22:39:07','2007-06-20 22:59:07','5','6','191'),
('0','8','1980-06-12 20:29:51','1974-02-12 02:27:35','8','1','32192555'),
('0','6','1983-02-22 05:20:53','2008-10-18 04:39:12','6','6','61421'),
('0','1','1999-08-02 23:44:11','1980-01-18 01:41:39','9','0','78602000'),
('0','4','1999-12-31 15:21:41','1990-08-13 10:28:00','4','7','25236308'),
('0','1','2001-01-29 15:05:23','1976-10-28 08:18:58','1','6','3'),
('0','2','2007-12-25 15:37:25','1996-05-16 16:01:38','10','1','326680'),
('0','3','2010-01-28 16:02:18','2015-12-26 08:05:40','3','5','0'),
('0','2','2013-11-23 17:22:30','2009-01-10 16:37:22','2','9','6154616'),
('0','7','2015-10-11 09:40:33','1986-05-05 12:48:26','7','4','32'); 


DROP TABLE IF EXISTS `pricelists`;
CREATE TABLE `pricelists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` binary(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `pricelists` VALUES ('1','numquam','\0'),
('2','deserunt','1'),
('3','necessitatibus','\0'); 


DROP TABLE IF EXISTS `prises`;
CREATE TABLE `prises` (
  `pricelist_id` bigint(20) unsigned NOT NULL,
  `item_id` bigint(20) unsigned NOT NULL,
  `price` int(10) unsigned NOT NULL,
  `start_date` datetime NOT NULL DEFAULT current_timestamp(),
  `finish_date` datetime NOT NULL,
  PRIMARY KEY (`pricelist_id`,`item_id`),
  KEY `prices_item_idx` (`item_id`),
  CONSTRAINT `prises_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  CONSTRAINT `prises_ibfk_2` FOREIGN KEY (`pricelist_id`) REFERENCES `pricelists` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `prises` VALUES ('1','1','3242','2008-11-18 10:20:24','2015-12-18 12:48:30'),
('1','4','5991','2006-02-24 15:03:57','1985-04-07 04:13:40'),
('1','7','766337868','2019-07-22 08:40:48','2009-02-25 10:14:56'),
('1','10','37608186','2008-05-25 11:01:14','1974-05-21 12:56:09'),
('1','13','9','1986-02-24 21:16:38','1983-10-16 17:55:28'),
('1','16','82','2012-07-27 02:28:45','1991-04-04 13:00:18'),
('1','19','0','2000-07-09 18:27:54','2016-05-02 13:11:42'),
('1','22','30018','2001-09-11 21:37:46','2018-08-10 10:27:42'),
('1','25','345069','2006-01-12 16:01:58','1998-07-01 14:54:16'),
('1','28','457572','1980-10-24 11:29:08','1986-09-12 08:12:35'),
('1','31','1759393','1994-03-25 16:25:19','1972-01-23 07:39:53'),
('1','34','0','1980-05-11 12:21:36','2012-04-17 15:46:25'),
('1','37','7','1995-09-23 18:37:01','1978-08-25 11:16:01'),
('1','40','384425920','1992-08-24 19:38:08','1993-11-13 01:24:58'),
('1','43','694','2019-12-07 02:55:46','2010-12-20 03:02:44'),
('1','46','117320645','2002-02-26 15:24:55','2012-02-09 21:04:14'),
('1','49','872','2008-08-22 15:23:52','1988-11-10 23:12:29'),
('1','52','34166178','1996-12-05 17:33:43','1976-11-12 17:16:21'),
('1','55','315','2012-08-29 00:06:14','1999-04-30 17:33:20'),
('1','58','5284438','2005-03-13 05:34:39','1983-08-28 09:34:31'),
('1','61','7243269','2016-01-18 01:01:31','1993-04-30 01:19:41'),
('1','64','1','2008-11-12 18:42:18','1992-09-28 22:47:48'),
('1','67','110801','1998-12-11 11:32:31','1985-11-24 21:57:32'),
('1','70','29','2017-02-19 04:55:03','2013-02-17 07:07:08'),
('1','73','1','2018-12-07 09:25:25','2018-10-18 09:17:16'),
('1','76','1476548','1991-05-14 12:59:38','2010-08-03 10:13:33'),
('1','79','32807','1998-10-30 15:19:29','1996-08-26 02:24:36'),
('1','82','52','1994-08-18 11:55:34','2013-12-06 00:06:49'),
('1','85','2705205','1980-06-13 00:25:32','1976-12-10 01:13:39'),
('1','88','36','1989-07-11 19:53:18','1978-04-14 23:34:41'),
('1','91','458','2017-10-01 11:22:42','1985-11-21 03:00:45'),
('1','94','571','2013-04-05 17:54:06','2010-11-13 20:28:46'),
('1','97','0','2001-01-26 16:14:00','2006-05-07 09:24:18'),
('1','100','523880','1982-04-03 18:03:01','1972-07-28 00:39:03'),
('2','2','154','1998-01-09 10:57:13','2008-03-22 05:16:43'),
('2','5','2082','1973-02-13 00:50:04','1995-01-28 23:17:32'),
('2','8','18577','2003-06-28 10:43:18','1977-04-09 23:56:10'),
('2','11','0','2006-01-07 21:39:55','1982-12-15 00:17:29'),
('2','14','2885322','1994-08-16 22:03:15','1985-04-10 22:13:26'),
('2','17','2577','1994-12-10 12:10:48','1970-06-28 10:29:30'),
('2','20','6566','2003-10-18 09:34:42','1988-06-14 14:01:01'),
('2','23','437315','2012-08-14 17:41:24','2016-05-17 04:15:13'),
('2','26','2','2016-09-13 22:54:02','1981-10-29 18:47:48'),
('2','29','1','2000-01-11 07:21:44','1977-11-23 18:39:01'),
('2','32','1','2007-07-03 09:39:31','1983-04-16 16:33:52'),
('2','35','2','2011-04-24 13:56:39','1978-11-04 06:37:24'),
('2','38','0','2002-10-26 19:21:34','2016-01-23 06:44:35'),
('2','41','680328','2007-10-03 15:34:36','1975-02-04 02:03:52'),
('2','44','297375','1974-11-07 12:49:33','1984-11-27 23:57:13'),
('2','47','16117','1997-08-26 12:38:38','1991-12-29 18:17:49'),
('2','50','585709695','1998-04-29 09:58:44','1971-06-27 08:19:41'),
('2','53','619','1990-06-10 13:37:45','2014-08-11 07:06:18'),
('2','56','1','2006-12-07 09:47:58','2006-06-04 15:12:18'),
('2','59','87294515','1974-01-08 18:43:51','1991-11-22 07:05:07'),
('2','62','52','1972-01-25 09:47:38','1977-08-05 16:49:10'),
('2','65','8446','1972-11-22 09:44:25','1981-07-17 22:14:54'),
('2','68','12490458','1998-09-18 09:03:27','1989-01-26 12:55:04'),
('2','71','543502','1975-12-20 02:13:27','1981-02-15 14:09:51'),
('2','74','249638','2004-07-31 08:09:19','1992-01-09 15:26:32'),
('2','77','534','1974-10-14 23:11:19','1995-10-14 03:15:43'),
('2','80','341','2015-11-09 06:26:03','1975-08-02 09:57:16'),
('2','83','4','2000-03-23 22:18:37','1990-10-26 00:11:28'),
('2','86','0','1979-05-24 00:43:06','1979-01-29 01:52:08'),
('2','89','11352065','2008-09-14 03:22:11','1989-04-20 11:51:08'),
('2','92','4806403','1998-01-30 03:25:33','1984-11-10 23:05:46'),
('2','95','14551','1988-11-20 11:21:34','2004-09-17 04:06:37'),
('2','98','4','1995-07-22 03:35:02','1977-10-10 01:07:14'),
('3','3','590477','2001-04-23 14:21:07','1998-02-16 09:35:26'),
('3','6','392','2013-01-22 23:13:32','1972-10-27 09:41:19'),
('3','9','20','2001-08-11 03:54:31','1971-02-19 12:47:30'),
('3','12','0','1980-07-11 00:25:03','1997-01-14 00:18:52'),
('3','15','18','1981-04-28 17:16:41','1972-11-04 03:46:54'),
('3','18','6903','1985-01-06 17:34:42','1998-01-30 19:06:09'),
('3','21','333308','1992-11-24 09:50:27','1980-06-04 12:55:22'),
('3','24','500','2011-12-18 22:34:45','1997-12-28 15:55:45'),
('3','27','805560','1973-03-12 14:44:53','2000-08-06 12:50:42'),
('3','30','60','2016-12-02 22:27:23','1995-07-18 06:30:35'),
('3','33','60019','1988-01-29 16:22:44','1985-10-28 01:45:42'),
('3','36','34','2008-02-03 01:11:29','1998-07-11 04:51:54'),
('3','39','4516','2008-03-29 19:24:42','1984-11-17 03:32:14'),
('3','42','5911','2015-11-13 03:38:58','2012-10-25 11:44:53'),
('3','45','478673','2007-08-20 05:22:51','2016-05-05 01:26:13'),
('3','48','67129','1982-07-11 16:13:47','1993-02-27 14:54:08'),
('3','51','70160','1980-09-29 12:01:56','2002-04-09 16:32:34'),
('3','54','168488060','1973-06-04 12:22:05','1998-09-13 02:28:13'),
('3','57','223474','1987-11-10 15:15:59','1981-12-30 03:25:12'),
('3','60','18604792','1983-10-05 06:32:25','1991-10-22 15:50:44'),
('3','63','75119','2006-03-28 15:47:14','2015-12-25 20:36:25'),
('3','66','6','1985-02-23 17:43:48','1995-07-24 01:00:06'),
('3','69','1','1974-07-13 22:39:02','2010-07-31 01:44:26'),
('3','72','4921','1971-02-15 11:53:56','1980-02-04 19:11:06'),
('3','75','310','1980-11-17 11:18:46','2013-07-22 22:45:59'),
('3','78','55701','1998-08-07 23:39:01','1982-10-02 11:11:56'),
('3','81','4','1989-03-08 02:06:33','2003-04-01 20:35:46'),
('3','84','1997789','1983-07-30 16:52:55','1976-07-03 09:04:48'),
('3','87','1','2013-06-13 00:53:18','1983-02-13 09:17:13'),
('3','90','0','2000-02-24 14:38:53','2011-02-27 23:26:24'),
('3','93','2','2006-01-27 03:51:58','1973-09-06 03:54:17'),
('3','96','83362490','1992-03-14 11:44:58','1979-06-10 05:12:09'),
('3','99','0','2018-06-15 20:36:25','1980-02-07 14:24:36'); 


DROP TABLE IF EXISTS `statuses`;
CREATE TABLE `statuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `statuses` VALUES ('1','Facilis distinctio p'),
('2','In repudiandae moles'),
('3','Provident commodi do'),
('4','Alias ut facere quas'),
('5','Aut sed explicabo si'),
('6','Reiciendis labore et'),
('7','Incidunt sit et exer'),
('8','Suscipit dolore porr'); 


DROP TABLE IF EXISTS `subcategories`;
CREATE TABLE `subcategories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subcat_cat_idx` (`cat_id`),
  CONSTRAINT `subcategories_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `subcategories` VALUES ('1','autem','Sunt quam rerum rem. Ut dolorum laboriosam tempore nihil minima voluptatem. Minima consequatur et veritatis rerum deserunt tempore.','1'),
('2','tempore','Et sunt labore reiciendis quo fugit nam. Consectetur voluptas maxime quas est est. Quod est temporibus iure voluptas velit impedit. Dolores aut consequatur molestias dolorem tempora maiores dolorum.','2'),
('3','dolorem','Provident voluptatibus ad enim sapiente. Facilis rerum in possimus officiis voluptatibus nostrum. Temporibus vel quod et quam laboriosam quaerat.','3'),
('4','nulla','Vitae id quia deleniti saepe sed blanditiis. Qui ipsam iusto vel illum voluptatibus ullam quam. Voluptatem voluptatibus veritatis unde modi quibusdam nemo. Ducimus debitis in ducimus accusantium omnis ab.','4'),
('5','qui','At atque nostrum quae quis dolor illo blanditiis accusamus. Eos tempore quas molestiae quia id ipsam. Debitis iure beatae eligendi laboriosam corporis et vel.','5'),
('6','eveniet','Voluptas architecto aspernatur voluptas reprehenderit non odit aut voluptate. Ut voluptatem exercitationem laborum odit consequatur. Iusto et ut possimus facilis enim aperiam. Excepturi excepturi impedit voluptatem aut asperiores debitis.','1'),
('7','est','Sunt consequatur ipsam qui fugiat. Quia sed assumenda aut. Autem similique impedit rem voluptates sequi beatae. Qui est laboriosam et.','2'),
('8','aut','Qui pariatur sed cumque aut quasi non itaque. Minima quam eligendi ratione soluta cum incidunt dolorum. Optio fuga sunt sint.','3'),
('9','quia','Voluptatum rerum et incidunt placeat quo et accusamus et. Voluptatem unde quis facere non qui. Tenetur vero reprehenderit aut magnam. Fuga dolore facere non autem accusamus voluptatem vel et.','4'),
('10','voluptate','Necessitatibus sint vel numquam fugiat et distinctio eligendi officiis. Suscipit quidem perferendis voluptate ut.','5'),
('11','corporis','Voluptatem odit eaque id inventore. Neque neque aperiam voluptates iure. Ducimus aspernatur aut distinctio et facere. Quas laborum non quia dolorem quia.','1'),
('12','aut','Sed non expedita sit est. Aut est mollitia dolorem excepturi architecto. Voluptas itaque laboriosam deleniti perferendis occaecati.','2'),
('13','et','Tempora dolor unde maxime aut rem ad. Maiores ut non ut molestias. Id perspiciatis libero ab amet eius id. Exercitationem est dicta ad cum nihil velit eveniet. Enim at est non dolore quo.','3'),
('14','sit','Veritatis officia quasi fuga quisquam. Beatae ea incidunt voluptatibus nihil sit. Repellat est nemo eos adipisci facilis fugiat.','4'),
('15','vero','Molestias amet qui omnis eum. Et esse debitis consequatur aspernatur. Adipisci amet dicta dolores autem qui eum. Sit doloremque quos porro esse sunt ut sint. Voluptate voluptatum error atque vero esse.','5'),
('16','hic','Voluptates ut recusandae suscipit optio nihil. Omnis nesciunt repellat animi nulla exercitationem voluptas. Ut autem ipsum et voluptatum a enim qui. Doloremque voluptas qui incidunt ea ut nihil.','1'),
('17','voluptatem','Magni dolor et quia praesentium consequatur veniam maiores. Id temporibus eveniet mollitia est consequatur. A officia aut dolor. Debitis autem nam facere sint.','2'),
('18','dolor','Nam dignissimos blanditiis perspiciatis. Sed aut vel dolor eum. Odit nulla qui consequatur.','3'),
('19','vel','Et deleniti necessitatibus dolorem ullam deleniti commodi. Quod ullam officiis reiciendis et non velit quasi fuga. Quos rerum recusandae quia nisi fuga. Nemo aliquam nisi doloremque rem corporis voluptatem. Blanditiis corrupti dolorum eum sunt.','4'),
('20','eos','Et rerum vel perferendis magnam accusantium error. Suscipit eos error ut sed aut et est. Ea ducimus assumenda pariatur nam repellat a repellat ut.','5'),
('21','sed','Aut in omnis veniam quod quisquam exercitationem. Ipsum nisi enim quasi magnam consequatur. Voluptatibus laboriosam quia aspernatur.','1'),
('22','id','Eveniet est modi ut. Deleniti facilis enim tempora eos amet iure perferendis est. Et dolor voluptas est voluptatem.','2'),
('23','suscipit','Beatae sed quasi in qui alias. Ab quia ea incidunt repellat praesentium officiis. Error nihil nihil cum eum iste dolorum quam quia.','3'),
('24','vero','Similique similique est illum magni atque. Odit maxime quia quod voluptatum qui occaecati architecto velit. Velit sed eum ut quo ea. Exercitationem repellat numquam voluptatem debitis ut voluptatem.','4'),
('25','temporibus','Voluptates et nulla dolorem non blanditiis. Amet provident aut odit nihil doloribus amet saepe temporibus. Soluta totam in assumenda rem ipsum. Consequuntur quibusdam necessitatibus molestias aspernatur magni ipsum autem.','5'); 


DROP TABLE IF EXISTS `user_refs`;
CREATE TABLE `user_refs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `item_id` bigint(20) unsigned DEFAULT NULL,
  `pic_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ref_user_idx` (`user_id`),
  KEY `ref_item_idx` (`item_id`),
  KEY `ref_pic_idx` (`pic_id`),
  CONSTRAINT `user_refs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `user_refs_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  CONSTRAINT `user_refs_ibfk_3` FOREIGN KEY (`pic_id`) REFERENCES `galery` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `user_refs` VALUES ('1','101','1','1'),
('2','102','2','2'),
('3','103','3','3'),
('4','104','4','4'),
('5','105','5','5'),
('6','106','6','6'),
('7','107','7','7'),
('8','110','8','8'),
('9','119','9','9'),
('10','128','10','10'); 


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `phone` bigint(20) NOT NULL,
  `basket_id` bigint(20) unsigned DEFAULT NULL,
  `sex` enum('m','f') COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `age` smallint(5) unsigned DEFAULT NULL,
  `hometown` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('registred','active','online','deleted') COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `basket_id` (`basket_id`),
  KEY `users_phone_idx` (`phone`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`),
  KEY `users_email_idx` (`email`),
  CONSTRAINT `users_basket` FOREIGN KEY (`basket_id`) REFERENCES `baskets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` VALUES ('101','Maude','Gibson','mhilll@example.org','438232','1','m','2019-09-08','74','South Charityview','481 Schumm Heights Apt. 520\nWest Kobe, SD 19170','registred','2012-10-29 22:50:10'),
('102','Krista','Streich','rrau@example.net','326','2','f','2006-08-01','0','West Clareville','45299 Carter Glens\nWinstonstad, NH 22736-0623','online','2001-11-02 09:58:22'),
('103','Ernesto','Kling','konopelski.georgianna@example.org','568520','3','m','2005-04-23','65535','Streichshire','98427 Tianna Orchard\nLake Rahsaan, AK 67892-3767','online','2002-02-20 03:28:31'),
('104','Natasha','Treutel','vance46@example.com','0','4','m','1979-11-25','2597','Lake Daisha','805 Wolf Plaza\nLake Frederiqueton, TX 09962-5241','deleted','2002-02-09 08:14:17'),
('105','Anne','Runolfsson','nelda.cronin@example.net','1','5','m','2000-05-29','8','Adrainmouth','210 Alessia Place\nWest Lacyborough, DE 96154','online','2019-01-31 14:33:54'),
('106','Mable','Schmidt','vkemmer@example.org','91','6','m','1988-07-26','6','Conroyland','304 Hortense Dam\nSouth Clarefurt, NC 69713-5496','online','1986-01-14 06:45:13'),
('107','Frank','Stracke','kihn.pattie@example.net','444646657','7','m','2017-08-29','65535','Columbusville','4578 Jammie Cove\nRohanmouth, NH 39002','registred','2005-07-02 22:33:52'),
('110','Rocky','Daugherty','tbosco@example.com','250','10','m','2006-08-28','2','Swiftstad','36034 Heaven Spring Suite 295\nWolffborough, AK 53630-7950','deleted','2002-06-06 02:59:12'),
('119','Maximus','Borer','ethan.effertz@example.com','9364901990','9','f','2012-03-21','0','New Nona','523 Joanne Wall Apt. 834\nSchneiderhaven, FL 88500-4733','online','2012-02-11 02:42:04'),
('128','Bonita','Macejkovic','kozey.maybelle@example.net','126543','8','m','1977-12-14','65535','McCulloughton','20457 Jakubowski Row Apt. 886\nStephanshire, ME 06567-3717','active','1994-02-06 06:40:40'); 


DROP TABLE IF EXISTS `warehouse`;
CREATE TABLE `warehouse` (
  `id` bigint(20) unsigned NOT NULL,
  `free_quant` int(11) DEFAULT 0,
  `reserved_quant` int(11) DEFAULT 0,
  `in_prod_quant` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  CONSTRAINT `warehouse_ibfk_1` FOREIGN KEY (`id`) REFERENCES `items` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;





/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

