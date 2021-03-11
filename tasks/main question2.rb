$graphical = true

require_relative "question2"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../karel/Q5.1.map")
  
  karel = Q502.new(4, 3, Robota::EAST, 0)
  karel.initialize
  
  
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