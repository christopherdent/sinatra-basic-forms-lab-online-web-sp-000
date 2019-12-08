require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index 
  end

  post '/piglatinize' do
     @text = params[:user_phrase]
     @piglatinizer = PigLatinizer.new
    erb :piglatinize
  end


end
