require './lib/bike'

class DockingStation

  attr_reader :bikes, :has_bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise "No Bikes Available" if @bikes.empty?
  end

  def dock_bike(bike)
    raise "No Slots Available" unless @bikes.empty?
    @bikes << bike
  end

end
