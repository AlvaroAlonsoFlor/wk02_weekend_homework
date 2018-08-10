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

  def test_guest_has_a_wallet
    assert_equal(20, @guest1.wallet)
  end

  def test_guest_has_a_favourite_song
    assert_equal("Run to the hills", @guest1.favourite_song)
  end

  def test_is_favourite_song
    assert_equal("Yeah!", @guest1.is_favourite_song(@song1))
  end

  def test_is_favourite_song__no
    assert_nil(@guest1.is_favourite_song(@song2))
  end

  def test_pay
    @guest1.pay(5)
    assert_equal(15, @guest1.wallet)
  end

  def test_has_money?
    assert_equal(true, @guest1.has_money?(5))
  end

  def test_has_money__no

  end


end
