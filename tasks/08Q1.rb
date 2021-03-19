require_relative "../karel/ur_robot"
require_relative "../mixins/move_1"
require_relative "../mixins/sensor_pack"
  class Question8 < UrRobot
  	include Move1
    include SensorPack

  	def task()
    world = Robota::World
    world.read_world("../karel/Maze.map")
    
    karel = Robot8.new(2, 5, Robota::EAST, 0)
    
    karel.move if front_is_clear?
    end
    
  end

  if __FILE__ == $0
    if $graphical
       screen = window(15, 90) # (size, speed)
       screen.run do
         task
       end
     else
       task
     end
  end