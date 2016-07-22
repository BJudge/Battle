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
    @player_one_hp = $player1.hp
    @player_two_hp = $player2.hp
    erb :play
  end

  get '/attack' do
  @player_one = $player1.name
  @player_two = $player2.name
  Game.new.attack($player2)
  erb :attack
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
