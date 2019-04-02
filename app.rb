require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end   
  
  post '/' do 
    @pig_latinizer = PigLatinizer.new(params[:user_text])
    erb :piglatinize
  end   
  
end