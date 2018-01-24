class CashRegister
  attr_accessor :total

  def initialize(total)
    @total = total
  end

  def new
    self.total = 0
  end
end
