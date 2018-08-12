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

  def test_has_price
    assert_equal(2, @drink1.price)
  end

  def test_has_stock
    assert_equal(10, @drink1.stock)
  end

end
