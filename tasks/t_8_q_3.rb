require_relative "../karel/ur_robot"
require_relative "../mixins/move_1"
require_relative "../mixins/sensor_pack"
	class Qrandom < UrRobot
		include Move1
		include SensorPack
		
		def change_row_left
			turn_left
			move 
			turn_left
		end

		def change_row_right
			turn_right
			move
			turn_right
		end


		def crawl
			5.times do
				8.times do
					if next_to_a_beeper?
						pick_beeper
					end
					move
				end
				if next_to_a_beeper?
					pick_beeper
				end
				change_row_left
					
				8.times do
					if next_to_a_beeper?
						pick_beeper
					end
					move	
				end
				if next_to_a_beeper?
					pick_beeper
				end
				change_row_right

			end
		end
	end
	def task()
	  world = Robota::World
	  world.read_world("../karel/random.map")
	  
	  karel = Qrandom.new(2, 2, Robota::EAST, 0)
	  karel.crawl
	  
	  
	end

	if __FILE__ == $0
	  if $graphical
	     screen = window(12, 90) # (size, speed)
	     screen.run do
	       task
	     end
	   else
	     task
	   end
	end