require 'pry'

class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @discount = discount
    @total = 0
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
  end

  def apply_discount
    d = (self.total * @discount)/100
    cash_register_with_discount = self.total - d
      "After the discount, the total comes to $#{cash_register_with_discount}."
  #binding.pry
  end


end
