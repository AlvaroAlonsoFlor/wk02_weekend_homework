require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")
require_relative("../song.rb")

class TestSong < MiniTest::Test
  def setup

    @song1 = Song.new("Run to the hills")
    @song2 = Song.new("Fiesta Pagana")

    @guest1 = Guest.new("Jack", 20, "Run to the hills")

  end

  def test_guest_has_a_name
    assert_equal("Jack", @guest1.name)
  end
end
