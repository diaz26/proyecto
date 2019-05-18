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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `baseo_ecommerce` */

insert  into `baseo_ecommerce`(`id`,`logo`,`nombre`,`descripcion`,`nav_bg`,`nav_color`,`body_bg`,`id_usuario`,`yt`) values 
(1,'/images/6902e76ec70215204edfba507eef52b4.jpg','CincoMenos','Distribuciones a todo el país','#4D61DE','#FFFFFF','#E7E7E7',2,''),
(2,'images/defecto.jpg','YoGoogle',NULL,'#D9D7D7','#000000','#E7E7E7',4,NULL),
(3,'images/defecto.jpg','Avvv',NULL,'#D9D7D7','#000000','#E7E7E7',5,NULL),
(4,'images/defecto.jpg','Probando',NULL,'#D9D7D7','#000000','#E7E7E7',6,NULL);

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
(1,'soporte_oficial_baseo@outlook.com',3165337090,'/images/32b313c553b32ca34c9887d5203ba675.png','BASEO - Buy and Sell Easy Online','BASEO','#B9B9B9','Inicio','Products','Servicio','Ingresar','#000000','Lato, sans-serif',16,NULL,'Bienvenido a BASEO','Baseo (Buy And Sell Easy Online) es una plataforma que ofrece un servicio de gestión y \r\ncomercialización de productos en línea dónde se asignará una página específica en la cúal se exhiben solo los productos de tu propiedad.','https://www.youtube.com/embed/7e90gBu4pas','/images/05f6a3d9157e751f7f6911274e047a02.png','BASEO','¡IMPORTANTE! El e-mail debe ser real, en caso de perder la contraseña solo por este medio la podrás recuperar. El nombre de página no debe tener espacios.','/images/ca60d973de87aa312a59f8b477ccc10b.png','¡BUSCA TU PRODUCTO!',45);

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `baseo_pagos` */

insert  into `baseo_pagos`(`id`,`cod_pedido`,`monto`,`fecha_pago`,`fecha_pedido`,`id_usuario`,`estado_pedido`) values 
(9,'COD_PEDYVpM2X42',8,'2019-05-15 18:02:58','2019-05-15 18:02:06',2,2),
(10,'COD_PEDYJO8F743',8,'2019-05-15 20:11:20','2019-05-15 20:10:14',2,2);

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

/*Data for the table `baseo_pedidos` */

insert  into `baseo_pedidos`(`id`,`correo`,`nombre`,`celular`,`cedula`,`direccion`,`departamento`,`ciudad`,`monto`,`cod_pedido`,`fecha_pedido`,`id_usuario`) values 
(29,'jeffreydiazaya@outlook.com','Jeff Diaz',3134863691,1003810787,'Calle 71 A # 1 b 33','Huila','Neiva',8,'COD_PEDYVpM2X42','2019-05-15 18:02:06',2),
(30,'jeff@gmail.com','Jeff Diaz',3134863691,1003810783,'Calle 71 A # 1 b 33','Huila','Neiva',8,'COD_PEDYJO8F743','2019-05-15 20:10:14',2);

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `baseo_productos` */

insert  into `baseo_productos`(`id`,`Nombre`,`Marca`,`Descripcion`,`Imagen`,`Precio`,`id_dueno`,`categoria`,`cod_producto`) values 
(17,'Arroz','Diana','Arroz Diana 500 gr 75% grano entero','/images/2510c02fd748ca6d27206056e1ccd2a9.jpg',0.50,2,'Grano','COD_PRODi3Mbkj36'),
(18,'Lecha entera','Colanta','leche entera colanta 1000 ml','/images/9e670914cfdfdbe21065545769f14f12.jpg',1.00,2,'Lacteos','COD_PRODPHB3AE37'),
(19,'Concentrado Mirringo','Ringo','Concentrado para gatos mirringo 1 kg','/images/48d15b94b1f1a6237fd8d7fe615ebada.jpg',1.00,2,'Concentrado','COD_PRODxOgdoP38'),
(20,'Leche deslactosada','Colanta','Leche deslactosada colanta 1000 ml','/images/caa15289357a48e32007ee909821b70a.jpg',1.00,2,'Lacteos','COD_PRODSez58R39'),
(21,'Mortadela','Zenu','Mortadela ahumada zenú 400 gr','/images/f94c4b341de49744971f1e816282224b.jpg',2.00,2,'CarnesFrias','COD_PRODHcsr7940'),
(22,'Ringo Premium','Ringo','Concentrado para perros ringo premium 2 kg','/images/b0e370a16f361015666f05149bbaf62f.jpg',0.60,2,'Concentrado','COD_PRODH0zlu641');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `baseo_usuarios` */

insert  into `baseo_usuarios`(`id`,`pass`,`rol`,`cod_user`,`nombres`,`cc`,`direccion`,`email`,`ciudad`,`fecha_registro`,`celular`,`paypal`) values 
(1,'123','Admin','JEFFD','Jeff',1003810783,'Calle 71 A # 1 B 33','jeffreydiazaya@outlook.com','Neiva','2019-03-27 17:14:21',NULL,NULL),
(2,'jda','Cliente','JJJJ','Jeffrey',1003810783,'Calle 71 A # 1 B 33','jeffreydiazaya@outlook.com','Neiva','2019-04-14 15:58:34',3165337090,'leo_empresas@gmail.com'),
(3,'123','Cliente','AAAAA','Pipe',123423424,NULL,'pipe@gmail.com','Neiva','2019-04-30 10:53:08',NULL,'jeffreydiazaya@outlook.com'),
(4,'aaa','Cliente',NULL,'Novelly',122211,'Calle 71 A','jeff@gmail.com','Neiva','2019-05-14 00:24:09',3134863691,'jeffreydiaz@outlook.com'),
(5,'aaaa','Cliente','COD_USERIy0fSM24','Novelly',122222,'Calle 71 A # 1 b 33','cf@gmail.com','Neiva','2019-05-14 16:54:55',3134863691,'jeffreydiaz@outlook.com'),
(6,'eeeee','Cliente','COD_USERBY4Lvd44','Novelly',111111,'Calle 71 A # 1 b 33','carlosp@gmailcom','Neiva','2019-05-18 18:12:45',3134863691,'jeffreydiaz@outlook.com');

/*Table structure for table `productos_pedidos` */

DROP TABLE IF EXISTS `productos_pedidos`;

CREATE TABLE `productos_pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) DEFAULT NULL,
  `cod_pedido` varchar(100) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

/*Data for the table `productos_pedidos` */

insert  into `productos_pedidos`(`id`,`id_producto`,`cod_pedido`,`cantidad`) values 
(36,17,'COD_PEDYVpM2X42',2),
(37,18,'COD_PEDYVpM2X42',3),
(38,21,'COD_PEDYVpM2X42',1),
(39,20,'COD_PEDYVpM2X42',2),
(40,17,'COD_PEDYJO8F743',2),
(41,18,'COD_PEDYJO8F743',3),
(42,21,'COD_PEDYJO8F743',2);

/*Table structure for table `prueba_pago` */

DROP TABLE IF EXISTS `prueba_pago`;

CREATE TABLE `prueba_pago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(255) DEFAULT NULL,
  `cod_pedido` varchar(200) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `prueba_pago` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
