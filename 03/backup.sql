-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema Tourplaner
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Tourplaner
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Tourplaner` DEFAULT CHARACTER SET utf8mb3 ;
USE `Tourplaner` ;

-- -----------------------------------------------------
-- Table `Tourplaner`.`Mitarbeiter`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Tourplaner`.`Mitarbeiter` (
  `Mitarbeiter_id` INT NOT NULL,
  `Vorname` VARCHAR(45) NOT NULL,
  `Nachname` VARCHAR(45) NOT NULL,
  `Telefonnummer` VARCHAR(45) NOT NULL,
  `boss` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Mitarbeiter_id`),
  INDEX `boss` (`boss` ASC) VISIBLE,
  CONSTRAINT `Mitarbeiter_ibfk_1`
    FOREIGN KEY (`boss`)
    REFERENCES `Tourplaner`.`Mitarbeiter` (`Mitarbeiter_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `Tourplaner`.`Disponent`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Tourplaner`.`Disponent` (
  `Disponent_id` INT NOT NULL,
  `FK_Mitarbeiter` INT NOT NULL,
  `Disponentennummer` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Disponent_id`, `FK_Mitarbeiter`),
  INDEX `fk_Disponent_Mitarbeiter1_idx` (`FK_Mitarbeiter` ASC) VISIBLE,
  CONSTRAINT `fk_Disponent_Mitarbeiter1`
    FOREIGN KEY (`FK_Mitarbeiter`)
    REFERENCES `Tourplaner`.`Mitarbeiter` (`Mitarbeiter_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `Tourplaner`.`Fahrer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Tourplaner`.`Fahrer` (
  `Fahrer_id` INT NOT NULL,
  `FK_Mitarbeiter` INT NOT NULL,
  `Fahrernummer` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Fahrer_id`, `FK_Mitarbeiter`),
  INDEX `fk_Fahrer_Mitarbeiter_idx` (`FK_Mitarbeiter` ASC) VISIBLE,
  CONSTRAINT `fk_Fahrer_Mitarbeiter`
    FOREIGN KEY (`FK_Mitarbeiter`)
    REFERENCES `Tourplaner`.`Mitarbeiter` (`Mitarbeiter_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `Tourplaner`.`Fahrzeug`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Tourplaner`.`Fahrzeug` (
  `Fahrzeugkennzeichner` VARCHAR(45) NOT NULL,
  `Sitz_Plaeze` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Fahrzeugkennzeichner`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `Tourplaner`.`Ortschaft`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Tourplaner`.`Ortschaft` (
  `Ortschaft_id` INT NOT NULL,
  `PLZ` VARCHAR(45) NOT NULL,
  `Beschriftung` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Ortschaft_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `Tourplaner`.`Station`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Tourplaner`.`Station` (
  `Station_id` INT NOT NULL,
  `FK_Ortschaft` INT NOT NULL,
  PRIMARY KEY (`Station_id`, `FK_Ortschaft`),
  INDEX `fk_Station_Ortschaft1_idx` (`FK_Ortschaft` ASC) VISIBLE,
  CONSTRAINT `fk_Station_Ortschaft1`
    FOREIGN KEY (`FK_Ortschaft`)
    REFERENCES `Tourplaner`.`Ortschaft` (`Ortschaft_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `Tourplaner`.`Tour`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Tourplaner`.`Tour` (
  `Tour_id` INT NOT NULL,
  `FK_Fahrzeug` VARCHAR(45) NOT NULL,
  `FK_Disponent` INT NOT NULL,
  `FK_Start` INT NULL DEFAULT NULL,
  `FK_End` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Tour_id`),
  INDEX `fk_Tour_Fahrzeug1_idx` (`FK_Fahrzeug` ASC) VISIBLE,
  INDEX `fk_Tour_Disponent1_idx` (`FK_Disponent` ASC) VISIBLE,
  INDEX `FK_Start` (`FK_Start` ASC) VISIBLE,
  INDEX `FK_End` (`FK_End` ASC) VISIBLE,
  CONSTRAINT `fk_Tour_Disponent1`
    FOREIGN KEY (`FK_Disponent`)
    REFERENCES `Tourplaner`.`Disponent` (`Disponent_id`),
  CONSTRAINT `fk_Tour_Fahrzeug1`
    FOREIGN KEY (`FK_Fahrzeug`)
    REFERENCES `Tourplaner`.`Fahrzeug` (`Fahrzeugkennzeichner`),
  CONSTRAINT `Tour_ibfk_1`
    FOREIGN KEY (`FK_Start`)
    REFERENCES `Tourplaner`.`Ortschaft` (`Ortschaft_id`),
  CONSTRAINT `Tour_ibfk_2`
    FOREIGN KEY (`FK_End`)
    REFERENCES `Tourplaner`.`Ortschaft` (`Ortschaft_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `Tourplaner`.`Stop_in_tour`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Tourplaner`.`Stop_in_tour` (
  `FK_Tour` INT NOT NULL,
  `FK_Station` INT NOT NULL,
  `FK_Fahrer` INT NOT NULL,
  PRIMARY KEY (`FK_Tour`, `FK_Station`),
  INDEX `fk_Tour_has_Station_Station1_idx` (`FK_Station` ASC) VISIBLE,
  INDEX `fk_Tour_has_Station_Tour1_idx` (`FK_Tour` ASC) VISIBLE,
  INDEX `fk_Stop_in_tour_Fahrer1_idx` (`FK_Fahrer` ASC) VISIBLE,
  CONSTRAINT `fk_Stop_in_tour_Fahrer1`
    FOREIGN KEY (`FK_Fahrer`)
    REFERENCES `Tourplaner`.`Fahrer` (`Fahrer_id`),
  CONSTRAINT `fk_Tour_has_Station_Station1`
    FOREIGN KEY (`FK_Station`)
    REFERENCES `Tourplaner`.`Station` (`Station_id`),
  CONSTRAINT `fk_Tour_has_Station_Tour1`
    FOREIGN KEY (`FK_Tour`)
    REFERENCES `Tourplaner`.`Tour` (`Tour_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `Tourplaner`.`hierarchy`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Tourplaner`.`hierarchy` (
  `FK_Boss` INT NOT NULL,
  `FK_Mitarbeiter` INT NOT NULL,
  PRIMARY KEY (`FK_Boss`, `FK_Mitarbeiter`),
  INDEX `FK_Mitarbeiter` (`FK_Mitarbeiter` ASC) VISIBLE,
  CONSTRAINT `hierarchy_ibfk_1`
    FOREIGN KEY (`FK_Boss`)
    REFERENCES `Tourplaner`.`Mitarbeiter` (`Mitarbeiter_id`),
  CONSTRAINT `hierarchy_ibfk_2`
    FOREIGN KEY (`FK_Mitarbeiter`)
    REFERENCES `Tourplaner`.`Mitarbeiter` (`Mitarbeiter_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `Tourplaner`.`tbl_ma`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Tourplaner`.`tbl_ma` (
  `disponent_id` INT NULL DEFAULT NULL,
  `fahrer_id` INT NULL DEFAULT NULL,
  `Name` VARCHAR(45) NULL DEFAULT NULL,
  INDEX `disponent_id` (`disponent_id` ASC) VISIBLE,
  INDEX `fahrer_id` (`fahrer_id` ASC) VISIBLE,
  CONSTRAINT `tbl_ma_ibfk_1`
    FOREIGN KEY (`disponent_id`)
    REFERENCES `Tourplaner`.`Disponent` (`Disponent_id`),
  CONSTRAINT `tbl_ma_ibfk_2`
    FOREIGN KEY (`fahrer_id`)
    REFERENCES `Tourplaner`.`Fahrer` (`Fahrer_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
