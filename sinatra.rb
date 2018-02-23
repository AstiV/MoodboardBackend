require 'sinatra'
require 'sequel'
require 'pg'
require './config/environments' #database configuration
require "sinatra/reloader

$moodsum = 0

get '/' do 
  erb :index
end

post '/' do
  puts params
  $moodsum = $moodsum + params["mood"].to_i
  #puts $moodsum
  "Thank you!"
  <pre>
  <%= @article_votes.inspect %>
	</pre>
end
