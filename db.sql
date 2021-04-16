-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ES_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `EN_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Nutricion','Nutrition','nutrition','2021-03-09 06:09:32','2021-03-12 00:59:26'),(2,'Noticias','News','news','2021-03-09 06:09:32','2021-03-12 00:59:46'),(3,'Utilidades','Tools','tools','2021-03-09 06:09:32','2021-03-12 00:59:59'),(4,'Revista de salud','Health Magazine','health-magazine','2021-03-09 06:09:32','2021-03-12 01:00:14');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_posts`
--

DROP TABLE IF EXISTS `category_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_posts_post_id_foreign` (`post_id`),
  KEY `category_posts_category_id_foreign` (`category_id`),
  CONSTRAINT `category_posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `category_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_posts`
--

LOCK TABLES `category_posts` WRITE;
/*!40000 ALTER TABLE `category_posts` DISABLE KEYS */;
INSERT INTO `category_posts` VALUES (1,5,2,'2021-03-09 06:09:32','2021-03-09 06:09:32'),(2,5,3,'2021-03-09 06:09:32','2021-03-09 06:09:32'),(3,5,3,'2021-03-09 06:09:32','2021-03-09 06:09:32'),(4,3,2,'2021-03-09 06:09:32','2021-03-09 06:09:32'),(5,7,3,'2021-03-09 06:09:32','2021-03-09 06:09:32'),(6,1,4,'2021-03-09 06:09:32','2021-03-09 06:09:32'),(8,5,4,'2021-03-09 06:09:32','2021-03-09 06:09:32'),(9,10,4,'2021-03-09 06:09:32','2021-03-09 06:09:32'),(11,8,3,'2021-03-09 06:09:32','2021-03-09 06:09:32'),(12,4,3,'2021-03-09 06:09:32','2021-03-09 06:09:32'),(13,1,4,'2021-03-09 06:09:32','2021-03-09 06:09:32'),(14,8,3,'2021-03-09 06:09:32','2021-03-09 06:09:32'),(15,6,1,'2021-03-09 06:09:32','2021-03-09 06:09:32'),(16,3,1,'2021-03-09 06:09:32','2021-03-09 06:09:32'),(18,9,3,'2021-03-09 06:09:32','2021-03-09 06:09:32'),(19,5,1,'2021-03-09 06:09:32','2021-03-09 06:09:32');
/*!40000 ALTER TABLE `category_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),(4,'2015_03_07_311070_create_tracker_paths_table',1),(5,'2015_03_07_311071_create_tracker_queries_table',1),(6,'2015_03_07_311072_create_tracker_queries_arguments_table',1),(7,'2015_03_07_311073_create_tracker_routes_table',1),(8,'2015_03_07_311074_create_tracker_routes_paths_table',1),(9,'2015_03_07_311075_create_tracker_route_path_parameters_table',1),(10,'2015_03_07_311076_create_tracker_agents_table',1),(11,'2015_03_07_311077_create_tracker_cookies_table',1),(12,'2015_03_07_311078_create_tracker_devices_table',1),(13,'2015_03_07_311079_create_tracker_domains_table',1),(14,'2015_03_07_311080_create_tracker_referers_table',1),(15,'2015_03_07_311081_create_tracker_geoip_table',1),(16,'2015_03_07_311082_create_tracker_sessions_table',1),(17,'2015_03_07_311083_create_tracker_errors_table',1),(18,'2015_03_07_311084_create_tracker_system_classes_table',1),(19,'2015_03_07_311085_create_tracker_log_table',1),(20,'2015_03_07_311086_create_tracker_events_table',1),(21,'2015_03_07_311087_create_tracker_events_log_table',1),(22,'2015_03_07_311088_create_tracker_sql_queries_table',1),(23,'2015_03_07_311089_create_tracker_sql_query_bindings_table',1),(24,'2015_03_07_311090_create_tracker_sql_query_bindings_parameters_table',1),(25,'2015_03_07_311091_create_tracker_sql_queries_log_table',1),(26,'2015_03_07_311092_create_tracker_connections_table',1),(27,'2015_03_07_311093_create_tracker_tables_relations',1),(28,'2015_03_13_311094_create_tracker_referer_search_term_table',1),(29,'2015_03_13_311095_add_tracker_referer_columns',1),(30,'2015_11_23_311096_add_tracker_referer_column_to_log',1),(31,'2015_11_23_311097_create_tracker_languages_table',1),(32,'2015_11_23_311098_add_language_id_column_to_sessions',1),(33,'2015_11_23_311099_add_tracker_language_foreign_key_to_sessions',1),(34,'2015_11_23_311100_add_nullable_to_tracker_error',1),(35,'2017_01_31_311101_fix_agent_name',1),(36,'2017_06_20_311102_add_agent_name_hash',1),(37,'2017_12_13_150000_fix_query_arguments',1),(38,'2019_08_19_000000_create_failed_jobs_table',1),(39,'2019_12_14_000001_create_personal_access_tokens_table',1),(40,'2021_02_10_020658_create_sessions_table',1),(41,'2021_02_10_020854_create_user_types_table',1),(42,'2021_02_10_020923_create_posts_table',1),(43,'2021_02_14_180050_create_surveys_table',1),(44,'2021_02_26_001053_create_responses_table',1),(45,'2021_03_07_144403_create_categories_table',1),(46,'2021_03_07_144858_create_category_posts_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `usr_type_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ES` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_ES` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_foreign` (`user_id`),
  KEY `posts_usr_type_id_foreign` (`usr_type_id`),
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `posts_usr_type_id_foreign` FOREIGN KEY (`usr_type_id`) REFERENCES `user_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,6,1,'3 Pineapple Health Benefits, According to a Nutritionist','Tres beneficios de la pina segun la nutricion','3-pineapple-health-benefits-according-to-a-nutritionist-1','https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F12%2F2021%2F03%2F11%2FPineapple-Health-Benefits-GettyImages-1248815268-2000.jpg','<p>Pineapple is one of my absolute favorite fruits, and I know I\'m not the only one who loves the tropical treat. There\'s no question it\'s refreshing and delicious. But pineapple also packs some pretty powerful health benefits. Here are three healthy excuses to add more pineapple to your diet, along with a few of my favorite ways to enjoy it.</p>\n<p><strong style=\"box-sizing: border-box;\">Pineapple is loaded with vitamin C</strong></p>\n<p><span style=\"color: rgba(0, 0, 0, 0.95); font-family: \'Noto Serif\', serif; font-size: 18px; background-color: #ffffff;\">One cup of pineapple provides more than&nbsp;100% of your recommended&nbsp;daily amount&nbsp;of&nbsp;</span><a style=\"box-sizing: border-box; background-color: #ffffff; color: rgba(0, 0, 0, 0.95); text-decoration-line: none; font-family: \'Noto Serif\', serif; font-size: 18px; line-height: 28px; padding: 1px 0px; box-shadow: #1a7f82 0px -2px 0px inset; transition: all 0.1s ease-in-out 0s;\" href=\"https://www.health.com/nutrition/12-foods-with-more-vitamin-c-than-oranges\">vitamin C</a><span style=\"color: rgba(0, 0, 0, 0.95); font-family: \'Noto Serif\', serif; font-size: 18px; background-color: #ffffff;\">. And while you\'re&nbsp;probably well aware that this nutrient&nbsp;helps support immunity,&nbsp;it does so much more. Vitamin C is involved&nbsp;in the growth and repair of tissues throughout the body. Plus&nbsp;it&nbsp;acts as an antioxidant, protecting cells against premature aging and illnesses such as&nbsp;cancer and&nbsp;</span><a style=\"box-sizing: border-box; background-color: #ffffff; color: rgba(0, 0, 0, 0.95); text-decoration-line: none; font-family: \'Noto Serif\', serif; font-size: 18px; line-height: 28px; padding: 1px 0px; box-shadow: #1a7f82 0px -2px 0px inset; transition: all 0.1s ease-in-out 0s;\" href=\"https://www.health.com/heart-disease\">heart disease</a><span style=\"color: rgba(0, 0, 0, 0.95); font-family: \'Noto Serif\', serif; font-size: 18px; background-color: #ffffff;\">. The vitamin&nbsp;may also have an effect on your waistline: One study found that exercisers who weren\'t&nbsp;getting enough&nbsp;</span><a class=\"external-link\" style=\"box-sizing: border-box; background-color: #ffffff; color: rgba(0, 0, 0, 0.95); text-decoration-line: none; font-family: \'Noto Serif\', serif; font-size: 18px; line-height: 28px; padding: 1px 0px; box-shadow: #1a7f82 0px -2px 0px inset; transition: all 0.1s ease-in-out 0s;\" title=\"(opens new window)\" href=\"http://www.ncbi.nlm.nih.gov/pubmed/16945143\" target=\"_blank\" rel=\"noopener\" aria-describedby=\"external-disclaimer\">vitamin C</a><span style=\"color: rgba(0, 0, 0, 0.95); font-family: \'Noto Serif\', serif; font-size: 18px; background-color: #ffffff;\">&nbsp;burned about 25% fewer calories during their workouts. And too little vitamin C in the bloodstream has been linked to higher&nbsp;</span><a class=\"external-link\" style=\"box-sizing: border-box; background-color: #ffffff; color: rgba(0, 0, 0, 0.95); text-decoration-line: none; font-family: \'Noto Serif\', serif; font-size: 18px; line-height: 28px; padding: 1px 0px; box-shadow: #1a7f82 0px -2px 0px inset; transition: all 0.1s ease-in-out 0s;\" title=\"(opens new window)\" href=\"http://jn.nutrition.org/content/137/7/1757.abstract\" target=\"_blank\" rel=\"noopener\" aria-describedby=\"external-disclaimer\">body fat</a><span style=\"color: rgba(0, 0, 0, 0.95); font-family: \'Noto Serif\', serif; font-size: 18px; background-color: #ffffff;\">&nbsp;and waist size.</span></p>\n<h2 style=\"box-sizing: border-box; font-family: \'Libre Franklin\', sans-serif; font-size: 36px; line-height: 44px; margin-top: 32px; margin-bottom: 32px; color: rgba(0, 0, 0, 0.95); background-color: #ffffff;\"><strong style=\"box-sizing: border-box;\">Pineapple supports healthy skin</strong></h2>\n<div class=\"paragraph\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.95); font-family: \'Noto Serif\', serif; background-color: #ffffff;\">\n<p style=\"box-sizing: border-box; font-size: 18px; letter-spacing: 0px; line-height: 28px; margin-top: 0px; margin-bottom: 16px; max-width: 712px; overflow-wrap: break-word;\">Pineapple is rich in manganese. (Just one cup contains more than 75% of the amount recommended for one day). This mineral, along with <a style=\"box-sizing: border-box; background-color: transparent; color: rgba(0, 0, 0, 0.95); text-decoration-line: none; line-height: 28px; letter-spacing: 0px; padding: 1px 0px; box-shadow: #1a7f82 0px -2px 0px inset; transition: all 0.1s ease-in-out 0s;\" href=\"https://www.health.com/nutrition/12-foods-with-more-vitamin-c-than-oranges\" aria-label=\"vitamin C\">vitamin C</a>, is required for building collagen&nbsp;structural component of skin that prevents sagging and wrinkles.</p>\n<p style=\"box-sizing: border-box; font-size: 18px; letter-spacing: 0px; line-height: 28px; margin-top: 0px; margin-bottom: 16px; max-width: 712px; overflow-wrap: break-word;\"><span style=\"letter-spacing: 0px;\">Manganese also functions as an antioxidant that protects skin cells from damage against UV light, making pineapple especially crucial in the summertime.</span></p>\n</div>\n<div class=\"paragraph\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.95); font-family: \'Noto Serif\', serif; background-color: #ffffff;\">\n<h2 style=\"box-sizing: border-box; font-family: \'Libre Franklin\', sans-serif; font-size: 36px; line-height: 44px; margin-top: 32px; margin-bottom: 32px;\"><strong style=\"box-sizing: border-box;\">Pineapple promotes healthy digestion</strong></h2>\n<div class=\"paragraph\" style=\"box-sizing: border-box;\">\n<p style=\"box-sizing: border-box; font-size: 18px; letter-spacing: 0px; line-height: 28px; margin-top: 0px; margin-bottom: 16px; max-width: 712px; overflow-wrap: break-word;\">If you\'ve ever tried to add fresh pineapple to a gelatin dessert you know that it just won\'t work. That\'s because pineapples contain an enzyme called bromelain, which breaks down the gelatin into its amino acid building blocks, preventing it from becoming or staying solid. For the same reason, pineapple is often used in marinades, to help tenderize meat. And the enzyme&nbsp;doesn\'t just affect cooking&mdash;if you eat pineapple along with a meal, bromelain&nbsp;may help you&nbsp;<a class=\"external-link\" style=\"box-sizing: border-box; background-color: transparent; color: rgba(0, 0, 0, 0.95); text-decoration-line: none; line-height: 28px; letter-spacing: 0px; padding: 1px 0px; box-shadow: #1a7f82 0px -2px 0px inset; transition: all 0.1s ease-in-out 0s;\" title=\"(opens new window)\" href=\"https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3529416/\" target=\"_blank\" rel=\"noopener\" aria-describedby=\"external-disclaimer\">digest proteins</a>, potentially reducing bloating, indigestion, and sluggishness. The dietary fiber in pineapple also helps maintain bowel regularity, and prevent constipation.</p>\n</div>\n<h2 style=\"box-sizing: border-box; font-family: \'Libre Franklin\', sans-serif; font-size: 36px; line-height: 44px; margin-top: 32px; margin-bottom: 32px;\"><strong style=\"box-sizing: border-box;\">How to eat more pineapple</strong></h2>\n<div class=\"paragraph\" style=\"box-sizing: border-box;\">\n<p style=\"box-sizing: border-box; font-size: 18px; letter-spacing: 0px; line-height: 28px; margin-top: 0px; margin-bottom: 16px; max-width: 712px; overflow-wrap: break-word;\">While fresh pineapple is amazing as is, you can also try incorporating it into recipes. Here are a few of my favorite ways to add the fruit&nbsp;to smoothies, cookouts, cocktails, and more.</p>\n</div>\n<div class=\"paragraph\" style=\"box-sizing: border-box;\">\n<ul style=\"box-sizing: border-box; font-size: 17px; letter-spacing: 0.5px; line-height: 28px; margin-top: 16px; margin-bottom: 16px;\">\n<li style=\"box-sizing: border-box;\">Whip pineapple into a smoothie with coconut milk, coconut butter, pea protein powder, half of a yellow bell pepper, and a bit of fresh ginger root.</li>\n<li style=\"box-sizing: border-box;\">Add fresh pineapple to slaw. Whisk together a tablespoon of raw&nbsp;<a style=\"box-sizing: border-box; background-color: transparent; color: rgba(0, 0, 0, 0.95); text-decoration-line: none; font-size: 18px; line-height: 28px; letter-spacing: 0px; padding: 1px 0px; box-shadow: #1a7f82 0px -2px 0px inset; transition: all 0.1s ease-in-out 0s;\" href=\"https://www.health.com/nutrition/apple-cider-vinegar-benefits\">apple cider vinegar,</a>&nbsp;a tablespoon of juice from fresh pineapple, a teaspoon of honey, half a teaspoon each of fresh grated ginger and minced garlic, and a dash of black pepper and sea salt. Toss with a half cup each of shredded cabbage and pineapple chunks. Chill and serve as a side dish or topping for fish or black beans.</li>\n<li style=\"box-sizing: border-box;\">Grill up slices of fresh pineapple at your next cookout.</li>\n<li style=\"box-sizing: border-box;\">For a healthier version of a frozen umbrella drink, whip together a cup of fresh pineapple, a handful of ice, and a quarter cup each of unsweetened coconut milk and frozen banana slices, and then stir in an ounce of rum.</li>\n</ul>\n</div>\n</div>','<p>La pi&ntilde;a es una de mis frutas favoritas y s&eacute; que no soy el &uacute;nico al que le encantan las delicias tropicales. No hay duda de que es refrescante y delicioso. Pero la pi&ntilde;a tambi&eacute;n tiene algunos beneficios para la salud bastante poderosos. Aqu&iacute; hay tres excusas saludables para agregar m&aacute;s pi&ntilde;a a su dieta, junto con algunas de mis formas favoritas de disfrutarla.</p>\n<h2 style=\"color: rgba(0, 0, 0, 0.95); box-sizing: border-box; font-family: \'Libre Franklin\', sans-serif; font-size: 36px; line-height: 44px; margin-top: 32px; margin-bottom: 32px;\">La pi&ntilde;a est&aacute; cargada de vitamina C</h2>\n<p>Una taza de pi&ntilde;a proporciona m&aacute;s del 100% de la cantidad diaria recomendada de vitamina C. Y aunque probablemente sepa que este nutriente ayuda a mantener la inmunidad, hace mucho m&aacute;s. La vitamina C participa en el crecimiento y reparaci&oacute;n de tejidos en todo el cuerpo. Adem&aacute;s, act&uacute;a como antioxidante, protegiendo las c&eacute;lulas contra el envejecimiento prematuro y enfermedades como el c&aacute;ncer y las enfermedades card&iacute;acas. La vitamina tambi&eacute;n puede tener un efecto en su cintura: un estudio encontr&oacute; que los deportistas que no obten&iacute;an suficiente vitamina C quemaban aproximadamente un 25% menos de calor&iacute;as durante sus entrenamientos. Y muy poca vitamina C en el torrente sangu&iacute;neo se ha relacionado con un aumento de la grasa corporal y el tama&ntilde;o de la cintura.</p>\n<h2 style=\"color: rgba(0, 0, 0, 0.95); box-sizing: border-box; font-family: \'Libre Franklin\', sans-serif; font-size: 36px; line-height: 44px; margin-top: 32px; margin-bottom: 32px;\">La pi&ntilde;a apoya la piel sana</h2>\n<p>La pi&ntilde;a es rica en manganeso. (Solo una taza contiene m&aacute;s del 75% de la cantidad recomendada para un d&iacute;a). Este mineral, junto con la vitamina C, es necesario para la construcci&oacute;n del componente estructural de col&aacute;geno de la piel que previene la flacidez y las arrugas.</p>\n<p>El manganeso tambi&eacute;n funciona como un antioxidante que protege las c&eacute;lulas de la piel del da&ntilde;o de la luz ultravioleta, lo que hace que la pi&ntilde;a sea especialmente crucial en el verano.</p>\n<h2 style=\"color: rgba(0, 0, 0, 0.95); box-sizing: border-box; font-family: \'Libre Franklin\', sans-serif; font-size: 36px; line-height: 44px; margin-top: 32px; margin-bottom: 32px;\">La pi&ntilde;a promueve una digesti&oacute;n saludable</h2>\n<p>Si alguna vez ha intentado agregar pi&ntilde;a fresca a un postre de gelatina, sabe que simplemente no funcionar&aacute;. Esto se debe a que las pi&ntilde;as contienen una enzima llamada bromelina, que descompone la gelatina en sus componentes b&aacute;sicos de amino&aacute;cidos, evitando que se solidifique o se mantenga s&oacute;lida. Por la misma raz&oacute;n, la pi&ntilde;a se usa a menudo en adobos, para ayudar a ablandar la carne. Y la enzima no solo afecta la cocci&oacute;n: si come pi&ntilde;a junto con una comida, la bromelina puede ayudarlo a digerir las prote&iacute;nas, lo que puede reducir la hinchaz&oacute;n, la indigesti&oacute;n y la lentitud. La fibra diet&eacute;tica de la pi&ntilde;a tambi&eacute;n ayuda a mantener la regularidad intestinal y previene el estre&ntilde;imiento.</p>\n<h2 style=\"color: rgba(0, 0, 0, 0.95); box-sizing: border-box; font-family: \'Libre Franklin\', sans-serif; font-size: 36px; line-height: 44px; margin-top: 32px; margin-bottom: 32px;\">C&oacute;mo comer m&aacute;s pi&ntilde;a</h2>\n<p>Si bien la pi&ntilde;a fresca es incre&iacute;ble tal como est&aacute;, tambi&eacute;n puede intentar incorporarla en las recetas. Estas son algunas de mis formas favoritas de agregar la fruta a batidos, comidas al aire libre, c&oacute;cteles y m&aacute;s.</p>\n<p>Batir la pi&ntilde;a en un batido con leche de coco, mantequilla de coco, prote&iacute;na de guisante en polvo, la mitad de un pimiento amarillo y un poco de ra&iacute;z de jengibre fresco.</p>\n<p>Agregue pi&ntilde;a fresca a la ensalada. Mezcle una cucharada de vinagre de sidra de manzana crudo, una cucharada de jugo de pi&ntilde;a fresca, una cucharadita de miel, media cucharadita de jengibre fresco rallado y ajo picado, y una pizca de pimienta negra y sal marina. Mezcle con media taza de repollo rallado y trozos de pi&ntilde;a. Enfr&iacute;e y sirva como guarnici&oacute;n o aderezo para pescado o frijoles negros.</p>\n<p>Asa rodajas de pi&ntilde;a fresca en tu pr&oacute;xima comida al aire libre.</p>\n<p>Para obtener una versi&oacute;n m&aacute;s saludable de una bebida de paraguas congelada, mezcle una taza de pi&ntilde;a fresca, un pu&ntilde;ado de hielo y un cuarto de taza de leche de coco sin az&uacute;car y rodajas de pl&aacute;tano congelado, y luego agregue una onza de ron.</p>',1,'2021-03-09 06:09:32','2021-03-12 01:09:12'),(2,2,1,'Repudiandae ex laboriosam sed rerum voluptatem nisi.','Officia perspiciatis et dignissimos.','qui-officiis-culpa-et-nihil','https://via.placeholder.com/1280x720.png/0066cc?text=enim','Earum veritatis quia rerum quisquam eveniet qui. Soluta nemo animi vero quia eius odio assumenda deleniti. Asperiores excepturi ab quia eos aperiam. Odio laborum vero neque cum voluptatem. Illum quis modi reiciendis dolor commodi. Dolorem id est praesentium ipsa rerum reprehenderit. Nostrum sed aspernatur et numquam. Est ex blanditiis et rerum facere eum ullam pariatur. Velit a quae molestiae ab. Eum aut nobis sed ipsum ut. Architecto odit nostrum vel et sint voluptatem voluptatem ut. Eveniet est labore facere qui velit. Quidem corrupti repellendus rerum et minima consequuntur. Totam atque tempora itaque laborum. Aut voluptas ut enim eos. Ut quidem beatae numquam aliquid et expedita tempora. Officia reiciendis veniam aut dolorem velit. Eaque corrupti quam provident et ipsa illo est. Et dolores veritatis eveniet velit nihil occaecati eos.','Tempora cupiditate consequuntur rem et mollitia. Est ut eos veniam culpa vel quidem eligendi qui. Aut omnis rerum aut necessitatibus ducimus maxime vel. Rem accusamus excepturi est odit quisquam architecto magnam. Consequatur deleniti ipsam corporis tempora tempora voluptatem. Non aliquid non nemo repudiandae vitae. Sequi quo nihil porro voluptatem sit recusandae enim. Neque non quos reprehenderit dolor rerum ea vel qui. Omnis quis dolores nemo odio libero voluptatum dicta. Saepe sit neque praesentium qui vel provident. Quo architecto occaecati maxime eum. Perspiciatis totam tempore facilis impedit tempora ut sapiente. Aperiam enim ducimus non fugiat perspiciatis. Dolor qui laudantium aut est et aperiam ea. Enim non et porro officia ex ex. Fugit ipsum beatae qui ab alias nihil est. Et veniam explicabo exercitationem voluptatum omnis nisi.',1,'2021-03-09 06:09:32','2021-03-09 06:09:32'),(3,3,3,'Non illo expedita et non amet.','Tempora soluta asperiores qui vero libero excepturi.','et-asperiores-consequatur-nihil-consectetur-autem','https://via.placeholder.com/1280x720.png/000000?text=et','Voluptatem error aut fuga similique incidunt tenetur ad cum. Accusantium est consequatur eum maxime illum quibusdam explicabo. Voluptate excepturi doloribus consequuntur et labore beatae. Architecto omnis veritatis odit. Voluptate blanditiis nobis excepturi totam iure. Sit explicabo qui magni nostrum aperiam autem praesentium vel. Accusantium deleniti est repellendus. Illum corporis excepturi vel molestias doloribus nihil ab. Harum quod quaerat corrupti quis quia. Ea itaque quo odit sunt quisquam id omnis. Mollitia exercitationem voluptatibus voluptatem exercitationem iure aliquam et architecto. Mollitia ut voluptatem et hic facilis natus. Ut modi distinctio architecto. Laboriosam eos est sint laboriosam. Soluta voluptatem et architecto quia blanditiis quo.','Architecto est labore numquam veniam ipsum ipsam. Architecto voluptatibus ut qui eaque assumenda explicabo eum mollitia. Est omnis nobis omnis quaerat et sunt. Placeat ut minus itaque ullam et. Fuga qui iure est perspiciatis et. Illo voluptate eaque dolorem id alias. Amet aut est aut quae nisi itaque omnis dolores. Soluta itaque architecto enim natus qui. Fuga voluptas officiis iure consectetur. Repudiandae quam et quidem iure beatae dolorum. Iste voluptates ab facilis ea. Vel quis rerum consectetur dolor. Vero beatae fuga eum placeat aut perspiciatis labore. Aliquam eos in eos eos in numquam laudantium consectetur. Sunt iste consequatur molestias atque dolores nihil eius facere. Et nisi aut voluptatum autem vel sed. Veniam tempore maiores molestias.',1,'2021-03-09 06:09:32','2021-03-09 06:09:32'),(4,2,1,'Eos nulla iste consectetur delectus.','Ut voluptatem temporibus natus voluptatum et veritatis.','aut-qui-maiores-id-quia-consectetur-similique','https://via.placeholder.com/1280x720.png/006688?text=explicabo','Qui maxime harum alias animi corrupti et non. Quidem vero impedit non nulla. Nihil aliquid provident vitae error vitae id amet aliquid. Est laborum maiores praesentium qui ratione debitis. Nobis accusantium nesciunt et. Aliquid impedit harum rerum debitis debitis consequatur enim est. Nisi nesciunt inventore id. Molestiae labore sequi exercitationem iure odio qui sequi. Qui voluptatum quisquam id aperiam. Voluptatem ipsam explicabo quia ipsam. Odit neque sit ut nihil cupiditate in omnis. Sit optio officiis in qui sunt accusamus possimus cum. Consequatur in nemo et aspernatur dolores magnam qui consequatur. Est quis sunt iste vitae tenetur. Veniam incidunt ut amet asperiores. Itaque architecto unde labore voluptatem tempore sit tenetur. Deleniti aut quas magni alias voluptatem maxime quis. Amet molestiae eius reprehenderit quo vero doloribus. Quidem laborum nemo sed voluptatibus.','Fugit omnis placeat maxime cumque debitis. Rerum at qui ut. Officia animi quas doloribus quaerat aut tempora officia. Dignissimos non ratione nam quibusdam assumenda rerum. Similique doloremque facere nam. Totam facere consequatur aliquid omnis sint. Dolor veniam nobis explicabo quibusdam harum officia laboriosam. Quasi modi dolorem quae facere velit. Qui corrupti beatae minus laboriosam doloremque distinctio ut pariatur. Dolores eos quas blanditiis eligendi. Quas ut voluptate optio aspernatur aut est vel. Quisquam voluptas autem in quia recusandae. Ad dolorem cum quos eum reprehenderit laudantium. Eveniet inventore accusantium dolorem alias quasi error quia. Ratione corporis cumque rerum est sed sit dolorem. Est ea fugit doloribus ipsam quidem eos dolorem. Praesentium corrupti ut est iure sit libero. Voluptate reprehenderit omnis est debitis nemo.',1,'2021-03-09 06:09:32','2021-03-09 06:09:32'),(5,1,2,'Numquam fugiat deserunt molestiae.','Enim consequatur id vitae officiis est ipsum occaecati saepe.','qui-quia-nobis-voluptatem-consequuntur-nesciunt-porro-nesciunt-ipsam','https://via.placeholder.com/1280x720.png/009922?text=illum','Molestiae magnam consequatur iste at. Et atque numquam consequatur. Ex sunt reiciendis iusto omnis eos laboriosam. Ex amet et earum sint rerum. Corporis distinctio dolorem totam magni error iste nulla. Maiores ut reprehenderit aut. Quam doloribus dolorem rerum aperiam placeat culpa laudantium perferendis. Tempore quos rerum qui omnis non possimus. Provident enim et aut eaque. Iste beatae accusantium quia aut nemo aut. Quia voluptates aut itaque libero ea. Voluptate illum eius facilis voluptatem. Reprehenderit neque possimus dicta dolores. Provident explicabo deserunt dolorem assumenda. Sunt quaerat occaecati necessitatibus ea possimus. Nihil dolor totam ut aut numquam perferendis veritatis. Minima veritatis voluptatum voluptate aspernatur enim. Hic veritatis ut atque iste recusandae. Doloremque veritatis aut labore dolores similique sed.','Sapiente occaecati corrupti quia voluptate harum. Consequatur eius ea rerum quibusdam voluptas placeat impedit. Tempore eos omnis vel. Dolor porro dolorem ipsa et praesentium voluptatem at. Et corporis recusandae et ullam maxime dolor at. Incidunt quidem expedita corrupti cumque repellat. Enim facilis dicta ullam. Quisquam corporis voluptatem est deleniti dolorem tempora inventore. Harum maxime rerum sed in eius aperiam voluptate. Eos maxime qui molestiae quis odit. Atque dolorum aliquam doloribus et. Quo doloribus mollitia maiores quaerat ut vel dolore nemo. Rem est molestiae nam qui nisi. Voluptatum et culpa eos aut. Ea velit nihil tempore. Distinctio qui sequi eius et. Voluptatum voluptas a asperiores dolorum officiis ea molestiae. Porro aliquam commodi asperiores consectetur corporis sed dolor.',1,'2021-03-09 06:09:32','2021-03-09 06:09:32'),(6,2,2,'Voluptates asperiores ducimus explicabo reiciendis expedita.','Nam dolor deleniti qui.','sit-nisi-impedit-vero-repudiandae','https://via.placeholder.com/1280x720.png/00ddbb?text=itaque','Iste expedita dolorem suscipit odio repellendus molestias explicabo aut. Vero voluptatum quisquam nisi ad aut omnis voluptas omnis. Sunt rerum eligendi sed voluptas suscipit. Animi praesentium omnis aut unde nobis. Fuga facilis doloremque voluptatem voluptas distinctio quo magni nemo. Perferendis expedita omnis doloremque mollitia. Ea aut mollitia delectus quia ea et sunt. Quas aut iste fuga dolorum. Corrupti facilis nihil aut voluptate eos. Ex unde qui veritatis eum. Sint quia non labore et sit. Sed quibusdam quam enim ea eligendi iure laborum explicabo. Recusandae mollitia aut hic numquam dolorem laudantium nulla enim. Ut placeat dolorem velit in a. Dolorem consequatur enim eum. Ut quaerat numquam velit corporis. Placeat molestias quis eligendi et. Aut velit eaque qui ab occaecati eos numquam. Magni dolores illo voluptatem neque maiores.','Praesentium at cupiditate doloribus et fuga ut. In ut est omnis reiciendis ut nesciunt. Molestiae nihil laboriosam maiores maiores ex vero. Modi ut soluta et ipsam enim sed. Non animi itaque velit voluptas. Ut dolores voluptas sit velit sunt aspernatur voluptas. Rerum excepturi dolores ullam eius doloribus. Sed perferendis porro dolores eaque officia saepe ipsa. Et rerum illo quo harum doloribus perspiciatis. Aut molestiae ipsam voluptates enim. Molestiae deleniti fuga sunt saepe. Qui est id nihil eaque. Minima labore autem voluptate laborum consectetur inventore. Commodi in nihil cupiditate libero ad laudantium ut rem. Quasi ut eveniet consequatur. Qui deleniti sunt veritatis inventore voluptas perspiciatis aspernatur. Qui eligendi illum distinctio eos quod architecto doloremque. Pariatur sequi et voluptatem maxime consequatur voluptate enim velit.',1,'2021-03-09 06:09:32','2021-03-09 06:09:32'),(7,1,3,'Est ea dolore veritatis minus doloremque.','Eum nam debitis non voluptas maiores laudantium quos aut.','sunt-corrupti-quia-enim','https://via.placeholder.com/1280x720.png/0055dd?text=quia','Iure in eligendi velit explicabo. Minus voluptatem et magni in distinctio odit quia. Aut sint et sed. Aperiam totam est blanditiis consequuntur. Voluptatem deleniti similique amet quasi qui et. Impedit ut itaque reprehenderit labore voluptas necessitatibus doloremque. Corrupti tenetur mollitia non ducimus qui quo nulla. Officia sint aut ut magnam quibusdam. Inventore sit fugit aut rerum et rerum. Reprehenderit et in qui repudiandae. Quia a adipisci iusto vero. Voluptas aperiam non adipisci et aliquid omnis. Tempora doloremque ipsam veritatis numquam odit voluptatibus. Natus incidunt quis voluptatum laudantium sed sed et. Voluptatem consequatur aspernatur iusto dolor est. Aut occaecati ipsam ducimus ipsam ut. Soluta amet molestiae cumque. Consequatur iusto aut error blanditiis eum maiores nesciunt.','Porro nostrum perferendis voluptatem facere mollitia. Velit nihil officia quis aliquid. Consequatur itaque et sed quo. Consequatur minima temporibus asperiores consequatur cum. Itaque voluptatem nam eaque maxime ut libero et totam. Ipsam labore aut nihil. Quis dolor illum tempora rerum commodi. Quia eos non iste est et ducimus. Possimus fugiat minima odio cupiditate nemo. Asperiores recusandae culpa exercitationem quaerat delectus. Enim excepturi ea ea deserunt ab maiores aut. Repudiandae omnis minima voluptatem aut et consequatur harum. Maxime nam ab molestiae quasi ullam ut at. Deleniti adipisci provident dolorem. Aliquam deleniti facere et voluptatem. Est eveniet nisi laborum. Sunt perspiciatis necessitatibus aut amet fuga.',1,'2021-03-09 06:09:32','2021-03-09 06:09:32'),(8,2,1,'Modi aspernatur qui voluptatem facilis dolorem.','Enim sed aut sit pariatur qui quod veritatis.','quisquam-velit-omnis-porro-quaerat','https://via.placeholder.com/1280x720.png/00ddff?text=aut','Sed ducimus quaerat cupiditate tenetur et magni quo. Iure sed ullam unde molestiae. Voluptas in voluptatibus est corrupti. Vitae id mollitia ut odit et. Numquam accusantium et id numquam nulla odio deleniti. Voluptas consequatur molestias voluptatibus qui eveniet. Sunt eveniet nemo laborum nulla et officiis. Fugit quam impedit neque aliquid nulla beatae. Repellendus sit qui magnam repellendus. Qui rerum explicabo ab quam fugiat est. Cupiditate dolorem ullam et. Aspernatur quibusdam autem nobis qui ipsa molestias adipisci. Facere placeat qui quia debitis velit. Suscipit sit rerum in qui enim ut consequatur. Numquam sequi consequatur beatae dignissimos omnis error cum harum. Ipsam et quae odit et. Qui dolor autem nostrum nesciunt harum et mollitia. Neque laborum quia architecto architecto ea eligendi. Ratione qui enim voluptas.','Laudantium sit excepturi quas facilis et veniam exercitationem molestiae. Quasi minus labore ratione rerum totam officiis. Consequatur officiis autem nemo nobis aut dolorem quibusdam. Aut assumenda assumenda soluta temporibus. Minima ipsum sapiente totam dicta error cumque qui vitae. Tempore non voluptatem ratione officia occaecati in neque. Qui nulla et est beatae quisquam. Qui voluptatem rem et commodi qui sed. Accusantium explicabo vero quia doloribus laboriosam et. Et expedita quis officia magnam. Fuga et qui assumenda nesciunt modi. Pariatur eaque reprehenderit perspiciatis placeat nobis. Labore quia et dolores illum repudiandae perspiciatis voluptas. Praesentium esse numquam animi unde aut. Qui et non labore et. Exercitationem consequuntur rerum quia porro explicabo atque. Rem perspiciatis vel sit rem nobis corrupti non. Modi et officia placeat veritatis eius quasi id.',1,'2021-03-09 06:09:32','2021-03-09 06:09:32'),(9,3,3,'Et iure et soluta iure.','Ut incidunt vitae reprehenderit.','et-amet-provident-soluta-perspiciatis-reprehenderit-qui','https://via.placeholder.com/1280x720.png/00ddff?text=sunt','Et rerum consequatur omnis aperiam quis et. Consectetur eos deserunt omnis reiciendis eaque et delectus. Hic error in itaque quae est dolor itaque. Vero dolorem occaecati odit est. Et et debitis facilis temporibus. Aut dolor et vel commodi. Nisi ratione dolore in velit libero nesciunt. Recusandae numquam et numquam dolorum facere sapiente deleniti. Magni est cum aut harum et aliquid ipsam nihil. Consectetur omnis assumenda veritatis ut ratione. Est dolor et deserunt sit quas in harum. Sit iure molestiae aliquid sit aut labore. Voluptatem eligendi quo saepe et quisquam iure ratione. Id in error quia sequi optio neque occaecati. Neque velit tempora quam. Repellat asperiores voluptatum id non pariatur voluptatibus. Vitae culpa doloremque quaerat eum. In in voluptas ut et accusamus iure qui cumque.','Sit sit odio placeat quas quibusdam repellat expedita. Qui hic blanditiis autem ut quae. Dolorem beatae debitis repudiandae. Dicta recusandae reprehenderit maxime voluptatem ut aspernatur. Commodi laborum aut velit cumque vero. Ullam amet ipsam aspernatur quasi. Perspiciatis est consequuntur dicta facere. Temporibus est voluptatem labore error assumenda. Dignissimos quae aliquam harum reiciendis tenetur delectus. Velit minima vitae ut ut accusantium aut voluptatem quia. Reprehenderit aut recusandae ea similique quam soluta dolorem sed. Sunt expedita eius saepe rerum voluptate aut neque. Vero ipsa facilis sit aspernatur non. Beatae quo et iste quasi aut eos illo. Nesciunt eum minima et repellendus a.',1,'2021-03-09 06:09:32','2021-03-09 06:09:32'),(10,5,3,'Voluptas ipsam sequi recusandae sapiente itaque non delectus labore.','Debitis voluptate saepe et dicta.','ut-accusamus-enim-dolores-maiores-rerum-quae-possimus','https://via.placeholder.com/1280x720.png/005500?text=incidunt','Itaque accusantium itaque velit reprehenderit. Aliquam consequatur et doloribus atque. Hic non et rem itaque unde. Qui exercitationem beatae aliquid excepturi. Excepturi qui est delectus mollitia. Facilis quia voluptatum sed autem fugit eos. Iure perferendis hic autem tempore non occaecati. Eveniet esse occaecati omnis tenetur et asperiores officia. Esse perferendis reiciendis quia consequatur. Quisquam et voluptatem dicta quia. Voluptatem recusandae qui voluptatem delectus. Delectus iusto est animi esse. Perspiciatis in perferendis et aut. Voluptas dolores deserunt asperiores in sit qui. Adipisci voluptatem omnis vitae suscipit enim alias quas. Sunt veritatis veniam possimus id voluptas. Assumenda provident suscipit fugit repudiandae. Aspernatur vitae delectus blanditiis et rerum. Ipsum sed est ut amet eum reprehenderit veniam.','Fuga totam esse ratione maxime eaque laboriosam. Quos natus voluptatibus iusto neque. Dolorum dolores quas aut consectetur modi quo necessitatibus nesciunt. Quidem eos numquam ut dolores voluptatibus consequatur doloremque. Quisquam dolores natus molestiae autem. Cumque itaque non officia omnis voluptatem dignissimos. Aliquam dolor sit et sapiente. Excepturi saepe aut quia vitae. Occaecati quas consequatur sapiente repellendus ea. Atque minima modi dolorum laudantium qui facilis. Inventore culpa repudiandae atque velit ipsa suscipit fugiat. Sequi quidem voluptatem minus aliquam quos quo. Sint sit voluptates iste illum cumque iusto culpa. Et velit quae voluptas voluptas distinctio eius aut. Perspiciatis tenetur quod et illum earum. Reiciendis molestiae totam delectus alias et.',1,'2021-03-09 06:09:32','2021-03-09 06:09:32'),(11,3,3,'Consequatur asperiores est magnam atque consectetur ipsam sit.','Culpa quia nostrum distinctio beatae.','minus-ullam-facilis-nihil','https://via.placeholder.com/1280x720.png/00cc55?text=qui','Illo tenetur in error temporibus aut voluptas fuga. Consectetur eius enim omnis ut qui iusto laudantium. Non nobis quia ut. Fuga non aut non dolorem et ipsum. Modi aut non ut dolores. Omnis et porro animi aspernatur accusantium. Consectetur ut voluptatibus asperiores quia et aut nostrum. Quidem omnis non consequatur facere deleniti. Itaque ratione et vero ipsum. Soluta dignissimos nobis et ut iusto explicabo. Dolorum quas ullam voluptatem libero fugiat ducimus accusantium et. Facere blanditiis eaque aspernatur dolorum aspernatur voluptas. Magni rerum soluta quia fugiat. Repudiandae vero dolorem voluptas quos reiciendis est. Neque sint quibusdam dicta inventore iusto. Sed laborum rerum sit deleniti culpa nihil eum. Ea ad deleniti suscipit temporibus. Nobis est voluptas quaerat.','Veritatis doloribus modi itaque. Et id quos est nisi perferendis sunt voluptate autem. Est perferendis aut error assumenda quas doloribus animi. Modi aut quia est expedita aut fugit praesentium. Laborum sunt consequuntur est. Neque alias quae quisquam nulla repudiandae quisquam magni. Nisi tempora placeat debitis quis voluptatem. Magnam perspiciatis ab est quibusdam et. Deleniti ducimus provident voluptate eos qui deserunt doloribus doloremque. Animi fugit blanditiis tempora dolor voluptates vitae. Et rem et sed in. Similique repudiandae sit sequi ipsam quia neque minima. Non dolores est voluptatibus voluptas. Minima asperiores alias officia omnis eius at rerum est. Molestiae qui iusto veritatis dolor animi velit nulla. Quo est ipsa repudiandae esse minus mollitia. Enim laudantium iste sit. Voluptatum recusandae sunt quia est. Laboriosam facere eos enim ratione enim.',1,'2021-03-09 06:09:32','2021-03-09 06:09:32'),(12,3,1,'Assumenda voluptatem officiis exercitationem adipisci.','Quibusdam enim ratione eos ex alias modi.','rerum-perspiciatis-vero-laborum-quia-quo-voluptatem','https://via.placeholder.com/1280x720.png/00bb44?text=quibusdam','Est voluptatem voluptatem aut quae quis non. Repellendus occaecati odio ut corporis quia. Et architecto accusamus aut rerum quae blanditiis. Expedita est sit fugit qui et esse possimus. Et impedit mollitia a pariatur aliquam. Numquam sed recusandae et soluta. Autem incidunt illum maxime quis fugiat officiis. Quam voluptatem vitae aut id est maxime animi. Est quis temporibus accusamus earum ut laboriosam architecto. Voluptas dolore soluta in et repellendus quisquam. Saepe et aut inventore magnam. Excepturi dolor ipsam quidem dolorem animi. Non ea sed sit. Est ipsa et tempore maiores in nemo autem. Perferendis numquam minima reiciendis neque quis ut officia. Dolores quis vel porro ut. Consequatur ut nam quibusdam ea omnis nisi. Id quos repellat tempore nihil expedita illo. Temporibus unde sit porro veritatis facilis ab. Quas explicabo est est vero iusto mollitia aut.','Molestiae ut amet ut quia excepturi itaque adipisci. Sapiente aliquam dolores maxime nostrum. Et qui sequi aut voluptas quod. Deserunt et voluptatum ab corporis. Voluptatum id laborum possimus vero. Et ratione ea voluptatem et. Ipsum et totam error nam qui officia officia. Iste ipsa quaerat distinctio fugiat ut. Quia quo inventore aliquid voluptas quia enim. Sunt fuga sed aut. Nulla dicta illo earum dolores. Illo dolor sed reiciendis et beatae veritatis et. Nostrum magni fugiat ea. Odit rerum quo recusandae aut alias vero ut. Dicta sit neque aut. Doloremque repellat nihil debitis enim perferendis omnis. Ipsa aut eligendi voluptatem ut repudiandae. Dolorem libero illo repellat et. Aut quo nisi quia repellendus nulla quos molestiae repellendus.',1,'2021-03-09 06:09:32','2021-03-09 06:09:32'),(13,1,2,'Dolores quidem est magnam sint exercitationem.','Tempore animi velit pariatur nostrum blanditiis placeat molestiae.','inventore-vero-quam-eos-facere-sit-placeat','https://via.placeholder.com/1280x720.png/000088?text=commodi','Voluptatum voluptatem quos voluptatibus unde. Veniam incidunt nulla fugiat commodi nobis fuga aperiam. Delectus doloribus rerum doloribus non omnis qui et praesentium. Sunt deserunt omnis perspiciatis. Necessitatibus ut amet consequatur est aut quidem. Qui fugit ut exercitationem assumenda vel nesciunt. Aut dignissimos qui est aut quia. Velit voluptatibus facere omnis iste sunt ut tenetur. Itaque asperiores ex ut labore dolor. Inventore quis nemo qui. Eum quod nulla in vero ut omnis provident. Distinctio atque dignissimos dolor ut. Repellendus autem quia ratione provident iure nisi atque. Eos eius quis delectus quod. Natus pariatur ut modi voluptatem omnis. Rerum veniam eius officiis rerum qui. Explicabo blanditiis fuga id ullam. Nam odit eos et rerum excepturi vel accusamus. Et quisquam voluptatem nesciunt praesentium qui reiciendis eum. Aperiam et cumque incidunt omnis doloremque.','Eveniet impedit dicta et in laboriosam molestiae blanditiis. Suscipit est sed totam a. Ut molestiae debitis vel veniam. Aliquam ut exercitationem nulla facere aliquid voluptates a libero. Libero ea doloremque placeat excepturi consequatur ipsum. Odio labore libero et nihil possimus totam quia vel. Alias nemo asperiores voluptas eos officia voluptatum dolore. Porro blanditiis quisquam ducimus consequatur. Enim assumenda excepturi quos consequatur. Et dolorem ut omnis laboriosam. Aspernatur explicabo magni tenetur inventore et. Nulla unde quidem earum tempora quae eius a laboriosam. Eaque qui asperiores quae consequatur. Quaerat est quisquam et. Natus ea minima aut et. Facilis sed deserunt consequuntur voluptate consequatur. Iusto ut quas repudiandae ut quae ut. Quia cumque dolor nihil quia numquam aut dignissimos.',1,'2021-03-09 06:09:32','2021-03-09 06:09:32'),(14,3,2,'Velit neque quia in dolor aliquam sequi.','Amet voluptatem et voluptatibus commodi hic quidem.','nobis-odio-sunt-id-voluptatem','https://via.placeholder.com/1280x720.png/00bb22?text=suscipit','Fuga sed eveniet ut aut architecto dignissimos. Placeat consequatur tenetur laborum ut quasi. Natus aliquam eum at odit possimus. Itaque facere dolorum quo. Et provident nostrum assumenda sed voluptate enim consequatur excepturi. Ut tenetur qui explicabo non autem. Est et magnam autem tempora. Itaque sapiente sint et. Magni perspiciatis voluptatum suscipit nam minima. Soluta non eum quos quia qui. Sit sed rerum sed esse alias sunt. Et ut est praesentium quaerat suscipit a. Praesentium nesciunt sequi consequatur eligendi consequatur fugit. Quia est enim odio itaque debitis. Quae sint dolor consequatur velit ipsum recusandae. In repudiandae sint sit dicta accusamus. Consequatur quia sed ab est maxime quisquam eum. Eos numquam reiciendis praesentium sint nesciunt maxime. Delectus neque ad facere similique qui eos pariatur veritatis.','Omnis consequuntur illum delectus tenetur molestias velit qui. Eaque in tempora quia voluptas. Aut odio et non id placeat ullam. Ut dolores neque magnam neque nisi error alias est. Sint quo nobis qui molestiae. Ea qui neque tenetur. Nisi est ex error. Est ipsa et enim illo aut. Quo dolore et aut qui officiis asperiores. Qui fugiat repellat quia. Amet nobis doloremque enim ut quod incidunt. Omnis quibusdam error earum quo. A animi qui ipsum qui in. Maiores expedita ad sed est quam sed dignissimos. Sit aliquid incidunt rerum perspiciatis. Rerum dolor corrupti ut accusamus quos. Placeat magni amet molestiae autem. Enim sed error sed. Praesentium tenetur est necessitatibus. Maxime esse officia non. Ut mollitia ut aut et. Cupiditate esse doloremque repudiandae magnam minima. Est pariatur aut incidunt.',1,'2021-03-09 06:09:32','2021-03-09 06:09:32'),(15,1,2,'Quod incidunt aut voluptate atque.','Sed voluptatem aut nesciunt et.','sint-quisquam-architecto-dolor-quos','https://via.placeholder.com/1280x720.png/002277?text=corporis','Rem sint incidunt cumque unde. Et distinctio reiciendis et et rem accusamus praesentium eum. Porro voluptatem consequatur blanditiis soluta sit nihil facilis. Facere magni alias deserunt ut. Velit sed tempore cumque incidunt. Dolorum omnis dolor molestiae nemo placeat earum. Quibusdam inventore illo dolor consequatur saepe et. Eos unde reiciendis et. Quia ab rerum in quibusdam sint. Et rerum dolor molestiae voluptatum. Totam odio in a et distinctio fugiat adipisci. Quia dolor architecto consectetur facere aut. Esse sapiente eos et. Dicta porro eos quia perspiciatis. Ea ut corrupti dolorem qui ad. Ipsum sed omnis distinctio laborum non blanditiis. Aut dolor quasi rerum beatae inventore et vel. Magnam adipisci omnis est aliquam ipsam ut eaque. Consequatur impedit est non maiores consequatur.','Ducimus porro et repudiandae eveniet distinctio adipisci. Tempore et quibusdam ea vitae adipisci. Deserunt culpa et consequatur et cum qui autem. Ipsa qui tenetur rerum aspernatur aut. Est molestias rerum nam dolorum et ratione. Expedita eos possimus nulla sed commodi quasi impedit. Laudantium est voluptas expedita veritatis sed nulla qui. Sed tempore culpa quia. Excepturi necessitatibus consequatur vel eum earum non iusto. Enim quo sapiente amet adipisci. Deleniti quas molestiae eligendi vero perspiciatis reprehenderit fugiat. Autem eos ut quia repudiandae quo. Rerum facere optio rerum. Molestias fugiat consequatur sunt temporibus. Excepturi doloremque quis eum quae eveniet. Amet ducimus ullam a et distinctio beatae. Quas perferendis odio quia quaerat iure id et. Quo tempora laudantium illo vel minima rerum delectus.',1,'2021-03-09 06:09:32','2021-03-09 06:09:32');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responses`
--

DROP TABLE IF EXISTS `responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `responses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `survey_id` bigint unsigned NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `responses_survey_id_foreign` (`survey_id`),
  CONSTRAINT `responses_survey_id_foreign` FOREIGN KEY (`survey_id`) REFERENCES `surveys` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responses`
--

LOCK TABLES `responses` WRITE;
/*!40000 ALTER TABLE `responses` DISABLE KEYS */;
INSERT INTO `responses` VALUES (1,1,'127.0.0.1','[{\"Titulo\": \"Simple text question?\", \"Respuesta\": \"okay\"}, {\"Titulo\": \"What is your favorite number?\", \"Respuesta\": \"6\"}, {\"Titulo\": \"27 is a prime number?\", \"Respuesta\": [{\"opcion\": \"No\", \"checked\": true}]}, {\"Titulo\": \"What of the following is the best algorithm?\", \"Respuesta\": [{\"opcion\": \"K Means\", \"checked\": true}]}, {\"Titulo\": \"Select all the characteristics of the neural networks\", \"Respuesta\": [{\"opcion\": \"Require a lot of data\", \"checked\": true}, {\"opcion\": \"More layers is better than the same number of layers with more neurons\", \"checked\": true}]}]','2021-03-12 02:05:48','2021-03-12 02:05:48'),(2,1,'127.0.0.1','[{\"Titulo\": \"Simple text question?\", \"Respuesta\": \"Va\"}, {\"Titulo\": \"What is your favorite number?\", \"Respuesta\": \"0\"}, {\"Titulo\": \"27 is a prime number?\", \"Respuesta\": [{\"opcion\": \"No\", \"checked\": true}]}, {\"Titulo\": \"What of the following is the best algorithm?\", \"Respuesta\": [{\"opcion\": \"Random Forest\", \"checked\": true}]}, {\"Titulo\": \"Select all the characteristics of the neural networks\", \"Respuesta\": [{\"opcion\": \"Require a lot of data\", \"checked\": true}, {\"opcion\": \"Require labeled data\", \"checked\": true}]}]','2021-03-12 02:06:16','2021-03-12 02:06:16'),(3,1,'127.0.0.1','[{\"Titulo\": \"Simple text question?\", \"Respuesta\": \"Yes, I think\"}, {\"Titulo\": \"What is your favorite number?\", \"Respuesta\": \"100\"}, {\"Titulo\": \"27 is a prime number?\", \"Respuesta\": [{\"opcion\": \"Yes\", \"checked\": true}]}, {\"Titulo\": \"What of the following is the best algorithm?\", \"Respuesta\": [{\"opcion\": \"Multi Layer Perceptron\", \"checked\": true}]}, {\"Titulo\": \"Select all the characteristics of the neural networks\", \"Respuesta\": [{\"opcion\": \"Require a lot of data\", \"checked\": true}, {\"opcion\": \"Require labeled data\", \"checked\": true}]}]','2021-03-12 02:06:49','2021-03-12 02:06:49');
/*!40000 ALTER TABLE `responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('PrSxZ5Z2ggJm2ZqfKCGbxNLaFvCSNLUMLKi7OYSO',6,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36','YTo3OntzOjY6Il90b2tlbiI7czo0MDoia0xmeFlvUTdqOVRwdUN5Z3c0MGtUNUV3cm1yM0dqaUQ0d2kwelppbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQvc3VydmV5cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo2O3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkbVZYTkdYeVBnWjZrOEtQc1JPL1VhZWp0dmx3aWptNGFYMjJzR3JzaWxXWGhoYjNQV0I0RC4iO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJG1WWE5HWHlQZ1o2azhLUHNSTy9VYWVqdHZsd2lqbTRhWDIyc0dyc2lsV1hoaGIzUFdCNEQuIjt9',1618022210);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveys`
--

DROP TABLE IF EXISTS `surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveys` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ES` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config` json NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `public` tinyint(1) NOT NULL DEFAULT '0',
  `responseLimit` int NOT NULL DEFAULT '-1',
  `aviableFrom` datetime NOT NULL,
  `aviableTo` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `surveys_user_id_foreign` (`user_id`),
  CONSTRAINT `surveys_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys`
--

LOCK TABLES `surveys` WRITE;
/*!40000 ALTER TABLE `surveys` DISABLE KEYS */;
INSERT INTO `surveys` VALUES (1,5,'Omnis suscipit aut officiis consectetur ducimus voluptatibus esse occaecati.','Provident omnis rerum atque libero.','labore-accusantium-labore-provident-dolorem-similique','https://via.placeholder.com/1280x720.png/0011dd?text=voluptatum','[{\"type\": \"text\", \"label\": \"Simple text question?\", \"required\": false}, {\"type\": \"number\", \"label\": \"What is your favorite number?\", \"required\": false}, {\"type\": \"checkbox\", \"label\": \"27 is a prime number?\", \"required\": false}, {\"type\": \"radio\", \"label\": \"What of the following is the best algorithm?\", \"options\": [\"Linear Regression\", \"Logistic Regression\", \"Random Forest\", \"Multi Layer Perceptron\", \"K Means\"], \"required\": false}, {\"type\": \"checkbox\", \"label\": \"Select all the characteristics of the neural networks\", \"options\": [\"Require a lot of data\", \"Require labeled data\", \"Work better with normalized data\", \"More layers is better than the same number of layers with more neurons\", \"The training process requires a lot of computational power\"], \"required\": false}]',1,0,3,'2021-03-05 03:13:54','2021-03-22 08:10:33','2021-03-09 06:09:32','2021-03-09 06:09:32'),(2,5,'Ut itaque voluptatem reiciendis.','Sed dolorem laudantium suscipit eveniet.','similique-aut-ut-voluptates-voluptatem-est-qui','https://via.placeholder.com/1280x720.png/00aabb?text=saepe','[{\"type\": \"text\", \"label\": \"Simple text question?\", \"required\": false}, {\"type\": \"number\", \"label\": \"What is your favorite number?\", \"required\": false}, {\"type\": \"checkbox\", \"label\": \"27 is a prime number?\", \"required\": false}, {\"type\": \"radio\", \"label\": \"What of the following is the best algorithm?\", \"options\": [\"Linear Regression\", \"Logistic Regression\", \"Random Forest\", \"Multi Layer Perceptron\", \"K Means\"], \"required\": false}, {\"type\": \"checkbox\", \"label\": \"Select all the characteristics of the neural networks\", \"options\": [\"Require a lot of data\", \"Require labeled data\", \"Work better with normalized data\", \"More layers is better than the same number of layers with more neurons\", \"The training process requires a lot of computational power\"], \"required\": false}]',1,0,5,'2021-03-10 10:23:45','2021-03-20 10:05:15','2021-03-09 06:09:32','2021-03-09 06:09:32'),(3,4,'Dolorem inventore provident repellat quis veniam veniam.','Totam expedita ea et ea adipisci iste.','est-ea-magnam-et-est-praesentium','https://via.placeholder.com/1280x720.png/002211?text=velit','[{\"type\": \"text\", \"label\": \"Simple text question?\", \"required\": false}, {\"type\": \"number\", \"label\": \"What is your favorite number?\", \"required\": false}, {\"type\": \"checkbox\", \"label\": \"27 is a prime number?\", \"required\": false}, {\"type\": \"radio\", \"label\": \"What of the following is the best algorithm?\", \"options\": [\"Linear Regression\", \"Logistic Regression\", \"Random Forest\", \"Multi Layer Perceptron\", \"K Means\"], \"required\": false}, {\"type\": \"checkbox\", \"label\": \"Select all the characteristics of the neural networks\", \"options\": [\"Require a lot of data\", \"Require labeled data\", \"Work better with normalized data\", \"More layers is better than the same number of layers with more neurons\", \"The training process requires a lot of computational power\"], \"required\": false}]',1,0,2,'2021-03-10 18:28:47','2021-03-16 15:46:34','2021-03-09 06:09:32','2021-03-09 06:09:32'),(4,4,'Ullam non molestias ut in laudantium nemo.','Illo quis quidem sunt et.','reiciendis-quo-dolorem-doloremque-illum-non','https://via.placeholder.com/1280x720.png/00cc00?text=laudantium','[{\"type\": \"text\", \"label\": \"Simple text question?\", \"required\": false}, {\"type\": \"number\", \"label\": \"What is your favorite number?\", \"required\": false}, {\"type\": \"checkbox\", \"label\": \"27 is a prime number?\", \"required\": false}, {\"type\": \"radio\", \"label\": \"What of the following is the best algorithm?\", \"options\": [\"Linear Regression\", \"Logistic Regression\", \"Random Forest\", \"Multi Layer Perceptron\", \"K Means\"], \"required\": false}, {\"type\": \"checkbox\", \"label\": \"Select all the characteristics of the neural networks\", \"options\": [\"Require a lot of data\", \"Require labeled data\", \"Work better with normalized data\", \"More layers is better than the same number of layers with more neurons\", \"The training process requires a lot of computational power\"], \"required\": false}]',1,0,3,'2021-03-01 15:00:57','2021-03-26 04:26:45','2021-03-09 06:09:32','2021-03-09 06:09:32'),(5,3,'Impedit ea consequatur adipisci cumque deserunt minus.','Deleniti illo sunt magnam tempore.','similique-at-placeat-totam-velit','https://via.placeholder.com/1280x720.png/00eecc?text=repudiandae','[{\"type\": \"text\", \"label\": \"Simple text question?\", \"required\": false}, {\"type\": \"number\", \"label\": \"What is your favorite number?\", \"required\": false}, {\"type\": \"checkbox\", \"label\": \"27 is a prime number?\", \"required\": false}, {\"type\": \"radio\", \"label\": \"What of the following is the best algorithm?\", \"options\": [\"Linear Regression\", \"Logistic Regression\", \"Random Forest\", \"Multi Layer Perceptron\", \"K Means\"], \"required\": false}, {\"type\": \"checkbox\", \"label\": \"Select all the characteristics of the neural networks\", \"options\": [\"Require a lot of data\", \"Require labeled data\", \"Work better with normalized data\", \"More layers is better than the same number of layers with more neurons\", \"The training process requires a lot of computational power\"], \"required\": false}]',1,0,5,'2021-03-05 03:42:31','2021-03-19 13:20:07','2021-03-09 06:09:32','2021-03-09 06:09:32'),(6,3,'Dolores enim autem sapiente aut aperiam ullam sed.','Error non dolorem est aut.','nemo-rerum-commodi-nisi-quasi-possimus','https://via.placeholder.com/1280x720.png/0077bb?text=tenetur','[{\"type\": \"text\", \"label\": \"Simple text question?\", \"required\": false}, {\"type\": \"number\", \"label\": \"What is your favorite number?\", \"required\": false}, {\"type\": \"checkbox\", \"label\": \"27 is a prime number?\", \"required\": false}, {\"type\": \"radio\", \"label\": \"What of the following is the best algorithm?\", \"options\": [\"Linear Regression\", \"Logistic Regression\", \"Random Forest\", \"Multi Layer Perceptron\", \"K Means\"], \"required\": false}, {\"type\": \"checkbox\", \"label\": \"Select all the characteristics of the neural networks\", \"options\": [\"Require a lot of data\", \"Require labeled data\", \"Work better with normalized data\", \"More layers is better than the same number of layers with more neurons\", \"The training process requires a lot of computational power\"], \"required\": false}]',1,0,4,'2021-03-04 13:25:03','2021-03-23 03:32:54','2021-03-09 06:09:32','2021-03-09 06:09:32'),(7,1,'Et et cumque reprehenderit eos libero sed.','Qui sit dignissimos quos velit harum reiciendis.','aut-nisi-ab-voluptatem-id','https://via.placeholder.com/1280x720.png/0022ee?text=officia','[{\"type\": \"text\", \"label\": \"Simple text question?\", \"required\": false}, {\"type\": \"number\", \"label\": \"What is your favorite number?\", \"required\": false}, {\"type\": \"checkbox\", \"label\": \"27 is a prime number?\", \"required\": false}, {\"type\": \"radio\", \"label\": \"What of the following is the best algorithm?\", \"options\": [\"Linear Regression\", \"Logistic Regression\", \"Random Forest\", \"Multi Layer Perceptron\", \"K Means\"], \"required\": false}, {\"type\": \"checkbox\", \"label\": \"Select all the characteristics of the neural networks\", \"options\": [\"Require a lot of data\", \"Require labeled data\", \"Work better with normalized data\", \"More layers is better than the same number of layers with more neurons\", \"The training process requires a lot of computational power\"], \"required\": false}]',1,0,2,'2021-03-10 23:58:32','2021-03-21 11:36:59','2021-03-09 06:09:32','2021-03-09 06:09:32'),(8,4,'Eligendi impedit ab saepe nesciunt libero est facilis.','Nobis est perferendis laboriosam aut suscipit consequatur odio.','excepturi-tenetur-laudantium-aut-aut-autem-vel-sunt-consequatur','https://via.placeholder.com/1280x720.png/0077aa?text=in','[{\"type\": \"text\", \"label\": \"Simple text question?\", \"required\": false}, {\"type\": \"number\", \"label\": \"What is your favorite number?\", \"required\": false}, {\"type\": \"checkbox\", \"label\": \"27 is a prime number?\", \"required\": false}, {\"type\": \"radio\", \"label\": \"What of the following is the best algorithm?\", \"options\": [\"Linear Regression\", \"Logistic Regression\", \"Random Forest\", \"Multi Layer Perceptron\", \"K Means\"], \"required\": false}, {\"type\": \"checkbox\", \"label\": \"Select all the characteristics of the neural networks\", \"options\": [\"Require a lot of data\", \"Require labeled data\", \"Work better with normalized data\", \"More layers is better than the same number of layers with more neurons\", \"The training process requires a lot of computational power\"], \"required\": false}]',1,0,3,'2021-02-28 23:14:15','2021-03-28 16:28:50','2021-03-09 06:09:32','2021-03-09 06:09:32'),(9,1,'Sapiente quidem dolor enim odio tempore et natus.','Non molestiae repudiandae dolor facilis ratione aliquid recusandae.','quidem-quas-quos-est','https://via.placeholder.com/1280x720.png/0011ee?text=illo','[{\"type\": \"text\", \"label\": \"Simple text question?\", \"required\": false}, {\"type\": \"number\", \"label\": \"What is your favorite number?\", \"required\": false}, {\"type\": \"checkbox\", \"label\": \"27 is a prime number?\", \"required\": false}, {\"type\": \"radio\", \"label\": \"What of the following is the best algorithm?\", \"options\": [\"Linear Regression\", \"Logistic Regression\", \"Random Forest\", \"Multi Layer Perceptron\", \"K Means\"], \"required\": false}, {\"type\": \"checkbox\", \"label\": \"Select all the characteristics of the neural networks\", \"options\": [\"Require a lot of data\", \"Require labeled data\", \"Work better with normalized data\", \"More layers is better than the same number of layers with more neurons\", \"The training process requires a lot of computational power\"], \"required\": false}]',1,0,4,'2021-03-11 22:16:08','2021-03-25 00:28:38','2021-03-09 06:09:32','2021-03-09 06:09:32'),(10,3,'Voluptates sed et voluptatem ut voluptate.','Porro consequatur non libero quisquam.','quia-architecto-sunt-architecto-nam-provident-eaque-velit','https://via.placeholder.com/1280x720.png/00cc66?text=deleniti','[{\"type\": \"text\", \"label\": \"Simple text question?\", \"required\": false}, {\"type\": \"number\", \"label\": \"What is your favorite number?\", \"required\": false}, {\"type\": \"checkbox\", \"label\": \"27 is a prime number?\", \"required\": false}, {\"type\": \"radio\", \"label\": \"What of the following is the best algorithm?\", \"options\": [\"Linear Regression\", \"Logistic Regression\", \"Random Forest\", \"Multi Layer Perceptron\", \"K Means\"], \"required\": false}, {\"type\": \"checkbox\", \"label\": \"Select all the characteristics of the neural networks\", \"options\": [\"Require a lot of data\", \"Require labeled data\", \"Work better with normalized data\", \"More layers is better than the same number of layers with more neurons\", \"The training process requires a lot of computational power\"], \"required\": false}]',1,0,4,'2021-03-06 08:14:29','2021-03-17 10:07:51','2021-03-09 06:09:32','2021-03-09 06:09:32');
/*!40000 ALTER TABLE `surveys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_agents`
--

DROP TABLE IF EXISTS `tracker_agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_agents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser_version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_hash` varchar(65) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tracker_agents_name_hash_unique` (`name_hash`),
  KEY `tracker_agents_created_at_index` (`created_at`),
  KEY `tracker_agents_updated_at_index` (`updated_at`),
  KEY `tracker_agents_browser_index` (`browser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_agents`
--

LOCK TABLES `tracker_agents` WRITE;
/*!40000 ALTER TABLE `tracker_agents` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_connections`
--

DROP TABLE IF EXISTS `tracker_connections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_connections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_connections_created_at_index` (`created_at`),
  KEY `tracker_connections_updated_at_index` (`updated_at`),
  KEY `tracker_connections_name_index` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_connections`
--

LOCK TABLES `tracker_connections` WRITE;
/*!40000 ALTER TABLE `tracker_connections` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_connections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_cookies`
--

DROP TABLE IF EXISTS `tracker_cookies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_cookies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tracker_cookies_uuid_unique` (`uuid`),
  KEY `tracker_cookies_created_at_index` (`created_at`),
  KEY `tracker_cookies_updated_at_index` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_cookies`
--

LOCK TABLES `tracker_cookies` WRITE;
/*!40000 ALTER TABLE `tracker_cookies` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_cookies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_devices`
--

DROP TABLE IF EXISTS `tracker_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_devices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kind` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform_version` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_mobile` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tracker_devices_kind_model_platform_platform_version_unique` (`kind`,`model`,`platform`,`platform_version`),
  KEY `tracker_devices_created_at_index` (`created_at`),
  KEY `tracker_devices_updated_at_index` (`updated_at`),
  KEY `tracker_devices_kind_index` (`kind`),
  KEY `tracker_devices_model_index` (`model`),
  KEY `tracker_devices_platform_index` (`platform`),
  KEY `tracker_devices_platform_version_index` (`platform_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_devices`
--

LOCK TABLES `tracker_devices` WRITE;
/*!40000 ALTER TABLE `tracker_devices` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_domains`
--

DROP TABLE IF EXISTS `tracker_domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_domains` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_domains_created_at_index` (`created_at`),
  KEY `tracker_domains_updated_at_index` (`updated_at`),
  KEY `tracker_domains_name_index` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_domains`
--

LOCK TABLES `tracker_domains` WRITE;
/*!40000 ALTER TABLE `tracker_domains` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_errors`
--

DROP TABLE IF EXISTS `tracker_errors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_errors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_errors_created_at_index` (`created_at`),
  KEY `tracker_errors_updated_at_index` (`updated_at`),
  KEY `tracker_errors_code_index` (`code`),
  KEY `tracker_errors_message_index` (`message`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_errors`
--

LOCK TABLES `tracker_errors` WRITE;
/*!40000 ALTER TABLE `tracker_errors` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_errors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_events`
--

DROP TABLE IF EXISTS `tracker_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_events` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_events_created_at_index` (`created_at`),
  KEY `tracker_events_updated_at_index` (`updated_at`),
  KEY `tracker_events_name_index` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_events`
--

LOCK TABLES `tracker_events` WRITE;
/*!40000 ALTER TABLE `tracker_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_events_log`
--

DROP TABLE IF EXISTS `tracker_events_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_events_log` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `event_id` bigint unsigned NOT NULL,
  `class_id` bigint unsigned DEFAULT NULL,
  `log_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_events_log_created_at_index` (`created_at`),
  KEY `tracker_events_log_updated_at_index` (`updated_at`),
  KEY `tracker_events_log_event_id_index` (`event_id`),
  KEY `tracker_events_log_class_id_index` (`class_id`),
  KEY `tracker_events_log_log_id_index` (`log_id`),
  CONSTRAINT `tracker_events_log_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `tracker_system_classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_events_log_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `tracker_events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_events_log_log_id_foreign` FOREIGN KEY (`log_id`) REFERENCES `tracker_log` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_events_log`
--

LOCK TABLES `tracker_events_log` WRITE;
/*!40000 ALTER TABLE `tracker_events_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_events_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_geoip`
--

DROP TABLE IF EXISTS `tracker_geoip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_geoip` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `country_code` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code3` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_code` bigint DEFAULT NULL,
  `dma_code` double DEFAULT NULL,
  `metro_code` double DEFAULT NULL,
  `continent_code` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_geoip_created_at_index` (`created_at`),
  KEY `tracker_geoip_updated_at_index` (`updated_at`),
  KEY `tracker_geoip_latitude_index` (`latitude`),
  KEY `tracker_geoip_longitude_index` (`longitude`),
  KEY `tracker_geoip_country_code_index` (`country_code`),
  KEY `tracker_geoip_country_code3_index` (`country_code3`),
  KEY `tracker_geoip_country_name_index` (`country_name`),
  KEY `tracker_geoip_city_index` (`city`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_geoip`
--

LOCK TABLES `tracker_geoip` WRITE;
/*!40000 ALTER TABLE `tracker_geoip` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_geoip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_languages`
--

DROP TABLE IF EXISTS `tracker_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_languages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `preference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language-range` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tracker_languages_preference_language_range_unique` (`preference`,`language-range`),
  KEY `tracker_languages_created_at_index` (`created_at`),
  KEY `tracker_languages_updated_at_index` (`updated_at`),
  KEY `tracker_languages_preference_index` (`preference`),
  KEY `tracker_languages_language_range_index` (`language-range`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_languages`
--

LOCK TABLES `tracker_languages` WRITE;
/*!40000 ALTER TABLE `tracker_languages` DISABLE KEYS */;
INSERT INTO `tracker_languages` VALUES (1,'en-us','en-us,en','2021-03-10 02:03:40','2021-03-10 02:03:40');
/*!40000 ALTER TABLE `tracker_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_log`
--

DROP TABLE IF EXISTS `tracker_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_log` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `session_id` bigint unsigned NOT NULL,
  `path_id` bigint unsigned DEFAULT NULL,
  `query_id` bigint unsigned DEFAULT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route_path_id` bigint unsigned DEFAULT NULL,
  `is_ajax` tinyint(1) NOT NULL,
  `is_secure` tinyint(1) NOT NULL,
  `is_json` tinyint(1) NOT NULL,
  `wants_json` tinyint(1) NOT NULL,
  `error_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `referer_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_log_created_at_index` (`created_at`),
  KEY `tracker_log_updated_at_index` (`updated_at`),
  KEY `tracker_log_session_id_index` (`session_id`),
  KEY `tracker_log_path_id_index` (`path_id`),
  KEY `tracker_log_query_id_index` (`query_id`),
  KEY `tracker_log_method_index` (`method`),
  KEY `tracker_log_route_path_id_index` (`route_path_id`),
  KEY `tracker_log_error_id_index` (`error_id`),
  KEY `tracker_log_referer_id_index` (`referer_id`),
  CONSTRAINT `tracker_log_error_id_foreign` FOREIGN KEY (`error_id`) REFERENCES `tracker_errors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_log_path_id_foreign` FOREIGN KEY (`path_id`) REFERENCES `tracker_paths` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_log_query_id_foreign` FOREIGN KEY (`query_id`) REFERENCES `tracker_queries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_log_route_path_id_foreign` FOREIGN KEY (`route_path_id`) REFERENCES `tracker_route_paths` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_log_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `tracker_sessions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=855 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_log`
--

LOCK TABLES `tracker_log` WRITE;
/*!40000 ALTER TABLE `tracker_log` DISABLE KEYS */;
INSERT INTO `tracker_log` VALUES (1,1,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 01:57:50','2021-03-10 01:57:50',NULL),(2,1,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 01:57:50','2021-03-10 01:57:50',NULL),(3,1,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 01:59:05','2021-03-10 01:59:05',NULL),(4,1,NULL,NULL,'GET',NULL,1,0,1,0,NULL,'2021-03-10 01:59:09','2021-03-10 01:59:09',NULL),(5,1,NULL,NULL,'GET',NULL,1,0,1,0,NULL,'2021-03-10 01:59:10','2021-03-10 01:59:10',NULL),(6,1,NULL,NULL,'GET',NULL,1,0,1,0,NULL,'2021-03-10 01:59:11','2021-03-10 01:59:11',NULL),(7,1,NULL,NULL,'GET',NULL,1,0,1,0,NULL,'2021-03-10 01:59:16','2021-03-10 01:59:16',NULL),(8,1,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:00:15','2021-03-10 02:00:15',NULL),(9,1,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:00:15','2021-03-10 02:00:15',NULL),(10,1,1,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:03:40','2021-03-10 02:03:40',NULL),(11,1,2,NULL,'GET',NULL,1,0,1,0,NULL,'2021-03-10 02:03:49','2021-03-10 02:03:49',NULL),(12,1,3,NULL,'GET',NULL,1,0,1,0,NULL,'2021-03-10 02:03:52','2021-03-10 02:03:52',NULL),(13,1,4,NULL,'GET',NULL,1,0,1,0,NULL,'2021-03-10 02:03:54','2021-03-10 02:03:54',NULL),(14,1,5,NULL,'GET',NULL,1,0,1,0,NULL,'2021-03-10 02:03:57','2021-03-10 02:03:57',NULL),(15,1,5,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:04:00','2021-03-10 02:04:00',NULL),(16,1,1,NULL,'GET',NULL,1,0,1,0,NULL,'2021-03-10 02:04:03','2021-03-10 02:04:03',NULL),(17,1,1,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:04:05','2021-03-10 02:04:05',NULL),(18,1,6,NULL,'POST',NULL,0,0,0,0,NULL,'2021-03-10 02:04:14','2021-03-10 02:04:14',NULL),(19,1,1,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:04:14','2021-03-10 02:04:14',NULL),(20,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:04:16','2021-03-10 02:04:16',NULL),(21,1,8,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:04:17','2021-03-10 02:04:17',NULL),(22,1,8,NULL,'POST',NULL,0,0,0,0,NULL,'2021-03-10 02:04:24','2021-03-10 02:04:24',NULL),(23,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:04:25','2021-03-10 02:04:25',NULL),(24,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:04:25','2021-03-10 02:04:25',NULL),(25,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:10:55','2021-03-10 02:10:55',NULL),(26,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:10:55','2021-03-10 02:10:55',NULL),(27,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:12:32','2021-03-10 02:12:32',NULL),(28,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:12:32','2021-03-10 02:12:32',NULL),(29,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:12:36','2021-03-10 02:12:36',NULL),(30,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:12:36','2021-03-10 02:12:36',NULL),(31,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:13:39','2021-03-10 02:13:39',NULL),(32,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:13:39','2021-03-10 02:13:39',NULL),(33,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:14:15','2021-03-10 02:14:15',NULL),(34,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:14:15','2021-03-10 02:14:15',NULL),(35,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:14:48','2021-03-10 02:14:48',NULL),(36,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:14:48','2021-03-10 02:14:48',NULL),(37,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:17:28','2021-03-10 02:17:28',NULL),(38,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:17:28','2021-03-10 02:17:28',NULL),(39,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:17:30','2021-03-10 02:17:30',NULL),(40,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:17:30','2021-03-10 02:17:30',NULL),(41,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:17:47','2021-03-10 02:17:47',NULL),(42,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:17:47','2021-03-10 02:17:47',NULL),(43,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:18:12','2021-03-10 02:18:12',NULL),(44,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:18:47','2021-03-10 02:18:47',NULL),(45,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:18:47','2021-03-10 02:18:47',NULL),(46,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:20:38','2021-03-10 02:20:38',NULL),(47,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:20:50','2021-03-10 02:20:50',NULL),(48,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:20:58','2021-03-10 02:20:58',NULL),(49,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:21:03','2021-03-10 02:21:03',NULL),(50,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:21:37','2021-03-10 02:21:37',NULL),(51,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:21:43','2021-03-10 02:21:43',NULL),(52,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:22:17','2021-03-10 02:22:17',NULL),(53,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:22:17','2021-03-10 02:22:17',NULL),(54,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:22:34','2021-03-10 02:22:34',NULL),(55,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:22:35','2021-03-10 02:22:35',NULL),(56,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:22:39','2021-03-10 02:22:39',NULL),(57,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:22:40','2021-03-10 02:22:40',NULL),(58,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:22:45','2021-03-10 02:22:45',NULL),(59,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:22:45','2021-03-10 02:22:45',NULL),(60,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:23:02','2021-03-10 02:23:02',NULL),(61,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:23:02','2021-03-10 02:23:02',NULL),(62,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:23:07','2021-03-10 02:23:07',NULL),(63,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:23:07','2021-03-10 02:23:07',NULL),(64,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:24:53','2021-03-10 02:24:53',NULL),(65,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:24:53','2021-03-10 02:24:53',NULL),(66,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:24:57','2021-03-10 02:24:57',NULL),(67,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:24:58','2021-03-10 02:24:58',NULL),(68,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:25:17','2021-03-10 02:25:17',NULL),(69,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:25:26','2021-03-10 02:25:26',NULL),(70,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:25:42','2021-03-10 02:25:42',NULL),(71,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:25:43','2021-03-10 02:25:43',NULL),(72,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:26:07','2021-03-10 02:26:07',NULL),(73,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:26:26','2021-03-10 02:26:26',NULL),(74,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:26:26','2021-03-10 02:26:26',NULL),(75,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:26:43','2021-03-10 02:26:43',NULL),(76,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:27:19','2021-03-10 02:27:19',NULL),(77,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:27:19','2021-03-10 02:27:19',NULL),(78,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:27:33','2021-03-10 02:27:33',NULL),(79,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:27:33','2021-03-10 02:27:33',NULL),(80,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:27:46','2021-03-10 02:27:46',NULL),(81,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:27:46','2021-03-10 02:27:46',NULL),(82,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:27:54','2021-03-10 02:27:54',NULL),(83,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:27:54','2021-03-10 02:27:54',NULL),(84,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:28:00','2021-03-10 02:28:00',NULL),(85,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:28:00','2021-03-10 02:28:00',NULL),(86,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:28:09','2021-03-10 02:28:09',NULL),(87,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:28:10','2021-03-10 02:28:10',NULL),(88,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:29:40','2021-03-10 02:29:40',NULL),(89,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:30:39','2021-03-10 02:30:39',NULL),(90,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:30:52','2021-03-10 02:30:52',NULL),(91,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:31:14','2021-03-10 02:31:14',NULL),(92,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:31:14','2021-03-10 02:31:14',NULL),(93,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:31:26','2021-03-10 02:31:26',NULL),(94,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:31:26','2021-03-10 02:31:26',NULL),(95,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:31:39','2021-03-10 02:31:39',NULL),(96,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:31:39','2021-03-10 02:31:39',NULL),(97,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:31:48','2021-03-10 02:31:48',NULL),(98,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:31:48','2021-03-10 02:31:48',NULL),(99,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:32:42','2021-03-10 02:32:42',NULL),(100,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:32:43','2021-03-10 02:32:43',NULL),(101,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:32:58','2021-03-10 02:32:58',NULL),(102,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:32:58','2021-03-10 02:32:58',NULL),(103,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:33:41','2021-03-10 02:33:41',NULL),(104,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:33:41','2021-03-10 02:33:41',NULL),(105,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:34:14','2021-03-10 02:34:14',NULL),(106,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:34:14','2021-03-10 02:34:14',NULL),(107,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:36:26','2021-03-10 02:36:26',NULL),(108,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:37:08','2021-03-10 02:37:08',NULL),(109,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:37:11','2021-03-10 02:37:11',NULL),(110,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:37:20','2021-03-10 02:37:20',NULL),(111,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:37:41','2021-03-10 02:37:41',NULL),(112,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:38:48','2021-03-10 02:38:48',NULL),(113,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:39:50','2021-03-10 02:39:50',NULL),(114,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:39:55','2021-03-10 02:39:55',NULL),(115,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:39:55','2021-03-10 02:39:55',NULL),(116,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:40:10','2021-03-10 02:40:10',NULL),(117,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:40:10','2021-03-10 02:40:10',NULL),(118,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:40:31','2021-03-10 02:40:31',NULL),(119,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:40:31','2021-03-10 02:40:31',NULL),(120,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:40:45','2021-03-10 02:40:45',NULL),(121,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:40:45','2021-03-10 02:40:45',NULL),(122,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:40:49','2021-03-10 02:40:49',NULL),(123,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:40:49','2021-03-10 02:40:49',NULL),(124,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:41:24','2021-03-10 02:41:24',NULL),(125,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:41:24','2021-03-10 02:41:24',NULL),(126,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:44:02','2021-03-10 02:44:02',NULL),(127,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:44:03','2021-03-10 02:44:03',NULL),(128,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:49:13','2021-03-10 02:49:13',NULL),(129,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:49:14','2021-03-10 02:49:14',NULL),(130,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:49:31','2021-03-10 02:49:31',NULL),(131,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:49:32','2021-03-10 02:49:32',NULL),(132,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:49:39','2021-03-10 02:49:39',NULL),(133,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:49:40','2021-03-10 02:49:40',NULL),(134,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:51:01','2021-03-10 02:51:01',NULL),(135,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:51:02','2021-03-10 02:51:02',NULL),(136,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:54:24','2021-03-10 02:54:24',NULL),(137,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:54:24','2021-03-10 02:54:24',NULL),(138,1,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:54:28','2021-03-10 02:54:28',NULL),(139,1,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:54:28','2021-03-10 02:54:28',NULL),(140,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:55:00','2021-03-10 02:55:00',NULL),(141,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:55:01','2021-03-10 02:55:01',NULL),(142,1,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:55:01','2021-03-10 02:55:01',NULL),(143,1,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:55:01','2021-03-10 02:55:01',NULL),(144,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:55:29','2021-03-10 02:55:29',NULL),(145,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:55:29','2021-03-10 02:55:29',NULL),(146,1,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:55:30','2021-03-10 02:55:30',NULL),(147,1,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:55:30','2021-03-10 02:55:30',NULL),(148,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:55:53','2021-03-10 02:55:53',NULL),(149,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:55:53','2021-03-10 02:55:53',NULL),(150,1,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:55:54','2021-03-10 02:55:54',NULL),(151,1,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:55:54','2021-03-10 02:55:54',NULL),(152,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:59:31','2021-03-10 02:59:31',NULL),(153,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:59:32','2021-03-10 02:59:32',NULL),(154,1,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:59:33','2021-03-10 02:59:33',NULL),(155,1,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 02:59:33','2021-03-10 02:59:33',NULL),(156,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:00:23','2021-03-10 03:00:23',NULL),(157,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:00:23','2021-03-10 03:00:23',NULL),(158,1,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:00:24','2021-03-10 03:00:24',NULL),(159,1,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:00:24','2021-03-10 03:00:24',NULL),(160,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:01:00','2021-03-10 03:01:00',NULL),(161,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:01:00','2021-03-10 03:01:00',NULL),(162,1,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:01:01','2021-03-10 03:01:01',NULL),(163,1,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:01:01','2021-03-10 03:01:01',NULL),(164,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:01:54','2021-03-10 03:01:54',NULL),(165,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:01:54','2021-03-10 03:01:54',NULL),(166,1,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:01:55','2021-03-10 03:01:55',NULL),(167,1,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:01:55','2021-03-10 03:01:55',NULL),(168,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:02:25','2021-03-10 03:02:25',NULL),(169,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:02:25','2021-03-10 03:02:25',NULL),(170,1,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:02:26','2021-03-10 03:02:26',NULL),(171,1,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:02:26','2021-03-10 03:02:26',NULL),(172,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:03:05','2021-03-10 03:03:05',NULL),(173,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:03:05','2021-03-10 03:03:05',NULL),(174,1,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:03:06','2021-03-10 03:03:06',NULL),(175,1,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:03:06','2021-03-10 03:03:06',NULL),(176,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:04:07','2021-03-10 03:04:07',NULL),(177,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:04:08','2021-03-10 03:04:08',NULL),(178,1,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:04:09','2021-03-10 03:04:09',NULL),(179,1,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:04:09','2021-03-10 03:04:09',NULL),(180,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:05:04','2021-03-10 03:05:04',NULL),(181,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:05:05','2021-03-10 03:05:05',NULL),(182,1,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:05:06','2021-03-10 03:05:06',NULL),(183,1,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:05:06','2021-03-10 03:05:06',NULL),(184,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:05:19','2021-03-10 03:05:19',NULL),(185,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:05:20','2021-03-10 03:05:20',NULL),(186,1,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:05:21','2021-03-10 03:05:21',NULL),(187,1,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:05:21','2021-03-10 03:05:21',NULL),(188,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:05:41','2021-03-10 03:05:41',NULL),(189,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:05:41','2021-03-10 03:05:41',NULL),(190,1,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:05:42','2021-03-10 03:05:42',NULL),(191,1,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:05:42','2021-03-10 03:05:42',NULL),(192,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:08:24','2021-03-10 03:08:24',NULL),(193,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:08:25','2021-03-10 03:08:25',NULL),(194,1,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:08:26','2021-03-10 03:08:26',NULL),(195,1,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:08:26','2021-03-10 03:08:26',NULL),(196,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:09:14','2021-03-10 03:09:14',NULL),(197,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:09:14','2021-03-10 03:09:14',NULL),(198,1,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:09:15','2021-03-10 03:09:15',NULL),(199,1,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:09:16','2021-03-10 03:09:16',NULL),(200,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:09:34','2021-03-10 03:09:34',NULL),(201,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:09:34','2021-03-10 03:09:34',NULL),(202,1,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:09:35','2021-03-10 03:09:35',NULL),(203,1,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:09:35','2021-03-10 03:09:35',NULL),(204,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:09:58','2021-03-10 03:09:58',NULL),(205,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:09:59','2021-03-10 03:09:59',NULL),(206,1,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:10:00','2021-03-10 03:10:00',NULL),(207,1,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:10:00','2021-03-10 03:10:00',NULL),(208,1,12,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:10:24','2021-03-10 03:10:24',NULL),(209,1,1,NULL,'GET',NULL,1,0,1,0,NULL,'2021-03-10 03:14:09','2021-03-10 03:14:09',NULL),(210,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:14:16','2021-03-10 03:14:16',NULL),(211,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:14:16','2021-03-10 03:14:16',NULL),(212,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:14:31','2021-03-10 03:14:31',NULL),(213,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:14:32','2021-03-10 03:14:32',NULL),(214,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:14:59','2021-03-10 03:14:59',NULL),(215,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:15:00','2021-03-10 03:15:00',NULL),(216,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:16:12','2021-03-10 03:16:12',NULL),(217,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:16:12','2021-03-10 03:16:12',NULL),(218,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:25:04','2021-03-10 03:25:04',NULL),(219,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:25:05','2021-03-10 03:25:05',NULL),(220,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:25:20','2021-03-10 03:25:20',NULL),(221,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:25:21','2021-03-10 03:25:21',NULL),(222,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:28:29','2021-03-10 03:28:29',NULL),(223,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:28:30','2021-03-10 03:28:30',NULL),(224,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:29:45','2021-03-10 03:29:45',NULL),(225,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:29:47','2021-03-10 03:29:47',NULL),(226,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:30:00','2021-03-10 03:30:00',NULL),(227,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:30:01','2021-03-10 03:30:01',NULL),(228,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:30:20','2021-03-10 03:30:20',NULL),(229,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:30:22','2021-03-10 03:30:22',NULL),(230,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:30:31','2021-03-10 03:30:31',NULL),(231,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:30:32','2021-03-10 03:30:32',NULL),(232,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:30:40','2021-03-10 03:30:40',NULL),(233,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:30:40','2021-03-10 03:30:40',NULL),(234,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:31:33','2021-03-10 03:31:33',NULL),(235,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:31:34','2021-03-10 03:31:34',NULL),(236,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:31:58','2021-03-10 03:31:58',NULL),(237,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:31:59','2021-03-10 03:31:59',NULL),(238,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:32:27','2021-03-10 03:32:27',NULL),(239,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:32:28','2021-03-10 03:32:28',NULL),(240,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:32:48','2021-03-10 03:32:48',NULL),(241,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:32:49','2021-03-10 03:32:49',NULL),(242,1,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:33:02','2021-03-10 03:33:02',NULL),(243,1,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:33:02','2021-03-10 03:33:02',NULL),(244,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:34:19','2021-03-10 03:34:19',NULL),(245,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:34:20','2021-03-10 03:34:20',NULL),(246,1,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:34:24','2021-03-10 03:34:24',NULL),(247,1,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:34:24','2021-03-10 03:34:24',NULL),(248,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:34:38','2021-03-10 03:34:38',NULL),(249,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:34:39','2021-03-10 03:34:39',NULL),(250,1,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:34:42','2021-03-10 03:34:42',NULL),(251,1,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:34:43','2021-03-10 03:34:43',NULL),(252,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:34:50','2021-03-10 03:34:50',NULL),(253,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:34:51','2021-03-10 03:34:51',NULL),(254,1,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:34:54','2021-03-10 03:34:54',NULL),(255,1,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:34:54','2021-03-10 03:34:54',NULL),(256,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:35:14','2021-03-10 03:35:14',NULL),(257,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:35:15','2021-03-10 03:35:15',NULL),(258,1,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:35:19','2021-03-10 03:35:19',NULL),(259,1,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:35:19','2021-03-10 03:35:19',NULL),(260,1,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:35:30','2021-03-10 03:35:30',NULL),(261,1,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:35:30','2021-03-10 03:35:30',NULL),(262,1,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:35:34','2021-03-10 03:35:34',NULL),(263,1,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-10 03:35:34','2021-03-10 03:35:34',NULL),(264,2,1,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 04:37:33','2021-03-11 04:37:33',NULL),(265,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 04:38:02','2021-03-11 04:38:02',NULL),(266,2,8,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 04:38:02','2021-03-11 04:38:02',NULL),(267,2,8,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 04:58:24','2021-03-11 04:58:24',NULL),(268,2,8,NULL,'POST',NULL,0,0,0,0,NULL,'2021-03-11 04:58:33','2021-03-11 04:58:33',NULL),(269,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 04:58:34','2021-03-11 04:58:34',NULL),(270,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:04:29','2021-03-11 05:04:29',NULL),(271,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:05:12','2021-03-11 05:05:12',NULL),(272,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:05:12','2021-03-11 05:05:12',NULL),(273,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:05:39','2021-03-11 05:05:39',NULL),(274,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:05:39','2021-03-11 05:05:39',NULL),(275,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:07:05','2021-03-11 05:07:05',NULL),(276,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:07:05','2021-03-11 05:07:05',NULL),(277,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:07:39','2021-03-11 05:07:39',NULL),(278,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:07:39','2021-03-11 05:07:39',NULL),(279,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:08:04','2021-03-11 05:08:04',NULL),(280,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:08:04','2021-03-11 05:08:04',NULL),(281,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:08:32','2021-03-11 05:08:32',NULL),(282,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:08:32','2021-03-11 05:08:32',NULL),(283,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:08:45','2021-03-11 05:08:45',NULL),(284,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:08:45','2021-03-11 05:08:45',NULL),(285,3,1,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:09:30','2021-03-11 05:09:30',NULL),(286,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:10:28','2021-03-11 05:10:28',NULL),(287,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:10:28','2021-03-11 05:10:28',NULL),(288,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:21:34','2021-03-11 05:21:34',NULL),(289,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:22:15','2021-03-11 05:22:15',NULL),(290,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:22:15','2021-03-11 05:22:15',NULL),(291,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:22:53','2021-03-11 05:22:53',NULL),(292,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:22:53','2021-03-11 05:22:53',NULL),(293,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:23:48','2021-03-11 05:23:48',NULL),(294,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:23:49','2021-03-11 05:23:49',NULL),(295,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:24:03','2021-03-11 05:24:03',NULL),(296,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:24:03','2021-03-11 05:24:03',NULL),(297,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:24:03','2021-03-11 05:24:03',NULL),(298,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:24:04','2021-03-11 05:24:04',NULL),(299,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:24:05','2021-03-11 05:24:05',NULL),(300,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:24:05','2021-03-11 05:24:05',NULL),(301,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:24:27','2021-03-11 05:24:27',NULL),(302,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:24:27','2021-03-11 05:24:27',NULL),(303,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:24:28','2021-03-11 05:24:28',NULL),(304,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:24:28','2021-03-11 05:24:28',NULL),(305,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:24:45','2021-03-11 05:24:45',NULL),(306,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:24:45','2021-03-11 05:24:45',NULL),(307,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:24:46','2021-03-11 05:24:46',NULL),(308,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:24:46','2021-03-11 05:24:46',NULL),(309,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:26:46','2021-03-11 05:26:46',NULL),(310,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:26:46','2021-03-11 05:26:46',NULL),(311,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:26:47','2021-03-11 05:26:47',NULL),(312,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:26:47','2021-03-11 05:26:47',NULL),(313,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:27:40','2021-03-11 05:27:40',NULL),(314,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:27:41','2021-03-11 05:27:41',NULL),(315,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:27:42','2021-03-11 05:27:42',NULL),(316,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:27:42','2021-03-11 05:27:42',NULL),(317,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:28:10','2021-03-11 05:28:10',NULL),(318,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:28:10','2021-03-11 05:28:10',NULL),(319,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:28:11','2021-03-11 05:28:11',NULL),(320,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:28:11','2021-03-11 05:28:11',NULL),(321,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:28:25','2021-03-11 05:28:25',NULL),(322,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:28:26','2021-03-11 05:28:26',NULL),(323,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:28:27','2021-03-11 05:28:27',NULL),(324,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:28:27','2021-03-11 05:28:27',NULL),(325,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:28:52','2021-03-11 05:28:52',NULL),(326,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:29:00','2021-03-11 05:29:00',NULL),(327,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:29:00','2021-03-11 05:29:00',NULL),(328,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:29:01','2021-03-11 05:29:01',NULL),(329,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:29:02','2021-03-11 05:29:02',NULL),(330,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:29:51','2021-03-11 05:29:51',NULL),(331,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:29:52','2021-03-11 05:29:52',NULL),(332,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:29:53','2021-03-11 05:29:53',NULL),(333,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:29:53','2021-03-11 05:29:53',NULL),(334,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:30:56','2021-03-11 05:30:56',NULL),(335,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:30:56','2021-03-11 05:30:56',NULL),(336,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:30:57','2021-03-11 05:30:57',NULL),(337,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:30:57','2021-03-11 05:30:57',NULL),(338,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:31:17','2021-03-11 05:31:17',NULL),(339,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:31:23','2021-03-11 05:31:23',NULL),(340,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:31:23','2021-03-11 05:31:23',NULL),(341,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:31:24','2021-03-11 05:31:24',NULL),(342,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:31:24','2021-03-11 05:31:24',NULL),(343,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:32:06','2021-03-11 05:32:06',NULL),(344,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:32:06','2021-03-11 05:32:06',NULL),(345,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:32:07','2021-03-11 05:32:07',NULL),(346,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:32:08','2021-03-11 05:32:08',NULL),(347,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:32:43','2021-03-11 05:32:43',NULL),(348,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:32:43','2021-03-11 05:32:43',NULL),(349,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:32:44','2021-03-11 05:32:44',NULL),(350,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:32:45','2021-03-11 05:32:45',NULL),(351,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:32:52','2021-03-11 05:32:52',NULL),(352,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:32:52','2021-03-11 05:32:52',NULL),(353,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:32:54','2021-03-11 05:32:54',NULL),(354,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:32:54','2021-03-11 05:32:54',NULL),(355,2,14,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:32:56','2021-03-11 05:32:56',NULL),(356,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:32:56','2021-03-11 05:32:56',NULL),(357,2,15,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:32:57','2021-03-11 05:32:57',NULL),(358,2,16,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:32:57','2021-03-11 05:32:57',NULL),(359,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:32:57','2021-03-11 05:32:57',NULL),(360,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:32:57','2021-03-11 05:32:57',NULL),(361,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:32:59','2021-03-11 05:32:59',NULL),(362,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:32:59','2021-03-11 05:32:59',NULL),(363,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:33:00','2021-03-11 05:33:00',NULL),(364,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:33:00','2021-03-11 05:33:00',NULL),(365,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:34:30','2021-03-11 05:34:30',NULL),(366,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:34:30','2021-03-11 05:34:30',NULL),(367,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:34:31','2021-03-11 05:34:31',NULL),(368,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:34:31','2021-03-11 05:34:31',NULL),(369,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:38:58','2021-03-11 05:38:58',NULL),(370,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:38:59','2021-03-11 05:38:59',NULL),(371,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:39:06','2021-03-11 05:39:06',NULL),(372,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:39:06','2021-03-11 05:39:06',NULL),(373,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:40:53','2021-03-11 05:40:53',NULL),(374,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:40:53','2021-03-11 05:40:53',NULL),(375,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:41:38','2021-03-11 05:41:38',NULL),(376,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:41:38','2021-03-11 05:41:38',NULL),(377,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:42:26','2021-03-11 05:42:26',NULL),(378,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:42:27','2021-03-11 05:42:27',NULL),(379,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:42:28','2021-03-11 05:42:28',NULL),(380,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:42:29','2021-03-11 05:42:29',NULL),(381,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:42:54','2021-03-11 05:42:54',NULL),(382,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:42:54','2021-03-11 05:42:54',NULL),(383,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:42:55','2021-03-11 05:42:55',NULL),(384,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:42:55','2021-03-11 05:42:55',NULL),(385,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:44:35','2021-03-11 05:44:35',NULL),(386,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:44:36','2021-03-11 05:44:36',NULL),(387,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:44:37','2021-03-11 05:44:37',NULL),(388,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:44:37','2021-03-11 05:44:37',NULL),(389,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:45:21','2021-03-11 05:45:21',NULL),(390,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:45:21','2021-03-11 05:45:21',NULL),(391,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:45:22','2021-03-11 05:45:22',NULL),(392,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:45:22','2021-03-11 05:45:22',NULL),(393,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:45:34','2021-03-11 05:45:34',NULL),(394,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:45:34','2021-03-11 05:45:34',NULL),(395,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:45:35','2021-03-11 05:45:35',NULL),(396,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:45:35','2021-03-11 05:45:35',NULL),(397,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:46:05','2021-03-11 05:46:05',NULL),(398,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:46:05','2021-03-11 05:46:05',NULL),(399,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:46:06','2021-03-11 05:46:06',NULL),(400,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:46:06','2021-03-11 05:46:06',NULL),(401,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:46:25','2021-03-11 05:46:25',NULL),(402,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:46:25','2021-03-11 05:46:25',NULL),(403,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:46:26','2021-03-11 05:46:26',NULL),(404,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:46:26','2021-03-11 05:46:26',NULL),(405,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:46:33','2021-03-11 05:46:33',NULL),(406,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:46:33','2021-03-11 05:46:33',NULL),(407,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:46:34','2021-03-11 05:46:34',NULL),(408,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:46:34','2021-03-11 05:46:34',NULL),(409,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:46:45','2021-03-11 05:46:45',NULL),(410,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:46:45','2021-03-11 05:46:45',NULL),(411,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:46:46','2021-03-11 05:46:46',NULL),(412,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:46:46','2021-03-11 05:46:46',NULL),(413,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:47:01','2021-03-11 05:47:01',NULL),(414,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:47:02','2021-03-11 05:47:02',NULL),(415,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:47:03','2021-03-11 05:47:03',NULL),(416,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:47:03','2021-03-11 05:47:03',NULL),(417,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:47:21','2021-03-11 05:47:21',NULL),(418,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:47:21','2021-03-11 05:47:21',NULL),(419,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:47:22','2021-03-11 05:47:22',NULL),(420,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:47:22','2021-03-11 05:47:22',NULL),(421,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:47:50','2021-03-11 05:47:50',NULL),(422,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:47:50','2021-03-11 05:47:50',NULL),(423,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:47:51','2021-03-11 05:47:51',NULL),(424,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:47:51','2021-03-11 05:47:51',NULL),(425,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:48:01','2021-03-11 05:48:01',NULL),(426,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:48:01','2021-03-11 05:48:01',NULL),(427,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:48:02','2021-03-11 05:48:02',NULL),(428,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:48:02','2021-03-11 05:48:02',NULL),(429,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:48:12','2021-03-11 05:48:12',NULL),(430,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:48:12','2021-03-11 05:48:12',NULL),(431,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:48:13','2021-03-11 05:48:13',NULL),(432,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:48:14','2021-03-11 05:48:14',NULL),(433,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:48:29','2021-03-11 05:48:29',NULL),(434,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:48:30','2021-03-11 05:48:30',NULL),(435,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:48:31','2021-03-11 05:48:31',NULL),(436,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:48:31','2021-03-11 05:48:31',NULL),(437,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:49:09','2021-03-11 05:49:09',NULL),(438,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:49:10','2021-03-11 05:49:10',NULL),(439,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:51:34','2021-03-11 05:51:34',NULL),(440,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:51:35','2021-03-11 05:51:35',NULL),(441,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:51:52','2021-03-11 05:51:52',NULL),(442,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:51:52','2021-03-11 05:51:52',NULL),(443,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:51:58','2021-03-11 05:51:58',NULL),(444,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:51:58','2021-03-11 05:51:58',NULL),(445,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:52:15','2021-03-11 05:52:15',NULL),(446,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:52:15','2021-03-11 05:52:15',NULL),(447,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:52:25','2021-03-11 05:52:25',NULL),(448,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:52:26','2021-03-11 05:52:26',NULL),(449,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:52:35','2021-03-11 05:52:35',NULL),(450,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:52:35','2021-03-11 05:52:35',NULL),(451,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:52:47','2021-03-11 05:52:47',NULL),(452,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:52:47','2021-03-11 05:52:47',NULL),(453,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:53:58','2021-03-11 05:53:58',NULL),(454,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:53:59','2021-03-11 05:53:59',NULL),(455,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:54:31','2021-03-11 05:54:31',NULL),(456,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:54:31','2021-03-11 05:54:31',NULL),(457,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:54:50','2021-03-11 05:54:50',NULL),(458,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:54:51','2021-03-11 05:54:51',NULL),(459,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:55:05','2021-03-11 05:55:05',NULL),(460,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 05:55:05','2021-03-11 05:55:05',NULL),(461,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 05:55:14','2021-03-11 05:55:14',NULL),(462,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:02:40','2021-03-11 06:02:40',NULL),(463,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:02:41','2021-03-11 06:02:41',NULL),(464,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:02:45','2021-03-11 06:02:45',NULL),(465,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:02:52','2021-03-11 06:02:52',NULL),(466,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:02:52','2021-03-11 06:02:52',NULL),(467,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:03:32','2021-03-11 06:03:32',NULL),(468,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:03:32','2021-03-11 06:03:32',NULL),(469,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:03:33','2021-03-11 06:03:33',NULL),(470,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:03:33','2021-03-11 06:03:33',NULL),(471,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:03:41','2021-03-11 06:03:41',NULL),(472,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:04:23','2021-03-11 06:04:23',NULL),(473,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:04:24','2021-03-11 06:04:24',NULL),(474,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:04:26','2021-03-11 06:04:26',NULL),(475,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:04:26','2021-03-11 06:04:26',NULL),(476,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:04:31','2021-03-11 06:04:31',NULL),(477,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:05:59','2021-03-11 06:05:59',NULL),(478,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:05:59','2021-03-11 06:05:59',NULL),(479,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:06:00','2021-03-11 06:06:00',NULL),(480,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:06:00','2021-03-11 06:06:00',NULL),(481,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:06:04','2021-03-11 06:06:04',NULL),(482,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:06:34','2021-03-11 06:06:34',NULL),(483,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:06:34','2021-03-11 06:06:34',NULL),(484,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:06:35','2021-03-11 06:06:35',NULL),(485,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:06:35','2021-03-11 06:06:35',NULL),(486,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:06:39','2021-03-11 06:06:39',NULL),(487,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:07:19','2021-03-11 06:07:19',NULL),(488,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:07:20','2021-03-11 06:07:20',NULL),(489,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:08:00','2021-03-11 06:08:00',NULL),(490,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:08:04','2021-03-11 06:08:04',NULL),(491,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:08:17','2021-03-11 06:08:17',NULL),(492,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:08:17','2021-03-11 06:08:17',NULL),(493,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:08:21','2021-03-11 06:08:21',NULL),(494,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:08:29','2021-03-11 06:08:29',NULL),(495,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:08:31','2021-03-11 06:08:31',NULL),(496,2,1,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:08:46','2021-03-11 06:08:46',NULL),(497,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:08:53','2021-03-11 06:08:53',NULL),(498,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:08:53','2021-03-11 06:08:53',NULL),(499,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:08:56','2021-03-11 06:08:56',NULL),(500,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:08:56','2021-03-11 06:08:56',NULL),(501,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:09:04','2021-03-11 06:09:04',NULL),(502,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:09:04','2021-03-11 06:09:04',NULL),(503,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:09:05','2021-03-11 06:09:05',NULL),(504,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:09:05','2021-03-11 06:09:05',NULL),(505,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:09:09','2021-03-11 06:09:09',NULL),(506,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:16:42','2021-03-11 06:16:42',NULL),(507,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:16:42','2021-03-11 06:16:42',NULL),(508,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:16:43','2021-03-11 06:16:43',NULL),(509,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:16:43','2021-03-11 06:16:43',NULL),(510,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:25:20','2021-03-11 06:25:20',NULL),(511,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:25:20','2021-03-11 06:25:20',NULL),(512,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:25:21','2021-03-11 06:25:21',NULL),(513,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:25:21','2021-03-11 06:25:21',NULL),(514,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:25:26','2021-03-11 06:25:26',NULL),(515,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:32:04','2021-03-11 06:32:04',NULL),(516,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:32:11','2021-03-11 06:32:11',NULL),(517,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:32:17','2021-03-11 06:32:17',NULL),(518,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:33:38','2021-03-11 06:33:38',NULL),(519,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:33:39','2021-03-11 06:33:39',NULL),(520,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:33:39','2021-03-11 06:33:39',NULL),(521,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:33:40','2021-03-11 06:33:40',NULL),(522,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:33:40','2021-03-11 06:33:40',NULL),(523,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:33:44','2021-03-11 06:33:44',NULL),(524,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:33:47','2021-03-11 06:33:47',NULL),(525,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:33:49','2021-03-11 06:33:49',NULL),(526,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:33:49','2021-03-11 06:33:49',NULL),(527,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:33:50','2021-03-11 06:33:50',NULL),(528,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:33:50','2021-03-11 06:33:50',NULL),(529,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:33:51','2021-03-11 06:33:51',NULL),(530,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:33:53','2021-03-11 06:33:53',NULL),(531,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:39:00','2021-03-11 06:39:00',NULL),(532,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:39:00','2021-03-11 06:39:00',NULL),(533,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:39:01','2021-03-11 06:39:01',NULL),(534,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:39:01','2021-03-11 06:39:01',NULL),(535,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:39:03','2021-03-11 06:39:03',NULL),(536,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:40:15','2021-03-11 06:40:15',NULL),(537,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:40:16','2021-03-11 06:40:16',NULL),(538,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:40:16','2021-03-11 06:40:16',NULL),(539,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:40:16','2021-03-11 06:40:16',NULL),(540,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:40:23','2021-03-11 06:40:23',NULL),(541,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:41:44','2021-03-11 06:41:44',NULL),(542,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:41:44','2021-03-11 06:41:44',NULL),(543,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:41:45','2021-03-11 06:41:45',NULL),(544,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:41:45','2021-03-11 06:41:45',NULL),(545,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:41:47','2021-03-11 06:41:47',NULL),(546,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:43:24','2021-03-11 06:43:24',NULL),(547,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:43:24','2021-03-11 06:43:24',NULL),(548,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:43:25','2021-03-11 06:43:25',NULL),(549,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:43:25','2021-03-11 06:43:25',NULL),(550,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:43:27','2021-03-11 06:43:27',NULL),(551,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:44:15','2021-03-11 06:44:15',NULL),(552,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:44:20','2021-03-11 06:44:20',NULL),(553,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:45:13','2021-03-11 06:45:13',NULL),(554,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:45:13','2021-03-11 06:45:13',NULL),(555,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:45:21','2021-03-11 06:45:21',NULL),(556,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:45:21','2021-03-11 06:45:21',NULL),(557,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:45:24','2021-03-11 06:45:24',NULL),(558,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:45:24','2021-03-11 06:45:24',NULL),(559,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:45:24','2021-03-11 06:45:24',NULL),(560,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:45:44','2021-03-11 06:45:44',NULL),(561,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:45:44','2021-03-11 06:45:44',NULL),(562,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:45:45','2021-03-11 06:45:45',NULL),(563,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:45:45','2021-03-11 06:45:45',NULL),(564,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:45:48','2021-03-11 06:45:48',NULL),(565,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:46:12','2021-03-11 06:46:12',NULL),(566,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:46:14','2021-03-11 06:46:14',NULL),(567,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:46:22','2021-03-11 06:46:22',NULL),(568,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:46:22','2021-03-11 06:46:22',NULL),(569,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:46:23','2021-03-11 06:46:23',NULL),(570,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:46:23','2021-03-11 06:46:23',NULL),(571,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:46:24','2021-03-11 06:46:24',NULL),(572,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:48:44','2021-03-11 06:48:44',NULL),(573,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:48:44','2021-03-11 06:48:44',NULL),(574,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:48:45','2021-03-11 06:48:45',NULL),(575,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:48:45','2021-03-11 06:48:45',NULL),(576,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:48:48','2021-03-11 06:48:48',NULL),(577,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:50:30','2021-03-11 06:50:30',NULL),(578,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:50:35','2021-03-11 06:50:35',NULL),(579,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:50:37','2021-03-11 06:50:37',NULL),(580,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:52:24','2021-03-11 06:52:24',NULL),(581,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:52:24','2021-03-11 06:52:24',NULL),(582,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:52:24','2021-03-11 06:52:24',NULL),(583,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:52:25','2021-03-11 06:52:25',NULL),(584,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:52:27','2021-03-11 06:52:27',NULL),(585,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:52:37','2021-03-11 06:52:37',NULL),(586,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:52:40','2021-03-11 06:52:40',NULL),(587,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:53:44','2021-03-11 06:53:44',NULL),(588,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:53:44','2021-03-11 06:53:44',NULL),(589,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:53:45','2021-03-11 06:53:45',NULL),(590,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:53:45','2021-03-11 06:53:45',NULL),(591,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:53:47','2021-03-11 06:53:47',NULL),(592,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:53:50','2021-03-11 06:53:50',NULL),(593,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:53:52','2021-03-11 06:53:52',NULL),(594,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:53:53','2021-03-11 06:53:53',NULL),(595,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:53:53','2021-03-11 06:53:53',NULL),(596,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:53:54','2021-03-11 06:53:54',NULL),(597,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:53:55','2021-03-11 06:53:55',NULL),(598,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:53:55','2021-03-11 06:53:55',NULL),(599,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:53:56','2021-03-11 06:53:56',NULL),(600,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:53:58','2021-03-11 06:53:58',NULL),(601,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:54:00','2021-03-11 06:54:00',NULL),(602,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:54:08','2021-03-11 06:54:08',NULL),(603,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:54:08','2021-03-11 06:54:08',NULL),(604,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:54:09','2021-03-11 06:54:09',NULL),(605,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:54:09','2021-03-11 06:54:09',NULL),(606,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:54:10','2021-03-11 06:54:10',NULL),(607,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:56:00','2021-03-11 06:56:00',NULL),(608,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:56:00','2021-03-11 06:56:00',NULL),(609,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:56:01','2021-03-11 06:56:01',NULL),(610,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:56:01','2021-03-11 06:56:01',NULL),(611,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:56:03','2021-03-11 06:56:03',NULL),(612,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:56:06','2021-03-11 06:56:06',NULL),(613,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:56:08','2021-03-11 06:56:08',NULL),(614,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:56:10','2021-03-11 06:56:10',NULL),(615,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:56:10','2021-03-11 06:56:10',NULL),(616,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:56:11','2021-03-11 06:56:11',NULL),(617,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:56:12','2021-03-11 06:56:12',NULL),(618,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:56:12','2021-03-11 06:56:12',NULL),(619,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:56:12','2021-03-11 06:56:12',NULL),(620,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:56:13','2021-03-11 06:56:13',NULL),(621,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:56:13','2021-03-11 06:56:13',NULL),(622,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:56:14','2021-03-11 06:56:14',NULL),(623,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:56:14','2021-03-11 06:56:14',NULL),(624,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:56:16','2021-03-11 06:56:16',NULL),(625,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:56:18','2021-03-11 06:56:18',NULL),(626,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:56:57','2021-03-11 06:56:57',NULL),(627,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:56:58','2021-03-11 06:56:58',NULL),(628,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:56:58','2021-03-11 06:56:58',NULL),(629,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:56:58','2021-03-11 06:56:58',NULL),(630,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:57:01','2021-03-11 06:57:01',NULL),(631,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:57:07','2021-03-11 06:57:07',NULL),(632,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:57:10','2021-03-11 06:57:10',NULL),(633,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:58:08','2021-03-11 06:58:08',NULL),(634,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:58:08','2021-03-11 06:58:08',NULL),(635,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:58:09','2021-03-11 06:58:09',NULL),(636,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 06:58:09','2021-03-11 06:58:09',NULL),(637,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:58:18','2021-03-11 06:58:18',NULL),(638,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:58:38','2021-03-11 06:58:38',NULL),(639,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:58:40','2021-03-11 06:58:40',NULL),(640,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 06:58:49','2021-03-11 06:58:49',NULL),(641,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:15:14','2021-03-11 07:15:14',NULL),(642,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:15:14','2021-03-11 07:15:14',NULL),(643,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:15:18','2021-03-11 07:15:18',NULL),(644,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:15:39','2021-03-11 07:15:39',NULL),(645,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:15:40','2021-03-11 07:15:40',NULL),(646,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:15:43','2021-03-11 07:15:43',NULL),(647,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:16:05','2021-03-11 07:16:05',NULL),(648,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:16:05','2021-03-11 07:16:05',NULL),(649,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:16:15','2021-03-11 07:16:15',NULL),(650,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:16:15','2021-03-11 07:16:15',NULL),(651,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:16:16','2021-03-11 07:16:16',NULL),(652,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:16:16','2021-03-11 07:16:16',NULL),(653,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:16:18','2021-03-11 07:16:18',NULL),(654,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:17:01','2021-03-11 07:17:01',NULL),(655,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:17:01','2021-03-11 07:17:01',NULL),(656,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:17:02','2021-03-11 07:17:02',NULL),(657,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:17:02','2021-03-11 07:17:02',NULL),(658,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:17:04','2021-03-11 07:17:04',NULL),(659,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:18:08','2021-03-11 07:18:08',NULL),(660,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:18:08','2021-03-11 07:18:08',NULL),(661,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:18:09','2021-03-11 07:18:09',NULL),(662,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:18:10','2021-03-11 07:18:10',NULL),(663,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:18:11','2021-03-11 07:18:11',NULL),(664,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:18:32','2021-03-11 07:18:32',NULL),(665,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:18:34','2021-03-11 07:18:34',NULL),(666,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:19:43','2021-03-11 07:19:43',NULL),(667,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:19:43','2021-03-11 07:19:43',NULL),(668,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:19:44','2021-03-11 07:19:44',NULL),(669,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:19:44','2021-03-11 07:19:44',NULL),(670,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:20:49','2021-03-11 07:20:49',NULL),(671,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:20:50','2021-03-11 07:20:50',NULL),(672,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:20:51','2021-03-11 07:20:51',NULL),(673,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:20:51','2021-03-11 07:20:51',NULL),(674,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:20:54','2021-03-11 07:20:54',NULL),(675,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:21:01','2021-03-11 07:21:01',NULL),(676,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:21:03','2021-03-11 07:21:03',NULL),(677,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:21:05','2021-03-11 07:21:05',NULL),(678,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:21:06','2021-03-11 07:21:06',NULL),(679,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:21:07','2021-03-11 07:21:07',NULL),(680,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:21:07','2021-03-11 07:21:07',NULL),(681,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:21:09','2021-03-11 07:21:09',NULL),(682,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:21:34','2021-03-11 07:21:34',NULL),(683,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:21:35','2021-03-11 07:21:35',NULL),(684,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:21:36','2021-03-11 07:21:36',NULL),(685,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:21:36','2021-03-11 07:21:36',NULL),(686,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:21:38','2021-03-11 07:21:38',NULL),(687,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:21:41','2021-03-11 07:21:41',NULL),(688,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:21:44','2021-03-11 07:21:44',NULL),(689,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:21:46','2021-03-11 07:21:46',NULL),(690,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:22:16','2021-03-11 07:22:16',NULL),(691,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:22:17','2021-03-11 07:22:17',NULL),(692,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:22:18','2021-03-11 07:22:18',NULL),(693,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:22:18','2021-03-11 07:22:18',NULL),(694,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:22:20','2021-03-11 07:22:20',NULL),(695,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:22:26','2021-03-11 07:22:26',NULL),(696,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:22:29','2021-03-11 07:22:29',NULL),(697,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:22:49','2021-03-11 07:22:49',NULL),(698,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:22:49','2021-03-11 07:22:49',NULL),(699,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:22:50','2021-03-11 07:22:50',NULL),(700,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:22:51','2021-03-11 07:22:51',NULL),(701,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:22:52','2021-03-11 07:22:52',NULL),(702,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:22:57','2021-03-11 07:22:57',NULL),(703,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:22:58','2021-03-11 07:22:58',NULL),(704,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:23:01','2021-03-11 07:23:01',NULL),(705,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:23:01','2021-03-11 07:23:01',NULL),(706,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:23:02','2021-03-11 07:23:02',NULL),(707,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:23:02','2021-03-11 07:23:02',NULL),(708,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:23:10','2021-03-11 07:23:10',NULL),(709,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:23:10','2021-03-11 07:23:10',NULL),(710,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:23:11','2021-03-11 07:23:11',NULL),(711,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:23:11','2021-03-11 07:23:11',NULL),(712,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:23:13','2021-03-11 07:23:13',NULL),(713,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:24:20','2021-03-11 07:24:20',NULL),(714,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:24:24','2021-03-11 07:24:24',NULL),(715,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:24:26','2021-03-11 07:24:26',NULL),(716,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:24:29','2021-03-11 07:24:29',NULL),(717,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:24:41','2021-03-11 07:24:41',NULL),(718,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:24:41','2021-03-11 07:24:41',NULL),(719,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:24:42','2021-03-11 07:24:42',NULL),(720,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:24:42','2021-03-11 07:24:42',NULL),(721,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:24:43','2021-03-11 07:24:43',NULL),(722,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:24:46','2021-03-11 07:24:46',NULL),(723,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:24:47','2021-03-11 07:24:47',NULL),(724,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:25:24','2021-03-11 07:25:24',NULL),(725,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:25:24','2021-03-11 07:25:24',NULL),(726,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:25:25','2021-03-11 07:25:25',NULL),(727,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:25:26','2021-03-11 07:25:26',NULL),(728,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:25:27','2021-03-11 07:25:27',NULL),(729,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:25:31','2021-03-11 07:25:31',NULL),(730,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:25:34','2021-03-11 07:25:34',NULL),(731,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:25:39','2021-03-11 07:25:39',NULL),(732,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:25:50','2021-03-11 07:25:50',NULL),(733,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:25:51','2021-03-11 07:25:51',NULL),(734,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:25:52','2021-03-11 07:25:52',NULL),(735,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:25:52','2021-03-11 07:25:52',NULL),(736,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:25:53','2021-03-11 07:25:53',NULL),(737,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:25:59','2021-03-11 07:25:59',NULL),(738,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:26:02','2021-03-11 07:26:02',NULL),(739,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:26:07','2021-03-11 07:26:07',NULL),(740,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:26:14','2021-03-11 07:26:14',NULL),(741,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:26:14','2021-03-11 07:26:14',NULL),(742,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:26:15','2021-03-11 07:26:15',NULL),(743,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:26:15','2021-03-11 07:26:15',NULL),(744,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:26:17','2021-03-11 07:26:17',NULL),(745,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:26:21','2021-03-11 07:26:21',NULL),(746,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:26:24','2021-03-11 07:26:24',NULL),(747,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:26:29','2021-03-11 07:26:29',NULL),(748,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:31:52','2021-03-11 07:31:52',NULL),(749,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:31:52','2021-03-11 07:31:52',NULL),(750,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:31:53','2021-03-11 07:31:53',NULL),(751,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:31:53','2021-03-11 07:31:53',NULL),(752,2,18,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:31:59','2021-03-11 07:31:59',NULL),(753,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:33:32','2021-03-11 07:33:32',NULL),(754,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:33:33','2021-03-11 07:33:33',NULL),(755,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:33:34','2021-03-11 07:33:34',NULL),(756,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:33:34','2021-03-11 07:33:34',NULL),(757,2,19,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:33:40','2021-03-11 07:33:40',NULL),(758,2,1,NULL,'GET',NULL,1,0,1,0,NULL,'2021-03-11 07:34:03','2021-03-11 07:34:03',NULL),(759,2,1,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:35:24','2021-03-11 07:35:24',NULL),(760,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:35:42','2021-03-11 07:35:42',NULL),(761,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:35:43','2021-03-11 07:35:43',NULL),(762,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:35:50','2021-03-11 07:35:50',NULL),(763,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:35:51','2021-03-11 07:35:51',NULL),(764,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:35:55','2021-03-11 07:35:55',NULL),(765,2,17,NULL,'POST',NULL,0,0,1,0,NULL,'2021-03-11 07:36:13','2021-03-11 07:36:13',NULL),(766,2,20,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:36:15','2021-03-11 07:36:15',NULL),(767,2,1,NULL,'GET',NULL,1,0,1,0,NULL,'2021-03-11 07:36:19','2021-03-11 07:36:19',NULL),(768,2,1,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:38:10','2021-03-11 07:38:10',NULL),(769,2,21,NULL,'GET',NULL,1,0,1,0,NULL,'2021-03-11 07:38:33','2021-03-11 07:38:33',NULL),(770,2,21,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:40:51','2021-03-11 07:40:51',NULL),(771,2,13,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:40:54','2021-03-11 07:40:54',NULL),(772,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:40:55','2021-03-11 07:40:55',NULL),(773,2,10,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:40:56','2021-03-11 07:40:56',NULL),(774,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:40:56','2021-03-11 07:40:56',NULL),(775,2,20,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:40:58','2021-03-11 07:40:58',NULL),(776,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:40:59','2021-03-11 07:40:59',NULL),(777,2,20,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:41:07','2021-03-11 07:41:07',NULL),(778,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:41:08','2021-03-11 07:41:08',NULL),(779,2,21,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:41:20','2021-03-11 07:41:20',NULL),(780,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:41:21','2021-03-11 07:41:21',NULL),(781,2,21,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:41:27','2021-03-11 07:41:27',NULL),(782,2,11,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:41:28','2021-03-11 07:41:28',NULL),(783,2,21,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:41:57','2021-03-11 07:41:57',NULL),(784,2,21,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:42:19','2021-03-11 07:42:19',NULL),(785,2,1,NULL,'GET',NULL,1,0,1,0,NULL,'2021-03-11 07:43:01','2021-03-11 07:43:01',NULL),(786,2,7,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:43:33','2021-03-11 07:43:33',NULL),(787,2,9,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 07:43:34','2021-03-11 07:43:34',NULL),(788,2,22,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 08:14:39','2021-03-11 08:14:39',NULL),(789,2,23,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 08:33:45','2021-03-11 08:33:45',NULL),(790,2,22,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 08:42:10','2021-03-11 08:42:10',NULL),(791,2,22,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 08:42:45','2021-03-11 08:42:45',NULL),(792,2,22,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 08:43:38','2021-03-11 08:43:38',NULL),(793,4,8,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 22:54:15','2021-03-11 22:54:15',NULL),(794,4,8,NULL,'POST',NULL,0,0,0,0,NULL,'2021-03-11 22:54:25','2021-03-11 22:54:25',NULL),(795,4,24,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 23:18:03','2021-03-11 23:18:03',NULL),(796,4,25,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 23:24:04','2021-03-11 23:24:04',NULL),(797,4,25,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 23:30:04','2021-03-11 23:30:04',NULL),(798,4,26,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 23:32:01','2021-03-11 23:32:01',NULL),(799,4,27,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 23:34:48','2021-03-11 23:34:48',NULL),(800,4,28,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 23:35:16','2021-03-11 23:35:16',NULL),(801,4,12,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 23:35:45','2021-03-11 23:35:45',NULL),(802,4,3,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-11 23:36:02','2021-03-11 23:36:02',NULL),(803,5,1,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-12 00:53:01','2021-03-12 00:53:01',NULL),(804,5,1,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-12 00:57:30','2021-03-12 00:57:30',NULL),(805,5,1,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-12 00:58:19','2021-03-12 00:58:19',NULL),(806,5,1,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-12 01:00:22','2021-03-12 01:00:22',NULL),(807,5,29,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-12 01:06:45','2021-03-12 01:06:45',NULL),(808,5,1,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-12 01:07:03','2021-03-12 01:07:03',NULL),(809,5,1,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-12 01:09:16','2021-03-12 01:09:16',NULL),(810,5,30,NULL,'GET',NULL,1,0,1,0,NULL,'2021-03-12 01:09:31','2021-03-12 01:09:31',NULL),(811,5,30,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-12 01:09:40','2021-03-12 01:09:40',NULL),(812,5,1,NULL,'GET',NULL,1,0,1,0,NULL,'2021-03-12 01:09:50','2021-03-12 01:09:50',NULL),(813,6,31,NULL,'GET',NULL,1,0,1,0,NULL,'2021-03-12 01:52:00','2021-03-12 01:52:00',NULL),(814,6,32,NULL,'GET',NULL,1,0,1,0,NULL,'2021-03-12 01:52:09','2021-03-12 01:52:09',NULL),(815,6,33,NULL,'GET',NULL,1,0,1,0,NULL,'2021-03-12 01:52:10','2021-03-12 01:52:10',NULL),(816,6,34,NULL,'GET',NULL,1,0,1,0,NULL,'2021-03-12 01:52:11','2021-03-12 01:52:11',NULL),(817,6,25,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-12 02:05:21','2021-03-12 02:05:21',NULL),(818,6,35,NULL,'POST',NULL,0,0,0,0,NULL,'2021-03-12 02:05:48','2021-03-12 02:05:48',NULL),(819,6,36,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-12 02:05:48','2021-03-12 02:05:48',NULL),(820,6,25,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-12 02:05:54','2021-03-12 02:05:54',NULL),(821,6,35,NULL,'POST',NULL,0,0,0,0,NULL,'2021-03-12 02:06:16','2021-03-12 02:06:16',NULL),(822,6,36,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-12 02:06:16','2021-03-12 02:06:16',NULL),(823,6,25,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-12 02:06:18','2021-03-12 02:06:18',NULL),(824,6,35,NULL,'POST',NULL,0,0,0,0,NULL,'2021-03-12 02:06:49','2021-03-12 02:06:49',NULL),(825,6,36,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-12 02:06:49','2021-03-12 02:06:49',NULL),(826,6,25,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-12 02:07:06','2021-03-12 02:07:06',NULL),(827,6,25,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-12 02:16:46','2021-03-12 02:16:46',NULL),(828,6,1,NULL,'GET',NULL,1,0,1,0,NULL,'2021-03-12 02:23:05','2021-03-12 02:23:05',NULL),(829,6,30,NULL,'GET',NULL,1,0,1,0,NULL,'2021-03-12 02:23:10','2021-03-12 02:23:10',NULL),(830,6,8,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-12 02:27:51','2021-03-12 02:27:51',NULL),(831,6,30,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-12 02:27:57','2021-03-12 02:27:57',NULL),(832,6,6,NULL,'POST',NULL,0,0,0,0,NULL,'2021-03-12 02:28:07','2021-03-12 02:28:07',NULL),(833,6,1,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-12 02:28:07','2021-03-12 02:28:07',NULL),(834,6,8,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-12 02:28:11','2021-03-12 02:28:11',NULL),(835,6,8,NULL,'POST',NULL,0,0,0,0,NULL,'2021-03-12 02:36:57','2021-03-12 02:36:57',NULL),(836,6,8,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-12 02:36:58','2021-03-12 02:36:58',NULL),(837,6,8,NULL,'POST',NULL,0,0,0,0,NULL,'2021-03-12 02:37:02','2021-03-12 02:37:02',NULL),(838,7,1,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-23 20:57:28','2021-03-23 20:57:28',NULL),(839,8,1,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-24 03:27:43','2021-03-24 03:27:43',NULL),(840,8,30,NULL,'GET',NULL,1,0,1,0,NULL,'2021-03-24 03:56:32','2021-03-24 03:56:32',NULL),(841,8,1,NULL,'GET',NULL,1,0,1,0,NULL,'2021-03-24 03:56:55','2021-03-24 03:56:55',NULL),(842,8,32,NULL,'GET',NULL,1,0,1,0,NULL,'2021-03-24 03:56:57','2021-03-24 03:56:57',NULL),(843,8,34,NULL,'GET',NULL,1,0,1,0,NULL,'2021-03-24 03:56:59','2021-03-24 03:56:59',NULL),(844,8,1,NULL,'GET',NULL,1,0,1,0,NULL,'2021-03-24 03:59:50','2021-03-24 03:59:50',NULL),(845,8,8,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-24 03:59:59','2021-03-24 03:59:59',NULL),(846,8,8,NULL,'POST',NULL,0,0,0,0,NULL,'2021-03-24 04:00:06','2021-03-24 04:00:06',NULL),(847,8,25,NULL,'GET',NULL,0,0,0,0,NULL,'2021-03-24 04:02:05','2021-03-24 04:02:05',NULL),(848,9,1,NULL,'GET',NULL,0,0,0,0,NULL,'2021-04-10 02:32:43','2021-04-10 02:32:43',NULL),(849,9,30,NULL,'GET',NULL,1,0,1,0,NULL,'2021-04-10 02:34:00','2021-04-10 02:34:00',NULL),(850,9,32,NULL,'GET',NULL,1,0,1,0,NULL,'2021-04-10 02:34:18','2021-04-10 02:34:18',NULL),(851,9,34,NULL,'GET',NULL,1,0,1,0,NULL,'2021-04-10 02:34:27','2021-04-10 02:34:27',NULL),(852,9,8,NULL,'GET',NULL,0,0,0,0,NULL,'2021-04-10 02:35:23','2021-04-10 02:35:23',NULL),(853,9,8,NULL,'POST',NULL,0,0,0,0,NULL,'2021-04-10 02:35:31','2021-04-10 02:35:31',NULL),(854,9,25,NULL,'GET',NULL,0,0,0,0,NULL,'2021-04-10 02:36:26','2021-04-10 02:36:26',NULL);
/*!40000 ALTER TABLE `tracker_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_paths`
--

DROP TABLE IF EXISTS `tracker_paths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_paths` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_paths_created_at_index` (`created_at`),
  KEY `tracker_paths_updated_at_index` (`updated_at`),
  KEY `tracker_paths_path_index` (`path`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_paths`
--

LOCK TABLES `tracker_paths` WRITE;
/*!40000 ALTER TABLE `tracker_paths` DISABLE KEYS */;
INSERT INTO `tracker_paths` VALUES (1,'/','2021-03-10 02:03:40','2021-03-10 02:03:40'),(2,'post/qui-quia-nobis-voluptatem-consequuntur-nesciunt-porro-nesciunt-ipsam','2021-03-10 02:03:49','2021-03-10 02:03:49'),(3,'Category/new-content','2021-03-10 02:03:52','2021-03-10 02:03:52'),(4,'Category/ut','2021-03-10 02:03:54','2021-03-10 02:03:54'),(5,'Category/sunt','2021-03-10 02:03:57','2021-03-10 02:03:57'),(6,'logout','2021-03-10 02:04:14','2021-03-10 02:04:14'),(7,'dashboard','2021-03-10 02:04:16','2021-03-10 02:04:16'),(8,'login','2021-03-10 02:04:17','2021-03-10 02:04:17'),(9,'livewire/livewire.js','2021-03-10 02:04:25','2021-03-10 02:04:25'),(10,'livewire/livewire.js.map','2021-03-10 02:54:28','2021-03-10 02:54:28'),(11,'js/index.js.map','2021-03-10 02:54:28','2021-03-10 02:54:28'),(12,'Category/consequatur','2021-03-10 03:10:24','2021-03-10 03:10:24'),(13,'dashboard/posts','2021-03-11 05:32:52','2021-03-11 05:32:52'),(14,'dashboard/surveys','2021-03-11 05:32:56','2021-03-11 05:32:56'),(15,'css/tabulator.min.css.map','2021-03-11 05:32:57','2021-03-11 05:32:57'),(16,'js/moment.min.js.map','2021-03-11 05:32:57','2021-03-11 05:32:57'),(17,'livewire/message/post-table','2021-03-11 05:55:14','2021-03-11 05:55:14'),(18,'post/sunt-corrupti-quia-enim','2021-03-11 07:31:59','2021-03-11 07:31:59'),(19,'post/iste-similique-qui-quia-rem-commodi-voluptates-english-mark','2021-03-11 07:33:40','2021-03-11 07:33:40'),(20,'post/iste-similique-qui-quia-rem-commodi-voluptates-english-mark-1','2021-03-11 07:36:15','2021-03-11 07:36:15'),(21,'post/et-asperiores-consequatur-nihil-consectetur-autem','2021-03-11 07:38:33','2021-03-11 07:38:33'),(22,'_ignition/health-check','2021-03-11 08:14:39','2021-03-11 08:14:39'),(23,'post/title','2021-03-11 08:33:45','2021-03-11 08:33:45'),(24,'survey/%7B%20labore-accusantium-labore-provident-dolorem-similique%7D','2021-03-11 23:18:03','2021-03-11 23:18:03'),(25,'survey/labore-accusantium-labore-provident-dolorem-similique','2021-03-11 23:24:04','2021-03-11 23:24:04'),(26,'survey/similique-aut-ut-voluptates-voluptatem-est-qui','2021-03-11 23:32:01','2021-03-11 23:32:01'),(27,'Category/%7B%20sunt%20%7D','2021-03-11 23:34:48','2021-03-11 23:34:48'),(28,'Category/%7B%20mollitia-2%20%7D','2021-03-11 23:35:16','2021-03-11 23:35:16'),(29,'post/3-pineapple-health-benefits-according-to-a-nutritionist','2021-03-12 01:06:45','2021-03-12 01:06:45'),(30,'post/3-pineapple-health-benefits-according-to-a-nutritionist-1','2021-03-12 01:09:31','2021-03-12 01:09:31'),(31,'Category/nutrition','2021-03-12 01:52:00','2021-03-12 01:52:00'),(32,'Category/news','2021-03-12 01:52:09','2021-03-12 01:52:09'),(33,'Category/tools','2021-03-12 01:52:10','2021-03-12 01:52:10'),(34,'Category/health-magazine','2021-03-12 01:52:11','2021-03-12 01:52:11'),(35,'survey/labore-accusantium-labore-provident-dolorem-similique/response','2021-03-12 02:05:48','2021-03-12 02:05:48'),(36,'survey/labore-accusantium-labore-provident-dolorem-similique/thanks','2021-03-12 02:05:48','2021-03-12 02:05:48');
/*!40000 ALTER TABLE `tracker_paths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_queries`
--

DROP TABLE IF EXISTS `tracker_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_queries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `query` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_queries_created_at_index` (`created_at`),
  KEY `tracker_queries_updated_at_index` (`updated_at`),
  KEY `tracker_queries_query_index` (`query`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_queries`
--

LOCK TABLES `tracker_queries` WRITE;
/*!40000 ALTER TABLE `tracker_queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_query_arguments`
--

DROP TABLE IF EXISTS `tracker_query_arguments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_query_arguments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `query_id` bigint unsigned NOT NULL,
  `argument` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_query_arguments_created_at_index` (`created_at`),
  KEY `tracker_query_arguments_updated_at_index` (`updated_at`),
  KEY `tracker_query_arguments_query_id_index` (`query_id`),
  KEY `tracker_query_arguments_argument_index` (`argument`),
  KEY `tracker_query_arguments_value_index` (`value`),
  CONSTRAINT `tracker_query_arguments_query_id_foreign` FOREIGN KEY (`query_id`) REFERENCES `tracker_queries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_query_arguments`
--

LOCK TABLES `tracker_query_arguments` WRITE;
/*!40000 ALTER TABLE `tracker_query_arguments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_query_arguments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_referers`
--

DROP TABLE IF EXISTS `tracker_referers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_referers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `domain_id` bigint unsigned NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `search_terms_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_referers_created_at_index` (`created_at`),
  KEY `tracker_referers_updated_at_index` (`updated_at`),
  KEY `tracker_referers_domain_id_index` (`domain_id`),
  KEY `tracker_referers_url_index` (`url`),
  KEY `tracker_referers_medium_index` (`medium`),
  KEY `tracker_referers_source_index` (`source`),
  KEY `tracker_referers_search_terms_hash_index` (`search_terms_hash`),
  CONSTRAINT `tracker_referers_domain_id_foreign` FOREIGN KEY (`domain_id`) REFERENCES `tracker_domains` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_referers`
--

LOCK TABLES `tracker_referers` WRITE;
/*!40000 ALTER TABLE `tracker_referers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_referers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_referers_search_terms`
--

DROP TABLE IF EXISTS `tracker_referers_search_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_referers_search_terms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `referer_id` bigint unsigned NOT NULL,
  `search_term` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_referers_search_terms_created_at_index` (`created_at`),
  KEY `tracker_referers_search_terms_updated_at_index` (`updated_at`),
  KEY `tracker_referers_search_terms_referer_id_index` (`referer_id`),
  KEY `tracker_referers_search_terms_search_term_index` (`search_term`),
  CONSTRAINT `tracker_referers_referer_id_fk` FOREIGN KEY (`referer_id`) REFERENCES `tracker_referers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_referers_search_terms`
--

LOCK TABLES `tracker_referers_search_terms` WRITE;
/*!40000 ALTER TABLE `tracker_referers_search_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_referers_search_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_route_path_parameters`
--

DROP TABLE IF EXISTS `tracker_route_path_parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_route_path_parameters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `route_path_id` bigint unsigned NOT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_route_path_parameters_created_at_index` (`created_at`),
  KEY `tracker_route_path_parameters_updated_at_index` (`updated_at`),
  KEY `tracker_route_path_parameters_route_path_id_index` (`route_path_id`),
  KEY `tracker_route_path_parameters_parameter_index` (`parameter`),
  KEY `tracker_route_path_parameters_value_index` (`value`),
  CONSTRAINT `tracker_route_path_parameters_route_path_id_foreign` FOREIGN KEY (`route_path_id`) REFERENCES `tracker_route_paths` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_route_path_parameters`
--

LOCK TABLES `tracker_route_path_parameters` WRITE;
/*!40000 ALTER TABLE `tracker_route_path_parameters` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_route_path_parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_route_paths`
--

DROP TABLE IF EXISTS `tracker_route_paths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_route_paths` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `route_id` bigint unsigned NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_route_paths_created_at_index` (`created_at`),
  KEY `tracker_route_paths_updated_at_index` (`updated_at`),
  KEY `tracker_route_paths_route_id_index` (`route_id`),
  KEY `tracker_route_paths_path_index` (`path`),
  CONSTRAINT `tracker_route_paths_route_id_foreign` FOREIGN KEY (`route_id`) REFERENCES `tracker_routes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_route_paths`
--

LOCK TABLES `tracker_route_paths` WRITE;
/*!40000 ALTER TABLE `tracker_route_paths` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_route_paths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_routes`
--

DROP TABLE IF EXISTS `tracker_routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_routes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_routes_created_at_index` (`created_at`),
  KEY `tracker_routes_updated_at_index` (`updated_at`),
  KEY `tracker_routes_name_index` (`name`),
  KEY `tracker_routes_action_index` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_routes`
--

LOCK TABLES `tracker_routes` WRITE;
/*!40000 ALTER TABLE `tracker_routes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_sessions`
--

DROP TABLE IF EXISTS `tracker_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_sessions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `device_id` bigint unsigned DEFAULT NULL,
  `agent_id` bigint unsigned DEFAULT NULL,
  `client_ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referer_id` bigint unsigned DEFAULT NULL,
  `cookie_id` bigint unsigned DEFAULT NULL,
  `geoip_id` bigint unsigned DEFAULT NULL,
  `is_robot` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `language_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tracker_sessions_uuid_unique` (`uuid`),
  KEY `tracker_sessions_created_at_index` (`created_at`),
  KEY `tracker_sessions_updated_at_index` (`updated_at`),
  KEY `tracker_sessions_user_id_index` (`user_id`),
  KEY `tracker_sessions_device_id_index` (`device_id`),
  KEY `tracker_sessions_agent_id_index` (`agent_id`),
  KEY `tracker_sessions_client_ip_index` (`client_ip`),
  KEY `tracker_sessions_referer_id_index` (`referer_id`),
  KEY `tracker_sessions_cookie_id_index` (`cookie_id`),
  KEY `tracker_sessions_geoip_id_index` (`geoip_id`),
  KEY `tracker_sessions_language_id_index` (`language_id`),
  CONSTRAINT `tracker_sessions_agent_id_foreign` FOREIGN KEY (`agent_id`) REFERENCES `tracker_agents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_sessions_cookie_id_foreign` FOREIGN KEY (`cookie_id`) REFERENCES `tracker_cookies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_sessions_device_id_foreign` FOREIGN KEY (`device_id`) REFERENCES `tracker_devices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_sessions_geoip_id_foreign` FOREIGN KEY (`geoip_id`) REFERENCES `tracker_geoip` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_sessions_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `tracker_languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_sessions_referer_id_foreign` FOREIGN KEY (`referer_id`) REFERENCES `tracker_referers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_sessions`
--

LOCK TABLES `tracker_sessions` WRITE;
/*!40000 ALTER TABLE `tracker_sessions` DISABLE KEYS */;
INSERT INTO `tracker_sessions` VALUES (1,'90e021b0-01de-4a9c-b374-f35ba63640e0',NULL,NULL,NULL,'127.0.0.1',NULL,NULL,NULL,0,'2021-03-10 01:57:50','2021-03-10 03:35:34',1),(2,'ddbbb390-9d39-4b96-a3f7-4c244eabadac',NULL,NULL,NULL,'127.0.0.1',NULL,NULL,NULL,0,'2021-03-11 04:37:33','2021-03-11 08:43:38',1),(3,'ffb305f1-249b-4a30-aed9-8041332e5f11',NULL,NULL,NULL,'127.0.0.1',NULL,NULL,NULL,0,'2021-03-11 05:09:30','2021-03-11 05:09:30',1),(4,'ad975f8f-a7c7-4fb8-9bf7-266e38c55e3c',NULL,NULL,NULL,'127.0.0.1',NULL,NULL,NULL,0,'2021-03-11 22:54:15','2021-03-11 23:36:02',1),(5,'a09a63ae-f117-475c-96eb-a604153d7c36',NULL,NULL,NULL,'127.0.0.1',NULL,NULL,NULL,0,'2021-03-12 00:53:01','2021-03-12 01:09:50',1),(6,'f8ab0a6e-3560-48bc-8c79-d7169fff5413',NULL,NULL,NULL,'127.0.0.1',NULL,NULL,NULL,0,'2021-03-12 01:52:00','2021-03-12 02:37:02',1),(7,'67053262-0037-4fce-a767-01db72710120',NULL,NULL,NULL,'127.0.0.1',NULL,NULL,NULL,0,'2021-03-23 20:57:28','2021-03-23 20:57:28',1),(8,'4f4ebe3e-6471-4ad9-bf49-0538ca49da4b',NULL,NULL,NULL,'127.0.0.1',NULL,NULL,NULL,0,'2021-03-24 03:27:43','2021-03-24 04:02:04',1),(9,'a66d3083-f9f9-4b01-9fb1-39cd2c4ab38a',NULL,NULL,NULL,'127.0.0.1',NULL,NULL,NULL,0,'2021-04-10 02:32:43','2021-04-10 02:36:26',1);
/*!40000 ALTER TABLE `tracker_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_sql_queries`
--

DROP TABLE IF EXISTS `tracker_sql_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_sql_queries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statement` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` double NOT NULL,
  `connection_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_sql_queries_created_at_index` (`created_at`),
  KEY `tracker_sql_queries_updated_at_index` (`updated_at`),
  KEY `tracker_sql_queries_sha1_index` (`sha1`),
  KEY `tracker_sql_queries_time_index` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_sql_queries`
--

LOCK TABLES `tracker_sql_queries` WRITE;
/*!40000 ALTER TABLE `tracker_sql_queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_sql_queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_sql_queries_log`
--

DROP TABLE IF EXISTS `tracker_sql_queries_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_sql_queries_log` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `log_id` bigint unsigned NOT NULL,
  `sql_query_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_sql_queries_log_created_at_index` (`created_at`),
  KEY `tracker_sql_queries_log_updated_at_index` (`updated_at`),
  KEY `tracker_sql_queries_log_log_id_index` (`log_id`),
  KEY `tracker_sql_queries_log_sql_query_id_index` (`sql_query_id`),
  CONSTRAINT `tracker_sql_queries_log_log_id_foreign` FOREIGN KEY (`log_id`) REFERENCES `tracker_log` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_sql_queries_log_sql_query_id_foreign` FOREIGN KEY (`sql_query_id`) REFERENCES `tracker_sql_queries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_sql_queries_log`
--

LOCK TABLES `tracker_sql_queries_log` WRITE;
/*!40000 ALTER TABLE `tracker_sql_queries_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_sql_queries_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_sql_query_bindings`
--

DROP TABLE IF EXISTS `tracker_sql_query_bindings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_sql_query_bindings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serialized` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_sql_query_bindings_created_at_index` (`created_at`),
  KEY `tracker_sql_query_bindings_updated_at_index` (`updated_at`),
  KEY `tracker_sql_query_bindings_sha1_index` (`sha1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_sql_query_bindings`
--

LOCK TABLES `tracker_sql_query_bindings` WRITE;
/*!40000 ALTER TABLE `tracker_sql_query_bindings` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_sql_query_bindings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_sql_query_bindings_parameters`
--

DROP TABLE IF EXISTS `tracker_sql_query_bindings_parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_sql_query_bindings_parameters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sql_query_bindings_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_sql_query_bindings_parameters_created_at_index` (`created_at`),
  KEY `tracker_sql_query_bindings_parameters_updated_at_index` (`updated_at`),
  KEY `tracker_sql_query_bindings_parameters_name_index` (`name`),
  KEY `tracker_sqlqb_parameters` (`sql_query_bindings_id`),
  CONSTRAINT `tracker_sqlqb_parameters` FOREIGN KEY (`sql_query_bindings_id`) REFERENCES `tracker_sql_query_bindings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_sql_query_bindings_parameters`
--

LOCK TABLES `tracker_sql_query_bindings_parameters` WRITE;
/*!40000 ALTER TABLE `tracker_sql_query_bindings_parameters` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_sql_query_bindings_parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_system_classes`
--

DROP TABLE IF EXISTS `tracker_system_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_system_classes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_system_classes_created_at_index` (`created_at`),
  KEY `tracker_system_classes_updated_at_index` (`updated_at`),
  KEY `tracker_system_classes_name_index` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_system_classes`
--

LOCK TABLES `tracker_system_classes` WRITE;
/*!40000 ALTER TABLE `tracker_system_classes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_system_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_types`
--

DROP TABLE IF EXISTS `user_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nameES` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descENG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descES` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_types`
--

LOCK TABLES `user_types` WRITE;
/*!40000 ALTER TABLE `user_types` DISABLE KEYS */;
INSERT INTO `user_types` VALUES (1,'Basic','Basico','Users with basic knoledge about this topic.','Usuarios con conocimiento basico en el tema.','2021-03-09 06:09:32','2021-03-10 01:42:51'),(2,'Intermediate','Intermedio','Ut et qui expedita cumque.','Beatae natus reiciendis ipsa voluptatem quia expedita.','2021-03-09 06:09:32','2021-03-12 00:57:59'),(3,'Advanced','Avanzado','Illum velit delectus velit.','Et dolor sit cumque.','2021-03-09 06:09:32','2021-03-12 00:58:13');
/*!40000 ALTER TABLE `user_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint unsigned DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Arnaldo Greenholt','annabel.schamberger@example.org','2021-03-09 06:09:32','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'zF7qG8bbho',NULL,NULL,'2021-03-09 06:09:32','2021-03-09 06:09:32'),(2,'Sally Bauch','ezra.legros@example.net','2021-03-09 06:09:32','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'SB5XlAtEHo',NULL,NULL,'2021-03-09 06:09:32','2021-03-09 06:09:32'),(3,'Roberta Kemmer','nyah83@example.org','2021-03-09 06:09:32','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'4GBO3fzpca',NULL,NULL,'2021-03-09 06:09:32','2021-03-09 06:09:32'),(4,'Ms. Georgette Kiehn II','friesen.yvette@example.org','2021-03-09 06:09:32','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'4CVOzxVQgb',NULL,NULL,'2021-03-09 06:09:32','2021-03-09 06:09:32'),(5,'Hyman Ondricka','lcassin@example.org','2021-03-09 06:09:32','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'Qvm2JgeLG3',NULL,NULL,'2021-03-09 06:09:32','2021-03-09 06:09:32'),(6,'Erick','admin@mail.com',NULL,'$2y$10$mVXNGXyPgZ6k8KPsRO/Uaejtvlwijm4aX22sGrsilWXhhb3PWB4D.',NULL,NULL,NULL,NULL,NULL,'2021-03-09 23:03:24','2021-03-09 23:03:24');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-16 22:42:06
