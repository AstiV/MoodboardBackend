require 'sinatra'

$moodsum = 0

get '/' do 
  erb :index
end

post '/' do
  puts params
  $moodsum = $moodsum + params["mood"].to_i
  puts $moodsum
  "Thank you!"
end
 