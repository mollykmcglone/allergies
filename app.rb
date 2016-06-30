require('sinatra')
require('sinatra/reloader')
require('./lib/allergies')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/allergies') do
  @score = params.fetch("score")
  @score_integer = @score.to_i
  @result = @score_integer.allergies()
  erb(:allergies)
end
