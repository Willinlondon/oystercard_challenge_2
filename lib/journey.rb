class Journey
  attr_reader :exit_station, :fare, :entry_station
  
  PENALTY_FARE = 6
  
  def initialize(station)
    @entry_station = station
    @in_progress = true
  end
  
  def finish(station)
    fare
    @log = { Start: @entry_station, End: station }
    @in_progress = false
  end
  
  def fare
    if complete?
      return MINIMUM_FARE
    else
      return PENALTY_FARE
    end
  end
  
  def complete?
    if @in_progress == true
      return true
    else
      return
    end
  end
end