require_relative "../karel/ur_robot"
class Q502 < UrRobot

	def initialize (street, avenue, direction, beepers)
		super(street, avenue, NORTH, beepers)
	end
end