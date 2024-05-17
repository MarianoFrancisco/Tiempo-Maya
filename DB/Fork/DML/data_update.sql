SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

USE `tiempo_maya`;

-- Update mistakes name in db prod
UPDATE energia SET nombre = 'Oxlajuj\'' WHERE id = 13;
UPDATE kin SET nombre = 'B\'en' WHERE id = 12;

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

COMMIT;