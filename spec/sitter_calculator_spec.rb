require 'sitterCalculator.rb'

describe SitterCalculator do
  context "when creating a new SitterCalculator" do
    before { @calc = SitterCalculator.new([5, 7, 10]) }
    it "is initalized with a startTime" do
      expect(@calc.startTime).to eq(5)
    end

    it "is initalized with a bedTime" do
      expect(@calc.bedTime).to eq(7)
    end

    it "is initalized with a endTime" do
      expect(@calc.endTime).to eq(10)
    end
  end
end
