require './lib/boris_bikes.rb'

describe DockingStation do
 it 'reponds to release_bike' do
   docking_station = DockingStation.new
   expect(docking_station.respond_to?(:release_bike)).to eq true
 end
end
