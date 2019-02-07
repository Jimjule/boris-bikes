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
    if @bikes.count >= 2 then fail "Station is full" else @bikes << bike end
  end

end
