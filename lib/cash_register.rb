class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @discount = discount
    @total = 0
  end

  def add_item(title, price, *quantity)
    self.total = price
    

  end
end


  # attr_accessor :total
  #
  # def initialize(total = 0)
  #   @total = total
  # end
