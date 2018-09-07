require_relative 'Bike'


class DockingStation
attr_reader :rack

DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @rack = [Bike.new]
    @capacity = capacity

  end

  def release_bike
    raise "there are no bikes" if empty?
    @rack.pop
  end

  def dock_bike(bike)
    raise "This dock is full :(" if full?
    @rack << bike
  end

  private
  def full?
    @rack.length >= @capacity
  end

  def empty?
    @rack.length < 1
  end
end
