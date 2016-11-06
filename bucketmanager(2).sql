-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2016 at 07:05 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bucketmanager`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `privy` int(11) NOT NULL,
  `codename` varchar(20) NOT NULL,
  `role` enum('guest','user','admin') NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `team_id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `privy`, `codename`, `role`, `firstname`, `lastname`, `agent_id`, `phone`, `team_id`, `email`) VALUES
(1, 'zeoharlem@yahoo.co.uk', '$2a$08$eUAwhfJe8E9spBynZk2Nj.WaXE1wXiVJJFqVbxumVW3ggILMRKIN2', 5, '1234567890', 'admin', 'theophilus', 'alamu', 17769, '+2348098513161', 9896, 'zeoharlem@yahoo.co.uk');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` longtext,
  `description` longtext,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `description`) VALUES
(1, 'frozen foods', 'frozen foods '),
(2, 'beverages', 'beverages'),
(3, 'Bread/Bakery', 'Bread or Bakery'),
(4, 'Canned/Jarred Goods', 'Canned and Jarred Goods comprises of vegetables, spaghetti sauce, ketchup and the likes'),
(5, 'Dairy', 'cheeses, eggs, milk, yogurt, butter'),
(6, 'Dry/Baking Goods', 'Dry and Baking Goods'),
(7, 'Meat', 'Meat and Beef'),
(8, 'Produce', 'all kinds of fruits, vegetables etc'),
(9, 'stationeries', 'Paper Goods â€“ paper towels, toilet paper, aluminum foil, sandwich bags');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
  `j_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` varchar(100) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `customer_address` text NOT NULL,
  `tracking_link` longtext NOT NULL,
  `job_token` longtext NOT NULL,
  `trans_id` longtext NOT NULL,
  `job_hash` mediumtext NOT NULL,
  PRIMARY KEY (`j_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`j_id`, `job_id`, `customer_name`, `customer_address`, `tracking_link`, `job_token`, `trans_id`, `job_hash`) VALUES
(1, '1227553', 'abiola alamu olufunto', 'no 31, raimi alabi street, sitaga, eleyel ibadan', 'https://goo.gl/zNWxGa', '50b5fc55ee75053bb64492a090ba58c8', '4816264620', ''),
(2, '1233930', 'alamu theophilus', 'goshen house papa apete ibadan', 'https://goo.gl/84Zv8N', '3eb344fd24608dc17cac2b0704b1d36d', '2145476251', '3511f24611634badbbb1a713ff7e2234'),
(3, '1234255', 'alamu theophilus', 'goshen house papa apete ibadan', 'https://goo.gl/eA3l5z', '89dbf4dea3049f0815029097631ccb99', '1377483303', '36ff810309b871c8a07e74ff6887bcb9'),
(4, '1237483', 'alamu theophilus', 'zik hall university of ibadan', 'https://goo.gl/HR26iS', '23be74d53c8df7235ca3c2106f039c8a', '1407219221', '8bde2afe065fce4734aa97470eb4a324'),
(5, '1237493', 'alamu theophilus', 'zik hall university of ibadan', 'https://goo.gl/5vhmuC', '8cbe56986340cdc56111034c6b6efbb5', '8203561834', '5f39a16b24e79b64ccb40ba6c9bb21f8'),
(6, '1237776', 'alamu theophilus', 'goshen house papa apete ibadan nigerai', 'https://goo.gl/TWQBpZ', '24bcf5ee466db081466f39b87391debc', '5072851113', '11487d387ded9672fb9c3dfbcc8012c4'),
(7, '1251649', 'alamu theophilus', 'triumphant assembly, Perazim Cathedral, Ologuneru ibadan', 'https://goo.gl/j9tGQH', 'ea23d80e850987464d5e44cb9f719630', '0244596139', '3a2ceb7005e62e96812e8e50d63bed10'),
(8, '1257197', 'alamu theophilus', 'U.C.H, Ibadan. ibadan, Nigeria', 'https://goo.gl/8As8s0', '144cf6edacafad0ad25750dbe12604b0', '5213992871', 'b6ab651a869345fb721958a8beb03485');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `company` varchar(200) NOT NULL,
  `phonenumber` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `postzip` varchar(10) NOT NULL,
  `additional_info` text NOT NULL,
  `trans_id` varchar(20) NOT NULL,
  `date_of_order` datetime NOT NULL,
  `vendor_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `trans_id` (`trans_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `firstname`, `lastname`, `company`, `phonenumber`, `email`, `address`, `city`, `state`, `postzip`, `additional_info`, `trans_id`, `date_of_order`, `vendor_id`) VALUES
(1, 'theophilus', 'alamu', 'Cisco Networks', '08098513161', 'zeoharlem@yahoo.co.uk', 'goshen house papa apete ibadan', 'ibadan', 'oyo', '234', '', '1538513517', '2016-09-29 11:41:38', 1),
(2, 'theophilus', 'alamu', 'Cisco Networks', '08098513161', 'zeoharlem@yahoo.co.uk', 'goshen house papa apete ibadan', 'ibadan', 'oyo', '234', '', '2502874941', '2016-10-01 09:43:48', 1),
(3, 'theophilus', 'alamu', 'Cisco Networks', '08098513161', 'zeoharlem@yahoo.co.uk', 'goshen house papa apete ibadan', 'ibadan', 'oyo', '234', '', '3405289544', '2016-10-02 03:16:53', 1),
(4, 'theophilus', 'alamu', 'Cisco Networks', '08098513161', 'zeoharlem@yahoo.co.uk', 'goshen house papa apete ibadan', 'ibadan', 'oyo', '234', '', '6778923189', '2016-10-02 04:20:02', 1),
(5, 'ifeoluwa', 'solomon', '', '08066326529', 'hifey@pepperedrice.com', 'no 12, gonjo house, ashi bodija, ibadan', '', '', '', '', '1643913339', '2016-10-27 15:59:01', 1234567890),
(6, 'theophilus', 'abiola', '', '08098513161', 'hifey@pepperedrice.com', 'no 12, gonjo house, ashi bodija, ibadan', '', '', '', '', '7004274880', '2016-10-27 16:51:56', 1234567890),
(7, 'olufunto', 'abiola alamu', '', '08186982508', 'afuntybabe@yahoo.com', 'no 31, raimi alabi street, sitaga, eleyel ibadan', '', '', '', '', '4816264620', '2016-10-27 20:08:56', 1234567890),
(8, 'theophilus', 'alamu', 'Cisco Networks', '08098513161', 'zeoharlem@yahoo.co.uk', 'goshen house papa apete ibadan', 'ibadan', 'oyo', '+234', 'Please call me if you didnt get the address', '2172519759', '2016-10-28 15:13:52', 1),
(10, 'theophilus', 'alamu', 'Cisco Networks', '08098513161', 'zeoharlem@yahoo.co.uk', 'goshen house papa apete ibadan', 'ibadan', 'oyo', '234', 'call me', '3672696362', '2016-10-28 15:38:48', 1),
(11, 'theophilus', 'alamu', 'Cisco Networks', '08098513161', 'zeoharlem@yahoo.co.uk', 'goshen house papa apete ibadan', 'ibadan', 'oyo', '234', 'play to call', '2151188534', '2016-10-28 15:40:38', 1),
(12, 'theophilus', 'alamu', 'Cisco Networks', '08098513161', 'zeoharlem@yahoo.co.uk', 'goshen house papa apete ibadan', 'ibadan', 'oyo', '234', 'sdfsdf', '2209719784', '2016-10-28 16:03:02', 1),
(13, 'theophilus', 'alamu', 'Cisco Networks', '08098513161', 'zeoharlem@yahoo.co.uk', 'goshen house papa apete ibadan', 'ibadan', 'oyo', '234', 'sdfsdf', '2145476251', '2016-10-28 16:09:23', 1),
(14, 'theophilus', 'alamu', 'Cisco Networks', '08098513161', 'zeoharlem@yahoo.co.uk', 'goshen house papa apete ibadan', 'ibadan', 'oyo', '234', 'yuou', '1377483303', '2016-10-28 16:33:45', 1),
(15, 'theophilus', 'alamu', 'Cisco Networks', '08060742952', 'zeoharlem@yahoo.co.uk', 'zik hall, university of ibadan', 'ibadan', 'oyo', '234', 'ckasgasgd', '6797547664', '2016-10-28 20:21:58', 1),
(17, 'theophilus', 'alamu', 'Cisco Networks', '08098513161', 'zeoharlem@yahoo.co.uk', 'zik hall university of ibadan', 'ibadan', 'oyo', '234', 'sdfsf', '1407219221', '2016-10-28 20:25:10', 1),
(18, 'theophilus', 'alamu', 'Cisco Networks', '08060742952', 'zeoharlem@yahoo.co.uk', 'zik hall university of ibadan', 'ibadan', 'oyo', '234', 'dfsf', '8203561834', '2016-10-28 20:26:14', 1),
(19, 'theophilus', 'alamu', '', '08060742952', 'zeoharlem@yahoo.co.uk', 'goshen house papa apete ibadan nigerai', '', '', '', '', '5072851113', '2016-10-28 19:33:13', 1234567890),
(20, 'theophilus', 'alamu', 'triumphant assembly', '08098513161', 'zeoharlem@yahoo.co.uk', 'triumphant assembly, Perazim Cathedral, Ologuneru ibadan', 'ibadan', 'Oyo', '234', 'call me when you get there', '0244596139', '2016-10-31 10:38:52', 1),
(21, 'theophilus', 'alamu', 'Cisco Networks', '08098513161', 'zeoharlem@yahoo.co.uk', 'U.C.H, Ibadan. ibadan, Nigeria', 'ibadan', 'oyo', '234', 'call me when close', '5213992871', '2016-11-01 01:10:44', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `category` int(11) DEFAULT '1',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sub_category` int(11) NOT NULL,
  `sale_price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `purchase_price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `shipping_cost` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `add_timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  `front_image` longtext COLLATE utf8_unicode_ci,
  `brand` longtext COLLATE utf8_unicode_ci NOT NULL,
  `current_stock` int(11) DEFAULT '0',
  `discount` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `added_by` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vendor_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `title`, `category`, `description`, `sub_category`, `sale_price`, `purchase_price`, `shipping_cost`, `add_timestamp`, `front_image`, `brand`, `current_stock`, `discount`, `added_by`, `vendor_id`) VALUES
(1, 'nescafe', 2, 'Coffee is a brewed drink prepared from roasted coffee beans, which are the seeds of berries from the Coffea plant. The genus Coffea is native to tropical Africa, Madagascar, and the Comoros, Mauritius and RÃ©union in the Indian Ocean', 1, '180.00', '150.00', '100', '2016-10-08 22:59:47', '1475963987_nescafe.jpg', 'nestle', 200, '0', '{"type":"vendor","id":"1"}', 1),
(2, 'primular tea flowers', 2, 'primular tea flowers', 1, '360.00', '300.00', '100', '2016-10-09 00:28:12', '1475969292_primular.jpg', 'flowers', 100, '0', '{"type":"vendor","id":"1"}', 1),
(3, 'san diego coffee', 2, 'san diego coffee kona blend', 1, '460.00', '400.00', '100', '2016-10-09 00:39:40', '1475969980_coffe_kona.jpg', 'kona blend', 10, '0', '{"type":"vendor","id":"1"}', 1),
(4, 'Super Coffee', 2, 'Super Coffee', 1, '700.00', '600.00', '150', '2016-10-09 00:44:57', '1475970297_supper_coffee.jpg', 'regular designer', 20, '0', '{"type":"vendor","id":"1"}', 1),
(5, 'capuccino', 2, 'made from real milk', 1, '800.00', '700.00', '100', '2016-10-09 00:48:53', '1475970532_capuccino.jpg', 'gevalia', 20, '0', '{"type":"vendor","id":"1"}', 1),
(6, 'Don Franciscos', 2, 'Don Franciscos', 1, '850.00', '750.00', '100', '2016-10-09 00:55:36', '1475970936_fransisco.jpg', 'kona blend', 20, '0', '{"type":"vendor","id":"1"}', 1),
(7, 'Rest coffee', 2, 'rest coffee', 1, '450.00', '350.00', '100', '2016-10-09 01:01:03', '1475971262_rest_coffee.jpg', 'solid tea', 10, '0', '{"type":"vendor","id":"1"}', 1),
(8, 'Cameron Jamaica Blue Mountai', 2, 'Camerons Jamaica Blue Mountain Blend', 1, '700.00', '600.00', '100', '2016-10-09 01:03:57', '1475971437_cameron.jpg', 'Mountain Blend', 20, '', '{"type":"vendor","id":"1"}', 1),
(9, 'oven chips', 3, 'oven chips', 7, '500.00', '400.00', '200', '2016-10-09 01:28:59', '1475972939_oven_chips.jpg', 'Mc Cain', 60, '', '{"type":"vendor","id":"1"}', 1),
(10, 'bell pepper', 2, 'bell perpper', 1, '100.00', '670.00', '100', '2016-10-09 01:35:25', '1475973325_brazillian.jpg', 'brazillian stuffed', 20, '0', '{"type":"vendor","id":"1"}', 1),
(11, 'bagel bread', 3, 'Ring shaped, usually with a dense, chewy interior; usually topped with sesame or poppy seeds baked into the surface.', 7, '250.00', '200.00', '100', '2016-10-09 15:10:57', '1476022257_bagel.jpg', 'yeaster', 100, '0', '{"type":"vendor","id":"2"}', 2),
(12, 'Sourdough Rye Bread', 3, 'Made of rye grain, usually dark colored and high fiber, ranges from crispy in texture to dense and chewy.', 31, '200.00', '120.00', '100', '2016-10-09 15:20:16', '1476022816_yeastbread.jpg', 'thailand', 20, '0', '{"type":"vendor","id":"2"}', 2),
(13, 'Fresh Baked Bialys', 3, 'Similar to a bagel, but instead of a hole it has only a dimple on top, which is filled with a bit of butter and diced onion or garlic. Known as a cebularz in Poland.', 31, '260.00', '200.00', '100', '2016-10-09 15:24:42', '1476023082_baily.jpg', 'poland', 200, '0', '{"type":"vendor","id":"2"}', 2),
(14, 'bolani', 3, 'Has a very thin crust and can be stuffed with a variety of ingredients, such as potatoes, spinach, lentils, pumpkin, or leeks.', 31, '280.00', '200.00', '100', '2016-10-09 15:39:44', '1476023984_bolani.jpg', 'flatbread', 200, '0', '{"type":"vendor","id":"2"}', 2),
(15, 'Tai Pei Chicken Chow Mein', 1, 'Traditional noodles, white meat chicken and vegetables', 32, '370.00', '300.00', '100', '2016-10-09 16:34:12', '1476027252_tai.jpg', 'tai pei', 200, '0', '{"type":"vendor","id":"2"}', 2),
(16, 'Birds Eye Voila', 1, 'Carrots, broccoli, and red peppers in a sesame garlic stir-fry sauce', 32, '280.00', '200.00', '100', '2016-10-09 16:37:24', '1476027444_birdeye.jpg', 'Birds Eye', 200, '0', '{"type":"vendor","id":"2"}', 2),
(17, 'Non Dairy Coffee', 5, 'Cheap Non Dairy Coffee', 13, '300.00', '200.00', '100', '2016-10-09 16:45:00', '1476027899_coffeemate.jpg', 'creamer brands', 200, '0', '{"type":"vendor","id":"2"}', 2),
(18, 'Danone Ser Yogurt ', 5, 'Danone Ser Yogurt The Line Argentina | Packaging Dairy Yogurt', 14, '500.00', '400.00', '100', '2016-10-09 16:46:48', '1476028008_yoghurtstraw.jpg', 'dairy milker', 200, '0', '{"type":"vendor","id":"2"}', 2),
(19, 'Bettine spread', 5, 'Bettine-spread', 11, '320.00', '250.00', '100', '2016-10-09 16:49:48', '1476028188_cheesebettine.jpg', 'Bettine-spread', 100, '0', '{"type":"vendor","id":"2"}', 2),
(20, 'beech honey', 4, 'beech honey matte', 37, '250.00', '150.00', '100', '2016-10-09 16:55:34', '1476028534_beech.jpg', 'beecher', 200, '', '{"type":"vendor","id":"2"}', 2);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `register_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phonenumber` varchar(30) NOT NULL,
  `address` mediumtext NOT NULL,
  `password` varchar(200) NOT NULL,
  `codename` int(11) NOT NULL,
  `role` enum('guest','user','admin') NOT NULL,
  PRIMARY KEY (`register_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`register_id`, `firstname`, `lastname`, `email`, `phonenumber`, `address`, `password`, `codename`, `role`) VALUES
(1, 'theophilus', 'alamu', 'zeoharlem@yahoo.co.uk', '08098513161', 'goshen house papa apete ibadan nigerai', '$2y$08$ckU15EszSG7amQa6g4435O9sWFFzCaiRvoqswasIN14DpcwUVxW9y', 2147483647, 'user'),
(2, 'olufunto', 'abiola alamu', 'afuntybabe@yahoo.com', '08186982508', 'no 31, raimi alabi street, sitaga, eleyel ibadan', '$2y$08$2FNz80ZbLELC9NxpuGt9UOrbt2klJkRf81mEP.2uAYHVNRYyAR2Am', 2147483647, 'user'),
(3, 'kehinde', 'Ukpokolo', 'vendor@shop.com', '08098513163', 'no 10, educational zone, samonda, ibadan', 'U7DKej5n', 57864979, 'user'),
(4, 'ifeoluwa', 'solomon', 'hifey@pepperedrice.com', '08012334455', 'no 12, gonjo house, ashi bodija, ibadan', '$2y$08$Tq2qajJXjbhh7Mms4A5NN.R/hoYVVmZ3F7662knaE/NBenFOiFf0O', 22680123, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE IF NOT EXISTS `sales` (
  `sales_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_id` varchar(20) NOT NULL,
  `date_of_order` datetime NOT NULL,
  `item_sold` longtext NOT NULL,
  `status` enum('pending','processed') NOT NULL,
  `agent` varchar(200) NOT NULL,
  `delivery_time` datetime NOT NULL,
  `vendor_id` int(11) NOT NULL,
  PRIMARY KEY (`sales_id`),
  UNIQUE KEY `trans_id` (`trans_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sales_id`, `trans_id`, `date_of_order`, `item_sold`, `status`, `agent`, `delivery_time`, `vendor_id`) VALUES
(1, '1538513517', '2016-09-29 11:41:38', '{"99":{"name":"i-pad mini","id":"99","qty":2,"option":"","price":"500.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"1\\"}","shipping":0,"tax":0,"coupon":"","image":"http:\\/\\/localhost\\/gmanzo\\/assets\\/images\\/products\\/4.jpg","subtotal":"500.00","address":"3214 N University Ave #409 Provo, UT ","addedby":"FoodCo","location":"oyo","trans_id":"1538513517"},"1":{"name":"Banana Fruit","id":"1","qty":1,"option":"","price":"1200.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"1\\"}","shipping":0,"tax":0,"coupon":"","image":"http:\\/\\/localhost\\/gmanzo\\/assets\\/images\\/products\\/1.jpg","subtotal":"1200.00","address":"3214 N University Ave #409 Provo, UT ","addedby":"FoodCo","location":"oyo","trans_id":"1538513517"},"120":{"name":"James Bond Spectre","id":"120","qty":2,"option":"","price":"10.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"2\\"}","shipping":0,"tax":0,"coupon":"","image":"http:\\/\\/localhost\\/gmanzo\\/assets\\/images\\/products\\/1.jpg","subtotal":"10.00","address":"3301 South Greenfield Rd Gilbert, AZ 85297","addedby":"Shoprite","location":"oyo","trans_id":"1538513517"}}', 'pending', '', '2016-09-30 10:00:02', 1),
(2, '2502874941', '2016-10-01 09:43:48', '{"99":{"name":"i-pad mini","id":"99","qty":1,"option":"","price":"500.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"1\\"}","shipping":0,"tax":0,"coupon":"","image":"http:\\/\\/localhost\\/gmanzo\\/assets\\/images\\/products\\/4.jpg","subtotal":"500.00","address":"3214 N University Ave #409 Provo, UT ","addedby":"FoodCo","location":"oyo","trans_id":"2502874941"},"1":{"name":"Banana Fruit","id":"1","qty":1,"option":"","price":"1200.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"1\\"}","shipping":0,"tax":0,"coupon":"","image":"http:\\/\\/localhost\\/gmanzo\\/assets\\/images\\/products\\/1.jpg","subtotal":"1200.00","address":"3214 N University Ave #409 Provo, UT ","addedby":"FoodCo","location":"oyo","trans_id":"2502874941"}}', 'pending', '', '2016-10-02 16:00:29', 1),
(3, '3405289544', '2016-10-02 03:16:53', '{"1":{"name":"Banana Fruit","id":"1","qty":2,"option":"","price":"1200.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"1\\"}","shipping":0,"tax":0,"coupon":"","image":"http:\\/\\/localhost\\/gmanzo\\/assets\\/images\\/products\\/1.jpg","subtotal":"1200.00","address":"3214 N University Ave #409 Provo, UT ","addedby":"FoodCo","location":"oyo","trans_id":"3405289544"},"99":{"name":"i-pad mini","id":"99","qty":1,"option":"","price":"500.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"1\\"}","shipping":0,"tax":0,"coupon":"","image":"http:\\/\\/localhost\\/gmanzo\\/assets\\/images\\/products\\/4.jpg","subtotal":"500.00","address":"3214 N University Ave #409 Provo, UT ","addedby":"FoodCo","location":"oyo","trans_id":"3405289544"}}', 'pending', '', '2016-10-02 11:00:31', 1),
(4, '6778923189', '2016-10-02 04:20:02', '{"1":{"name":"Banana Fruit","id":"1","qty":2,"option":"","price":"1200.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"1\\"}","shipping":0,"tax":0,"coupon":"","image":"http:\\/\\/localhost\\/gmanzo\\/assets\\/images\\/products\\/1.jpg","subtotal":"1200.00","address":"3214 N University Ave #409 Provo, UT ","addedby":"FoodCo","location":"oyo","trans_id":"6778923189"},"99":{"name":"i-pad mini","id":"99","qty":1,"option":"","price":"500.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"1\\"}","shipping":0,"tax":0,"coupon":"","image":"http:\\/\\/localhost\\/gmanzo\\/assets\\/images\\/products\\/4.jpg","subtotal":"500.00","address":"3214 N University Ave #409 Provo, UT ","addedby":"FoodCo","location":"oyo","trans_id":"6778923189"}}', 'pending', '', '2016-10-02 11:00:15', 1),
(5, '1643913339', '2016-10-27 16:59:01', '{"11":{"name":"bagel bread","id":"11","qty":3,"option":"","price":"250.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"2\\"}","shipping":0,"tax":0,"coupon":"","subtotal":"250.00","address":"3301 South Greenfield Rd Gilbert, AZ 85297","addedby":"Shoprite","location":"oyo"},"20":{"name":"beech honey","id":"20","qty":2,"option":"","price":"250.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"2\\"}","shipping":0,"tax":0,"coupon":"","subtotal":"250.00","address":"3301 South Greenfield Rd Gilbert, AZ 85297","addedby":"Shoprite","location":"oyo"},"10":{"name":"bell pepper","id":"10","qty":"1","option":"","price":"100.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"1\\"}","shipping":0,"tax":0,"coupon":"","subtotal":"100.00","address":"3214 N University Ave #409 Provo, UT ","addedby":"FoodCo","location":"oyo"}}', 'processed', '17769', '0000-00-00 00:00:00', 1234567890),
(6, '7004274880', '2016-10-27 17:51:56', '{"11":{"name":"bagel bread","id":"11","qty":3,"option":"","price":"250.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"2\\"}","shipping":0,"tax":0,"coupon":"","subtotal":"250.00","address":"3301 South Greenfield Rd Gilbert, AZ 85297","addedby":"Shoprite","location":"oyo","trans_id":"1643913339"},"20":{"name":"beech honey","id":"20","qty":2,"option":"","price":"250.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"2\\"}","shipping":0,"tax":0,"coupon":"","subtotal":"250.00","address":"3301 South Greenfield Rd Gilbert, AZ 85297","addedby":"Shoprite","location":"oyo","trans_id":"1643913339"},"10":{"name":"bell pepper","id":"10","qty":"1","option":"","price":"100.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"1\\"}","shipping":0,"tax":0,"coupon":"","subtotal":"100.00","address":"3214 N University Ave #409 Provo, UT ","addedby":"FoodCo","location":"oyo","trans_id":"1643913339"}}', 'processed', '20396', '0000-00-00 00:00:00', 1234567890),
(7, '4816264620', '2016-10-27 21:08:56', '{"11":{"name":"bagel bread","id":"11","qty":"1","option":"","price":"250.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"2\\"}","shipping":0,"tax":0,"coupon":"","subtotal":"250.00","address":"3301 South Greenfield Rd Gilbert, AZ 85297","addedby":"Shoprite","location":"oyo"},"20":{"name":"beech honey","id":"20","qty":"1","option":"","price":"250.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"2\\"}","shipping":0,"tax":0,"coupon":"","subtotal":"250.00","address":"3301 South Greenfield Rd Gilbert, AZ 85297","addedby":"Shoprite","location":"oyo"},"10":{"name":"bell pepper","id":"10","qty":"1","option":"","price":"100.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"1\\"}","shipping":0,"tax":0,"coupon":"","subtotal":"100.00","address":"3214 N University Ave #409 Provo, UT ","addedby":"FoodCo","location":"oyo"}}', 'processed', '17769', '0000-00-00 00:00:00', 1234567890),
(8, '2172519759', '2016-10-28 15:37:22', '{"20":{"name":"beech honey","id":"20","qty":"3","option":"","price":"250.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"2\\"}","shipping":0,"tax":0,"coupon":"","image":"\\/peprice\\/assets\\/uploads\\/1476028534_beech.jpg","subtotal":750,"address":"3301 South Greenfield Rd Gilbert, AZ 85297","addedby":"Shoprite","location":"oyo","trans_id":"2172519759"},"15":{"name":"Tai Pei Chicken Chow Mein","id":"15","qty":"1","option":"","price":"370.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"2\\"}","shipping":0,"tax":0,"coupon":"","image":"\\/peprice\\/assets\\/uploads\\/1476027252_tai.jpg","subtotal":370,"address":"3301 South Greenfield Rd Gilbert, AZ 85297","addedby":"Shoprite","location":"oyo","trans_id":"2172519759"}}', 'pending', '17769', '2016-10-28 16:37:22', 1),
(9, '3672696362', '2016-10-28 15:39:26', '{"20":{"name":"beech honey","id":"20","qty":"3","option":"","price":"250.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"2\\"}","shipping":0,"tax":0,"coupon":"","image":"\\/peprice\\/assets\\/uploads\\/1476028534_beech.jpg","subtotal":750,"address":"3301 South Greenfield Rd Gilbert, AZ 85297","addedby":"Shoprite","location":"oyo","trans_id":"3672696362"},"15":{"name":"Tai Pei Chicken Chow Mein","id":"15","qty":"1","option":"","price":"370.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"2\\"}","shipping":0,"tax":0,"coupon":"","image":"\\/peprice\\/assets\\/uploads\\/1476027252_tai.jpg","subtotal":370,"address":"3301 South Greenfield Rd Gilbert, AZ 85297","addedby":"Shoprite","location":"oyo","trans_id":"3672696362"}}', 'pending', '17769', '2016-10-28 16:39:26', 1),
(10, '2151188534', '2016-10-28 15:42:09', '{"20":{"name":"beech honey","id":"20","qty":"3","option":"","price":"250.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"2\\"}","shipping":0,"tax":0,"coupon":"","image":"\\/peprice\\/assets\\/uploads\\/1476028534_beech.jpg","subtotal":750,"address":"3301 South Greenfield Rd Gilbert, AZ 85297","addedby":"Shoprite","location":"oyo","trans_id":"2151188534"},"15":{"name":"Tai Pei Chicken Chow Mein","id":"15","qty":"1","option":"","price":"370.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"2\\"}","shipping":0,"tax":0,"coupon":"","image":"\\/peprice\\/assets\\/uploads\\/1476027252_tai.jpg","subtotal":370,"address":"3301 South Greenfield Rd Gilbert, AZ 85297","addedby":"Shoprite","location":"oyo","trans_id":"2151188534"}}', 'pending', '17769', '2016-10-28 16:42:09', 1),
(11, '2209719784', '2016-10-28 16:03:51', '{"20":{"name":"beech honey","id":"20","qty":"3","option":"","price":"250.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"2\\"}","shipping":0,"tax":0,"coupon":"","image":"\\/peprice\\/assets\\/uploads\\/1476028534_beech.jpg","subtotal":750,"address":"3301 South Greenfield Rd Gilbert, AZ 85297","addedby":"Shoprite","location":"oyo","trans_id":"2209719784"},"15":{"name":"Tai Pei Chicken Chow Mein","id":"15","qty":"1","option":"","price":"370.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"2\\"}","shipping":0,"tax":0,"coupon":"","image":"\\/peprice\\/assets\\/uploads\\/1476027252_tai.jpg","subtotal":370,"address":"3301 South Greenfield Rd Gilbert, AZ 85297","addedby":"Shoprite","location":"oyo","trans_id":"2209719784"}}', 'pending', '17769', '2016-10-28 17:03:51', 1),
(12, '2145476251', '2016-10-28 16:09:58', '{"20":{"name":"beech honey","id":"20","qty":"3","option":"","price":"250.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"2\\"}","shipping":0,"tax":0,"coupon":"","image":"\\/peprice\\/assets\\/uploads\\/1476028534_beech.jpg","subtotal":750,"address":"3301 South Greenfield Rd Gilbert, AZ 85297","addedby":"Shoprite","location":"oyo","trans_id":"2145476251"},"15":{"name":"Tai Pei Chicken Chow Mein","id":"15","qty":"1","option":"","price":"370.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"2\\"}","shipping":0,"tax":0,"coupon":"","image":"\\/peprice\\/assets\\/uploads\\/1476027252_tai.jpg","subtotal":370,"address":"3301 South Greenfield Rd Gilbert, AZ 85297","addedby":"Shoprite","location":"oyo","trans_id":"2145476251"}}', 'pending', '17769', '2016-10-28 17:09:58', 1),
(13, '1377483303', '2016-10-28 16:38:39', '{"20":{"name":"beech honey","id":"20","qty":"3","option":"","price":"250.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"2\\"}","shipping":0,"tax":0,"coupon":"","image":"\\/peprice\\/assets\\/uploads\\/1476028534_beech.jpg","subtotal":750,"address":"3301 South Greenfield Rd Gilbert, AZ 85297","addedby":"Shoprite","location":"oyo","trans_id":"1377483303"},"15":{"name":"Tai Pei Chicken Chow Mein","id":"15","qty":"1","option":"","price":"370.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"2\\"}","shipping":0,"tax":0,"coupon":"","image":"\\/peprice\\/assets\\/uploads\\/1476027252_tai.jpg","subtotal":370,"address":"3301 South Greenfield Rd Gilbert, AZ 85297","addedby":"Shoprite","location":"oyo","trans_id":"1377483303"}}', 'pending', '17769', '2016-10-28 17:38:39', 1),
(14, '6797547664', '2016-10-28 20:23:31', '{"17":{"name":"Non Dairy Coffee","id":"17","qty":"3","option":"","price":"300.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"2\\"}","shipping":0,"tax":0,"coupon":"","image":"\\/peprice\\/assets\\/uploads\\/1476027899_coffeemate.jpg","subtotal":900,"address":"3301 South Greenfield Rd Gilbert, AZ 85297","addedby":"Shoprite","location":"oyo","trans_id":"6797547664"},"9":{"name":"oven chips","id":"9","qty":"1","option":"","price":"500.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"1\\"}","shipping":0,"tax":0,"coupon":"","image":"\\/peprice\\/assets\\/uploads\\/1475972939_oven_chips.jpg","subtotal":500,"address":"3214 N University Ave #409 Provo, UT ","addedby":"FoodCo","location":"oyo","trans_id":"6797547664"}}', 'pending', '17769', '2016-10-28 21:23:31', 1),
(15, '1407219221', '2016-10-28 20:25:47', '{"17":{"name":"Non Dairy Coffee","id":"17","qty":"3","option":"","price":"300.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"2\\"}","shipping":0,"tax":0,"coupon":"","image":"\\/peprice\\/assets\\/uploads\\/1476027899_coffeemate.jpg","subtotal":900,"address":"3301 South Greenfield Rd Gilbert, AZ 85297","addedby":"Shoprite","location":"oyo","trans_id":"1407219221"},"9":{"name":"oven chips","id":"9","qty":"1","option":"","price":"500.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"1\\"}","shipping":0,"tax":0,"coupon":"","image":"\\/peprice\\/assets\\/uploads\\/1475972939_oven_chips.jpg","subtotal":500,"address":"3214 N University Ave #409 Provo, UT ","addedby":"FoodCo","location":"oyo","trans_id":"1407219221"}}', 'pending', '17769', '2016-10-28 21:25:47', 1),
(16, '8203561834', '2016-10-28 20:27:06', '{"17":{"name":"Non Dairy Coffee","id":"17","qty":"3","option":"","price":"300.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"2\\"}","shipping":0,"tax":0,"coupon":"","image":"\\/peprice\\/assets\\/uploads\\/1476027899_coffeemate.jpg","subtotal":900,"address":"3301 South Greenfield Rd Gilbert, AZ 85297","addedby":"Shoprite","location":"oyo","trans_id":"8203561834"},"9":{"name":"oven chips","id":"9","qty":"1","option":"","price":"500.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"1\\"}","shipping":0,"tax":0,"coupon":"","image":"\\/peprice\\/assets\\/uploads\\/1475972939_oven_chips.jpg","subtotal":500,"address":"3214 N University Ave #409 Provo, UT ","addedby":"FoodCo","location":"oyo","trans_id":"8203561834"}}', 'pending', '17769', '2016-10-28 21:27:06', 1),
(17, '5072851113', '2016-10-28 20:33:13', '{"11":{"name":"bagel bread","id":"11","qty":"1","option":"","price":"250.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"2\\"}","shipping":0,"tax":0,"coupon":"","subtotal":"250.00","address":"3301 South Greenfield Rd Gilbert, AZ 85297","addedby":"Shoprite","location":"oyo"},"20":{"name":"beech honey","id":"20","qty":2,"option":"","price":"250.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"2\\"}","shipping":0,"tax":0,"coupon":"","subtotal":"250.00","address":"3301 South Greenfield Rd Gilbert, AZ 85297","addedby":"Shoprite","location":"oyo"},"10":{"name":"bell pepper","id":"10","qty":"3","option":"","price":"100.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"1\\"}","shipping":0,"tax":0,"coupon":"","subtotal":"100.00","address":"3214 N University Ave #409 Provo, UT ","addedby":"FoodCo","location":"oyo"}}', 'processed', '20396', '0000-00-00 00:00:00', 1234567890),
(18, '0244596139', '2016-10-31 10:40:05', '{"1":{"name":"nescafe","id":"1","qty":1,"option":"","price":"180.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"1\\"}","shipping":0,"tax":0,"coupon":"","image":"\\/peprice\\/assets\\/uploads\\/1475963987_nescafe.jpg","subtotal":"180.00","address":"3214 N University Ave #409 Provo, UT ","addedby":"FoodCo","location":"oyo","trans_id":"0244596139"},"4":{"name":"Super Coffee","id":"4","qty":1,"option":"","price":"700.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"1\\"}","shipping":0,"tax":0,"coupon":"","image":"\\/peprice\\/assets\\/uploads\\/1475970297_supper_coffee.jpg","subtotal":"700.00","address":"3214 N University Ave #409 Provo, UT ","addedby":"FoodCo","location":"oyo","trans_id":"0244596139"},"16":{"name":"Birds Eye Voila","id":"16","qty":1,"option":"","price":"280.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"2\\"}","shipping":0,"tax":0,"coupon":"","image":"\\/peprice\\/assets\\/uploads\\/1476027444_birdeye.jpg","subtotal":"280.00","address":"3301 South Greenfield Rd Gilbert, AZ 85297","addedby":"Shoprite","location":"oyo","trans_id":"0244596139"}}', 'pending', '20396', '2016-10-31 11:40:05', 2147483647),
(19, '5213992871', '2016-11-01 01:34:30', '{"17":{"name":"Non Dairy Coffee","id":"17","qty":2,"option":"","price":"300.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"2\\"}","shipping":0,"tax":0,"coupon":"","image":"\\/peprice\\/assets\\/uploads\\/1476027899_coffeemate.jpg","subtotal":"300.00","address":"3301 South Greenfield Rd Gilbert, AZ 85297","addedby":"Shoprite","location":"oyo","trans_id":"5213992871"},"8":{"name":"Cameron Jamaica Blue Mountai","id":"8","qty":1,"option":"","price":"700.00","vendor_id":"{\\"type\\":\\"vendor\\",\\"id\\":\\"1\\"}","shipping":0,"tax":0,"coupon":"","image":"\\/peprice\\/assets\\/uploads\\/1475971437_cameron.jpg","subtotal":"700.00","address":"3214 N University Ave #409 Provo, UT ","addedby":"FoodCo","location":"oyo","trans_id":"5213992871"}}', 'pending', '20396', '2016-11-01 02:34:30', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `stock_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext,
  `category` longtext,
  `sub_category` longtext,
  `product` longtext,
  `quantity` longtext,
  `rate` longtext,
  `total` longtext,
  `reason_note` longtext,
  `datetime` longtext,
  `sale_id` varchar(30) DEFAULT NULL,
  `added_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`stock_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=80 ;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `type`, `category`, `sub_category`, `product`, `quantity`, `rate`, `total`, `reason_note`, `datetime`, `sale_id`, `added_by`) VALUES
(1, 'add', '1', '1', '1', '101', '80', '8080', '', '1436646573', '', '1'),
(2, 'add', '1', '2', '2', '100', '80', '8000', '', '1436646648', '', '1'),
(3, 'add', '2', '4', '3', '100', '80', '8000', '', '1436646728', '', '1'),
(4, 'add', '2', '4', '4', '100', '80', '8000', '', '1436646794', '', '1'),
(5, 'add', '1', '1', '5', '100', '100', '10000', '', '1438969394', '', '1'),
(69, 'destroy', '1', '3', '67', '1', NULL, '0', 'sale', '1444344245', '2', NULL),
(70, 'destroy', '1', '3', '118', '1', NULL, '0', 'sale', '1444344245', '2', NULL),
(71, 'destroy', '6', '25', '119', '1', NULL, '0', 'sale', '1444673766', '3', NULL),
(72, 'destroy', '6', '25', '119', '1', NULL, '0', 'sale', '1444743436', '4', NULL),
(73, 'destroy', '4', '8', '117', '1', NULL, '0', 'sale', '1444743436', '4', NULL),
(74, 'destroy', '1', '3', '118', '1', NULL, '0', 'sale', '1444772995', '5', NULL),
(75, 'destroy', '6', '26', '120', '1', NULL, '0', 'sale', '1444772995', '5', NULL),
(76, 'destroy', '6', '27', '121', '1', NULL, '0', 'sale', '1444774847', '6', NULL),
(77, 'destroy', '6', '27', '122', '1', NULL, '0', 'sale', '1444776296', '7', NULL),
(78, 'destroy', '6', '27', '121', '1', NULL, '0', 'sale', '1444776296', '7', NULL),
(79, 'add', '1', '1', '1', '10', '1000.00', '10000', '', '1471141202', NULL, '{"type":"vendor","id":"1"}');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE IF NOT EXISTS `sub_category` (
  `sub_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_category_name` text NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`sub_category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`sub_category_id`, `sub_category_name`, `category_id`) VALUES
(1, 'coffee / tea', 2),
(2, 'soda', 2),
(3, 'sandwich loaves', 3),
(4, 'dinner rolls', 3),
(5, 'tortillas', 1),
(6, 'meat(s)', 7),
(7, 'bagels', 3),
(8, 'vegetables', 4),
(9, 'spaghetti sauce', 4),
(10, 'ketchup', 4),
(11, 'cheeses', 5),
(12, 'eggs', 5),
(13, 'milk', 5),
(14, ' yogurt', 5),
(15, 'butter', 5),
(16, 'cereals', 6),
(17, 'flour', 6),
(18, 'sugar', 6),
(19, 'pasta', 6),
(20, 'mixes', 6),
(21, 'waffles', 1),
(22, 'vegetables', 1),
(23, 'individual meals', 1),
(24, 'ice cream', 1),
(25, 'lunch meat', 7),
(26, 'poultry', 7),
(27, 'beef', 7),
(28, 'pork', 7),
(29, 'fruits', 8),
(30, 'vegetables', 8),
(31, 'bread', 3),
(32, 'Frozen Dinners / Meals', 1),
(33, 'Pizza', 1),
(34, 'Ice Cream / Novelties', 1),
(35, 'Frozen Seafood', 1),
(36, 'Frozen Desserts / Bakery', 1),
(37, 'honey', 4);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE IF NOT EXISTS `vendor` (
  `vendor_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `company` varchar(500) DEFAULT NULL,
  `display_name` varchar(500) DEFAULT NULL,
  `address1` longtext,
  `address2` longtext,
  `status` varchar(10) DEFAULT NULL,
  `create_timestamp` int(20) DEFAULT NULL,
  `details` longtext,
  `facebook` varchar(300) DEFAULT NULL,
  `skype` varchar(300) DEFAULT NULL,
  `google_plus` varchar(300) DEFAULT NULL,
  `twitter` varchar(300) DEFAULT NULL,
  `youtube` varchar(300) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `description` longtext,
  `lat_lang` varchar(300) NOT NULL DEFAULT '(0,0)',
  `vendor_logo` mediumtext NOT NULL,
  `role` enum('guest','user','admin') NOT NULL,
  PRIMARY KEY (`vendor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendor_id`, `name`, `email`, `password`, `company`, `display_name`, `address1`, `address2`, `status`, `create_timestamp`, `details`, `facebook`, `skype`, `google_plus`, `twitter`, `youtube`, `phone`, `description`, `lat_lang`, `vendor_logo`, `role`) VALUES
(1, 'Mr. Vendor', 'vendor@shop.com', '$2a$08$eUAwhfJe8E9spBynZk2Nj.WaXE1wXiVJJFqVbxumVW3ggILMRKIN2', 'Vendor Pvt. Ltd.', 'FoodCo', 'oyo', '3214 N University Ave #409 Provo, UT ', 'approved', 1439049705, '', '', '', '', '', '', '', '', '(23.74319497113364, 90.40212959191285)', 'brand2.png', 'user'),
(2, 'Example Vendor', 'vendor1@shop.com', '$2a$08$eUAwhfJe8E9spBynZk2Nj.WaXE1wXiVJJFqVbxumVW3ggILMRKIN2', 'Example Vendor', 'Shoprite', 'oyo', '3301 South Greenfield Rd Gilbert, AZ 85297', 'approved', 1444161452, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'brand3.png', 'user'),
(3, 'Example Vendor', 'vendor2@shop.com', '$2a$08$eUAwhfJe8E9spBynZk2Nj.WaXE1wXiVJJFqVbxumVW3ggILMRKIN2', 'Example Vendor', 'Abeni', 'ogun', '2001 East Phillips Circle  Centennial, Colorado ', 'approved', 1444161452, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'brand4.png', 'user'),
(4, 'Example Vendor', 'vendor3@shop.com', '$2a$08$eUAwhfJe8E9spBynZk2Nj.WaXE1wXiVJJFqVbxumVW3ggILMRKIN2', 'Example Vendor', 'Cadbury', 'lagos', '2001 East Phillips Circle  Centennial, Eleyele', 'approved', 1444161452, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'brand6.png', 'user'),
(5, 'Example Vendor', 'vendor4@shop.com', '$2a$08$eUAwhfJe8E9spBynZk2Nj.WaXE1wXiVJJFqVbxumVW3ggILMRKIN2', 'Example Vendor', 'GMANZO', 'lagos', '3214 N University Ave #409 Provo, UT ', 'approved', 1444161452, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'brand1.png', 'user'),
(6, 'Example Vendor', 'vendor5@shop.com', '$2a$08$eUAwhfJe8E9spBynZk2Nj.WaXE1wXiVJJFqVbxumVW3ggILMRKIN2', 'Example Vendor', 'Feedwell', 'oyo', '3214 N University Ave #409 Provo, UT ', 'approved', 1444161452, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'feedwell.png', 'user'),
(7, 'Example Vendor', 'vendor6@shop.com', '$2a$08$eUAwhfJe8E9spBynZk2Nj.WaXE1wXiVJJFqVbxumVW3ggILMRKIN2', 'Example Vendor', 'Jasmine', 'oyo', '3214 N University Ave #409 Provo, UT ', 'approved', 1444161452, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'jasmine.png', 'user'),
(8, 'Example Vendor', 'vendor7@shop.com', '$2a$08$eUAwhfJe8E9spBynZk2Nj.WaXE1wXiVJJFqVbxumVW3ggILMRKIN2', 'Example Vendor', 'Gemeran', 'osun', 'Example House', 'approved', 1444161452, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'gemeran.png', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `vendorsad`
--

CREATE TABLE IF NOT EXISTS `vendorsad` (
  `vendor_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `company` varchar(500) DEFAULT NULL,
  `display_name` varchar(500) DEFAULT NULL,
  `address1` longtext,
  `address2` longtext,
  `status` varchar(10) DEFAULT NULL,
  `create_timestamp` int(20) DEFAULT NULL,
  `details` longtext,
  `facebook` varchar(300) DEFAULT NULL,
  `skype` varchar(300) DEFAULT NULL,
  `google_plus` varchar(300) DEFAULT NULL,
  `twitter` varchar(300) DEFAULT NULL,
  `youtube` varchar(300) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `keywords` longtext,
  `description` longtext,
  `lat_lang` varchar(300) NOT NULL DEFAULT '(0,0)',
  `role` enum('user','admin') NOT NULL,
  PRIMARY KEY (`vendor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `vendorsad`
--

INSERT INTO `vendorsad` (`vendor_id`, `name`, `email`, `password`, `company`, `display_name`, `address1`, `address2`, `status`, `create_timestamp`, `details`, `facebook`, `skype`, `google_plus`, `twitter`, `youtube`, `phone`, `keywords`, `description`, `lat_lang`, `role`) VALUES
(1, 'Mr. Vendor', 'vendor@gmanzo.com', '$2a$08$eUAwhfJe8E9spBynZk2Nj.WaXE1wXiVJJFqVbxumVW3ggILMRKIN2', 'Vendor Pvt. Ltd.', 'Vendor Shop', 'oyo', 'stackflow market, no 21, gbagi ibadan', 'approved', 1439049705, '', '', '', '', '', '', '08098513161', '', '', '(23.74319497113364, 90.40212959191285)', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
