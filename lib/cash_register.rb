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
    if self.discount > 0
      self.total = self.total.to_f * (100 - self.discount).to_f / 100.0
      puts "After the discount, the total comes to $#{self.total}"
    else
      puts "There is no discount to apply."
    end
  end
end
