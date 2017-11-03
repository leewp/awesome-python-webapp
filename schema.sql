-- init database

drop database if EXISTS awesome;

CREATE DATABASE awesome;

USE awesome;

GRANT SELECT, INSERT, UPDATE, DELETE ON awesome.* to 'www-data'@'localhost' IDENTIFIED BY 'www-data';

CREATE TABLE users(
  `id` VARCHAR(50) NOT NULL ,
  `email` VARCHAR(50) NOT NULL ,
  `password` VARCHAR(50) NOT NULL ,
  `admin` BOOL NOT NULL ,
  `name` VARCHAR(50) NOT NULL ,
  `image` VARCHAR(500) NOT NULL ,
  `created_at` REAL NOT NULL ,
  UNIQUE KEY `idx_email` (`email`),
  key `idx_created_at` (`created_at`),
  PRIMARY KEY (`id`)
) ENGINE = innodb DEFAULT CHARSET = utf8;

CREATE TABLE blogs (
  `id` VARCHAR(50) NOT NULL ,
  `user_id` VARCHAR(50) NOT NULL ,
  `user_name` VARCHAR(50) NOT NULL ,
  `user_image` VARCHAR(500) NOT NULL ,
  `name` VARCHAR(50) NOT NULL ,
  `summary` VARCHAR(200) NOT NULL ,
  `content` MEDIUMTEXT NOT NULL ,
  `created_at` REAL NOT NULL ,
  KEY `idx_created_at` (`created_at`),
  PRIMARY KEY (`id`)
) ENGINE = innodb DEFAULT CHARSET = utf8;

CREATE TABLE comments (
  `id` VARCHAR(50) NOT NULL ,
  `blog_id` VARCHAR(50) NOT NULL ,
  `user_id` VARCHAR(50) NOT NULL ,
  `user_name` VARCHAR(50) NOT NULL ,
  `user_image` VARCHAR(500) NOT NULL,
  `content` MEDIUMTEXT NOT NULL ,
  `created_at` REAL NOT NULL ,
  KEY `idx_created_at` (`created_at`),
  PRIMARY KEY (`id`)
) ENGINE = innodb DEFAULT CHARSET = utf8;

-- email / password:
-- admin@example.com / password

 insert into users (`id`, `email`, `password`, `admin`, `name`, `image`, `created_at`) values ('0010018336417540987fff4508f43fbaed718e263442526000', 'admin@example.com', '5f4dcc3b5aa765d61d8327deb882cf99', 1, 'Administrator', 'test', 1402909113.628);
