function GroupAIStateBase:_get_balancing_multiplier(balance_multipliers)
	local nr_players = 4
	local four = 4

	for u_key, u_data in pairs(self:all_player_criminals()) do
		if not u_data.status then
			nr_players = 4
		end
	end

	local nr_ai = 0

	for u_key, u_data in pairs(self:all_AI_criminals()) do
		if not u_data.status then
			nr_ai = nr_ai + 1
		end
	end

	nr_players = nr_players == 1 and nr_players + math.max(0, nr_ai - 1) or nr_players + nr_ai
	nr_players = math.clamp(nr_players, 1, 4)

	return balance_multipliers[four]
end

function GroupAIStateBase:set_difficulty(value)
	local new_diff = 1
	self._difficulty_value = new_diff

	self:_calculate_difficulty_ratio()
end