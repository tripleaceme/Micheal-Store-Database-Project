-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema micheal_store
-- -----------------------------------------------------
-- Junior Data Analyst Role at Micheal Store Outlet, Antartica.
-- 
-- Using the table provided, you’ve been tasked to move the data stored in the excel sheet to an SQL environment, preferably MySQL.  
-- 
-- Therefore, you’re to create a suitable database to enable the smooth storage of future data and allows for proper data extraction.
-- 
DROP SCHEMA IF EXISTS `micheal_store` ;

-- -----------------------------------------------------
-- Schema micheal_store
--
-- Junior Data Analyst Role at Micheal Store Outlet, Antartica.
-- 
-- Using the table provided, you’ve been tasked to move the data stored in the excel sheet to an SQL environment, preferably MySQL.  
-- 
-- Therefore, you’re to create a suitable database to enable the smooth storage of future data and allows for proper data extraction.
-- 
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `micheal_store` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
USE `micheal_store` ;

-- -----------------------------------------------------
-- Table `micheal_store`.`sales_channel`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `micheal_store`.`sales_channel` ;

CREATE TABLE IF NOT EXISTS `micheal_store`.`sales_channel` (
  `sales_channel_id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`sales_channel_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `micheal_store`.`customers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `micheal_store`.`customers` ;

CREATE TABLE IF NOT EXISTS `micheal_store`.`customers` (
  `customer_id` INT UNSIGNED NOT NULL,
  `full_name` VARCHAR(65) NOT NULL,
  PRIMARY KEY (`customer_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `micheal_store`.`product`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `micheal_store`.`product` ;

CREATE TABLE IF NOT EXISTS `micheal_store`.`product` (
  `product_id` INT UNSIGNED NOT NULL,
  `product_name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`product_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `micheal_store`.`regions`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `micheal_store`.`regions` ;

CREATE TABLE IF NOT EXISTS `micheal_store`.`regions` (
  `region_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `region` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`region_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `micheal_store`.`states`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `micheal_store`.`states` ;

CREATE TABLE IF NOT EXISTS `micheal_store`.`states` (
  `state_code` CHAR(2) NOT NULL,
  `state` VARCHAR(65) NOT NULL,
  `region_id` INT UNSIGNED NOT NULL COMMENT 'Connect to the regions table',
  PRIMARY KEY (`state_code`),
  INDEX `reg_state_idx` (`region_id` ASC) VISIBLE,
  CONSTRAINT `reg_state`
    FOREIGN KEY (`region_id`)
    REFERENCES `micheal_store`.`regions` (`region_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `micheal_store`.`sales_team`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `micheal_store`.`sales_team` ;

CREATE TABLE IF NOT EXISTS `micheal_store`.`sales_team` (
  `sales_team_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `regions_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`sales_team_id`),
  INDEX `sales_region_idx` (`regions_id` ASC) VISIBLE,
  CONSTRAINT `sales_region`
    FOREIGN KEY (`regions_id`)
    REFERENCES `micheal_store`.`regions` (`region_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `micheal_store`.`warehouse`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `micheal_store`.`warehouse` ;

CREATE TABLE IF NOT EXISTS `micheal_store`.`warehouse` (
  `warehouse_id` INT UNSIGNED NOT NULL,
  `name` CHAR(12) NOT NULL,
  PRIMARY KEY (`warehouse_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `micheal_store`.`County`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `micheal_store`.`County` ;

CREATE TABLE IF NOT EXISTS `micheal_store`.`County` (
  `County_id` INT UNSIGNED NOT NULL,
  `county` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`County_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `micheal_store`.`time_zome`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `micheal_store`.`time_zome` ;

CREATE TABLE IF NOT EXISTS `micheal_store`.`time_zome` (
  `time_zome_id` INT UNSIGNED NOT NULL,
  `time_zome` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`time_zome_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `micheal_store`.`city_type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `micheal_store`.`city_type` ;

CREATE TABLE IF NOT EXISTS `micheal_store`.`city_type` (
  `city_type_id` INT UNSIGNED NOT NULL,
  `city_type` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`city_type_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `micheal_store`.`store_location`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `micheal_store`.`store_location` ;

CREATE TABLE IF NOT EXISTS `micheal_store`.`store_location` (
  `store_location_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `city_name` VARCHAR(45) NOT NULL,
  `county_id` INT UNSIGNED NOT NULL,
  `state_code` CHAR(2) NOT NULL,
  `city_type_id` INT UNSIGNED NOT NULL,
  `longitude` DOUBLE NOT NULL,
  `latitude` DOUBLE NOT NULL,
  `area_code` CHAR(3) NOT NULL,
  `population` BIGINT NOT NULL,
  `household_income` BIGINT NOT NULL,
  `median_income` BIGINT NOT NULL,
  `land_area` BIGINT NOT NULL,
  `water_area` BIGINT NOT NULL,
  `time_zone-id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`store_location_id`),
  UNIQUE INDEX `longitude_UNIQUE` (`longitude` ASC) VISIBLE,
  UNIQUE INDEX `latitude_UNIQUE` (`latitude` ASC) VISIBLE,
  UNIQUE INDEX `area_code_UNIQUE` (`area_code` ASC) VISIBLE,
  INDEX `city_store_idx` (`city_type_id` ASC) VISIBLE,
  INDEX `time_store_idx` (`time_zone-id` ASC) VISIBLE,
  INDEX `county_store_idx` (`county_id` ASC) VISIBLE,
  INDEX `state_store_idx` (`state_code` ASC) VISIBLE,
  CONSTRAINT `city_store`
    FOREIGN KEY (`city_type_id`)
    REFERENCES `micheal_store`.`city_type` (`city_type_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `time_store`
    FOREIGN KEY (`time_zone-id`)
    REFERENCES `micheal_store`.`time_zome` (`time_zome_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `county_store`
    FOREIGN KEY (`county_id`)
    REFERENCES `micheal_store`.`County` (`County_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `state_store`
    FOREIGN KEY (`state_code`)
    REFERENCES `micheal_store`.`states` (`state_code`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `micheal_store`.`orders`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `micheal_store`.`orders` ;

CREATE TABLE IF NOT EXISTS `micheal_store`.`orders` (
  `order_id` VARCHAR(25) NOT NULL,
  `sales_channel_id` INT UNSIGNED NOT NULL,
  `warehouse_id` INT UNSIGNED NOT NULL,
  `procure_date` DATE NOT NULL,
  `order_date` DATE NOT NULL,
  `shipping_date` DATE NOT NULL,
  `delivery_date` DATE NOT NULL,
  `delivery_duration` INT NOT NULL,
  `sales_teams_id` INT UNSIGNED NOT NULL,
  `customer_id` INT UNSIGNED NOT NULL,
  `store_id` INT UNSIGNED NOT NULL,
  `product_id` INT UNSIGNED NOT NULL,
  `quantity` INT UNSIGNED NOT NULL,
  `discount` DECIMAL(5,3) NOT NULL,
  `unit_price` DECIMAL(10,2) NOT NULL,
  `unit_cost` DECIMAL(10,2) NOT NULL,
  `total_unit_price` DECIMAL(10,2) NOT NULL,
  `total_unit_cost` DECIMAL(10,2) NOT NULL,
  `discounted_amount` DECIMAL(10,2) NOT NULL,
  `payable_amount` DECIMAL(10,2) NOT NULL,
  `profit` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`order_id`),
  INDEX `sales_orders_idx` (`sales_channel_id` ASC) VISIBLE,
  INDEX `warehouse_orders_idx` (`warehouse_id` ASC) VISIBLE,
  INDEX `sales_orders_idx1` (`sales_teams_id` ASC) VISIBLE,
  INDEX `customer_orders_idx` (`customer_id` ASC) VISIBLE,
  INDEX `store_orders_idx` (`store_id` ASC) VISIBLE,
  INDEX `product_orders_idx` (`product_id` ASC) VISIBLE,
  CONSTRAINT `sales_orders`
    FOREIGN KEY (`sales_channel_id`)
    REFERENCES `micheal_store`.`sales_channel` (`sales_channel_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `warehouse_orders`
    FOREIGN KEY (`warehouse_id`)
    REFERENCES `micheal_store`.`warehouse` (`warehouse_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `sales_team_orders`
    FOREIGN KEY (`sales_teams_id`)
    REFERENCES `micheal_store`.`sales_team` (`sales_team_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `customer_orders`
    FOREIGN KEY (`customer_id`)
    REFERENCES `micheal_store`.`customers` (`customer_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `store_orders`
    FOREIGN KEY (`store_id`)
    REFERENCES `micheal_store`.`store_location` (`store_location_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `product_orders`
    FOREIGN KEY (`product_id`)
    REFERENCES `micheal_store`.`product` (`product_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
