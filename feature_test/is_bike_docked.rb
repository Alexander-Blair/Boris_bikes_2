require './lib/docking_station.rb'

dock = DockingStation.new # new instance of DockingStation
bike = dock.release_bike # new instance of Bike, stored as local variable
p dock.bikes # calls bikes method on the new instance of DS
p bike.docked # calls is_docked on new instance of bike
