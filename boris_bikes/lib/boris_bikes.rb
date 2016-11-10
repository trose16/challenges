class DockingStation

attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise "No more bikes!" if @bikes == []
    @bikes
  end

  def return_bike(bike)
    @bikes = bike
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
