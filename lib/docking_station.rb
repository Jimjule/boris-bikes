class DockingStation

  attr_reader( :bikes)

  def initialize
    @bikes = []
    @capacity = 2
    @capacity.times { @bikes << Bike.new }
  end

  def release_bike
    fail "No bikes left" if @bikes.count == 0
    @bikes.pop
  end

  def dock(bike)
    fail "Station is full" if @bikes.count >= 2
    @bikes << bike
  end

end
