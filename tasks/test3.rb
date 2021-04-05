#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "../karel/robota"
require_relative "../karel/ur_robot"
require_relative "../mixins/move_1"
require_relative "../mixins/sensor_pack"

class PleaseWork < UrRobot
  include Move1
  include SensorPack
  def move_10
    move
    move
    move
    move
    move
    move
    move
    move
    move
    move
  end

  def run
    30.times do
      if next_to_a_beeper?
        pick_beeper
        turn_right
        move_10
        put_beeper
        turn_around
        move_10
        turn_right
      else
        move
      end
    end
  end
end

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../karel/line.map")
  
  karel = PleaseWork.new(1, 3, Robota::NORTH, INFINITY)
  karel.run
  
  
end

if __FILE__ == $0
  if $graphical
     screen = window(15, 80) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end