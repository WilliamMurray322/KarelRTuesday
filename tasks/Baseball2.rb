require_relative "../karel/ur_robot"
require_relative "../mixins/move_1"

	class Baseball < UrRobot
		include Move1
	
		def draw (size = 10)
			turn_left
			put_beeper
			4.times do
				move_2
				put_beeper
				turn_right
				move
				turn_right
				move
				put_beeper
				turn_left
				size.times do
					move
					turn_left
					move
					turn_right
					put_beeper
				end
				turn_left
				turn_left
			end
		pick_beeper
		end


	end

  	def task()
    world = Robota::World
 
    
    karel = Baseball.new(2, 20, Robota::EAST, INFINITY)
    
    karel.draw
    end
    
 

  if __FILE__ == $0
    if $graphical
       screen = window(50, 90) # (size, speed)
       screen.run do
         task
       end
     else
       task
     end
  end