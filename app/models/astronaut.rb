class Astronaut
    
    attr_reader :name, :age, :specialty

    @@all = []

    def initialize(name, age, specialty)
        @name = name
        @age = age
        @specialty = specialty
        Astronaut.all << self
    end

    def self.all
        @@all
    end

    def missions
        Mission.all.select { |mission| mission.astronaut == self }
    end
  
    def shuttles
        missions.map { |mission| mission.shuttle }.uniq
    end

    def join_shuttle(shuttle, launch_date)
#adds astronaut to shuttle if it isn't > shuttle.capacity
        # Mission.new(self, shuttle, launch_date)
        # if shuttle.capacity 
        if shuttle.current_astronauts.count >= shuttle.capacity
            "This shuttle is at capacity!"
        else
            Mission.new(self, shuttle, launch_date)
        end
    end

    def self.most_missions
        Astronaut.all.max_by do |astronaut| 
            puts astronaut.name
            puts astronaut.missions.count
            astronaut.missions.count
        end
    end

end
 