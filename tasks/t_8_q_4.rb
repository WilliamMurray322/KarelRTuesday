require_relative "../karel/ur_robot"
require_relative "../mixins/move_1"
require_relative "../mixins/sensor_pack"
	class QRandom < UrRobot
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
						put_beeper
					else
						2.times do
							put_beeper
						end
					end
					move
				end
				

				if next_to_a_beeper?
					put_beeper
				else
					2.times do
						put_beeper
					end
				end
				change_row_left
				8.times do
					if next_to_a_beeper?
						put_beeper
					else
						2.times do
							put_beeper
						end
					end
					move	
				end
				if next_to_a_beeper?
					put_beeper
				else
					2.times do
						put_beeper
					end
				end
				change_row_right

			end
		end
	end
	def task()
	  world = Robota::World
	  world.read_world("../karel/random.map")
	  
	  karel = QRandom.new(2, 2, Robota::EAST, INFINITY)
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