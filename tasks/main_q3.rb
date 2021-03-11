$graphical = true

require_relative "question3"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../karel/empty.map")
  
  karel = Question3.new(1, 1, Robota::NORTH, 1)
  karel2 = Question3.new(6, 1, Robota::EAST, 0)
  karel3 = Question3.new(6, 6, Robota::SOUTH, 0)
  karel4 = Question3.new(1, 6, Robota::WEST, 0)
  karel.put_beeper
  karel.run
  karel2.run
  karel3.run
  karel4.run
  karel4.run
  karel.run
  karel2.run
  karel3.run
  karel3.run
  karel4.run
  karel.run
  karel2.run
  karel2.run
  karel3.run
  karel4.run
  karel.run
  
  
end

if __FILE__ == $0
  if $graphical
     screen = window(8, 90) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end