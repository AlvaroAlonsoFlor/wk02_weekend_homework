require("minitest/autorun")
require("minitest/rg")
require_relative("../bar.rb")
require_relative("../guest.rb")
require_relative("../drink.rb")

class TestBar < MiniTest::Test
  def setup
    @guest1 = Guest.new("Jack", 20, "Run to the hills")
    @guest2 = Guest.new("John", 10, "The Trooper")
    @guest3 = Guest.new("Melinda", 5, "Korsakov")
    @guest4 = Guest.new("Melody", 30, "Macarena")

    @drink1 = Drink.new("Beer", 2, 10)
    @drink2 = Drink.new("Wine", 5, 0)
    @drink3 = Drink.new("MegaCocktail", 20, 2)

    @drinks = [@drink1, @drink2, @drink3]

    @bar = Bar.new(0, @drinks)
  end

  def test_has_till
    assert_equal(0, @bar.till)
  end

  def test_has_drinks
    assert_equal(@drinks, @bar.drinks)
  end

  def test_sell
    @bar.sell(@guest1, @drink1)
    assert_equal(2, @bar.till)
    assert_equal(18, @guest1.wallet)
    assert_equal(9, @drink1.stock)
  end

  def test_sell__no_stock
    expected = "We don't have any Wine left"
    assert_equal(expected, @bar.sell(@guest1, @drink2))
  end

  def test_sell__no_money
    expected = "You don't have money for MegaCocktail"
    assert_equal(expected, @bar.sell(@guest3, @drink3))
  end



end
