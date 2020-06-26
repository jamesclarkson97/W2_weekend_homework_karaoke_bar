class Room
    attr_reader :name, :occupancy_limit, :current_occupants, :songs

    def initialize(name, occupancy_limit)
        @name = name
        @occupancy_limit = occupancy_limit
        @current_occupants = []
        @songs = []
    end

    def check_in_guest(guest)
        return @current_occupants.push(guest)
    end

    def check_out_guest(guest)
        for occupant in @current_occupants
            if occupant == guest
                @current_occupants.delete(occupant)
            end
        end
    end

    def add_song(new_song)
        return @songs.push(new_song)
    end

end