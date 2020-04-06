require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#astronauts
steve = Astronaut.new("Steve", 37, "Flight")
pearl = Astronaut.new("Pearl", 31, "Flight")
vegas = Astronaut.new("Vegas", 27, "Exploration")
tashawn = Astronaut.new("Tashawn", 25, "Capitan")
edgar = Astronaut.new("Edgar", 26, "Computers")
michelle = Astronaut.new("Michelle", 24, "Computers")
mike = Astronaut.new("Mike", 22, "Computers")
yo = Astronaut.new("Yo", 36, "Computers")

#shuttles
nasa_1 = Shuttle.new("Nasa 1", 4)
nasa_2 = Shuttle.new("Nasa 2", 3)
tesla_x = Shuttle.new("Tesla X", 4)

#missions
mission_1 = Mission.new(steve, tesla_x, 20200420)
mission_1 = Mission.new(pearl, tesla_x, 20200420)
mission_1 = Mission.new(vegas, tesla_x, 20200420)
mission_1 = Mission.new(tashawn, tesla_x, 20200420)
mission_2 = Mission.new(mike, nasa_1, 20200820)
mission_2 = Mission.new(vegas, nasa_1, 20200820)
mission_3 = Mission.new(edgar, nasa_2, 20201220)
mission_3 = Mission.new(yo, nasa_2, 20201220)



# steve.join_shuttle("Tesla X", "4/20/2020")
# pearl.join_shuttle("Tesla X", "4/20/2020")
# tashawn.join_shuttle("Tesla X", "4/20/2020")
# vegas.join_shuttle("Tesla X", "4/20/2020")

binding.pry

puts "Let's go to space!" # just in case pry is buggy and exits
 