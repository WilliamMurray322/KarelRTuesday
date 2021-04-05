require_relative "../karel/ur_robot"
require_relative "../mixins/move_1"
class Safe < UrRobot

	def put_beeper_safe
		if any_beepers_in_beeper_bag?
		put_beeper
	end

	def move_safe
		if front_is_clear?
		move
	end

	def pick_beeper_safe
		if nest_to_a_beeper?
		pick_beeper
	end
end