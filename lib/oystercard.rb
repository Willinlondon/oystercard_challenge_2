class Oystercard

  attr_reader :balance
  MAX_AMOUNT = 90
  def initialize()
    @balance = 0
  end 
  def top_up(add)
    raise "Exceeds the limit #{MAX_AMOUNT}" if (@balance + add ) > MAX_AMOUNT
    @balance += add
  end

end