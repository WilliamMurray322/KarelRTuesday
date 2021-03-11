
require_relative "../karel/ur_robot"
require_relative "../mixins/move_1"
class Q501 < UrRobot
	
	def move_2
		move
		move
	end

	def move_3
		move
		move
		move
	end

	def turn_right
		turn_left
		turn_left
		turn_left
	end

	def turn_around
		turn_left
		turn_left
	end

	def clear_beepers
		move_2
		pick_beeper
		turn_left
		move
		pick_beeper
		move
		pick_beeper
		turn_around
		move_3
		pick_beeper
		move
		pick_beeper
	end

	def set_beepers
		turn_around
		move_2
		put_beeper
		turn_left
		move
		put_beeper
		move
		put_beeper
		turn_around
		move_3
		put_beeper
		move
		put_beeper
		turn_right
		move_2
		turn_right
		move_2
		turn_right
	end

	def run1
		clear_beepers
		set_beepers
	end

end