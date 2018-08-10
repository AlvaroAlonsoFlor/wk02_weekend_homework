require("minitest/autorun")
require("minitest/rg")
require_relative("../karaoke.rb")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class TestKaraoke < MiniTest::Test
  def setup

    @song1 = Song.new("Run to the hills")
    @song2 = Song.new("Fiesta Pagana")
    @song3 = Song.new("The Bard Song")
    @song4 = Song.new("Imagine")

    @playlist1 = [@song1, @song2]
    @playlist2 = [@song3, @song4]

    @guest1 = Guest.new("Jack", 20, "Run to the hills")
    @guest2 = Guest.new("John", 10, "The Trooper")
    @guest3 = Guest.new("Melinda", 5, "Korsakov")
    @guest4 = Guest.new("Melody", 30, "Macarena")

    @guest5 = Guest.new("Marta", 30, "God Save the Queen")
    @guest6 = Guest.new("Melody", 30, "")
    @guest7 = Guest.new("Melody", 30, "Macarena")
    @guest8 = Guest.new("Melody", 30, "Macarena")

    @guest_list = [@guest1, @guest2]
    @guest_list2 = [@guest5, @guest6, @guest7]

    @room1 = Room.new(1, @playlist1, @guest_list, 3)
    @room2 = Room.new(1, @playlist2, @guest_list2, 3)
    @room3 = Room.new(1, @playlist2, [], 4)

    @room_list = [@room1, @room2, @room3]

    @karaoke1 = Karaoke.new("CodeClanCaraoke", @room_list)


  end

  def test_has_name
    assert_equal("CodeClanCaraoke", @karaoke1.name)
  end

  def test_has_rooms
    assert_equal(@room_list, @karaoke1.rooms)
  end
end
