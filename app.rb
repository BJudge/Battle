require 'sinatra/base'
require './lib/player'
class Battle < Sinatra::Base
 enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player_one])
    $player2 = Player.new(params[:player_two])
    redirect '/play'
  end

  get '/play' do
    @player_one = $player1.name
    @player_two = $player2.name
    erb :play
  end

  get '/attack' do
  @player_one = $player1.name
  @player_two = $player2.name
  erb :attack
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
