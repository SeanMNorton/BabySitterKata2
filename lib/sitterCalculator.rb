require './shared/set_times.rb'

class SitterCalculator
  attr_reader :startTime, :bedTime, :endTime, :totalCost
  def initialize(times)
    @startTime = times[0]
    @bedTime = times[1]
    @endTime = times[2]
    @startToBedHourly = 12
    @bedToMidnightHourly = 8
    @midnightToEndHourly = 16
    @totalCost = (startToBedCost + bedToMidnightCost + midnightToEndCost)
  end

  def startToBedCost
    return @startTime > @bedTime ? 0 : (@bedTime - @startTime) * @startToBedHourly
  end

  def bedToMidnightCost
    if @endTime > $latestTime
      return (@endTime - @bedTime) * @bedToMidnightHourly
    elsif @startTime > @bedTime
      return ($midnight - @startTime) * @bedToMidnightHourly
    else
      return ($midnight - @bedTime) * @bedToMidnightHourly
    end
  end

  def midnightToEndCost
    return @endTime > $latestTime ? 0 : (@endTime) * @midnightToEndHourly
  end

end
