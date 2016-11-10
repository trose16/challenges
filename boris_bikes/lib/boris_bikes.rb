class DockingStation

attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise "No more bikes!" if empty?
    @bikes.pop
  end

  # def dock(bike) #return_bike
  #   @bikes = bike
  # end

  def dock(bike)
    raise "Docking station full!" if full?
    @bikes << "bike"
  end

  def full?
    @bikes.count >= 20
  end

  def empty?
    @bikes.count == 0
  end

# private :release_bike, :dock, :full?, :empty?

end

class Bike

  def working?
    true
  end

end
