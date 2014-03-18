-- quest the captains logs (ID: 14134)

-- Updating shredder and guardians of orgrimmar
UPDATE `creature_template` SET `type_flags` = 393256, `dynamicflags` = 0, `npcflag` = 0, unit_flags = 134217728, `VehicleId` = 460 WHERE `entry` = 35129;
UPDATE `creature_template` SET `unit_flags` = 512 WHERE `entry` IN (35190, 35194, 35177);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 35086;

-- Updating Quest
UPDATE `quest_template` SET `flags` = 8 WHERE `id` = 14134;

-- Adding npc_spellclick_spells
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 35129 AND `spell_id` = 62309;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(35129, 62309, 1, 0);

-- Adding SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 60011 AND `id` IN (0,1);
DELETE FROM `smart_scripts` WHERE `entryorguid` = 35086;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `target_type`,`target_param1`,`target_param2`, `comment`) VALUES 
(60011, 0, 0, 13, 100, 1, 1, 1, 66795, 0, 56, 47050, 1, 0, 18, 100, 0, 'On victim casting - target player - give questcredit'),
(60011, 0, 1, 13, 100, 1, 1, 1, 66795, 0, 37, 0, 0, 0, 1, 0, 0, 'On victim casting - kill - self'),
(35086, 0, 0, 19, 100, 1, 14134, 0, 0, 0, 12, 35129, 6, 2000, 1, 0, 0, 'On quest accept - summon vehicle');

-- Adding Trigger creature
-- DELETE FROM `creature` WHERE `id` = 60011;
DELETE FROM `creature_template` WHERE `entry` = 60011;
INSERT INTO `creature_template` (`entry`, `modelid1`,  `modelid2`,  `modelid3`,  `modelid4`, `name`, `minlevel`, `maxlevel`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `mindmg`, `maxdmg`, `attackpower`, `unit_flags`, `unit_flags2`, `type_flags`, `AIName`) VALUES 
(60011, 4449, 4449, 4449, 4449, 'The captains Logs - Trigger', 60, 60, 14, 14, 0, 0, 0, 1, 1, 1, 33554436, 2, 1048576, 'SmartAI');

-- Spawning Trigger
DELETE FROM `creature` WHERE `guid` = 140755;
DELETE FROM `creature` WHERE `id` = 60011;
DELETE FROM `creature` WHERE `id` = 35129;
INSERT INTO `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('60011','1','16','4745','1','1','0','0','2643.68','-4872.39','128.902','0.0334463','300','1','0','1','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2651.94','-4875.71','127.186','5.47333','300','1','0','1','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2655.62','-4880.98','126.418','2.62033','300','1','0','1','0','0','0','0','0'),
('60011','1','16','4744','1','1','0','0','2708.33','-4878.96','117.345','5.83768','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4744','1','1','0','0','2701.67','-4881.65','117.164','0.135688','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2701.91','-4906.25','120.318','4.30223','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2701.48','-4913.72','115.021','5.64939','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2716.03','-4906.6','114.511','2.88071','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2678.17','-4942.75','120.645','1.97973','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2666.92','-4942.24','122.909','3.40623','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2641.17','-4924.4','127.263','1.88256','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2596.62','-4927.64','135.35','3.25308','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2600.03','-4940.47','132.254','4.79971','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4744','1','1','0','0','2719.92','-4843.64','122.644','0.578191','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4744','1','1','0','0','2723.68','-4835.64','121.534','3.91289','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4744','1','1','0','0','2729','-4843.97','122.966','3.81078','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4744','1','1','0','0','2749.15','-4847.81','117.684','5.95099','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2778.76','-4943.98','117.406','5.95099','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2777.27','-4952.96','117.937','4.52245','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','1234','1','1','0','0','2750.56','-4996.68','121.624','2.58252','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','1234','1','1','0','0','2748.63','-4988.08','120.715','4.62455','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','1234','1','1','0','0','2747.93','-4977.98','119.344','1.96178','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','1234','1','1','0','0','2690.18','-4995.66','122.565','2.69248','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','1234','1','1','0','0','2684.08','-4996.34','121.398','2.54718','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2657.79','-4981.13','122.01','0.725057','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2603.77','-4841.31','146.94','2.89579','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2607.83','-4832.36','140.953','2.47953','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2605.46','-4812.89','144.22','1.53954','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2617.28','-4810.21','139.262','2.52929','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2601.47','-4798.5','144.027','5.67481','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2641.25','-4781.16','138.486','5.80834','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2656.07','-4796.36','138.288','5.46669','300','0','0','3524','0','0','0','0','0'),
('35129','1','16','4745','1','65535','0','0','2546.34','-4868.78','146.283','0.754566','300','0','0','371','0','0','16777216','0','0');