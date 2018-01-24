class CashRegister
  attr_accessor :total

  def initialize(total = 0)
    @total = total
  end

  def new
    self.total = 0
  end  
end
