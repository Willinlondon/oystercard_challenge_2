class Oystercard

  attr_reader :balance, :state, :entry_station

  MAX_AMOUNT = 90
  MINIMUM_FARE = 1

  def initialize
    @balance = 0
  end 

  def top_up(add)
    raise "Exceeds the limit #{MAX_AMOUNT}" if (@balance + add ) > MAX_AMOUNT
    
    @balance += add
  end

  def in_journey?
    !self.entry_station.nil?
  end

  def touch_in(station)
    raise "Balance of #{@balance} does not meet minimum fare of #{MINIMUM_FARE}" if @balance < MINIMUM_FARE
    @entry_station = station
    # @state = true
  end

  def touch_out
    @entry_station = nil
    self.deduct(MINIMUM_FARE)
  end
  
  private
  
  def deduct(subtract)
    @balance -= subtract
  end

end