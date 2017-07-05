require './lib/docking_station.rb'

dock = DockingStation.new # new instance of DockingStation
bike = Bike.new # new instance of Bike, stored as local variable
dock.bikes # calls bikes method on the new instance of DS
bike.is_docked? # calls is_docked on new instance of bike
