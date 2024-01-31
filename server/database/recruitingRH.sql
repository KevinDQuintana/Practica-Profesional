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
	`image_id` INT UNSIGNED,
	PRIMARY KEY (`applicant_id`),
	UNIQUE INDEX `phone_number_UNIQUE` (`phone_number` ASC),
	UNIQUE INDEX `email_UNIQUE` (`email` ASC),
	UNIQUE INDEX `linkedin_url_UNIQUE` (`linkedin_url` ASC),
	INDEX `fk_applicants_professions_idx` (`profession_id` ASC),
	INDEX `fk_applicants_profile_images1_idx` (`image_id` ASC),
	CONSTRAINT `fk_applicants_professions`
		FOREIGN KEY (`profession_id`)
		REFERENCES `recruitingRH`.`professions` (`profession_id`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT `fk_applicants_profile_images`
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
VALUES	('Abogado'),
		('Administrador'),
		('Arquitecto'),
		('Botanico'),
		('Computista'),
		('Economista'),
		('Linguista'),
		('Profesor'),
		('Tecnico de Sonido');

INSERT INTO applicants
	(first_name, last_name, birth_date, dni, gender, phone_number, email, linkedin_url, profession_id, image_id)
VALUES
	('Rocio', 'Carle', '1988-03-25', '45678901', 'Female', '+3344556677', 'rocio@email.com', 'https://linkedin.com/rocio', 8, 4),
	('Daniel', 'Fuentes', '1985-05-20', '87654321', 'Male', '+9876543210', 'daniel@email.com', 'https://linkedin.com/daniel', 9, 2),
	('Luis', 'Fuentes', '1982-07-12', '23456789', 'Male', '+6677889900', 'luis@email.com', 'https://linkedin.com/luis', 6, 6),
	('Victor', 'Fuentes', '1992-11-05', '56789012', 'Male', '+9988776655', 'victor@email.com', 'https://linkedin.com/victor', 5, 5),
	('María', 'Gomez', '1995-12-03', '98765432', 'Female', '+1122334655', 'maria@email.com', 'https://linkedin.com/maria', 1, null),
	('Carlos', 'Martínez', '1980-09-18', '34567890', 'Male', '+6677888900', 'carlos@email.com', 'https://linkedin.com/carlos', 2, null),
	('Gloria', 'Medina', '1990-01-15', '12345678', 'Female', '+1234567890', 'gloria@email.com', 'https://linkedin.com/gloria', 2, 1),
	('Tim', 'Tim', '2000-08-10', '98765432', 'Female', '+1122334455', 'tim@email.com', 'https://linkedin.com/tim', 7, 3);
