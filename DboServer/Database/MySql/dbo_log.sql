/*

Source Server         : AWS RDS
Source Host           : localhost:3306
Source Database       : dbo_log

Target Server Type    : SQL Server

Date: 2022-10-29 14:05:53
*/

USE dbo_log

-- ----------------------------
-- Table structure for auctionhouse_log
-- ----------------------------
DROP TABLE IF EXISTS [auctionhouse_log];
CREATE TABLE [auctionhouse_log](
  [Seller]int DEFAULT NULL,
  [Buyer]int DEFAULT NULL,
  [Price]int DEFAULT NULL,
  [ItemTblidx]int DEFAULT NULL,
  [ItemID]int DEFAULT NULL,
  [timestamp]timestamp NULL 
) ON [PRIMARY]

-- ----------------------------
-- Table structure for auth_login_log
-- ----------------------------
DROP TABLE IF EXISTS [auth_login_log];
CREATE TABLE [auth_login_log](
  [AccountID]int NOT NULL,
  [IP]varchar(255) NOT NULL,
  [timestamp]timestamp NULL,
) ON [PRIMARY]

-- ----------------------------
-- Table structure for budokai
-- ----------------------------
DROP TABLE IF EXISTS [budokai];
CREATE TABLE [budokai](
  [SeasonCount]int NOT NULL DEFAULT '0',
  [DefaultOpenTime]int DEFAULT '0',
  [RankPointInitialized]bit DEFAULT '0',
  [StateData_State]int DEFAULT '0',
  [StateData_NextStepTime]int DEFAULT '0',
  [IndividualStateData_State]int DEFAULT '0',
  [IndividualStateData_NextStepTime]int DEFAULT '0',
  [TeamStateData_State]int DEFAULT '0',
  [TeamStateData_NextStepTime]int DEFAULT '0'
) ON [PRIMARY]

-- ----------------------------
-- Table structure for budokai_winners
-- ----------------------------
DROP TABLE IF EXISTS [budokai_winners];
CREATE TABLE [budokai_winners](
  [BudokaiNumber]int DEFAULT '0',
  [Type]int DEFAULT '0',
  [MatchType]int DEFAULT '0',
  [WinnerCharID1]int DEFAULT '0',
  [WinnerCharID2]int DEFAULT '0',
  [WinnerCharID3]int DEFAULT '0',
  [WinnerCharID4]int DEFAULT '0',
  [WinnerCharID5]int DEFAULT '0',
  [Date]timestamp NULL
) ON [PRIMARY]

-- ----------------------------
-- Table structure for change_char_name
-- ----------------------------
DROP TABLE IF EXISTS [change_char_name];
CREATE TABLE [change_char_name](
  [CharID]int NOT NULL,
  [Name]varchar(17)  DEFAULT NULL,
  [newName]varchar(17)  DEFAULT NULL,
  [date]timestamp NULL 
) ON [PRIMARY]

-- ----------------------------
-- Table structure for character_delete_log
-- ----------------------------
DROP TABLE IF EXISTS [character_delete_log];
CREATE TABLE [character_delete_log](
  [AccountID]int NOT NULL,
  [CharID]int NOT NULL
) ON [PRIMARY]

-- ----------------------------
-- Table structure for dynamic_field_count
-- ----------------------------
DROP TABLE IF EXISTS [dynamic_field_count];
CREATE TABLE [dynamic_field_count](
  [serverIndex]int UNIQUE NOT NULL DEFAULT '0',
  [count]int NOT NULL DEFAULT '0',
  PRIMARY KEY ([serverIndex]),
) ON [PRIMARY]

-- ----------------------------
-- Table structure for founder_log
-- ----------------------------
DROP TABLE IF EXISTS [founder_log];
CREATE TABLE [founder_log](
  [Username]varchar(20)  NOT NULL,
  [forumname]varchar(255)  NOT NULL,
  [date]datetime NOT NULL
) ON [PRIMARY]

-- ----------------------------
-- Table structure for gm_log
-- ----------------------------
DROP TABLE IF EXISTS [gm_log];
CREATE TABLE [gm_log](
  [CharID]int NOT NULL,
  [LogType]int DEFAULT NULL,
  [String]text,
  [timestamp]timestamp NULL
) ON [PRIMARY]

-- ----------------------------
-- Table structure for guild_name_change_log
-- ----------------------------
DROP TABLE IF EXISTS [guild_name_change_log];
CREATE TABLE [guild_name_change_log](
  [key]int NOT NULL IDENTITY(1,1),
  [GuildID]int DEFAULT NULL,
  [CurrentName]varchar(25)  DEFAULT NULL,
  [NewName]varchar(25)  DEFAULT NULL,
  [timestamp]timestamp NULL,
  PRIMARY KEY ([key])
) ON [PRIMARY]

-- ----------------------------
-- Table structure for item_upgrade_log
-- ----------------------------
DROP TABLE IF EXISTS [item_upgrade_log];
CREATE TABLE [item_upgrade_log](
  [charId]int NOT NULL,
  [IsSuccess]bit NOT NULL,
  [itemId]int NOT NULL,
  [itemTblidx]int NOT NULL,
  [grade]int NOT NULL,
  [newGrade]int NOT NULL,
  [StoneItemId]int NOT NULL,
  [StoneItemTblidx]int NOT NULL,
  [CoreItemUse]bit NOT NULL,
  [coreItemId]int NOT NULL DEFAULT '0',
  [coreItemTblidx]int NOT NULL,
  [date]timestamp NULL
) ON [PRIMARY]

-- ----------------------------
-- Table structure for mail_deleted
-- ----------------------------
DROP TABLE IF EXISTS [mail_deleted];
CREATE TABLE [mail_deleted](
  [id]int NOT NULL,
  [CharID]int NOT NULL,
  [SenderType]int NOT NULL DEFAULT '0',
  [MailType]int NOT NULL DEFAULT '1',
  [TextSize]int NOT NULL DEFAULT '0',
  [Text]varchar(127)  DEFAULT NULL,
  [Zenny]int NOT NULL DEFAULT '0',
  [itemId]int NOT NULL DEFAULT '0',
  [TargetName]varchar(16) DEFAULT NULL,
  [FromName]varchar(16) DEFAULT NULL,
  [IsAccept]int NOT NULL DEFAULT '0',
  [IsLock]int NOT NULL DEFAULT '0',
  [IsRead]int NOT NULL DEFAULT '0',
  [CreateTime]int DEFAULT NULL,
  [EndTime]int DEFAULT NULL,
  [RemainDay]int NOT NULL DEFAULT '1',
  [year]int NOT NULL,
  [month]int NOT NULL,
  [day]int NOT NULL,
  [hour]int NOT NULL,
  [minute]int NOT NULL,
  [second]int NOT NULL,
  PRIMARY KEY ([id]),
) ON [PRIMARY]

-- ----------------------------
-- Table structure for mute_log
-- ----------------------------
DROP TABLE IF EXISTS [mute_log];
CREATE TABLE [mute_log](
  [CharID]int UNIQUE NOT NULL,
  [GmAccountID]int DEFAULT NULL,
  [DurationInMinutes]int DEFAULT NULL,
  [Reason]varchar(255) DEFAULT NULL,
  [muteUntil]int DEFAULT NULL,
  [date]timestamp NULL,
  PRIMARY KEY ([CharID]),
) ON [PRIMARY]

-- ----------------------------
-- Table structure for privateshoplogs
-- ----------------------------
DROP TABLE IF EXISTS [privateshoplogs];
CREATE TABLE [privateshoplogs](
  [key]int NOT NULL IDENTITY(1,1),
  [SellerCharID]int DEFAULT NULL,
  [BuyerCharID]int DEFAULT NULL,
  [Zeni]int DEFAULT NULL,
  [ItemCount]int DEFAULT NULL,
  [ItemID_1]int DEFAULT NULL,
  [ItemTblidx_1]int DEFAULT NULL,
  [ItemID_2]int DEFAULT NULL,
  [ItemTblidx_2]int DEFAULT NULL,
  [ItemID_3]int DEFAULT NULL,
  [ItemTblidx_3]int DEFAULT NULL,
  [ItemID_4]int DEFAULT NULL,
  [ItemTblidx_4]int DEFAULT NULL,
  [ItemID_5]int DEFAULT NULL,
  [ItemTblidx_5]int DEFAULT NULL,
  [ItemID_6]int DEFAULT NULL,
  [ItemTblidx_6]int DEFAULT NULL,
  [ItemID_7]int DEFAULT NULL,
  [ItemTblidx_7]int DEFAULT NULL,
  [ItemID_8]int DEFAULT NULL,
  [ItemTblidx_8]int DEFAULT NULL,
  [ItemID_9]int DEFAULT NULL,
  [ItemTblidx_9]int DEFAULT NULL,
  [ItemID_10]int DEFAULT NULL,
  [ItemTblidx_10]int DEFAULT NULL,
  [ItemID_11]int DEFAULT NULL,
  [ItemTblidx_11]int DEFAULT NULL,
  [ItemID_12]int DEFAULT NULL,
  [ItemTblidx_12]int DEFAULT NULL,
  [HasIssues]int DEFAULT NULL,
  [IssueReason]varchar(512)  DEFAULT NULL,
  [timestamp]timestamp NULL,
  PRIMARY KEY ([key])
) ON [PRIMARY]

-- ----------------------------
-- Table structure for slot_machine_log
-- ----------------------------
DROP TABLE IF EXISTS [slot_machine_log];
CREATE TABLE [slot_machine_log](
  [accountid]int DEFAULT NULL,
  [charid]int DEFAULT NULL,
  [extractCount]int DEFAULT NULL,
  [type]int DEFAULT NULL,
  [coin]int DEFAULT NULL,
  [currentPoints]int DEFAULT NULL,
  [newPoints]int DEFAULT NULL,
  [ProductId1]int DEFAULT NULL,
  [ProductId2]int DEFAULT NULL,
  [ProductId3]int DEFAULT NULL,
  [ProductId4]int DEFAULT NULL,
  [ProductId5]int DEFAULT NULL,
  [ProductId6]int DEFAULT NULL,
  [ProductId7]int DEFAULT NULL,
  [ProductId8]int DEFAULT NULL,
  [ProductId9]int DEFAULT NULL,
  [ProductId10]int DEFAULT NULL
) ON [PRIMARY]

-- ----------------------------
-- Table structure for tradelogs
-- ----------------------------
DROP TABLE IF EXISTS [tradelogs];
CREATE TABLE [tradelogs](
  [key]int NOT NULL IDENTITY(1,1),
  [CharID]int DEFAULT NULL,
  [TargetCharID]int DEFAULT NULL,
  [Zeni]int DEFAULT NULL,
  [ItemCount]int DEFAULT NULL,
  [ItemID_1]int DEFAULT NULL,
  [ItemTblidx_1]int DEFAULT NULL,
  [ItemID_2]int DEFAULT NULL,
  [ItemTblidx_2]int DEFAULT NULL,
  [ItemID_3]int DEFAULT NULL,
  [ItemTblidx_3]int DEFAULT NULL,
  [ItemID_4]int DEFAULT NULL,
  [ItemTblidx_4]int DEFAULT NULL,
  [ItemID_5]int DEFAULT NULL,
  [ItemTblidx_5]int DEFAULT NULL,
  [ItemID_6]int DEFAULT NULL,
  [ItemTblidx_6]int DEFAULT NULL,
  [ItemID_7]int DEFAULT NULL,
  [ItemTblidx_7]int DEFAULT NULL,
  [ItemID_8]int DEFAULT NULL,
  [ItemTblidx_8]int DEFAULT NULL,
  [ItemID_9]int DEFAULT NULL,
  [ItemTblidx_9]int DEFAULT NULL,
  [ItemID_10]int DEFAULT NULL,
  [ItemTblidx_10]int DEFAULT NULL,
  [ItemID_11]int DEFAULT NULL,
  [ItemTblidx_11]int DEFAULT NULL,
  [ItemID_12]int DEFAULT NULL,
  [ItemTblidx_12]int DEFAULT NULL,
  [timestamp]timestamp NULL,
  PRIMARY KEY ([key])
) ON [PRIMARY]
