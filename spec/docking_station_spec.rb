require 'docking_station'
describe DockingStation do

  it { is_expected.to respond_to(:release_bike)}

  it { is_expected.to respond_to(:dock_bike)}

  it { is_expected.to respond_to(:bikes)}

  it 'bikes respond to working? method' do
    expect(double(:bike)).to respond_to(:working?)
  end

  describe '#initialize' do

    let(:new_dock) { DockingStation.new(25) }

    it 'begins with an empty set of bikes' do
       expect(new_dock.bikes).to eq([])
    end

    it 'accepts an argument' do
      expect(new_dock).to be_an_instance_of(DockingStation)
    end

    it 'stores capacity instance variable' do
      expect(new_dock.capacity).to eq 25
    end

    it 'creates docking station with capacity 20 by default' do
      expect(DockingStation.new.capacity).to eq 20
    end

  end

  before(:example) do
    @dockbike = DockingStation.new
    DockingStation::DEFAULT_CAPACITY.times { @dockbike.dock_bike(double(:bike)) }
  end

  let(:dock) { DockingStation.new }
  let(:broken_bike) { @dockbike.bikes.first }

  describe '#release_bike' do

    it 'does not release bike from empty dock' do
      expect { dock.release_bike(double(:bike)) }.to raise_error(RuntimeError, "No Bikes Available")
    end

    it 'does not release broken bike from dock' do
      broken_bike.broken
      expect { @dockbike.release_bike(broken_bike) }.to raise_error(RuntimeError, "Bike is broken")
    end

    it 'removes bike when bike is released' do
      @dockbike.release_bike(@dockbike.bikes.last)
      expect(@dockbike.bikes.length).to eq(DockingStation::DEFAULT_CAPACITY - 1)
    end

  end

  describe '#dock_bike' do

    it 'does not allow bike to be docked if full' do
      expect { @dockbike.dock_bike(double(:bike)) }.to raise_error(RuntimeError, "No Slots Available")
    end

    it 'allows broken bikes to be returned to dock' do
      broken_bike.broken
      expect { subject.dock_bike(broken_bike).to eq broken_bike }
    end

    let(:bike) { double(:bike) }

    it 'stores instances of bike in attribute of docking station' do
      dock.dock_bike(bike)
      expect(dock.bikes).to eq [bike]
    end

  end

end
