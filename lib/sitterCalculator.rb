class SitterCalculator
  attr_reader :startTime, :bedTime
  def initialize(arguments)
    @startTime = arguments[0]
    @bedTime = arguments[1]
  end
end
