$graphical = true

require_relative "question5"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../karel/empty.map")
  
  karel = Question5.new(2,2, Robota::NORTH, INFINITY)
  karel2 = Question5.new(2,7, Robota::NORTH, INFINITY)
  karel3 = Question5.new(2,11, Robota::NORTH, INFINITY)
  karel4 = Question5.new(2,15,Robota::NORTH, INFINITY)
  karel5 = Question5.new(2,17, Robota::NORTH, INFINITY)
  karel.draw_letter
  karel2.draw_letter
  karel3.draw_letter
  karel4.draw_letter  
  karel5.draw_letter
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