-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                10.4.24-MariaDB - mariadb.org binary distribution
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- kargo için veritabanı yapısı dökülüyor
CREATE DATABASE IF NOT EXISTS `kargo` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `kargo`;

-- tablo yapısı dökülüyor kargo.tblgonderiler
CREATE TABLE IF NOT EXISTS `tblgonderiler` (
  `gonderiID` int(11) NOT NULL AUTO_INCREMENT,
  `gonderenID` int(11) DEFAULT NULL,
  `aliciID` int(11) DEFAULT NULL,
  `gonderiKonu` varchar(500) DEFAULT NULL,
  `gonderiIcerik` varchar(500) DEFAULT NULL,
  `gonderiAciklama` varchar(500) DEFAULT NULL,
  `gonderiAgirlik` varchar(500) DEFAULT NULL,
  `gonderiEbatlar` varchar(500) DEFAULT NULL,
  `gonderiDurum` varchar(500) DEFAULT NULL,
  `gonderiUcret` varchar(100) DEFAULT NULL,
  `tarih` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`gonderiID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- kargo.tblgonderiler: ~8 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `tblgonderiler` (`gonderiID`, `gonderenID`, `aliciID`, `gonderiKonu`, `gonderiIcerik`, `gonderiAciklama`, `gonderiAgirlik`, `gonderiEbatlar`, `gonderiDurum`, `gonderiUcret`, `tarih`) VALUES
	(1, 3, 2, 'Amazon TV Gönderi', '1 Adet LCD', 'Gönderi hasssas içerik', '60kg', '120X120', 'Gönderi Oluşturuldu', '30.00 TL', '11-06-2022 10:17'),
	(2, 2, 3, 'Trendyol Gonderi ', 'Kırılabilir (Tabak)', 'Kargo açıklama ', '12kg', ' 12X14', ' Gönderi Teslim Edildi', '30.00 TL', '11-06-2022 10:19'),
	(3, 2, 3, 'Hepsiburada teslimat ', 'Ayakkabı', 'gün içerisinde teslimat', '4kg', ' 12X14', ' Kurye dağıtımda', '17.00 TL', '11-06-2022 10:20'),
	(5, 2, 3, 'Koltuk Teslimat ', '5 adet koltuk', 'Koltuklar başarıyla ulaştı  ', '250kg', '  50*50', '  Gönderi Yolda', '300.00 TL', '11-06-2022 11:01'),
	(6, 3, 2, 'Yatak Teslimat', '1 Adet Yatak', 'Yatak teslim edilmeli', '98kg', '23*44', 'Gönderi Oluşturuldu', '400.00 TL', '11-06-2022 11:02'),
	(7, 2, 3, 'kıyafet teslilamat', 'kargo', 'en geç salı teslim.', '44k', '23*44', 'Gönderi Oluşturuldu', '23.00 TL', '11-06-2022 11:07'),
	(9, 2, 3, 'Amazon Teslimat ', '1 adet bilgisayar', 'hassas ürün.', '5kg', '  23*44', '  Gönderi Yola Çıktı', '42.00 TL', '12-06-2022 06:22'),
	(10, 2, 3, 'kitapkurdu ', '5 adet kitap', 'kitap', '10kg', ' 23X23', ' Gönderi Oluşturuldu', '30.00 TL', '12-06-2022 06:27');

-- tablo yapısı dökülüyor kargo.tblkullanicilar
CREATE TABLE IF NOT EXISTS `tblkullanicilar` (
  `kullaniciID` int(11) NOT NULL AUTO_INCREMENT,
  `kullaniciAdi` varchar(300) DEFAULT NULL,
  `sifre` varchar(300) DEFAULT NULL,
  `adSoyad` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`kullaniciID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- kargo.tblkullanicilar: ~2 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `tblkullanicilar` (`kullaniciID`, `kullaniciAdi`, `sifre`, `adSoyad`) VALUES
	(1, 'birgül', '1', 'admin'),
	(2, 'admin', '2', 'Birgül KILIÇ'),
	(3, 'deneme', '3', 'deneme');

-- tablo yapısı dökülüyor kargo.tblmesajlar
CREATE TABLE IF NOT EXISTS `tblmesajlar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) NOT NULL,
  `mesaj` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- kargo.tblmesajlar: ~4 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `tblmesajlar` (`id`, `baslik`, `mesaj`, `created_at`) VALUES
	(1, 'gönderi', 'teslimat sorunu', '2022-06-11 15:49:28'),
	(3, 'kurye', 'kurye kibar değildi', '2022-06-12 04:42:42'),
	(4, 'içerik', 'içerik kırılmıştı', '2022-06-12 04:42:49'),
	(5, 'teslimat', 'teslimat zamanında yapılmadı', '2022-06-12 04:43:08');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
