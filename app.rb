require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index 
  end

  get '/new' do
 
    erb :create_puppy
  end
  
  
  post '/puppy' do 
     #@text = params[:user_phrase]
     @puppy = Puppy.new
  
    erb :display_puppy 
  end 


end
