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

/*Table structure for table `baseo_ecommerce` */

DROP TABLE IF EXISTS `baseo_ecommerce`;

CREATE TABLE `baseo_ecommerce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(200) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `descripcion` text,
  `nav_bg` varchar(20) DEFAULT NULL,
  `nav_color` varchar(20) DEFAULT NULL,
  `body_bg` varchar(20) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `yt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `baseo_ecommerce` */

insert  into `baseo_ecommerce`(`id`,`logo`,`nombre`,`descripcion`,`nav_bg`,`nav_color`,`body_bg`,`id_usuario`,`yt`) values 
(1,'/images/6902e76ec70215204edfba507eef52b4.jpg','CincoMenos','Distribuciones a todo el país','#002BFE','#FFFFFF','#E7E7E7',2,'https://www.youtube.com/embed/X58QHeShoS4'),
(2,'images/defecto.jpg','YoGoogle',NULL,'#D9D7D7','#000000','#E7E7E7',4,NULL);

/*Table structure for table `baseo_oficial` */

DROP TABLE IF EXISTS `baseo_oficial`;

CREATE TABLE `baseo_oficial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `correo_contact` varchar(100) DEFAULT NULL,
  `cel_contact` double DEFAULT NULL,
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
  `sec_text` varchar(255) DEFAULT NULL,
  `pr900` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `baseo_oficial` */

insert  into `baseo_oficial`(`id`,`correo_contact`,`cel_contact`,`logo`,`nombre`,`abreviacion`,`nav_bg`,`op1`,`op2`,`op3`,`op4`,`color`,`fuente`,`size`,`search`,`ban_1_title`,`ban_1_text`,`ban_1_url_vid`,`ban_1_url_img`,`ban_2_title`,`ban_2_text`,`ban_2_url_img`,`sec_text`,`pr900`) values 
(1,'soporte_oficial_baseo@outlook.com',3165337090,'/images/32b313c553b32ca34c9887d5203ba675.png','BASEO - Buy and Sell Easy Online','BASEO','#40FA5A','Home','Products','Service','Login','#000000','Lato, sans-serif',16,'buscar...','Welcome to BASEO','Baseo es una plataforma que ofrece el servicio de ventas en el que puede administrar sus productos y vender en línea.','https://www.youtube.com/embed/7e90gBu4pas','/images/05f6a3d9157e751f7f6911274e047a02.png','SEO','Se trata de una plataforma donde puedes configurar tus productos así como algunos estilos de tu plantilla ecommerce donde tus clientes podran hacer pedido de tus productos en linea.','/images/ca60d973de87aa312a59f8b477ccc10b.png','¡BUSCA TU PRODUCTO!',8);

/*Table structure for table `baseo_pagos` */

DROP TABLE IF EXISTS `baseo_pagos`;

CREATE TABLE `baseo_pagos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod_pedido` varchar(100) DEFAULT NULL,
  `monto` double DEFAULT NULL,
  `fecha_pago` datetime DEFAULT NULL,
  `fecha_pedido` datetime DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `estado_pedido` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `baseo_pagos` */

/*Table structure for table `baseo_pedidos` */

DROP TABLE IF EXISTS `baseo_pedidos`;

CREATE TABLE `baseo_pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `correo` varchar(255) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `celular` double DEFAULT NULL,
  `cedula` double DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `departamento` varchar(100) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `monto` double DEFAULT NULL,
  `cod_pedido` varchar(200) DEFAULT NULL,
  `fecha_pedido` datetime DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `baseo_pedidos` */

insert  into `baseo_pedidos`(`id`,`correo`,`nombre`,`celular`,`cedula`,`direccion`,`departamento`,`ciudad`,`monto`,`cod_pedido`,`fecha_pedido`,`id_usuario`) values 
(1,'jeffreydiazaya@outlook.com','Jeff Diaz',3165337090,1003810783,'Calle 71 A # 1 b 33','Huila','Neiva',3,'COD_PEDAYEWzd2','2019-05-13 19:32:57',NULL),
(2,'jeffreydiazaya@outlook.com','Jeff Diaz',3165337090,1003810783,'Calle 71 A # 1 b 33','Huila','Neiva',3,'COD_PEDV8hsec3','2019-05-13 19:34:24',NULL),
(3,'pipe@gmail.com','Pipe Garzon',3184337943,1003810787,'Calle 71 A # 1 b 33','Huila','Neiva',2,'COD_PEDT8QFuV4','2019-05-13 19:43:01',2),
(4,'jeffreydiazaya@outlook.com','Jeff Diaz',3134863691,1003810783,'Calle 71 A # 1 b 33','Huila','Neiva',4,'COD_PEDEV3ivX5','2019-05-13 19:49:13',2),
(5,'jeffreydiazaya@outlook.com','Jeff Diaz',3134863691,1003810787,'Calle 71 A # 1 b 33','Huila','Neiva',7,'COD_PEDX63pmY6','2019-05-13 19:54:31',2),
(6,'jeffreydiazaya@outlook.com','Jeff Diaz',3134863691,1003810787,'Calle 71 A # 1 b 33','Huila','Neiva',7,'COD_PEDoRTFLy7','2019-05-13 19:54:55',2);

/*Table structure for table `baseo_productos` */

DROP TABLE IF EXISTS `baseo_productos`;

CREATE TABLE `baseo_productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(25) DEFAULT NULL,
  `Marca` varchar(25) DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `Imagen` varchar(200) DEFAULT NULL,
  `Precio` float(11,2) DEFAULT NULL,
  `id_dueno` int(11) DEFAULT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `cod_producto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `baseo_productos` */

insert  into `baseo_productos`(`id`,`Nombre`,`Marca`,`Descripcion`,`Imagen`,`Precio`,`id_dueno`,`categoria`,`cod_producto`) values 
(8,'jeff','hmano','un chico guapo','/images/fd3267dfb7cd8de24826dcf6cff509d8.jpg',65465456.00,3,NULL,'PRO1'),
(11,'Moto Endur','hmano','h',NULL,55.00,2,NULL,NULL);

/*Table structure for table `baseo_service` */

DROP TABLE IF EXISTS `baseo_service`;

CREATE TABLE `baseo_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` text,
  `valor` float(11,2) DEFAULT NULL,
  `dias` int(11) DEFAULT NULL,
  `img` varchar(150) DEFAULT NULL,
  `button` varchar(30) DEFAULT NULL,
  `valor_text` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `baseo_service` */

insert  into `baseo_service`(`id`,`nombre`,`descripcion`,`valor`,`dias`,`img`,`button`,`valor_text`) values 
(1,'Regístrate y disfruta de nuestro servicio','Con este servicio podrás administrar tus productos y venderlos en linea evitando los costos que implica tener tu propia página web',50.00,60,'/images/1a5935f35e06c61a4db0e6515730c732.jpg','Adquirir','Valor ');

/*Table structure for table `baseo_usuarios` */

DROP TABLE IF EXISTS `baseo_usuarios`;

CREATE TABLE `baseo_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pass` varchar(100) DEFAULT NULL,
  `rol` varchar(15) DEFAULT NULL,
  `cod_user` varchar(100) DEFAULT NULL,
  `nombres` varchar(50) DEFAULT NULL,
  `cc` int(11) DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `ciudad` varchar(30) DEFAULT NULL,
  `fecha_registro` datetime DEFAULT NULL,
  `celular` double DEFAULT NULL,
  `paypal` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `baseo_usuarios` */

insert  into `baseo_usuarios`(`id`,`pass`,`rol`,`cod_user`,`nombres`,`cc`,`direccion`,`email`,`ciudad`,`fecha_registro`,`celular`,`paypal`) values 
(1,'123','Admin','JEFFD','Jeff',1003810783,'Calle 71 A # 1 B 33','jeffreydiazaya@outlook.com','Neiva','2019-03-27 17:14:21',NULL,NULL),
(2,'jda','Cliente','JJJJ','Jeffrey',1003810783,'Calle 71 A # 1 B 33','jeffreydiazaya@outlook.com','Neiva','2019-04-14 15:58:34',3165337090,'leo_empresas@gmail.com'),
(3,'123','Cliente','AAAAA','Pipe',123423424,NULL,'pipe@gmail.com','Neiva','2019-04-30 10:53:08',NULL,'jeffreydiazaya@outlook.com'),
(4,'aaa','Cliente',NULL,'Novelly',122211,'Calle 71 A','jeff@gmail.com','Neiva','2019-05-14 00:24:09',3134863691,'jeffreydiaz@outlook.com');

/*Table structure for table `productos_pedidos` */

DROP TABLE IF EXISTS `productos_pedidos`;

CREATE TABLE `productos_pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) DEFAULT NULL,
  `cod_pedido` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `productos_pedidos` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
