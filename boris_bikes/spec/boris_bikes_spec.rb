require 'boris_bikes'

describe DockingStation do
  it "Responds to a method called release_bike" do
  docking_station = DockingStation.new
  expect(docking_station).to respond_to(:release_bike)
  end
  # it { is_expected.to respond_to (:release_bike)}
  # it "Releases a bike and expects it to work" do
  #   release_bike = Bike.new
  #   expect(release_bike).to respond_to(:working?)
  # end

  it "Test that release_bike instantiates a new working Bike" do

    docking_station = DockingStation.new
    # bike = docking_station.release_bike
    bike1= Bike.new
     expect(bike1).to respond_to(:working?)
    expect(bike1.working?).to eq true
  end

  it "Responds to a method called return_bike" do
    docking_station = DockingStation.new
    bike = Bike.new
    expect(docking_station).to respond_to(:return_bike).with(1).argument
    expect(docking_station.return_bike(bike)).to eq bike
  end

  it "If bike is there, return true" do
    docking_station = DockingStation.new
    bikes = Bike.new
    docking_station.return_bike(bikes)
    expect(docking_station.bikes).to eq bikes
  end

  it "Raises an error when asked to release bike when bikes array is empty" do
    docking_station = DockingStation.new
    expect {docking_station.release_bike}.to raise_error("No more bikes!")
  end

  it "Raises an error when returning bike to a station that has 20 in it" do
    docking_station = DockingStation.new
    expect {docking_station.accept_bike}.to raise_error("Docking station full!")
  end

  it "Assigns Docking Station a capacity of 20" do
    docking_station = DockingStation.new
    20.times {docking_station.return_bike Bike.new}
  end



end
