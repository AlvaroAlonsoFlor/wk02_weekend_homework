class Bar
  attr_reader(:till, :drinks)

  def initialize(till, drinks)
    @till = till
    @drinks = drinks
  end
end
