class Guest
    attr_reader :name, :money

    def initialize(name, money)
        @name = name
        @money = money
    end

    def remove_cash(amount)
        @money -= amount
    end

end