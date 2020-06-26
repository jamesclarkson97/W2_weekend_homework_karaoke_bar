require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../guest')
require_relative('../room')

class TestGuest < Minitest::Test

    def setup()
        @room1 = Room.new("Python", 10, 6.00)
        @room2 = Room.new("Ruby", 5, 9.50)

        @guest1 = Guest.new("Jeff", 20.00)
        @guest2 = Guest.new("Anna", 15.00)
        @guest3 = Guest.new("Mark", 7.00)
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

    def test_pay_entry_fee_pass()
        @guest3.pay_entry_fee(@room1.entry_fee, @room1)
        assert_equal(1.00, @guest3.money())
        assert_equal(56.00, @room1.till())
    end

    def test_pay_entry_fee_fail()
        @guest3.pay_entry_fee(@room2.entry_fee, @room2)
        assert_equal(7.00, @guest3.money())
        assert_equal(50.00, @room2.till())
    end


end