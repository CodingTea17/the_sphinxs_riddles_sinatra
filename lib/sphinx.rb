class Riddle
  attr_reader(:this_riddle)
  def initialize()
    riddles = [{"Poor people have it. Rich people need it. If you eat it you die.": "nothing"},{"What has 4 eyes but can’t see?": "mississippi"},{"What travels around the world but stays in one spot?": "stamp"}]
    @this_riddle = riddles[rand(3)]
  end

#   def sphinx_thinking()
#     if ((@answer1 == "nothing") and (@answer2 == "mississippi") and (@answer3 == "stamp"))
#       return "Enter Dude"
#     else
#       return "You die now, release the dragon!"
#     end
#   end
end
#
# @answer1 = answer1.downcase
# @answer2 = answer2.downcase
# @answer3 = answer3.downcase
