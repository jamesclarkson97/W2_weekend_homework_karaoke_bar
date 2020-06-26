require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../guest')
# require_relative('../star_system')

class TestGuest < Minitest::Test

    def setup()
        @guest1 = Guest.new("Jeff", 20.00)
        @guest2 = Guest.new("Anna", 15.00)
        @guest3 = Guest.new("Mark", 23.00)
        @guest4 = Guest.new("Sarah", 50.00)
        @guest5 = Guest.new("Bob", 12.34)
        @guest6 = Guest.new("Lisa", 35.50)
    end

    def test_has_name
        assert_equal("Jeff", @guest1.name)
    end

    def test_has_money()
        assert_equal(12.34, @guest5.money)
    end

    def test_remove_cash()
        @guest1.remove_cash(1.50)
        assert_equal(18.50, @guest1.money())
    end

end