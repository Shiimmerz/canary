local mType = Game.createMonsterType("Monk familiar")
local monster = {}

monster.description = "a monk familiar"
monster.experience = 0
monster.outfit = {
	--lookType = 994,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 20000
monster.maxHealth = 20000
monster.race = "undead"
monster.corpse = 0
monster.speed = 154
monster.manaCost = 3000

monster.changeTarget = {
	interval = 4000,
	chance = 20,
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = false,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = false,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 2,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	familiar = true,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -200 },
	{ name = "combat", interval = 2000, chance = 18, type = COMBAT_HOLYDAMAGE, minDamage = -200, maxDamage = -270, range = 5, radius = 3, shootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYAREA, target = true },
	{ name = "combat", interval = 2000, chance = 18, type = COMBAT_FIREDAMAGE, minDamage = -200, maxDamage = -270, range = 5, radius = 3, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK, target = true },
	{ name = "combat", interval = 2000, chance = 18, type = COMBAT_FIREDAMAGE, minDamage = -170, maxDamage = -230, range = 5, radius = 5, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK, target = true },
	{ name = "combat", interval = 2000, chance = 18, type = COMBAT_HOLYDAMAGE, minDamage = -170, maxDamage = -230, range = 5, radius = 5, shootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYAREA, target = true },
}

monster.defenses = {
	defense = 55,
	armor = 55,
	--	mitigation = ???,
	{ name = "combat", interval = 2000, chance = 75, type = COMBAT_HEALING, minDamage = 450, maxDamage = 450, effect = CONST_ME_MAGIC_GREEN, target = false },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "invisible", condition = true },
}

mType:register(monster)