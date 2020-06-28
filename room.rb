class Room
    attr_reader :name, :occupancy_limit, :current_occupants, :songs, :entry_fee, :till

    def initialize(name, occupancy_limit, entry_fee)
        @name = name
        @occupancy_limit = occupancy_limit
        @current_occupants = []
        @songs = []
        @entry_fee = entry_fee
        @till = 50.00
    end

    def check_in_guest(guests)
        return @current_occupants.push(guests)  
    end

    def check_out_guest(guest)
        for occupant in @current_occupants
            if occupant == guest
                @current_occupants.delete(occupant)
            end
        end
    end

    def add_song(new_song)  
        @songs.push(new_song)
    end

    def add_songs(new_songs)
        for new_song in new_songs
            add_song(new_song)
        end
        return @songs
    end

    def increase_till(amount)
        @till += amount
    end

    def check_availability()
        if @current_occupants.size < @occupancy_limit
            return "Good to go"
        else
            return "Too many guests"
        end
    end

 
end