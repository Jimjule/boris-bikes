require './lib/docking_station.rb'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}

  it {
    station = DockingStation.new
    bike = station.release_bike
    expect(bike.working?).to eq true
  }

  it 'respond to dock' do
    station = DockingStation.new
    station.dock
  end
end
