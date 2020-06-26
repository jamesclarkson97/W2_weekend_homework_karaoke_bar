require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../room')
# require_relative('../star_system')

class TestRoom < Minitest::Test

    def setup()
        @room1 = Room.new("Python", 10)
        @room2 = Room.new("Ruby", 5)
    end

    def test_has_name()
        assert_equal("Python", @room1.name)
    end
    
    def test_has_occupancy_limit()
        assert_equal(10, @room1.occupancy_limit())
    end

end