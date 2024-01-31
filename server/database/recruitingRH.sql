SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

DROP SCHEMA IF EXISTS `recruitingRH` ;

CREATE SCHEMA IF NOT EXISTS `recruitingRH` DEFAULT CHARACTER SET utf8 ;
USE `recruitingRH` ;

CREATE TABLE IF NOT EXISTS `recruitingRH`.`applicants` (
  `applicant_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `birth_date` VARCHAR(45) NOT NULL,
  `dni` VARCHAR(8) NOT NULL,
  `gender` VARCHAR(10) NOT NULL,
  `phone_number` VARCHAR(15) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `linkedin_url` VARCHAR(255) NOT NULL,
  `profession_id` INT UNSIGNED NOT NULL,
  `image_id` INT UNSIGNED NOT NULL,
  `profile_images_image_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`applicant_id`),
  UNIQUE INDEX `phone_number_UNIQUE` (`phone_number`),
  UNIQUE INDEX `email_UNIQUE` (`email`),
  UNIQUE INDEX `linkedin_url_UNIQUE` (`linkedin_url`),
  INDEX `fk_applicants_professions_idx` (`profession_id`),
  INDEX `fk_applicants_profile_images1_idx` (`image_id`),
  CONSTRAINT `fk_applicants_professions`
    FOREIGN KEY (`profession_id`)
    REFERENCES `recruitingRH`.`professions` (`profession_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_applicants_profile_images1`
    FOREIGN KEY (`image_id`)
    REFERENCES `recruitingRH`.`profile_images` (`image_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `recruitingRH`.`professions` (
  `profession_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `profession_name` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`profession_id`),
  UNIQUE INDEX `profession_name_UNIQUE` (`profession_name` ASC))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `recruitingRH`.`profile_images` (
  `image_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `image_name` VARCHAR(36) NULL,
  PRIMARY KEY (`image_id`))
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

INSERT INTO professions (profession_name)
VALUES	(Abogado),
		(Arquitecto),
		(Botanico),
        (Computista),
        (Economista),
        (Linguista),
        (Profesor),
        (Tecnico de Sonido);
