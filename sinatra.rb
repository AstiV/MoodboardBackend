require 'sinatra'
require 'sinatra/activerecord'
require './config/environments' #database configuration
  
$moodsum = 0

  get '/' do
    %{
    <form method="post">
    <input type="radio" name="mood" value= 1> very bad<br>
    <input type="radio" name="mood" value= 2> bad<br>
    <input type="radio" name="mood" value= 3> neutral<br>
    <input type="radio" name="mood" value= 4> good<br>
    <input type="radio" name="mood" value= 5> very good<br>
    Anything to add?<br>
    <input type="text" placeholder="reason for your mood" name="reason-for-mood"><br>
    <button type="submit">submit</button>
    </form>
  }
  end

post '/' do
  puts params
  $moodsum = $moodsum + params["mood"].to_i
  puts $moodsum
  "Thank you!"
end

  get '/frank-says' do
      'Put this in your pipe & smoke it!'
    end
    