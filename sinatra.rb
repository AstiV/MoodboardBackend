require 'sinatra'
require 'sequel'
require 'pg'
require './config/environments' #database configuration

$moodsum = 0

get '/' do 
  erb :index
end

post '/' do
  puts params
  $moodsum = $moodsum + params["mood"].to_i
  puts $moodsum
  "Thank you!"
  <div style="padding-top:90px;"><%= $moodsum %></div>
end
