function TweakData:_setup_scene_pose_items()
	self.scene_pose_items = {
		husk1 = {},
		husk2 = {},
		husk3 = {},
		husk4 = {},
		lobby_generic_idle4 = {},
		husk_minigun = {
			"primary"
		},
		lobby_generic_idle1 = {
			"primary"
		},
		lobby_generic_idle2 = {
			"primary"
		},
		lobby_generic_idle3 = {
			"primary"
		},
		husk_bow1 = {
			"primary"
		},
		husk_bow2 = {
			"primary"
		},
		husk_card1 = {
			nil,
			"infamy"
		},
		husk_card2 = {
			nil,
			"infamy"
		},
		husk_card3 = {
			nil,
			"infamy"
		},
		husk_card4 = {
			nil,
			"infamy"
		},
		husk_ray = {
			nil,
			"secondary"
		},
		husk_rifle4 = {
			"primary",
			"secondary"
		},
		husk_minigun_2 = {
			"primary"
		},
		husk_bessy = {
			"primary"
		},
		cvc_var1 = {},
		cvc_var2 = {},
		cvc_var3 = {},
		husk_akimbo1 = {
			"primary",
			"secondary"
		},
		husk_akimbo2 = {
			"primary",
			"secondary"
		},
		husk_akimbo_x54 = {
			"primary",
			"secondary"
		}
	}
end

function TweakData:_setup_scene_poses()
	self.scene_poses = {
		generic = {
			"husk_generic1",
			"husk_generic2",
			"husk_generic3",
			"husk_generic4"
		},
		template = {}
	}
	self.scene_poses.template.generic = {
		"husk_generic1",
		"husk_generic2",
		"husk_generic3",
		"husk_generic4"
	}
	self.scene_poses.weapon = {
		assault_rifle = {
			"husk_rifle1",
			"husk_rifle2"
		},
		pistol = {
			"husk_pistol1"
		},
		saw = {
			"husk_saw1"
		},
		shotgun = {
			primary = {
				"husk_shotgun1"
			}
		},
		snp = {
			"husk_bullpup"
		},
		lmg = {
			"husk_lmg"
		},
		bow = {
			"husk_bow1",
			"husk_bow2",
			required_pose = true
		},
		akimbo = {
			"husk_akimbo1",
			"husk_akimbo2"
		},
		infamous = {
			"husk_infamous1",
			"husk_infamous3",
			"husk_infamous4"
		},
		x_type54 = {
			"husk_akimbo_x54",
			required_pose = true
		},
		m95 = {
			"husk_m95"
		},
		r93 = {
			"husk_r93"
		},
		huntsman = {
			"husk_mosconi",
			"husk_bullpup"
		},
		gre_m79 = {
			"husk_mosconi"
		},
		ksg = {
			"husk_mosconi",
			"husk_bullpup",
			required_pose = true
		},
		m249 = {
			"husk_m249"
		},
		m134 = {
			"husk_minigun",
			required_pose = true
		},
		famas = {
			"husk_bullpup",
			required_pose = true
		},
		aug = {
			"husk_bullpup",
			required_pose = true
		},
		wa2000 = {
			"husk_bullpup",
			required_pose = true
		},
		l85a2 = {
			"husk_bullpup",
			required_pose = true
		},
		vhs = {
			"husk_bullpup",
			required_pose = true
		},
		flamethrower_mk2 = {
			"husk_bullpup",
			required_pose = true
		},
		desertfox = {
			"husk_bullpup",
			required_pose = true
		},
		corgi = {
			"husk_bullpup",
			required_pose = true
		},
		komodo = {
			"husk_bullpup",
			required_pose = true
		},
		x_basset = {
			"husk_bullpup",
			required_pose = true
		},
		arbiter = {
			"husk_bullpup",
			required_pose = true
		},
		ray = {
			"husk_ray",
			required_pose = true
		},
		ultima = {
			"husk_generic1",
			required_pose = true
		},
		scout = {
			"husk_rifle4",
			required_pose = true
		},
		hk51b = {
			"husk_rifle3",
			required_pose = true
		},
		hailstorm = {
			"husk_rifle5",
			required_pose = true
		},
		sko12 = {
			"husk_rifle1",
			required_pose = true
		},
		hcar = {
			"husk_rifle1",
			required_pose = true
		},
		kacchainsaw = {
			"husk_minigun_2",
			required_pose = true
		},
		bessy = {
			"husk_bessy",
			required_pose = true
		}
	}
	self.scene_poses.infamy = {
		generic = {
			{
				"husk_card1"
			},
			{
				"husk_card2"
			},
			{
				"husk_card3"
			},
			{
				"husk_card4"
			},
			required_pose = true
		}
	}
	self.scene_poses.armor = {
		generic = {
			"cvc_var1",
			"cvc_var2"
		},
		level_1 = {
			"suit",
			"suit"
		},
		level_2 = {
			"lbv",
			"lbv"
		},
		level_3 = {
			"bv",
			"bv"
		},
		level_4 = {
			"hbv",
			"hbv"
		},
		level_5 = {
			"fj",
			"fj"
		},
		level_6 = {
			"ctv",
			"ctv"
		},
		level_7 = {
			"ictv",
			"ictv"
		}
	}
	self.scene_poses.player_style = {
		generic = {
			"suit_generic1",
			"suit_generic2",
			"suit_generic3",
			"suit_generic4",
			"suit_generic5",
			"suit_generic6",
			"suit_generic7"
		},
		sneak_suit = {
			"sneak",
			"sneak"
		},
		scrub = {
			"doctor",
			"doctor"
		},
		raincoat = {
			"rain",
			"rain"
		},
		murky_suit = {
			"military",
			"military"
		},
		tux = {
			"tuxedo",
			"tuxedo"
		},
		winter_suit = {
			"winter",
			"winter"
		},
		jumpsuit = {
			"jump",
			"jump"
		},
		clown = {
			"clown",
			"clown"
		},
		peacoat = {
			"peacoat",
			"peacoat"
		},
		miami = {
			"italian",
			"italian"
		},
		jail = {
			"standard_suit",
			"standard_suit"
		},
		poolrepair = {
			"pool",
			"pool"
		}
	}
end