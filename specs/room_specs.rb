require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../room')
require_relative('../song')
require_relative('../guest')

class TestRoom < Minitest::Test

    def setup()
        @room1 = Room.new("Python", 10)
        @room2 = Room.new("Ruby", 5)
        @guest1 = Guest.new("Jeff")
        @guest2 = Guest.new("Anna")
        @guest3 = Guest.new("Mark")
        @guest4 = Guest.new("Sarah")
        @guest5 = Guest.new("Bob")
        @song1 = Song.new("Freebird", "Lynyrd Skynyrd")
        @song2 = Song.new("Rain on Me", "Lady Gaga")
        @song3 = Song.new("Rockstar", "Nickelback")
        @song4 = Song.new("Watermellon Sugar", "Harry Styles")
        @song5 = Song.new("Always Look on the Bright Side of Life", "Monty Python")
    end

    def test_has_name()
        assert_equal("Python", @room1.name)
    end
    
    def test_has_occupancy_limit()
        assert_equal(10, @room1.occupancy_limit())
    end

    def test_get_current_occupants()
        assert_equal(0, @room1.current_occupants.size)
    end

    def test_get_songs()
        assert_equal(0, @room1.songs.size)
    end

    def test_check_in_guest()
        assert_equal(1, @room1.check_in_guest(@guest1).size)
    end

    def test_check_out_guest()
        assert_equal(1, @room1.check_in_guest(@guest1).size)
        assert_equal(0, @room1.check_out_guest(@guest1).size)
    end


end