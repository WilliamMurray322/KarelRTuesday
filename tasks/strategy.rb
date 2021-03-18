require_relative "../karel/ur_robot"
require_relative "../mixins/move_1"


class Beepers
	def courir(robot)
		raise NotImplementedError.new(“Strategie pas implémenté”)
	end
end

class OneBeeper < Beepers
	def courir(robot)
		10.times do
			robot.put_beeper
			robot.move
		end
	end
end

class TwoBeeper < Beepers
	def courir (robot)
		10.times do
			2.times do
				robot.put_beeper
			end
			robot.move
		end
	end
end

class ThreeBeeper < Beepers
	def courir (robot)
		10.times do
			3.times do
				robot.put_beeper
			end
			robot.move
		end
	end
end

class RunnerRobot < UrRobot
	include Move1
	@runner_strategy = nil
	def initialize(street, avenue, direction, beepers)
		super(street, avenue, direction, beepers)
		@runner_strategy = OneBeeper.new
	
	end

	def set_strategy(strategy)
		@runner_strategy = strategy
	end

	def courir
		@runner_strategy.courir(self)
	end
end		

def task()
  world = Robota::World
  
  karel = RunnerRobot.new(1, 1, Robota::EAST, INFINITY)
  karel2 = RunnerRobot.new(2, 1, Robota::EAST, INFINITY)
  karel3 = RunnerRobot.new(3, 1, Robota::EAST, INFINITY)
  karel.set_strategy(OneBeeper.new)
  karel2.set_strategy(TwoBeeper.new)
  karel3.set_strategy(ThreeBeeper.new)
  karel.courir
  karel2.courir
  karel3.courir
end

if __FILE__ == $0
  if $graphical
     screen = window(10, 90) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end
