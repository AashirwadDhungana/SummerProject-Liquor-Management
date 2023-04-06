-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2022 at 03:00 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(10) NOT NULL,
  `cart_user_id` int(3) NOT NULL,
  `cart_product_id` int(3) NOT NULL,
  `cart_quantity` int(3) NOT NULL,
  `cart_total_price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notifi_id` int(3) NOT NULL,
  `notifi_cust_id` int(3) NOT NULL,
  `notifi_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `notifi_notice` varchar(50) NOT NULL,
  `notifi_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notifi_id`, `notifi_cust_id`, `notifi_date`, `notifi_notice`, `notifi_status`) VALUES
(30, 6, '2022-05-22 16:25:08', 'You Have New Order', 'Read'),
(31, 6, '2022-05-22 16:25:39', 'Your Order Shiped!', 'Read_usr'),
(32, 6, '2022-05-22 16:32:30', 'You Have New Order', 'Read'),
(33, 6, '2022-05-22 16:35:22', 'Your Order Canceld!', 'Read_usr'),
(34, 6, '2022-05-22 17:11:18', 'You Have New Order', 'Read'),
(35, 6, '2022-05-22 17:11:46', 'Your Order Shiped!', 'Read_usr'),
(36, 6, '2022-05-22 17:24:01', 'Your Order Canceld!', 'Read_usr'),
(37, 6, '2022-05-23 03:11:14', 'You Have New Order', 'Read'),
(38, 6, '2022-05-23 03:12:05', 'Your Order Shiped!', 'Read_usr'),
(39, 6, '2022-05-24 02:30:30', 'You Have New Order', 'Read'),
(40, 6, '2022-05-24 02:34:36', 'Your Order Shiped!', 'Read_usr'),
(41, 9, '2022-05-25 11:48:26', 'You Have New Order', 'Read'),
(42, 9, '2022-05-25 11:49:03', 'Your Order Shiped!', 'Read_usr');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(3) NOT NULL,
  `order_user_id` int(3) NOT NULL,
  `order_product_id` int(3) NOT NULL,
  `order_quantity` int(2) NOT NULL,
  `order_total_price` int(10) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `order_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_user_id`, `order_product_id`, `order_quantity`, `order_total_price`, `order_date`, `order_status`) VALUES
(39, 6, 20, 3, 34800, '2022-05-22 16:25:08', 'Completed'),
(40, 6, 24, 3, 11700, '2022-05-22 16:32:30', 'Canceld'),
(41, 6, 21, 1, 6700, '2022-05-22 17:11:18', 'Canceld'),
(42, 6, 26, 3, 5025, '2022-05-23 03:11:12', 'Completed'),
(43, 6, 20, 0, 11600, '2022-05-24 02:30:30', 'Completed'),
(44, 9, 19, 2, 26200, '2022-05-25 11:48:26', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(3) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_brand` varchar(50) NOT NULL,
  `product_category` varchar(50) NOT NULL,
  `product_price` int(6) NOT NULL,
  `product_size` int(4) NOT NULL,
  `product_abv` varchar(5) NOT NULL,
  `product_description` varchar(800) NOT NULL,
  `product_image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_brand`, `product_category`, `product_price`, `product_size`, `product_abv`, `product_description`, `product_image`) VALUES
(19, 'CHIVAS REGAL EXTRA', 'Chivas', 'Whiskey', 13100, 750, '40%', 'Selectively matured in Olorosso sherry casks, the Chivas Regal Extra has intense flavours coupled with a deep amber colour. The blended Scotch has aromas of pear and melon, cinnamon, milk chocolate, creamy toffee, with a dash of ginger. On the palate, one can taste sweet pears, cinnamon, and notes of vanilla with a rich, smooth finish.', 'Chivas-Regal-Extra.png'),
(20, 'DEWARS SPECIAL RESERVE 12 YEARS', 'Dewars', 'Whiskey', 11600, 750, '40%', 'Dewar\'s 12 Year Old Blended Scotch Whisky has a nose that presents as a complex blended Scotch whisky at first but with time some toffee notes arrive nicely backed by the grain notes. Some good oak spice is also prevalent along with some heather.\n\nThe finish is dry with some cleansing maltiness, a surprisingly long finish that is complex and warming.', 'Dewars-Special-Reserve-12-Years.png'),
(21, 'DEWARS WHITE LABEL WHISKEY', 'Dewars', 'Whiskey', 6700, 750, '40%', 'First crafted in 1899 and blended with 40 different scotch whiskies, the Dewarâ€™s White Label has a uniquely refreshing taste that makes it a perfect accompaniment to food. With notes of honey, peach, and citrus â€“ the whisky has a unique smoothness', 'Dewars-White-Label-Whisky.png'),
(22, 'GLENLIVET 12 YEARS', 'Glenlivet', 'Whiskey', 16800, 750, '40%', 'Made with the classic Glenlivet style â€“ first matured in traditional oak and then in American Oak casks, the Glenlivet 12 has a distinct smoothness coupled with summery aromas. The whisky has a well balanced palate and strong notes of pineapple.', 'Glenlivet-12-Years.png'),
(23, 'GLENLIVET FOUNDERS RESERVE', 'Glenlivet', 'Whiskey', 13000, 750, '40%', 'Inspired by the distillation methods of the founder George Smith, the Glenlivet Founders Reserve is crafted to emulate the first 1824 Glenlivet. Manufactured in copper stills designed by the founder, and matured in traditional oak casks, the Founderâ€™s Reserve has aromas of citrus and sweet oranges. Hints of orange, peat, toffee apple, and vanilla can be noticed on the palate.', 'Glenlivet-Founders-Reserve.png'),
(24, 'Absolut Juice Apple Edition', 'Absolut', 'Vodka', 3900, 500, '35%%', 'MADE WITH ABSOLUT VODKA, REAL APPLE JUICE AND NATURAL FLAVORS\r\n\r\nAutumn in Sweden paints the landscape in beautiful golden yellows and warm reds.\r\n\r\nWe have squeezed in the taste of autumn and bottled it up for you.\r\n\r\nOur classic Absolut Vodka with the finest apple juice brings you that fresh taste of ripe and crunchy apples. Juicy!', '479440206661032031937156527823782513009475651.png'),
(25, '8848 Vodka 750ML', '8848', 'Vodka', 1870, 750, '40%%', 'Mount Everest, known as Chhomolungma by Sherpas meaning “Mother Goddess of the Earth” is the highest point in the world standing at 8848 meters. This vodka is crafted from imported grain spirits, distilled from Soft French Winter Wheat, and blended in small batches with Pure Spring Water from the Himalayas.\r\n\r\nThe remarkable superior taste comes from the time honored tradition of using copper in the distilling process. A large copper pot is filled with the eclectic mix of ingredients and the process of distillation is repeated five time until the desired flavor of 8848 Vodka is achieved.\r\n\r\nWith no additives and artificial flavors added, the product is sugar free as well as glycerin free. Devoid of any impurities and distilled five times, 8848 Vodka is in a class of it’s own.', '355799279717459570466615420087363375618.png'),
(26, 'Ruslan 750ML', 'Ruslan ', 'Vodka', 1675, 750, '40%%', 'The most popular vodka in Nepal for over 25 years.\r\n\r\nTraditional ingredients based on an old Russian recipe\r\n\r\nState of the art filtration technology and triple distillation ensuring a crisp, consistent taste.\r\n\r\nA true 100% pure Vodka with no after effects.', '6614098334299640508803120305158466341430.png'),
(29, 'Gorkha Premium Bottle 650ML', 'Gorkha', 'Beer', 350, 650, '5%', 'Gorkha is a premium quality Nepali beer, brewed with the finest hops, pure water and barley malt. The authentic Himalayan brew was launched in the Nepali market in 2006 to cater to those who prefer high quality local beer. Gorkha is exported to various countries worldwide.', '92603388988145564434348004004924407976952.png'),
(30, 'Tuborg Bottle 650ML', 'Tuborg', 'Beer', 390, 650, '5.5%', 'Launched in Nepal in 1990 and enjoyed worldwide since 1880, Tuborg is the largest selling, most preferred and therefore the number 1 beer brand in Nepal.\r\n\r\nTuborg recently unveiled its new look with the innovative Pull-Off Cap for the first time in Nepal.\r\n\r\nTuborg also has a strong association with music and has been involved with various musical events over the years with the essence of Open for Fun…wherever you are.', '007924336801487969596753469569380288314312.png'),
(31, 'Snowman Gin 750ML', 'Snowman', 'Gin', 1860, 750, '42.8%', 'This handcrafted gin is distilled from a proprietary recipe in a traditional copper pot-still manufactured by John Dore & Company in 1903.\r\n\r\nThe smooth and the complex taste of “Abominable Snowman” is the result of capturing the flavours of eight exotic hand selected botanicals including Juniper Berries from Macedonia, Lemon Peel from Spain, Coriander Seeds from Bulgaria, and Angelica Root from Belgium. These are combined with Liquorice from Nepal, Orris Root from Italy, Bitter Almonds from Greece and Cinnamon from Seychelles to deliver a perfectly balanced London Dry Gin.', '04846155596781954546562558359929283127950.png'),
(32, 'Blue Diamond 750ML', 'Blue Diamond', 'Gin', 920, 750, '34.2%', 'Blue Diamond is an extra dry gin in the 40up segment. It is synonymous with quality, price and taste.\r\n\r\nInfused with the fines botanical ingredients for a satisfying finish.', '62334297098780883661210381401412825548.png'),
(33, 'Barahsinghe Craft Pilsner Bottle 650ML', 'Barahsinghe', 'Beer', 345, 650, '5%', 'Barahsinghe Craft is Nepal’s first dry hopped beer but with a Pilsner style finish.\r\n\r\nBrewed with imported German Malted Barley, Natural Spring Water and Aromatic Hops, this beer with floral, woody and spicy aromatics will certainly please your palate.\r\n\r\nIngredients: Malted Barley, Rice, Hops, Yeast and Natural Spring Water.', '46360219391010389785536218887123747528423.png');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_product_id` int(10) NOT NULL,
  `stock_product_quantity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(3) NOT NULL,
  `user_first_name` varchar(30) NOT NULL,
  `user_last_name` varchar(30) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_password` varchar(10) NOT NULL,
  `user_nic` char(10) NOT NULL,
  `user_address_no` varchar(5) NOT NULL,
  `user_address_street` varchar(30) NOT NULL,
  `user_address_town` varchar(30) NOT NULL,
  `user_tp` char(10) NOT NULL,
  `user_email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_first_name`, `user_last_name`, `user_name`, `user_password`, `user_nic`, `user_address_no`, `user_address_street`, `user_address_town`, `user_tp`, `user_email`) VALUES
(1, 'admin', 'admin', 'Admin', 'admin', '981982207v', '333', 'Matale', 'Matale', '0715408871', 'lakshanxp@hotmail.com'),
(6, 'test', 'user', 'user', 'user', '962323232v', '10', 'lake side', 'kandy', '0711111111', 'inne@gedara.com'),
(9, 'Ashirwad', 'Dhungana', 'Aashirwad', 'asdfgh', '0123456', '07', 'Chabahil', 'kathmandu', '9861236547', 'aashirwaddhungana61@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_user_id` (`cart_user_id`),
  ADD KEY `cart_product_id` (`cart_product_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notifi_id`),
  ADD KEY `notifi_cust_id` (`notifi_cust_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `order_user_id` (`order_user_id`),
  ADD KEY `order_product_id` (`order_product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_product_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_nic` (`user_nic`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notifi_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`cart_user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`cart_product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`notifi_cust_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`order_user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`order_product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`stock_product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
