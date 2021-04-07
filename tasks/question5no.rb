require_relative "../karel/ur_robot"
require_relative "../mixins/move_1"
class Question5 < UrRobot
	include Move1

	def draw_letter
		