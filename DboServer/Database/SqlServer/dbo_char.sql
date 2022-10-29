/*

Source Server         : AWS RDS
Source Host           : localhost:3306
Source Database       : dbo_char

Target Server Type    : SQL Server

Date: 2022-10-29 14:05:53
*/

USE dbo_char

-- ----------------------------
-- Table structure for auctionhouse
-- ----------------------------
DROP TABLE IF EXISTS [auctionhouse];
CREATE TABLE [auctionhouse] (
  [id] int UNIQUE NOT NULL,
  [CharID] int  NOT NULL DEFAULT '0',
  [TabType] int  NOT NULL DEFAULT '255',
  [ItemName] varchar(33)  DEFAULT NULL,
  [Seller] varchar(17)  DEFAULT NULL,
  [Price] int  NOT NULL,
  [ItemID] int  NOT NULL,
  [TimeStart] int  NOT NULL,
  [TimeEnd] int  DEFAULT NULL,
  [ItemLevel] int  NOT NULL DEFAULT '0',
  [NeedClass] int  NOT NULL,
  [ItemType] int  NOT NULL DEFAULT '0',
  PRIMARY KEY ([id],[CharID]),
) ON [PRIMARY]

-- ----------------------------
-- Table structure for bannword
-- ----------------------------
DROP TABLE IF EXISTS [bannword];
CREATE TABLE [bannword] (
  [id] int NOT NULL IDENTITY(1,1),
  [bannword] varchar(50)  DEFAULT NULL,
  PRIMARY KEY ([id])
) ON [PRIMARY]

-- ----------------------------
-- Table structure for bind
-- ----------------------------
DROP TABLE IF EXISTS [bind];
CREATE TABLE [bind] (
  [CharID] int UNIQUE NOT NULL,
  [WorldID] int  NOT NULL DEFAULT '1',
  [BindObjectTblIdx] int  NOT NULL DEFAULT '4294967295',
  [LocX] float NOT NULL,
  [LocY] float NOT NULL,
  [LocZ] float NOT NULL,
  [DirX] float NOT NULL,
  [DirY] float NOT NULL,
  [DirZ] float NOT NULL,
  [Type] int NOT NULL DEFAULT '1',
  PRIMARY KEY ([CharID]),
) ON [PRIMARY]

-- ----------------------------
-- Table structure for buffs
-- ----------------------------
DROP TABLE IF EXISTS [buffs];
CREATE TABLE [buffs] (
  [CharID] int NOT NULL,
  [SourceTblidx] int  NOT NULL,
  [SourceType] int  NOT NULL DEFAULT '255',
  [BuffIndex] int  NOT NULL DEFAULT '255',
  [BuffGroup] int  NOT NULL DEFAULT '255',
  [InitialDuration] int  NOT NULL DEFAULT '0',
  [TimeRemaining] int  NOT NULL DEFAULT '0',
  [effectValue1] float  DEFAULT NULL,
  [effectValue2] float  DEFAULT NULL,
  [Argument1_0] int  DEFAULT NULL,
  [Argument1_1] int  DEFAULT NULL,
  [Argument1_2] int  DEFAULT NULL,
  [Argument2_0] int  DEFAULT NULL,
  [Argument2_1] int  DEFAULT NULL,
  [Argument2_2] int  DEFAULT NULL,
  PRIMARY KEY ([CharID],[BuffIndex])
) ON [PRIMARY]

-- ----------------------------
-- Table structure for characters
-- ----------------------------
DROP TABLE IF EXISTS [characters];
CREATE TABLE [characters] (
  [CharID] int UNIQUE  NOT NULL,
  [CharName] varchar(16) UNIQUE NOT NULL,
  [AccountID] int  NOT NULL,
  [Level] int  NOT NULL DEFAULT '1',
  [Exp] int  NOT NULL DEFAULT '0',
  [Race] int  DEFAULT NULL,
  [Class] int  DEFAULT NULL,
  [Gender] int  DEFAULT NULL,
  [Face] int  DEFAULT NULL,
  [Adult] int  NOT NULL DEFAULT '0',
  [Hair] int  NOT NULL,
  [HairColor] int  NOT NULL DEFAULT '0',
  [SkinColor] int  NOT NULL DEFAULT '0',
  [Blood] int  NOT NULL DEFAULT '0',
  [CurLocX] float NOT NULL DEFAULT '78.900002',
  [CurLocY] float NOT NULL DEFAULT '46.950001',
  [CurLocZ] float NOT NULL DEFAULT '168.350006',
  [CurDirX] float NOT NULL DEFAULT '0.950000',
  [CurDirY] float NOT NULL DEFAULT '0.000000',
  [CurDirZ] float NOT NULL DEFAULT '0.300000',
  [WorldID] int  NOT NULL DEFAULT '1',
  [WorldTable] int  NOT NULL DEFAULT '1',
  [MapInfoIndex] int  NOT NULL DEFAULT '0',
  [Money] int  NOT NULL DEFAULT '0',
  [MoneyBank] int  NOT NULL DEFAULT '0',
  [TutorialFlag] int NOT NULL DEFAULT '0',
  [TutorialHint] int  NOT NULL DEFAULT '0',
  [NameChange] int NOT NULL DEFAULT '0',
  [Reputation] int  NOT NULL DEFAULT '0',
  [MudosaPoint] int  NOT NULL DEFAULT '0',
  [SpPoint] int  NOT NULL DEFAULT '0',
  [GameMaster] int NOT NULL DEFAULT '0',
  [GuildID] int  NOT NULL DEFAULT '0',
  [GuildName] varchar(16)  DEFAULT NULL,
  [CurLP] int NOT NULL DEFAULT '15000',
  [CurEP] int  NOT NULL DEFAULT '15000',
  [CurRP] int  NOT NULL DEFAULT '0',
  [CurAP] int NOT NULL DEFAULT '450000',
  [MailIsAway] int NOT NULL DEFAULT '0',
  [SrvFarmID] int  NOT NULL DEFAULT '0',
  [DelCharTime] int  DEFAULT NULL,
  [Hoipoi_NormalStart] int NOT NULL DEFAULT '0',
  [Hoipoi_SpecialStart] int NOT NULL DEFAULT '0',
  [Hoipoi_Type] int  NOT NULL DEFAULT '255',
  [Hoipoi_MixLevel] int  NOT NULL DEFAULT '1',
  [Hoipoi_MixExp] int  NOT NULL DEFAULT '0',
  [Title] int  NOT NULL DEFAULT '4294967295',
  [Mascot] int  NOT NULL DEFAULT '4294967295',
  [RpBall] int  NOT NULL DEFAULT '0',
  [Netpy] int  NOT NULL DEFAULT '0',
  [WaguPoint] int  NOT NULL DEFAULT '0',
  [IP] varchar(16)  NOT NULL DEFAULT '0.0.0.0',
  [AirState] int  NOT NULL DEFAULT '0',
  [InvisibleCostume] int NOT NULL DEFAULT '0',
  [PlayTime] int  NOT NULL DEFAULT '0',
  [SuperiorEffectType] int  NOT NULL DEFAULT '0',
  [CreateTime] int  NOT NULL,
  PRIMARY KEY ([CharID],[CharName],[SrvFarmID]),
) ON [PRIMARY]

-- ----------------------------
-- Table structure for dojos
-- ----------------------------
DROP TABLE IF EXISTS [dojos];
CREATE TABLE [dojos] (
  [GuildId] int UNIQUE NOT NULL,
  [DojoTblidx] int UNIQUE NOT NULL,
  [Level] int  NOT NULL DEFAULT '1',
  [PeaceStatus] int  NOT NULL DEFAULT '0',
  [PeacePoints] int  NOT NULL DEFAULT '0',
  [GuildName] varchar(16)  NOT NULL,
  [LeaderName] varchar(16)  DEFAULT NULL,
  [Notice] varchar(64)  DEFAULT NULL,
  [ChallengeGuildId] int  NOT NULL DEFAULT '4294967295',
  [SeedCharName] varchar(16)  DEFAULT NULL,
  PRIMARY KEY ([DojoTblidx]),
) ON [PRIMARY]

-- ----------------------------
-- Table structure for friendlist
-- ----------------------------
DROP TABLE IF EXISTS [friendlist];
CREATE TABLE [friendlist] (
  [user_id] int NOT NULL,
  [friend_id] int NOT NULL,
  [friend_name] varchar(16)  NOT NULL,
  [blacklist] int NOT NULL DEFAULT '0',
  PRIMARY KEY ([user_id],[friend_id]),
) ON [PRIMARY]

-- ----------------------------
-- Table structure for guilds
-- ----------------------------
DROP TABLE IF EXISTS [guilds];
CREATE TABLE [guilds] (
  [GuildID] int UNIQUE NOT NULL IDENTITY(1,1),
  [GuildName] varchar(16) UNIQUE NOT NULL,
  [GuildMaster] int  NOT NULL,
  [GuildSecondMaster] int  NOT NULL DEFAULT '4294967295',
  [GuildSecondMaster2] int  NOT NULL DEFAULT '4294967295',
  [GuildSecondMaster3] int  NOT NULL DEFAULT '4294967295',
  [GuildSecondMaster4] int  NOT NULL DEFAULT '4294967295',
  [GuildReputation] int  NOT NULL DEFAULT '0',
  [GuildPointEver] int  NOT NULL DEFAULT '0',
  [FunctionFlag] int  NOT NULL DEFAULT '7',
  [GuildDisbandTime] int  DEFAULT NULL,
  [MarkInColor] int  NOT NULL DEFAULT '255',
  [MarkInLine] int  NOT NULL DEFAULT '255',
  [MarkMain] int  NOT NULL DEFAULT '255',
  [MarkMainColor] int  NOT NULL DEFAULT '255',
  [MarkOutColor] int  NOT NULL DEFAULT '255',
  [MarkOutLine] int  NOT NULL DEFAULT '255',
  [NoticeBy] varchar(16)  DEFAULT NULL,
  [GuildNotice] varchar(257)  DEFAULT NULL,
  [DojoColor] int  NOT NULL DEFAULT '255',
  [GuildColor] int  NOT NULL DEFAULT '255',
  [DogiType] int  NOT NULL DEFAULT '255',
  [Zeni] int  DEFAULT '0',
  PRIMARY KEY ([GuildID],[GuildName]),
) ON [PRIMARY]

-- ----------------------------
-- Table structure for guild_members
-- ----------------------------
DROP TABLE IF EXISTS [guild_members];
CREATE TABLE [guild_members] (
  [GuildID] int NOT NULL,
  [CharID] int UNIQUE NOT NULL,
  PRIMARY KEY ([GuildID],[CharID]),
) ON [PRIMARY]

-- ----------------------------
-- Table structure for hoipoi_recipe
-- ----------------------------
DROP TABLE IF EXISTS [hoipoi_recipe];
CREATE TABLE [hoipoi_recipe] (
  [CharID] int NOT NULL,
  [RecipeTblidx] int NOT NULL,
  [RecipeType] int  NOT NULL DEFAULT '255',
  PRIMARY KEY ([CharID],[RecipeTblidx]),
) ON [PRIMARY]

-- ----------------------------
-- Table structure for htb_skills
-- ----------------------------
DROP TABLE IF EXISTS [htb_skills];
CREATE TABLE [htb_skills] (
  [skill_id] int UNIQUE NOT NULL DEFAULT '0',
  [owner_id] int UNIQUE NOT NULL,
  [SlotID] int  NOT NULL DEFAULT '0',
  [TimeRemaining] int  NOT NULL DEFAULT '0',
  PRIMARY KEY ([skill_id],[owner_id]),
) ON [PRIMARY]

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS [items];
CREATE TABLE [items] (
  [id] int UNIQUE NOT NULL IDENTITY(1,1),
  [tblidx] int  NOT NULL DEFAULT '0',
  [owner_id] int  NOT NULL DEFAULT '0',
  [place] int  NOT NULL DEFAULT '1',
  [pos] int  NOT NULL DEFAULT '0',
  [count] int  NOT NULL DEFAULT '1',
  [rank] int NOT NULL DEFAULT '1',
  [durability] int  NOT NULL DEFAULT '255',
  [grade] int NOT NULL DEFAULT '0',
  [NeedToIdentify] int NOT NULL DEFAULT '0',
  [BattleAttribute] int  NOT NULL DEFAULT '0',
  [Maker] varchar(16)  NOT NULL DEFAULT '',
  [OptionTblidx] int  NOT NULL DEFAULT '4294967295',
  [OptionTblidx2] int  NOT NULL DEFAULT '4294967295',
  [OptionRandomId] int  NOT NULL DEFAULT '65535',
  [OptionRandomVal] int  NOT NULL DEFAULT '4294967295',
  [OptionRandomId2] int  NOT NULL DEFAULT '65535',
  [OptionRandomVal2] int  NOT NULL DEFAULT '4294967295',
  [OptionRandomId3] int  NOT NULL DEFAULT '65535',
  [OptionRandomVal3] int  NOT NULL DEFAULT '4294967295',
  [OptionRandomId4] int  NOT NULL DEFAULT '65535',
  [OptionRandomVal4] int  NOT NULL DEFAULT '4294967295',
  [OptionRandomId5] int  NOT NULL DEFAULT '65535',
  [OptionRandomVal5] int  NOT NULL DEFAULT '4294967295',
  [OptionRandomId6] int  NOT NULL DEFAULT '65535',
  [OptionRandomVal6] int  NOT NULL DEFAULT '4294967295',
  [OptionRandomId7] int  NOT NULL DEFAULT '65535',
  [OptionRandomVal7] int  NOT NULL DEFAULT '4294967295',
  [OptionRandomId8] int  NOT NULL DEFAULT '65535',
  [OptionRandomVal8] int  NOT NULL DEFAULT '4294967295',
  [UseStartTime] int  NOT NULL DEFAULT '0',
  [UseEndTime] int  NOT NULL DEFAULT '0',
  [RestrictState] int  NOT NULL DEFAULT '0',
  [DurationType] int  NOT NULL DEFAULT '0',
  [AccountID] int  DEFAULT '0',
  [GuildID] int  DEFAULT '0',
  PRIMARY KEY ([id],[owner_id],[place],[pos]),
) ON [PRIMARY]

-- ----------------------------
-- Table structure for items_cd
-- ----------------------------
DROP TABLE IF EXISTS [items_cd];
CREATE TABLE [items_cd] (
  [CharID] int  NOT NULL,
  [GroupIndex] int  NOT NULL DEFAULT '0',
  [CoolTime] int  NOT NULL DEFAULT '0',
  [TimeRemaining] int  NOT NULL DEFAULT '0',
  PRIMARY KEY ([GroupIndex],[CharID]),
) ON [PRIMARY]

-- ----------------------------
-- Table structure for mail
-- ----------------------------
DROP TABLE IF EXISTS [mail];
CREATE TABLE [mail] (
  [id] int UNIQUE  NOT NULL IDENTITY(1,1),
  [CharID] int  NOT NULL,
  [SenderType] int  NOT NULL DEFAULT '0',
  [MailType] int  NOT NULL DEFAULT '1',
  [TextSize] int  NOT NULL DEFAULT '0',
  [Text] varchar(127),
  [Zenny] int  NOT NULL DEFAULT '0',
  [itemId] int  NOT NULL DEFAULT '0',
  [TargetName] varchar(16)  DEFAULT NULL,
  [FromName] varchar(16)  DEFAULT NULL,
  [IsAccept] int NOT NULL DEFAULT '0',
  [IsLock] int NOT NULL DEFAULT '0',
  [IsRead] int NOT NULL DEFAULT '0',
  [CreateTime] int  DEFAULT NULL,
  [EndTime] int  DEFAULT NULL,
  [RemainDay] int  NOT NULL DEFAULT '1',
  [year] int  NOT NULL,
  [month] int  NOT NULL,
  [day] int  NOT NULL,
  [hour] int  NOT NULL,
  [minute] int  NOT NULL,
  [second] int  NOT NULL,
  PRIMARY KEY ([id]),
) ON [PRIMARY]

-- ----------------------------
-- Table structure for mascots
-- ----------------------------
DROP TABLE IF EXISTS [mascots];
CREATE TABLE [mascots] (
  [CharID] int  NOT NULL,
  [SlotID] int  NOT NULL DEFAULT '255',
  [MascotTblidx] int  NOT NULL,
  [CurVP] int  NOT NULL DEFAULT '100',
  [MaxVP] int  NOT NULL DEFAULT '100',
  [CurExp] int  NOT NULL DEFAULT '0',
  [skillTblidx0] int  NOT NULL DEFAULT '4294967295',
  [skillTblidx1] int  NOT NULL DEFAULT '4294967295',
  [skillTblidx2] int  NOT NULL DEFAULT '4294967295',
  [skillTblidx3] int  NOT NULL DEFAULT '4294967295',
  PRIMARY KEY ([CharID],[SlotID]),
) ON [PRIMARY]

-- ----------------------------
-- Table structure for portals
-- ----------------------------
DROP TABLE IF EXISTS [portals];
CREATE TABLE [portals] (
  [CharID] int  NOT NULL,
  [Point] int  NOT NULL,
  PRIMARY KEY ([CharID],[Point]),
) ON [PRIMARY]

-- ----------------------------
-- Table structure for questitems
-- ----------------------------
DROP TABLE IF EXISTS [questitems];
CREATE TABLE [questitems] (
  [CharID] int  NOT NULL,
  [tblidx] int  NOT NULL,
  [amount] int  NOT NULL DEFAULT '1',
  [pos] int  NOT NULL DEFAULT '255',
) ON [PRIMARY]

-- ----------------------------
-- Table structure for quests
-- ----------------------------
DROP TABLE IF EXISTS [quests];
CREATE TABLE [quests] (
  [CharID] int UNIQUE NOT NULL,
  [QuestID] int  NOT NULL,
  [tcQuestInfo] int  NOT NULL DEFAULT '1',
  [taQuestInfo] int  NOT NULL DEFAULT '0',
  [tgExcCGroup] int  NOT NULL DEFAULT '0',
  [tcPreId] int  NOT NULL DEFAULT '0',
  [tcCurId] int  NOT NULL DEFAULT '255',
  [tcId] int  NOT NULL DEFAULT '255',
  [taId] int  NOT NULL DEFAULT '255',
  [evtUserData] int  NOT NULL DEFAULT '0',
  [evtUserData2] int  NOT NULL DEFAULT '0',
  [evtUserData3] int  NOT NULL DEFAULT '0',
  [evtUserData4] int  NOT NULL DEFAULT '0',
  [tcTimeInfo] int  NOT NULL DEFAULT '255',
  [taTimeInfo] int  NOT NULL DEFAULT '255',
  [TimeLeft] int  NOT NULL DEFAULT '0',
  [QState] int  NOT NULL DEFAULT '0',
  PRIMARY KEY ([CharID],[QuestID]),
) ON [PRIMARY]

-- ----------------------------
-- Table structure for quickslot
-- ----------------------------
DROP TABLE IF EXISTS [quickslot];
CREATE TABLE [quickslot] (
  [CharID] int  NOT NULL DEFAULT '0',
  [Tblidx] int  NOT NULL DEFAULT '0',
  [Slot] int  NOT NULL DEFAULT '0',
  [Type] int  NOT NULL DEFAULT '0',
  [Item] int  NOT NULL DEFAULT '0',
  PRIMARY KEY ([CharID],[Slot]),
) ON [PRIMARY]

-- ----------------------------
-- Table structure for quick_teleport
-- ----------------------------
DROP TABLE IF EXISTS [quick_teleport];
CREATE TABLE [quick_teleport] (
  [CharID] int  NOT NULL,
  [SlotNum] int  NOT NULL DEFAULT '0',
  [WorldTblidx] int  NOT NULL,
  [LocX] float NOT NULL,
  [LocY] float NOT NULL,
  [LocZ] float NOT NULL,
  [MapNameTblidx] int  NOT NULL,
  [day] int  NOT NULL,
  [hour] int  NOT NULL,
  [minute] int  NOT NULL,
  [month] int  NOT NULL,
  [second] int  NOT NULL,
  [year] int  NOT NULL,
  PRIMARY KEY ([CharID],[SlotNum]),
) ON [PRIMARY]

-- ----------------------------
-- Table structure for rank_battle
-- ----------------------------
DROP TABLE IF EXISTS [rank_battle];
CREATE TABLE [rank_battle] (
  [CharID] int UNIQUE NOT NULL,
  [Win] int  NOT NULL DEFAULT '0',
  [Draw] int  NOT NULL DEFAULT '0',
  [Lose] int  NOT NULL DEFAULT '0',
  [StraightKOWin] int  NOT NULL DEFAULT '0',
  [MaxStraightKOWin] int  NOT NULL DEFAULT '0',
  [MaxStraightWin] int  NOT NULL DEFAULT '0',
  [StraightWin] int  NOT NULL DEFAULT '0',
  [Points] float NOT NULL DEFAULT '0',
  PRIMARY KEY ([CharID]),
) ON [PRIMARY]

-- ----------------------------
-- Table structure for skills
-- ----------------------------
DROP TABLE IF EXISTS [skills];
CREATE TABLE [skills] (
  [skill_id] int  NOT NULL DEFAULT '0',
  [owner_id] int  NOT NULL,
  [RpBonusAuto] int NOT NULL DEFAULT '0',
  [RpBonusType] int  NOT NULL DEFAULT '255',
  [SlotID] int  NOT NULL DEFAULT '0',
  [TimeRemaining] int  NOT NULL DEFAULT '0',
  [Exp] int  NOT NULL DEFAULT '0',
  PRIMARY KEY ([owner_id],[SlotID]),
) ON [PRIMARY]

-- ----------------------------
-- Table structure for titles
-- ----------------------------
DROP TABLE IF EXISTS [titles];
CREATE TABLE [titles] (
  [CharID] int  NOT NULL,
  [TitleTblidx] int  NOT NULL,
  PRIMARY KEY ([CharID],[TitleTblidx]),
) ON [PRIMARY]

-- ----------------------------
-- Table structure for warfog
-- ----------------------------
DROP TABLE IF EXISTS [warfog];
CREATE TABLE [warfog] (
  [CharID] int  NOT NULL,
  [WarFog] int  NOT NULL,
  PRIMARY KEY ([CharID],[WarFog]),
) ON [PRIMARY]
