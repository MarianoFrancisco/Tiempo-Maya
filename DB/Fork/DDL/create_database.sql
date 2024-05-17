SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de datos: `tiempo_maya`
--
CREATE DATABASE IF NOT EXISTS `tiempo_maya` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tiempo_maya`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `energia`
--

CREATE TABLE IF NOT EXISTS `energia` (
  `id` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `significado` tinytext NOT NULL,
  `htmlCodigo` mediumtext NOT NULL,
  `nombreYucateco` varchar(30) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_energia_categoria1_idx` (`categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `kin`
--

CREATE TABLE IF NOT EXISTS `kin` (
  `id` int(11) NOT NULL,
  `iddesk` int(11) NOT NULL,
  `nombre` varchar(25) DEFAULT NULL,
  `significado` varchar(150) DEFAULT NULL,
  `htmlCodigo` mediumtext,
  `categoria` varchar(100) NOT NULL,
  `nombreYucateco` varchar(25) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_kin_categoria1_idx` (`categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nahual`
--

CREATE TABLE IF NOT EXISTS `nahual` (
  `idweb` int(11) NOT NULL,
  `iddesk` int(11) DEFAULT NULL,
  `nombre` varchar(20) NOT NULL,
  `nombreYucateco` varchar(50) DEFAULT NULL,
  `significado` varchar(100) NOT NULL,
  `htmlCodigo` longtext,
  `categoria` varchar(100) NOT NULL,
  `descripcion` mediumtext,
  `rutaEscritorio` varchar(100) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idweb`),
  UNIQUE KEY `iddesk_UNIQUE` (`iddesk`),
  KEY `fk_nahual_categoria1_idx` (`categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagina`
--

CREATE TABLE IF NOT EXISTS `pagina` (
  `orden` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `seccion` varchar(45) DEFAULT NULL,
  `htmlCodigo` longtext,
  PRIMARY KEY (`nombre`,`categoria`),
  KEY `FK_PAGINA_CATG` (`categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uinal`
--

CREATE TABLE IF NOT EXISTS `uinal` (
  `idweb` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `significado` varchar(75) NOT NULL,
  `dias` int(11) DEFAULT NULL,
  `htmlCodigo` mediumtext,
  `categoria` varchar(100) NOT NULL,
  `iddesk` int(11) DEFAULT NULL,
  `ruta` varchar(100) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idweb`),
  UNIQUE KEY `iddesk_UNIQUE` (`iddesk`),
  KEY `fk_uinal_categoria1_idx` (`categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


COMMIT;