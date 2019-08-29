class CashRegister
  attr_reader :discount

  def initialize (employee_discount = "0")
    @total = 0
    @discount = employee_discount
  end
end
