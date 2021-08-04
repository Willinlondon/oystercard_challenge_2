class Oystercard

  attr_reader :balance, :station, :journeys

  MAX_AMOUNT = 90
  MINIMUM_FARE = 1

  def initialize
    @balance = 0
    @journeys = []
  end 

  def top_up(add)
    raise "Exceeds the limit #{MAX_AMOUNT}" if (@balance + add ) > MAX_AMOUNT
    
    @balance += add
  end

  def touch_in(station)
    raise "Balance of #{@balance} does not meet minimum fare of #{MINIMUM_FARE}" if @balance < MINIMUM_FARE
    
    if @station == nil
      # start new journey
    @station = station
    else
      # penalty charge
      # start new journey
    end
    
  end

  def touch_out(station)
    self.journey_log(@station, station)
    @station = nil
    self.deduct(MINIMUM_FARE)
  end
  
  private
  
  def deduct(subtract)
    @balance -= subtract
  end

  def journey_log(entry, exit)
      @journeys << { Start: entry, End: exit }
  end
end