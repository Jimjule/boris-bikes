require './lib/boris_bikes.rb'

describe DockingStation do
 it {expect(DockingStation.respond_to? :release_bike).to eq true}
end
