class DockingStation

attr_reader :bike

  def release_bike
  raise "No more bikes!" unless @bike
  @bike
  end

  def return_bike(bike)
    @bike = bike
  end

  def accept_bike
    raise "Docking station full!"
  end

end

class Bike

  def working?
    true
  end

end
