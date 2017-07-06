require 'bike'

describe Bike do
  subject { Bike.new }
  it { is_expected.to respond_to(:working?) }

  it { is_expected.to respond_to(:broken) }

  describe '#initialize' do
    it 'creates a working bike' do
      expect(subject.working?).to eq true
    end
  end

  describe '#broken' do
    it 'allows user to report bike as broken' do
      subject.broken
      expect(subject.working?).to eq false
    end
  end

end
