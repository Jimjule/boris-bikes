require './lib/docking_station.rb'

describe DockingStation do
   it {is_expected.to respond_to :release_bike}
end

describe DockingStation do
  it {
    station = DockingStation.new
    bike = station.release_bike
    expects bike.working?.to eq true
  }

end
