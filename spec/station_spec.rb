require 'station'

describe Station do
  
  before do
    @station = Station.new("kings cross", 2)
  end

  it 'has a station name' do
    expect(@station.name).to eq("kings cross")
  end


  it 'has a station zone' do
    expect(@station.zone).to eq(2)
  end

  
end