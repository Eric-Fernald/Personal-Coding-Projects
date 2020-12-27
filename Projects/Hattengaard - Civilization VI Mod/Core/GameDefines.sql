--==========================================================================================================================
-- LEADERS
--==========================================================================================================================
-- Types
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,							Kind)
VALUES	('LEADER_PTH_THAC',	'KIND_LEADER');	
--------------------------------------------------------------------------------------------------------------------------
-- Leaders
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Leaders	
		(LeaderType,					Name,										InheritFrom,		SceneLayers)
VALUES	('LEADER_PTH_THAC',	'LOC_LEADER_PTH_THAC_NAME',		'LEADER_DEFAULT',	4);	
--------------------------------------------------------------------------------------------------------------------------
-- LeaderQuotes
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO LeaderQuotes	
		(LeaderType,			Quote)
VALUES	('LEADER_PTH_THAC',	'LOC_PEDIA_LEADERS_PAGE_LEADER_PTH_THAC_QUOTE');	
--------------------------------------------------------------------------------------------------------------------------
-- HistoricalAgendas
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO HistoricalAgendas	
		(LeaderType,					AgendaType)
VALUES	('LEADER_PTH_THAC',	'AGENDA_LAST_VIKING_KING');
--------------------------------------------------------------------------------------------------------------------------
-- AgendaPreferredLeaders
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO AgendaPreferredLeaders	
		(LeaderType,					AgendaType)
VALUES	('LEADER_PTH_THAC',	'AGENDA_CIVILIZED');	


--==========================================================================================================================
-- LEADERS: COLOURS
--==========================================================================================================================
-- PlayerColors
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO PlayerColors	
		(Type,							Usage,			PrimaryColor, 										SecondaryColor,											TextColor)
VALUES	('LEADER_PTH_THAC',	'Unique',		'COLOR_PLAYER_PTH_HATTENGAARD_THAC_PRIMARY',		'COLOR_PLAYER_PTH_HATTENGAARD_THAC_SECONDARY', 		'COLOR_PLAYER_WHITE_TEXT');	

INSERT INTO Colors 
		(Type, 														Red, 	Green, 	Blue, 	Alpha)
VALUES	('COLOR_PLAYER_PTH_HATTENGAARD_THAC_PRIMARY', 		0.50,	0.00,	0.60,	1),
		('COLOR_PLAYER_PTH_HATTENGAARD_THAC_SECONDARY', 	1.00,	0.90,	0.20,	1);



--==========================================================================================================================
-- LEADERS: LOADING INFO
--==========================================================================================================================
-- LoadingInfo
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO LoadingInfo	
		(LeaderType,						BackgroundImage, 						ForegroundImage,						PlayDawnOfManAudio)
VALUES	('LEADER_PTH_THAC',		'LEADER_THAC_BACKGROUND',		'LEADER_THAC_NEUTRAL',			0);	
--==========================================================================================================================
-- CIVILIZATIONS
--==========================================================================================================================
-- Types
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,						Kind)
VALUES	('CIVILIZATION_PTH_HATTENGAARD',	'KIND_CIVILIZATION');
----------------------------------------------------------------------------------------------------------------------------
-- Civilizations
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Civilizations	
		(CivilizationType,					Name,										Description,									Adjective,										StartingCivilizationLevelType,	RandomCityNameDepth,	Ethnicity)
VALUES	('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CIVILIZATION_PTH_HATTENGAARD_NAME',	'LOC_CIVILIZATION_PTH_HATTENGAARD_DESCRIPTION',	'LOC_CIVILIZATION_PTH_HATTENGAARD_ADJECTIVE',	'CIVILIZATION_LEVEL_FULL_CIV',	30,						'ETHNICITY_EURO');	
----------------------------------------------------------------------------------------------------------------------------			
-- CityNames			
----------------------------------------------------------------------------------------------------------------------------		
INSERT INTO CityNames	
		(CivilizationType,			CityName)	
VALUES	('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITY_NAME_PTH_HATTENGAARD_2'),	
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITY_NAME_PTH_HATTENGAARD_3'),	
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITY_NAME_PTH_HATTENGAARD_4'),	
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITY_NAME_PTH_HATTENGAARD_5'),	
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITY_NAME_PTH_HATTENGAARD_6'),	
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITY_NAME_PTH_HATTENGAARD_7'),	
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITY_NAME_PTH_HATTENGAARD_8'),	
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITY_NAME_PTH_HATTENGAARD_9'),	
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITY_NAME_PTH_HATTENGAARD_10'),	
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITY_NAME_PTH_HATTENGAARD_11'),	
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITY_NAME_PTH_HATTENGAARD_12'),	
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITY_NAME_PTH_HATTENGAARD_13'),	
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITY_NAME_PTH_HATTENGAARD_14'),	
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITY_NAME_PTH_HATTENGAARD_15'),	
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITY_NAME_PTH_HATTENGAARD_16'),	
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITY_NAME_PTH_HATTENGAARD_17'),	
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITY_NAME_PTH_HATTENGAARD_18'),	
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITY_NAME_PTH_HATTENGAARD_19'),	
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITY_NAME_PTH_HATTENGAARD_20'),	
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITY_NAME_PTH_HATTENGAARD_21'),	
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITY_NAME_PTH_HATTENGAARD_22'),	
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITY_NAME_PTH_HATTENGAARD_23'),	
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITY_NAME_PTH_HATTENGAARD_24'),	
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITY_NAME_PTH_HATTENGAARD_25'),	
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITY_NAME_PTH_HATTENGAARD_26'),	
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITY_NAME_PTH_HATTENGAARD_27'),	
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITY_NAME_PTH_HATTENGAARD_28'),	
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITY_NAME_PTH_HATTENGAARD_29'),	
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITY_NAME_PTH_HATTENGAARD_30');	
----------------------------------------------------------------------------------------------------------------------------
-- CivilizationCitizenNames
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO CivilizationCitizenNames	
		(CivilizationType,			CitizenName,								Female,		Modern)
VALUES	('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_MALE_1',				0,			0),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_MALE_2',				0,			0),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_MALE_3',				0,			0),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_MALE_4',				0,			0),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_MALE_5',				0,			0),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_MALE_6',				0,			0),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_MALE_7',				0,			0),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_MALE_8',				0,			0),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_MALE_9',				0,			0),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_MALE_10',				0,			0),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_FEMALE_1',			1,			0),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_FEMALE_2',			1,			0),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_FEMALE_3',			1,			0),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_FEMALE_4',			1,			0),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_FEMALE_5',			1,			0),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_FEMALE_6',			1,			0),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_FEMALE_7',			1,			0),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_FEMALE_8',			1,			0),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_FEMALE_9',			1,			0),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_FEMALE_10',			1,			0),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_MODERN_MALE_1',		0,			1),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_MODERN_MALE_2',		0,			1),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_MODERN_MALE_3',		0,			1),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_MODERN_MALE_4',		0,			1),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_MODERN_MALE_5',		0,			1),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_MODERN_MALE_6',		0,			1),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_MODERN_MALE_7',		0,			1),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_MODERN_MALE_8',		0,			1),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_MODERN_MALE_9',		0,			1),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_MODERN_MALE_10',		0,			1),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_MODERN_FEMALE_1',		1,			1),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_MODERN_FEMALE_2',		1,			1),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_MODERN_FEMALE_3',		1,			1),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_MODERN_FEMALE_4',		1,			1),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_MODERN_FEMALE_5',		1,			1),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_MODERN_FEMALE_6',		1,			1),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_MODERN_FEMALE_7',		1,			1),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_MODERN_FEMALE_8',		1,			1),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_MODERN_FEMALE_9',		1,			1),
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CITIZEN_PTH_HATTENGAARD_MODERN_FEMALE_10',	1,			1);	
----------------------------------------------------------------------------------------------------------------------------			
-- CivilizationInfo			
----------------------------------------------------------------------------------------------------------------------------		
INSERT INTO CivilizationInfo	
		(CivilizationType,			Header,						Caption,								SortIndex)	
VALUES	('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CIVINFO_LOCATION',		'LOC_CIVINFO_PTH_HATTENGAARD_LOCATION',		10),	
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CIVINFO_SIZE',			'LOC_CIVINFO_PTH_HATTENGAARD_SIZE',			20),	
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CIVINFO_POPULATION',	'LOC_CIVINFO_PTH_HATTENGAARD_POPULATION',		30),	
		('CIVILIZATION_PTH_HATTENGAARD',	'LOC_CIVINFO_CAPITAL', 		'LOC_CIVINFO_PTH_HATTENGAARD_CAPITAL',			40);
----------------------------------------------------------------------------------------------------------------------------
-- CivilizationLeaders
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO CivilizationLeaders	
		(CivilizationType,						LeaderType,			CapitalName)
VALUES	('CIVILIZATION_PTH_HATTENGAARD',	'LEADER_PTH_THAC',		'LOC_CITY_NAME_PTH_HATTENGAARD_1');






--------------------------------------------------------------------------------------------------------------------------		
-- BackGround Art		
--------------------------------------------------------------------------------------------------------------------------			
INSERT INTO DiplomacyInfo			
		(Type,								BackgroundImage)
VALUES	('LEADER_PTH_THAC',		'ART_LEADER_THAC.dds');



















--==========================================================================================================================
-- LEADERS: TRAITS
--==========================================================================================================================
-- Types
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,														Kind)
VALUES	('TRAIT_LEADER_PTH_THAC_ECO',						'KIND_TRAIT');	
--------------------------------------------------------------------------------------------------------------------------			
-- Traits			
--------------------------------------------------------------------------------------------------------------------------				
INSERT INTO Traits				
		(TraitType,													Name,													Description)
VALUES	('TRAIT_LEADER_PTH_THAC_ECO',						'LOC_TRAIT_LEADER_PTH_THAC_ECO_NAME',			'LOC_TRAIT_LEADER_PTH_THAC_ECO_DESCRIPTION');	
--------------------------------------------------------------------------------------------------------------------------		
-- TraitModifiers		
--------------------------------------------------------------------------------------------------------------------------			
INSERT INTO TraitModifiers			
		(TraitType,													ModifierId)
VALUES	('TRAIT_LEADER_PTH_THAC_ECO',						'PTH_THAC_ECO_EXTRA_SLOT_1');
--------------------------------------------------------------------------------------------------------------------------
-- Modifiers
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers	
		(ModifierId,												ModifierType)
VALUES	('PTH_THAC_ECO_EXTRA_SLOT_1',						'MODIFIER_PLAYER_CULTURE_ADJUST_GOVERNMENT_SLOTS_MODIFIER');
--------------------------------------------------------------------------------------------------------------------------
-- ModifierArguments
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,												Name,							Value)
VALUES	('PTH_THAC_ECO_EXTRA_SLOT_1',						'GovernmentSlotType',			'SLOT_ECONOMIC');













--==========================================================================================================================
-- CIVILIZATIONS: TRAITS
--==========================================================================================================================
-- Types
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,													Kind)
VALUES	('TRAIT_CIVILIZATION_PTH_GRIND',						'KIND_TRAIT'),
		('TRAIT_CIVILIZATION_BUILDING_PTH_CUSTOM',			'KIND_TRAIT');	
--------------------------------------------------------------------------------------------------------------------------			
-- Traits			
--------------------------------------------------------------------------------------------------------------------------				
INSERT INTO Traits				
		(TraitType,													Name,													Description)
VALUES	('TRAIT_CIVILIZATION_PTH_GRIND',						'LOC_TRAIT_CIVILIZATION_PTH_GRIND_NAME',					'LOC_TRAIT_CIVILIZATION_PTH_GRIND_DESCRIPTION'),
		('TRAIT_CIVILIZATION_BUILDING_PTH_CUSTOM',			'LOC_TRAIT_CIVILIZATION_BUILDING_PTH_CUSTOM_NAME',		'LOC_TRAIT_CIVILIZATION_BUILDING_PTH_CUSTOM_DESCRIPTION');	
--------------------------------------------------------------------------------------------------------------------------		
-- TraitModifiers		
--------------------------------------------------------------------------------------------------------------------------			
INSERT INTO TraitModifiers			
		(TraitType,											ModifierId)
VALUES	('TRAIT_CIVILIZATION_PTH_GRIND',					'PTH_TRAIT_EXP_ATK'),
		('TRAIT_CIVILIZATION_PTH_GRIND',					'PTH_TRAIT_EXP'),
		('TRAIT_CIVILIZATION_PTH_GRIND',					'PTH_TRAIT_GoldPerKill');																					
--------------------------------------------------------------------------------------------------------------------------
-- Modifiers
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers	
		(ModifierId,												ModifierType)
VALUES	('PTH_TRAIT_EXP_ATK',										'MODIFIER_PLAYER_UNITS_ADJUST_UNIT_ATTACK_EXPERIENCE_MODIFIER'),
		('PTH_TRAIT_EXP',											'MODIFIER_PLAYER_UNITS_ADJUST_UNIT_EXPERIENCE_MODIFIER'),
		('PTH_TRAIT_GoldPerKill',									'MODIFIER_PLAYER_UNITS_ADJUST_POST_COMBAT_YIELD');			
--------------------------------------------------------------------------------------------------------------------------
-- ModifierArguments
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,												Name,						Value)
VALUES	('PTH_TRAIT_EXP_ATK',										'Amount',					'50'),
		('PTH_TRAIT_EXP',											'Amount',					'50'),
		('PTH_TRAIT_GoldPerKill',									'YieldType',				'YIELD_GOLD'),
		('PTH_TRAIT_GoldPerKill',									'PercentDefeatedStrength',	'100');				

















--------------------------------------------------------------------------------------------------------------------------
-- LeaderTraits
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,			TraitType)
VALUES	('LEADER_PTH_THAC',	'TRAIT_LEADER_PTH_THAC_ECO');	



----------------------------------------------------------------------------------------------------------------------------
-- CivilizationTraits
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO CivilizationTraits	
		(TraitType,															CivilizationType)
VALUES	('TRAIT_CIVILIZATION_PTH_GRIND',									'CIVILIZATION_PTH_HATTENGAARD'),
		('TRAIT_CIVILIZATION_BUILDING_PTH_CUSTOM',							'CIVILIZATION_PTH_HATTENGAARD');







