require 'bike'

describe Bike do
  subject { Bike.new }
  it { is_expected.to respond_to(:working?) }
 
end
