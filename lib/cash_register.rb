class CashRegister
  attr_accessor :total
  attr_reader :discount

  def initialize (employee_discount = "0")
    @total = 0
    @discount = employee_discount
  end

  def add_item (title, price)
    self.total += price
  end
end
