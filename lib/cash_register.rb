require 'pry'

class CashRegister
  attr_accessor :total, :discount
  @@items = []

  def initialize(discount = 0)
    @discount = discount
    @total = 0
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
  end

  def apply_discount
    if @discount != 0
      d = (self.total * @discount)/100
      self.total = self.total - d
        "After the discount, the total comes to $#{self.total}."
    else
        "There is no discount to apply."
    end
  end

  def items
    binding.pry
    @@items << add_item(title, price, quantity = 1)
  end

  def void_last_transaction
    @@items.delete_at(-1)
  end
end
