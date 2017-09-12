class Riddle
  def initialize()
    @answer1 = answer1.downcase
    @answer2 = answer2.downcase
    @answer3 = answer3.downcase
    @random_number = 1+ rand(3)
  end

  def sphinx_thinking()
    if ((@answer1 == "nothing") and (@answer2 == "mississippi") and (@answer3 == "stamp"))
      return "Enter Dude"
    else
      return "You die now, release the dragon!"
    end
  end
end
