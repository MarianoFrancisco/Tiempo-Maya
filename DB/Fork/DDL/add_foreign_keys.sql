SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

USE `tiempo_maya`;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `energia`
--
ALTER TABLE `energia`
  ADD CONSTRAINT `fk_energia_categoria1` FOREIGN KEY (`categoria`) REFERENCES `categoria` (`nombre`);

--
-- Filtros para la tabla `kin`
--
ALTER TABLE `kin`
  ADD CONSTRAINT `fk_kin_categoria1` FOREIGN KEY (`categoria`) REFERENCES `categoria` (`nombre`);

--
-- Filtros para la tabla `nahual`
--
ALTER TABLE `nahual`
  ADD CONSTRAINT `fk_nahual_categoria1` FOREIGN KEY (`categoria`) REFERENCES `categoria` (`nombre`);

--
-- Filtros para la tabla `pagina`
--
ALTER TABLE `pagina`
  ADD CONSTRAINT `FK_PAGINA_CATG` FOREIGN KEY (`categoria`) REFERENCES `categoria` (`nombre`);

--
-- Filtros para la tabla `uinal`
--
ALTER TABLE `uinal`
  ADD CONSTRAINT `fk_uinal_categoria1` FOREIGN KEY (`categoria`) REFERENCES `categoria` (`nombre`);

COMMIT;