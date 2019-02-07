require './lib/docking_station.rb'
require './lib/bike.rb'
describe DockingStation do
  before(:each) do
    @station = DockingStation.new
  end
  it {is_expected.to respond_to :release_bike}

  it {
    bike = @station.release_bike
    expect(bike.working?).to eq true
  }

  it 'respond to dock' do
    @station.release_bike
    @station.dock double(:bike)
  end

  it "bike object is retruned on call of bikes" do
    @station.release_bike
    expect(@station.bikes[0].class).to eq Bike
  end

  it "Raises and error when there are no bikes left" do
    DockingStation::DEFAULT_CAPACITY.times { @station.release_bike }
    expect { @station.release_bike }.to raise_exception('No bikes left')
  end

  it 'Raises an error when you try to put more bikes then the capacity of the station' do
    expect { @station.dock double(:bike) }.to raise_exception('Station is full')
  end

  it "Makes capacity equal 20" do
    expect(@station.bikes.count).to eq DockingStation::DEFAULT_CAPACITY
  end

  it "Set capacity of station to 50" do
    station2 = DockingStation.new(50)
    expect(station2.bikes.count).to eq 50
  end

  it "Can break bike" do
    bike = @station.release_bike
    bike.broken
    expect(bike.working?).to eq false
  end

  it "Doesn't release a broken bike" do
    bike = @station.release_bike
    bike.broken
    @station.dock(bike)
    expect(@station.release_bike.working?).to eq true
  end

  it 'Van picks up broken bikes from the station' do
    3.times do
      bike = @station.release_bike
      bike.broken
      @station.dock(bike)
    end
    @station.van_pick_up
    expect(@station.bikes.select { |bike| bike.working? != true }.count).to eq 0
  end

  it "Van takes bikes to garage" do
    3.times do
      bike = @station.release_bike
      bike.broken
      @station.dock(bike)
    end
    Garage.store(@station.van_pick_up)
  end
end
