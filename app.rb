require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/sphinx')
require('pry')


new_riddle = Riddle.new
# fails = 0

get('/') do
  new_riddle = Riddle.new
  @the_page_riddle = new_riddle.this_riddle[0].keys.first
  @the_page_riddle2 = new_riddle.this_riddle[1].keys.first
  @sphinx_talk = "Welcome weary traveler...<br>Should you wish to pass, you must answer my riddles correctly, eh<br>(btws, if you get them wrong you're dead mate)"
  erb(:index)
end

post('/output') do
  @a1 = params.fetch("q1")
  @a2 = params.fetch("q2")
  # @a3 = params.fetch("q3")
  # the_riddle = Riddle.new(@a1, @a2, @a3)
  #
  # @new_riddle
  # binding.pry
  @riddle_me_this = new_riddle.sphinx_thinking(@a1, @a2)
  if (@riddle_me_this == "You die now, release the dragon!" and new_riddle.fails < 1)
    new_riddle.fails += 1
    @the_page_riddle = new_riddle.this_riddle[0].keys.first
    @the_page_riddle2 = new_riddle.this_riddle[1].keys.first
    @sphinx_talk = "You have failed. But I will give you second chance, human."
    erb(:index)
  else
    erb(:output)
  end
end
