$graphical = true
require_relative "../karel/ur_robot"
require_relative "../mixins/move_1"

	class LineRobot < UrRobot
		include Move1
		def run2
			count=0
			9.times do
				if next_to_a_beeper?
					pick_beeepr
					count=count+1
				else
					matrice << count
					count=0
					move
				end
			end
			matrice
		end
	end

def task()
  world = Robota::World
  world.read_world("../karel/line.map")
  
  karel = LineRobot.new(1, 3, Robota::NORTH, INFINITY)
  karel.run2
  
  
end

if __FILE__ == $0
  if $graphical
     screen = window(8, 40) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end