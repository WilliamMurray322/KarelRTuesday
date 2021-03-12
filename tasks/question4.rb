require_relative "../karel/ur_robot"
require_relative "../mixins/move_1"
class Question4 < UrRobot
	include Move1

	def run
		turn_around
		move_3
		turn_right
		move_5
		10.times do
			pick_beeper
		end
		move
		10.times do
			pick_beeper
		end
		turn_right
		move
		10.times do
			pick_beeper
		end
		turn_around
		move
		turn_left
		move_6
		move
		turn_left
		move_4
		turn_left
		move_2
		turn_left
		move_3
		turn_left
		move
		10.times do
			pick_beeper
		end
		turn_left
		move
		turn_left
		move_8
		move
		turn_right
		move_6
		move
		turn_right
		move
		40.times do
			put_beeper
		end
	end
end