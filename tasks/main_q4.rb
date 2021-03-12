$graphical = true

require_relative "question4"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../karel/Maze.map")
  
  karel = Question4.new(2, 5, Robota::EAST, 0)
  karel.run
  
  
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