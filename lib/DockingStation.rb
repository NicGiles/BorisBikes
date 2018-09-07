require_relative 'Bike'


class DockingStation
attr_reader :bike

  def initialize
    @bike = Bike.new
  end

  def release_bike
    raise "there are no bikes" if @bike == nil
    @bike = nil
  end

  def dock_bike
    if @bike == nil
      @bike = Bike.new
    else
      return "This dock is full :("
    end
  end

end
