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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `baseo_ecommerce` */

insert  into `baseo_ecommerce`(`id`,`logo`,`nombre`,`descripcion`,`nav_bg`,`nav_color`,`body_bg`,`id_usuario`,`yt`) values 
(1,'/images/6902e76ec70215204edfba507eef52b4.jpg','CincoMenos','Distribuciones a todo el país','#0033FE','#FFFFFF','#E7E7E7',2,''),
(2,'images/defecto.jpg','YoGoogle',NULL,'#D9D7D7','#000000','#E7E7E7',4,NULL),
(3,'images/defecto.jpg','Avvv',NULL,'#D9D7D7','#000000','#E7E7E7',5,NULL);

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
(1,'soporte_oficial_baseo@outlook.com',3165337090,'/images/32b313c553b32ca34c9887d5203ba675.png','BASEO - Buy and Sell Easy Online','BASEO','#40FA5A','Inicio','Products','Servicio','Ingresar','#000000','Lato, sans-serif',16,'buscar...','Welcome to BASEO','Baseo es una plataforma que ofrece el servicio de ventas en el que puede administrar sus productos y vender en línea.','https://www.youtube.com/embed/7e90gBu4pas','/images/05f6a3d9157e751f7f6911274e047a02.png','BASEO','Se trata de una plataforma donde puedes configurar tus productos así como algunos estilos de tu plantilla ecommerce donde tus clientes podran hacer pedido de tus productos en linea.','/images/ca60d973de87aa312a59f8b477ccc10b.png','¡BUSCA TU PRODUCTO!',35);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `baseo_pagos` */

insert  into `baseo_pagos`(`id`,`cod_pedido`,`monto`,`fecha_pago`,`fecha_pedido`,`id_usuario`,`estado_pedido`) values 
(1,'COD_PEDdnOHoC22',50,'2019-05-14 16:23:09','2019-05-14 16:22:44',2,2),
(2,'COD_PEDGTWeLU28',30,'2019-05-14 17:41:52','2019-05-14 17:39:03',2,1),
(3,'COD_PEDLd29Qc30',50,'2019-05-14 20:05:56','2019-05-14 20:03:45',2,2),
(4,'COD_PED1NkbtX31',42,'2019-05-15 12:32:58','2019-05-15 12:29:25',2,2),
(5,'COD_PEDTuCz6l32',72,'2019-05-15 12:59:44','2019-05-15 12:34:27',2,1),
(6,'COD_PEDGaLuI533',20,'2019-05-15 13:01:05','2019-05-15 13:00:19',2,1),
(7,'COD_PEDV93ML834',132,'2019-05-15 13:07:37','2019-05-15 13:01:42',2,1);

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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `baseo_pedidos` */

insert  into `baseo_pedidos`(`id`,`correo`,`nombre`,`celular`,`cedula`,`direccion`,`departamento`,`ciudad`,`monto`,`cod_pedido`,`fecha_pedido`,`id_usuario`) values 
(22,'support@cathefitness.com','Novelly',3134863691,1003810787,'Calle 71 A # 1 b 33','Huila','Neiva',30,'COD_PEDGTWeLU28','2019-05-14 17:39:03',2),
(23,'jeffreydiazaya@outlook.com','Jeff Diaz',3134863691,1003810787,'Calle 71 A # 1 b 33','Huila','Neiva',50,'COD_PEDLd29Qc30','2019-05-14 20:03:45',2),
(24,'support@cathefitness.com','Jeff Diaz',3134863691,1003810787,'Calle 71 A # 1 b 33','Huila','Neiva',42,'COD_PED1NkbtX31','2019-05-15 12:29:25',2),
(25,'support@cathefitness.com','Jeff Diaz',3134863691,1003810783,'Calle 71 A # 1 b 33','Huila','Neiva',72,'COD_PEDTuCz6l32','2019-05-15 12:34:27',2),
(26,'jeffreydiazaya@outlook.com','Jeff Diaz',3134863691,1003810783,'Calle 71 A # 1 b 33','Huila','Neiva',20,'COD_PEDGaLuI533','2019-05-15 13:00:19',2),
(27,'support@cathefitness.com','Jeff Diaz',3134863691,1003810787,'Calle 71 A # 1 b 33','Huila','Neiva',132,'COD_PEDV93ML834','2019-05-15 13:01:42',2);

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `baseo_productos` */

insert  into `baseo_productos`(`id`,`Nombre`,`Marca`,`Descripcion`,`Imagen`,`Precio`,`id_dueno`,`categoria`,`cod_producto`) values 
(8,'jeff','hmano','un chico guapo','/images/fd3267dfb7cd8de24826dcf6cff509d8.jpg',65465456.00,3,NULL,'PRO1'),
(12,'xtz 250','Yamaha','Moto todoterreno','/images/4dcce85b39811df37c6d643a60150edb.jpg',30.00,2,'Motocicleta','COD_PRODwDVOP08'),
(13,'biwis','yamaha','Moto para ciudad','/images/ea328fdafa8d613df6b9f60c70fc2b89.jpg',20.00,2,'Motocicleta','COD_PRODXbvTre9'),
(16,'aa','aa','2dff','/images/d1c143dfae15e4dbf9933015e4ec72e3.jpg',11.00,2,'22','COD_PRODySn3hF29');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `baseo_usuarios` */

insert  into `baseo_usuarios`(`id`,`pass`,`rol`,`cod_user`,`nombres`,`cc`,`direccion`,`email`,`ciudad`,`fecha_registro`,`celular`,`paypal`) values 
(1,'123','Admin','JEFFD','Jeff',1003810783,'Calle 71 A # 1 B 33','jeffreydiazaya@outlook.com','Neiva','2019-03-27 17:14:21',NULL,NULL),
(2,'jda','Cliente','JJJJ','Jeffrey',1003810783,'Calle 71 A # 1 B 33','jeffreydiazaya@outlook.com','Neiva','2019-04-14 15:58:34',3165337090,'leo_empresas@gmail.com'),
(3,'123','Cliente','AAAAA','Pipe',123423424,NULL,'pipe@gmail.com','Neiva','2019-04-30 10:53:08',NULL,'jeffreydiazaya@outlook.com'),
(4,'aaa','Cliente',NULL,'Novelly',122211,'Calle 71 A','jeff@gmail.com','Neiva','2019-05-14 00:24:09',3134863691,'jeffreydiaz@outlook.com'),
(5,'aaaa','Cliente','COD_USERIy0fSM24','Novelly',122222,'Calle 71 A # 1 b 33','cf@gmail.com','Neiva','2019-05-14 16:54:55',3134863691,'jeffreydiaz@outlook.com');

/*Table structure for table `productos_pedidos` */

DROP TABLE IF EXISTS `productos_pedidos`;

CREATE TABLE `productos_pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) DEFAULT NULL,
  `cod_pedido` varchar(100) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

/*Data for the table `productos_pedidos` */

insert  into `productos_pedidos`(`id`,`id_producto`,`cod_pedido`,`cantidad`) values 
(1,0,'COD_PED6VZczE13',1),
(2,0,'COD_PED6VZczE13',3),
(3,NULL,'COD_PEDKwrR2U14',2),
(4,NULL,'COD_PEDKwrR2U14',5),
(5,12,'COD_PEDtbBkIQ15',3),
(6,13,'COD_PEDtbBkIQ15',1),
(7,12,'COD_PEDYrx1TE16',3),
(8,13,'COD_PEDYrx1TE16',1),
(9,12,'COD_PED2e3TaE17',1),
(10,13,'COD_PED2e3TaE17',1),
(11,12,'COD_PEDAjou1L18',1),
(12,13,'COD_PEDAjou1L18',1),
(13,12,'COD_PEDna6v5H19',1),
(14,13,'COD_PEDna6v5H19',1),
(15,12,'COD_PEDUxtIfB20',2),
(16,13,'COD_PEDUxtIfB20',1),
(17,12,'COD_PEDSildR621',1),
(18,13,'COD_PEDSildR621',1),
(19,12,'COD_PEDdnOHoC22',1),
(20,13,'COD_PEDdnOHoC22',1),
(21,12,'COD_PEDsM8tYQ26',1),
(22,12,'COD_PEDJ4aP0727',1),
(23,12,'COD_PEDGTWeLU28',1),
(24,13,'COD_PEDLd29Qc30',1),
(25,12,'COD_PEDLd29Qc30',1),
(26,16,'COD_PED1NkbtX31',2),
(27,13,'COD_PED1NkbtX31',1),
(28,16,'COD_PEDTuCz6l32',2),
(29,13,'COD_PEDTuCz6l32',1),
(30,12,'COD_PEDTuCz6l32',1),
(31,13,'COD_PEDGaLuI533',1),
(32,16,'COD_PEDV93ML834',2),
(33,13,'COD_PEDV93ML834',1),
(34,12,'COD_PEDV93ML834',3);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `prueba_pago` */

insert  into `prueba_pago`(`id`,`estado`,`cod_pedido`,`idusuario`,`fecha`,`value`) values 
(1,NULL,'COD_PEDUxtIfB20',2,'2019-05-14 16:07:32',80);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
