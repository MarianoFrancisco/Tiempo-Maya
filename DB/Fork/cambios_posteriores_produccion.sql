-- FORK MARIANO TIEMPO MAYA
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

USE `tiempo_maya`;
-- Fork anterior modificado
UPDATE energia SET nombre = 'Oxlajuj\'' WHERE id = 13;
UPDATE kin SET nombre = 'B\'en' WHERE id = 12;

ALTER TABLE energia
ADD COLUMN imagen VARCHAR(100) DEFAULT NULL;

-- update image from energia
UPDATE energia SET imagen = '../img/energia/Jun.png' WHERE id = 1;
UPDATE energia SET imagen = '../img/energia/Keb\'.png' WHERE id = 2;
UPDATE energia SET imagen = '../img/energia/Oxib\'.png' WHERE id = 3;
UPDATE energia SET imagen = '../img/energia/Kajib\'.png' WHERE id = 4;
UPDATE energia SET imagen = '../img/energia/Job\'.png' WHERE id = 5;
UPDATE energia SET imagen = '../img/energia/Waqib\'.png' WHERE id = 6;
UPDATE energia SET imagen = '../img/energia/Wuqub\'.png' WHERE id = 7;
UPDATE energia SET imagen = '../img/energia/Wajxaqib\'.png' WHERE id = 8;
UPDATE energia SET imagen = '../img/energia/B\'elejeb\'.png' WHERE id = 9;
UPDATE energia SET imagen = '../img/energia/Lajuj.png' WHERE id = 10;
UPDATE energia SET imagen = '../img/energia/Julajuj.png' WHERE id = 11;
UPDATE energia SET imagen = '../img/energia/Kab\'lajuj.png' WHERE id = 12;
UPDATE energia SET imagen = '../img/energia/Oxlajuj\'.png' WHERE id = 13;

ALTER TABLE kin
ADD COLUMN imagen VARCHAR(100) DEFAULT NULL;

-- update image from kin
UPDATE kin SET imagen = '../img/kin/Imix\'.png' WHERE id = 0;
UPDATE kin SET imagen = '../img/kin/Ik\'.png' WHERE id = 1;
UPDATE kin SET imagen = '../img/kin/Ak\'bal\'.png' WHERE id = 2;
UPDATE kin SET imagen = '../img/kin/K\'an.png' WHERE id = 3;
UPDATE kin SET imagen = '../img/kin/Chikchan.png' WHERE id = 4;
UPDATE kin SET imagen = '../img/kin/Kimi.png' WHERE id = 5;
UPDATE kin SET imagen = '../img/kin/Manik\'.png' WHERE id = 6;
UPDATE kin SET imagen = '../img/kin/Lamat.png' WHERE id = 7;
UPDATE kin SET imagen = '../img/kin/Muluk.png' WHERE id = 8;
UPDATE kin SET imagen = '../img/kin/Ok.png' WHERE id = 9;
UPDATE kin SET imagen = '../img/kin/Chuwen.png' WHERE id = 10;
UPDATE kin SET imagen = '../img/kin/Eb\'.png' WHERE id = 11;
UPDATE kin SET imagen = '../img/kin/B\'en.png' WHERE id = 12;
UPDATE kin SET imagen = '../img/kin/Ix.png' WHERE id = 13;
UPDATE kin SET imagen = '../img/kin/Men.png' WHERE id = 14;
UPDATE kin SET imagen = '../img/kin/Kib\'.png' WHERE id = 15;
UPDATE kin SET imagen = '../img/kin/Kab\'an.png' WHERE id = 16;
UPDATE kin SET imagen = '../img/kin/Etz\'anab\'.png' WHERE id = 17;
UPDATE kin SET imagen = '../img/kin/Kawak.png' WHERE id = 18;
UPDATE kin SET imagen = '../img/kin/Ajaw.png' WHERE id = 19;

ALTER TABLE nahual
ADD COLUMN imagen VARCHAR(100) DEFAULT NULL;
-- update image from nahual
UPDATE nahual SET imagen = '../img/nahual/Tzikin.png' WHERE idweb = 0;
UPDATE nahual SET imagen = '../img/nahual/Ajmaq.png' WHERE idweb = 1;
UPDATE nahual SET imagen = '../img/nahual/No\'j.png' WHERE idweb = 2;
UPDATE nahual SET imagen = '../img/nahual/Tijax.png' WHERE idweb = 3;
UPDATE nahual SET imagen = '../img/nahual/Kawoq.png' WHERE idweb = 4;
UPDATE nahual SET imagen = '../img/nahual/Ajpu.png' WHERE idweb = 5;
UPDATE nahual SET imagen = '../img/nahual/Imox.png' WHERE idweb = 6;
UPDATE nahual SET imagen = '../img/nahual/Iq\'.png' WHERE idweb = 7;
UPDATE nahual SET imagen = '../img/nahual/Aq\'ab\'al.png' WHERE idweb = 8;
UPDATE nahual SET imagen = '../img/nahual/K\'at.png' WHERE idweb = 9;
UPDATE nahual SET imagen = '../img/nahual/Kan.png' WHERE idweb = 10;
UPDATE nahual SET imagen = '../img/nahual/Kame.png' WHERE idweb = 11;
UPDATE nahual SET imagen = '../img/nahual/Kej.png' WHERE idweb = 12;
UPDATE nahual SET imagen = '../img/nahual/Q\'anil.png' WHERE idweb = 13;
UPDATE nahual SET imagen = '../img/nahual/Toj.png' WHERE idweb = 14;
UPDATE nahual SET imagen = '../img/nahual/Tz\'i\'.png' WHERE idweb = 15;
UPDATE nahual SET imagen = '../img/nahual/B\'atz\'.png' WHERE idweb = 16;
UPDATE nahual SET imagen = '../img/nahual/E\'.png' WHERE idweb = 17;
UPDATE nahual SET imagen = '../img/nahual/Aj.png' WHERE idweb = 18;
UPDATE nahual SET imagen = '../img/nahual/I\'x.png' WHERE idweb = 19;

ALTER TABLE uinal
ADD COLUMN imagen VARCHAR(100) DEFAULT NULL;

-- update image from uinal
UPDATE uinal SET imagen = '../img/uinal/Wayeb\'.png' WHERE idweb = 0;
UPDATE uinal SET imagen = '../img/uinal/Pop.png' WHERE idweb = 1;
UPDATE uinal SET imagen = '../img/uinal/Woo.png' WHERE idweb = 2;
UPDATE uinal SET imagen = '../img/uinal/Zip.png' WHERE idweb = 3;
UPDATE uinal SET imagen = '../img/uinal/Sotz\'.png' WHERE idweb = 4;
UPDATE uinal SET imagen = '../img/uinal/Tzek.png' WHERE idweb = 5;
UPDATE uinal SET imagen = '../img/uinal/xul.png' WHERE idweb = 6;
UPDATE uinal SET imagen = '../img/uinal/Yaxk\'in.png' WHERE idweb = 7;
UPDATE uinal SET imagen = '../img/uinal/Mol.png' WHERE idweb = 8;
UPDATE uinal SET imagen = '../img/uinal/Ch\'en.png' WHERE idweb = 9;
UPDATE uinal SET imagen = '../img/uinal/Yax.png' WHERE idweb = 10;
UPDATE uinal SET imagen = '../img/uinal/Sak.png' WHERE idweb = 11;
UPDATE uinal SET imagen = '../img/uinal/keh.png' WHERE idweb = 12;
UPDATE uinal SET imagen = '../img/uinal/Mak.png' WHERE idweb = 13;
UPDATE uinal SET imagen = '../img/uinal/K\'ank\'in.png' WHERE idweb = 14;
UPDATE uinal SET imagen = '../img/uinal/Muwan.png' WHERE idweb = 15;
UPDATE uinal SET imagen = '../img/uinal/Pax.png' WHERE idweb = 16;
UPDATE uinal SET imagen = '../img/uinal/K\'ayab\'.png' WHERE idweb = 17;
UPDATE uinal SET imagen = '../img/uinal/K\'umk\'u\'.png' WHERE idweb = 18;

-- FORK MARIANO

-- Update mistakes name in db prod
UPDATE energia SET nombre = 'Oxlajuj\'' WHERE id = 13;
UPDATE kin SET nombre = 'B\'en' WHERE id = 12;

INSERT INTO `categoria` (`nombre`) VALUES
('Cuenta Larga'),
('Calculadoras'),
('Sabiduría Maya');    

INSERT INTO `pagina` (`orden`, `nombre`, `categoria`, `seccion`, `htmlCodigo`) VALUES
(0, 'Informacion', 'Cuenta Larga', 'Informacion', '<p>La Cuenta Larga es un sistema de calendario utilizado por las antiguas civilizaciones mesoamericanas, especialmente por los mayas. Esta cuenta de tiempo es un sistema de conteo lineal que mide el tiempo transcurrido desde una fecha de inicio que los mayas consideraban como el inicio del mundo o de una era particular. Esta fecha de inicio se conoce como el punto de partida o el \"cero\" de la Cuenta Larga.\n\n
El sistema de la Cuenta Larga consiste en cinco unidades de tiempo que se registran de manera secuencial: kin (día), uinal (mes de 20 días), tun (año de 360 días), katún (20 tun, aproximadamente 20 años) y baktún (20 katún, aproximadamente 394 años). Estas unidades se agrupan en series de 13, y cada serie completa representa un ciclo llamado \"alautún\", que equivale a aproximadamente 5125.36 años solares.\n\n
La fecha de inicio de la Cuenta Larga es un tema de debate entre los investigadores. Algunos sostienen que el 11 de agosto de 3114 a.C. (según el calendario gregoriano) es la fecha de inicio, mientras que otros proponen diferentes fechas. Esta fecha está representada como 13.0.0.0.0 en el sistema de numeración de la Cuenta Larga.
</p>'),
(0, 'Informacion', 'Calculadoras', 'Informacion', '<p>Una Calculadora de Fechas Maya es una herramienta diseñada para convertir y calcular fechas entre distintos sistemas de calendarios: el calendario gregoriano, la Cuenta Larga maya, el Haab\' y el Cholq\'ij (Tzolk\'in). Esta calculadora permite a los usuarios ingresar una fecha en uno de estos sistemas y obtener las fechas correspondientes en los otros sistemas, facilitando la comprensión y el estudio de las cronologías históricas y culturales de las civilizaciones mesoamericanas.
</p>'),
(1, 'Calendario Gregoriano', 'Calculadoras', 'Informacion', '<h2><a href=\"../calculadora-calendario-gregoriano.php\">Calendario Gregoriano</a></h2>\n\n<p>Esta calculadora permite convertir una fecha del calendario gregoriano a los formatos de la Cuenta Larga maya, el Haab\' y el Cholq\'ij. Los usuarios ingresan una fecha en el formato gregoriano (día, mes, año), y la calculadora genera las fechas correspondientes en los tres calendarios mayas.
</p>\n'),  
(2, 'Cuenta Larga', 'Calculadoras', 'Informacion', '<h2><a href=\"../calculadora-cuenta-larga.php\">Cuenta Larga</a></h2>\n\n<p>Este calculadora convierte una fecha del sistema de la Cuenta Larga maya al calendario gregoriano, así como a los calendarios Haab\' y Cholq\'ij. Los usuarios ingresan una fecha en el formato de la Cuenta Larga (baktún, katún, tun, uinal, kin), y la calculadora proporciona las fechas equivalentes en los otros tres calendarios.
</p>\n'),
(0, 'Informacion', 'Sabiduría Maya', 'Informacion', '<p>La sabiduría maya es un vasto compendio de conocimientos transmitidos a lo largo de los siglos, abarcando desde la astronomía y las matemáticas hasta la espiritualidad y la filosofía. Los mayas desarrollaron complejos calendarios y sistemas simbólicos que reflejan una profunda comprensión del cosmos y del lugar del ser humano en él. Entre los elementos centrales de esta sabiduría se encuentran la infografía del día y la cruz maya, dos herramientas esenciales para entender el tiempo y el destino según la cosmovisión maya.
</p>'),
(1, 'Infografía del día', 'Sabiduría Maya', 'Informacion', '<h2><a href=\"../infografia-dia.php\">Infografía del día</a></h2>\n\n<p>La infografía del día es una representación diaria que proporciona información sobre la energía y el nahual predominante. Este sistema permite a las personas alinear sus actividades y decisiones con las energías cósmicas específicas de cada día. Y se compone por Energia, su nombre maya y significado, como también del Nahual y su significado.
<h3>Energía</h3>
<p>Cada día está regido por una energía particular, que tiene su propio nombre maya y significado. Esta energía influye en las características y las actividades propicias del día.
</p><h3>Nombre Maya y Significado</h3>
<p>El nombre maya de la energía y su interpretación ofrecen una guía sobre las cualidades y los eventos que se pueden esperar. Por ejemplo, una energía puede estar relacionada con la creación, la fertilidad o la introspección.
</p><h3>Nahual y su Significado</h3>
<p>Junto con la energía, cada día está asociado con un nahual, un símbolo animal o deidad que representa diversas fuerzas naturales y espirituales. El nahual aporta otra capa de significado y orientación sobre cómo interactuar con el mundo durante ese día.
</p></p>\n'),  
(2, 'Cruz Maya', 'Sabiduría Maya', 'Informacion', '<h2><a href=\"../cruz-maya.php\">Cruz Maya</a></h2>\n\n<p>La cruz maya es una herramienta de adivinación y autoconocimiento que muestra la influencia de diversos nahuales en la vida de una persona. Esta cruz proporciona una perspectiva más completa y personalizada del destino individual, destacando la conexión entre el ser humano y el cosmos. Se compone por el Nahual de la Mano Izquierda, de la Mano Derecha, de Concepción, de Nacimiento y del Destino.
<h3>Nahual de la Mano Izquierda y Mano Derecha</h3>
<p>Aquí se manifiesta el signo que va en cada uno de nuestros lados, los mayas creían que estos signos los llevamos en la mano y cada uno de esos nos proporciona alguna energía especial.
</p><h3>Nahual de Concepción</h3>
<p>Es el signo que llevamos y que según nuestros antepasados, es el signo del día del cual fuimos engendrados en este mundo.
</p><h3>Nahual de Nacimiento</h3>
<p>Signo perteneciente según el día en el que hayamos nacido.
</p><h3>Nahual de Destino</h3>
<p>Es el signo que nos regirá en nuestro futuro, signo que podemos utilizar para pedir salud como también para poder retirar todo lo malo que esta en nuestro camino.
</p></p>\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta_larga`
--

CREATE TABLE IF NOT EXISTS `cuenta_larga` (
  `nombre` varchar(25) NOT NULL,
  `duracion` varchar(75) NOT NULL,
  `htmlCodigo` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `cuenta_larga` (`nombre`, `duracion`, `htmlCodigo`) VALUES
('Baktún', '144,000 días (20 katunes)', '<p>El baktún es una de las mayores unidades de tiempo en la Cuenta Larga, comprendiendo aproximadamente 394 años en el calendario gregoriano. Está compuesto por 20 katunes. Los baktunes eran utilizados para marcar largos períodos de la historia y la mitología maya. Por ejemplo, el final de un baktún era visto como un tiempo de renovación y transformación. El ciclo de 13 baktunes, que suma 1,872,000 días (aproximadamente 5,125 años), era particularmente significativo para los mayas, y el final de este ciclo en 2012 atrajo mucha atención global.</p>'),
('Katún', '7,200 días (20 tuns)', '<p>El katún es una unidad mayor, equivalente a unos 20 años en el calendario gregoriano. Cada katún se compone de 20 tuns de 360 días. Los katunes eran significativos en la historia y la política maya, ya que los eventos importantes, como la ascensión de gobernantes y las guerras, a menudo se registraban en términos de katunes. Además, cada katún tenía una connotación profética, con ciertos augurios asociados a cada período.</p>'),
('Tun', '360 días (18 uinales)', '<p>Un tun es una unidad que casi coincide con un año solar. Está compuesto por 18 uinales de 20 días cada uno, sumando un total de 360 días. Los mayas reconocían que un año solar es de aproximadamente 365 días, por lo que añadían un período de 5 días adicionales conocido como Wayeb al final de cada tun para sincronizar con el año solar. Los tuns eran fundamentales en la planificación agrícola y en la celebración de eventos religiosos.</p>'),
('Uinal', '20 días (20 kins)', '<p>El uinal es una unidad de tiempo que equivale a aproximadamente un mes en el calendario gregoriano. Se compone de 20 kins y su propósito principal era medir períodos cortos de tiempo, útiles en la agricultura, los rituales y la vida cotidiana. Los uinales también formaban parte del ciclo Tzolk\'in, un calendario ritual de 260 días.</p>'),
('Kin', '1 día', '<p>El kin es la unidad básica de tiempo en el calendario maya y representa un solo día. Es la base sobre la cual se construyen todas las demás unidades de tiempo en la Cuenta Larga. Los mayas tenían un profundo respeto por el paso de los días y cada kin era importante en su cosmovisión.</p>');


COMMIT;