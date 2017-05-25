UPDATE `creature_template` SET `ScriptName`='boss_feugen' WHERE `entry`=15930;

-- Adding tesla coil. Values from cmangos classic db
DELETE FROM `creature_template` WHERE entry = 16218;
INSERT INTO `creature_template` 
(`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`,
 `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`,
 `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`,
 `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `MechanicImmuneMask`, `SchoolImmuneMask`,
 `flags_extra`, `ScriptName`) 
VALUES ('16218', '0', '0', '13069', '0', '0', '0', 'Tesla Coil', '0', '60', '60', '17010', '17010', '0', '0', '9729', '14', '14', '0', '1.125', '1.14286', '1', '0', '422', '586', '0', '642', '1', '2000', '2000', '1', '33554688',
 '0', '0', '0', '0', '0', '0', '345', '509', '103', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '',
 '1', -- movement type random
 '4', -- inhabittype always flying
 '0', '0', '3', '0', '0', '0', '1', '0', '0', 'npc_tesla_coil');

-- Thaddius spawn tesla coils, so remove if any in creature table
DELETE FROM `creature` where id = 16218;


/*
INSERT INTO `creature` (`guid`,`id`,`map`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`)
 VALUES (6095,16218,533,0,0,3487.76,-2911.2,319.406,3.90954,120,0,0,17010,0,0,2);
INSERT INTO `creature` (`guid`,`id`,`map`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) 
VALUES (6096,16218,533,0,0,3527.81,-2952.38,319.326,3.90954,120,0,0,17010,0,0,2);
*/
