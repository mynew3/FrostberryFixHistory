-- Guild Herald/Page Horde
-- Guild Herald
UPDATE `creature_template` SET `npcflag` = 4224 WHERE `entry` = 49588;

DELETE FROM `npc_vendor` WHERE `entry` = 49588;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `type`) VALUES
(49588,25,61931,0,0,0,1),
(49588,24,61935,0,0,0,1),
(49588,23,61936,0,0,0,1),
(49588,22,61937,0,0,0,1),
(49588,21,61942,0,0,0,1),
(49588,20,61958,0,0,0,1),
(49588,17,62038,0,0,0,1),
(49588,18,62039,0,0,0,1),
(49588,19,62040,0,0,0,1),
(49588,7,62286,0,0,0,1),
(49588,8,62287,0,0,0,1),
(49588,10,62799,0,0,0,1),
(49588,9,62800,0,0,0,1),
(49588,26,63125,0,0,0,1),
(49588,14,63138,0,0,0,1),
(49588,2,63207,0,0,0,1),
(49588,1,63353,0,0,0,1),
(49588,13,63398,0,0,0,1),
(49588,4,64400,0,0,0,1),
(49588,5,64401,0,0,0,1),
(49588,6,64402,0,0,0,1),
(49588,3,65274,0,0,0,1),
(49588,15,65362,0,0,0,1),
(49588,16,65364,0,0,0,1),
(49588,11,65435,0,0,0,1),
(49588,12,65498,0,0,0,1),
(49588,27,67107,0,0,0,1),
(49588,0,69209,0,0,0,1),
(49588,0,69210,0,0,0,1);

DELETE FROM `conditions` WHERE `SourceGroup` = 49588;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(23,49588,62039,0,0,17,0,4944,1,0,0,0,0,'','Inherited Cape of the Black Baron'),
(23,49588,62038,0,0,17,0,4944,1,0,0,0,0,'','Worn Stoneskin Gargoyle Cape'),
(23,49588,62040,0,0,17,0,4944,1,0,0,0,0,'','Ancient Bloodmoon Cloak'),
(23,49588,61931,0,0,17,0,4946,1,0,0,0,0,'','Polished Helm of Valor'),
(23,49588,61935,0,0,17,0,4946,1,0,0,0,0,'','Tarnished Raging Berserker Helm'),
(23,49588,61936,0,0,17,0,4946,1,0,0,0,0,'','Mystical Coif of Elements'),
(23,49588,61937,0,0,17,0,4946,1,0,0,0,0,'','Stained Shadowcraft Cap'),
(23,49588,61942,0,0,17,0,4946,1,0,0,0,0,'','Preened Tribal War Feathers'),
(23,49588,61958,0,0,17,0,4946,1,0,0,0,0,'','Tattered Dreadmist Mask'),
(23,49588,63353,0,0,17,0,4989,1,0,0,0,0,'','Shroud of Cooperation'),
(23,49588,63207,0,0,17,0,4945,1,0,0,0,0,'','Wrap of Unity'),
(23,49588,65274,0,0,17,0,5035,1,0,0,0,0,'','Cloak of Coordination'),
(23,49588,64400,0,0,17,0,4860,1,0,0,0,0,'','Banner of Cooperation'),
(23,49588,64401,0,0,17,0,5143,1,0,0,0,0,'','Standard of Unity '),
(23,49588,64402,0,0,17,0,5422,1,0,0,0,0,'','Battle Standard of Coordination'),
(23,49588,62286,0,0,17,0,4943,1,0,0,0,0,'','Guild Vault Voucher (7th Slot)'),
(23,49588,62287,0,0,17,0,5158,1,0,0,0,0,'','Guild Vault Voucher (8th Slot)'),
(23,49588,62800,0,0,17,0,5036,1,0,0,0,0,'','Recipe: Seafood Magnifique Feast'),
(23,49588,62799,0,0,17,0,5467,1,0,0,0,0,'','Recipe: Broiled Dragon Feast'),
(23,49588,65435,0,0,17,0,5465,1,0,0,0,0,'','Recipe: Cauldron of Battle'),
(23,49588,65498,0,0,17,0,5024,1,0,0,0,0,'','Recipe: Big Cauldron of Battle'),
(23,49588,63398,0,0,17,0,5144,1,0,0,0,0,'','Armadillo Pup'),
(23,49588,63138,0,0,17,0,5892,1,0,0,0,0,'','Dark Phoenix Hatchling'),
(23,49588,65362,0,0,17,0,5179,1,0,0,0,0,'','Guild Page'),
(23,49588,65364,0,0,17,0,5201,1,0,0,0,0,'','Guild Herald'),
(23,49588,63125,0,0,17,0,4988,1,0,0,0,0,'','Reins of the Dark Phoenix'),
(23,49588,62039,0,0,5,0,1168,224,0,0,0,0,'','Inherited Cape of the Black Baron'),
(23,49588,62038,0,0,5,0,1168,224,0,0,0,0,'','Worn Stoneskin Gargoyle Cape'),
(23,49588,62040,0,0,5,0,1168,224,0,0,0,0,'','Ancient Bloodmoon Cloak'),
(23,49588,61931,0,0,5,0,1168,224,0,0,0,0,'','Polished Helm of Valor'),
(23,49588,61935,0,0,5,0,1168,224,0,0,0,0,'','Tarnished Raging Berserker Helm'),
(23,49588,61936,0,0,5,0,1168,224,0,0,0,0,'','Mystical Coif of Elements'),
(23,49588,61937,0,0,5,0,1168,224,0,0,0,0,'','Stained Shadowcraft Cap'),
(23,49588,61942,0,0,5,0,1168,224,0,0,0,0,'','Preened Tribal War Feathers'),
(23,49588,61958,0,0,5,0,1168,224,0,0,0,0,'','Tattered Dreadmist Mask'),
(23,49588,63353,0,0,5,0,1168,224,0,0,0,0,'','Shroud of Cooperation'),
(23,49588,63207,0,0,5,0,1168,224,0,0,0,0,'','Wrap of Unity'),
(23,49588,65274,0,0,5,0,1168,224,0,0,0,0,'','Cloak of Coordination'),
(23,49588,64400,0,0,5,0,1168,240,0,0,0,0,'','Banner of Cooperation'),
(23,49588,64401,0,0,5,0,1168,240,0,0,0,0,'','Standard of Unity '),
(23,49588,64402,0,0,5,0,1168,240,0,0,0,0,'','Battle Standard of Coordination'),
(23,49588,62286,0,0,5,0,1168,240,0,0,0,0,'','Guild Vault Voucher (7th Slot)'),
(23,49588,62287,0,0,5,0,1168,224,0,0,0,0,'','Guild Vault Voucher (8th Slot)'),
(23,49588,62800,0,0,5,0,1168,224,0,0,0,0,'','Recipe: Seafood Magnifique Feast'),
(23,49588,62799,0,0,5,0,1168,224,0,0,0,0,'','Recipe: Broiled Dragon Feast'),
(23,49588,65435,0,0,5,0,1168,224,0,0,0,0,'','Recipe: Cauldron of Battle'),
(23,49588,65498,0,0,5,0,1168,224,0,0,0,0,'','Recipe: Big Cauldron of Battle'),
(23,49588,63398,0,0,5,0,1168,128,0,0,0,0,'','Armadillo Pup'),
(23,49588,63138,0,0,5,0,1168,128,0,0,0,0,'','Dark Phoenix Hatchling'),
(23,49588,65362,0,0,5,0,1168,240,0,0,0,0,'','Guild Page'),
(23,49588,65364,0,0,5,0,1168,224,0,0,0,0,'','Guild Herald'),
(23,49588,63125,0,0,5,0,1168,128,0,0,0,0,'','Reins of the Dark Phoenix'),
(23,49588,67107,0,0,5,0,1168,128,0,0,0,0,'','Reins of the Korkron Annihilator'),
(23,49588,67107,0,0,17,0,5492,1,0,0,0,0,'','Reins of the Korkron Annihilator'),
(23,49588,69209,0,0,5,0,1168,240,0,0,0,0,'','Tabard Friendly'),
(23,49588,69210,0,0,5,0,1168,224,0,0,0,0,'','Tabard Honored');

-- Guild Page
UPDATE `creature_template` SET `npcflag` = 4224 WHERE `entry` = 49590;

DELETE FROM `npc_vendor` WHERE `entry` = 49590;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `type`) VALUES
(49590,25,61931,0,0,0,1),
(49590,24,61935,0,0,0,1),
(49590,23,61936,0,0,0,1),
(49590,22,61937,0,0,0,1),
(49590,21,61942,0,0,0,1),
(49590,20,61958,0,0,0,1),
(49590,17,62038,0,0,0,1),
(49590,18,62039,0,0,0,1),
(49590,19,62040,0,0,0,1),
(49590,7,62286,0,0,0,1),
(49590,8,62287,0,0,0,1),
(49590,10,62799,0,0,0,1),
(49590,9,62800,0,0,0,1),
(49590,26,63125,0,0,0,1),
(49590,14,63138,0,0,0,1),
(49590,2,63207,0,0,0,1),
(49590,1,63353,0,0,0,1),
(49590,13,63398,0,0,0,1),
(49590,4,64400,0,0,0,1),
(49590,5,64401,0,0,0,1),
(49590,6,64402,0,0,0,1),
(49590,3,65274,0,0,0,1),
(49590,15,65362,0,0,0,1),
(49590,16,65364,0,0,0,1),
(49590,11,65435,0,0,0,1),
(49590,12,65498,0,0,0,1),
(49590,27,67107,0,0,0,1),
(49590,0,69209,0,0,0,1),
(49590,0,69210,0,0,0,1);

DELETE FROM `conditions` WHERE `SourceGroup` = 49590;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(23,49590,62039,0,0,17,0,4944,1,0,0,0,0,'','Inherited Cape of the Black Baron'),
(23,49590,62038,0,0,17,0,4944,1,0,0,0,0,'','Worn Stoneskin Gargoyle Cape'),
(23,49590,62040,0,0,17,0,4944,1,0,0,0,0,'','Ancient Bloodmoon Cloak'),
(23,49590,61931,0,0,17,0,4946,1,0,0,0,0,'','Polished Helm of Valor'),
(23,49590,61935,0,0,17,0,4946,1,0,0,0,0,'','Tarnished Raging Berserker Helm'),
(23,49590,61936,0,0,17,0,4946,1,0,0,0,0,'','Mystical Coif of Elements'),
(23,49590,61937,0,0,17,0,4946,1,0,0,0,0,'','Stained Shadowcraft Cap'),
(23,49590,61942,0,0,17,0,4946,1,0,0,0,0,'','Preened Tribal War Feathers'),
(23,49590,61958,0,0,17,0,4946,1,0,0,0,0,'','Tattered Dreadmist Mask'),
(23,49590,63353,0,0,17,0,4989,1,0,0,0,0,'','Shroud of Cooperation'),
(23,49590,63207,0,0,17,0,4945,1,0,0,0,0,'','Wrap of Unity'),
(23,49590,65274,0,0,17,0,5035,1,0,0,0,0,'','Cloak of Coordination'),
(23,49590,64400,0,0,17,0,4860,1,0,0,0,0,'','Banner of Cooperation'),
(23,49590,64401,0,0,17,0,5143,1,0,0,0,0,'','Standard of Unity '),
(23,49590,64402,0,0,17,0,5422,1,0,0,0,0,'','Battle Standard of Coordination'),
(23,49590,62286,0,0,17,0,4943,1,0,0,0,0,'','Guild Vault Voucher (7th Slot)'),
(23,49590,62287,0,0,17,0,5158,1,0,0,0,0,'','Guild Vault Voucher (8th Slot)'),
(23,49590,62800,0,0,17,0,5036,1,0,0,0,0,'','Recipe: Seafood Magnifique Feast'),
(23,49590,62799,0,0,17,0,5467,1,0,0,0,0,'','Recipe: Broiled Dragon Feast'),
(23,49590,65435,0,0,17,0,5465,1,0,0,0,0,'','Recipe: Cauldron of Battle'),
(23,49590,65498,0,0,17,0,5024,1,0,0,0,0,'','Recipe: Big Cauldron of Battle'),
(23,49590,63398,0,0,17,0,5144,1,0,0,0,0,'','Armadillo Pup'),
(23,49590,63138,0,0,17,0,5892,1,0,0,0,0,'','Dark Phoenix Hatchling'),
(23,49590,65362,0,0,17,0,5179,1,0,0,0,0,'','Guild Page'),
(23,49590,65364,0,0,17,0,5201,1,0,0,0,0,'','Guild Herald'),
(23,49590,63125,0,0,17,0,4988,1,0,0,0,0,'','Reins of the Dark Phoenix'),
(23,49590,62039,0,0,5,0,1168,224,0,0,0,0,'','Inherited Cape of the Black Baron'),
(23,49590,62038,0,0,5,0,1168,224,0,0,0,0,'','Worn Stoneskin Gargoyle Cape'),
(23,49590,62040,0,0,5,0,1168,224,0,0,0,0,'','Ancient Bloodmoon Cloak'),
(23,49590,61931,0,0,5,0,1168,224,0,0,0,0,'','Polished Helm of Valor'),
(23,49590,61935,0,0,5,0,1168,224,0,0,0,0,'','Tarnished Raging Berserker Helm'),
(23,49590,61936,0,0,5,0,1168,224,0,0,0,0,'','Mystical Coif of Elements'),
(23,49590,61937,0,0,5,0,1168,224,0,0,0,0,'','Stained Shadowcraft Cap'),
(23,49590,61942,0,0,5,0,1168,224,0,0,0,0,'','Preened Tribal War Feathers'),
(23,49590,61958,0,0,5,0,1168,224,0,0,0,0,'','Tattered Dreadmist Mask'),
(23,49590,63353,0,0,5,0,1168,224,0,0,0,0,'','Shroud of Cooperation'),
(23,49590,63207,0,0,5,0,1168,224,0,0,0,0,'','Wrap of Unity'),
(23,49590,65274,0,0,5,0,1168,224,0,0,0,0,'','Cloak of Coordination'),
(23,49590,64400,0,0,5,0,1168,240,0,0,0,0,'','Banner of Cooperation'),
(23,49590,64401,0,0,5,0,1168,240,0,0,0,0,'','Standard of Unity '),
(23,49590,64402,0,0,5,0,1168,240,0,0,0,0,'','Battle Standard of Coordination'),
(23,49590,62286,0,0,5,0,1168,240,0,0,0,0,'','Guild Vault Voucher (7th Slot)'),
(23,49590,62287,0,0,5,0,1168,224,0,0,0,0,'','Guild Vault Voucher (8th Slot)'),
(23,49590,62800,0,0,5,0,1168,224,0,0,0,0,'','Recipe: Seafood Magnifique Feast'),
(23,49590,62799,0,0,5,0,1168,224,0,0,0,0,'','Recipe: Broiled Dragon Feast'),
(23,49590,65435,0,0,5,0,1168,224,0,0,0,0,'','Recipe: Cauldron of Battle'),
(23,49590,65498,0,0,5,0,1168,224,0,0,0,0,'','Recipe: Big Cauldron of Battle'),
(23,49590,63398,0,0,5,0,1168,128,0,0,0,0,'','Armadillo Pup'),
(23,49590,63138,0,0,5,0,1168,128,0,0,0,0,'','Dark Phoenix Hatchling'),
(23,49590,65362,0,0,5,0,1168,240,0,0,0,0,'','Guild Page'),
(23,49590,65364,0,0,5,0,1168,224,0,0,0,0,'','Guild Herald'),
(23,49590,63125,0,0,5,0,1168,128,0,0,0,0,'','Reins of the Dark Phoenix'),
(23,49590,67107,0,0,5,0,1168,128,0,0,0,0,'','Reins of the Korkron Annihilator'),
(23,49590,67107,0,0,17,0,5492,1,0,0,0,0,'','Reins of the Korkron Annihilator'),
(23,49590,69209,0,0,5,0,1168,240,0,0,0,0,'','Tabard Friendly'),
(23,49590,69210,0,0,5,0,1168,224,0,0,0,0,'','Tabard Honored');

-- Guild Herald/Page Horde
-- Guild Herald
UPDATE `creature_template` SET `npcflag` = 4224 WHERE `entry` = 49587;

DELETE FROM `npc_vendor` WHERE `entry` = 49587;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `type`) VALUES
(49587,25,61931,0,0,0,1),
(49587,24,61935,0,0,0,1),
(49587,23,61936,0,0,0,1),
(49587,22,61937,0,0,0,1),
(49587,21,61942,0,0,0,1),
(49587,20,61958,0,0,0,1),
(49587,17,62038,0,0,0,1),
(49587,18,62039,0,0,0,1),
(49587,19,62040,0,0,0,1),
(49587,7,62286,0,0,0,1),
(49587,27,62298,0,0,0,1),
(49587,10,62799,0,0,0,1),
(49587,9,62800,0,0,0,1),
(49587,26,63125,0,0,0,1),
(49587,14,63138,0,0,0,1),
(49587,2,63206,0,0,0,1),
(49587,1,63352,0,0,0,1),
(49587,4,63359,0,0,0,1),
(49587,13,63398,0,0,0,1),
(49587,5,64398,0,0,0,1),
(49587,6,64399,0,0,0,1),
(49587,3,65360,0,0,0,1),
(49587,15,65361,0,0,0,1),
(49587,16,65363,0,0,0,1),
(49587,11,65435,0,0,0,1),
(49587,12,65498,0,0,0,1),
(49587,8,68136,0,0,0,1),
(49587,0,69209,0,0,0,1),
(49587,0,69210,0,0,0,1);

DELETE FROM `conditions` WHERE `SourceGroup` = 49587;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(23,49587,62039,0,0,17,0,4944,1,0,0,0,0,'','Inherited Cape of the Black Baron'),
(23,49587,62038,0,0,17,0,4944,1,0,0,0,0,'','Worn Stoneskin Gargoyle Cape'),
(23,49587,62040,0,0,17,0,4944,1,0,0,0,0,'','Ancient Bloodmoon Cloak'),
(23,49587,61931,0,0,17,0,4946,1,0,0,0,0,'','Polished Helm of Valor'),
(23,49587,61935,0,0,17,0,4946,1,0,0,0,0,'','Tarnished Raging Berserker Helm'),
(23,49587,61936,0,0,17,0,4946,1,0,0,0,0,'','Mystical Coif of Elements'),
(23,49587,61937,0,0,17,0,4946,1,0,0,0,0,'','Stained Shadowcraft Cap'),
(23,49587,61942,0,0,17,0,4946,1,0,0,0,0,'','Preened Tribal War Feathers'),
(23,49587,61958,0,0,17,0,4946,1,0,0,0,0,'','Tattered Dreadmist Mask'),
(23,49587,63352,0,0,17,0,4989,1,0,0,0,0,'','Shroud of Cooperation'),
(23,49587,63206,0,0,17,0,4945,1,0,0,0,0,'','Wrap of Unity'),
(23,49587,65360,0,0,17,0,5035,1,0,0,0,0,'','Cloak of Coordination'),
(23,49587,63359,0,0,17,0,4860,1,0,0,0,0,'','Banner of Cooperation'),
(23,49587,64398,0,0,17,0,5143,1,0,0,0,0,'','Standard of Unity '),
(23,49587,64399,0,0,17,0,5422,1,0,0,0,0,'','Battle Standard of Coordination'),
(23,49587,62286,0,0,17,0,4943,1,0,0,0,0,'','Guild Vault Voucher (7th Slot)'),
(23,49587,68136,0,0,17,0,5152,1,0,0,0,0,'','Guild Vault Voucher (8th Slot)'),
(23,49587,62800,0,0,17,0,5036,1,0,0,0,0,'','Recipe: Seafood Magnifique Feast'),
(23,49587,62799,0,0,17,0,5467,1,0,0,0,0,'','Recipe: Broiled Dragon Feast'),
(23,49587,65435,0,0,17,0,5465,1,0,0,0,0,'','Recipe: Cauldron of Battle'),
(23,49587,65498,0,0,17,0,5024,1,0,0,0,0,'','Recipe: Big Cauldron of Battle'),
(23,49587,63398,0,0,17,0,5144,1,0,0,0,0,'','Armadillo Pup'),
(23,49587,63138,0,0,17,0,5812,1,0,0,0,0,'','Dark Phoenix Hatchling'),
(23,49587,65361,0,0,17,0,5031,1,0,0,0,0,'','Guild Page'),
(23,49587,65363,0,0,17,0,5201,1,0,0,0,0,'','Guild Herald'),
(23,49587,63125,0,0,17,0,4988,1,0,0,0,0,'','Reins of the Dark Phoenix'),
(23,49587,62298,0,0,17,0,4912,1,0,0,0,0,'','Reins of the Golden King'),
(23,49587,62039,0,0,5,0,1168,224,0,0,0,0,'','Inherited Cape of the Black Baron'),
(23,49587,62038,0,0,5,0,1168,224,0,0,0,0,'','Worn Stoneskin Gargoyle Cape'),
(23,49587,62040,0,0,5,0,1168,224,0,0,0,0,'','Ancient Bloodmoon Cloak'),
(23,49587,61931,0,0,5,0,1168,224,0,0,0,0,'','Polished Helm of Valor'),
(23,49587,61935,0,0,5,0,1168,224,0,0,0,0,'','Tarnished Raging Berserker Helm'),
(23,49587,61936,0,0,5,0,1168,224,0,0,0,0,'','Mystical Coif of Elements'),
(23,49587,61937,0,0,5,0,1168,224,0,0,0,0,'','Stained Shadowcraft Cap'),
(23,49587,61942,0,0,5,0,1168,224,0,0,0,0,'','Preened Tribal War Feathers'),
(23,49587,61958,0,0,5,0,1168,224,0,0,0,0,'','Tattered Dreadmist Mask'),
(23,49587,63352,0,0,5,0,1168,224,0,0,0,0,'','Shroud of Cooperation'),
(23,49587,63206,0,0,5,0,1168,224,0,0,0,0,'','Wrap of Unity'),
(23,49587,65360,0,0,5,0,1168,224,0,0,0,0,'','Cloak of Coordination'),
(23,49587,63359,0,0,5,0,1168,240,0,0,0,0,'','Banner of Cooperation'),
(23,49587,64398,0,0,5,0,1168,240,0,0,0,0,'','Standard of Unity '),
(23,49587,64399,0,0,5,0,1168,240,0,0,0,0,'','Battle Standard of Coordination'),
(23,49587,62286,0,0,5,0,1168,240,0,0,0,0,'','Guild Vault Voucher (7th Slot)'),
(23,49587,68136,0,0,5,0,1168,224,0,0,0,0,'','Guild Vault Voucher (8th Slot)'),
(23,49587,62800,0,0,5,0,1168,224,0,0,0,0,'','Recipe: Seafood Magnifique Feast'),
(23,49587,62799,0,0,5,0,1168,224,0,0,0,0,'','Recipe: Broiled Dragon Feast'),
(23,49587,65435,0,0,5,0,1168,224,0,0,0,0,'','Recipe: Cauldron of Battle'),
(23,49587,65498,0,0,5,0,1168,224,0,0,0,0,'','Recipe: Big Cauldron of Battle'),
(23,49587,63398,0,0,5,0,1168,128,0,0,0,0,'','Armadillo Pup'),
(23,49587,63138,0,0,5,0,1168,128,0,0,0,0,'','Dark Phoenix Hatchling'),
(23,49587,65361,0,0,5,0,1168,240,0,0,0,0,'','Guild Page'),
(23,49587,65363,0,0,5,0,1168,224,0,0,0,0,'','Guild Herald'),
(23,49587,63125,0,0,5,0,1168,128,0,0,0,0,'','Reins of the Dark Phoenix'),
(23,49587,62298,0,0,5,0,1168,128,0,0,0,0,'','Reins of the Golden King'),
(23,49587,69209,0,0,5,0,1168,240,0,0,0,0,'','Tabard Friendly'),
(23,49587,69210,0,0,5,0,1168,224,0,0,0,0,'','Tabard Honored');

-- Guild Page
UPDATE `creature_template` SET `npcflag` = 4224 WHERE `entry` = 49586;

DELETE FROM `npc_vendor` WHERE `entry` = 49586;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `type`) VALUES
(49586,25,61931,0,0,0,1),
(49586,24,61935,0,0,0,1),
(49586,23,61936,0,0,0,1),
(49586,22,61937,0,0,0,1),
(49586,21,61942,0,0,0,1),
(49586,20,61958,0,0,0,1),
(49586,17,62038,0,0,0,1),
(49586,18,62039,0,0,0,1),
(49586,19,62040,0,0,0,1),
(49586,7,62286,0,0,0,1),
(49586,27,62298,0,0,0,1),
(49586,10,62799,0,0,0,1),
(49586,9,62800,0,0,0,1),
(49586,26,63125,0,0,0,1),
(49586,14,63138,0,0,0,1),
(49586,2,63206,0,0,0,1),
(49586,1,63352,0,0,0,1),
(49586,4,63359,0,0,0,1),
(49586,13,63398,0,0,0,1),
(49586,5,64398,0,0,0,1),
(49586,6,64399,0,0,0,1),
(49586,3,65360,0,0,0,1),
(49586,15,65361,0,0,0,1),
(49586,16,65363,0,0,0,1),
(49586,11,65435,0,0,0,1),
(49586,12,65498,0,0,0,1),
(49586,8,68136,0,0,0,1),
(49586,0,69209,0,0,0,1),
(49586,0,69210,0,0,0,1);

DELETE FROM `conditions` WHERE `SourceGroup` = 49586;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(23,49586,62039,0,0,17,0,4944,1,0,0,0,0,'','Inherited Cape of the Black Baron'),
(23,49586,62038,0,0,17,0,4944,1,0,0,0,0,'','Worn Stoneskin Gargoyle Cape'),
(23,49586,62040,0,0,17,0,4944,1,0,0,0,0,'','Ancient Bloodmoon Cloak'),
(23,49586,61931,0,0,17,0,4946,1,0,0,0,0,'','Polished Helm of Valor'),
(23,49586,61935,0,0,17,0,4946,1,0,0,0,0,'','Tarnished Raging Berserker Helm'),
(23,49586,61936,0,0,17,0,4946,1,0,0,0,0,'','Mystical Coif of Elements'),
(23,49586,61937,0,0,17,0,4946,1,0,0,0,0,'','Stained Shadowcraft Cap'),
(23,49586,61942,0,0,17,0,4946,1,0,0,0,0,'','Preened Tribal War Feathers'),
(23,49586,61958,0,0,17,0,4946,1,0,0,0,0,'','Tattered Dreadmist Mask'),
(23,49586,63352,0,0,17,0,4989,1,0,0,0,0,'','Shroud of Cooperation'),
(23,49586,63206,0,0,17,0,4945,1,0,0,0,0,'','Wrap of Unity'),
(23,49586,65360,0,0,17,0,5035,1,0,0,0,0,'','Cloak of Coordination'),
(23,49586,63359,0,0,17,0,4860,1,0,0,0,0,'','Banner of Cooperation'),
(23,49586,64398,0,0,17,0,5143,1,0,0,0,0,'','Standard of Unity '),
(23,49586,64399,0,0,17,0,5422,1,0,0,0,0,'','Battle Standard of Coordination'),
(23,49586,62286,0,0,17,0,4943,1,0,0,0,0,'','Guild Vault Voucher (7th Slot)'),
(23,49586,68136,0,0,17,0,5152,1,0,0,0,0,'','Guild Vault Voucher (8th Slot)'),
(23,49586,62800,0,0,17,0,5036,1,0,0,0,0,'','Recipe: Seafood Magnifique Feast'),
(23,49586,62799,0,0,17,0,5467,1,0,0,0,0,'','Recipe: Broiled Dragon Feast'),
(23,49586,65435,0,0,17,0,5465,1,0,0,0,0,'','Recipe: Cauldron of Battle'),
(23,49586,65498,0,0,17,0,5024,1,0,0,0,0,'','Recipe: Big Cauldron of Battle'),
(23,49586,63398,0,0,17,0,5144,1,0,0,0,0,'','Armadillo Pup'),
(23,49586,63138,0,0,17,0,5812,1,0,0,0,0,'','Dark Phoenix Hatchling'),
(23,49586,65361,0,0,17,0,5031,1,0,0,0,0,'','Guild Page'),
(23,49586,65363,0,0,17,0,5201,1,0,0,0,0,'','Guild Herald'),
(23,49586,63125,0,0,17,0,4988,1,0,0,0,0,'','Reins of the Dark Phoenix'),
(23,49586,62298,0,0,17,0,4912,1,0,0,0,0,'','Reins of the Golden King'),
(23,49586,62039,0,0,5,0,1168,224,0,0,0,0,'','Inherited Cape of the Black Baron'),
(23,49586,62038,0,0,5,0,1168,224,0,0,0,0,'','Worn Stoneskin Gargoyle Cape'),
(23,49586,62040,0,0,5,0,1168,224,0,0,0,0,'','Ancient Bloodmoon Cloak'),
(23,49586,61931,0,0,5,0,1168,224,0,0,0,0,'','Polished Helm of Valor'),
(23,49586,61935,0,0,5,0,1168,224,0,0,0,0,'','Tarnished Raging Berserker Helm'),
(23,49586,61936,0,0,5,0,1168,224,0,0,0,0,'','Mystical Coif of Elements'),
(23,49586,61937,0,0,5,0,1168,224,0,0,0,0,'','Stained Shadowcraft Cap'),
(23,49586,61942,0,0,5,0,1168,224,0,0,0,0,'','Preened Tribal War Feathers'),
(23,49586,61958,0,0,5,0,1168,224,0,0,0,0,'','Tattered Dreadmist Mask'),
(23,49586,63352,0,0,5,0,1168,224,0,0,0,0,'','Shroud of Cooperation'),
(23,49586,63206,0,0,5,0,1168,224,0,0,0,0,'','Wrap of Unity'),
(23,49586,65360,0,0,5,0,1168,224,0,0,0,0,'','Cloak of Coordination'),
(23,49586,63359,0,0,5,0,1168,240,0,0,0,0,'','Banner of Cooperation'),
(23,49586,64398,0,0,5,0,1168,240,0,0,0,0,'','Standard of Unity '),
(23,49586,64399,0,0,5,0,1168,240,0,0,0,0,'','Battle Standard of Coordination'),
(23,49586,62286,0,0,5,0,1168,240,0,0,0,0,'','Guild Vault Voucher (7th Slot)'),
(23,49586,68136,0,0,5,0,1168,224,0,0,0,0,'','Guild Vault Voucher (8th Slot)'),
(23,49586,62800,0,0,5,0,1168,224,0,0,0,0,'','Recipe: Seafood Magnifique Feast'),
(23,49586,62799,0,0,5,0,1168,224,0,0,0,0,'','Recipe: Broiled Dragon Feast'),
(23,49586,65435,0,0,5,0,1168,224,0,0,0,0,'','Recipe: Cauldron of Battle'),
(23,49586,65498,0,0,5,0,1168,224,0,0,0,0,'','Recipe: Big Cauldron of Battle'),
(23,49586,63398,0,0,5,0,1168,128,0,0,0,0,'','Armadillo Pup'),
(23,49586,63138,0,0,5,0,1168,128,0,0,0,0,'','Dark Phoenix Hatchling'),
(23,49586,65361,0,0,5,0,1168,240,0,0,0,0,'','Guild Page'),
(23,49586,65363,0,0,5,0,1168,224,0,0,0,0,'','Guild Herald'),
(23,49586,63125,0,0,5,0,1168,128,0,0,0,0,'','Reins of the Dark Phoenix'),
(23,49586,62298,0,0,5,0,1168,128,0,0,0,0,'','Reins of the Golden King'),
(23,49586,69209,0,0,5,0,1168,240,0,0,0,0,'','Tabard Friendly'),
(23,49586,69210,0,0,5,0,1168,224,0,0,0,0,'','Tabard Honored');