function WeaponFactoryTweakData:_init_bessy()
	self.parts.wpn_fps_spec_bessy_barrel = {
		texture_bundle_folder = "pda10",
		a_obj = "a_alignment",
		type = "barrel",
		name_id = "bm_wp_bessy_barrel",
		unit = "units/pd2_dlc_pda10/weapons/wpn_fps_spec_bessy_pts/wpn_fps_spec_bessy_barrel",
		stats = {
			value = 1
		}
	}
	self.parts.wpn_fps_spec_bessy_reciever = {
		texture_bundle_folder = "pda10",
		a_alignment = "a_b",
		type = "reciever",
		name_id = "bm_wp_bessy_reciever",
		unit = "units/pd2_dlc_pda10/weapons/wpn_fps_spec_bessy_pts/wpn_fps_spec_bessy_reciever",
		stats = {
			value = 1
		},
		animations = {
			reload_not_empty = "reload",
			reload = "reload",
			fire_steelsight = "recoil",
			fire = "recoil"
		}
	}
	self.parts.wpn_fps_spec_bessy_stock = {
		texture_bundle_folder = "pda10",
		a_obj = "a_alignment",
		type = "stock",
		name_id = "bm_wp_bessy_reciever",
		unit = "units/pd2_dlc_pda10/weapons/wpn_fps_spec_bessy_pts/wpn_fps_spec_bessy_stock",
		stats = {
			value = 1
		},
		animations = {
			reload_not_empty = "reload",
			reload = "reload",
			fire_steelsight = "recoil",
			fire = "recoil"
		}
	}
	self.parts.wpn_fps_spec_bessy_rod = {
		texture_bundle_folder = "pda10",
		a_obj = "a_alignment",
		type = "extra",
		name_id = "bm_wp_bessy_reciever",
		unit = "units/pd2_dlc_pda10/weapons/wpn_fps_spec_bessy_pts/wpn_fps_spec_bessy_rod",
		stats = {
			value = 1
		},
		animations = {
			reload_not_empty = "reload",
			reload = "reload",
			fire_steelsight = "recoil",
			fire = "recoil"
		}
	}
	self.parts.wpn_fps_spec_bessy_bayonette = {
		--is_a_unlockable = true,
		texture_bundle_folder = "pda10",
		type = "bayonet",
		a_obj = "a_ns",
		parent = "barrel",
		dlc = "pda10",
		name_id = "bm_wp_bessy_bayonette",
		unit = "units/pd2_dlc_pda10/weapons/wpn_fps_spec_bessy_pts/wpn_fps_spec_bessy_bayonette",
		pcs = {},
		stats = {
			min_damage = 4,
			min_damage_effect = 1.75,
			concealment = -2,
			max_damage_effect = 1.75,
			value = 1,
			max_damage = 4
		}
	}
	self.parts.wpn_fps_spec_bessy_barrel.third_unit = "units/pd2_dlc_pda10/weapons/wpn_fps_spec_bessy_pts/wpn_third_spec_bessy_barrel"
	self.parts.wpn_fps_spec_bessy_reciever.third_unit = "units/pd2_dlc_pda10/weapons/wpn_fps_spec_bessy_pts/wpn_third_spec_bessy_reciever"
	self.parts.wpn_fps_spec_bessy_stock.third_unit = "units/pd2_dlc_pda10/weapons/wpn_fps_spec_bessy_pts/wpn_third_spec_bessy_stock"
	self.parts.wpn_fps_spec_bessy_rod.third_unit = "units/pd2_dlc_pda10/weapons/wpn_fps_spec_bessy_pts/wpn_third_spec_bessy_rod"
	self.parts.wpn_fps_spec_bessy_bayonette.third_unit = "units/pd2_dlc_pda10/weapons/wpn_fps_spec_bessy_pts/wpn_third_spec_bessy_bayonette"
	self.wpn_fps_spec_bessy = {
		unit = "units/pd2_dlc_pda10/weapons/wpn_fps_spec_bessy/wpn_fps_spec_bessy",
		animation_effects = {
			fire = {
				effect = Idstring("effects/payday2/particles/weapons/bessy_smoke"),
				parent = Idstring("a_efx_exhaust")
			},
			fire_steelsight = {
				effect = Idstring("effects/payday2/particles/weapons/bessy_smoke"),
				parent = Idstring("a_efx_exhaust")
			}
		},
		optional_types = {
			"gadget",
			"sight",
			"bayonet"
		},
		adds = {},
		default_blueprint = {
			"wpn_fps_spec_bessy_barrel",
			"wpn_fps_spec_bessy_reciever",
			"wpn_fps_spec_bessy_stock",
			"wpn_fps_spec_bessy_rod"
		},
		uses_parts = {
			"wpn_fps_spec_bessy_barrel",
			"wpn_fps_spec_bessy_reciever",
			"wpn_fps_spec_bessy_stock",
			"wpn_fps_spec_bessy_rod",
			"wpn_fps_spec_bessy_bayonette"
		}
	}
	self.wpn_fps_spec_bessy_npc = deep_clone(self.wpn_fps_spec_bessy)
	self.wpn_fps_spec_bessy_npc.unit = "units/pd2_dlc_pda10/weapons/wpn_fps_spec_bessy/wpn_fps_spec_bessy_npc"
end

Hooks:PostHook(WeaponFactoryTweakData, "init", "wbessy_init", function(self)
	self:_init_bessy()
end)