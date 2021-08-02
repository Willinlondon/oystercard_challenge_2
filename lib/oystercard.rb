class Oystercard

  attr_reader :balance, :journey

  MAX_AMOUNT = 90

  def initialize()
    @balance = 0
    @journey = false
  end 

  def top_up(add)
    raise "Exceeds the limit #{MAX_AMOUNT}" if (@balance + add ) > MAX_AMOUNT
    @balance += add
  end

  def deduct(subtract)
    @balance -= subtract
  end

  def in_journey?(test)
    @journey = test
  end

  def touch_in
    in_journey?(true)
  end

end