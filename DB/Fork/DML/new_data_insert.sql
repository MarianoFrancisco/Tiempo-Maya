SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

USE `tiempo_maya`;
INSERT INTO `categoria` (`nombre`) VALUES
('Cuenta Larga'),
('Calculadoras');    

INSERT INTO `pagina` (`orden`, `nombre`, `categoria`, `seccion`, `htmlCodigo`) VALUES
(0, 'Informacion', 'Cuenta Larga', 'Informacion', '<p>La Cuenta Larga es un sistema de calendario utilizado por las antiguas civilizaciones mesoamericanas, especialmente por los mayas. Esta cuenta de tiempo es un sistema de conteo lineal que mide el tiempo transcurrido desde una fecha de inicio que los mayas consideraban como el inicio del mundo o de una era particular. Esta fecha de inicio se conoce como el punto de partida o el \"cero\" de la Cuenta Larga.</p>\n\n</p>
El sistema de la Cuenta Larga consiste en cinco unidades de tiempo que se registran de manera secuencial: kin (día), uinal (mes de 20 días), tun (año de 360 días), katún (20 tun, aproximadamente 20 años) y baktún (20 katún, aproximadamente 394 años). Estas unidades se agrupan en series de 13, y cada serie completa representa un ciclo llamado \"alautún\", que equivale a aproximadamente 5125.36 años solares.</p>\n\n</p>
La fecha de inicio de la Cuenta Larga es un tema de debate entre los investigadores. Algunos sostienen que el 11 de agosto de 3114 a.C. (según el calendario gregoriano) es la fecha de inicio, mientras que otros proponen diferentes fechas. Esta fecha está representada como 13.0.0.0.0 en el sistema de numeración de la Cuenta Larga.
</p>'),
(1, 'Cuenta Larga Actual', 'Cuenta Larga', 'Informacion', '<h2>Cuenta Larga Actual</h2>\n\n');
(0, 'Informacion', 'Calculadoras', 'Informacion', '<p>Una Calculadora de Fechas Maya es una herramienta diseñada para convertir y calcular fechas entre distintos sistemas de calendarios: el calendario gregoriano, la Cuenta Larga maya, el Haab\' y el Cholq\'ij (Tzolk\'in). Esta calculadora permite a los usuarios ingresar una fecha en uno de estos sistemas y obtener las fechas correspondientes en los otros sistemas, facilitando la comprensión y el estudio de las cronologías históricas y culturales de las civilizaciones mesoamericanas.
</p>'),
(1, 'Calendario Gregoriano', 'Calculadoras', 'Informacion', '<h2><a href=\"../calculadora-calendario-gregoriano.php\">Calendario Gregoriano</a></h2>\n\n<p>Esta calculadora permite convertir una fecha del calendario gregoriano a los formatos de la Cuenta Larga maya, el Haab\' y el Cholq\'ij. Los usuarios ingresan una fecha en el formato gregoriano (día, mes, año), y la calculadora genera las fechas correspondientes en los tres calendarios mayas.'),  
(2, 'Cuenta Larga', 'Calculadoras', 'Informacion', '<h2><a href=\"../calculadora-cuenta-larga.php\">Cuenta Larga</a></h2>\n\n<p>Este calculadora convierte una fecha del sistema de la Cuenta Larga maya al calendario gregoriano, así como a los calendarios Haab\' y Cholq\'ij. Los usuarios ingresan una fecha en el formato de la Cuenta Larga (baktún, katún, tun, uinal, kin), y la calculadora proporciona las fechas equivalentes en los otros tres calendarios.');

COMMIT;