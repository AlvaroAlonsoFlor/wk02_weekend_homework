require("minitest/autorun")
require("minitest/rg")
require_relative("../drink.rb")

class TestDrink < MiniTest::Test
  def setup
    @drink1 = Drink.new("Beer", 2, 10)
    @drink2 = Drink.new("Wine", 5, 0)
  end

  def test_has_name
    assert_equal("Beer", @drink1.name)
  end

end
