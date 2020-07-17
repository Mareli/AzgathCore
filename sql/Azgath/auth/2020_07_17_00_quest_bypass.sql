/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : az_auth

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 17/07/2020 19:50:50
*/

INSERT INTO `az_auth`.`rbac_permissions`(`id`, `name`) VALUES (3000, 'Command: bypass & report');
INSERT INTO `az_auth`.`rbac_linked_permissions`(`id`, `linkedId`) VALUES (195, 3000);