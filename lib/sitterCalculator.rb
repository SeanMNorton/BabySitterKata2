class SitterCalculator
  attr_reader :startTime, :bedTime, :endTime
  def initialize(times)
    @startTime = times[0]
    @bedTime = times[1]
    @endTime = times[2]
  end
end
