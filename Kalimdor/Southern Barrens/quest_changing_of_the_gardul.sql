-- quest changing of the Gar'dul (ID: 24591)
-- Dummy Target Spell: 54694
-- Updating quest
UPDATE `quest_template` SET `flags` = 8 WHERE `id` = 24591;

-- Adding Trigger NPC
DELETE FROM `creature_template` WHERE `entry` IN (6045, 6039);
INSERT INTO `creature_template` (`entry`, `modelid1`,  `modelid2`,  `modelid3`,  `modelid4`, `name`, `minlevel`, `maxlevel`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `mindmg`, `maxdmg`, `attackpower`, `unit_flags`, `unit_flags2`, `type_flags`, `AIName`) VALUES 
(6045, 4449, 4449, 4449, 4449, 'Changing of the Gardul - Trigger', 60, 60, 35, 35, 0, 0, 0, 1, 1, 1, 33554436, 0, 1048576, 'SmartAI');
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
('6039','0','0','0','0','0','30788','0','0','0',"Warlord Gar'dul",'','','0','33','33','0','0','1074','1074','0','1','1.14286','1','1.14286','1','1','204','236.325','0','771','0.65','0','0','1','0','2048','0','0','0','0','0','0','112.2','174.675','502','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','SmartAI','0','3','1','2','1','1','1','0','0','0','0','0','0','0','0','1','37811','0','0','','13623');

-- Waypoints
DELETE FROM `waypoints` WHERE `entry` = 6039 AND `pointid` IN (1,2,3,4,5,6);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(6039, 1, -3218.2, -1652.2, 131.24, 'Horde: Changing of the Gardul 1'),
(6039, 2, -3221.15, -1653.15, 131.24, 'Horde: Changing of the Gardul 2'),
(6039, 3, -3222.68, -1655.06, 131.24, 'Horde: Changing of the Gardul 3'),
(6039, 4, -3222.26, -1657.84, 131.24, 'Horde: Changing of the Gardul 4'),
(6039, 5, -3221.14, -1659.5, 131.24, 'Horde: Changing of the Gardul 5'),
(6039, 6, -3215.25, -1667.05, 131.24, 'Horde: Changing of the Gardul 6');

-- Updating Trigger NPC
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 37837;
UPDATE `creature_template` SET `flags_extra` = 0, `unit_flags` = 33554436, `unit_flags2` = 0, `type_flags` = 1048576, `AIName` = 'SmartAI', `faction_h` = 14, `faction_a` = 14, `MovementType` = 0, `maxlevel` = 65, `minlevel` = 65 WHERE `entry` = 37866;
UPDATE `creature` SET `MovementType` = 0 WHERE `id` = 37866;

-- Adding creature_text
DELETE FROM `creature_text` WHERE `entry` IN (6039, 37837);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(6039, 0, 0, 'Thank you, $N., I trust you will, ah, defer to my authority on this matter.', 12, 0, 100, 0, 0, 0, 'Changing of the Gardul - Warlord Gardul'),
(6039, 1, 1, "Hiding? Listen Bloodhilt - I've, ah, reinforced our grip on the Barrens.", 12, 0, 100, 0, 0, 0, 'Changing of the Gardul - Warlord Gardul'),
(6039, 2, 2, "But they've, ah, they've gotten reinforcements! From the Eastern Kingdoms. Whereas I've been, ah, cut off -", 12, 0, 100, 0, 0, 0, 'Changing of the Gardul - Warlord Gardul'),
(6039, 3, 3, 'Relieved? Over my dead body!', 12, 0, 100, 0, 0, 0, 'Changing of the Gardul - Warlord Gardul'),
(6039, 4, 4, 'Wait, ah - wait! I yield, I yield!', 12, 0, 100, 0, 0, 0, 'Changing of the Gardul - Warlord Gardul'),
(37837, 0, 0, "So this is where you're hiding. Gar'dul.", 12, 0, 100, 0, 0, 0, 'Changing of the Gardul - Warlord Bloodhillt'),
(37837, 1, 1, "You cower behind your walls! If it wasn't for $N. here the Alliance would be marching through Mulgore.", 12, 0, 100, 0, 0, 0, 'Changing of the Gardul - Warlord Bloodhillt'),
(37837, 2, 2, 'Your excuses sicken me! Consider yourself relieved of command.', 12, 0, 100, 0, 0, 0, 'Changing of the Gardul - Warlord Bloodhillt'),
(37837, 3, 3, 'So! You DO have a spine!', 12, 0, 100, 0, 0, 0, 'Changing of the Gardul - Warlord Bloodhillt'),
(37837, 4, 4, 'Yield? You ... YIELD?', 12, 0, 100, 0, 0, 0, 'Changing of the Gardul - Warlord Bloodhillt'),
(37837, 5, 5, "What part of 'Victory or Death' don't you understand!?", 12, 0, 100, 0, 0, 0, 'Changing of the Gardul - Warlord Bloodhillt'),
(37837, 6, 6, "Garrosh's Horde does not tolerate failure.", 12, 0, 100, 0, 0, 0, 'Changing of the Gardul - Warlord Bloodhillt'),
(37837, 7, 7, "Meet me down below and we'll discuss our upcoming counter-attack!", 12, 0, 100, 0, 0, 0, 'Changing of the Gardul - Warlord Bloodhillt');

-- SAI 
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (37866, 6045,6039, 37837);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(37866, 0, 0, 0, 100, 1, 1, 1, 1, 1, 33, 37843, 0, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On IC - target player - give questcredit'),
(37866, 0, 1, 0, 100, 1, 1, 1, 1, 1, 11, 54694, 1, 0, 0, 0, 0, 11, 37837, 100, 0, 0, 0, 0, 'On IC - target Trigger NPC - cast dummy spell'),
(37866, 0, 2, 0, 100, 1, 1, 1, 1, 1, 11, 54694, 1, 0, 0, 0, 0, 11, 6045, 100, 0, 0, 0, 0, 'On IC - target Trigger NPC - cast dummy spell'),
(37866, 0, 3, 0, 100, 1, 1, 1, 1, 1, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On range - self - die'),
(6045, 0, 0, 8, 100, 1, 54694, 1, 1, 1, 12, 6039, 3, 30000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On On Spellhit - summon Warlord Gardul - self'),
(6045, 0, 1, 8, 100, 1, 54694, 1, 1, 1, 12, 37837, 3, 30000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On On Spellhit - summon Warlord Bloodhillt - self'),
(37837, 0, 0, 8, 100, 1, 54694, 1, 1, 1, 41, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On On Spellhit - force despawn - self'),
(37837, 0, 1, 8, 100, 1, 54694, 1, 1, 1, 1, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'On text over - simple text'),
(37837, 0, 2, 52, 100, 1, 1, 6039, 0, 0, 1, 1, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'On text over - simple text'),
(37837, 0, 3, 52, 100, 1, 2, 6039, 0, 0, 1, 2, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'On text over - simple text'),
(37837, 0, 4, 52, 100, 1, 3, 6039, 0, 0, 1, 3, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'On text over - simple text'),
(37837, 0, 5, 52, 100, 1, 4, 6039, 0, 0, 1, 4, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'On text over - simple text'),
(37837, 0, 6, 52, 100, 1, 4, 37837, 0, 0, 1, 5, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'On text over - simple text'),
(37837, 0, 7, 52, 100, 1, 5, 37837, 0, 0, 1, 6, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'On text over - simple text'),
(37837, 0, 8, 52, 100, 1, 6, 37837, 0, 0, 1, 7, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'On text over - simple text'),
(6039, 0, 0, 1, 100, 1, 1, 1, 1, 1, 53, 0, 6039, 0, 24591, 60000, 0, 1, 0, 0, 0, 0, 0, 0, 'On OOC - start waypoint'),
(6039, 0, 1, 40, 100, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 11, 37837, 0, 0, 0, 0, 0, 'On waypoint reached - simple text'),
(6039, 0, 2, 40, 100, 1, 1, 0, 0, 0, 67, 1, 2000, 2000, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 'On waypoint reached - create timed event'),
(6039, 0, 3, 59, 100, 1, 1, 0, 0, 0, 11, 54694, 1, 0, 0, 0, 0, 11, 37837, 0, 0, 0, 0, 0, 'On timed event cast spell'),
(6039, 0, 4, 52, 100, 1, 0, 37837, 0, 0, 1, 1, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'On text over - simple text'),
(6039, 0, 5, 52, 100, 1, 1, 37837, 0, 0, 1, 2, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'On text over - simple text'),
(6039, 0, 6, 52, 100, 1, 2, 37837, 0, 0, 1, 3, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'On text over - simple text'),
(6039, 0, 7, 52, 100, 1, 3, 37837, 0, 0, 1, 4, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'On text over - simple text');