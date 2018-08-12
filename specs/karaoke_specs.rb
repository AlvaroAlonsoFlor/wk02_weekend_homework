require("minitest/autorun")
require("minitest/rg")
require("pry")
require_relative("../karaoke.rb")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")
require_relative("../drink.rb")
require_relative("../bar.rb")

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
    @guest6 = Guest.new("Malfoy", 30, "I'm a man")
    @guest7 = Guest.new("Michael", 30, "Cualquier dia")
    @guest8 = Guest.new("Robert", 30, "We are the champions")

    @guest_list = [@guest1, @guest2]
    @guest_list2 = [@guest5, @guest6, @guest7]

    @room1 = Room.new(1, @playlist1, @guest_list, 3)
    @room2 = Room.new(1, @playlist2, @guest_list2, 3)
    @room3 = Room.new(1, @playlist2, [], 4)

    @room_list = [@room1, @room2, @room3]

    @drink1 = Drink.new("Beer", 2, 10)
    @drink2 = Drink.new("Wine", 5, 5)
    @drink3 = Drink.new("MegaCocktail", 20, 2)

    @drinks = [@drink1, @drink2, @drink3]

    @bar = Bar.new(0, @drinks)

    @karaoke1 = Karaoke.new("CodeClanCaraoke", @room_list, @bar)


  end

  def test_has_name
    assert_equal("CodeClanCaraoke", @karaoke1.name)
  end

  def test_has_rooms
    assert_equal(@room_list, @karaoke1.rooms)
  end

  def test_has_bar
    assert_equal(@bar, @karaoke1.bar)
  end

  # def test_count_total_money
  #   @room1.add_guest(@guest8)
  #   @bar.sell(@guest8, @drink1)
  #
  #   assert_equal(8, @karaoke1.count_total_money)
  #
  # end

  # def test_check_in
  #   @karaoke1.check_in(@guest8, @room1)
  #   assert_equal(3, @karaoke1.rooms[0].guests.count)
  # end
  #
  # def test_check_out
  #   @karaoke1.check_out(@guest1, @room1)
  #   assert_equal(1, @karaoke1.rooms[0].guests.count)
  # end

  # def test_add_song
  #   @karaoke1.add_song_to_room(@song4, @room1)
  #   assert_equal(3, @karaoke1.rooms[0].songs.count)
  # end
end
