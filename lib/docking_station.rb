require './lib/bike'

class DockingStation

  attr_reader :bikes, :has_bikes

  def initialize
    @bikes = []
    @has_bikes = false
  end

  def release_bike
    @bikes << new = Bike.new
    new
  end

  def dock_bike(bike)
  end

end
