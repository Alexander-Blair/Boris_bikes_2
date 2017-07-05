require 'bike'

describe Bike do
  subject { Bike.new }
  it { is_expected.to respond_to(:working?) }

  it { is_expected.to respond_to(:docked) }  
end
