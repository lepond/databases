CREATE DATABASE chat;

USE chat;

-- CREATE TABLE messages (
--    Describe your table here.
-- );

/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/



-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'Usernames'
-- 
-- ---

DROP TABLE IF EXISTS `Usernames`;
    
CREATE TABLE `Usernames` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `name` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);





-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'Usernames'
-- 
-- ---

DROP TABLE IF EXISTS `Usernames`;
    
CREATE TABLE `Usernames` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `name` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `name`)
);

-- ---
-- Table 'Messages'
-- 
-- ---

DROP TABLE IF EXISTS `Messages`;
    
CREATE TABLE `Messages` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `Created_at` TIMESTAMP NULL DEFAULT NULL,
  `Room_name` VARCHAR(40) NULL DEFAULT 'Lobby',
  `Text` VARCHAR(255) NULL DEFAULT NULL,
  `Username` VARCHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `Username`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `Messages` ADD FOREIGN KEY (Username) REFERENCES `Usernames` (`name`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `Usernames` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `Usernames` (`id`,`name`) VALUES
-- ('','');
-- INSERT INTO `Messages` (`id`,`Created_at`,`Room_name`,`Text`,`Username`) VALUES
-- ('','','','','');

