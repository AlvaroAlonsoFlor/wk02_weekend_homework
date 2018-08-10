require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class TestRoom < MiniTest::Test
  def setup
    @song1 = Song.new("Run to the hills")
    @song2 = Song.new("Fiesta Pagana")

    @playlist1 = [@song1, @song2]

    @guest1 = Guest.new("Jack", 20, "Run to the hills")

    @guess_list = [@guest1]

    @room1 = Room.new(1, @playlist, @guest_list, 3)
  end

  def test_has_id

  assert_equal(1, @room1.id)

  end
end
