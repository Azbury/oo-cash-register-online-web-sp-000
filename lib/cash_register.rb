class CashRegister
  attr_accessor :total, :cart
  attr_reader :discount

  def initialize (employee_discount = 0)
    @total = 0
    @discount = employee_discount
    @cart = []
  end

  def add_item (title, price, quantity = 1)
    self.total += price * quantity
    if quantity == 1
      self.cart << title
    else
      counter = 0
      while counter < quantity
        self.cart << title
        counter += 1
      end
    end
  end

  def apply_discount
    if self.discount > 0
      self.total = self.total.to_f * (100 - self.discount).to_f / 100.0
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    self.cart
  end
end
