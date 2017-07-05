require './lib/bike'

class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike(bike)
    raise "No Bikes Available" if @bikes.empty?
    @bikes.delete(bike)
  end

  def dock_bike(bike)
    raise "No Slots Available" unless @bikes.length < 20
    @bikes << bike
  end

end
