class SitterCalculator
  attr_reader :startTime, :bedTime, :endTime
  def initialize(times)
    @startTime = times[0]
    @bedTime = times[1]
    @endTime = times[2]
    @startToBedHourly = 12
  end

  def startToBedCost
    return @startTime > @bedTime ? 0 : (@bedTime - @startTime) * @startToBedHourly
  end

  def bedToMidnightCost
    if @endTime > 4
      return (@endTime - @bedTime) * 8
    elsif @startTime > @bedTime
      return (12 - @startTime) * 8
    else
      return (12 - @bedTime) * 8
    end
  end

end
