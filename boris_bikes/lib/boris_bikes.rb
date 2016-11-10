class DockingStation

attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise "No more bikes!" if @bikes == []
    @bikes.pop
  end

  # def dock(bike) #return_bike
  #   @bikes = bike
  # end

  def dock(bike)
    raise "Docking station full!" if @bikes.count >= 20
    @bikes << bike
  end

  def full?
    if
      @bike.count >= 20
      return true
    else
      return false
    end
  end



end

class Bike

  def working?
    true
  end

end
