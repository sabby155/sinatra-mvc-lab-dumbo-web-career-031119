require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end   
  
  post '/piglatinize' do 
    @pig_latinizer = PigLatinizer.new
    @result = pig_latinizer.translate(params[:user_text])
    erb :piglatinize
  end   
  
end