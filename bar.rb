class Bar
  attr_reader(:till, :drinks)

  def initialize(till, drinks)
    @till = till
    @drinks = drinks
  end

  def sell(guest, drink)
    return "We don't have any #{drink.name} left" if drink.no_stock?
    guest.pay(drink.price)
    @till += drink.price
    drink.stock -= 1
  end
end
