-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema f1_2012
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema f1_2012
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `f1_2012` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `f1_2012` ;

-- -----------------------------------------------------
-- Table `f1_2012`.`circuitos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `f1_2012`.`circuitos` (
  `Round` INT NOT NULL,
  `Grand Prix` VARCHAR(45) NOT NULL,
  `Circuit` VARCHAR(45) NOT NULL,
  `Date` VARCHAR(45) NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `f1_2012`.`puntuacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `f1_2012`.`puntuacion` (
  `POSICIÓN` VARCHAR(25) NOT NULL,
  `PUNTOS` INT NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `f1_2012`.`clasificacion_pilotos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `f1_2012`.`clasificacion_pilotos` (
  `Posicion` INT NOT NULL,
  `Piloto` VARCHAR(45) NOT NULL,
  `Puntos_totales` VARCHAR(45) NOT NULL,
  `Australian_GP` VARCHAR(45) NOT NULL,
  `Malaysian_GP` VARCHAR(45) NOT NULL,
  `Chinese_GP` VARCHAR(45) NOT NULL,
  `Bahrein_GP` VARCHAR(45) NOT NULL,
  `Spanish_GP` VARCHAR(45) NOT NULL,
  `Monaco_GP` VARCHAR(45) NOT NULL,
  `Canadian_GP` VARCHAR(45) NOT NULL,
  `European_GP` VARCHAR(45) NOT NULL,
  `British_GP` VARCHAR(45) NOT NULL,
  `German_GP` VARCHAR(45) NOT NULL,
  `Hungarian_GP` VARCHAR(45) NOT NULL,
  `Belgian_GP` VARCHAR(45) NOT NULL,
  `Italian_GP` VARCHAR(45) NOT NULL,
  `Singapore_GP` VARCHAR(45) NOT NULL,
  `Japanese_GP` VARCHAR(45) NOT NULL,
  `Korean_GP` VARCHAR(45) NOT NULL,
  `Indian_GP` VARCHAR(45) NOT NULL,
  `Abu_Dhabi_GP` VARCHAR(45) NOT NULL,
  `USA_GP` VARCHAR(45) NOT NULL,
  `Brazilian_GP` VARCHAR(45) NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `f1_2012`.`escuderia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `f1_2012`.`escuderia` (
  `pos` VARCHAR(45) NOT NULL,
  `team` VARCHAR(45) NOT NULL,
  `PTS` VARCHAR(45) NOT NULL,
  `escuderia_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`escuderia_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `f1_2012`.`pilotos_2012`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `f1_2012`.`pilotos_2012` (
  `id_piloto` INT NOT NULL,
  `code` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `nationality` VARCHAR(45) NOT NULL,
  `escuderia_escuderia_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_piloto`, `escuderia_escuderia_id`),
  INDEX `fk_pilotos_2012_escuderia_idx` (`escuderia_escuderia_id` ASC) VISIBLE,
  CONSTRAINT `fk_pilotos_2012_escuderia`
    FOREIGN KEY (`escuderia_escuderia_id`)
    REFERENCES `f1_2012`.`escuderia` (`escuderia_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;




SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `f1_2012`.`clasificacion_pilotos`
-- -----------------------------------------------------
START TRANSACTION;
USE `f1_2012`;
INSERT INTO `f1_2012`.`clasificacion_pilotos` (`Posicion`, `Piloto`, `Puntos_totales`, `Australian_GP`, `Malaysian_GP`, `Chinese_GP`, `Bahrein_GP`, `Spanish_GP`, `Monaco_GP`, `Canadian_GP`, `European_GP`, `British_GP`, `German_GP`, `Hungarian_GP`, `Belgian_GP`, `Italian_GP`, `Singapore_GP`, `Japanese_GP`, `Korean_GP`, `Indian_GP`, `Abu_Dhabi_GP`, `USA_GP`, `Brazilian_GP`) VALUES (1, 'S. Vettel', '281', '18', '0', '10', '25', '8', '12', '12', '0', '15', '10', '12', '18', '0', '25', '25', '25', '25', '15', '18', '8');
INSERT INTO `f1_2012`.`clasificacion_pilotos` (`Posicion`, `Piloto`, `Puntos_totales`, `Australian_GP`, `Malaysian_GP`, `Chinese_GP`, `Bahrein_GP`, `Spanish_GP`, `Monaco_GP`, `Canadian_GP`, `European_GP`, `British_GP`, `German_GP`, `Hungarian_GP`, `Belgian_GP`, `Italian_GP`, `Singapore_GP`, `Japanese_GP`, `Korean_GP`, `Indian_GP`, `Abu_Dhabi_GP`, `USA_GP`, `Brazilian_GP`) VALUES (2, 'F. Alonso', '278', '10', '25', '2', '6', '18', '15', '10', '25', '18', '25', '10', '0', '15', '15', '0', '15', '18', '18', '15', '18');
INSERT INTO `f1_2012`.`clasificacion_pilotos` (`Posicion`, `Piloto`, `Puntos_totales`, `Australian_GP`, `Malaysian_GP`, `Chinese_GP`, `Bahrein_GP`, `Spanish_GP`, `Monaco_GP`, `Canadian_GP`, `European_GP`, `British_GP`, `German_GP`, `Hungarian_GP`, `Belgian_GP`, `Italian_GP`, `Singapore_GP`, `Japanese_GP`, `Korean_GP`, `Indian_GP`, `Abu_Dhabi_GP`, `USA_GP`, `Brazilian_GP`) VALUES (3, 'K. RÃ¤ikkÃ¶nen', '207', '6', '10', '0', '18', '15', '2', '4', '18', '10', '15', '18', '15', '10', '8', '8', '10', '6', '25', '8', '1');
INSERT INTO `f1_2012`.`clasificacion_pilotos` (`Posicion`, `Piloto`, `Puntos_totales`, `Australian_GP`, `Malaysian_GP`, `Chinese_GP`, `Bahrein_GP`, `Spanish_GP`, `Monaco_GP`, `Canadian_GP`, `European_GP`, `British_GP`, `German_GP`, `Hungarian_GP`, `Belgian_GP`, `Italian_GP`, `Singapore_GP`, `Japanese_GP`, `Korean_GP`, `Indian_GP`, `Abu_Dhabi_GP`, `USA_GP`, `Brazilian_GP`) VALUES (4, 'L. Hamilton', '190', '15', '15', '15', '4', '4', '10', '25', '0', '4', '0', '25', '0', '25', '0', '10', '1', '12', '0', '25', '0');
INSERT INTO `f1_2012`.`clasificacion_pilotos` (`Posicion`, `Piloto`, `Puntos_totales`, `Australian_GP`, `Malaysian_GP`, `Chinese_GP`, `Bahrein_GP`, `Spanish_GP`, `Monaco_GP`, `Canadian_GP`, `European_GP`, `British_GP`, `German_GP`, `Hungarian_GP`, `Belgian_GP`, `Italian_GP`, `Singapore_GP`, `Japanese_GP`, `Korean_GP`, `Indian_GP`, `Abu_Dhabi_GP`, `USA_GP`, `Brazilian_GP`) VALUES (5, 'J. Button', '188', '25', '0', '18', '0', '2', '0', '0', '4', '1', '18', '8', '25', '0', '18', '12', '0', '10', '12', '10', '25');
INSERT INTO `f1_2012`.`clasificacion_pilotos` (`Posicion`, `Piloto`, `Puntos_totales`, `Australian_GP`, `Malaysian_GP`, `Chinese_GP`, `Bahrein_GP`, `Spanish_GP`, `Monaco_GP`, `Canadian_GP`, `European_GP`, `British_GP`, `German_GP`, `Hungarian_GP`, `Belgian_GP`, `Italian_GP`, `Singapore_GP`, `Japanese_GP`, `Korean_GP`, `Indian_GP`, `Abu_Dhabi_GP`, `USA_GP`, `Brazilian_GP`) VALUES (6, 'M. Webber', '179', '12', '12', '12', '12', '0', '25', '6', '12', '25', '4', '4', '8', '0', '0', '2', '18', '15', '0', '0', '12');
INSERT INTO `f1_2012`.`clasificacion_pilotos` (`Posicion`, `Piloto`, `Puntos_totales`, `Australian_GP`, `Malaysian_GP`, `Chinese_GP`, `Bahrein_GP`, `Spanish_GP`, `Monaco_GP`, `Canadian_GP`, `European_GP`, `British_GP`, `German_GP`, `Hungarian_GP`, `Belgian_GP`, `Italian_GP`, `Singapore_GP`, `Japanese_GP`, `Korean_GP`, `Indian_GP`, `Abu_Dhabi_GP`, `USA_GP`, `Brazilian_GP`) VALUES (7, 'F. Massa', '122', '0', '0', '0', '2', '0', '8', '1', '0', '12', '0', '2', '10', '12', '4', '18', '12', '8', '6', '12', '15');
INSERT INTO `f1_2012`.`clasificacion_pilotos` (`Posicion`, `Piloto`, `Puntos_totales`, `Australian_GP`, `Malaysian_GP`, `Chinese_GP`, `Bahrein_GP`, `Spanish_GP`, `Monaco_GP`, `Canadian_GP`, `European_GP`, `British_GP`, `German_GP`, `Hungarian_GP`, `Belgian_GP`, `Italian_GP`, `Singapore_GP`, `Japanese_GP`, `Korean_GP`, `Indian_GP`, `Abu_Dhabi_GP`, `USA_GP`, `Brazilian_GP`) VALUES (8, 'R. Grosjean', '96', '0', '0', '8', '15', '12', '0', '18', '0', '8', '0', '15', '0', '', '6', '0', '6', '2', '0', '6', '0');
INSERT INTO `f1_2012`.`clasificacion_pilotos` (`Posicion`, `Piloto`, `Puntos_totales`, `Australian_GP`, `Malaysian_GP`, `Chinese_GP`, `Bahrein_GP`, `Spanish_GP`, `Monaco_GP`, `Canadian_GP`, `European_GP`, `British_GP`, `German_GP`, `Hungarian_GP`, `Belgian_GP`, `Italian_GP`, `Singapore_GP`, `Japanese_GP`, `Korean_GP`, `Indian_GP`, `Abu_Dhabi_GP`, `USA_GP`, `Brazilian_GP`) VALUES (9, 'N. Rosberg', '93', '0', '0', '25', '10', '6', '18', '8', '8', '0', '1', '1', '0', '6', '10', '0', '0', '0', '0', '0', '0');
INSERT INTO `f1_2012`.`clasificacion_pilotos` (`Posicion`, `Piloto`, `Puntos_totales`, `Australian_GP`, `Malaysian_GP`, `Chinese_GP`, `Bahrein_GP`, `Spanish_GP`, `Monaco_GP`, `Canadian_GP`, `European_GP`, `British_GP`, `German_GP`, `Hungarian_GP`, `Belgian_GP`, `Italian_GP`, `Singapore_GP`, `Japanese_GP`, `Korean_GP`, `Indian_GP`, `Abu_Dhabi_GP`, `USA_GP`, `Brazilian_GP`) VALUES (10, 'S. PÃ©rez', '66', '4', '18', '0', '0', '0', '0', '15', '2', '0', '8', '0', '0', '18', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `f1_2012`.`clasificacion_pilotos` (`Posicion`, `Piloto`, `Puntos_totales`, `Australian_GP`, `Malaysian_GP`, `Chinese_GP`, `Bahrein_GP`, `Spanish_GP`, `Monaco_GP`, `Canadian_GP`, `European_GP`, `British_GP`, `German_GP`, `Hungarian_GP`, `Belgian_GP`, `Italian_GP`, `Singapore_GP`, `Japanese_GP`, `Korean_GP`, `Indian_GP`, `Abu_Dhabi_GP`, `USA_GP`, `Brazilian_GP`) VALUES (11, 'N. HÃ¼lkenberg', '63', '0', '2', '0', '0', '1', '4', '0', '10', '0', '2', '0', '12', '0', '0', '6', '8', '4', '0', '4', '10');
INSERT INTO `f1_2012`.`clasificacion_pilotos` (`Posicion`, `Piloto`, `Puntos_totales`, `Australian_GP`, `Malaysian_GP`, `Chinese_GP`, `Bahrein_GP`, `Spanish_GP`, `Monaco_GP`, `Canadian_GP`, `European_GP`, `British_GP`, `German_GP`, `Hungarian_GP`, `Belgian_GP`, `Italian_GP`, `Singapore_GP`, `Japanese_GP`, `Korean_GP`, `Indian_GP`, `Abu_Dhabi_GP`, `USA_GP`, `Brazilian_GP`) VALUES (12, 'K. Kobayashi', '60', '8', '0', '1', '0', '10', '0', '2', '0', '0', '12', '0', '0', '2', '0', '15', '0', '0', '8', '0', '2');
INSERT INTO `f1_2012`.`clasificacion_pilotos` (`Posicion`, `Piloto`, `Puntos_totales`, `Australian_GP`, `Malaysian_GP`, `Chinese_GP`, `Bahrein_GP`, `Spanish_GP`, `Monaco_GP`, `Canadian_GP`, `European_GP`, `British_GP`, `German_GP`, `Hungarian_GP`, `Belgian_GP`, `Italian_GP`, `Singapore_GP`, `Japanese_GP`, `Korean_GP`, `Indian_GP`, `Abu_Dhabi_GP`, `USA_GP`, `Brazilian_GP`) VALUES (13, 'M. Schumacher', '49', '0', '1', '0', '1', '0', '0', '0', '15', '6', '6', '0', '6', '8', '0', '0', '0', '0', '0', '0', '6');
INSERT INTO `f1_2012`.`clasificacion_pilotos` (`Posicion`, `Piloto`, `Puntos_totales`, `Australian_GP`, `Malaysian_GP`, `Chinese_GP`, `Bahrein_GP`, `Spanish_GP`, `Monaco_GP`, `Canadian_GP`, `European_GP`, `British_GP`, `German_GP`, `Hungarian_GP`, `Belgian_GP`, `Italian_GP`, `Singapore_GP`, `Japanese_GP`, `Korean_GP`, `Indian_GP`, `Abu_Dhabi_GP`, `USA_GP`, `Brazilian_GP`) VALUES (14, 'P. di Resta', '46', '1', '6', '0', '8', '0', '6', '0', '6', '0', '0', '0', '1', '4', '12', '0', '0', '0', '2', '0', '0');
INSERT INTO `f1_2012`.`clasificacion_pilotos` (`Posicion`, `Piloto`, `Puntos_totales`, `Australian_GP`, `Malaysian_GP`, `Chinese_GP`, `Bahrein_GP`, `Spanish_GP`, `Monaco_GP`, `Canadian_GP`, `European_GP`, `British_GP`, `German_GP`, `Hungarian_GP`, `Belgian_GP`, `Italian_GP`, `Singapore_GP`, `Japanese_GP`, `Korean_GP`, `Indian_GP`, `Abu_Dhabi_GP`, `USA_GP`, `Brazilian_GP`) VALUES (15, 'P. Maldonado', '45', '0', '0', '4', '0', '25', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '10', '2', '0');
INSERT INTO `f1_2012`.`clasificacion_pilotos` (`Posicion`, `Piloto`, `Puntos_totales`, `Australian_GP`, `Malaysian_GP`, `Chinese_GP`, `Bahrein_GP`, `Spanish_GP`, `Monaco_GP`, `Canadian_GP`, `European_GP`, `British_GP`, `German_GP`, `Hungarian_GP`, `Belgian_GP`, `Italian_GP`, `Singapore_GP`, `Japanese_GP`, `Korean_GP`, `Indian_GP`, `Abu_Dhabi_GP`, `USA_GP`, `Brazilian_GP`) VALUES (16, 'B. Senna', '31', '0', '8', '6', '0', '0', '1', '0', '1', '2', '0', '6', '0', '1', '0', '0', '0', '1', '4', '1', '0');
INSERT INTO `f1_2012`.`clasificacion_pilotos` (`Posicion`, `Piloto`, `Puntos_totales`, `Australian_GP`, `Malaysian_GP`, `Chinese_GP`, `Bahrein_GP`, `Spanish_GP`, `Monaco_GP`, `Canadian_GP`, `European_GP`, `British_GP`, `German_GP`, `Hungarian_GP`, `Belgian_GP`, `Italian_GP`, `Singapore_GP`, `Japanese_GP`, `Korean_GP`, `Indian_GP`, `Abu_Dhabi_GP`, `USA_GP`, `Brazilian_GP`) VALUES (17, 'J. Vergne', '16', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '0', '4', '0', '0', '0', '4');
INSERT INTO `f1_2012`.`clasificacion_pilotos` (`Posicion`, `Piloto`, `Puntos_totales`, `Australian_GP`, `Malaysian_GP`, `Chinese_GP`, `Bahrein_GP`, `Spanish_GP`, `Monaco_GP`, `Canadian_GP`, `European_GP`, `British_GP`, `German_GP`, `Hungarian_GP`, `Belgian_GP`, `Italian_GP`, `Singapore_GP`, `Japanese_GP`, `Korean_GP`, `Indian_GP`, `Abu_Dhabi_GP`, `USA_GP`, `Brazilian_GP`) VALUES (18, 'D. Ricciardo', '10', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '2', '1', '2', '0', '1', '0', '0');
INSERT INTO `f1_2012`.`clasificacion_pilotos` (`Posicion`, `Piloto`, `Puntos_totales`, `Australian_GP`, `Malaysian_GP`, `Chinese_GP`, `Bahrein_GP`, `Spanish_GP`, `Monaco_GP`, `Canadian_GP`, `European_GP`, `British_GP`, `German_GP`, `Hungarian_GP`, `Belgian_GP`, `Italian_GP`, `Singapore_GP`, `Japanese_GP`, `Korean_GP`, `Indian_GP`, `Abu_Dhabi_GP`, `USA_GP`, `Brazilian_GP`) VALUES (19, 'C. Pic', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `f1_2012`.`clasificacion_pilotos` (`Posicion`, `Piloto`, `Puntos_totales`, `Australian_GP`, `Malaysian_GP`, `Chinese_GP`, `Bahrein_GP`, `Spanish_GP`, `Monaco_GP`, `Canadian_GP`, `European_GP`, `British_GP`, `German_GP`, `Hungarian_GP`, `Belgian_GP`, `Italian_GP`, `Singapore_GP`, `Japanese_GP`, `Korean_GP`, `Indian_GP`, `Abu_Dhabi_GP`, `USA_GP`, `Brazilian_GP`) VALUES (20, 'P. de la Rosa', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `f1_2012`.`clasificacion_pilotos` (`Posicion`, `Piloto`, `Puntos_totales`, `Australian_GP`, `Malaysian_GP`, `Chinese_GP`, `Bahrein_GP`, `Spanish_GP`, `Monaco_GP`, `Canadian_GP`, `European_GP`, `British_GP`, `German_GP`, `Hungarian_GP`, `Belgian_GP`, `Italian_GP`, `Singapore_GP`, `Japanese_GP`, `Korean_GP`, `Indian_GP`, `Abu_Dhabi_GP`, `USA_GP`, `Brazilian_GP`) VALUES (21, 'J. d\'Ambrosio', '0', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `f1_2012`.`clasificacion_pilotos` (`Posicion`, `Piloto`, `Puntos_totales`, `Australian_GP`, `Malaysian_GP`, `Chinese_GP`, `Bahrein_GP`, `Spanish_GP`, `Monaco_GP`, `Canadian_GP`, `European_GP`, `British_GP`, `German_GP`, `Hungarian_GP`, `Belgian_GP`, `Italian_GP`, `Singapore_GP`, `Japanese_GP`, `Korean_GP`, `Indian_GP`, `Abu_Dhabi_GP`, `USA_GP`, `Brazilian_GP`) VALUES (22, 'H. Kovalainen', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `f1_2012`.`clasificacion_pilotos` (`Posicion`, `Piloto`, `Puntos_totales`, `Australian_GP`, `Malaysian_GP`, `Chinese_GP`, `Bahrein_GP`, `Spanish_GP`, `Monaco_GP`, `Canadian_GP`, `European_GP`, `British_GP`, `German_GP`, `Hungarian_GP`, `Belgian_GP`, `Italian_GP`, `Singapore_GP`, `Japanese_GP`, `Korean_GP`, `Indian_GP`, `Abu_Dhabi_GP`, `USA_GP`, `Brazilian_GP`) VALUES (23, 'V. Petrov', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `f1_2012`.`clasificacion_pilotos` (`Posicion`, `Piloto`, `Puntos_totales`, `Australian_GP`, `Malaysian_GP`, `Chinese_GP`, `Bahrein_GP`, `Spanish_GP`, `Monaco_GP`, `Canadian_GP`, `European_GP`, `British_GP`, `German_GP`, `Hungarian_GP`, `Belgian_GP`, `Italian_GP`, `Singapore_GP`, `Japanese_GP`, `Korean_GP`, `Indian_GP`, `Abu_Dhabi_GP`, `USA_GP`, `Brazilian_GP`) VALUES (24, 'T. Glock', '0', '0', '0', '0', '0', '18', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `f1_2012`.`clasificacion_pilotos` (`Posicion`, `Piloto`, `Puntos_totales`, `Australian_GP`, `Malaysian_GP`, `Chinese_GP`, `Bahrein_GP`, `Spanish_GP`, `Monaco_GP`, `Canadian_GP`, `European_GP`, `British_GP`, `German_GP`, `Hungarian_GP`, `Belgian_GP`, `Italian_GP`, `Singapore_GP`, `Japanese_GP`, `Korean_GP`, `Indian_GP`, `Abu_Dhabi_GP`, `USA_GP`, `Brazilian_GP`) VALUES (25, 'N. Karthikeyan', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

COMMIT;


-- -----------------------------------------------------
-- Data for table `f1_2012`.`escuderia`
-- -----------------------------------------------------
START TRANSACTION;
USE `f1_2012`;
INSERT INTO `f1_2012`.`escuderia` (`pos`, `team`, `PTS`, `escuderia_id`) VALUES ('1', 'Red Bull Racing Renault', '460', '1');
INSERT INTO `f1_2012`.`escuderia` (`pos`, `team`, `PTS`, `escuderia_id`) VALUES ('2', 'Ferrari', '400', '2');
INSERT INTO `f1_2012`.`escuderia` (`pos`, `team`, `PTS`, `escuderia_id`) VALUES ('3', 'McLaren Mercedes', '378', '3');
INSERT INTO `f1_2012`.`escuderia` (`pos`, `team`, `PTS`, `escuderia_id`) VALUES ('4', 'Lotus Renault', '303', '4');
INSERT INTO `f1_2012`.`escuderia` (`pos`, `team`, `PTS`, `escuderia_id`) VALUES ('5', 'Mercedes', '142', '5');
INSERT INTO `f1_2012`.`escuderia` (`pos`, `team`, `PTS`, `escuderia_id`) VALUES ('6', 'Sauber Ferrari', '126', '6');
INSERT INTO `f1_2012`.`escuderia` (`pos`, `team`, `PTS`, `escuderia_id`) VALUES ('7', 'Force India Mercedes', '109', '7');
INSERT INTO `f1_2012`.`escuderia` (`pos`, `team`, `PTS`, `escuderia_id`) VALUES ('8', 'Williams Renault', '76', '8');
INSERT INTO `f1_2012`.`escuderia` (`pos`, `team`, `PTS`, `escuderia_id`) VALUES ('9', 'STR Ferrari', '26', '9');
INSERT INTO `f1_2012`.`escuderia` (`pos`, `team`, `PTS`, `escuderia_id`) VALUES ('10', 'Caterham Renault', '0', '10');
INSERT INTO `f1_2012`.`escuderia` (`pos`, `team`, `PTS`, `escuderia_id`) VALUES ('11', 'Marussia Cosworth', '0', '11');
INSERT INTO `f1_2012`.`escuderia` (`pos`, `team`, `PTS`, `escuderia_id`) VALUES ('12', 'HRT Cosworth', '0', '12');

COMMIT;


-- -----------------------------------------------------
-- Data for table `f1_2012`.`pilotos_2012`
-- -----------------------------------------------------
START TRANSACTION;
USE `f1_2012`;
INSERT INTO `f1_2012`.`pilotos_2012` (`id_piloto`, `code`, `name`, `nationality`, `escuderia_escuderia_id`) VALUES (1, 'HAM', 'Lewis Hamilton', 'British', '3');
INSERT INTO `f1_2012`.`pilotos_2012` (`id_piloto`, `code`, `name`, `nationality`, `escuderia_escuderia_id`) VALUES (3, 'ROS', 'Nico Rosberg', 'German', '5');
INSERT INTO `f1_2012`.`pilotos_2012` (`id_piloto`, `code`, `name`, `nationality`, `escuderia_escuderia_id`) VALUES (4, 'ALO', 'Fernando Alonso', 'Spanish', '2');
INSERT INTO `f1_2012`.`pilotos_2012` (`id_piloto`, `code`, `name`, `nationality`, `escuderia_escuderia_id`) VALUES (5, 'KOV', 'Heikki Kovalainen', 'Finnish', '10');
INSERT INTO `f1_2012`.`pilotos_2012` (`id_piloto`, `code`, `name`, `nationality`, `escuderia_escuderia_id`) VALUES (8, 'RAI', 'Kimi RÃ¤ikkÃ¶nen', 'Finnish', '4');
INSERT INTO `f1_2012`.`pilotos_2012` (`id_piloto`, `code`, `name`, `nationality`, `escuderia_escuderia_id`) VALUES (10, 'GLO', 'Timo Glock', 'German', '11');
INSERT INTO `f1_2012`.`pilotos_2012` (`id_piloto`, `code`, `name`, `nationality`, `escuderia_escuderia_id`) VALUES (13, 'MAS', 'Felipe Massa', 'Brazilian', '2');
INSERT INTO `f1_2012`.`pilotos_2012` (`id_piloto`, `code`, `name`, `nationality`, `escuderia_escuderia_id`) VALUES (17, 'WEB', 'Mark Webber', 'Australian', '1');
INSERT INTO `f1_2012`.`pilotos_2012` (`id_piloto`, `code`, `name`, `nationality`, `escuderia_escuderia_id`) VALUES (18, 'BUT', 'Jenson Button', 'British', '3');
INSERT INTO `f1_2012`.`pilotos_2012` (`id_piloto`, `code`, `name`, `nationality`, `escuderia_escuderia_id`) VALUES (20, 'VET', 'Sebastian Vettel', 'German', '1');
INSERT INTO `f1_2012`.`pilotos_2012` (`id_piloto`, `code`, `name`, `nationality`, `escuderia_escuderia_id`) VALUES (30, 'MSC', 'Michael Schumacher', 'German', '5');
INSERT INTO `f1_2012`.`pilotos_2012` (`id_piloto`, `code`, `name`, `nationality`, `escuderia_escuderia_id`) VALUES (37, 'DLR', 'Pedro de la Rosa', 'Spanish', '12');
INSERT INTO `f1_2012`.`pilotos_2012` (`id_piloto`, `code`, `name`, `nationality`, `escuderia_escuderia_id`) VALUES (39, 'KAR', 'Narain Karthikeyan', 'Indian', '12');
INSERT INTO `f1_2012`.`pilotos_2012` (`id_piloto`, `code`, `name`, `nationality`, `escuderia_escuderia_id`) VALUES (154, 'GRO', 'Romain Grosjean', 'French', '4');
INSERT INTO `f1_2012`.`pilotos_2012` (`id_piloto`, `code`, `name`, `nationality`, `escuderia_escuderia_id`) VALUES (155, 'KOB', 'Kamui Kobayashi', 'Japanese', '6');
INSERT INTO `f1_2012`.`pilotos_2012` (`id_piloto`, `code`, `name`, `nationality`, `escuderia_escuderia_id`) VALUES (807, 'HUL', 'Nico HÃ¼lkenberg', 'German', '7');
INSERT INTO `f1_2012`.`pilotos_2012` (`id_piloto`, `code`, `name`, `nationality`, `escuderia_escuderia_id`) VALUES (808, 'PET', 'Vitaly Petrov', 'Russian', '10');
INSERT INTO `f1_2012`.`pilotos_2012` (`id_piloto`, `code`, `name`, `nationality`, `escuderia_escuderia_id`) VALUES (811, 'SEN', 'Bruno Senna', 'Brazilian', '8');
INSERT INTO `f1_2012`.`pilotos_2012` (`id_piloto`, `code`, `name`, `nationality`, `escuderia_escuderia_id`) VALUES (813, 'MAL', 'Pastor Maldonado', 'Venezuelan', '8');
INSERT INTO `f1_2012`.`pilotos_2012` (`id_piloto`, `code`, `name`, `nationality`, `escuderia_escuderia_id`) VALUES (814, 'DIR', 'Paul di Resta', 'British', '7');
INSERT INTO `f1_2012`.`pilotos_2012` (`id_piloto`, `code`, `name`, `nationality`, `escuderia_escuderia_id`) VALUES (815, 'PER', 'Sergio PÃ©rez', 'Mexican', '6');
INSERT INTO `f1_2012`.`pilotos_2012` (`id_piloto`, `code`, `name`, `nationality`, `escuderia_escuderia_id`) VALUES (816, 'DAM', 'JÃ©rÃ´me d\'Ambrosio', 'Belgian', '4');
INSERT INTO `f1_2012`.`pilotos_2012` (`id_piloto`, `code`, `name`, `nationality`, `escuderia_escuderia_id`) VALUES (817, 'RIC', 'Daniel Ricciardo', 'Australian', '9');
INSERT INTO `f1_2012`.`pilotos_2012` (`id_piloto`, `code`, `name`, `nationality`, `escuderia_escuderia_id`) VALUES (818, 'VER', 'Jean-Ã‰ric Vergne', 'French', '9');
INSERT INTO `f1_2012`.`pilotos_2012` (`id_piloto`, `code`, `name`, `nationality`, `escuderia_escuderia_id`) VALUES (819, 'PIC', 'Charles Pic', 'French', '11');

COMMIT;

