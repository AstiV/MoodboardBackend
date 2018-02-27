require 'sinatra'
require 'sequel'
require 'pg'
require './config/environments' #database configuration
#require './models/model' #Mood class

get '/' do 
  erb :index
end

post '/' do
  #puts params
  DB[:moodsdata].insert(value: params["mood"].to_i)
  erb :result
end

