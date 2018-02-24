require 'sinatra'
require 'sequel'
require 'pg'
require './config/environments' #database configuration
#DB = Sequel.connect('postgres://david:david@localhost/moodsdatabase')
#DB = Sequel.postgres('moodsdatabase',:user=>'david',:password=>'david',:host=>'localhost',:port=>5432,:max_connections=>10)
$moodsum = 0
#moods = DB[:moodsdatabase]

get '/' do 
  erb :index
end

post '/' do
  puts params
  $moodsum = $moodsum + params["mood"].to_i
  DB[:moodsdata].insert(value: params["mood"].to_i)
  erb :result
end

