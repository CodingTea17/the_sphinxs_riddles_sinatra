class Riddle
  attr_reader(:this_riddle)
  def initialize()
    riddles = [{"Poor people have it. Rich people need it. If you eat it you die." => "nothing"},{"What has 4 eyes but can’t see?" => "mississippi"},{"What travels around the world but stays in one spot?" => "stamp"}]
    @this_riddle = [riddles[rand(3)]]
    riddles = riddles - @this_riddle
    @this_riddle.push(riddles[rand(2)])
  end

  def sphinx_thinking(answer1, answer2)
    if ((answer1.downcase == @this_riddle[0].values.first) & (answer2.downcase == @this_riddle[1].values.first))
      return "Enter Dude"
    else
      return "You die now, release the dragon!"
    end
  end
end
#
# @answer1 = answer1.downcase
# @answer2 = answer2.downcase
# @answer3 = answer3.downcase
