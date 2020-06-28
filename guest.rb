class Guest
    attr_reader :name, :money, :favourite_song

    def initialize(name, money, favourite_song)
        @name = name
        @money = money
        @favourite_song = favourite_song
    end

    def remove_cash(amount)
        @money -= amount
    end

    def pay_entry_fee(entry_fee, room)
        if @money >= entry_fee
            remove_cash(entry_fee)
            room.increase_till(entry_fee)
        end
    end

    def check_for_favourite_song(room)
        for song in room.songs
            if @favourite_song == song.name
                return "Whoo! This my jam"
            end
        end
        return "This playlist sucks"
    end


end