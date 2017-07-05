require 'docking_station'
describe DockingStation do

  subject {DockingStation.new}

  it { is_expected.to respond_to(:release_bike)}

  it 'returns an instance of Bike when release_bike is called and that the bike is working' do
    expect(Bike.new).to respond_to(:working?)
  end

  it { is_expected.to respond_to(:dock_bike)}

  it { is_expected.to respond_to(:bikes)}

  it 'begins with an empty set of bikes' do
     expect(subject.bikes).to eq([])
  end

  let(:bike) { subject.dock_bike(Bike.new) }

  it 'stores instances of bike in attribute of docking station' do
    expect(subject.bikes).to eq(bike)
  end


  it 'does not release bike from empty dock' do
    expect { subject.release_bike }.to raise_error(RuntimeError)
  end

end

describe DockingStation do
  before(:context) do
    @dockbike = DockingStation.new
    @dockbike.dock_bike(Bike.new)
  end

  it 'does not allow bike to be docked if full' do
    expect { @dockbike.dock_bike(Bike.new) }.to raise_error(RuntimeError)
  end

end
