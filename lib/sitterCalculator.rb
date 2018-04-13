class SitterCalculator
  attr_reader :startTime, :bedTime, :endTime
  def initialize(arguments)
    @startTime = arguments[0]
    @bedTime = arguments[1]
    @endTime = arguments[2]
  end
end
