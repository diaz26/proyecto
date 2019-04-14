/*
SQLyog Community v13.1.0 (64 bit)
MySQL - 10.1.38-MariaDB : Database - proyecto
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`proyecto` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `proyecto`;

/*Table structure for table `baseo_oficial` */

DROP TABLE IF EXISTS `baseo_oficial`;

CREATE TABLE `baseo_oficial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `correo_contact` varchar(100) DEFAULT NULL,
  `cel_contact` int(11) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `abreviacion` varchar(15) DEFAULT NULL,
  `nav_bg` varchar(10) DEFAULT NULL,
  `op1` varchar(30) DEFAULT NULL,
  `op2` varchar(30) DEFAULT NULL,
  `op3` varchar(30) DEFAULT NULL,
  `op4` varchar(30) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `fuente` varchar(100) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `search` varchar(50) DEFAULT NULL,
  `ban_1_title` varchar(255) DEFAULT NULL,
  `ban_1_text` text,
  `ban_1_url_vid` varchar(255) DEFAULT NULL,
  `ban_1_url_img` varchar(255) DEFAULT NULL,
  `ban_2_title` varchar(255) DEFAULT NULL,
  `ban_2_text` text,
  `ban_2_url_img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `baseo_oficial` */

insert  into `baseo_oficial`(`id`,`correo_contact`,`cel_contact`,`logo`,`nombre`,`abreviacion`,`nav_bg`,`op1`,`op2`,`op3`,`op4`,`color`,`fuente`,`size`,`search`,`ban_1_title`,`ban_1_text`,`ban_1_url_vid`,`ban_1_url_img`,`ban_2_title`,`ban_2_text`,`ban_2_url_img`) values 
(1,'support@baseo.com',2147483647,'images/icon.png','BASEO - Buy and Sell Easy Online','BASEO','#A1E4CB','Home','Products','Services','Login','#000000','Lato, sans-serif',16,'Search product','Welcome to BASEO','BASEO is a platform that offers the sales service in which you can manage your products and sell online.','https://www.youtube.com/embed/7e90gBu4pas','assets/images/ventas.png','SEO','Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam  explicabo.','assets/images/Banner-negocios.png');

/*Table structure for table `baseo_usuarios` */

DROP TABLE IF EXISTS `baseo_usuarios`;

CREATE TABLE `baseo_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `rol` varchar(15) DEFAULT NULL,
  `cod_user` varchar(100) DEFAULT NULL,
  `nombres` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `cc` int(11) DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `ciudad` varchar(30) DEFAULT NULL,
  `fecha_registro` datetime DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `img_perfil` varchar(255) DEFAULT NULL,
  `ultima_actividad` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `baseo_usuarios` */

insert  into `baseo_usuarios`(`id`,`user`,`pass`,`rol`,`cod_user`,`nombres`,`apellidos`,`cc`,`direccion`,`email`,`ciudad`,`fecha_registro`,`facebook`,`img_perfil`,`ultima_actividad`) values 
(1,'jeff26','123','Admin','JEFFD','Jeff','Díaz',1003810783,'Calle 71 A # 1 B 33','jeffreydiazaya@outlook.com','Neiva','2019-03-27 17:14:21',NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
