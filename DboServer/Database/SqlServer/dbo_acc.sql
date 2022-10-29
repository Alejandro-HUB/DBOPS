/*

Source Server         : AWS RDS
Source Host           : localhost:3306
Source Database       : dbo_acc

Target Server Type    : SQL Server

Date: 2022-10-29 14:05:53
*/

USE [dbo_acc]

-- ----------------------------
-- Table structure for accounts
-- ----------------------------
DROP TABLE IF EXISTS [accounts];
CREATE TABLE [accounts](
  [AccountID]int  NOT NULL UNIQUE IDENTITY(1,1),
  [Username]varchar(16)  NOT NULL UNIQUE,
  [Password_hash]varchar(32)  NOT NULL,
  [acc_status]varchar(32),
  [email]varchar(80)  NOT NULL DEFAULT 'test@mail.com',
  [mallpoints]int  NOT NULL DEFAULT '10000000',
  [reg_date]timestamp NOT NULL,
  [last_login]DateTime NULL DEFAULT NULL,
  [reg_ip]varchar(15)  DEFAULT NULL,
  [admin]int NOT NULL DEFAULT '0',
  [isGm]int NOT NULL DEFAULT '0',
  [lastServerFarmId]int NOT NULL DEFAULT '255',
  [founder]int NOT NULL DEFAULT '0',
  [founder_recv]int NOT NULL DEFAULT '0',
  [last_ip]varchar(16)  NOT NULL DEFAULT '0.0.0.0',
  [del_char_pw]varchar(32) NOT NULL DEFAULT '25f9e794323b453885f5181f1b624d0b',
  [PremiumSlots]int NOT NULL DEFAULT '4',
  [EventCoins]int  DEFAULT '0',
  [WaguCoins]int  DEFAULT '0',
  [web_ip]varchar(15)  DEFAULT NULL,
  PRIMARY KEY ([AccountID],[Username]),
) ON [PRIMARY] 

-- ----------------------------
-- Table structure for accounts_banned
-- ----------------------------
DROP TABLE IF EXISTS [accounts_banned];
CREATE TABLE [accounts_banned](
  [id]int NOT NULL IDENTITY(1,1),
  [GM_AccId]int NOT NULL DEFAULT '0',
  [Banned_AccId]int NOT NULL DEFAULT '0',
  [DateTime]timestamp NOT NULL,
  [Reason]varchar(1024) NOT NULL,
  [Duration]int NOT NULL DEFAULT '1',
  [Active]int NOT NULL DEFAULT '1',
  PRIMARY KEY ([id])
) ON [PRIMARY] 

-- ----------------------------
-- Table structure for cashshop_storage
-- ----------------------------
DROP TABLE IF EXISTS [cashshop_storage];
CREATE TABLE [cashshop_storage](
  [ProductId]int NOT NULL UNIQUE IDENTITY(1,1),
  [AccountID]int  NOT NULL UNIQUE,
  [HLSitemTblidx]int  NOT NULL,
  [StackCount]int NOT NULL,
  [giftCharId]int  DEFAULT NULL,
  [IsRead]int NOT NULL DEFAULT '0',
  [SenderName]varchar(16)  DEFAULT NULL,
  [year]int NOT NULL,
  [month]int NOT NULL,
  [day]int NOT NULL,
  [hour]int NOT NULL,
  [minute]int NOT NULL,
  [second]int NOT NULL,
  [millisecond]int NOT NULL,
  [isMoved]int NOT NULL DEFAULT '0',
  [Buyer]int  DEFAULT '0',
  [price]int  DEFAULT '0',
  [ItemID]int DEFAULT '0',
  PRIMARY KEY ([ProductId])
) ON [PRIMARY] 

-- ----------------------------
-- Table structure for event_reward
-- ----------------------------
DROP TABLE IF EXISTS [event_reward];
CREATE TABLE [event_reward](
  [AccountID]int UNIQUE DEFAULT NULL,
  [rewardTblidx]int UNIQUE DEFAULT NULL,
  [CharID]int DEFAULT '0',
  [CharName]varchar(15)  DEFAULT NULL,
) ON [PRIMARY] 

-- ----------------------------
-- Table structure for shortcuts
-- ----------------------------
DROP TABLE IF EXISTS [shortcuts];
CREATE TABLE [shortcuts](
  [AccountID]int UNIQUE  NOT NULL,
  [ActionID]int UNIQUE  NOT NULL DEFAULT '0',
  [wKey]int  NOT NULL DEFAULT '0',
  PRIMARY KEY ([AccountID],[ActionID]),
) ON [PRIMARY] 