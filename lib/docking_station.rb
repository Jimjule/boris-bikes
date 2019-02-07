class DockingStation
  attr_reader( :bikes)
  def release_bike
    @bikes = Bike.new
  end
  def dock

  end
end

class Bike
  def working?
    true
  end
end
