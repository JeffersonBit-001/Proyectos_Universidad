-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: universidad
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `alternativas_examen`
--

DROP TABLE IF EXISTS `alternativas_examen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alternativas_examen` (
  `id_alternativas_examen` int NOT NULL AUTO_INCREMENT,
  `id_preguntas_examen` int DEFAULT NULL,
  `texto_alternativa` longtext NOT NULL,
  `valor` char(1) DEFAULT 'I',
  PRIMARY KEY (`id_alternativas_examen`),
  KEY `id_preg_exa_idx` (`id_preguntas_examen`),
  CONSTRAINT `id_preg_exa` FOREIGN KEY (`id_preguntas_examen`) REFERENCES `preguntas_examen` (`id_preguntas_examen`)
) ENGINE=InnoDB AUTO_INCREMENT=742 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alternativas_examen`
--

LOCK TABLES `alternativas_examen` WRITE;
/*!40000 ALTER TABLE `alternativas_examen` DISABLE KEYS */;
INSERT INTO `alternativas_examen` VALUES (1,1,'cero','I'),(2,1,'uno','C'),(3,1,'dos','I'),(4,1,'tres','I'),(5,1,'cuatro','I'),(6,2,'cero','I'),(7,2,'uno','I'),(8,2,'dos','I'),(9,2,'tres','C'),(10,2,'cuatro','I'),(11,3,'asd','I'),(12,3,'asd','I'),(13,3,'asd','I'),(14,3,'asd','I'),(15,3,'José Yeri','C'),(16,4,'asd','I'),(17,4,'asd','I'),(18,4,'asd','I'),(19,4,'asd','I'),(20,4,'Rodrigo Paz','C'),(21,5,'asd','I'),(22,5,'dsa','I'),(23,5,'3.14','C'),(24,5,'da','I'),(25,5,'xsa','I'),(26,6,'xsa','I'),(27,6,'ghd','I'),(28,6,'16 de Nov','C'),(29,6,'dfg','I'),(30,6,'fdg','I'),(31,7,'434','I'),(32,7,'Mother','C'),(33,7,'323','I'),(34,7,'ew3','I'),(35,7,'23','I'),(36,8,'Father','C'),(37,8,'ghf','I'),(38,8,'fgf','I'),(39,8,'fse','I'),(40,8,'wee','I'),(46,10,'3','I'),(47,10,'4','I'),(48,10,'7','I'),(49,10,'6','C'),(50,10,'nulo','I'),(51,11,'asd','I'),(52,11,'asd12','I'),(53,11,'xcxzc','I'),(54,11,'eqwe12','I'),(55,11,'no sé','C'),(56,12,'1','I'),(57,12,'2','I'),(58,12,'3','I'),(59,12,'4','I'),(60,12,'asdasd','C'),(110,25,'Grado en que un sistema satisface los requisitos','C'),(111,25,'Que el código se vea bonito visualmente','I'),(112,25,'La cantidad de líneas de código escritas','I'),(113,25,'Usar la tecnología más reciente siempre','I'),(114,25,'La velocidad de internet del servidor','I'),(115,26,'ISO/IEC 25010','C'),(116,26,'ISO 9001','I'),(117,26,'HTML5','I'),(118,26,'IEEE 802.11','I'),(119,26,'RFC 123','I'),(120,27,'QA previene defectos y QC los detecta','C'),(121,27,'Son exactamente lo mismo','I'),(122,27,'QC planifica y QA ejecuta','I'),(123,27,'QA es para código y QC para hardware','I'),(124,27,'QA es al final y QC al principio','I'),(125,28,'Prueba de la parte más pequeña de código','C'),(126,28,'Prueba del sistema completo','I'),(127,28,'Prueba realizada por el usuario final','I'),(128,28,'Revisión de la documentación','I'),(129,28,'Prueba de carga del servidor','I'),(130,29,'Usabilidad','C'),(131,29,'Eficiencia','I'),(132,29,'Mantenibilidad','I'),(133,29,'Portabilidad','I'),(134,29,'Fiabilidad','I'),(135,30,'¿Estamos construyendo el producto correcto?','C'),(136,30,'¿Estamos construyendo el producto correctamente?','I'),(137,30,'Revisar la sintaxis del código','I'),(138,30,'Compilar el programa sin errores','I'),(139,30,'Hacer un backup de la base de datos','I'),(140,31,'Probar sin conocer la estructura interna','C'),(141,31,'Probar mirando el código fuente','I'),(142,31,'Probar solo el hardware','I'),(143,31,'Probar la seguridad de la red','I'),(144,31,'Una prueba que siempre falla','I'),(145,32,'Mantenimiento Correctivo','C'),(146,32,'Mantenimiento Preventivo','I'),(147,32,'Mantenimiento Adaptativo','I'),(148,32,'Mantenimiento Perfectivo','I'),(149,32,'Mantenimiento Predictivo','I'),(150,33,'Costo futuro por elegir una solución rápida hoy','C'),(151,33,'Dinero que se debe a los desarrolladores','I'),(152,33,'El costo de las licencias de software','I'),(153,33,'El presupuesto del proyecto','I'),(154,33,'Un error de compilación','I'),(155,34,'Verificar que cambios nuevos no rompan lo viejo','C'),(156,34,'Probar el sistema por primera vez','I'),(157,34,'Volver a una versión anterior del código','I'),(158,34,'Probar la velocidad del sistema','I'),(159,34,'Eliminar el código obsoleto','I'),(160,35,'Confidencialidad','C'),(161,35,'Velocidad','I'),(162,35,'Estética','I'),(163,35,'Complejidad','I'),(164,35,'Precio','I'),(165,36,'Atributos de calidad (como rendimiento)','C'),(166,36,'Lo que el sistema debe hacer (funciones)','I'),(167,36,'Requisitos que no son importantes','I'),(168,36,'Instrucciones de instalación','I'),(169,36,'El manual de usuario','I'),(170,37,'Capacidad de funcionar sin fallos un tiempo dado','C'),(171,37,'La rapidez de respuesta','I'),(172,37,'La facilidad de instalación','I'),(173,37,'La capacidad de ser transferido','I'),(174,37,'El tamaño del ejecutable','I'),(175,38,'Verificar la interacción entre módulos','C'),(176,38,'Probar una sola función aislada','I'),(177,38,'Probar la interfaz gráfica solamente','I'),(178,38,'Revisar la ortografía','I'),(179,38,'Instalar el software en producción','I'),(180,39,'Reportar un error que en realidad no existe','C'),(181,39,'Encontrar un error real','I'),(182,39,'Pasar una prueba que debió fallar','I'),(183,39,'Un error que bloquea el sistema','I'),(184,39,'Un comentario positivo del cliente','I'),(185,40,'Capacidad de ejecutarse en diferentes entornos','C'),(186,40,'Capacidad de procesar muchos datos','I'),(187,40,'Que el software sea portable en USB','I'),(188,40,'Que el código sea corto','I'),(189,40,'Que no tenga errores','I'),(190,41,'Evaluar el sistema bajo cargas extremas','C'),(191,41,'Verificar la lógica de negocio','I'),(192,41,'Probar la interfaz de usuario','I'),(193,41,'Medir la usabilidad','I'),(194,41,'Probar con un solo usuario','I'),(195,42,'Revisar el código sin ejecutarlo','C'),(196,42,'Ejecutar el código paso a paso','I'),(197,42,'Probar el software compilado','I'),(198,42,'Entrevistar a los usuarios','I'),(199,43,'Marketing','C'),(200,43,'Seguridad','I'),(201,43,'Desempeño','I'),(202,43,'Compatibilidad','I'),(203,44,'Un defecto o error en el software','C'),(204,44,'Una característica no documentada','I'),(205,44,'Un tipo de hardware','I'),(206,44,'Un virus informático','I'),(207,45,'sdasad','I'),(208,45,'sadasdqw','I'),(209,45,'zcxda','C'),(210,46,'dsfsdf','C'),(211,46,'sdfsdfs','I'),(212,46,'vbnvbnvb','I'),(213,47,'Grado en que un sistema satisface los requisitos','C'),(214,47,'Que el código se vea bonito visualmente','I'),(215,47,'La cantidad de líneas de código escritas','I'),(216,47,'Usar la tecnología más reciente siempre','I'),(217,47,'La velocidad de internet del servidor','I'),(218,48,'ISO/IEC 25010','C'),(219,48,'ISO 9001','I'),(220,48,'HTML5','I'),(221,48,'IEEE 802.11','I'),(222,48,'RFC 123','I'),(223,49,'QA previene defectos y QC los detecta','C'),(224,49,'Son exactamente lo mismo','I'),(225,49,'QC planifica y QA ejecuta','I'),(226,49,'QA es para código y QC para hardware','I'),(227,49,'QA es al final y QC al principio','I'),(228,50,'Prueba de la parte más pequeña de código','C'),(229,50,'Prueba del sistema completo','I'),(230,50,'Prueba realizada por el usuario final','I'),(231,50,'Revisión de la documentación','I'),(232,50,'Prueba de carga del servidor','I'),(233,51,'Usabilidad','C'),(234,51,'Eficiencia','I'),(235,51,'Mantenibilidad','I'),(236,51,'Portabilidad','I'),(237,51,'Fiabilidad','I'),(238,52,'¿Estamos construyendo el producto correcto?','C'),(239,52,'¿Estamos construyendo el producto correctamente?','I'),(240,52,'Revisar la sintaxis del código','I'),(241,52,'Compilar el programa sin errores','I'),(242,52,'Hacer un backup de la base de datos','I'),(243,53,'Probar sin conocer la estructura interna','C'),(244,53,'Probar mirando el código fuente','I'),(245,53,'Probar solo el hardware','I'),(246,53,'Probar la seguridad de la red','I'),(247,53,'Una prueba que siempre falla','I'),(248,54,'Mantenimiento Correctivo','C'),(249,54,'Mantenimiento Preventivo','I'),(250,54,'Mantenimiento Adaptativo','I'),(251,54,'Mantenimiento Perfectivo','I'),(252,54,'Mantenimiento Predictivo','I'),(253,55,'Costo futuro por elegir una solución rápida hoy','C'),(254,55,'Dinero que se debe a los desarrolladores','I'),(255,55,'El costo de las licencias de software','I'),(256,55,'El presupuesto del proyecto','I'),(257,55,'Un error de compilación','I'),(258,56,'Verificar que cambios nuevos no rompan lo viejo','C'),(259,56,'Probar el sistema por primera vez','I'),(260,56,'Volver a una versión anterior del código','I'),(261,56,'Probar la velocidad del sistema','I'),(262,56,'Eliminar el código obsoleto','I'),(263,57,'Confidencialidad','C'),(264,57,'Velocidad','I'),(265,57,'Estética','I'),(266,57,'Complejidad','I'),(267,57,'Precio','I'),(268,58,'Atributos de calidad (como rendimiento)','C'),(269,58,'Lo que el sistema debe hacer (funciones)','I'),(270,58,'Requisitos que no son importantes','I'),(271,58,'Instrucciones de instalación','I'),(272,58,'El manual de usuario','I'),(273,59,'Capacidad de funcionar sin fallos un tiempo dado','C'),(274,59,'La rapidez de respuesta','I'),(275,59,'La facilidad de instalación','I'),(276,59,'La capacidad de ser transferido','I'),(277,59,'El tamaño del ejecutable','I'),(278,60,'Verificar la interacción entre módulos','C'),(279,60,'Probar una sola función aislada','I'),(280,60,'Probar la interfaz gráfica solamente','I'),(281,60,'Revisar la ortografía','I'),(282,60,'Instalar el software en producción','I'),(283,61,'Reportar un error que en realidad no existe','C'),(284,61,'Encontrar un error real','I'),(285,61,'Pasar una prueba que debió fallar','I'),(286,61,'Un error que bloquea el sistema','I'),(287,61,'Un comentario positivo del cliente','I'),(288,62,'Capacidad de ejecutarse en diferentes entornos','C'),(289,62,'Capacidad de procesar muchos datos','I'),(290,62,'Que el software sea portable en USB','I'),(291,62,'Que el código sea corto','I'),(292,62,'Que no tenga errores','I'),(293,63,'Evaluar el sistema bajo cargas extremas','C'),(294,63,'Verificar la lógica de negocio','I'),(295,63,'Probar la interfaz de usuario','I'),(296,63,'Medir la usabilidad','I'),(297,63,'Probar con un solo usuario','I'),(298,64,'Revisar el código sin ejecutarlo','C'),(299,64,'Ejecutar el código paso a paso','I'),(300,64,'Probar el software compilado','I'),(301,64,'Entrevistar a los usuarios','I'),(302,65,'Marketing','C'),(303,65,'Seguridad','I'),(304,65,'Desempeño','I'),(305,65,'Compatibilidad','I'),(306,66,'Un defecto o error en el software','C'),(307,66,'Una característica no documentada','I'),(308,66,'Un tipo de hardware','I'),(309,66,'Un virus informático','I'),(310,67,'Grado en que un sistema satisface los requisitos','C'),(311,67,'Que el código se vea bonito visualmente','I'),(312,67,'La cantidad de líneas de código escritas','I'),(313,67,'Usar la tecnología más reciente siempre','I'),(314,67,'La velocidad de internet del servidor','I'),(315,68,'ISO/IEC 25010','C'),(316,68,'ISO 9001','I'),(317,68,'HTML5','I'),(318,68,'IEEE 802.11','I'),(319,68,'RFC 123','I'),(320,69,'QA previene defectos y QC los detecta','C'),(321,69,'Son exactamente lo mismo','I'),(322,69,'QC planifica y QA ejecuta','I'),(323,69,'QA es para código y QC para hardware','I'),(324,69,'QA es al final y QC al principio','I'),(325,70,'Prueba de la parte más pequeña de código','C'),(326,70,'Prueba del sistema completo','I'),(327,70,'Prueba realizada por el usuario final','I'),(328,70,'Revisión de la documentación','I'),(329,70,'Prueba de carga del servidor','I'),(330,71,'Usabilidad','C'),(331,71,'Eficiencia','I'),(332,71,'Mantenibilidad','I'),(333,71,'Portabilidad','I'),(334,71,'Fiabilidad','I'),(335,72,'¿Estamos construyendo el producto correcto?','C'),(336,72,'¿Estamos construyendo el producto correctamente?','I'),(337,72,'Revisar la sintaxis del código','I'),(338,72,'Compilar el programa sin errores','I'),(339,72,'Hacer un backup de la base de datos','I'),(340,73,'Probar sin conocer la estructura interna','C'),(341,73,'Probar mirando el código fuente','I'),(342,73,'Probar solo el hardware','I'),(343,73,'Probar la seguridad de la red','I'),(344,73,'Una prueba que siempre falla','I'),(345,74,'Mantenimiento Correctivo','C'),(346,74,'Mantenimiento Preventivo','I'),(347,74,'Mantenimiento Adaptativo','I'),(348,74,'Mantenimiento Perfectivo','I'),(349,74,'Mantenimiento Predictivo','I'),(350,75,'Costo futuro por elegir una solución rápida hoy','C'),(351,75,'Dinero que se debe a los desarrolladores','I'),(352,75,'El costo de las licencias de software','I'),(353,75,'El presupuesto del proyecto','I'),(354,75,'Un error de compilación','I'),(355,76,'Verificar que cambios nuevos no rompan lo viejo','C'),(356,76,'Probar el sistema por primera vez','I'),(357,76,'Volver a una versión anterior del código','I'),(358,76,'Probar la velocidad del sistema','I'),(359,76,'Eliminar el código obsoleto','I'),(360,77,'Confidencialidad','C'),(361,77,'Velocidad','I'),(362,77,'Estética','I'),(363,77,'Complejidad','I'),(364,77,'Precio','I'),(365,78,'Atributos de calidad (como rendimiento)','C'),(366,78,'Lo que el sistema debe hacer (funciones)','I'),(367,78,'Requisitos que no son importantes','I'),(368,78,'Instrucciones de instalación','I'),(369,78,'El manual de usuario','I'),(370,79,'Capacidad de funcionar sin fallos un tiempo dado','C'),(371,79,'La rapidez de respuesta','I'),(372,79,'La facilidad de instalación','I'),(373,79,'La capacidad de ser transferido','I'),(374,79,'El tamaño del ejecutable','I'),(375,80,'Verificar la interacción entre módulos','C'),(376,80,'Probar una sola función aislada','I'),(377,80,'Probar la interfaz gráfica solamente','I'),(378,80,'Revisar la ortografía','I'),(379,80,'Instalar el software en producción','I'),(380,81,'Reportar un error que en realidad no existe','C'),(381,81,'Encontrar un error real','I'),(382,81,'Pasar una prueba que debió fallar','I'),(383,81,'Un error que bloquea el sistema','I'),(384,81,'Un comentario positivo del cliente','I'),(385,82,'Capacidad de ejecutarse en diferentes entornos','C'),(386,82,'Capacidad de procesar muchos datos','I'),(387,82,'Que el software sea portable en USB','I'),(388,82,'Que el código sea corto','I'),(389,82,'Que no tenga errores','I'),(390,83,'Evaluar el sistema bajo cargas extremas','C'),(391,83,'Verificar la lógica de negocio','I'),(392,83,'Probar la interfaz de usuario','I'),(393,83,'Medir la usabilidad','I'),(394,83,'Probar con un solo usuario','I'),(395,84,'Revisar el código sin ejecutarlo','C'),(396,84,'Ejecutar el código paso a paso','I'),(397,84,'Probar el software compilado','I'),(398,84,'Entrevistar a los usuarios','I'),(399,85,'Marketing','C'),(400,85,'Seguridad','I'),(401,85,'Desempeño','I'),(402,85,'Compatibilidad','I'),(403,86,'Un defecto o error en el software','C'),(404,86,'Una característica no documentada','I'),(405,86,'Un tipo de hardware','I'),(406,86,'Un virus informático','I'),(407,87,'Grado en que un sistema satisface los requisitos','C'),(408,87,'Que el código se vea bonito visualmente','I'),(409,87,'La cantidad de líneas de código escritas','I'),(410,87,'Usar la tecnología más reciente siempre','I'),(411,87,'La velocidad de internet del servidor','I'),(412,88,'ISO/IEC 25010','C'),(413,88,'ISO 9001','I'),(414,88,'HTML5','I'),(415,88,'IEEE 802.11','I'),(416,88,'RFC 123','I'),(417,89,'QA previene defectos y QC los detecta','C'),(418,89,'Son exactamente lo mismo','I'),(419,89,'QC planifica y QA ejecuta','I'),(420,89,'QA es para código y QC para hardware','I'),(421,89,'QA es al final y QC al principio','I'),(422,90,'Prueba de la parte más pequeña de código','C'),(423,90,'Prueba del sistema completo','I'),(424,90,'Prueba realizada por el usuario final','I'),(425,90,'Revisión de la documentación','I'),(426,90,'Prueba de carga del servidor','I'),(427,91,'Usabilidad','C'),(428,91,'Eficiencia','I'),(429,91,'Mantenibilidad','I'),(430,91,'Portabilidad','I'),(431,91,'Fiabilidad','I'),(432,92,'¿Estamos construyendo el producto correcto?','C'),(433,92,'¿Estamos construyendo el producto correctamente?','I'),(434,92,'Revisar la sintaxis del código','I'),(435,92,'Compilar el programa sin errores','I'),(436,92,'Hacer un backup de la base de datos','I'),(437,93,'Probar sin conocer la estructura interna','C'),(438,93,'Probar mirando el código fuente','I'),(439,93,'Probar solo el hardware','I'),(440,93,'Probar la seguridad de la red','I'),(441,93,'Una prueba que siempre falla','I'),(442,94,'Mantenimiento Correctivo','C'),(443,94,'Mantenimiento Preventivo','I'),(444,94,'Mantenimiento Adaptativo','I'),(445,94,'Mantenimiento Perfectivo','I'),(446,94,'Mantenimiento Predictivo','I'),(447,95,'Costo futuro por elegir una solución rápida hoy','C'),(448,95,'Dinero que se debe a los desarrolladores','I'),(449,95,'El costo de las licencias de software','I'),(450,95,'El presupuesto del proyecto','I'),(451,95,'Un error de compilación','I'),(452,96,'Verificar que cambios nuevos no rompan lo viejo','C'),(453,96,'Probar el sistema por primera vez','I'),(454,96,'Volver a una versión anterior del código','I'),(455,96,'Probar la velocidad del sistema','I'),(456,96,'Eliminar el código obsoleto','I'),(457,97,'Confidencialidad','C'),(458,97,'Velocidad','I'),(459,97,'Estética','I'),(460,97,'Complejidad','I'),(461,97,'Precio','I'),(462,98,'Atributos de calidad (como rendimiento)','C'),(463,98,'Lo que el sistema debe hacer (funciones)','I'),(464,98,'Requisitos que no son importantes','I'),(465,98,'Instrucciones de instalación','I'),(466,98,'El manual de usuario','I'),(467,99,'Capacidad de funcionar sin fallos un tiempo dado','C'),(468,99,'La rapidez de respuesta','I'),(469,99,'La facilidad de instalación','I'),(470,99,'La capacidad de ser transferido','I'),(471,99,'El tamaño del ejecutable','I'),(472,100,'Verificar la interacción entre módulos','C'),(473,100,'Probar una sola función aislada','I'),(474,100,'Probar la interfaz gráfica solamente','I'),(475,100,'Revisar la ortografía','I'),(476,100,'Instalar el software en producción','I'),(477,101,'Reportar un error que en realidad no existe','C'),(478,101,'Encontrar un error real','I'),(479,101,'Pasar una prueba que debió fallar','I'),(480,101,'Un error que bloquea el sistema','I'),(481,101,'Un comentario positivo del cliente','I'),(482,102,'Capacidad de ejecutarse en diferentes entornos','C'),(483,102,'Capacidad de procesar muchos datos','I'),(484,102,'Que el software sea portable en USB','I'),(485,102,'Que el código sea corto','I'),(486,102,'Que no tenga errores','I'),(487,103,'Evaluar el sistema bajo cargas extremas','C'),(488,103,'Verificar la lógica de negocio','I'),(489,103,'Probar la interfaz de usuario','I'),(490,103,'Medir la usabilidad','I'),(491,103,'Probar con un solo usuario','I'),(492,104,'Revisar el código sin ejecutarlo','C'),(493,104,'Ejecutar el código paso a paso','I'),(494,104,'Probar el software compilado','I'),(495,104,'Entrevistar a los usuarios','I'),(496,105,'Marketing','C'),(497,105,'Seguridad','I'),(498,105,'Desempeño','I'),(499,105,'Compatibilidad','I'),(500,106,'Un defecto o error en el software','C'),(501,106,'Una característica no documentada','I'),(502,106,'Un tipo de hardware','I'),(503,106,'Un virus informático','I'),(504,107,'Grado en que un sistema satisface los requisitos','C'),(505,107,'Que el código se vea bonito visualmente','I'),(506,107,'La cantidad de líneas de código escritas','I'),(507,107,'Usar la tecnología más reciente siempre','I'),(508,107,'La velocidad de internet del servidor','I'),(509,108,'ISO/IEC 25010','C'),(510,108,'ISO 9001','I'),(511,108,'HTML5','I'),(512,108,'IEEE 802.11','I'),(513,108,'RFC 123','I'),(514,109,'QA previene defectos y QC los detecta','C'),(515,109,'Son exactamente lo mismo','I'),(516,109,'QC planifica y QA ejecuta','I'),(517,109,'QA es para código y QC para hardware','I'),(518,109,'QA es al final y QC al principio','I'),(519,110,'Prueba de la parte más pequeña de código','C'),(520,110,'Prueba del sistema completo','I'),(521,110,'Prueba realizada por el usuario final','I'),(522,110,'Revisión de la documentación','I'),(523,110,'Prueba de carga del servidor','I'),(524,111,'Usabilidad','C'),(525,111,'Eficiencia','I'),(526,111,'Mantenibilidad','I'),(527,111,'Portabilidad','I'),(528,111,'Fiabilidad','I'),(529,112,'¿Estamos construyendo el producto correcto?','C'),(530,112,'¿Estamos construyendo el producto correctamente?','I'),(531,112,'Revisar la sintaxis del código','I'),(532,112,'Compilar el programa sin errores','I'),(533,112,'Hacer un backup de la base de datos','I'),(534,113,'Probar sin conocer la estructura interna','C'),(535,113,'Probar mirando el código fuente','I'),(536,113,'Probar solo el hardware','I'),(537,113,'Probar la seguridad de la red','I'),(538,113,'Una prueba que siempre falla','I'),(539,114,'Mantenimiento Correctivo','C'),(540,114,'Mantenimiento Preventivo','I'),(541,114,'Mantenimiento Adaptativo','I'),(542,114,'Mantenimiento Perfectivo','I'),(543,114,'Mantenimiento Predictivo','I'),(544,115,'Costo futuro por elegir una solución rápida hoy','C'),(545,115,'Dinero que se debe a los desarrolladores','I'),(546,115,'El costo de las licencias de software','I'),(547,115,'El presupuesto del proyecto','I'),(548,115,'Un error de compilación','I'),(549,116,'Verificar que cambios nuevos no rompan lo viejo','C'),(550,116,'Probar el sistema por primera vez','I'),(551,116,'Volver a una versión anterior del código','I'),(552,116,'Probar la velocidad del sistema','I'),(553,116,'Eliminar el código obsoleto','I'),(554,117,'Confidencialidad','C'),(555,117,'Velocidad','I'),(556,117,'Estética','I'),(557,117,'Complejidad','I'),(558,117,'Precio','I'),(559,118,'Atributos de calidad (como rendimiento)','C'),(560,118,'Lo que el sistema debe hacer (funciones)','I'),(561,118,'Requisitos que no son importantes','I'),(562,118,'Instrucciones de instalación','I'),(563,118,'El manual de usuario','I'),(564,119,'Capacidad de funcionar sin fallos un tiempo dado','C'),(565,119,'La rapidez de respuesta','I'),(566,119,'La facilidad de instalación','I'),(567,119,'La capacidad de ser transferido','I'),(568,119,'El tamaño del ejecutable','I'),(569,120,'Verificar la interacción entre módulos','C'),(570,120,'Probar una sola función aislada','I'),(571,120,'Probar la interfaz gráfica solamente','I'),(572,120,'Revisar la ortografía','I'),(573,120,'Instalar el software en producción','I'),(574,121,'Reportar un error que en realidad no existe','C'),(575,121,'Encontrar un error real','I'),(576,121,'Pasar una prueba que debió fallar','I'),(577,121,'Un error que bloquea el sistema','I'),(578,121,'Un comentario positivo del cliente','I'),(579,122,'Capacidad de ejecutarse en diferentes entornos','C'),(580,122,'Capacidad de procesar muchos datos','I'),(581,122,'Que el software sea portable en USB','I'),(582,122,'Que el código sea corto','I'),(583,122,'Que no tenga errores','I'),(584,123,'Evaluar el sistema bajo cargas extremas','C'),(585,123,'Verificar la lógica de negocio','I'),(586,123,'Probar la interfaz de usuario','I'),(587,123,'Medir la usabilidad','I'),(588,123,'Probar con un solo usuario','I'),(589,124,'Revisar el código sin ejecutarlo','C'),(590,124,'Ejecutar el código paso a paso','I'),(591,124,'Probar el software compilado','I'),(592,124,'Entrevistar a los usuarios','I'),(593,125,'Marketing','C'),(594,125,'Seguridad','I'),(595,125,'Desempeño','I'),(596,125,'Compatibilidad','I'),(597,126,'Un defecto o error en el software','C'),(598,126,'Una característica no documentada','I'),(599,126,'Un tipo de hardware','I'),(600,126,'Un virus informático','I'),(601,127,'Grado en que un sistema satisface los requisitos','C'),(602,127,'Que el código se vea bonito visualmente','I'),(603,127,'La cantidad de líneas de código escritas','I'),(604,127,'Usar la tecnología más reciente siempre','I'),(605,127,'La velocidad de internet del servidor','I'),(606,128,'ISO/IEC 25010','C'),(607,128,'ISO 9001','I'),(608,128,'HTML5','I'),(609,128,'IEEE 802.11','I'),(610,128,'RFC 123','I'),(611,129,'QA previene defectos y QC los detecta','C'),(612,129,'Son exactamente lo mismo','I'),(613,129,'QC planifica y QA ejecuta','I'),(614,129,'QA es para código y QC para hardware','I'),(615,129,'QA es al final y QC al principio','I'),(616,130,'Prueba de la parte más pequeña de código','C'),(617,130,'Prueba del sistema completo','I'),(618,130,'Prueba realizada por el usuario final','I'),(619,130,'Revisión de la documentación','I'),(620,130,'Prueba de carga del servidor','I'),(621,131,'Usabilidad','C'),(622,131,'Eficiencia','I'),(623,131,'Mantenibilidad','I'),(624,131,'Portabilidad','I'),(625,131,'Fiabilidad','I'),(626,132,'¿Estamos construyendo el producto correcto?','C'),(627,132,'¿Estamos construyendo el producto correctamente?','I'),(628,132,'Revisar la sintaxis del código','I'),(629,132,'Compilar el programa sin errores','I'),(630,132,'Hacer un backup de la base de datos','I'),(631,133,'Probar sin conocer la estructura interna','C'),(632,133,'Probar mirando el código fuente','I'),(633,133,'Probar solo el hardware','I'),(634,133,'Probar la seguridad de la red','I'),(635,133,'Una prueba que siempre falla','I'),(636,134,'Mantenimiento Correctivo','C'),(637,134,'Mantenimiento Preventivo','I'),(638,134,'Mantenimiento Adaptativo','I'),(639,134,'Mantenimiento Perfectivo','I'),(640,134,'Mantenimiento Predictivo','I'),(641,135,'Costo futuro por elegir una solución rápida hoy','C'),(642,135,'Dinero que se debe a los desarrolladores','I'),(643,135,'El costo de las licencias de software','I'),(644,135,'El presupuesto del proyecto','I'),(645,135,'Un error de compilación','I'),(646,136,'Verificar que cambios nuevos no rompan lo viejo','C'),(647,136,'Probar el sistema por primera vez','I'),(648,136,'Volver a una versión anterior del código','I'),(649,136,'Probar la velocidad del sistema','I'),(650,136,'Eliminar el código obsoleto','I'),(651,137,'Confidencialidad','C'),(652,137,'Velocidad','I'),(653,137,'Estética','I'),(654,137,'Complejidad','I'),(655,137,'Precio','I'),(656,138,'Atributos de calidad (como rendimiento)','C'),(657,138,'Lo que el sistema debe hacer (funciones)','I'),(658,138,'Requisitos que no son importantes','I'),(659,138,'Instrucciones de instalación','I'),(660,138,'El manual de usuario','I'),(661,139,'Capacidad de funcionar sin fallos un tiempo dado','C'),(662,139,'La rapidez de respuesta','I'),(663,139,'La facilidad de instalación','I'),(664,139,'La capacidad de ser transferido','I'),(665,139,'El tamaño del ejecutable','I'),(666,140,'Verificar la interacción entre módulos','C'),(667,140,'Probar una sola función aislada','I'),(668,140,'Probar la interfaz gráfica solamente','I'),(669,140,'Revisar la ortografía','I'),(670,140,'Instalar el software en producción','I'),(671,141,'Reportar un error que en realidad no existe','C'),(672,141,'Encontrar un error real','I'),(673,141,'Pasar una prueba que debió fallar','I'),(674,141,'Un error que bloquea el sistema','I'),(675,141,'Un comentario positivo del cliente','I'),(676,142,'Capacidad de ejecutarse en diferentes entornos','C'),(677,142,'Capacidad de procesar muchos datos','I'),(678,142,'Que el software sea portable en USB','I'),(679,142,'Que el código sea corto','I'),(680,142,'Que no tenga errores','I'),(681,143,'Evaluar el sistema bajo cargas extremas','C'),(682,143,'Verificar la lógica de negocio','I'),(683,143,'Probar la interfaz de usuario','I'),(684,143,'Medir la usabilidad','I'),(685,143,'Probar con un solo usuario','I'),(686,144,'Revisar el código sin ejecutarlo','C'),(687,144,'Ejecutar el código paso a paso','I'),(688,144,'Probar el software compilado','I'),(689,144,'Entrevistar a los usuarios','I'),(690,145,'Marketing','C'),(691,145,'Seguridad','I'),(692,145,'Desempeño','I'),(693,145,'Compatibilidad','I'),(694,146,'Un defecto o error en el software','C'),(695,146,'Una característica no documentada','I'),(696,146,'Un tipo de hardware','I'),(697,146,'Un virus informático','I'),(698,149,'qwe','I'),(699,149,'qweqwe','C'),(700,150,'asdsad','C'),(701,150,'qweqweqw','I'),(702,152,'qweqwe','C'),(703,152,'wqeqew','I'),(704,153,'qweqw','C'),(705,153,'qweqe','I'),(706,170,'Verdadero','I'),(707,170,'Falso','C'),(708,171,'Verdadero','I'),(709,171,'Falso','C'),(710,172,'Verdadero','I'),(711,172,'Falso','C'),(712,173,'Verdadero','I'),(713,173,'Falso','C'),(714,174,'Verdadero','C'),(715,174,'Falso','I'),(716,175,'Verdadero','C'),(717,175,'Falso','I'),(718,176,'Verdadero','C'),(719,176,'Falso','I'),(724,186,'Cumplir requisitos','C'),(725,186,'Que sea bonito','I'),(726,188,'Quality Assurance','C'),(727,188,'Quality Control','I'),(728,190,'Verdadero','I'),(729,190,'Falso','C'),(730,191,'Verdadero','I'),(731,191,'Falso','C'),(732,192,'Verdadero','I'),(733,192,'Falso','C'),(734,193,'Verdadero','I'),(735,193,'Falso','C'),(736,194,'Verdadero','C'),(737,194,'Falso','I'),(738,195,'Verdadero','C'),(739,195,'Falso','I'),(740,196,'Verdadero','C'),(741,196,'Falso','I');
/*!40000 ALTER TABLE `alternativas_examen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add task',7,'add_task'),(26,'Can change task',7,'change_task'),(27,'Can delete task',7,'delete_task'),(28,'Can view task',7,'view_task'),(29,'Can add respuestas usuario',8,'add_respuestasusuario'),(30,'Can change respuestas usuario',8,'change_respuestasusuario'),(31,'Can delete respuestas usuario',8,'delete_respuestasusuario'),(32,'Can view respuestas usuario',8,'view_respuestasusuario'),(33,'Can add estado examen',9,'add_estadoexamen'),(34,'Can change estado examen',9,'change_estadoexamen'),(35,'Can delete estado examen',9,'delete_estadoexamen'),(36,'Can view estado examen',9,'view_estadoexamen'),(37,'Can add salon alumnos',10,'add_salonalumnos'),(38,'Can change salon alumnos',10,'change_salonalumnos'),(39,'Can delete salon alumnos',10,'delete_salonalumnos'),(40,'Can view salon alumnos',10,'view_salonalumnos'),(41,'Can add examen',11,'add_examen'),(42,'Can change examen',11,'change_examen'),(43,'Can delete examen',11,'delete_examen'),(44,'Can view examen',11,'view_examen'),(45,'Can add cursos',12,'add_cursos'),(46,'Can change cursos',12,'change_cursos'),(47,'Can delete cursos',12,'delete_cursos'),(48,'Can view cursos',12,'view_cursos'),(49,'Can add salon',13,'add_salon'),(50,'Can change salon',13,'change_salon'),(51,'Can delete salon',13,'delete_salon'),(52,'Can view salon',13,'view_salon'),(53,'Can add preguntas examen',14,'add_preguntasexamen'),(54,'Can change preguntas examen',14,'change_preguntasexamen'),(55,'Can delete preguntas examen',14,'delete_preguntasexamen'),(56,'Can view preguntas examen',14,'view_preguntasexamen'),(57,'Can add alternativas examen',15,'add_alternativasexamen'),(58,'Can change alternativas examen',15,'change_alternativasexamen'),(59,'Can delete alternativas examen',15,'delete_alternativasexamen'),(60,'Can view alternativas examen',15,'view_alternativasexamen'),(61,'Can add incidencia examen',16,'add_incidenciaexamen'),(62,'Can change incidencia examen',16,'change_incidenciaexamen'),(63,'Can delete incidencia examen',16,'delete_incidenciaexamen'),(64,'Can view incidencia examen',16,'view_incidenciaexamen'),(65,'Can add perfil biometrico',17,'add_perfilbiometrico'),(66,'Can change perfil biometrico',17,'change_perfilbiometrico'),(67,'Can delete perfil biometrico',17,'delete_perfilbiometrico'),(68,'Can view perfil biometrico',17,'view_perfilbiometrico');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$1000000$FVguh9N3KzSKbyY2WViFNw$PgNUvIZ3w1MyrADml5S9PloLV29jexhgqwkQi8GgPoU=','2025-11-17 08:38:36.477896',1,'jefferson','','','jeff@gmail.com',1,1,'2025-11-14 19:23:42.795543'),(2,'pbkdf2_sha256$1000000$MkzRdJHenTyfmwsihCjPkL$AIsAMcY4Def5/VkJF03HtmdiAY/PaHnGdGWs1HMH2Dg=','2025-12-05 16:13:29.891337',0,'123','Jhordy','Perez','',0,1,'2025-11-14 19:26:03.662480'),(5,'pbkdf2_sha256$1000000$9sbcJmYHAtlJqeEOhGsfN6$5pBaBaUV9RMzDx91D9PdWj3vaSkY48/8Khrff1pOtAU=','2025-11-17 00:20:19.572777',0,'asdas','Fabiann','Ordinola','',0,1,'2025-11-14 19:30:12.012672'),(6,'pbkdf2_sha256$1000000$bTVtSdxAKEVt2ztcdtUJns$gzCkSEJ1cHzfqftB/x4I6Ol/L6cGCx9bGMLtWBqEPtU=','2025-11-14 19:40:09.133412',0,'qweqw','','','',0,1,'2025-11-14 19:40:08.729818'),(7,'pbkdf2_sha256$1000000$qLb2Tal0AQXbJTLxRSAWJ7$e6r4QHiwMoSjvqrr6du6818JSDhCBvEBTns1o5GbTlA=','2025-11-16 03:07:50.415111',0,'jeff123','','','',0,1,'2025-11-16 03:07:05.559572'),(8,'pbkdf2_sha256$1000000$EN6BQFWAzFqpAiNFSeU6KX$F9MKFxqElcUQcPIPc9kDsAukXnhn/k1x4xTTyQexYi0=','2025-11-25 07:08:41.734856',0,'profesor','Pepe','Kol','jeffersondelacruz@gmail.com',1,1,'2025-11-16 23:12:24.000000'),(9,'pbkdf2_sha256$1000000$6YuN6xsVq7WasUXw8iumVC$jo8GpFYvx63hdcRnX4U7sMy0gRm/yYobt+O6kzuh8+g=','2025-12-05 13:42:15.748573',0,'delacruz','Jefferson','De la Cruz','',0,1,'2025-11-17 00:20:50.894851'),(10,'pbkdf2_sha256$1000000$BGDcNxZ2hfvO7LFpfgXF23$OkYCpUVQL42TbOG2RmypG8qxN0msQK3LHLpzaXjrTB0=','2025-12-05 13:43:22.763063',0,'aldo','Aldo','Santos','',0,1,'2025-11-17 04:26:11.226025'),(11,'pbkdf2_sha256$1000000$EaKt1vfFHUuGd3k2BZGXyv$tPRC1qlRUPQaHRjbnfcexKIFldDQwl1goj6UvKecx68=','2025-12-05 16:36:32.330220',0,'profesor2','Jhordy','Santos','jhordysantos@gmail.com',1,1,'2025-11-17 05:07:50.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `id_cursos` int NOT NULL AUTO_INCREMENT,
  `nombre_curso` varchar(45) DEFAULT NULL,
  `id_profesor` int DEFAULT NULL,
  PRIMARY KEY (`id_cursos`),
  KEY `fk_profesor_curso` (`id_profesor`),
  CONSTRAINT `fk_profesor_curso` FOREIGN KEY (`id_profesor`) REFERENCES `auth_user` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'Matemáticas',8),(2,'Cívica',8),(3,'Calidad',8),(4,'Innovacion',11),(5,'Calidad Noche',11);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2025-11-14 19:44:01.777288','1','hola - jefferson',1,'[{\"added\": {}}]',7,1),(2,'2025-11-16 23:12:25.358692','8','profesor',1,'[{\"added\": {}}]',4,1),(3,'2025-11-16 23:13:12.481273','8','profesor',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\"]}}]',4,1),(4,'2025-11-17 05:07:50.753991','11','profesor2',1,'[{\"added\": {}}]',4,1),(5,'2025-11-17 05:08:27.037799','11','profesor2',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Last login\"]}}]',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(15,'tasks','alternativasexamen'),(12,'tasks','cursos'),(9,'tasks','estadoexamen'),(11,'tasks','examen'),(16,'tasks','incidenciaexamen'),(17,'tasks','perfilbiometrico'),(14,'tasks','preguntasexamen'),(8,'tasks','respuestasusuario'),(13,'tasks','salon'),(10,'tasks','salonalumnos'),(7,'tasks','task');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-11-14 19:22:24.061134'),(2,'auth','0001_initial','2025-11-14 19:22:24.389060'),(3,'admin','0001_initial','2025-11-14 19:22:24.466974'),(4,'admin','0002_logentry_remove_auto_add','2025-11-14 19:22:24.472451'),(5,'admin','0003_logentry_add_action_flag_choices','2025-11-14 19:22:24.477962'),(6,'contenttypes','0002_remove_content_type_name','2025-11-14 19:22:24.541112'),(7,'auth','0002_alter_permission_name_max_length','2025-11-14 19:22:24.581619'),(8,'auth','0003_alter_user_email_max_length','2025-11-14 19:22:24.596259'),(9,'auth','0004_alter_user_username_opts','2025-11-14 19:22:24.601029'),(10,'auth','0005_alter_user_last_login_null','2025-11-14 19:22:24.631451'),(11,'auth','0006_require_contenttypes_0002','2025-11-14 19:22:24.633436'),(12,'auth','0007_alter_validators_add_error_messages','2025-11-14 19:22:24.637607'),(13,'auth','0008_alter_user_username_max_length','2025-11-14 19:22:24.676468'),(14,'auth','0009_alter_user_last_name_max_length','2025-11-14 19:22:24.714051'),(15,'auth','0010_alter_group_name_max_length','2025-11-14 19:22:24.726099'),(16,'auth','0011_update_proxy_permissions','2025-11-14 19:22:24.732267'),(17,'auth','0012_alter_user_first_name_max_length','2025-11-14 19:22:24.771623'),(18,'sessions','0001_initial','2025-11-14 19:22:24.794659'),(19,'tasks','0001_initial','2025-11-14 19:22:24.837933'),(20,'tasks','0002_cursos_examen_preguntasexamen_alternativasexamen_and_more','2025-11-17 01:10:16.707222'),(21,'tasks','0003_salon_salonalumnos_salon_alumnos','2025-11-17 02:33:46.855906'),(22,'tasks','0004_alter_alternativasexamen_texto_alternativa','2025-11-17 06:09:48.655673'),(23,'tasks','0005_alter_preguntasexamen_texto_pregunta','2025-11-17 06:13:04.289991'),(24,'tasks','0006_examen_cantidad_preguntas','2025-11-17 06:30:43.097323'),(25,'tasks','0007_examen_tiempo_limite_and_more','2025-11-21 15:23:11.512363'),(26,'tasks','0008_remove_preguntasexamen_tiempo_limite_segundos_and_more','2025-11-21 16:05:42.238033'),(27,'tasks','0009_examen_modo_cronometro','2025-11-21 16:21:05.874722'),(28,'tasks','0010_remove_examen_modo_cronometro_and_more','2025-11-23 08:18:46.431628'),(29,'tasks','0011_examen_tiempo_limite_examen_tiempo_por_pregunta_and_more','2025-11-23 21:22:36.890530'),(30,'tasks','0012_remove_examen_tiempo_limite_and_more','2025-11-23 22:51:38.231367'),(31,'tasks','0013_examen_tiempo_limite','2025-11-23 23:11:18.474172'),(32,'tasks','0014_remove_examen_repartir_tiempo_general_and_more','2025-11-24 00:07:13.833984'),(33,'tasks','0015_rename_tiempo_limite_total_calculado_examen_tiempo_limite_and_more','2025-11-24 00:21:41.247840'),(34,'tasks','0016_preguntasexamen_puntaje_maximo_and_more','2025-11-25 06:11:03.237561'),(35,'tasks','0017_alter_preguntasexamen_puntaje_maximo_and_more','2025-11-25 06:22:42.260629'),(36,'tasks','0018_incidenciaexamen_perfilbiometrico','2025-12-03 21:25:06.705886');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('90vbc81g9aechzhrcl5trklhgc18xv6x','.eJxVjMsOwiAQAP9lz4bwqLD06L3fQGDZStVAUtqT8d9Nkx70OjOZN4S4byXsndewZBhBw-WXpUhProfIj1jvTVCr27okcSTitF1MLfPrdrZ_gxJ7gRGst6Q5MXpHKL2SAyk7DzNHnciQY49KGu2umJyRiNFLqykbrw1K6xR8vtNJNsU:1vK4Zj:ZqtMcq3CsKxSt-9AOpZJhXouYLGpw4p0Is5Jv4Ewtow','2025-11-29 00:55:35.090138'),('c2e5z7megxuq9ndr63ow9dg9k11cmwk0','.eJxtzs0KwyAQBOB38RyCVs1qjr33CUqRVTdN-qNUEyiUvnsJ5NBCrzMfw7yYw2Ue3VKpuCmyngnOmu_QY7hSWpt4wXTObchpLpNvV9JubW0POdJtv9mfgRHryHomhfQ2DtKgRtLccEtAJKGzXgSwoHj0USnUw9BZ4uBBCOOJhIBg9G59RU-8O-keC9V5yqm6XCIVJzjrj7qB0ybUf6F0o7rT-wOv-0-_:1vKv72:v9jJdbt71FzGd624FUD84w8ciQbSNslGbs4yIKxt44E','2025-12-01 09:01:28.101962'),('hbtmgh2lmius7wrtlxl1mozlbfl6zysd','.eJxVjDkOwjAQAP-yNbJ825uSnjdY6wsHkCPFSYX4O4qUAtqZ0bwh0L61sI-yhjnDBELA5RdGSs_SD5Mf1O8LS0vf1jmyI2GnHey25PK6nu3foNFoMIFFVY1DlFid15V0KVoo4zlFnny0tiok67ORRaOTziiUmlfORZVofITPF-RwNto:1vRYnI:jIfxyr-7f-2GKB4tMrF62TRWyKDABcUjdZ-qmR5-bFs','2025-12-19 16:36:32.333917'),('ueuitznnh2dtqlru4c322ylvl89htpyb','.eJxVjLsOwjAMAP_FM4pi0tRJR_Z-Q2UnDimgVupjQvw7qtQB1rvTvWHgfavDvuoyjBk6QAuXXyicnjodJj94us8mzdO2jGKOxJx2Nf2c9XU7279B5bVCBw6dxFxcYM_qbbBRSdVRGwUTRWpsltw07Etpo1oSQgyiikgp-KuFzxcFSzff:1vRW5h:v-g0UndTm-lBYhwx7rQeSXK1PL3uPY7eO6q5h_n_eaM','2025-12-19 13:43:21.379283'),('y67ol2fi26gkft8417rlcz0bnh72e2mo','.eJxVjMsOwiAQAP9lz4bwqLD06L3fQGDZStVAUtqT8d9Nkx70OjOZN4S4byXsndewZBhBw-WXpUhProfIj1jvTVCr27okcSTitF1MLfPrdrZ_gxJ7gRGst6Q5MXpHKL2SAyk7DzNHnciQY49KGu2umJyRiNFLqykbrw1K6xR8vtNJNsU:1vKfWQ:b3yR1zsSl8XH31qr1aG5QujAVM8bJ5KuHf34fb_86f0','2025-11-30 16:22:38.494427'),('yfauhvpxy2vjyreighxr8xblv9y4oh38','.eJxVjMsOwiAQAP9lz4bwqLD06L3fQGDZStVAUtqT8d9Nkx70OjOZN4S4byXsndewZBhBw-WXpUhProfIj1jvTVCr27okcSTitF1MLfPrdrZ_gxJ7gRGst6Q5MXpHKL2SAyk7DzNHnciQY49KGu2umJyRiNFLqykbrw1K6xR8vtNJNsU:1vK8yW:yP6Mnqb1pJMDca-GiMnivAxVc9EPXs2yMYuwo3Oi3B0','2025-11-29 05:37:28.434363');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_examen`
--

DROP TABLE IF EXISTS `estado_examen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado_examen` (
  `id_estado_examen` int NOT NULL AUTO_INCREMENT,
  `id_examen` int DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  `estado` char(1) DEFAULT 'A',
  `nota` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`id_estado_examen`),
  KEY `id_exa_idx` (`id_examen`),
  KEY `id_user_idx` (`id_user`),
  CONSTRAINT `id_exa` FOREIGN KEY (`id_examen`) REFERENCES `examen` (`id_examen`),
  CONSTRAINT `id_user` FOREIGN KEY (`id_user`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_examen`
--

LOCK TABLES `estado_examen` WRITE;
/*!40000 ALTER TABLE `estado_examen` DISABLE KEYS */;
INSERT INTO `estado_examen` VALUES (2,2,2,'F',10.00),(3,3,2,'F',20.00),(4,4,2,'D',NULL),(5,3,7,'A',NULL),(6,4,1,'D',NULL),(7,2,1,'D',NULL),(8,1,5,'A',NULL),(9,2,5,'A',NULL),(10,4,7,'A',NULL),(11,1,7,'A',NULL),(12,1,6,'A',NULL),(14,6,9,'D',NULL),(15,6,2,'A',NULL),(16,6,5,'A',NULL),(18,1,2,'A',NULL),(19,9,9,'D',0.00),(22,9,10,'F',0.00),(23,1,10,'F',13.33),(24,10,10,'F',0.00),(25,10,2,'F',0.00),(26,3,10,'F',10.00),(27,4,10,'D',0.00),(28,11,2,'F',NULL),(29,11,10,'F',0.00),(30,11,9,'D',NULL),(31,10,9,'D',0.00),(32,12,9,'D',0.00),(33,12,10,'D',0.00),(34,13,10,'F',0.00),(35,14,10,'D',0.00),(36,16,10,'F',10.00),(37,17,10,'A',15.00),(38,17,11,'A',NULL),(39,17,9,'A',NULL),(40,17,2,'A',NULL),(42,18,2,'F',2.46),(43,18,5,'A',NULL),(44,18,9,'A',NULL),(45,18,7,'A',NULL),(46,18,6,'A',NULL),(47,18,10,'A',NULL),(48,19,2,'F',10.00);
/*!40000 ALTER TABLE `estado_examen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examen`
--

DROP TABLE IF EXISTS `examen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examen` (
  `id_examen` int NOT NULL AUTO_INCREMENT,
  `id_curso` int DEFAULT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  `is_visible` tinyint(1) NOT NULL DEFAULT '1',
  `cantidad_preguntas` int NOT NULL,
  `modo_tiempo` varchar(20) NOT NULL,
  `tiempo_base_minutos` int NOT NULL,
  `tiempo_limite` int NOT NULL,
  PRIMARY KEY (`id_examen`),
  KEY `id_curso_idx` (`id_curso`),
  CONSTRAINT `id_curso` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_cursos`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examen`
--

LOCK TABLES `examen` WRITE;
/*!40000 ALTER TABLE `examen` DISABLE KEYS */;
INSERT INTO `examen` VALUES (1,1,'Examen de conocimiento',1,2,'LIBRE',0,0),(2,1,'Examen Parcial',1,2,'LIBRE',0,0),(3,2,'Examen Final',1,2,'LIBRE',0,0),(4,2,'Examen personal',1,2,'LIBRE',0,0),(6,1,'prueba2',0,2,'LIBRE',0,0),(9,3,'Examen_Viernes',1,2,'LIBRE',0,0),(10,4,'Examen de Prueba',1,2,'POR_PREGUNTA',2,4),(11,4,'Prueba 3',1,2,'POR_PREGUNTA',1,2),(12,4,'Prueba 4',1,4,'POR_PREGUNTA',2,8),(13,4,'Prueba 5',1,3,'POR_PREGUNTA',2,6),(14,4,'Prueba 6',1,3,'REPARTIDO',1,1),(15,4,'Prueba 7',1,3,'REPARTIDO',3,3),(16,4,'Prueba 8',1,3,'REPARTIDO',1,1),(17,4,'Prueba 9',1,3,'POR_PREGUNTA',1,3),(18,5,'Examen Final',1,20,'POR_PREGUNTA',1,20),(19,5,'Prueba 3',1,2,'POR_PREGUNTA',1,2);
/*!40000 ALTER TABLE `examen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incidencias_examen`
--

DROP TABLE IF EXISTS `incidencias_examen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incidencias_examen` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tipo` varchar(20) NOT NULL,
  `minuto_ocurrencia` varchar(10) NOT NULL,
  `evidencia` varchar(100) DEFAULT NULL,
  `fecha` datetime(6) NOT NULL,
  `alumno_id` int NOT NULL,
  `examen_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `incidencias_examen_alumno_id_f908efa4_fk_auth_user_id` (`alumno_id`),
  KEY `incidencias_examen_examen_id_e7039e66_fk_examen_id_examen` (`examen_id`),
  CONSTRAINT `incidencias_examen_alumno_id_f908efa4_fk_auth_user_id` FOREIGN KEY (`alumno_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `incidencias_examen_examen_id_e7039e66_fk_examen_id_examen` FOREIGN KEY (`examen_id`) REFERENCES `examen` (`id_examen`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incidencias_examen`
--

LOCK TABLES `incidencias_examen` WRITE;
/*!40000 ALTER TABLE `incidencias_examen` DISABLE KEYS */;
INSERT INTO `incidencias_examen` VALUES (1,'AUSENCIA','En vivo','biometria/incidentes/AUSENCIA_10.jpeg','2025-12-04 04:51:36.091844',10,17),(2,'AUSENCIA','En vivo','biometria/incidentes/AUSENCIA_10_wvBtJ0g.jpeg','2025-12-04 04:52:00.048497',10,17),(3,'AUSENCIA','En vivo','biometria/incidentes/AUSENCIA_10_GBraFCo.jpeg','2025-12-04 04:52:03.144196',10,17),(4,'AUSENCIA','En vivo','biometria/incidentes/AUSENCIA_10_7wYbNjt.jpeg','2025-12-04 04:52:47.517773',10,17),(5,'AUSENCIA','En vivo','biometria/incidentes/AUSENCIA_10_t7B4ha8.jpeg','2025-12-04 04:52:49.973000',10,17),(6,'AUSENCIA','En vivo','biometria/incidentes/AUSENCIA_10.jpeg','2025-12-04 08:07:53.014906',10,17),(7,'AUSENCIA','En vivo','biometria/incidentes/AUSENCIA_10_gwG7Luj.jpeg','2025-12-04 08:08:00.017903',10,17),(8,'AUSENCIA','En vivo','biometria/incidentes/AUSENCIA_10_kFsjINR.jpeg','2025-12-04 08:08:20.012303',10,17),(9,'AUSENCIA','En vivo','biometria/incidentes/AUSENCIA_10_qgtCQlb.jpeg','2025-12-04 08:08:26.010692',10,17),(10,'AUSENCIA','En vivo','biometria/incidentes/AUSENCIA_10_CT9UGZA.jpeg','2025-12-04 08:08:32.069576',10,17),(11,'AUSENCIA','En vivo','biometria/incidentes/AUSENCIA_10_ZQovDVX.jpeg','2025-12-04 08:43:18.375747',10,17),(12,'AUSENCIA','En vivo','biometria/incidentes/AUSENCIA_10_5Hxk9Hc.jpeg','2025-12-04 16:13:27.681791',10,17),(13,'AUSENCIA','En vivo','biometria/incidentes/AUSENCIA_10_NArkI2H.jpeg','2025-12-04 16:13:34.679906',10,17),(14,'AUSENCIA','En vivo','biometria/incidentes/AUSENCIA_10_97EEn24.jpeg','2025-12-04 16:13:41.673032',10,17),(15,'AUSENCIA','En vivo','biometria/incidentes/AUSENCIA_10_jcvmMVX.jpeg','2025-12-04 16:13:42.690821',10,17),(16,'AUSENCIA','En vivo','biometria/incidentes/AUSENCIA_10_JYaMQla.jpeg','2025-12-04 16:13:50.678316',10,17),(17,'AUSENCIA','En vivo','biometria/incidentes/AUSENCIA_10.jpeg','2025-12-05 08:19:59.392904',10,17),(18,'AUSENCIA','En vivo','biometria/incidentes/AUSENCIA_10_nnhSvdY.jpeg','2025-12-05 08:20:00.417740',10,17),(19,'AUSENCIA','En vivo','biometria/incidentes/AUSENCIA_10_VRxvaew.jpeg','2025-12-05 08:20:03.380668',10,17),(20,'AUSENCIA','En vivo','biometria/incidentes/AUSENCIA_10_hBc05y7.jpeg','2025-12-05 08:20:04.392409',10,17),(21,'AUSENCIA','En vivo','biometria/incidentes/AUSENCIA_10_XwKXi9L.jpeg','2025-12-05 08:20:07.499416',10,17),(22,'AUSENCIA','En vivo','biometria/incidentes/AUSENCIA_10_fSsnfVU.jpeg','2025-12-05 08:21:21.150460',10,17),(23,'AUSENCIA','En vivo','biometria/incidentes/AUSENCIA_10_7Uqmu8j.jpeg','2025-12-05 08:21:26.162176',10,17),(24,'AUSENCIA','En vivo','biometria/incidentes/AUSENCIA_10_5uGI8Vn.jpeg','2025-12-05 08:22:04.423166',10,17),(25,'MULTIPLE','En vivo','biometria/incidentes/MULTIPLE_10.jpeg','2025-12-05 13:41:18.214946',10,17),(26,'MULTIPLE','En vivo','biometria/incidentes/MULTIPLE_10_qqELVj3.jpeg','2025-12-05 13:41:18.633300',10,17),(27,'MULTIPLE','En vivo','biometria/incidentes/MULTIPLE_10_BNeVTcQ.jpeg','2025-12-05 13:41:19.651088',10,17),(28,'MULTIPLE','En vivo','biometria/incidentes/MULTIPLE_10_pRcceB7.jpeg','2025-12-05 13:41:20.645914',10,17),(29,'MULTIPLE','En vivo','biometria/incidentes/MULTIPLE_10_qw3eSJH.jpeg','2025-12-05 13:41:21.758701',10,17),(30,'MULTIPLE','En vivo','biometria/incidentes/MULTIPLE_10_gG73yc9.jpeg','2025-12-05 13:41:23.213510',10,17),(31,'AUSENCIA','En vivo','biometria/incidentes/AUSENCIA_2.jpeg','2025-12-05 13:48:46.160105',2,17),(32,'AUSENCIA','En vivo','biometria/incidentes/AUSENCIA_2_7FxnkHG.jpeg','2025-12-05 13:48:59.165588',2,17),(33,'AUSENCIA','En vivo','biometria/incidentes/AUSENCIA_2_FunIUnd.jpeg','2025-12-05 13:49:05.187398',2,17),(34,'AUSENCIA','En vivo','biometria/incidentes/AUSENCIA_2_i9iAzpb.jpeg','2025-12-05 13:49:08.160784',2,17),(35,'AUSENCIA','En vivo','biometria/incidentes/AUSENCIA_2_8TYGMsm.jpeg','2025-12-05 13:49:09.271712',2,17),(36,'AUSENCIA','En vivo','biometria/incidentes/AUSENCIA_2.jpeg','2025-12-05 18:51:46.210235',2,19);
/*!40000 ALTER TABLE `incidencias_examen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preguntas_examen`
--

DROP TABLE IF EXISTS `preguntas_examen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preguntas_examen` (
  `id_preguntas_examen` int NOT NULL AUTO_INCREMENT,
  `id_examen` int DEFAULT NULL,
  `texto_pregunta` longtext NOT NULL,
  `puntaje_maximo` decimal(5,2) NOT NULL,
  `tipo_pregunta` varchar(1) NOT NULL,
  PRIMARY KEY (`id_preguntas_examen`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preguntas_examen`
--

LOCK TABLES `preguntas_examen` WRITE;
/*!40000 ALTER TABLE `preguntas_examen` DISABLE KEYS */;
INSERT INTO `preguntas_examen` VALUES (1,1,'¿1+0?',1.00,'M'),(2,1,'¿1+2?',1.00,'M'),(3,2,'¿Presidente del Perú?',1.00,'M'),(4,2,'¿Presidente de Bolivia?',1.00,'M'),(5,3,'¿Cuánto vale pi?',1.00,'M'),(6,3,'¿Que día es hoy?',1.00,'M'),(7,3,'¿Mamá en inglés?',1.00,'M'),(8,4,'¿Papá en inglés?',1.00,'M'),(10,1,'¿1+5?',1.00,'M'),(11,9,'Dime el significado de la ISO 25001',1.00,'M'),(12,10,'¿Qué es la innovación?',1.00,'M'),(25,10,'¿Qué es la Calidad de Software?',1.00,'M'),(26,10,'¿Qué estándar internacional define las características de calidad del software?',1.00,'M'),(27,10,'¿Cuál es la diferencia principal entre QA y QC?',1.00,'M'),(28,10,'¿Qué es una prueba unitaria?',1.00,'M'),(29,10,'¿Qué característica de calidad mide la facilidad de uso?',1.00,'M'),(30,10,'¿Qué es la validación en el contexto de software?',1.00,'M'),(31,10,'¿Qué es una prueba de caja negra?',1.00,'M'),(32,10,'¿Qué tipo de mantenimiento implica corregir errores?',1.00,'M'),(33,10,'¿Qué es la deuda técnica?',1.00,'M'),(34,10,'¿Qué es una prueba de regresión?',1.00,'M'),(35,10,'¿Cuál es una característica de seguridad (CIA)?',1.00,'M'),(36,10,'¿Qué son los requisitos no funcionales?',1.00,'M'),(37,10,'¿Qué mide la fiabilidad (reliability)?',1.00,'M'),(38,10,'¿Qué es una prueba de integración?',1.00,'M'),(39,10,'¿Qué es un \"falso positivo\" en pruebas?',1.00,'M'),(40,10,'¿Qué significa la portabilidad?',1.00,'M'),(41,10,'¿Cuál es el objetivo de las pruebas de estrés?',1.00,'M'),(42,10,'¿Qué es el análisis estático de código?',1.00,'M'),(43,10,'¿Cuál NO es una característica de ISO 25010?',1.00,'M'),(44,10,'¿Qué es un \"bug\"?',1.00,'M'),(45,4,'asdasd',1.00,'M'),(46,4,'xzcsdfds',1.00,'M'),(47,11,'¿Qué es la Calidad de Software?',1.00,'M'),(48,11,'¿Qué estándar internacional define las características de calidad del software?',1.00,'M'),(49,11,'¿Cuál es la diferencia principal entre QA y QC?',1.00,'M'),(50,11,'¿Qué es una prueba unitaria?',1.00,'M'),(51,11,'¿Qué característica de calidad mide la facilidad de uso?',1.00,'M'),(52,11,'¿Qué es la validación en el contexto de software?',1.00,'M'),(53,11,'¿Qué es una prueba de caja negra?',1.00,'M'),(54,11,'¿Qué tipo de mantenimiento implica corregir errores?',1.00,'M'),(55,11,'¿Qué es la deuda técnica?',1.00,'M'),(56,11,'¿Qué es una prueba de regresión?',1.00,'M'),(57,11,'¿Cuál es una característica de seguridad (CIA)?',1.00,'M'),(58,11,'¿Qué son los requisitos no funcionales?',1.00,'M'),(59,11,'¿Qué mide la fiabilidad (reliability)?',1.00,'M'),(60,11,'¿Qué es una prueba de integración?',1.00,'M'),(61,11,'¿Qué es un \"falso positivo\" en pruebas?',1.00,'M'),(62,11,'¿Qué significa la portabilidad?',1.00,'M'),(63,11,'¿Cuál es el objetivo de las pruebas de estrés?',1.00,'M'),(64,11,'¿Qué es el análisis estático de código?',1.00,'M'),(65,11,'¿Cuál NO es una característica de ISO 25010?',1.00,'M'),(66,11,'¿Qué es un \"bug\"?',1.00,'M'),(67,12,'¿Qué es la Calidad de Software?',1.00,'M'),(68,12,'¿Qué estándar internacional define las características de calidad del software?',1.00,'M'),(69,12,'¿Cuál es la diferencia principal entre QA y QC?',1.00,'M'),(70,12,'¿Qué es una prueba unitaria?',1.00,'M'),(71,12,'¿Qué característica de calidad mide la facilidad de uso?',1.00,'M'),(72,12,'¿Qué es la validación en el contexto de software?',1.00,'M'),(73,12,'¿Qué es una prueba de caja negra?',1.00,'M'),(74,12,'¿Qué tipo de mantenimiento implica corregir errores?',1.00,'M'),(75,12,'¿Qué es la deuda técnica?',1.00,'M'),(76,12,'¿Qué es una prueba de regresión?',1.00,'M'),(77,12,'¿Cuál es una característica de seguridad (CIA)?',1.00,'M'),(78,12,'¿Qué son los requisitos no funcionales?',1.00,'M'),(79,12,'¿Qué mide la fiabilidad (reliability)?',1.00,'M'),(80,12,'¿Qué es una prueba de integración?',1.00,'M'),(81,12,'¿Qué es un \"falso positivo\" en pruebas?',1.00,'M'),(82,12,'¿Qué significa la portabilidad?',1.00,'M'),(83,12,'¿Cuál es el objetivo de las pruebas de estrés?',1.00,'M'),(84,12,'¿Qué es el análisis estático de código?',1.00,'M'),(85,12,'¿Cuál NO es una característica de ISO 25010?',1.00,'M'),(86,12,'¿Qué es un \"bug\"?',1.00,'M'),(87,13,'¿Qué es la Calidad de Software?',1.00,'M'),(88,13,'¿Qué estándar internacional define las características de calidad del software?',1.00,'M'),(89,13,'¿Cuál es la diferencia principal entre QA y QC?',1.00,'M'),(90,13,'¿Qué es una prueba unitaria?',1.00,'M'),(91,13,'¿Qué característica de calidad mide la facilidad de uso?',1.00,'M'),(92,13,'¿Qué es la validación en el contexto de software?',1.00,'M'),(93,13,'¿Qué es una prueba de caja negra?',1.00,'M'),(94,13,'¿Qué tipo de mantenimiento implica corregir errores?',1.00,'M'),(95,13,'¿Qué es la deuda técnica?',1.00,'M'),(96,13,'¿Qué es una prueba de regresión?',1.00,'M'),(97,13,'¿Cuál es una característica de seguridad (CIA)?',1.00,'M'),(98,13,'¿Qué son los requisitos no funcionales?',1.00,'M'),(99,13,'¿Qué mide la fiabilidad (reliability)?',1.00,'M'),(100,13,'¿Qué es una prueba de integración?',1.00,'M'),(101,13,'¿Qué es un \"falso positivo\" en pruebas?',1.00,'M'),(102,13,'¿Qué significa la portabilidad?',1.00,'M'),(103,13,'¿Cuál es el objetivo de las pruebas de estrés?',1.00,'M'),(104,13,'¿Qué es el análisis estático de código?',1.00,'M'),(105,13,'¿Cuál NO es una característica de ISO 25010?',1.00,'M'),(106,13,'¿Qué es un \"bug\"?',1.00,'M'),(107,14,'¿Qué es la Calidad de Software?',1.00,'M'),(108,14,'¿Qué estándar internacional define las características de calidad del software?',1.00,'M'),(109,14,'¿Cuál es la diferencia principal entre QA y QC?',1.00,'M'),(110,14,'¿Qué es una prueba unitaria?',1.00,'M'),(111,14,'¿Qué característica de calidad mide la facilidad de uso?',1.00,'M'),(112,14,'¿Qué es la validación en el contexto de software?',1.00,'M'),(113,14,'¿Qué es una prueba de caja negra?',1.00,'M'),(114,14,'¿Qué tipo de mantenimiento implica corregir errores?',1.00,'M'),(115,14,'¿Qué es la deuda técnica?',1.00,'M'),(116,14,'¿Qué es una prueba de regresión?',1.00,'M'),(117,14,'¿Cuál es una característica de seguridad (CIA)?',1.00,'M'),(118,14,'¿Qué son los requisitos no funcionales?',1.00,'M'),(119,14,'¿Qué mide la fiabilidad (reliability)?',1.00,'M'),(120,14,'¿Qué es una prueba de integración?',1.00,'M'),(121,14,'¿Qué es un \"falso positivo\" en pruebas?',1.00,'M'),(122,14,'¿Qué significa la portabilidad?',1.00,'M'),(123,14,'¿Cuál es el objetivo de las pruebas de estrés?',1.00,'M'),(124,14,'¿Qué es el análisis estático de código?',1.00,'M'),(125,14,'¿Cuál NO es una característica de ISO 25010?',1.00,'M'),(126,14,'¿Qué es un \"bug\"?',1.00,'M'),(127,15,'¿Qué es la Calidad de Software?',1.00,'M'),(128,15,'¿Qué estándar internacional define las características de calidad del software?',1.00,'M'),(129,15,'¿Cuál es la diferencia principal entre QA y QC?',1.00,'M'),(130,15,'¿Qué es una prueba unitaria?',1.00,'M'),(131,15,'¿Qué característica de calidad mide la facilidad de uso?',1.00,'M'),(132,15,'¿Qué es la validación en el contexto de software?',1.00,'M'),(133,15,'¿Qué es una prueba de caja negra?',1.00,'M'),(134,15,'¿Qué tipo de mantenimiento implica corregir errores?',1.00,'M'),(135,15,'¿Qué es la deuda técnica?',1.00,'M'),(136,15,'¿Qué es una prueba de regresión?',1.00,'M'),(137,15,'¿Cuál es una característica de seguridad (CIA)?',1.00,'M'),(138,15,'¿Qué son los requisitos no funcionales?',1.00,'M'),(139,15,'¿Qué mide la fiabilidad (reliability)?',1.00,'M'),(140,15,'¿Qué es una prueba de integración?',1.00,'M'),(141,15,'¿Qué es un \"falso positivo\" en pruebas?',1.00,'M'),(142,15,'¿Qué significa la portabilidad?',1.00,'M'),(143,15,'¿Cuál es el objetivo de las pruebas de estrés?',1.00,'M'),(144,15,'¿Qué es el análisis estático de código?',1.00,'M'),(145,15,'¿Cuál NO es una característica de ISO 25010?',1.00,'M'),(146,15,'¿Qué es un \"bug\"?',1.00,'M'),(147,15,'escribe tu nombre',10.00,'A'),(148,16,'escribe tu nombre',10.00,'A'),(149,16,'que dia es',5.00,'M'),(150,16,'qweqwe',5.00,'M'),(152,17,'que hora es',5.00,'M'),(153,17,'que dias es',5.00,'M'),(154,17,'tu nombre',10.00,'A'),(155,18,'Caso (Therac-25): El trágico caso de la Therac-25 puso de manifiesto que la reutilización de código de modelos anteriores sin un análisis de seguridad exhaustivo ni una revisión completa de la concurrencia puede introducir peligrosas _______________________ en sistemas de misión crítica.',1.00,'A'),(156,18,'Caso (Therac-25): En una nueva máquina de radioterapia que utiliza software para controlar la dosis, se detecta un fallo intermitente donde la dosis es incorrecta después de que el operador introduce y corrige rápidamente un valor. Describa brevemente cómo el caso Therac-25 podría informar las medidas de seguridad y gestión de concurrencia que el equipo de desarrollo debe implementar para prevenir este fallo.',1.00,'A'),(157,18,'Prosa (CMMI): Un director de proyecto quiere justificar la inversión en CMMI. Explique en qué se diferencia el Nivel de Madurez 3 (Definido) del Nivel 2 (Gestionado) en términos de estandarización y aplicación de procesos en la organización.',1.00,'A'),(158,18,'Prosa (Calidad de Software): Defina el concepto de \"calidad de conformidad\" en el contexto del desarrollo de software y cómo un fallo en esta área puede llevar a un problema de calidad general.',1.00,'A'),(159,18,'Caso (ISO 15000): Una empresa de fabricación utiliza ISO 15000 para estandarizar su intercambio de datos con proveedores (EDI). ¿Cómo podría la falta de interoperabilidad en el software de un proveedor afectar la calidad y eficiencia del proceso de la empresa, y qué principio de la calidad del software se vería comprometido?',1.00,'A'),(160,18,'CMMI & SQ: El Nivel 4 de CMMI se enfoca en la gestión cuantitativa de procesos y productos. Proporcione un ejemplo de una métrica de calidad de software que una organización en este nivel podría utilizar para gestionar proactivamente sus procesos, y explique su propósito.',1.00,'A'),(161,18,'Prosa (Calidad y Therac-25): Si la Therac-25 fuera evaluada hoy utilizando el modelo de calidad de producto ISO/IEC 25010, ¿bajo qué dos características de calidad principales se clasificarían sus fallos más graves?',1.00,'A'),(162,18,'Relacional (Therac-25 & ISO 25000): Caso de Uso: Una compañía de tecnología médica está diseñando un nuevo sistema y, para evitar un error similar al Therac-25, el equipo decide invertir en pruebas de concurrencia exhaustivas. Relacione el fallo de condición de carrera de la Therac-25 con la subcaracterística de Madurez de la Fiabilidad de ISO 25010.',1.00,'A'),(163,18,'Relacional (CMMI & ISO 25000): Prosa: Una organización acaba de alcanzar el Nivel 3 (Definido) de CMMI. Relacione esta madurez de procesos con la capacidad de la organización para implementar de manera efectiva los requisitos de la Mantenibilidad del software, según ISO 25010.',1.00,'A'),(164,18,'Relacional (Calidad de Software & CMMI): Prosa: Relacione el concepto de mejora continua con el Nivel 5 (Optimización) de CMMI y explique cómo este nivel soporta la proactividad en la gestión de procesos.',1.00,'A'),(165,18,'Relacional (ISO 25000): Prosa: Relacione la característica de calidad Usabilidad de ISO 25010 con el concepto de Calidad de Diseño. ¿En qué escenario estas características podrían estar en conflicto?',1.00,'A'),(166,18,'Relacional (ISO 25000 & Calidad General): Prosa: Relacione el concepto general de Calidad de Producto de Software con el rol específico de la familia de normas ISO 25000 (SQuaRE).',1.00,'A'),(167,18,'Relacional (Therac-25 & Calidad de Software): Prosa: El principio de simplicidad y transparencia en el diseño de software se viola cuando el código es difícil de entender o demasiado complejo. Relacione este principio con el fallo de la Therac-25 y la falta de pruebas de regresión.',1.00,'A'),(168,18,'Relacional (ISO 15000 & Calidad): Caso: Una entidad financiera debe asegurar que sus transacciones de intercambio electrónico de datos (EDI), regidas por ISO 15000, cumplan con los estándares internos de la industria. Establezca una relación entre el concepto de Calidad de Conformidad y la adopción de la norma ISO 15000.',1.00,'A'),(169,18,'Relacional (ISO 25000): Prosa: Relacione la característica de calidad Usabilidad de ISO 25010 con el concepto de Calidad de Diseño. ¿En qué escenario estas características podrían estar en conflicto?',1.00,'A'),(170,18,'\"Una organización que ha alcanzado el Nivel 2 (Gestionado) de CMMI significa que sus procesos están estandarizados...\"',1.00,'M'),(171,18,'\"La característica de calidad de producto Usabilidad dentro de ISO/IEC 25010 se enfoca exclusivamente en eficacia\"',1.00,'M'),(172,18,'\"El costo de corregir un defecto es más bajo si se identifica en codificación que en requerimientos.\"',1.00,'M'),(173,18,'\"Una empresa que usa ISO 15000 para EDI garantiza automáticamente cumplimiento de ISO 25010.\"',1.00,'M'),(174,18,'\"El Nivel 5 de CMMI se distingue por técnicas cuantitativas para mejorar procesos.\"',1.00,'M'),(175,18,'\"El fallo del Therac-25 es un ejemplo de problema con Fault Tolerance de ISO 25010.\"',1.00,'M'),(176,18,'\"ISO/IEC 25000 reemplaza completamente ISO 9126.\"',1.00,'M'),(177,18,'Prosa (CMMI): En CMMI, el proceso de asegurar que los productos de trabajo satisfagan sus especificaciones y requisitos antes de la entrega es el Área de Proceso de _______________________.',1.00,'A'),(178,18,'Si el equipo desarrollador de la Therac-25 hubiera implementado el Área de Proceso de Gestión de Requerimientos (REQM) de CMMI en el Nivel 2, una falla en la documentación o la comprensión de la interacción usuario-sistema habría sido identificada como una posible _______________________.',1.00,'A'),(179,18,'I): Para que una organización ascienda del Nivel 3 (Definido) al Nivel 4 (Gestionado Cuantitativamente) de CMMI, debe establecer objetivos de calidad y desempeño de procesos que puedan medirse y controlarse utilizando',1.00,'A'),(180,18,'Prosa (ISO 25000): Según el modelo de calidad de producto ISO/IEC 25010, la característica que se relaciona con la capacidad del producto de funcionar en entornos de hardware y software diferentes se denomina',1.00,'A'),(181,18,'Prosa (Calidad de Software): El concepto de calidad del software no es solo la ausencia de defectos, sino también el grado en que el software satisface las _______________________ del usuario final.',1.00,'A'),(182,18,'Caso (ISO 15000): Una cadena de suministro global debe asegurar un intercambio de información comercial fluido, preciso y consistente con todos sus proveedores. La adopción de la familia de normas ISO 15000 (Intercambio Electrónico de Datos o EDI) ayuda a estandarizar los _______________________ utilizados para esta comunicación.',1.00,'A'),(183,18,'Prosa (ISO 25000): La característica de calidad que se relaciona con el esfuerzo necesario para modificar, probar o diagnosticar fallos en el software, según ISO/IEC 25010, es la _______________________.',1.00,'A'),(184,18,'Prosa (CMMI): En CMMI, el proceso de asegurar que los productos de trabajo satisfagan sus especificaciones y requisitos antes de la entrega es el Área de Proceso de _______________________.',1.00,'A'),(186,19,'¿Qué es la Calidad?',1.00,'M'),(187,19,'Describa el ciclo SDLC',4.00,'A'),(188,19,'¿Qué es QA?',1.00,'M'),(189,19,'Explique qué es un Bug',3.00,'A'),(190,19,'Prosa (CMMI): Una organización que ha alcanzado el Nivel 2 (Gestionado) de CMMI significa que sus procesos están estandarizados a nivel organizacional.',1.00,'M'),(191,19,'Prosa (ISO 25000): La característica de calidad de producto \'Usabilidad\' dentro de ISO/IEC 25010 se enfoca exclusivamente en la capacidad de los usuarios finales para lograr sus objetivos con precisión y exhaustividad (Eficacia).',1.00,'M'),(192,19,'Prosa (Calidad de Software): El costo de corregir un defecto en el software es típicamente más bajo si se identifica en la etapa de codificación que si se detecta en la etapa de requerimientos.',1.00,'M'),(193,19,'Caso (ISO 15000): Una empresa de comercio electrónico que utiliza ISO 15000 para estandarizar el EDI garantiza automáticamente que el software cumple con Fiabilidad y Seguridad de ISO 25010.',1.00,'M'),(194,19,'Prosa (CMMI & Calidad): El Nivel 5 de CMMI (Optimización) se distingue por el uso de técnicas cuantitativas y estadísticas para gestionar y mejorar continuamente el rendimiento de los procesos.',1.00,'M'),(195,19,'Caso (Therac-25 & ISO 25000): El fallo de la Therac-25 es un ejemplo clásico de un problema con la subcaracterística de Capacidad de Recuperación (Fault Tolerance) de la Fiabilidad de ISO 25010.',1.00,'M'),(196,19,'Prosa (ISO 25000): La familia de normas ISO/IEC 25000 (SQuaRE) ha sido desarrollada para reemplazar y ampliar completamente los conceptos de calidad definidos en la antigua norma ISO 9126.',1.00,'M'),(197,19,'Caso (Therac-25): El trágico caso de la Therac-25 puso de manifiesto que la reutilización de código de modelos anteriores sin un análisis de seguridad exhaustivo puede introducir peligrosas _______________________ en sistemas de misión crítica.',1.00,'A'),(198,19,'Prosa (CMMI): Para que una organización ascienda del Nivel 3 al Nivel 4 de CMMI, debe establecer objetivos de calidad que puedan medirse y controlarse utilizando _______________________.',1.00,'A'),(199,19,'Prosa (ISO 25000): Según el modelo ISO/IEC 25010, la característica que se relaciona con la capacidad del producto de funcionar en entornos de hardware y software diferentes se denomina _______________________.',1.00,'A'),(200,19,'Prosa (Calidad de Software): El concepto de calidad del software no es solo la ausencia de defectos, sino también el grado en que el software satisface las _______________________ del usuario final.',1.00,'A'),(201,19,'Caso (ISO 15000): La adopción de la familia de normas ISO 15000 (EDI) ayuda a estandarizar los _______________________ utilizados para la comunicación en una cadena de suministro.',1.00,'A'),(202,19,'Therac-25 & CMMI: Si el equipo de la Therac-25 hubiera implementado la Gestión de Requerimientos (REQM), una falla en la documentación habría sido identificada como una posible _______________________.',1.00,'A'),(203,19,'Prosa (ISO 25000): La característica de calidad que se relaciona con el esfuerzo necesario para modificar, probar o diagnosticar fallos en el software, según ISO/IEC 25010, es la _______________________.',1.00,'A'),(204,19,'Prosa (CMMI): En CMMI, el proceso de asegurar que los productos de trabajo satisfagan sus especificaciones y requisitos antes de la entrega es el Área de Proceso de _______________________.',1.00,'A'),(205,19,'Caso (Therac-25): Describa brevemente cómo el caso Therac-25 podría informar las medidas de seguridad y gestión de concurrencia que el equipo de desarrollo debe implementar para prevenir este fallo.',1.00,'A'),(206,19,'Prosa (CMMI): Explique en qué se diferencia el Nivel de Madurez 3 (Definido) del Nivel 2 (Gestionado) en términos de estandarización y aplicación de procesos en la organización.',1.00,'A'),(207,19,'Prosa (ISO 25000): ¿Cuáles tres características del modelo de calidad ISO/IEC 25010 considera usted que son las más críticas para un sistema bancario y por qué?',1.00,'A'),(208,19,'Prosa (Calidad de Software): Defina el concepto de \"calidad de conformidad\" en el contexto del desarrollo de software y cómo un fallo en esta área puede llevar a un problema de calidad general.',1.00,'A'),(209,19,'Caso (ISO 15000): ¿Cómo podría la falta de interoperabilidad en el software de un proveedor afectar la calidad y eficiencia del proceso de la empresa, y qué principio de la calidad del software se vería comprometido?',1.00,'A'),(210,19,'CMMI & SQ: Proporcione un ejemplo de una métrica de calidad de software que una organización en Nivel 4 podría utilizar para gestionar proactivamente sus procesos, y explique su propósito.',1.00,'A'),(211,19,'Prosa (Calidad y Therac-25): Si la Therac-25 fuera evaluada hoy utilizando ISO/IEC 25010, ¿bajo qué dos características de calidad principales se clasificarían sus fallos más graves?',1.00,'A'),(212,19,'Relacional (Therac-25 & ISO 25000): Relacione el fallo de condición de carrera de la Therac-25 con la subcaracterística de Madurez de la Fiabilidad de ISO 25010.',1.00,'A'),(213,19,'Relacional (CMMI & ISO 25000): Relacione la madurez de procesos (Nivel 3) con la capacidad de la organización para implementar de manera efectiva los requisitos de la Mantenibilidad del software.',1.00,'A'),(214,19,'Relacional (Calidad de Software & CMMI): Relacione el concepto de mejora continua con el Nivel 5 (Optimización) de CMMI y explique cómo este nivel soporta la proactividad en la gestión de procesos.',1.00,'A'),(215,19,'Relacional (ISO 25000): Relacione la característica de calidad Usabilidad de ISO 25010 con el concepto de Calidad de Diseño. ¿En qué escenario estas características podrían estar en conflicto?',1.00,'A'),(216,19,'Relacional (ISO 15000 & Calidad): Establezca una relación entre el concepto de Calidad de Conformidad y la adopción de la norma ISO 15000 en una entidad financiera.',1.00,'A'),(217,19,'Relacional (Therac-25 & Calidad de Software): Relacione el principio de simplicidad y transparencia con el fallo de la Therac-25 y la falta de pruebas de regresión.',1.00,'A'),(218,19,'Relacional (ISO 25000 & Calidad General): Relacione el concepto general de Calidad de Producto de Software con el rol específico de la familia de normas ISO 25000 (SQuaRE).',1.00,'A');
/*!40000 ALTER TABLE `preguntas_examen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respuestas_usuario`
--

DROP TABLE IF EXISTS `respuestas_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `respuestas_usuario` (
  `id_respuesta` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `id_examen` int NOT NULL,
  `id_preguntas_examen` int NOT NULL,
  `id_alternativas_examen` int DEFAULT NULL,
  `comentario_profesor` longtext,
  `puntaje_obtenido` decimal(5,2) NOT NULL,
  `respuesta_texto` longtext,
  PRIMARY KEY (`id_respuesta`),
  UNIQUE KEY `respuesta_unica_por_pregunta` (`id_user`,`id_examen`,`id_preguntas_examen`),
  KEY `respuestas_user_fk` (`id_user`),
  KEY `respuestas_examen_fk` (`id_examen`),
  KEY `respuestas_pregunta_fk` (`id_preguntas_examen`),
  KEY `respuestas_alternativa_fk` (`id_alternativas_examen`),
  CONSTRAINT `respuestas_examen_fk` FOREIGN KEY (`id_examen`) REFERENCES `examen` (`id_examen`),
  CONSTRAINT `respuestas_pregunta_fk` FOREIGN KEY (`id_preguntas_examen`) REFERENCES `preguntas_examen` (`id_preguntas_examen`),
  CONSTRAINT `respuestas_user_fk` FOREIGN KEY (`id_user`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `respuestas_usuario_id_alternativas_exam_4b60bc7c_fk_alternati` FOREIGN KEY (`id_alternativas_examen`) REFERENCES `alternativas_examen` (`id_alternativas_examen`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respuestas_usuario`
--

LOCK TABLES `respuestas_usuario` WRITE;
/*!40000 ALTER TABLE `respuestas_usuario` DISABLE KEYS */;
INSERT INTO `respuestas_usuario` VALUES (13,2,2,3,14,NULL,0.00,NULL),(14,2,2,4,20,NULL,0.00,NULL),(15,2,3,5,23,NULL,0.00,NULL),(16,2,3,6,28,NULL,0.00,NULL),(17,2,3,7,32,NULL,0.00,NULL),(18,10,9,11,52,NULL,0.00,NULL),(19,10,1,1,2,NULL,0.00,NULL),(20,10,1,2,9,NULL,0.00,NULL),(21,10,1,10,50,NULL,0.00,NULL),(22,10,10,28,127,NULL,0.00,NULL),(23,10,10,35,162,NULL,0.00,NULL),(24,10,10,27,124,NULL,0.00,NULL),(25,2,10,44,205,NULL,0.00,NULL),(26,2,10,29,132,NULL,0.00,NULL),(27,2,10,28,128,NULL,0.00,NULL),(28,10,4,45,208,NULL,0.00,NULL),(29,10,4,46,211,NULL,0.00,NULL),(30,10,3,5,23,NULL,0.00,NULL),(31,10,3,7,33,NULL,0.00,NULL),(32,10,11,55,NULL,NULL,0.00,NULL),(33,10,11,64,NULL,NULL,0.00,NULL),(34,9,9,11,NULL,NULL,0.00,NULL),(35,9,10,36,NULL,NULL,0.00,NULL),(36,9,10,32,NULL,NULL,0.00,NULL),(37,9,10,29,NULL,NULL,0.00,NULL),(38,9,10,44,NULL,NULL,0.00,NULL),(39,9,10,31,NULL,NULL,0.00,NULL),(40,9,10,30,137,NULL,0.00,NULL),(41,9,10,42,198,NULL,0.00,NULL),(42,9,12,81,381,NULL,0.00,NULL),(43,9,12,75,351,NULL,0.00,NULL),(44,9,12,73,342,NULL,0.00,NULL),(45,9,12,86,405,NULL,0.00,NULL),(46,10,12,72,339,NULL,0.00,NULL),(47,10,12,74,346,NULL,0.00,NULL),(48,10,12,82,387,NULL,0.00,NULL),(49,10,12,71,333,NULL,0.00,NULL),(50,10,13,96,456,NULL,0.00,NULL),(51,10,13,94,445,NULL,0.00,NULL),(52,10,13,89,420,NULL,0.00,NULL),(53,10,14,107,508,NULL,0.00,NULL),(54,10,14,122,581,NULL,0.00,NULL),(55,10,14,125,596,NULL,0.00,NULL),(56,10,14,126,599,NULL,0.00,NULL),(57,10,14,108,512,NULL,0.00,NULL),(58,10,14,123,584,NULL,0.00,NULL),(59,10,14,119,566,NULL,0.00,NULL),(60,10,14,124,592,NULL,0.00,NULL),(61,10,14,111,526,NULL,0.00,NULL),(62,10,14,112,532,NULL,0.00,NULL),(63,10,14,121,578,NULL,0.00,NULL),(64,10,14,116,551,NULL,0.00,NULL),(65,10,14,113,NULL,NULL,0.00,NULL),(66,10,16,149,699,NULL,5.00,NULL),(67,10,16,148,NULL,NULL,0.00,NULL),(68,10,16,150,700,NULL,5.00,NULL),(69,10,17,154,NULL,NULL,10.00,'                            juan'),(70,10,17,153,705,NULL,0.00,NULL),(71,10,17,152,702,NULL,5.00,NULL),(72,2,18,179,NULL,NULL,0.00,'                            qweqw'),(73,2,18,181,NULL,NULL,0.00,'                            eqweqw'),(74,2,18,184,NULL,NULL,0.00,'                            sads'),(75,2,18,163,NULL,NULL,0.00,'                            sasaew'),(76,2,18,164,NULL,NULL,0.00,'                            ewqqwe'),(77,2,18,170,706,NULL,0.00,NULL),(78,2,18,167,NULL,NULL,0.00,'                            weqwe'),(79,2,18,166,NULL,NULL,0.00,'                            sdasd'),(80,2,18,177,NULL,NULL,0.00,'                            weqweqw'),(81,2,18,162,NULL,NULL,0.00,'                            dsads'),(82,2,18,161,NULL,NULL,0.00,'                            wqeqw'),(83,2,18,178,NULL,NULL,0.00,'                            dsad'),(84,2,18,169,NULL,NULL,0.00,'                            wqe'),(85,2,18,155,NULL,NULL,0.20,'                            ewqeq'),(86,2,18,171,708,NULL,0.00,NULL),(87,2,18,182,NULL,NULL,0.00,'                            eqweqwe'),(88,2,18,175,716,NULL,1.00,NULL),(89,2,18,172,710,NULL,0.00,NULL),(90,2,18,156,NULL,NULL,0.00,'                            weqw'),(91,2,18,158,NULL,NULL,0.00,'                            wqeqwe'),(92,2,18,183,NULL,NULL,0.00,'                            eqweqw'),(93,2,18,160,NULL,NULL,0.00,'                            weqwe'),(94,2,18,168,NULL,NULL,0.00,'                            qweqw'),(95,2,18,176,718,NULL,1.00,NULL),(96,2,18,174,714,NULL,1.00,NULL),(97,2,18,157,NULL,NULL,0.00,'                            eqweqwe'),(98,2,19,195,738,NULL,1.00,NULL),(99,2,19,208,NULL,NULL,0.00,'                            qeqwe');
/*!40000 ALTER TABLE `respuestas_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salon`
--

DROP TABLE IF EXISTS `salon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salon` (
  `id_salon` int NOT NULL AUTO_INCREMENT,
  `nombre_salon` varchar(100) NOT NULL,
  `id_curso` int NOT NULL,
  `id_profesor` int NOT NULL,
  PRIMARY KEY (`id_salon`),
  KEY `salon_id_curso_f3621452_fk_cursos_id_cursos` (`id_curso`),
  KEY `salon_id_profesor_9963b5d8_fk_auth_user_id` (`id_profesor`),
  CONSTRAINT `salon_id_curso_f3621452_fk_cursos_id_cursos` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_cursos`),
  CONSTRAINT `salon_id_profesor_9963b5d8_fk_auth_user_id` FOREIGN KEY (`id_profesor`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salon`
--

LOCK TABLES `salon` WRITE;
/*!40000 ALTER TABLE `salon` DISABLE KEYS */;
INSERT INTO `salon` VALUES (1,'A601',1,8),(4,'A701',2,8),(6,'A1205',3,8),(7,'A601',4,11),(8,'A701',5,11);
/*!40000 ALTER TABLE `salon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salon_alumnos`
--

DROP TABLE IF EXISTS `salon_alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salon_alumnos` (
  `id_salonalumno` int NOT NULL AUTO_INCREMENT,
  `id_alumno` int NOT NULL,
  `id_salon` int NOT NULL,
  PRIMARY KEY (`id_salonalumno`),
  UNIQUE KEY `salon_alumnos_id_salon_id_alumno_1e49c65f_uniq` (`id_salon`,`id_alumno`),
  KEY `salon_alumnos_id_alumno_f51027d1_fk_auth_user_id` (`id_alumno`),
  CONSTRAINT `salon_alumnos_id_alumno_f51027d1_fk_auth_user_id` FOREIGN KEY (`id_alumno`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `salon_alumnos_id_salon_40a233dc_fk_salon_id_salon` FOREIGN KEY (`id_salon`) REFERENCES `salon` (`id_salon`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salon_alumnos`
--

LOCK TABLES `salon_alumnos` WRITE;
/*!40000 ALTER TABLE `salon_alumnos` DISABLE KEYS */;
INSERT INTO `salon_alumnos` VALUES (1,2,1),(5,10,1),(2,2,4),(9,10,4),(3,9,6),(4,10,6),(7,2,7),(6,9,7),(8,10,7),(22,2,8),(23,5,8),(24,6,8),(25,7,8),(26,9,8),(27,10,8);
/*!40000 ALTER TABLE `salon_alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks_perfilbiometrico`
--

DROP TABLE IF EXISTS `tasks_perfilbiometrico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks_perfilbiometrico` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `foto_referencia` varchar(100) NOT NULL,
  `fecha_registro` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `tasks_perfilbiometrico_user_id_6843f80e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks_perfilbiometrico`
--

LOCK TABLES `tasks_perfilbiometrico` WRITE;
/*!40000 ALTER TABLE `tasks_perfilbiometrico` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks_perfilbiometrico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks_task`
--

DROP TABLE IF EXISTS `tasks_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks_task` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `created` datetime(6) NOT NULL,
  `datecompleted` datetime(6) DEFAULT NULL,
  `important` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tasks_task_user_id_f0e531b0_fk_auth_user_id` (`user_id`),
  CONSTRAINT `tasks_task_user_id_f0e531b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks_task`
--

LOCK TABLES `tasks_task` WRITE;
/*!40000 ALTER TABLE `tasks_task` DISABLE KEYS */;
INSERT INTO `tasks_task` VALUES (1,'hola','qweqweqwe','2025-11-14 19:44:01.776214','2025-11-11 00:00:00.000000',0,1);
/*!40000 ALTER TABLE `tasks_task` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-05 14:55:26
