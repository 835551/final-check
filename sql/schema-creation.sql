-- 1. Design the schema for movie cruiser in MySQL Workbench
-- 2. Generate the SQL schema script in MySQL Workbench
-- 3. Paste the generated the SQL code here
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema movie crusier
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema movie crusier
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `movie_crusier` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `movie_crusier` ;

-- -----------------------------------------------------
-- Table `movie crusier`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movie_crusier`.`user` (
  `us_id` INT NOT NULL AUTO_INCREMENT,
  `us_name` VARCHAR(60) NULL,
  PRIMARY KEY (`us_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movie crusier`.`movie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movie_crusier`.`movie` (
  `m_id` INT NOT NULL AUTO_INCREMENT,
  `m_title` VARCHAR(100) NULL,
  `m_box_office` DECIMAL(15) NULL,
  `m_active` VARCHAR(3) NULL,
  `m_date_of_launch` DATE NULL,
  `m_genre` VARCHAR(45) NULL,
  `m_has_teaser` VARCHAR(3) NULL,
  PRIMARY KEY (`m_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movie crusier`.`favorite`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movie_crusier`.`favorite` (
  `fv_id` INT NOT NULL AUTO_INCREMENT,
  `fv_us_id` INT NULL,
  `fv_pr_id` INT NULL,
  PRIMARY KEY (`fv_id`),
  INDEX `fv_us_fk_idx` (`fv_us_id` ASC),
  INDEX `fv_pr_fk_idx` (`fv_pr_id` ASC),
  CONSTRAINT `fv_us_fk`
    FOREIGN KEY (`fv_us_id`)
    REFERENCES `movie_crusier`.`user` (`us_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fv_pr_fk`
    FOREIGN KEY (`fv_pr_id`)
    REFERENCES `movie_crusier`.`movie` (`m_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
