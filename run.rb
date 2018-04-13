require "./lib/sitterQuestionaire.rb"
require "./lib/sitterCalculator"

babySitting = SitterCalculator.new(sitterQuestionaire)

def prettyPrint(cost)
  print "\nThe total cost for tonight will be: $#{cost}.00 \n"
end

prettyPrint(babySitting.totalCost)
