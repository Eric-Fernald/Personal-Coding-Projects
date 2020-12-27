



--==========================================================================================================================
-- CONFIG DATA
--==========================================================================================================================
-- Players
-------------------------------------	
INSERT INTO Players	
		(CivilizationType,						Portrait,								PortraitBackground,							LeaderType,						LeaderName,									LeaderIcon,								LeaderAbilityName,								LeaderAbilityDescription,									LeaderAbilityIcon,						CivilizationName,							CivilizationIcon,						CivilizationAbilityName,						CivilizationAbilityDescription,								CivilizationAbilityIcon)
VALUES	('CIVILIZATION_PTH_HATTENGAARD',			'LEADER_THAC_NEUTRAL.dds',		'LEADER_JOHN_CURTIN_BACKGROUND',		'LEADER_PTH_THAC',		'LOC_LEADER_PTH_THAC_NAME',		'ICON_LEADER_PTH_THAC',		'LOC_TRAIT_LEADER_PTH_THAC_ECO_NAME',	'LOC_TRAIT_LEADER_PTH_THAC_ECO_DESCRIPTION',		'ICON_LEADER_PTH_THAC',		'LOC_CIVILIZATION_PTH_HATTENGAARD_NAME',		'ICON_CIVILIZATION_PTH_HATTENGAARD',		'LOC_TRAIT_CIVILIZATION_PTH_GRIND_NAME',		'LOC_TRAIT_CIVILIZATION_PTH_GRIND_DESCRIPTION',				'ICON_CIVILIZATION_PTH_HATTENGAARD');








-------------------------------------
-- PlayerItems
-------------------------------------	
INSERT INTO PlayerItems	
		(CivilizationType,					LeaderType,					Type,							Icon,								Name,									  	Description,									SortIndex)
VALUES	('CIVILIZATION_PTH_HATTENGAARD',		'LEADER_PTH_THAC',	'BUILDING_PTH_CUSTOM',				'ICON_BUILDING_PTH_CUSTOM',		'LOC_BUILDING_PTH_CUSTOM_NAME',			'LOC_BUILDING_PTH_CUSTOM_DESCRIPTION',			30);















-------------------------------------
-- MapSupportedValues
-------------------------------------	
--INSERT INTO MapSupportedValues	
--		(Value,						Domain, Map)
--SELECT	'LEADER_PTH_THAC',		Domain, Map
--FROM MapSupportedValues WHERE Value= 'LEADER_TRAJAN';
--==========================================================================================================================
--==========================================================================================================================