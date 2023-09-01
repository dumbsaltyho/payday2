function UpgradesTweakData:_bessy_definitions()
	self.definitions.bessy = {
		dlc = "pda10",
		factory_id = "wpn_fps_spec_bessy",
		weapon_id = "bessy",
		category = "weapon"
	}
end

Hooks:PostHook(UpgradesTweakData, "init", "rbessy_init", function(self, tweak_data)
	self:_bessy_definitions()
end)