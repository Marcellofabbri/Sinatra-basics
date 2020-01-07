require 'sinatra/base'

#run from terminal by typing 
#rackup -p 4567

class Battle < Sinatra::Base
  
  get '/' do
    "Testing infrastructure working!"
  end

  run! if app_file == $0
end