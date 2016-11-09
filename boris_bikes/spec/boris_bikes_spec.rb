require 'boris_bikes'

describe DockingStation do
  it "Responds to a method called release_bike" do
  docking_station = DockingStation.new
  expect(docking_station).to respond_to(:release_bike)
  end
  # it { is_expected.to respond_to (:release_bike)}
  it "Releases a bike and expects it to work" do
    release_bike = Bike.new
    expect(release_bike).to respond_to(:working?)
  end

  it "Test that release_bike instantiates a new Bike and that it works" do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(bike).to respond_to(:working?)
    expect(bike.working?).to eq true
  end




end
