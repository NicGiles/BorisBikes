require 'DockingStation'
require 'Bike'

describe DockingStation do
  # it "should create a DockingStation" do
  #   expect (DockingStation.new).to be_an_instance_of(DockingStation)
  # end


  it "it true" do
  a = DockingStation.new
  a.release_bike
    expect{a.release_bike }.to raise_error("there are no bikes")
  end

  #it "should respond to a message" do
  #  expect(subject).to respond_to :release_bike
  #end    -  different method of the below

  it { should respond_to (:release_bike) }

  it "get a working bike" do
    expect(subject.release_bike).to eq nil
  end

  #it "dock a bike" do
    #expect(subject.dock_bike).to be_an_instance_of(Bike)
  #end

  it { should respond_to (:dock_bike) }

end
