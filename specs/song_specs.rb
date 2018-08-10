require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class TestSong < MiniTest::Test
  def setup
    @song1 = Song.new("Run to the hills")
  end

  def test_song_has_a_name
    assert_equal("Run to the hills", @song1.name)
  end
end
