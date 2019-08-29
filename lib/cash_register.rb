class CashRegister
  attr_accessor :total
  attr_reader :discount

  def initialize (employee_discount = 0)
    @total = 0
    @discount = employee_discount
  end

  def add_item (title, price, quantity = 1)
    self.total += price * quantity
  end

  def apply_discount
    self.total = self.total.to_f * (100 - self.discount).to_f / 100.0)
  end
end
