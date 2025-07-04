-- 1. create database
CREATE DATABASE IF NOT EXISTS ordermanage;
USE ordermanage;

-- 2. Table
-- Basket 
CREATE TABLE `basket` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Cart 
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `product_id` int NOT NULL,
  `price` int NOT NULL,
  `date` date NOT NULL,
  `note` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Customer 
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `type` enum('PERSON','COMPANY') NOT NULL DEFAULT 'PERSON',
  `phone` varchar(20) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `address` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Product 
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `code` varchar(100) NOT NULL,
  `price` int NOT NULL,
  `stock` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- User 
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 3. initial data
-- customer
INSERT INTO customer (name, type, phone, mail, address) 
VALUES
    ('Mehmet Yılmaz', 'PERSON', '05551234567', 'mehmet.yilmaz@example.com', 'İstanbul, Türkiye'),
    ('Ayşe Demir', 'PERSON', '05559876543', 'ayse.demir@example.com', 'Ankara, Türkiye'),
    ('TechCorp Ltd.', 'COMPANY', '+1-800-555-1234', 'contact@techcorp.com', 'Silicon Valley, California, USA');

-- product
INSERT INTO product (name, code, price, stock) 
VALUES
    ('Dizüstü Bilgisayar', 'NB-2024', 15000, 10),
    ('Akıllı Telefon', 'SP-3012', 7000, 15),
    ('Tablet', 'TB-4420', 3000, 20),
    ('Kamera', 'CM-5560', 5000, 5),
    ('Bluetooth Kulaklık', 'BT-1103', 800, 25);
