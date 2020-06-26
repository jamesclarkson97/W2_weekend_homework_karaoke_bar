require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../room')
require_relative('../song')
require_relative('../guest')

class TestRoom < Minitest::Test

    def setup()
        @room1 = Room.new("Python", 10, 6.00)
        @room2 = Room.new("Ruby", 5, 9.50)
        @guest1 = Guest.new("Jeff", 20.00)
        @guest2 = Guest.new("Anna", 15.00)
        @guest3 = Guest.new("Mark", 23.00)
        @guest4 = Guest.new("Sarah", 50.00)
        @guest5 = Guest.new("Bob", 12.34)
        @guest6 = Guest.new("Lisa", 35.50)

        @guests = [@guest1, @guest2, @guest3, @guest4, @guest5, @guest6]

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
        @room1.check_in_guest(@guest1)
        assert_equal(1, @room1.current_occupants.size)
    end

    def test_check_out_guest()
        assert_equal(1, @room1.check_in_guest(@guest1).size)
        assert_equal(0, @room1.check_out_guest(@guest1).size)
    end

    def test_add_song()
        assert_equal(1, @room2.add_song(@song5).size)
    end

    def test_add_multiple_people_pass()
        for guest in @guests
            @room1.check_in_guest(guest)
        end
        assert_equal(6, @room1.current_occupants.size) 
    end

    def test_add_multiple_people_fail()
        for guest in @guests
            while @room2.check_in_guest(guest) != "Too many guests"
                @room2.check_in_guest(guest)
            end
        end
        assert_equal(5, @room2.current_occupants.size) 
    end

    def test_increase_till()
        @room1.increase_till(1.50)
        assert_equal(51.50, @room1.till)
    end

    # def test_pay_entry_fee_pass()
   




end