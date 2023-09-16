-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: karma
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author` (
  `idAuthor` int NOT NULL AUTO_INCREMENT,
  `nameAuthor` varchar(45) NOT NULL,
  PRIMARY KEY (`idAuthor`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'Dale Carnegie'),(2,'Minh Đức'),(9,'José Mauro de Vasconcelos'),(10,'Nguyễn Nhật Ánh'),(11,'Nguyễn Ngọc Thuần');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `idBook` int NOT NULL AUTO_INCREMENT,
  `nameBook` varchar(45) NOT NULL,
  `priceBook` mediumint unsigned NOT NULL,
  `yearPublicationBook` year NOT NULL,
  `shortDescriptionBook` varchar(255) NOT NULL,
  `fullDescriptionBook` text NOT NULL,
  `idPublisher` int DEFAULT NULL,
  `idSupplier` int DEFAULT NULL,
  PRIMARY KEY (`idBook`),
  KEY `idPublisher_idx` (`idPublisher`),
  KEY `idSupplier_idx` (`idSupplier`),
  CONSTRAINT `idPublisher` FOREIGN KEY (`idPublisher`) REFERENCES `publisher` (`idPublisher`),
  CONSTRAINT `idSupplier` FOREIGN KEY (`idSupplier`) REFERENCES `supplier` (`idSupplier`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'Đắc Nhân Tâm',86000,2021,'Hay','Đắc nhân tâm của Dale Carnegie là quyển sách của mọi thời đại và một hiện tượng đáng kinh ngạc trong ngành xuất bản Hoa Kỳ. Trong suốt nhiều thập kỷ tiếp theo và cho đến tận bây giờ, tác phẩm này vẫn chiếm vị trí số một trong danh mục sách bán chạy nhất và trở thành một sự kiện có một không hai trong lịch sử ngành xuất bản thế giới và được đánh giá là một quyển sách có tầm ảnh hưởng nhất mọi thời đại.',11,13),(29,'Vừa Nhắm Mắt Vừa Mở Cửa Sổ',75000,2022,'Hay','Tác phẩm gồm những câu chuyện ngắn xoay quanh cuộc sống thường ngày của một đứa trẻ mười tuổi, từ những thứ nhỏ nhặt như cái răng khểnh, ngón tay cho đến chuyện mất mát của đời người. Có vui, có buồn, có được, có mất như cuộc sống vẫn diễn ra, nhưng cảm nhận và cách nhìn của cậu bé làm cho mỗi người lớn phải suy ngẫm.',13,3),(30,'Những Người Hàng Xóm',110000,2023,'Hay','Câu chuyện đi theo lời kể của một anh chàng mới lấy vợ, chuẩn bị đi làm và có ý thích viết văn. Anh chàng yêu vợ theo cách của mình, khen ngợi sùng bái người yêu cũng theo cách của mình, nhưng nhìn cuộc đời theo cách sống của những người hàng xóm. Sống trong tình yêu của vợ đầy mùi thơm và nhiều vị ngọt. Chứng kiến tình yêu của anh cảnh sát với cô bạn gái ngành y; mối tình thứ hai của người phụ nữ tốt bụng phát thanh viên ngôn ngữ ký hiệu. Và được chiêm nghiệm trong tình yêu đắm đuối mỗi ngày của ông họa sĩ già thương nhớ người vợ xinh đẹp-người mẫu, nàng thơ của ông.',13,3);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `both_book_author`
--

DROP TABLE IF EXISTS `both_book_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `both_book_author` (
  `idBookA` int NOT NULL,
  `idAuthor` int NOT NULL,
  PRIMARY KEY (`idBookA`,`idAuthor`),
  KEY `idBook_idx` (`idBookA`),
  KEY `abc_idx` (`idAuthor`),
  CONSTRAINT `idAuthor` FOREIGN KEY (`idAuthor`) REFERENCES `author` (`idAuthor`),
  CONSTRAINT `idBookA` FOREIGN KEY (`idBookA`) REFERENCES `book` (`idBook`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `both_book_author`
--

LOCK TABLES `both_book_author` WRITE;
/*!40000 ALTER TABLE `both_book_author` DISABLE KEYS */;
INSERT INTO `both_book_author` VALUES (1,1),(29,11),(30,10);
/*!40000 ALTER TABLE `both_book_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `both_book_category`
--

DROP TABLE IF EXISTS `both_book_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `both_book_category` (
  `idBookC` int NOT NULL,
  `idCategory` int NOT NULL,
  PRIMARY KEY (`idBookC`,`idCategory`),
  KEY `idBookC_idx` (`idBookC`),
  KEY `idCategory_idx` (`idCategory`),
  CONSTRAINT `idBookC` FOREIGN KEY (`idBookC`) REFERENCES `book` (`idBook`),
  CONSTRAINT `idCategory` FOREIGN KEY (`idCategory`) REFERENCES `category` (`idCategory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `both_book_category`
--

LOCK TABLES `both_book_category` WRITE;
/*!40000 ALTER TABLE `both_book_category` DISABLE KEYS */;
INSERT INTO `both_book_category` VALUES (1,4),(29,5),(30,5);
/*!40000 ALTER TABLE `both_book_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `both_book_promotion`
--

DROP TABLE IF EXISTS `both_book_promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `both_book_promotion` (
  `idBookP` int NOT NULL,
  `idPromotion` int NOT NULL,
  PRIMARY KEY (`idBookP`,`idPromotion`),
  KEY `idPromotion_idx` (`idPromotion`),
  CONSTRAINT `idBookP` FOREIGN KEY (`idBookP`) REFERENCES `book` (`idBook`),
  CONSTRAINT `idPromotion` FOREIGN KEY (`idPromotion`) REFERENCES `promotion` (`idPromotion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `both_book_promotion`
--

LOCK TABLES `both_book_promotion` WRITE;
/*!40000 ALTER TABLE `both_book_promotion` DISABLE KEYS */;
INSERT INTO `both_book_promotion` VALUES (1,1),(29,1),(30,1);
/*!40000 ALTER TABLE `both_book_promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `both_book_version`
--

DROP TABLE IF EXISTS `both_book_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `both_book_version` (
  `idBookV` int NOT NULL,
  `idVersion` int NOT NULL,
  `quantityBook` int unsigned NOT NULL,
  PRIMARY KEY (`idBookV`,`idVersion`),
  KEY `idBookV_idx` (`idBookV`),
  KEY `idVersion_idx` (`idVersion`),
  CONSTRAINT `idBookV` FOREIGN KEY (`idBookV`) REFERENCES `book` (`idBook`),
  CONSTRAINT `idVersion` FOREIGN KEY (`idVersion`) REFERENCES `version` (`idVersion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `both_book_version`
--

LOCK TABLES `both_book_version` WRITE;
/*!40000 ALTER TABLE `both_book_version` DISABLE KEYS */;
INSERT INTO `both_book_version` VALUES (1,1,1000),(29,1,1000),(30,1,1000);
/*!40000 ALTER TABLE `both_book_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `idCategory` int NOT NULL AUTO_INCREMENT,
  `nameCategory` varchar(45) NOT NULL,
  PRIMARY KEY (`idCategory`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (4,'Tâm Lý - Kỹ Năng Sống'),(5,'Tiểu Thuyết');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `idImage` int NOT NULL AUTO_INCREMENT,
  `pathImage` text NOT NULL,
  `idType_Image` int DEFAULT NULL,
  `idBook` int DEFAULT NULL,
  PRIMARY KEY (`idImage`),
  KEY `idType_Image_idx` (`idType_Image`),
  KEY `idBook_idx` (`idBook`),
  CONSTRAINT `idBook` FOREIGN KEY (`idBook`) REFERENCES `book` (`idBook`),
  CONSTRAINT `idType_Image` FOREIGN KEY (`idType_Image`) REFERENCES `type_image` (`idType_Image`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (2,'resources/image/book/ĐắcNhânTâm(1)/ĐắcNhânTâm(front).png',1,1),(3,'resources/image/book/ĐắcNhânTâm(1)/ĐắcNhânTâm(back).jpg',2,1),(4,'resources/image/book/Vừa NhắmMắtVừaMởCửaSổ(29)/Vừa NhắmMắtVừaMởCửaSổ(front).jpg',1,29),(5,'resources/image/book/Vừa NhắmMắtVừaMởCửaSổ(29)/Vừa NhắmMắtVừaMởCửaSổ(back).jpg',2,29),(6,'resources/image/book/NhữngNgườiHàngXóm(30)/NhữngNgườiHàngXóm(front).jpg',1,30),(7,'resources/image/book/NhữngNgườiHàngXóm(30)/NhữngNgườiHàngXóm(back).jpg',2,30);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion` (
  `idPromotion` int NOT NULL AUTO_INCREMENT,
  `namePromotion` varchar(255) NOT NULL,
  `startTimePromotion` datetime NOT NULL,
  `endTimePromotion` datetime NOT NULL,
  `discountPromotion` smallint NOT NULL,
  `describePromotion` text NOT NULL,
  PRIMARY KEY (`idPromotion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
INSERT INTO `promotion` VALUES (1,'Sale 20%','2021-02-01 00:00:00','2021-03-02 23:59:59',20,'Sale sập cmn sàn');
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publisher` (
  `idPublisher` int NOT NULL AUTO_INCREMENT,
  `namePublisher` varchar(45) NOT NULL,
  PRIMARY KEY (`idPublisher`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher`
--

LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;
INSERT INTO `publisher` VALUES (1,'Văn Học'),(2,'Hà Nội'),(3,'Hồng Đức'),(4,'Phụ Nữ'),(11,'Tổng Hợp TPHCM'),(12,'Hội Nhà Văn'),(13,'Trẻ');
/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_user` (
  `idRoleUser` int NOT NULL AUTO_INCREMENT,
  `nameRoleUser` varchar(45) NOT NULL,
  PRIMARY KEY (`idRoleUser`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (1,'Người dùng'),(2,'Nhân viên'),(3,'Admin');
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `idSupplier` int NOT NULL AUTO_INCREMENT,
  `nameSupplier` varchar(45) NOT NULL,
  PRIMARY KEY (`idSupplier`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'IPM'),(2,'Kim Đồng'),(3,'Trẻ'),(4,'Nhã Nam'),(13,'FIRST NEWS');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_image`
--

DROP TABLE IF EXISTS `type_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_image` (
  `idType_Image` int NOT NULL AUTO_INCREMENT,
  `nameType_Image` varchar(45) NOT NULL,
  `describeType_Image` text NOT NULL,
  PRIMARY KEY (`idType_Image`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_image`
--

LOCK TABLES `type_image` WRITE;
/*!40000 ALTER TABLE `type_image` DISABLE KEYS */;
INSERT INTO `type_image` VALUES (1,'front cover','Ảnh bìa trước của sách'),(2,'back cover','Ảnh bìa sau của sách'),(4,'hnb','Ảnh đặc biệt của sách');
/*!40000 ALTER TABLE `type_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `idUser` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `idRoleUser` int DEFAULT NULL,
  PRIMARY KEY (`idUser`),
  KEY `role_idx` (`idRoleUser`),
  CONSTRAINT `role` FOREIGN KEY (`idRoleUser`) REFERENCES `role_user` (`idRoleUser`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Khanh123','3306','Khánh',3),(13,'Dien@gmail.com','Dien@123','Điển',1),(14,'Thuan@gmail.com','Thuan@123','Thuận',1),(15,'Long@gmail.com','Long@123','Long',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `version`
--

DROP TABLE IF EXISTS `version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `version` (
  `idVersion` int NOT NULL AUTO_INCREMENT,
  `nameVersion` varchar(45) NOT NULL,
  PRIMARY KEY (`idVersion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `version`
--

LOCK TABLES `version` WRITE;
/*!40000 ALTER TABLE `version` DISABLE KEYS */;
INSERT INTO `version` VALUES (1,'Thường'),(2,'Đặc Biệt');
/*!40000 ALTER TABLE `version` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-16 11:40:33
