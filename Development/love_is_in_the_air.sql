-- Love is in the Air (ID: 8)
-- guidrange 1000000-1010000
-- Horde
-- creatures / gameobject correction
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` = 3296; -- guard_generic (Dunno what its necessary for)
UPDATE `gameobject_template` SET `AIName` = 'SmartGameObjectAI' WHERE `entry` IN (201778);

DELETE FROM `creature_template` WHERE `entry` IN (71000);
INSERT INTO `creature_template` (`entry`, `modelid1`,  `modelid2`,  `modelid3`,  `modelid4`, `name`, `minlevel`, `maxlevel`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `mindmg`, `maxdmg`, `attackpower`, `unit_flags`, `unit_flags2`, `type_flags`, `AIName`) VALUES 
(71000, 4449, 4449, 4449, 4449, 'Crushing the Crown - Trigger', 60, 60, 35, 35, 0, 0, 0, 1, 1, 1, 4, 0, 1048576, 'SmartAI');

-- Orgrimmar
DELETE FROM `gameobject` WHERE `guid` = 42843;
UPDATE `creature` SET `position_x` = 1593.34, `position_y` = -4429.06, `position_z` = 15.52, `orientation` = 1.31 WHERE `guid` = 127011;
UPDATE `creature` SET `position_x` = 1591.84, `position_y` = -4429.29, `position_z` = 15.58, `orientation` = 1.31 WHERE `guid` = 127025;
UPDATE `creature` SET `position_x` = 1780.85, `position_y` = -4508.72, `position_z` = 27.74, `orientation` = 3.45 WHERE `guid` = 127026;
UPDATE `creature` SET `position_x` = 1596.01, `position_y` = -4427.89, `position_z` = 16.3, `orientation` = 1.57 WHERE `guid` = 127014;
UPDATE `creature` SET `position_x` = 1614, `position_y` = -4390.6, `position_z` = 20.9, `orientation` = 4.2 WHERE `guid` = 127024;
UPDATE `creature` SET `position_x` = 1392.5, `position_y` = -4481.8, `position_z` = 31.3, `orientation` = 2.3 WHERE `guid` = 99823;
UPDATE `creature` SET `position_x` = 1395, `position_y` = -4490.9, `position_z` = 31.7, `orientation` = 4 WHERE `guid` = 99825;
UPDATE `creature` SET `position_x` = 1828.92, `position_y` = -4404.72, `position_z` = 103.73, `orientation` = 1.7 WHERE `guid` = 99822;

DELETE FROM `creature` WHERE `guid` IN (1000000, 1000001);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(1000000, '40438','1','1637','5170','1','1','0','0','1570.59','-4385.1','16.3731','4.46702','300','0','0','2215','0','0','0','0','0'),
(1000001, '37671','1','14','4982','1','1','0','37671','1390.32','-4485.18','31.4379','2.58904','300','0','0','12600','0','0','0','0','0');

DELETE FROM `game_event_creature` WHERE `guid` IN (1000000, 1000001);
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES 
(8, 1000000),
(8, 1000001);

-- quests
DELETE FROM `creature_questrelation` WHERE `id` IN (37172, 38328) AND `quest` IN (24536, 24541, 24850, 24576, 24851); 
INSERT INTO `creature_questrelation` VALUES
(37172, 24536),
(37172, 24541),
(37172, 24850),
(37172, 24576),
(38328, 24851);

DELETE FROM `creature_involvedrelation` WHERE `id` IN (37172, 38328) AND `quest` IN (24536, 24541, 24576, 24850, 24851);
INSERT INTO `creature_involvedrelation` VALUES
(37172, 24536),
(37172, 24541),
(37172, 24576),
(38328, 24850),
(38328, 24576),
(38328, 24851);

UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `id` = 24536;
UPDATE `quest_template` SET `NextQuestId` = 0 WHERE `id` = 24805;
UPDATE `quest_template` SET `PrevQuestId` = 24576 WHERE `id` = 28935;
UPDATE `quest_template` SET `method` = 0 WHERE `id` IN (24849, 24851); -- This quest needs a script

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (37172) AND `id` IN (3);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (3296) AND `id` IN (1,2);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (201778, 201716, 71000);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `target_type`,`target_param1`,`target_param2`, `comment`) VALUES 
(37172, 0, 3, 19, 100, 0, 24536, 0, 0, 0, 11, 71520, 2, 11, 3296, 50, 'On Questaccept - spellcast'),
(3296, 0, 1, 8, 100, 0, 70192, 1, 1, 1, 33, 37558, 0, 7, 0, 0, 'On spellhit - give questcredit'), -- doesnt work cause of their script
(201778, 1, 0, 64, 100, 0, 0, 0, 0, 0, 15, 24541, 0, 7, 0, 0, 'On gossip hello - give questcredit');
--(71000, 0, 0, 60, 100, 0, 71024, 1, 1, 1, 33, 38035, 0, 18, 100, 0, 'On spellhit - give questcredit'); -- doesnt work cause 71024 is an area effect // need anoter solution

-- conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` IN (71024);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` IN (10929);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(15,10929,0,0,0,9,0,24657,0,0,0,0,0,'','Quest needed for gossip to be shown'),
(15,10929,0,0,1,9,0,24576,0,0,0,0,0,'','Quest needed for gossip to be shown'),
(13,1,71024,0,0,31,0,3,71000,0,0,0,0,'','spell_implecit_target Trigger NPC');