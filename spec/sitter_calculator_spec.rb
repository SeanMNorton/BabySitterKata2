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

  describe "#startToBedCost" do
    context "when startTime is 5pm and bedTime is 7pm" do
      it "returns a cost of $24" do
        expect(SitterCalculator.new([5,7,10]).startToBedCost).to eq(24)
      end
    end

    context "when startTime is 5pm and bedTime is 9pm" do
      it "returns a cost of $48" do
        expect(SitterCalculator.new([5,9,10]).startToBedCost).to eq(48)
      end
    end

    context "when startTime is 10pm and bedTime is 9pm" do
      it "returns a cost of $0" do
        expect(SitterCalculator.new([10,9,11]).startToBedCost).to eq(0)
      end
    end
  end

  describe "#bedToMidnightCost" do
    context "when startTime is 5pm, bedtime is 8pm and endTime is 11pm" do
      it "returns a cost of $24" do
        expect(SitterCalculator.new([5,8,11]).bedToMidnightCost).to eq(24)
      end
    end
    context "when startTime is two hours after bedtime at 7pm and endTime is 12am" do
      it "returns a cost of $32" do
        expect(SitterCalculator.new([8,7,11]).bedToMidnightCost).to eq(32)
      end
    end
    context "when startTime is before bedtime at 7pm and endTime is after 12am" do
      it "returns a cost of $40" do
        expect(SitterCalculator.new([5,7,3]).bedToMidnightCost).to eq(40)
      end
    end
  end

  describe "#midnightToEndCost" do
    context "when endTime is before midnight" do
      it "returns a cost of $0" do
        expect(SitterCalculator.new([5,7,11]).midnightToEndCost).to eq(0)
      end
    end
    context "when endTime is midnight" do
      it "returns a cost of $0" do
        expect(SitterCalculator.new([5,7,12]).midnightToEndCost).to eq(0)
      end
    end
    context "when endTime is after midnight" do
      it "returns a cost of $32" do
        expect(SitterCalculator.new([5,7,2]).midnightToEndCost).to eq(32)
      end
    end
  end

end # SitterCalculator
