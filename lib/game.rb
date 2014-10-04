require 'sinatra/base'

class Game < Sinatra::Base
  
  set :views, Proc.new { File.join(root, "..","views") }
  enable :sessions
  set :public_folder, 'public'


  get '/test' do

  	erb :test
  end

  get '/' do
    
    erb :index
  end

  get '/registration' do

  	erb :sign_in
  end

  post '/playing_area' do
  	@name = params[:name]
  	erb :playing_area
	end




  # start the server if ruby file executed directly
  run! if app_file == $0
end
