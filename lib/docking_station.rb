require './lib/bike'

class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike(bike)
    raise "No Bikes Available" if empty?
    @bikes.delete(bike)
  end

  def dock_bike(bike)
    raise "No Slots Available" if full?
    @bikes << bike
  end

  private
  def full?
    @bikes.length >= 20 ? true : false
  end

  def empty?
    @bikes.empty? ? true : false
  end

end
