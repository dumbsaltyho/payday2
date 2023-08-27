function PlayerTweakData:_init_bessy()
	self.stances.bessy = deep_clone(self.stances.default)
	local pivot_shoulder_translation = Vector3(8.65829, 40.5137, -4.02908)
	local pivot_shoulder_rotation = Rotation(0.106703, -0.0851106, 0.628477)
	local pivot_head_translation = Vector3(8, 40, -4)
	local pivot_head_rotation = Rotation(0, 0, 0)
	self.stances.bessy.standard.shoulders.translation = pivot_head_translation - pivot_shoulder_translation:rotate_with(pivot_shoulder_rotation:inverse()):rotate_with(pivot_head_rotation)
	self.stances.bessy.standard.shoulders.rotation = pivot_head_rotation * pivot_shoulder_rotation:inverse()
	self.stances.bessy.standard.vel_overshot.pivot = pivot_shoulder_translation + Vector3(0, -50, 0)
	self.stances.bessy.standard.vel_overshot.yaw_neg = 15
	self.stances.bessy.standard.vel_overshot.yaw_pos = -15
	self.stances.bessy.standard.vel_overshot.pitch_neg = -15
	self.stances.bessy.standard.vel_overshot.pitch_pos = 15
	local pivot_head_translation = Vector3(0, 35, 2)
	local pivot_head_rotation = Rotation(0, 0, 0)
	self.stances.bessy.steelsight.shoulders.translation = pivot_head_translation - pivot_shoulder_translation:rotate_with(pivot_shoulder_rotation:inverse()):rotate_with(pivot_head_rotation)
	self.stances.bessy.steelsight.shoulders.rotation = pivot_head_rotation * pivot_shoulder_rotation:inverse()
	self.stances.bessy.steelsight.vel_overshot.pivot = pivot_shoulder_translation + Vector3(0, -50, 0)
	self.stances.bessy.steelsight.vel_overshot.yaw_neg = 0
	self.stances.bessy.steelsight.vel_overshot.yaw_pos = -0
	self.stances.bessy.steelsight.vel_overshot.pitch_neg = -0
	self.stances.bessy.steelsight.vel_overshot.pitch_pos = 0
	local pivot_head_translation = Vector3(8, 36, -3)
	local pivot_head_rotation = Rotation(0, 0, 0)
	self.stances.bessy.crouched.shoulders.translation = pivot_head_translation - pivot_shoulder_translation:rotate_with(pivot_shoulder_rotation:inverse()):rotate_with(pivot_head_rotation)
	self.stances.bessy.crouched.shoulders.rotation = pivot_head_rotation * pivot_shoulder_rotation:inverse()
	self.stances.bessy.crouched.vel_overshot.pivot = pivot_shoulder_translation + Vector3(0, -30, 0)
end

Hooks:PostHook(PlayerTweakData, "_init_new_stances", "qbessy_init_new_stances", function(self)
	self:_init_bessy()
end)