SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

USE `tiempo_maya`;

CREATE TABLE IF NOT EXISTS `cuenta_larga` (
  `nombre` varchar(25) NOT NULL,
  `duracion` varchar(75) NOT NULL,
  `htmlCodigo` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

COMMIT;