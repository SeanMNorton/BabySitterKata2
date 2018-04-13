require './shared/set_times.rb'

def sitterQuestionaire
  def getStartTime
    print "Start Time: "
    startTime = gets.chomp.to_i
    if startTime > $latestTime
      return startTime
    else
      puts "I'll start no earlier than 5:00PM!"
      getStartTime
    end
  end

  def getBedTime
    print "Bed Time: "
    bedTime = gets.chomp.to_i
    if bedTime <= $midnight && bedTime > $latestTime
      return bedTime
    else
      puts "Your kid needs to be in bed by midnight!!"
      getBedTime
    end
  end

  def getEndTime
    print "End Time: "
    endTime = gets.chomp.to_i
  end

  return [getStartTime, getBedTime , getEndTime]
end
