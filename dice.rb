# /dice.rb

require "sinatra"
require "sinatra/reloader"


get '/' do

  "<ul>
  <li><a href=\"/1d6\">Roll a 6-sided dice</a></li>
  <li><a href=\"/dice/2/6\">Roll two 6-sided dice</a></li>
  <li><a href=\"/dice/1/10\">Roll one 10-sided die</a></li>
  </ul>"
  
end




get '/hi' do
  return "hello world"
end

get '/1d6' do
  return "dice god rolled " + rand(6).to_s
end

get ("/giraffe") do
  "Hopefully this shows up without having to restart the server 🤞🏾"
end


get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die
	
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	
  "<h1>2d6</h1>
   <p>#{outcome}</p>"
end

get "/dice/2/10"  do
  x = rand(1..10)
  y = rand(1..10)
  z = x + y
  outcome = "You rolled a #{x} and a #{y} for a total of #{z}."

  "<h1>2d10</h1>
   <p>#{outcome}</p>"
end
