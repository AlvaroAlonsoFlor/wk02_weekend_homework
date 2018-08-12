class Drink
  attr_reader( :name, :price, :stock)

  def initialize(name, price, stock)
    @name = name
    @price = price
    @stock = stock
  end

  def no_stock?
    return true if stock <= 0
    false
  end
end
