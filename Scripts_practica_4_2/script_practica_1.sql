SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema bb_prueba
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bb_prueba` DEFAULT CHARACTER SET latin1 ;
USE `bb_prueba` ;

-- -----------------------------------------------------
-- Table `bb_prueba`.`personajes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bb_prueba`.`personajes` (
  `idCH` INT(2) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(30) CHARACTER SET 'latin1' NOT NULL,
  `health` INT(5) NOT NULL,
  `dash_type` VARCHAR(20) CHARACTER SET 'latin1' NOT NULL,
  `jump_startup` INT(1) NOT NULL,
  `n_jumps` INT(1) NOT NULL,
  `n_air_dash` INT(1) NOT NULL,
  `combo_prorate` INT(3) NOT NULL,
  `combo_prorate_additional` INT(2) NULL DEFAULT NULL,
  `backdash_full_time` INT(2) NOT NULL,
  `backdash_full_time_additional` INT(2) NULL DEFAULT NULL,
  `backdash_invul_start` INT(2) NOT NULL,
  `backdash_invul_start_additional` INT(2) NULL DEFAULT NULL,
  `backdash_invul_end` INT(2) NOT NULL,
  `backdash_invul_end_additional` INT(2) NULL DEFAULT NULL,
  PRIMARY KEY (`idCH`))
ENGINE = InnoDB
AUTO_INCREMENT = 24
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_spanish_ci;


-- -----------------------------------------------------
-- Table `bb_prueba`.`movimientos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bb_prueba`.`movimientos` (
  `idmov` INT(3) NOT NULL AUTO_INCREMENT,
  `input` VARCHAR(10) CHARACTER SET 'latin1' COLLATE 'latin1_spanish_ci' NOT NULL,
  `namemove` VARCHAR(50) CHARACTER SET 'latin1' COLLATE 'latin1_spanish_ci' NOT NULL,
  `cancel` VARCHAR(8) CHARACTER SET 'latin1' COLLATE 'latin1_spanish_ci' NOT NULL,
  `starter` VARCHAR(1) CHARACTER SET 'latin1' COLLATE 'latin1_spanish_ci' NOT NULL,
  `guard` VARCHAR(8) CHARACTER SET 'latin1' COLLATE 'latin1_spanish_ci' NOT NULL,
  `level` INT(1) NOT NULL,
  `attribute` VARCHAR(5) CHARACTER SET 'latin1' COLLATE 'latin1_spanish_ci' NOT NULL,
  `startup` INT(3) NOT NULL,
  `active` INT(3) NOT NULL,
  `recovery` INT(3) NOT NULL,
  `frameadv_type` VARCHAR(1) CHARACTER SET 'latin1' COLLATE 'latin1_spanish_ci' NOT NULL,
  `frameadv_num` INT(3) NOT NULL,
  `invul_start` INT(3) NOT NULL,
  `invul_end` INT(3) NOT NULL,
  `invul_where` VARCHAR(5) CHARACTER SET 'latin1' COLLATE 'latin1_spanish_ci' NOT NULL,
  `personajes_idCH` INT(2) NOT NULL,
  PRIMARY KEY (`idmov`, `personajes_idCH`),
  INDEX `fk_movimientos_personajes_idx` (`personajes_idCH` ASC),
  CONSTRAINT `fk_movimientos_personajes`
    FOREIGN KEY (`personajes_idCH`)
    REFERENCES `bb_prueba`.`personajes` (`idCH`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_spanish_ci;

INSERT INTO `personajes` (`idCH`, `name`, `health`, `dash_type`, `jump_startup`, `n_jumps`, `n_air_dash`, `combo_prorate`, `combo_prorate_additional`, `backdash_full_time`, `backdash_full_time_additional`, `backdash_invul_start`, `backdash_invul_start_additional`, `backdash_invul_end`, `backdash_invul_end_additional`) VALUES
(1, 'Ragna', 10000, 'Run', 4, 2, 1, 70, NULL, 20, NULL, 1, NULL, 5, NULL),
(2, 'Jin', 11500, 'Run', 4, 2, 1, 70, 0, 22, NULL, 1, NULL, 5, NULL),
(3, 'Noel', 11000, 'Run', 4, 2, 1, 80, NULL, 18, NULL, 1, NULL, 5, NULL),
(4, 'Rachel', 11000, 'Run', 4, 2, 1, 70, NULL, 23, NULL, 1, NULL, 7, NULL),
(5, 'Litchi', 11000, 'Run', 4, 2, 1, 70, 60, 21, 43, 1, 1, 5, 19),
(6, 'Bang', 11500, 'Run', 4, 2, 2, 80, 0, 36, 0, 1, 0, 9, 0),
(7, 'Tager', 13000, 'no_dash', 6, 1, 0, 60, NULL, 23, NULL, 1, NULL, 19, NULL),
(8, 'Carl', 9500, 'Step', 4, 2, 1, 70, NULL, 20, NULL, 1, NULL, 7, NULL),
(9, 'Taokaka', 9500, 'Run', 4, 3, 2, 85, NULL, 18, NULL, 1, NULL, 7, NULL),
(10, 'Arakune', 10500, 'Teleport', 5, 2, 2, 80, NULL, 37, NULL, 1, NULL, 26, NULL),
(11, 'Hakumen', 12000, 'Step', 4, 2, 1, 60, 30, 15, NULL, 0, NULL, 0, NULL),
(12, 'V-13', 10000, 'Run', 4, 2, 1, 70, NULL, 25, NULL, 1, NULL, 5, NULL),
(13, 'Hazama', 11000, 'Step', 4, 2, 1, 70, NULL, 25, NULL, 1, NULL, 6, NULL),
(14, 'Tsubaki', 11000, 'Run', 4, 2, 1, 70, NULL, 20, NULL, 1, NULL, 5, NULL),
(15, 'Mu-12', 10000, 'Run', 4, 2, 1, 80, NULL, 25, NULL, 1, NULL, 5, NULL),
(16, 'Makoto', 11000, 'Run', 4, 2, 1, 70, NULL, 20, NULL, 1, NULL, 5, NULL),
(17, 'Valkenhayn', 10500, 'Step', 4, 2, 1, 70, 80, 13, NULL, 1, 1, 5, 10),
(18, 'Platinum', 10500, 'Run', 4, 2, 1, 70, NULL, 22, NULL, 1, NULL, 7, NULL),
(19, 'Relius', 11000, 'Run', 4, 2, 1, 70, NULL, 13, NULL, 1, NULL, 7, NULL),
(20, 'Bullet', 11000, 'Step', 4, 2, 1, 65, NULL, 26, NULL, 1, NULL, 9, NULL),
(21, 'Azrael', 12000, 'Teleport', 4, 2, 1, 90, NULL, 26, NULL, 1, NULL, 20, NULL),
(22, 'Amane', 10000, 'Run', 4, 2, 1, 80, NULL, 20, NULL, 1, NULL, 5, NULL),
(23, 'Izayoi', 11000, 'Run/Hover-dash', 4, 2, 1, 90, 80, 20, NULL, 1, NULL, 5, NULL);

INSERT INTO `bb_prueba`.`movimientos` (`idmov`, `input`, `namemove`, `cancel`, `starter`, `guard`,
`level`, `attribute`, `startup`, `active`, `recovery`, `frameadv_type`, `frameadv_num`, 
`invul_start`, `invul_end`, `invul_where`, `personajes_idCH`)VALUES 
(NULL, '5A', '5A', 'CSOJR', 'S', 'ALL', '1', 'B', '5', '3', '9', '+', '0', '0', '0', 'None', '1'),
(NULL, '5B', '5B', 'SOR', 'N', 'HL', '3', 'B', '8', '8', '16', '-', '7', '0', '0', 'None', '1'),
(NULL, '5C', '5C', 'SO(J)R', 'N', 'HL', '4', 'B', '13', '4', '20', '-', '5', '0', '0', 'None', '1'),
(NULL, '2A', '2A', 'CSOR', 'S', 'ALL', '1', 'F', '7', '2', '10', '+', '0', '0', '0', 'None', '1'),
(NULL, '2B', '2B', 'SOR', 'N', 'L', '2', 'F', '9', '2', '15', '-', '3', '0', '0', 'None', '1'),
(NULL, '2C', '2C', 'SOR', 'N', 'HL', '3', 'F', '12', '3', '13', '+', '1', '0', '0', 'None', '1'),
(NULL, '6A', '6A', 'SO(J)R', 'N', 'HL', '3', 'B', '13', '4', '24', '-', '11', '4', '13', 'Head', '1'),
(NULL, '6B', '6B', 'SOR', 'N', 'H', '3', 'B', '24', '4', '19', '-', '6', '0', '0', 'None', '1'),
(NULL, '6C', '6C', 'SOJR', 'N', 'L, HL', '4', 'F,B', '20', '2', '33', '-', '16', '0', '0', 'None', '1'),
(NULL, '3C', '3C', 'SOJR', 'N', 'L', '4', 'F', '12', '3', '27', '-', '-11', '0', '0', 'None', '1'),
(NULL, '6AB', 'Counter Assault', 'R', 'VS', 'ALL', '4', 'B', '13', '3', '32', '-', '16', '1', '20', 'ALL', '1'),
(NULL, 'AB', 'Crush Trigger', 'R', 'N', 'B', '3', 'B', '30', '1', '23', '+', '2', '0', '0', 'None', '1'),
(NULL, '5D-1', '5D', 'SOR', 'N', 'HL', '5', 'B', '15', '5', '12', '-', '12', '0', '0', 'None', '1'),
(NULL, '5D-2', '5D', 'SOR', 'N', 'ALL', '5', 'B', '12', '3', '29', '-', '11', '0', '0', 'None', '1'),
(NULL, '2D', '2D', 'R', 'N', 'L', '5', 'F', '18', '2', '23', '-', '4', '0', '0', 'None', '1'),
(NULL, '6D', '6D', 'SOJR', 'N', 'HL', '5', 'H', '26', '3', '30', '-', '12', '0', '0', 'None', '1'),
(NULL, 'AC', 'FThrow', 'SOR', 'S', 'T', '4', 'T', '7', '3', '19', '-', '0', '0', '0', 'None', '1'),
(NULL, '4AC', 'BThrow', 'SOR', 'S', 'T', '4', 'T', '7', '3', '19', '-', '0', '0', '0', 'None', '1'),
(NULL, '8AC', 'AThrow', 'SOR', 'S', 'T', '4', 'T', '7', '3', '18', '-', '0', '0', '0', 'None', '1'),
(NULL, '214A', 'Hell Fang', 'R', 'N', 'ALL', '4', 'B', '15', '13', '28', '-', '4', '0', '0', 'None', '1'),
(NULL, '214D', 'F_Hell Fang', 'R', 'N', 'ALL', '4', 'B', '9', '3', '35', '-', '19', '0', '0', 'None', '1'),
(NULL, '623C', 'C_Inferno Divider', 'R', 'S', 'HL', '4', 'B', '9', '13', '39', '-', '28', '1', '17', 'ALL', '1'),
(NULL, 'j.623C', 'Aerial_C_Inferno Divider', 'R', 'S', 'HL', '4', 'B', '5', '13', '19', '+', '0', '1', '13', 'ALL', '1'),
(NULL, '623D', 'D_Inferno Divider', 'R', 'N', 'HL,ALL', '4', 'B', '7', '13', '51', '-', '40', '0', '0', 'None', '1'),
(NULL, 'j.623D', 'Aerial_D_Inferno Divider', 'R', 'N', 'ALL', '4', 'H', '7', '13', '19', '+', '0', '0', '0', 'None', '1'),
(NULL, '214B', 'Gauntlet Hades', 'R', 'S', 'HA', '4', 'H', '20', '7', '27', '-', '11', '0', '0', 'None', '1'),
(NULL, 'j.214B', 'Aerial_Gauntlet Hades', 'R', 'S', 'HA', '4', 'H', '12', '9', '15', '+', '0', '0', '0', 'None', '1'),
(NULL, 'j.214D', 'F_Gauntlet Hades', 'R', 'S', 'ALL', '4', 'H', '9', '3', '12', '+', '0', '0', '0', 'None', '1'),
(NULL, '236D', 'Dead Spike', 'RDa', 'N', 'ALL', '4', 'HBFP', '26', '13', '57', '-', '1', '0', '0', 'None', '1'),
(NULL, 'j.214C', 'Bellial Edge', 'R', 'N', 'ALL', '4', 'H', '15', '5', '16', '+', '1', '0', '0', 'None', '1'),
(NULL, '214D', 'Blood Scythe', 'R', 'N', 'ALL', '5', 'H', '37', '3', '13', '+', '5', '0', '0', 'None', '1'),
(NULL, 'j.214D', 'Aerial_Blood Scythe', 'R', 'N', 'ALL', '4', 'H', '19', '4', '18', '+', '0', '0', '0', 'None', '1'),
(NULL, '632146D', 'Carnage Scissors', 'R', 'N', 'ALL', '4', 'B', '16', '6', '58', '-', '43', '1', '14', 'ALL', '1'),
(NULL, '214214D', 'Devoured by Darkness', 'R', 'VS', 'ALL', '4', 'B', '25', '3', '56', '-', '40', '1', '16', 'ALL', '1'),
(NULL, '214236C', 'Black Onslaught', 'None', 'None', 'ALL', '5', 'B', '28', '2', '25', '-', '12', '1', '29', 'ALL', '1'),
(NULL, '5A', '5A', 'CSOJR', 'S', 'ALL', '0', 'B', '6', '3', '9', '-', '2', '0', '0', 'None', '2'),
(NULL, '5B', '5B', 'SO(J)R', 'N', 'HL', '2', 'B', '7', '5', '19', '-', '6', '0', '0', 'None', '2'),
(NULL, '5C', '5C', 'SOJR', 'N', 'HL', '3', 'B', '10', '4', '19', '-', '6', '0', '0', 'None', '2'),
(NULL, '2A', '2A', 'CSOJR', 'S', 'ALL', '0', 'F', '7', '3', '8', '-', '1', '0', '0', 'None', '2'),
(NULL, '2B', '2B', 'SOJ(J)R', 'N', 'L', '2', 'F', '9', '1', '16', '-', '3', '0', '0', 'None', '2'),
(NULL, '2C', '2C', 'SOJR', 'N', 'HL', '3', 'B', '17', '3', '24', '-', '10', '9', '19', 'H', '2'),
(NULL, '6A', '6A', 'R', 'N', 'H', '4', 'B', '19', '3', '20', '-', '4', '0', '0', 'None', '2'),
(NULL, '6B', '6B', 'SOR', 'N', 'ALL', '4', 'H', '25', '2', '14', '+', '3', '4', '18', 'F', '2'),
(NULL, '6C', '6C', 'SOR', 'N', 'HL', '5', 'B', '19', '3', '31', '-', '13', '0', '0', 'None', '2'),
(NULL, '3C', '3C', 'SOR', 'N', 'L', '3', 'F', '10', '3', '29', '-', '15', '0', '0', 'None', '2'),
(NULL, '6AB', 'Counter Assault', 'R', 'VS', 'ALL', '4', 'B', '13', '5', '37', '-', '23', '1', '20', 'ALL', '2'),
(NULL, 'AB', 'Crush Trigger', 'R', 'N', 'B', '3', 'B', '30', '1', '27', '+', '2', '0', '0', 'None', '2'),
(NULL, '5D', '5D', 'DrRDa', 'N', 'ALL', '4', 'HBFP', '17', '8', '20', '-', '9', '0', '0', 'None', '2'),
(NULL, '2D', '2D', 'R', 'N', 'ALL', '4', 'HBFP*', '22', '3', '35', '+', '3', '0', '0', 'None', '2'),
(NULL, '6D', '6D', 'R', 'N', 'ALL', '4', 'HBFP', '35', '6', '25', '+', '12', '0', '0', 'None', '2'),
(NULL, '236D', 'Hishougeki(no_charge)', 'R', 'S', 'ALL', '4', 'HBFP*', '19', '1', '68', '-', '13', '0', '0', 'None', '2'),
(NULL, '236D', 'Hishougeki(charge)', 'R', 'S', 'ALL', '4', 'HBFP*', '42', '1', '72', '+', '30', '0', '0', 'None', '2'),
(NULL, '623D', 'Hirensou', 'R', 'N', 'HL', '4', 'B', '13', '5', '42', '-', '24', '1', '15', 'ALL', '2'),
(NULL, '214D', 'Musou Tousshougeki(1)', 'R', 'N', 'LA', '4', 'F', '17', '24', '9', '-', '10', '0', '0', 'None', '2'),
(NULL, '214D~C', 'Musou Tousshougeki(2)', 'R', 'N', 'ALL', '4', 'H', '17', '3', '27', '-', '11', '0', '0', 'None', '2'),
(NULL, '6AC', 'FThrow', 'SOR', 'S', 'T', '4', 'T', '7', '5', '15', '+', '0', '0', '0', 'None', '2'),
(NULL, '4AC', 'BThrow', 'SOR', 'S', 'T', '4', 'T', '7', '5', '15', '+', '0', '0', '0', 'None', '2'),
(NULL, '8AC', 'AThrow', 'SOR', 'S', 'T', '0', 'T', '7', '3', '21', '+', '0', '0', '0', 'None', '2'),
(NULL, '236A', 'Hishouken', 'R', 'N', 'ALL', '3', 'HBFP*', '14', '1', '44', '-', '6', '0', '0', 'None', '2'),
(NULL, '623B', 'Fubuki', 'R', 'N', 'HL', '4', 'B', '6', '3', '33', '-', '17', '4', '8', 'H', '2'),
(NULL, '623C', 'Rehhyou', 'R', 'S', 'HL', '4', 'B', '20', '3', '56', '-', '40', '1', '22', 'ALL', '2'),
(NULL, '214B', 'Musou Senshouzan(1)', 'R', 'N', 'LA', '4', 'F', '17', '9', '7', '-', '8', '0', '0', 'None', '2'),
(NULL, '214B~C', 'Musou Senshouzan(2)', 'R', 'N', 'ALL', '4', 'H', '15', '6', '25', '-', '12', '0', '0', 'None', '2'),
(NULL, '22C', 'Sekkajin', 'None', 'N', 'ALL', '3', 'B', '8', '8', '29', '-', '17', '0', '0', 'None', '2'),
(NULL, '632146C', 'Touga Hyojin', 'R', 'N', 'ALL', '4', 'HBFP*', '9', '1', '44', '-', '16', '1', '2', 'ALL', '2'),
(NULL, '632146D', 'Hiyoku Getsumei', 'R', 'N', 'HL', '4', 'HBFP', '10', '1', '63', '-', '35', '1', '11', 'ALL', '2');

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
