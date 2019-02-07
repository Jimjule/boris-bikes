class DockingStation

  attr_reader( :bikes)

  def initialize(capacity = 20)
    @bikes = []
    @capacity = capacity
    @capacity.times { @bikes << Bike.new }
  end

  def release_bike
    empty?
    @bikes.pop
  end

  def dock(bike)
    full?
    @bikes << bike
  end

  private def full?
    fail "Station is full" if @bikes.count >= 20
  end

  private def empty?
    fail "No bikes left" if @bikes.count == 0
  end

end
