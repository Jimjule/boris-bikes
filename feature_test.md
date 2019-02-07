require './lib/docking_station.rb'

docking_station = DockingStation.new
bike = docking_station.release_bike

bike.working?

docking_station.dock(bike)
