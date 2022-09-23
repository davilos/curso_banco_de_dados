-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema farmacia
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema farmacia
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `farmacia` DEFAULT CHARACTER SET utf8 ;
USE `farmacia` ;

-- -----------------------------------------------------
-- Table `farmacia`.`tipos_de_produtos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `farmacia`.`tipos_de_produtos` ;

CREATE TABLE IF NOT EXISTS `farmacia`.`tipos_de_produtos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `farmacia`.`fabricantes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `farmacia`.`fabricantes` ;

CREATE TABLE IF NOT EXISTS `farmacia`.`fabricantes` (
  `id` INT NOT NULL,
  `fabricante` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `farmacia`.`produtos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `farmacia`.`produtos` ;

CREATE TABLE IF NOT EXISTS `farmacia`.`produtos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `produto` VARCHAR(45) NOT NULL,
  `designacao` VARCHAR(200) NOT NULL,
  `composicao` VARCHAR(200) NOT NULL,
  `preco_venda` DECIMAL(8,2) NOT NULL,
  `id_fabricante` INT NOT NULL,
  `id_tipo_produto` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_produtos_1_idx` (`id_tipo_produto` ASC),
  INDEX `fk_produtos_2_idx` (`id_fabricante` ASC),
  CONSTRAINT `fk_produtos_1`
    FOREIGN KEY (`id_tipo_produto`)
    REFERENCES `farmacia`.`tipos_de_produtos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_produtos_2`
    FOREIGN KEY (`id_fabricante`)
    REFERENCES `farmacia`.`fabricantes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `farmacia`.`clientes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `farmacia`.`clientes` ;

CREATE TABLE IF NOT EXISTS `farmacia`.`clientes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `endereco` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(45) NOT NULL,
  `cep` VARCHAR(15) NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `cpf` VARCHAR(14) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `farmacia`.`compras`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `farmacia`.`compras` ;

CREATE TABLE IF NOT EXISTS `farmacia`.`compras` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `data` DATE NOT NULL,
  `id_cliente` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_produtos_clientes_1_idx` (`id_cliente` ASC),
  CONSTRAINT `fk_produtos_clientes_1`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `farmacia`.`clientes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `farmacia`.`medicos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `farmacia`.`medicos` ;

CREATE TABLE IF NOT EXISTS `farmacia`.`medicos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `crm` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `farmacia`.`produtos_compras`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `farmacia`.`produtos_compras` ;

CREATE TABLE IF NOT EXISTS `farmacia`.`produtos_compras` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `quantidade` INT NOT NULL,
  `id_compra` INT NOT NULL,
  `id_produto` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_produtos_compras_1_idx` (`id_compra` ASC),
  INDEX `fk_produtos_compras_2_idx` (`id_produto` ASC),
  CONSTRAINT `fk_produtos_compras_1`
    FOREIGN KEY (`id_compra`)
    REFERENCES `farmacia`.`compras` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_produtos_compras_2`
    FOREIGN KEY (`id_produto`)
    REFERENCES `farmacia`.`produtos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `farmacia`.`receitas_medicas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `farmacia`.`receitas_medicas` ;

CREATE TABLE IF NOT EXISTS `farmacia`.`receitas_medicas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `receita` VARCHAR(100) NOT NULL,
  `id_produto_compra` INT NOT NULL,
  `id_medico` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_receitas_medicas_1_idx` (`id_produto_compra` ASC),
  INDEX `fk_receitas_medicas_2_idx` (`id_medico` ASC),
  CONSTRAINT `fk_receitas_medicas_1`
    FOREIGN KEY (`id_produto_compra`)
    REFERENCES `farmacia`.`produtos_compras` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_receitas_medicas_2`
    FOREIGN KEY (`id_medico`)
    REFERENCES `farmacia`.`medicos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
