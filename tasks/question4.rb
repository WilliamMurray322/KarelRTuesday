$graphical = true
require_relative "../karel/ur_robot"
require_relative "../mixins/move_1"
require_relative "../mixins/sensor_pack"

	class WallRobot < UrRobot
		include Move1
		include SensorPack

		def run
			19.times do
				if next_to_a_beeper?
					pick_beeper
				else
					5.times do
						put_beeper
					end
					move
				end
			end
			turn_around
			move
			turn_right
			move
			29.times do
					if next_to_a_beeper?
					pick_beeper
				else
					5.times do
						put_beeper
					end
					move
				end
			end
			turn_around
			move
			turn_right
			move
			15.times do
					if next_to_a_beeper?
					pick_beeper
				else
					5.times do
						put_beeper
					end
					move
				end
			end
			turn_around
			move
			turn_right
			move
			34.times do
					if next_to_a_beeper?
					pick_beeper
				else
					5.times do
						put_beeper
					end
					move
				end
			end
			turn_around
			move
			turn_right
			move
		end
	
	end


		

def task()
  world = Robota::World
  world.read_world("../karel/mur.kwld")
  
  karel = WallRobot.new(2, 3, Robota::EAST, INFINITY)
  karel.run
  
  
end

if __FILE__ == $0
  if $graphical
     screen = window(12, 100) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end