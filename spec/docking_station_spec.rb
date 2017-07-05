require 'docking_station'
describe DockingStation do
  subject {DockingStation.new}
  it { is_expected.to respond_to(:release_bike)}

  it 'returns an instance of Bike when released_bike is called and that the bike is working' do
    expect(subject.release_bike).to be_an_instance_of(Bike)
    expect(Bike.new.working?).to eq(true)
  end

  it { is_expected.to respond_to(:dock_bike)}

end
