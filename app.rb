require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/sphinx')

get('/') do
  erb(:index)
end

post('/output') do
  @a1 = params.fetch("q1")
  @a2 = params.fetch("q2")
  @a3 = params.fetch("q3")
  # the_riddle = Riddle.new(@a1, @a2, @a3)
  @riddle_me_this = Riddle.new(@a1, @a2, @a3).sphinx_thinking()
  erb(:output)

end
