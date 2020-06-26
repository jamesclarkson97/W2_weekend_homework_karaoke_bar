require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../guest')
# require_relative('../star_system')

class TestGuest < Minitest::Test

    def setup()
        @guest1 = Guest.new("Jeff")
        @guest2 = Guest.new("Anna")
        @guest3 = Guest.new("Mark")
        @guest4 = Guest.new("Sarah")
        @guest5 = Guest.new("Bob")
        @guest6 = Guest.new("Lisa")
    end

    def test_has_name
        assert_equal("Jeff", @guest1.name)
    end
    
end