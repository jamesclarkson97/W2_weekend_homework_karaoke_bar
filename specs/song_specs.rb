require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../song')
# require_relative('../star_system')

class TestSong < Minitest::Test

    def setup()
        @song1 = Song.new("Freebird", "Lynyrd Skynyrd")
        @song2 = Song.new("Rain on Me", "Lady Gaga")
        @song3 = Song.new("Rockstar", "Nickelback")
        @song4 = Song.new("Watermellon Sugar", "Harry Styles")
        @song5 = Song.new("Always Look on the Bright Side of Life", "Monty Python")
    end

    def test_has_name
        assert_equal("Rockstar", @song3.name)
    end

    def test_has_artist
        assert_equal("Harry Styles", @song4.artist())
    end

    
end