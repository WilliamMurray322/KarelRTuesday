require_relative "../karel/ur_robot"
require_relative "../mixins/move_1"
class Question3 < UrRobot
	include Move1
	
	def run
		pick_beeper
		move_5
		put_beeper
		turn_right
	end
end
