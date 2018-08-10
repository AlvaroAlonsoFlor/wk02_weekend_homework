require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class TestRoom < MiniTest::Test
  def setup
    @song1 = Song.new("Run to the hills")
    @song2 = Song.new("Fiesta Pagana")
    @song3 = Song.new("The Bard Song")
    @song4 = Song.new("Imagine")

    @playlist1 = [@song1, @song2]

    @guest1 = Guest.new("Jack", 20, "Run to the hills")
    @guest2 = Guest.new("John", 10, "The Trooper")
    @guest3 = Guest.new("Melinda", 5, "Korsakov")
    @guest4 = Guest.new("Melody", 30, "Macarena")

    @guest_list = [@guest1, @guest2]

    @room1 = Room.new(1, @playlist1, @guest_list, 3)
  end

  def test_has_id
  assert_equal(1, @room1.id)
  end

  def test_has_playlist
    assert_equal(@playlist1, @room1.songs)
  end

  def test_has_guests
    assert_equal(@guest_list, @room1.guests)
  end

  def test_has_room_size
    assert_equal(3, @room1.room_size)
  end

  def test_add_song
    @room1.add_song(@song3)
    assert_equal(3, @room1.songs.count)
  end

  def test_add_guest
    @room1.add_guest(@guest3)
    assert_equal(3, @room1.guests.count)
  end

  def test_remove_guest
    @room1.remove_guest(@guest1)
    assert_equal(1, @room1.guests.count)
  end

  def test_is_full__yes
    @room1.add_guest(@guest3)
    assert_equal(true, @room1.is_full?)
  end

  def test_is_full__no
    assert_equal(false, @room1.is_full?)
  end

  # def test_play_song
  #   assert_equal("Now playing Fiesta Pagana", @room1.play_song(@song2))
  # end




end
