class DockingStation

  attr_reader( :bikes)

  def initialize(capacity = 20)
    @bikes = []
    @capacity = capacity
    @capacity.times { @bikes << Bike.new }
  end

  def release_bike
    fail "No bikes left" if @bikes.count == 0
    @bikes.pop
  end

  def dock(bike)
    fail "Station is full" if @bikes.count >= 20
    @bikes << bike
  end

end
