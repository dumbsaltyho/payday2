require("lib/tweak_data/WeaponFactoryTweakData")
require("lib/tweak_data/WeaponFalloffTweakData")

local PICKUP = {
	AR_LOW_CAPACITY = 7,
	SHOTGUN_HIGH_CAPACITY = 4,
	OTHER = 1,
	LMG_CAPACITY = 9,
	AR_MED_CAPACITY = 3,
	SNIPER_HIGH_DAMAGE = 6,
	AR_HIGH_CAPACITY = 2,
	SNIPER_LOW_DAMAGE = 5,
	AR_DMR_CAPACITY = 8
}
local SELECTION = {
	SECONDARY = 1,
	PRIMARY = 2,
	UNDERBARREL_SECONDARY = 3,
	UNDERBARREL_PRIMARY = 4
}

local FALLOFF_TEMPLATE = WeaponFalloffTemplate.setup_weapon_falloff_templates()
WeaponTweakData = WeaponTweakData or class()

function WeaponTweakData:_init_data_bessy_crew()
	self.bessy_crew.categories = clone(self.bessy.categories)
	self.bessy_crew.sounds.prefix = "musket_npc"
	self.bessy_crew.use_data.selection_index = SELECTION.PRIMARY
	self.bessy_crew.DAMAGE = 15
	self.bessy_crew.muzzleflash = "effects/payday2/particles/weapons/big_762_auto"
	self.bessy_crew.shell_ejection = "effects/payday2/particles/weapons/shells/shell_empty"
	self.bessy_crew.CLIP_AMMO_MAX = 5
	self.bessy_crew.NR_CLIPS_MAX = 8
	self.bessy_crew.auto.fire_rate = 1
	self.bessy_crew.hold = "rifle"
	self.bessy_crew.alert_size = 5000
	self.bessy_crew.suppression = 1
	self.bessy_crew.FIRE_MODE = "single"
	self.bessy_secondary_crew = deep_clone(self.bessy_crew)
	self.bessy_secondary_crew.use_data.selection_index = SELECTION.SECONDARY
end

function WeaponTweakData:_init_bessy(weapon_data)
	self.bessy = {
		categories = {
			"snp"
		},
		upgrade_blocks = {
			weapon = {
				"clip_ammo_increase"
			}
		},
		has_description = true,
		damage_melee = weapon_data.damage_melee_default,
		damage_melee_effect_mul = weapon_data.damage_melee_effect_multiplier_default,
		sounds = {}
	}
	self.bessy.sounds.fire = "musket_fire"
	self.bessy.sounds.dryfire = "primary_dryfire"
	self.bessy.sounds.enter_steelsight = "lmg_steelsight_enter"
	self.bessy.sounds.leave_steelsight = "lmg_steelsight_exit"
	self.bessy.timers = {
		reload_not_empty = 11.1,
		reload_empty = 11.1,
		unequip = 0.6,
		equip = 0.5
	}
	self.bessy.name_id = "bm_w_bessy"
	self.bessy.desc_id = "bm_w_bessy_desc"
	self.bessy.description_id = "des_bessy"
	self.bessy.global_value = "pda10"
	self.bessy.texture_bundle_folder = "pda10"
	--self.bessy.unlock_func = "has_unlocked_bessy"
	self.bessy.muzzleflash = "effects/payday2/particles/weapons/bessy_muzzle"
	self.bessy.shell_ejection = "effects/payday2/particles/weapons/shells/shell_empty"
	self.bessy.use_data = {
		selection_index = SELECTION.PRIMARY,
		align_place = "left_hand"
	}
	self.bessy.DAMAGE = 1
	self.bessy.damage_falloff = FALLOFF_TEMPLATE.SNIPER_FALL_HIGH
	self.bessy.CLIP_AMMO_MAX = 1
	self.bessy.NR_CLIPS_MAX = 15
	self.bessy.AMMO_MAX = self.bessy.CLIP_AMMO_MAX * self.bessy.NR_CLIPS_MAX
	self.bessy.AMMO_PICKUP = {
		0.2,
		0.8
	}
	self.bessy.FIRE_MODE = "single"
	self.bessy.fire_mode_data = {
		fire_rate = 1
	}
	self.bessy.CAN_TOGGLE_FIREMODE = false
	self.bessy.single = {
		fire_rate = 20
	}
	self.bessy.spread = {
		standing = self.new_m4.spread.standing,
		crouching = self.new_m4.spread.crouching,
		steelsight = self.new_m4.spread.steelsight,
		moving_standing = self.new_m4.spread.moving_standing,
		moving_crouching = self.new_m4.spread.moving_crouching,
		moving_steelsight = self.new_m4.spread.moving_steelsight
	}
	self.bessy.kick = {
		standing = {
			3,
			4.8,
			-0.3,
			0.3
		}
	}
	self.bessy.kick.crouching = self.bessy.kick.standing
	self.bessy.kick.steelsight = self.bessy.kick.standing
	self.bessy.crosshair = {
		standing = {},
		crouching = {},
		steelsight = {}
	}
	self.bessy.crosshair.standing.offset = 1.14
	self.bessy.crosshair.standing.moving_offset = 1.8
	self.bessy.crosshair.standing.kick_offset = 1.6
	self.bessy.crosshair.crouching.offset = 1.1
	self.bessy.crosshair.crouching.moving_offset = 1.6
	self.bessy.crosshair.crouching.kick_offset = 1.4
	self.bessy.crosshair.steelsight.hidden = true
	self.bessy.crosshair.steelsight.offset = 1
	self.bessy.crosshair.steelsight.moving_offset = 1
	self.bessy.crosshair.steelsight.kick_offset = 1.14
	self.bessy.shake = {
		fire_multiplier = 3.5,
		fire_steelsight_multiplier = -3.5
	}
	self.bessy.autohit = weapon_data.autohit_snp_default
	self.bessy.aim_assist = weapon_data.aim_assist_snp_default
	self.bessy.weapon_hold = "bessy"
	self.bessy.animations = {
		equip_id = "equip_bessy",
		recoil_steelsight = true
	}
	self.bessy.can_shoot_through_enemy = true
	self.bessy.can_shoot_through_shield = true
	self.bessy.can_shoot_through_wall = true
	self.bessy.panic_suppression_chance = 0.2
	self.bessy.stats = {
		zoom = 1,
		total_ammo_mod = 21,
		damage = 200,
		alert_size = 7,
		spread = 24,
		spread_moving = 24,
		recoil = 1,
		value = 9,
		extra_ammo = 51,
		reload = 11,
		suppression = 5,
		concealment = 6
	}
	self.bessy.special_damage_multiplier = 5
	self.bessy.armor_piercing_chance = 1
	self.bessy.stats_modifiers = {
		damage = 50
	}
end

Hooks:PostHook(WeaponTweakData, "_create_table_structure", "fbessy_create_table_structure", function(self)
	self.bessy_crew = {
		usage = "is_sniper",
		anim_usage = "is_rifle",
		sounds = {},
		use_data = {},
		auto = {}
	}
end)

Hooks:PostHook(WeaponTweakData, "init", "fbessy_init", function(self, tweak_data)
	self:_init_data_bessy_crew()
end)

Hooks:PostHook(WeaponTweakData, "_init_new_weapons", "fbessy_init_new_weapons", function(self, weapon_data)
	self:_init_bessy(weapon_data)
end)