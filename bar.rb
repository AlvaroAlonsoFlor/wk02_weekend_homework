class Bar
  attr_reader(:till, :drinks)

  def initialize(till, drinks)
    @till = till
    @drinks = drinks
  end

  def sell(guest, drink)
    return "We don't have any #{drink.name} left" if drink.no_stock?

    return "You don't have money for #{drink.name}" if drink.price > guest.wallet

    guest.pay(drink.price)
    @till += drink.price
    drink.stock -= 1
  end
end
