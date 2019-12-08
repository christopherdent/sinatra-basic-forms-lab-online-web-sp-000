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
     
     name = params[:name]
     breed = params[:breed]
     age = [:age]
       
     @puppy = Puppy.new(name, breed, age)
  
    erb :display_puppy 
  end 


end
