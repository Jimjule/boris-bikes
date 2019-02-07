class DockingStation

  attr_reader( :bikes, :capacity)
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
    @capacity.times { @bikes << Bike.new }
  end

  def release_bike
    empty?
    working_bikes = @bikes.select { |x| x.working? == true }
    broken_bikes = @bikes.select { |x| x.working? == false }
    output_bike = working_bikes.pop
    @bikes = working_bikes + broken_bikes
    return output_bike
  end

  def dock(bike)
    full?
    @bikes << bike
  end

  def van_pick_up
    broken_bikes = @bikes.select { |x| x.working? == false }
    @bikes = @bikes.select { |x| x.working? == true }
    broken_bikes 
  end

  private def full?
    fail "Station is full" if @bikes.count >= 20
  end

  private def empty?
    fail "No bikes left" if @bikes.count == 0
  end

end
