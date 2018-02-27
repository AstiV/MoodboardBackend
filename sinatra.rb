require 'sinatra'
require 'sequel'
require 'pg'
require './config/environments' #database configuration
require './models/model' #Mood class

$moodsum = 0

get '/' do 
  erb :index
end

post '/' do
  puts params
  $moodsum = $moodsum + params["mood"].to_i
  erb :result
end
