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

  it 'when bike is created, it is not docked' do
    expect(Bike.new.docked).to eq(false)
  end

  it 'does not release bike from empty dock' do
    expect { subject.release_bike }.to raise_error(RuntimeError)
  end


end
