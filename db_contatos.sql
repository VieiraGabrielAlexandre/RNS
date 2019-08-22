

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema contatos
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema contatos
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `contatos` DEFAULT CHARACTER SET utf8 ;
USE `contatos` ;

-- -----------------------------------------------------
-- Table `contatos`.`pessoas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `contatos`.`pessoas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(200) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `contatos`.`pessoaContatos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `contatos`.`pessoaContatos` (
  `idPessoa` INT NOT NULL,
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `tipo` INT NULL,
  `contato` VARCHAR(200) NULL,
  PRIMARY KEY (`idPessoa`, `id`),
  INDEX `fk_contatos_pessoas_idx` (`idPessoa` ASC),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  UNIQUE INDEX `idPessoa_UNIQUE` (`idPessoa` ASC),
  CONSTRAINT `fk_contatos_pessoas`
    FOREIGN KEY (`idPessoa`)
    REFERENCES `contatos`.`pessoas` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
