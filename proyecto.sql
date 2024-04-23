/*
 Navicat Premium Data Transfer

 Source Server         : Conection
 Source Server Type    : MySQL
 Source Server Version : 80031 (8.0.31)
 Source Host           : localhost:3306
 Source Schema         : proyecto

 Target Server Type    : MySQL
 Target Server Version : 80031 (8.0.31)
 File Encoding         : 65001

 Date: 17/04/2024 23:13:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for clientes
-- ----------------------------
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `apellido` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `direccion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `telefono` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of clientes
-- ----------------------------
INSERT INTO `clientes` VALUES (1, 'Ana', 'González', 'Calle 123, Ciudad ABC', '123456789', 'ana@example.com');
INSERT INTO `clientes` VALUES (2, 'Juan', 'Martínez', 'Avenida XYZ, Pueblo 456', '987654321', 'juan@example.com');
INSERT INTO `clientes` VALUES (3, 'María', 'López', 'Carrera 789, Localidad QRS', '456123789', 'maria@example.com');
INSERT INTO `clientes` VALUES (4, 'Pedro', 'Rodríguez', 'Plaza Principal, Pueblo XYZ', '789456123', 'pedro@example.com');
INSERT INTO `clientes` VALUES (5, 'Laura', 'Hernández', 'Calle Central, Ciudad 789', '321654987', 'laura@example.com');
INSERT INTO `clientes` VALUES (6, 'Carlos', 'Pérez', 'Avenida Norte, Localidad MNO', '654987321', 'carlos@example.com');
INSERT INTO `clientes` VALUES (7, 'Sofía', 'Gómez', 'Carrera 456, Ciudad XYZ', '159357486', 'sofia@example.com');
INSERT INTO `clientes` VALUES (8, 'Javier', 'Fernández', 'Calle Este, Pueblo 123', '357159486', 'javier@example.com');
INSERT INTO `clientes` VALUES (9, 'Elena', 'Díaz', 'Avenida Sur, Localidad 456', '753951456', 'elena@example.com');
INSERT INTO `clientes` VALUES (10, 'Daniel', 'Vázquez', 'Plaza Principal, Ciudad MNO', '456789123', 'daniel@example.com');
INSERT INTO `clientes` VALUES (11, 'Marta', 'Ruiz', 'Carrera 789, Pueblo ABC', '987123456', 'marta@example.com');
INSERT INTO `clientes` VALUES (12, 'Alejandro', 'Sánchez', 'Calle Oeste, Localidad XYZ', '852963741', 'alejandro@example.com');
INSERT INTO `clientes` VALUES (13, 'Paula', 'Torres', 'Avenida Principal, Ciudad 123', '369258147', 'paula@example.com');
INSERT INTO `clientes` VALUES (14, 'David', 'García', 'Carrera 123, Pueblo XYZ', '147258369', 'david@example.com');
INSERT INTO `clientes` VALUES (15, 'Andrea', 'Moreno', 'Plaza Norte, Localidad ABC', '258369147', 'andrea@example.com');

-- ----------------------------
-- Table structure for marca
-- ----------------------------
DROP TABLE IF EXISTS `marca`;
CREATE TABLE `marca`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of marca
-- ----------------------------
INSERT INTO `marca` VALUES (1, 'Samsung');
INSERT INTO `marca` VALUES (2, 'Apple');
INSERT INTO `marca` VALUES (3, 'Sony');
INSERT INTO `marca` VALUES (4, 'HP');
INSERT INTO `marca` VALUES (5, 'Dell');
INSERT INTO `marca` VALUES (6, 'Asus');
INSERT INTO `marca` VALUES (7, 'Lenovo');
INSERT INTO `marca` VALUES (8, 'Acer');
INSERT INTO `marca` VALUES (9, 'Microsoft');
INSERT INTO `marca` VALUES (10, 'LG');

-- ----------------------------
-- Table structure for producto
-- ----------------------------
DROP TABLE IF EXISTS `producto`;
CREATE TABLE `producto`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cantidad` int NULL DEFAULT NULL,
  `fk_marca` int NULL DEFAULT NULL,
  `precio` float NULL DEFAULT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_marca`(`fk_marca` ASC) USING BTREE,
  CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`fk_marca`) REFERENCES `marca` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of producto
-- ----------------------------

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `apellido` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fecha_registro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES (1, 'Juan', 'Pérez', 'juanperez', 'contraseña123', 'juan@example.com', '2024-02-27 15:59:27');
INSERT INTO `usuarios` VALUES (2, 'María', 'García', 'mariagarcia', 'password456', 'maria@example.com', '2024-02-27 15:59:27');
INSERT INTO `usuarios` VALUES (3, 'Luis', 'Martínez', 'luismartinez', 'securepass789', 'luis@example.com', '2024-02-27 15:59:27');
INSERT INTO `usuarios` VALUES (4, 'Ana', 'Rodríguez', 'anarodriguez', '123abc', 'ana@example.com', '2024-02-27 15:59:27');
INSERT INTO `usuarios` VALUES (5, 'Pedro', 'López', 'pedrolopez', 'p4ssw0rd', 'pedro@example.com', '2024-02-27 15:59:27');
INSERT INTO `usuarios` VALUES (6, 'Laura', 'Hernández', 'laurahernandez', 'pass1234', 'laura@example.com', '2024-02-27 15:59:27');
INSERT INTO `usuarios` VALUES (7, 'Carlos', 'Gómez', 'carlosgomez', 'qwerty', 'carlos@example.com', '2024-02-27 15:59:27');
INSERT INTO `usuarios` VALUES (8, 'Sofía', 'Díaz', 'sofiadiaz', 'secretword', 'sofia@example.com', '2024-02-27 15:59:27');
INSERT INTO `usuarios` VALUES (9, 'Javier', 'Ruiz', 'javierruiz', 'p@ssw0rd', 'javier@example.com', '2024-02-27 15:59:27');
INSERT INTO `usuarios` VALUES (10, 'Elena', 'Sánchez', 'elenasanchez', 'password123', 'elena@example.com', '2024-02-27 15:59:27');
INSERT INTO `usuarios` VALUES (11, 'Daniel', 'Fernández', 'danielfernandez', 'secure123', 'daniel@example.com', '2024-02-27 15:59:27');
INSERT INTO `usuarios` VALUES (12, 'Marta', 'Moreno', 'martamoreno', 'p@ssword', 'marta@example.com', '2024-02-27 15:59:27');
INSERT INTO `usuarios` VALUES (13, 'Alejandro', 'Jiménez', 'alejandrojimenez', '123456', 'alejandro@example.com', '2024-02-27 15:59:27');
INSERT INTO `usuarios` VALUES (14, 'Paula', 'Torres', 'paulatorres', 'password', 'paula@example.com', '2024-02-27 15:59:27');
INSERT INTO `usuarios` VALUES (15, 'David', 'Vázquez', 'davidvazquez', 'david123', 'david@example.com', '2024-02-27 15:59:27');

SET FOREIGN_KEY_CHECKS = 1;
