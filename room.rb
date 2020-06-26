class Room
    attr_reader :name, :occupancy_limit, :current_occupants, :songs

    def initialize(name, occupancy_limit)
        @name = name
        @occupancy_limit = occupancy_limit
        @current_occupants = []
        @songs = {}
    end

end