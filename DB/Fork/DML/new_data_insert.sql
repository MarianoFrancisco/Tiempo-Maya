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
(0, 'Informacion', 'Calculadoras', 'Informacion', '<p>Una Calculadora de Fechas Maya es una herramienta diseñada para convertir y calcular fechas entre distintos sistemas de calendarios: el calendario gregoriano, la Cuenta Larga maya, el Haab\' y el Cholq\'ij (Tzolk\'in). Esta calculadora permite a los usuarios ingresar una fecha en uno de estos sistemas y obtener las fechas correspondientes en los otros sistemas, facilitando la comprensión y el estudio de las cronologías históricas y culturales de las civilizaciones mesoamericanas.
</p>'),
(1, 'Calendario Gregoriano', 'Calculadoras', 'Informacion', '<h2><a href=\"../calculadora-calendario-gregoriano.php\">Calendario Gregoriano</a></h2>\n\n<p>Esta calculadora permite convertir una fecha del calendario gregoriano a los formatos de la Cuenta Larga maya, el Haab\' y el Cholq\'ij. Los usuarios ingresan una fecha en el formato gregoriano (día, mes, año), y la calculadora genera las fechas correspondientes en los tres calendarios mayas.'),  
(2, 'Cuenta Larga', 'Calculadoras', 'Informacion', '<h2><a href=\"../calculadora-cuenta-larga.php\">Cuenta Larga</a></h2>\n\n<p>Este calculadora convierte una fecha del sistema de la Cuenta Larga maya al calendario gregoriano, así como a los calendarios Haab\' y Cholq\'ij. Los usuarios ingresan una fecha en el formato de la Cuenta Larga (baktún, katún, tun, uinal, kin), y la calculadora proporciona las fechas equivalentes en los otros tres calendarios.');

INSERT INTO `cuenta_larga` (`nombre`, `duracion`, `htmlCodigo`) VALUES
('Baktún', '144,000 días (20 katunes)', '<p>El baktún es una de las mayores unidades de tiempo en la Cuenta Larga, comprendiendo aproximadamente 394 años en el calendario gregoriano. Está compuesto por 20 katunes. Los baktunes eran utilizados para marcar largos períodos de la historia y la mitología maya. Por ejemplo, el final de un baktún era visto como un tiempo de renovación y transformación. El ciclo de 13 baktunes, que suma 1,872,000 días (aproximadamente 5,125 años), era particularmente significativo para los mayas, y el final de este ciclo en 2012 atrajo mucha atención global.</p>'),
('Katún', '7,200 días (20 tuns)', '<p>El katún es una unidad mayor, equivalente a unos 20 años en el calendario gregoriano. Cada katún se compone de 20 tuns de 360 días. Los katunes eran significativos en la historia y la política maya, ya que los eventos importantes, como la ascensión de gobernantes y las guerras, a menudo se registraban en términos de katunes. Además, cada katún tenía una connotación profética, con ciertos augurios asociados a cada período.</p>'),
('Tun', '360 días (18 uinales)', '<p>Un tun es una unidad que casi coincide con un año solar. Está compuesto por 18 uinales de 20 días cada uno, sumando un total de 360 días. Los mayas reconocían que un año solar es de aproximadamente 365 días, por lo que añadían un período de 5 días adicionales conocido como Wayeb al final de cada tun para sincronizar con el año solar. Los tuns eran fundamentales en la planificación agrícola y en la celebración de eventos religiosos.</p>'),
('Uinal', '20 días (20 kins)', '<p>El uinal es una unidad de tiempo que equivale a aproximadamente un mes en el calendario gregoriano. Se compone de 20 kins y su propósito principal era medir períodos cortos de tiempo, útiles en la agricultura, los rituales y la vida cotidiana. Los uinales también formaban parte del ciclo Tzolk\'in, un calendario ritual de 260 días.</p>'),
('Kin', '1 día', '<p>El kin es la unidad básica de tiempo en el calendario maya y representa un solo día. Es la base sobre la cual se construyen todas las demás unidades de tiempo en la Cuenta Larga. Los mayas tenían un profundo respeto por el paso de los días y cada kin era importante en su cosmovisión.</p>');

COMMIT;