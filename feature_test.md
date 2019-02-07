require './lib/docking_station.rb'
require './lib/bike.rb'

docking_station = DockingStation.new
bike = docking_station.release_bike
bike2 = docking_station.release_bike
bike3 = docking_station.release_bike
bike.working?

docking_station.dock(bike)
