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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'Dale Carnegie'),(2,'Minh Đức'),(9,'José Mauro de Vasconcelos'),(10,'Nguyễn Nhật Ánh'),(11,'Nguyễn Ngọc Thuần'),(12,'Napoleon Hill'),(13,'Robin Sharma'),(14,'Nguyễn Dương'),(15,'Laszlo Bock'),(16,'Huỳnh Vĩnh Sơn'),(17,'Vãn Tình'),(18,'Michael Sandel'),(19,'Tạ Quốc Kế'),(20,'Phan Văn Trường'),(21,'Erika Takeuchi'),(22,'Nguyễn Trí Đoàn'),(23,'Uyên Bùi'),(24,'Phúc Lai'),(25,'Lỗ Bằng Trình'),(26,'Yuval Noah Harari');
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
  `idPublisher` int DEFAULT NULL,
  `idSupplier` int DEFAULT NULL,
  PRIMARY KEY (`idBook`),
  KEY `idPublisher_idx` (`idPublisher`),
  KEY `idSupplier_idx` (`idSupplier`),
  CONSTRAINT `idPublisher` FOREIGN KEY (`idPublisher`) REFERENCES `publisher` (`idPublisher`),
  CONSTRAINT `idSupplier` FOREIGN KEY (`idSupplier`) REFERENCES `supplier` (`idSupplier`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,13,3),(29,13,3),(30,13,3),(31,13,3),(32,13,3),(33,14,15),(34,15,16),(35,16,17),(36,14,18),(37,13,3),(38,17,18),(39,13,3),(40,16,19),(41,14,4),(42,4,20),(43,19,21),(44,14,4);
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
INSERT INTO `both_book_author` VALUES (1,10),(29,11),(30,10),(31,10),(32,13),(33,14),(34,15),(35,16),(36,17),(37,18),(38,19),(39,20),(40,21),(41,22),(41,23),(42,24),(43,25),(44,26);
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
INSERT INTO `both_book_category` VALUES (1,5),(29,5),(30,5),(31,5),(32,6),(33,6),(34,6),(35,6),(36,4),(37,4),(38,4),(39,4),(40,7),(41,7),(42,7),(43,7),(44,8);
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
INSERT INTO `both_book_promotion` VALUES (1,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1);
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
  `quantityBookByVersion` int unsigned NOT NULL,
  `nameBookByVersion` varchar(255) NOT NULL,
  `priceBookByVersion` mediumint unsigned NOT NULL,
  `yearPublicationBookByVersion` int unsigned NOT NULL,
  `shortDescriptionBookByVersion` varchar(255) NOT NULL,
  `fullDescriptionBookByVersion` text NOT NULL,
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
INSERT INTO `both_book_version` VALUES (1,1,1000,'Những Người Hàng Xóm',200000,2022,'Hay','Câu chuyện đi theo lời kể của một anh chàng mới lấy vợ, chuẩn bị đi làm và có ý thích viết văn. Anh chàng yêu vợ theo cách của mình, khen ngợi sùng bái người yêu cũng theo cách của mình, nhưng nhìn cuộc đời theo cách sống của những người hàng xóm. Sống trong tình yêu của vợ đầy mùi thơm và nhiều vị ngọt. Chứng kiến tình yêu của anh cảnh sát với cô bạn gái ngành y; mối tình thứ hai của người phụ nữ tốt bụng phát thanh viên ngôn ngữ ký hiệu. Và được chiêm nghiệm trong tình yêu đắm đuối mỗi ngày của ông họa sĩ già thương nhớ người vợ xinh đẹp-người mẫu, nàng thơ của ông.'),(29,1,1000,'Vừa Nhắm Mắt Vừa Mở Cửa Sổ',75000,2022,'Hay','Tác phẩm gồm những câu chuyện ngắn xoay quanh cuộc sống thường ngày của một đứa trẻ mười tuổi, từ những thứ nhỏ nhặt như cái răng khểnh, ngón tay cho đến chuyện mất mát của đời người. Có vui, có buồn, có được, có mất như cuộc sống vẫn diễn ra, nhưng cảm nhận và cách nhìn của cậu bé làm cho mỗi người lớn phải suy ngẫm.'),(30,1,1000,'Những Người Hàng Xóm',110000,2023,'Hay','Câu chuyện đi theo lời kể của một anh chàng mới lấy vợ, chuẩn bị đi làm và có ý thích viết văn. Anh chàng yêu vợ theo cách của mình, khen ngợi sùng bái người yêu cũng theo cách của mình, nhưng nhìn cuộc đời theo cách sống của những người hàng xóm. Sống trong tình yêu của vợ đầy mùi thơm và nhiều vị ngọt. Chứng kiến tình yêu của anh cảnh sát với cô bạn gái ngành y; mối tình thứ hai của người phụ nữ tốt bụng phát thanh viên ngôn ngữ ký hiệu. Và được chiêm nghiệm trong tình yêu đắm đuối mỗi ngày của ông họa sĩ già thương nhớ người vợ xinh đẹp-người mẫu, nàng thơ của ông.'),(31,1,1000,'Cho Tôi Xin Một Vé Đi Tuổi Thơ',80000,2018,'Hay','Trong Cho tôi xin một vé đi tuổi thơ, nhà văn Nguyễn Nhật Ánh mời người đọc lên chuyến tàu quay ngược trở lại thăm tuổi thơ và tình bạn dễ thương của 4 bạn nhỏ. Những trò chơi dễ thương thời bé, tính cách thật thà, thẳng thắn một cách thông minh và dại dột, những ước mơ tự do trong lòng… khiến cuốn sách có thể làm các bậc phụ huynh lo lắng rồi thở phào. Không chỉ thích hợp với người đọc trẻ, cuốn sách còn có thể hấp dẫn và thực sự có ích cho người lớn trong quan hệ với con mình.'),(32,1,1000,'Nhà Lãnh Đạo Không Chức Danh',105000,2022,'Hay','Suốt hơn 15 năm, Robin Sharma đã thầm lặng chia sẻ với những công ty trong danh sách Fortune 500 và nhiều người siêu giàu khác một công thức thành công đã giúp ông trở thành một trong những nhà cố vấn lãnh đạo được theo đuổi nhiều nhất thế giới. Đây là lần đầu tiên Sharma công bố công thức độc quyền này với bạn, để bạn có thể đạt được những gì tốt nhất, đồng thời giúp tổ chức của bạn có thể có những bước đột phá đến một cấp độ thành công mới trong thời đại thiên biến vạn hóa như hiện nay.'),(33,1,1000,'Trải Nghiệm Khách Hàng Xuất Sắc',250000,2020,'Hay','Bạn đang cầm trên tay cuốn sách Trải nghiệm khách hàng xuất sắc được viết từ hơn 22 năm kinh nghiệm, qua nhiều vị trí, môi trường khác nhau của ông Nguyễn Dương, một chuyên gia cấp quốc tế, một trong những người nhiệt huyết và chuyên sâu nhất về trải nghiệm khách hàng.'),(34,1,1000,'Quy Tắc Làm Việc Của Google',219000,2022,'Hay','Trong cuốn sách Quy Tắc Làm Việc Của Google, Laszlo Bock - Phó chủ tịch cấp cao phụ trách nhân sự của Google đã đưa ra một số lời khuyên hữu ích giúp các nhà quản lý thực hiện hiệu quả việc tuyển dụng nhân sự.'),(35,1,1000,'90 - 20 - 30 - 90 Bài Học Vỡ Lòng Về Ý Tưởng Và Câu Chữ',195000,2021,'Hay','NGÀNH QUẢNG CÁO QUÁ MAY MẮN. Lúc nào cũng lung linh trong mắt các bạn trẻ yêu sáng tạo. Ai cũng muốn ra trường sẽ hiến bộ não đầy ắp ý tưởng cho một công ty quảng cáo chất chơi nào đó.'),(36,1,1000,'Càng Bình Tĩnh Càng Hạnh Phúc',139000,2022,'Hay','Tiếp nối thành công rực rỡ của Bạn đắt giá bao nhiêu?, Khí chất bao nhiêu hạnh phúc bấy nhiêu, Không sợ chậm chỉ sợ dừng,… Vãn Tình đã quay trở lại cùng cuốn sách Càng bình tĩnh Càng hạnh phúc. Đây là cuốn sách thứ bảy của cô được xuất bản tại Việt Nam bởi thương hiệu sách Bloom Books, đánh dấu cho hành trình trưởng thành đầy rực rỡ của Vãn Tình – từ một cô gái trẻ trung, mạnh mẽ trở nên chín chắn, điềm tĩnh và bao dung hơn với cuộc đời.'),(37,1,1000,'Cánh Cửa Mở Rộng - Phải Trái Đúng Sai',155000,2022,'Hay','Sách bàn về vấn đề đạo đức dưới cái nhìn triết học. Tác giả đưa ra các vụ việc gây tranh cãi về vấn đề đạo đức để mổ xẻ dưới nhiều góc độ, theo quan điểm của các học thuyết triết học khác nhau, mỗi chương trình bày sâu về một học thuyết. Nhờ vậy, tư tưởng của Aristotle, Jeremy Bentham, Immanuel Kant, John Stuart Mill, Robert Nozick, và John Rawl được trình bày với sự rõ ràng và gần gũi, mà theo New York Times là \"hiếm khi được giải thích dễ hiểu đến như vậy\".'),(38,1,1000,'Điềm Tĩnh Và Nóng Giận',96000,2021,'Hay','Trong cuộc sống thường ngày, chúng ta thường nổi giận vì nhiều nguyên do: công việc không suôn sẻ, chúng ta tức giận; bị người khác hiểu nhầm, chúng ta tức giận; thấy việc chướng tai gai mắt, chúng ta tức giận; không thể chấp nhận được dư luận xã hội, chúng ta tức giận. Thậm chí, chúng ta bực tức, cáu gắt, hờn dỗi, nhỏ nhen, uất ức vì thời tiết xấu, vì tiền lương thấp, vì nhà cửa bừa bộn, vì thái độ của người khác, vì những chuyện không may mà mình gặp phải. Dường như cuộc đời chúng ta là một chuỗi tức giận không hồi kết. Hãy thử tự hỏi bản thân: sau khi tức giận thì phiền não sẽ tan biến ư?'),(39,1,1000,'Một Đời Như Kẻ Tìm Đường',175000,2019,'Hay','Việc lựa chọn tất nhiên đòi hỏi nhiều sáng suốt, nhưng trên hết người lựa chọn phải hiểu rõ thế giới mà mình đang sống và biết rõ chính mình muốn gì, và một mặt khác phải sẵn sàng cáng đáng lấy trách nhiệm trong sự lựa chọn. Nói một cách hoa mỹ hơn, mình chỉ tìm ra hướng đi đúng đắn và phù hợp cho bản thân nếu thấu hiểu rõ bản năng, bản ngã và cả tiềm thức của chính mình. Cùng một tinh thần luôn sẵn sàng đối mặt với những hệ quả tốt và xấu từ sự lựa chọn ấy.'),(40,1,1000,'Nuôi Dạy Bé Gái Từ 0 Đến 6 Tuổi',75000,2020,'Hay','Ngay từ khi sinh ra, giữa bé trai và bé gái đã có những đặc trưng khác nhau cả về não bộ cũng như hệ thần kinh vận động. Do vậy cách giáo dục cũng sẽ khác nhau. Nếu nắm được điểm mấu chốt trong cách nuôi dạy cho từng bé thì bố mẹ có thể phát triển năng lực của trẻ một cách toàn diện.'),(41,1,1000,'Để Con Được Ốm',120000,2022,'Hay','“Để con được ốm cần có sự kiên nhẫn giải thích hay thuyết phục của bác sĩ cùng sự thông hiểu và hợp tác từ phía gia đình bé. Đôi khi, sự hợp tác và hiểu biết của phụ huynh còn quan trọng hơn nỗ lực (hay thời gian) của bác sĩ giải thích nữa. Quyết định không dùng kháng sinh hay ‘quay đầu lại’ hay không là tuỳ thuộc ở phụ huynh của các bé, tuỳ thuộc vào sự hiểu biết, kiên nhẫn và quan trọng nhất là sự hợp tác chặt chẽ với bác sĩ của con mình. Đã có nhiều trường hợp ‘quay đầu lại’ thành công, nhiều trường hợp không cần thuốc đắng vẫn dã tật thành công trong suốt 12 năm chúng tôi cùng nhau thực hành y khoa theo đúng chuẩn quốc tế: thực hành dựa trên chứng cứ y khoa tốt nhất cho bệnh nhi, dành thời gian để giải thích, tư vấn và theo dõi sát sao diễn tiến bệnh của bệnh nhi. Việc lo lắng là không thể tránh khỏi, tuy nhiên, sự lo lắng không giúp ích được gì cho bệnh của trẻ, chỉ có kiến thức chăm sóc bệnh đúng mới giúp ích cho trẻ. Và hẳn là các bé sẽ hạnh phúc biết bao khi được tôn trọng ‘quyền được bệnh’.   '),(42,1,1000,'Chuyện Cha Con Chúng Ta Là \"Đồng Bọn\"',92000,2020,'Hay','Làm cha mẹ chưa bao giờ là một chuyện dễ dàng nhất là với những phụ huynh có mong muốn được làm “đồng bọn” với con. Nhưng sẽ hạnh phúc biết bao khi chúng ta có thể hiện thực hóa điều đó. Bằng chính những trải nghiệm trong gia đình mình, tác giả Phúc Lai đã chia sẻ cho độc giả những câu chuyện, những “bí kíp” để cha mẹ không chỉ là phụ huynh, là người thầy hướng dẫn mà còn là người-bạn-thân-thiết đáng tin cậy để giải đáp những nghi ngại, thắc mắc và tiếp thêm sức mạnh cho con vững bước vào đời.'),(43,1,1000,'Mẹ Dạy Con Trai Không La Mắng',119000,2022,'Hay','Để dạy con trai không la mắng, các bậc phụ huynh phải hiểu được tâm tư của con trai, từ đó rèn cho con tính tự lập, tinh thần trách nhiệm, quản lý cảm xúc, chi tiêu hợp lý, kỹ năng giao tiếp, cách vượt qua tuổi dậy thì,... Nếu có thể áp dụng thành công cách dạy này, các bậc cha mẹ sẽ không cần la mắng mà trẻ vẫn ngoan ngoãn vâng lời, tâm sinh lý phát triển lành mạnh, chín chắn và có trách nhiệm hơn với bản thân, gia đình và xã hội.'),(44,1,1000,'Homo Deus - Lược Sử Tương Lai',189000,2022,'Hay','Homo sapiens có phải là một dạng sống siêu đẳng, hay chỉ là một tay đầu gấu địa phương? Làm thế nào con người lại tin rằng họ không chỉ đã kiểm soát thế giới, mà còn mang lại ý nghĩa cho nó? Công nghệ sinh học và trí thông minh nhân tạo đe doạ loài người ra sao? Sinh vật nào có thể kế thừa loài người, và tôn giáo mới nào sẽ được sản sinh?'),(44,2,1000,'Homo Deus - Lược Sử Tương Lai (Special)',200000,2022,'Hay','Homo sapiens có phải là một dạng sống siêu đẳng, hay chỉ là một tay đầu gấu địa phương? Làm thế nào con người lại tin rằng họ không chỉ đã kiểm soát thế giới, mà còn mang lại ý nghĩa cho nó? Công nghệ sinh học và trí thông minh nhân tạo đe doạ loài người ra sao? Sinh vật nào có thể kế thừa loài người, và tôn giáo mới nào sẽ được sản sinh?');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (4,'Tâm Lý - Kỹ Năng Sống'),(5,'Văn Học'),(6,'Kinh Tế'),(7,'Nuôi Dạy Con'),(8,'Tiểu Sử - Hồi Ký');
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
  `idVersionI` int DEFAULT NULL,
  PRIMARY KEY (`idImage`),
  KEY `idType_Image_idx` (`idType_Image`),
  KEY `idBook_idx` (`idBook`),
  KEY `idVersionI_idx` (`idVersionI`),
  CONSTRAINT `idBook` FOREIGN KEY (`idBook`) REFERENCES `book` (`idBook`),
  CONSTRAINT `idType_Image` FOREIGN KEY (`idType_Image`) REFERENCES `type_image` (`idType_Image`),
  CONSTRAINT `idVersionI` FOREIGN KEY (`idVersionI`) REFERENCES `version` (`idVersion`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (2,'resources/image/book/NhữngNgườiHàngXóm(1)/NhữngNgườiHàngXóm(front).jpg',1,1,1),(3,'resources/image/book/NhữngNgườiHàngXóm(1)/NhữngNgườiHàngXóm(back).jpg',2,1,1),(4,'resources/image/book/Vừa NhắmMắtVừaMởCửaSổ(29)/Vừa NhắmMắtVừaMởCửaSổ(front).jpg',1,29,1),(5,'resources/image/book/Vừa NhắmMắtVừaMởCửaSổ(29)/Vừa NhắmMắtVừaMởCửaSổ(back).jpg',2,29,1),(6,'resources/image/book/NhữngNgườiHàngXóm(30)/NhữngNgườiHàngXóm(front).jpg',1,30,1),(7,'resources/image/book/NhữngNgườiHàngXóm(30)/NhữngNgườiHàngXóm(back).jpg',2,30,1),(8,'resources/image/book/Cho Tôi Xin Một Vé Đi Tuổi Thơ(31)/ChoTôiXinMộtVéĐiTuổiThơ(front).jpg',1,31,1),(9,'resources/image/book/Cho Tôi Xin Một Vé Đi Tuổi Thơ(31)/ChoTôiXinMộtVéĐiTuổiThơ(back).jpg',2,31,1),(10,'resources/image/book/Nhà Lãnh Đạo Không Chức Danh(32)/NhàLãnhĐạoKhôngChứcDanh(front).jpg',1,32,1),(11,'resources/image/book/Nhà Lãnh Đạo Không Chức Danh(32)/NhàLãnhĐạoKhôngChứcDanh(back).jpg',2,32,1),(12,'resources/image/book/Trải Nghiệm Khách Hàng Xuất Sắc(33)/TrảiNghiệmKháchHàngXuấtSắc(front).jpg',1,33,1),(13,'resources/image/book/Trải Nghiệm Khách Hàng Xuất Sắc(33)/TrảiNghiệmKháchHàngXuấtSắc(back).jpg',2,33,1),(14,'resources/image/book/Quy Tắc Làm Việc Của Google(34)/QuyTắcLàmViệcCủaGoogle(front).jpg',1,34,1),(15,'resources/image/book/Quy Tắc Làm Việc Của Google(34)/QuyTắcLàmViệcCủaGoogle(back).jpg',2,34,1),(16,'resources/image/book/90-20-30-90BàiHọcVỡLòngVềÝTưởngVàCâuChữ(35)/90-20-30-90BàiHọcVỡLòngVềÝTưởngVàCâuChữ(front).jpg',1,35,1),(17,'resources/image/book/90-20-30-90BàiHọcVỡLòngVềÝTưởngVàCâuChữ(35)/90-20-30-90BàiHọcVỡLòngVềÝTưởngVàCâuChữ(back).jpg',2,35,1),(18,'resources/image/book/Càng Bình Tĩnh Càng Hạnh Phúc(36)/Càng Bình Tĩnh Càng Hạnh Phúc(front).jpg',1,36,1),(19,'resources/image/book/Càng Bình Tĩnh Càng Hạnh Phúc(36)/Càng Bình Tĩnh Càng Hạnh Phúc(back).jpg',2,36,1),(20,'resources/image/book/Cánh Cửa Mở Rộng - Phải Trái Đúng Sai(37)/CánhCửaMởRộng-PhảiTráiĐúngSai(front).jpg',1,37,1),(21,'resources/image/book/Cánh Cửa Mở Rộng - Phải Trái Đúng Sai(37)/CánhCửaMởRộng-PhảiTráiĐúngSai(back).jpg',2,37,1),(22,'resources/image/book/Điềm Tĩnh Và Nóng Giận(38)/ĐiềmTĩnhVàNóngGiận(front).jpg',1,38,1),(23,'resources/image/book/Điềm Tĩnh Và Nóng Giận(38)/ĐiềmTĩnhVàNóngGiận(back).jpg',2,38,1),(24,'resources/image/book/Một Đời Như Kẻ Tìm Đường(39)/MộtĐờiNhưKẻTìmĐường(front).jpg',1,39,1),(25,'resources/image/book/Một Đời Như Kẻ Tìm Đường(39)/MộtĐờiNhưKẻTìmĐường(back).jpg',2,39,1),(26,'resources/image/book/Nuôi Dạy Bé Gái Từ 0 Đến 6 Tuổi(40)/NuôiDạyBéGáiTừ0Đến6Tuổi(front).jpg',1,40,1),(27,'resources/image/book/Nuôi Dạy Bé Gái Từ 0 Đến 6 Tuổi(40)/NuôiDạyBéGáiTừ0Đến6Tuổi(back).jpg',2,40,1),(28,'resources/image/book/Để Con Được Ốm(41)/ĐểConĐượcỐm(front).jpg',1,41,1),(29,'resources/image/book/Để Con Được Ốm(41)/ĐểConĐượcỐm(back).jpg',2,41,1),(30,'resources/image/book/Chuyện Cha Con Chúng Ta Là  Đồng Bọn (42)/ChuyệnChaConChúngTaLà ĐồngBọn (front).jpg',1,42,1),(31,'resources/image/book/Chuyện Cha Con Chúng Ta Là  Đồng Bọn (42)/ChuyệnChaConChúngTaLà ĐồngBọn (back).jpg',2,42,1),(32,'resources/image/book/Mẹ Dạy Con Trai Không La Mắng(43)/MẹDạyConTraiKhôngLaMắng(front).jpg',1,43,1),(33,'resources/image/book/Mẹ Dạy Con Trai Không La Mắng(43)/MẹDạyConTraiKhôngLaMắng(back).jpg',2,43,1),(34,'resources/image/book/Homo Deus - Lược Sử Tương Lai(44)/HomoDeus-LượcSửTươngLai(front).jpg',1,44,1),(35,'resources/image/book/Homo Deus - Lược Sử Tương Lai(44)/HomoDeus-LượcSửTươngLai(back).jpg',2,44,1),(36,'resources/image/book/Mẹ Dạy Con Trai Không La Mắng(43)/MẹDạyConTraiKhôngLaMắng(front).jpg',1,44,2),(37,'resources/image/book/Mẹ Dạy Con Trai Không La Mắng(43)/MẹDạyConTraiKhôngLaMắng(back).jpg',2,44,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher`
--

LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;
INSERT INTO `publisher` VALUES (1,'Văn Học'),(2,'Hà Nội'),(3,'Hồng Đức'),(4,'Phụ Nữ'),(11,'Tổng Hợp TPHCM'),(12,'Hội Nhà Văn'),(13,'Trẻ'),(14,'Thế Giới'),(15,'Công Thương'),(16,'Lao Động'),(17,'Thanh Niên'),(19,'Thanh Hóa');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'IPM'),(2,'Kim Đồng'),(3,'Trẻ'),(4,'Nhã Nam'),(14,'FIRST NEWS'),(15,'Saigon Books'),(16,'Alpha Books'),(17,'Rio Book'),(18,'AZ Việt Nam'),(19,'Thái Hà'),(20,'Phụ Nữ'),(21,'Văn Hóa Văn Lang');
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

-- Dump completed on 2023-09-25 15:06:19
