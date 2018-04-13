require 'sitterCalculator.rb'

describe SitterCalculator do
  context "when creating a new SitterCalculator" do
    before { @calc = SitterCalculator.new([5, 7, 10]) }
    it "is initalized with startTime" do
      expect(@calc.startTime).to eq(5)
    end
  end
end
