class Shuttle

    attr_reader :model, :capacity

    @@all = []

    def initialize(model, capacity = 0)
        @model = model
        @capacity = capacity
        Shuttle.all << self
        # @@cabin = 0
    end

    def self.all
        @@all
    end

    def missions
        Mission.all.select { |mission| mission.shuttle == self }
    end

    def current_astronauts
        missions.map { |mission| mission.astronaut }.uniq
    end

    def add_astronaut(astronaut, launch_date)
        if current_astronauts.count >= self.capacity
            "This shuttle is at capacity!"
        else
            Mission.new(astronaut, self, launch_date)
        end
    end

    def self.find_by_model(model)
        self.all.find { |shuttle| shuttle.model == model }
    end


#bonus deliverables
    def average_age
        total_age = self.current_astronauts.reduce(0) do |accumulator, astronaut| #reduce/inject(starting index)
            accumulator + astronaut.age
        end
        total_age / current_astronauts.count.to_f
    end

end
 