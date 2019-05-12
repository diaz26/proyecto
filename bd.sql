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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `baseo_ecommerce` */

insert  into `baseo_ecommerce`(`id`,`logo`,`nombre`,`descripcion`,`nav_bg`,`nav_color`,`body_bg`,`id_usuario`,`yt`) values 
(1,'','Linio',NULL,NULL,NULL,NULL,2,NULL);

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
  `sec_text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `baseo_oficial` */

insert  into `baseo_oficial`(`id`,`correo_contact`,`cel_contact`,`logo`,`nombre`,`abreviacion`,`nav_bg`,`op1`,`op2`,`op3`,`op4`,`color`,`fuente`,`size`,`search`,`ban_1_title`,`ban_1_text`,`ban_1_url_vid`,`ban_1_url_img`,`ban_2_title`,`ban_2_text`,`ban_2_url_img`,`sec_text`) values 
(1,'support@baseo.com',2147483647,'/images/32b313c553b32ca34c9887d5203ba675.png','BASEO - Buy and Sell Easy Online','BASEO','#40FA5A','Home','Products','Service','Login','#000000','Lato, sans-serif',16,NULL,'Welcome to BASEO','BASEO is a platform that offers the sales service in which you can manage your products and sell online.','https://www.youtube.com/embed/7e90gBu4pas','/images/05f6a3d9157e751f7f6911274e047a02.png','SEO','Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam  explicabo.','/images/ca60d973de87aa312a59f8b477ccc10b.png','¡BUSCA TU PRODUCTO!');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `baseo_productos` */

insert  into `baseo_productos`(`id`,`Nombre`,`Marca`,`Descripcion`,`Imagen`,`Precio`,`id_dueno`) values 
(3,'moto automatica ','akt','dinamic 125 full motor','/images/daee7711d715ffe62db45cae2b398049.jpg',2000000.00,2),
(7,'moto automatica ','auteco','modelo 2017 papeles al dia','/images/53341d99887de4cca2f379c836ae17d7.jpg',2000000.00,2),
(8,'jeff','hmano','un chico guapo','/images/fd3267dfb7cd8de24826dcf6cff509d8.jpg',65465456.00,3);

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
(1,'Administra tus productos','Con este servicio podrás administrar tus productos y venderlos en linea evitando los costos que implica tener tu propia página web',50.00,60,'/images/1a5935f35e06c61a4db0e6515730c732.jpg','Adquirir','Valor ');

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
  `celular` double DEFAULT NULL,
  `paypal` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `baseo_usuarios` */

insert  into `baseo_usuarios`(`id`,`user`,`pass`,`rol`,`cod_user`,`nombres`,`apellidos`,`cc`,`direccion`,`email`,`ciudad`,`fecha_registro`,`facebook`,`img_perfil`,`ultima_actividad`,`celular`,`paypal`) values 
(1,'jeff26','123','Admin','JEFFD','Jeff','Díaz',1003810783,'Calle 71 A # 1 B 33','jeffreydiazaya@outlook.com','Neiva','2019-03-27 17:14:21',NULL,NULL,NULL,NULL,NULL),
(2,'jeff','jda','Cliente','JJJJ','Jeffrey','Díaz Aya',1003810783,'Calle 71 A # 1 B 33','jeffreydiazaya@outlook.com','Neiva','2019-04-14 15:58:34',NULL,NULL,NULL,3165337090,NULL),
(3,'pipe','123','Cliente','AAAAA','Pipe','Garzon',123423424,NULL,'pipe@gmail.com','Neiva','2019-04-30 10:53:08',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `productos` */

DROP TABLE IF EXISTS `productos`;

CREATE TABLE `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(40) DEFAULT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  `Precio` float DEFAULT NULL,
  `Marca` varchar(25) DEFAULT NULL,
  `Modelo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `productos` */

/*Table structure for table `subtemas` */

DROP TABLE IF EXISTS `subtemas`;

CREATE TABLE `subtemas` (
  `subid` int(10) NOT NULL AUTO_INCREMENT,
  `subidtema` int(10) NOT NULL,
  `subnombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `subdescripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `subimagen` text COLLATE utf8_unicode_ci NOT NULL,
  `sublinkvideo` text COLLATE utf8_unicode_ci NOT NULL,
  `subestado` enum('A','I') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`subid`),
  KEY `FK_subtemas` (`subidtema`),
  CONSTRAINT `FK_subtemas` FOREIGN KEY (`subidtema`) REFERENCES `temas` (`idtema`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `subtemas` */

insert  into `subtemas`(`subid`,`subidtema`,`subnombre`,`subdescripcion`,`subimagen`,`sublinkvideo`,`subestado`) values 
(1,1,'Introducción','Aprenda los pasos básicos para usar Word 2016, como crear documentos y darles formato, insertar elementos en los documentos y agregar encabezados, pies de página y páginas a documentos.','36cf1af0-ba80-4aa0-9dc4-4920eccc3e9d.png','https://www.youtube.com/embed/SUDTTY8iDFI','A'),
(2,1,' Mi primer documento',' El nuevo comando ¿Qué desea hacer? es realmente efectivo. Permite buscar comandos y ejecutarlos desde ahí mismo. Su principal utilidad es que nos ahorra el tiempo de buscar en qué pestaña está cada comando. Al escribir una palabra o comando, nos muestra los comandos más frecuentes relacionados con esa palabra. Por ejemplo, si no recordamos cómo dar estilos a una tabla, basta escribir \"tabla\" en la caja de ¿Qué desea hacer? y aparecerá un desplegable como el siguiente:','que_desa_tabla.gif','','A'),
(3,1,'El entorno de Word 2016','Vamos a ver los elementos básicos que componen la ventana de Word 2016. Aprenderemos cómo se llaman, donde están y para qué sirven. También veremos cómo obtener ayuda. Cuando conozcamos todo esto estaremos en disposición de empezar a crear documentos en el siguiente tema.','ventana-word-explicada.png','','A'),
(4,1,'Edición básica','Aprenderemos lo necesario para editar documentos: Cómo desplazarnos, seleccionar, eliminar, copiar, pegar y deshacer. También veremos cómo buscar y reemplazar palabras y las distintas formas de ver un mismo documento.\r\n\r\n3.1. Introducción de datos\r\nHemos visto que escribir nuestro primer documento básicamente se trata de teclear el texto y controlar siempre dónde está situado el punto de inserción. En este apartado vamos a ver algunas consideraciones útiles a tener en cuenta, dejando de lado las cuestiones estéticas y de formato que veremos más adelante.\r\n\r\n En el documento podemos definir qué texto es el título, cuál el subtítulo, y cuál los párrafos de contenido. Ésta distinción no es únicamente estética, sino que ayuda a Word a hacerse una idea de la estructura del documento y esto a la larga nos ayudará en nuestro trabajo. Un documento bien estructurado siempre es más sencillo de manejar, facilitando por ejemplo la posterior creación de índices.\r\n\r\nDesde la pestaña Inicio > grupo Estilos, encontramos un cuadro que nos permite elegir el tipo de texto que vamos a introducir.','inicio-estilos.gif','','A'),
(5,1,'Guardar y abrir documentos','Para guardar un documento puedes utilizar los comandos Guardar y Guardar como... de la pestaña Archivo, o bien el icono Guardar de la barra de acceso rápido.\r\n\r\n- Al utilizar el comando Guardar como, Word que te permite elegir el dispositivo donde vas a guardar el documento, cambiar el nombre del archivo, el tipo y la carpeta que lo contiene. En definitiva, si el documento ya había sido guardado, lo que harás será guardar las modificaciones realizadas en él en un archivo diferente. De este modo podrás conservar el original y la copia modificada por separado.\r\n\r\nLa primera pantalla que aparece al utilizar Guardar como es la siguiente.','guardar_como.png','','A'),
(6,1,'Ortografía y gramática','La revisión ortográfica y gramatical es otra de las grandes aportaciones de los procesadores de texto. Word 2016 dispone de potentes herramientas en este campo que han sido mejoradas notablemente desde las primeras versiones.\r\n\r\nEvitar que haya errores en nuestros textos es ahora mucho más fácil. No obstante conviene saber que revisar un documento y que Word no encuentre ningún error no quiere decir que, necesariamente, sea así. Ya que hay errores que Word no puede detectar puesto que dependen del contexto.\r\n\r\nLa forma que tiene Word para detectar las palabras erróneas es comprobar si las palabras de nuestro documento existen en el diccionario que lleva incorporado, junto con algunas reglas gramaticales. Lo que no es capaz de hacer Word, por el momento, es discernir el significado de las palabras en cada contexto.\r\n\r\nPor ejemplo, si escribimos La bibliografía del gran escritor Miguel Delibes es muy basta y ¡Vasta de correr!. Word no detectará ningún error puesto que tanto \"basta\" como \"vasta\" son palabras correctas que existen en el diccionario, aunque en el primer caso la palabra correcta es \"vasta\" y en el segundo caso \"basta\".\r\n\r\nLa revisión ortográfica consiste en comprobar que las palabras de nuestro texto no son erróneas y la revisión gramatical trata de que las frases no contengan errores gramaticales como por ejemplo \"Los libros son buenas\"; donde no concuerdan el género del sujeto y del adjetivo.\r\n\r\nObviamente Word realiza mejor la revisión ortográfica, porque únicamente debe contrastar con los diccionarios. Por eso es importante que prestemos especial atención a los posibles fallos gramaticales, que al depender del contexto, son más difíciles de identificar para el programa.\r\n\r\nPodemos realizar una revisión ortográfica, una gramatical o ambas a la vez, como veremos.\r\n\r\n5.1. Revisar mientras se escribe\r\n\r\n\r\nDe forma predeterminada, Word irá subrayando con una línea ondulada las palabras que considere que contienen errores ortográficos en rojo y las que considere que contienen errores gramaticales en azul. Lo hará a medida que vayamos escribiendo, sin necesidad de solicitar la revisión de forma expresa. Word no podrá detectar errores gramaticales hasta que la frase esté acabada, por ejemplo, con un punto.\r\n\r\nErrores subrayados\r\n\r\nÉstas líneas son únicamente informativas, lo que significa que si imprimimos el documento no se imprimirán.\r\n\r\nPara corregir el error debemos colocar el cursor sobre palabra subrayada y pulsar el botón derecho del ratón. Entonces aparecerá el menú contextual que nos permitirá elegir una de las palabras sugeridas.\r\n\r\n Ortografía. En este caso, para el error jugete nos ofrece este menú contextual.','contextual-error-ortografico.gif','','A'),
(7,2,'¿qué es powerpoint?','PowerPoint es una aplicación incluida en el paquete Microsoft Office, que permite crear sencillas presentaciones o transparencias sobre cualquier idea en general.\r\n\r\nEl contenido de estas presentaciones puede variar desde un informe de desarrollo, recomendar estrategias o ventas de productos, servicios o ideas, informes de capacitación o cualquier otra idea de carácter general.\r\n\r\nPowerPoint nos permite incluir en sus presentaciones imágenes (prediseñadas, desde ficheros o a través de un escáner), gráficos (sectores, barras, bursátiles, etc...), organigramas, así como sonidos y vídeos. Todo ello con la posibilidad de poder animarlo.\r\n\r\nEl límite, lo ponemos nosotros mismos.\r\n\r\nAprenderemos a incluir y utilizar cada uno de estos elementos mediante el desarrollo de una presentación didáctica, constituida por una serie de diapositivas, en la que haremos un breve recorrido por la vida y obra de una de los más grandes personajes de la historia: Leonardo da Vinci.','MS-Powerpoint-PNG-Picture.png','','A'),
(8,2,'primeros pasos con powerpoint','Comenzar una presentación en Blanco\r\n\r\nVeamos a continuación los primeros pasos que deberemos dar a la hora de desarrollar una presentación en PowerPoint:\r\n\r\nAbre la aplicación PowerPoint. Se muestra una pantalla que nos da la opción de crear una presentación nueva o abrir una ya existente.\r\nSelecciona la opción Presentación en blanco y haz clic en el botón Aceptar.\r\nA continuación, mediante la ventana Nueva diapositiva, PowerPointnos solicita el formato de la primera diapositiva a incluir en nuestra presentación.\r\n\r\nSelecciona la opción En Blanco y haz clic en el botón Aceptar, para insertar una diapositiva en blanco en la presentación.\r\nAparece la ventana de trabajo de PowerPoint, en la que podemos apreciar dos partes bien diferenciadas.\r\nEn la parte izquierda se muestra un esquema con cada una de las diapositivas que contiene nuestra presentación.\r\n\r\nA la derecha, se encuentra la zona de trabajo donde se muestra la diapositiva en la cual estamos trabajando.','3.jpg','','A'),
(9,2,'Aplicar una Plantilla de Diseño','La diapositiva que acabamos de crear se encuentra en blanco, antes de incluir texto e imágenes en la misma, estableceremos un estilo de diseño para la misma.\r\n\r\nAbre el menú Formato y selecciona la opción Aplicar plantilla de diseño...\r\nAparece una ventana que nos muestra los distintos diseño de diapositiva que nos ofrece PowerPoint.\r\nSelecciona la opción Cuaderno.pot y haz clic en el botón Aplicar. \r\nPodrás observar como la dispositiva que anteriormente se encontraba en blanco, ahora ha adquirido el formato de la plantilla especificada.','5.jpg','','A'),
(10,2,'Insertar un Cuadro de Texto','Abre el menú Insertar y selecciona la opción cuadro de texto.\r\nHaz clic con el ratón en cualquier parte de la diapositiva y escribe el siguiente texto: Leonardo da Vinci.\r\nPulsa la tecla Enter y ahora escribe: Vida y obra.\r\nSelecciona el texto que acabas de introducir y establece el siguiente formato para el mismo:\r\nFuente: Times New Roman\r\nTamaño: 44\r\nAlineación: derecha\r\nNegrita, cursiva, subrayado y sombra de texto.\r\nAbre el menú Insertar, selecciona Imagen y haz clic en la opción Imagen desde archivo...\r\nSelecciona el archivo de imagen “Leonardo da Vinci.gif”. Haz clic en el botón Insertar.\r\nRepite los dos pasos anteriores para insertar la imagen situada en el archivo: “Proyecto de un carro de combate.jpg”\r\nCambia el tamaño y la ubicación de los elementos insertados en la diapositiva hasta obtener una composición como la mostrada a continuación.','6.jpg','','A');

/*Table structure for table `temas` */

DROP TABLE IF EXISTS `temas`;

CREATE TABLE `temas` (
  `idtema` int(10) NOT NULL AUTO_INCREMENT,
  `nomtema` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `desctema` text COLLATE utf8_unicode_ci NOT NULL,
  `imgtema` text COLLATE utf8_unicode_ci NOT NULL,
  `estado` enum('A','I') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idtema`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `temas` */

insert  into `temas`(`idtema`,`nomtema`,`desctema`,`imgtema`,`estado`) values 
(1,'Como usar Word','utiliza word, excel o power point en cualquier lugar totalmente gratis y online, desde tu pc con windows o linux, mac, android o iphone. guarda los documentos realizados en la nube y luego descargatelos en cualquier dispositivo o abre archivos word guardados en cualquier parte.','Microsoft_Word_logo.png','A'),
(2,'Como usar power point','Las presentaciones de PowerPoint funcionan como presentaciones con diapositivas. Para transmitir un mensaje o una historia, se desglosa en diapositivas. Considere cada diapositiva como un lienzo en blanco para imágenes, palabras y formas con las que le será más fácil crear su exposición.','powerpoint-icon-microsoft-powerpoint-icon-network-powerpoint-icons-and-3.png','A'),
(3,'Como usar excel','Excel es un programa de hoja de cálculo de gran alcance creado por Microsoft Office. Puedes crear y dar formato a una hoja de cálculo y a un libro (archivo que contiene una o más hojas de cálculo), construir modelos para el análisis de datos, escribir fórmulas, realizar muchos cálculos, y presentar gráficos profesionales.','2000px-Microsoft_Excel_2013_logo.svg.png','A'),
(4,'Ejemplo tema','Descripcion ejemplo tema','1.PNG','I'),
(5,'Sway','Sway es una aplicación digital profesional para contar historias diseñada para los negocios y que pueden usar usted y sus colegas. Sirve para expresar ideas usando un lienzo interactivo basado en web. El motor de diseño integrado de Sway permite crear informes y presentaciones profesionales y con gran atractivo visual sin necesidad de aplicar mucho formato ni de aprendizaje adicional. ','Sway.png','A'),
(6,'Bloc de notas de clase de OneNote','Bloc de notas de clase forma parte de OneNote y está disponible para Office 365 Educación y Office 365 E5 Educación. Cada bloc de notas incluye una biblioteca de contenido para que los profesores compartan contenido del curso, un espacio de colaboración donde los profesores y los alumnos pueden trabajar juntos, y un bloc de notas privado para cada alumno. ','Microsoft_OneNote_2013_logo.svg.png','A'),
(7,'Office 365 Video','Office 365 Video es un destino seguro para toda la compañía donde puede cargar, compartir y descubrir los vídeos en sus dispositivos, con tecnología de Microsoft Azure Media Services. Office 365 Video puede ayudar a mantener a los usuarios atentos e informados, a difundir ideas y hacer que las organizaciones actúen de forma conjunta. ','o365-video.png','A'),
(8,'Office Delve','Office Delve permite a los usuarios buscar y descubrir contenido en Office 365 basado en información personalizada. Delve es la primera experiencia con tecnología de Office Graph.','unnamed.png','A'),
(9,'Microsoft Teams','Microsoft Teams es un área de trabajo en Office 365 centrada en el chat que ayuda a los miembros de equipo a ser más productivos. Microsoft Teams sirve como centro para el trabajo en equipo, ya que ofrece acceso instantáneo a conversaciones de chat, contenido y herramientas de Office 365 en una sola área de trabajo.','Microsoft_Teams_logo.png','A'),
(10,'Microsoft StaffHub','Microsoft StaffHub es una aplicación basada en la nube que permite a los trabajadores y administradores utilizan sus dispositivos móviles para administrar agendas y mantenerse en contacto. Los empleados pueden utilizar StaffHub para solicitar tiempo libre, cambiar turnos y comunicarse con otros empleados.','microsoft-staffhub.png','A'),
(11,'Microsoft PowerApps','Microsoft PowerApps es un servicio de empresa que le ayuda a construir, integrar y compartir aplicaciones que funcionan en cualquier dispositivo rápidamente. PowerApps le permite utilizar conexiones integradas o compiladas por su compañía para conectar su aplicación con la nube y con los servicios locales, incluidos Office 365, Dynamics CRM, OneDrive, SharePoint, SQL Server, bases de datos de Oracle y muchos más.','PowerApps-Logo.png','A'),
(12,'Microsoft Planner','Microsoft Planner es una herramienta que proporciona a los usuarios una forma visual de organizar el trabajo en equipo. Los equipos pueden crear nuevos planes, organizar y asignar tareas, compartir archivos, chatear sobre lo que están haciendo, establecer plazos y actualizar el estado. ','Microsoft-Planner.png','A'),
(13,'Microsoft Flow','Microsoft Flow le permite automatizar los flujos de trabajo mediante aplicaciones. Puede utilizar Flow para conectar avisos por mensajería instantánea y de correo electrónico, sincronizar archivos entre aplicaciones, copiar archivos de un servicio a otro, recopilar datos de un servicio de una aplicación y almacenarlos en otro y mucho más.','unnamed (1).png','A');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
