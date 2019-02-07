require './lib/docking_station.rb'

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
    @station.dock
  end

  it "bike object is retruned on call of bikes" do
    @station.release_bike
    expect(@station.bikes.class).to eq Bike
  end

  it "Raises and error when there are no bikes left" do
    @station.release_bike
    expect { raise @station.release_bike }.to raise_error('No bikes left')
  end
end
