class Guest
    attr_reader :name, :money

    def initialize(name, money)
        @name = name
        @money = money
    end

    def remove_cash(amount)
        @money -= amount
    end

    def pay_entry_fee(entry_fee, room)
        remove_cash(entry_fee)
        room.increase_till(entry_fee)
    end


end