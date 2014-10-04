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
  	params
  	erb :sign_in
  end

  post '/opponent' do
  	session[:player_one] = params[:name]
  	@name = params[:name]
  	erb :opponent
	end

	post '/waiting_area' do
		puts params.inspect
		@opponent = params[:opponent]
		return erb :playing_area if @opponent == "algorithm"
		erb :waiting_area
	end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
