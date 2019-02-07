class DockingStation
  attr_reader( :bikes)
  def initialize
    @bikes = []
    @bikes << Bike.new
    @bikes << Bike.new
  end
  def release_bike
    if @bikes.count == 0
      fail "No bikes left"
    end
    @bikes.pop
  end
  def dock

  end
end

class Bike
  def working?
    true
  end
end
