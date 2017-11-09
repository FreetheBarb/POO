-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Recetas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Recetas` (
  `idRecetas` INT NOT NULL AUTO_INCREMENT,
  `Descripcion_recetas` VARCHAR(1000) NULL DEFAULT 'Esta comida no requiere procedimiento',
  PRIMARY KEY (`idRecetas`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Ingredientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Ingredientes` (
  `idIngredientes` INT NOT NULL AUTO_INCREMENT,
  `Descripcion_Ingrediente` VARCHAR(45) NULL,
  PRIMARY KEY (`idIngredientes`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tipo_Comidas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tipo_Comidas` (
  `idTipo_Comida` INT NOT NULL AUTO_INCREMENT,
  `Tipo_ComidasDescripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idTipo_Comida`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Comidas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Comidas` (
  `idComidas` INT NOT NULL AUTO_INCREMENT,
  `Tipo_Comidas_idTipo_Comida` INT NOT NULL,
  `Recetas_idRecetas` INT NOT NULL,
  `Comidas_calorias` INT NULL,
  `Comidas_Proteinas` INT NULL,
  `Comidas_Carbohidratos` INT NULL,
  `Comidas_GrasasTotales` INT NULL,
  `Comidas_Indice_Mandarina` INT NULL,
  `Comidas_Descripcion` VARCHAR(1000) NULL,
  `Comidas_sal` INT NULL,
  PRIMARY KEY (`idComidas`),
  INDEX `fk_Comidas_Tipo_Comidas_idx` (`Tipo_Comidas_idTipo_Comida` ASC),
  INDEX `fk_Comidas_Recetas1_idx` (`Recetas_idRecetas` ASC),
  CONSTRAINT `fk_Comidas_Tipo_Comidas`
    FOREIGN KEY (`Tipo_Comidas_idTipo_Comida`)
    REFERENCES `mydb`.`Tipo_Comidas` (`idTipo_Comida`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Comidas_Recetas1`
    FOREIGN KEY (`Recetas_idRecetas`)
    REFERENCES `mydb`.`Recetas` (`idRecetas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Comidas_Ingredientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Comidas_Ingredientes` (
  `idComidas_Ingredientes` INT NOT NULL AUTO_INCREMENT,
  `Ingredientes_idIngredientes` INT NOT NULL,
  `Comidas_idComidas` INT NOT NULL,
  PRIMARY KEY (`idComidas_Ingredientes`),
  INDEX `fk_Comidas_Ingredientes_Ingredientes1_idx` (`Ingredientes_idIngredientes` ASC),
  INDEX `fk_Comidas_Ingredientes_Comidas1_idx` (`Comidas_idComidas` ASC),
  CONSTRAINT `fk_Comidas_Ingredientes_Ingredientes1`
    FOREIGN KEY (`Ingredientes_idIngredientes`)
    REFERENCES `mydb`.`Ingredientes` (`idIngredientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Comidas_Ingredientes_Comidas1`
    FOREIGN KEY (`Comidas_idComidas`)
    REFERENCES `mydb`.`Comidas` (`idComidas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
