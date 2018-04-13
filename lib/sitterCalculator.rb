class SitterCalculator
  attr_reader :startTime, :bedTime, :endTime
  def initialize(times)
    @startTime = times[0]
    @bedTime = times[1]
    @endTime = times[2]
  end

  def startToBedCost
    if @startTime > @bedTime
      return 0
    else
      return (@bedTime - @startTime) * 12
    end
  end
end
