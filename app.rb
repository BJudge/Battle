require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
 enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player_one])
    player2 = Player.new(params[:player_two])
    $game = Game.new(player1, player2)

    redirect '/play'
  end

  get '/play' do
     @player_one = $game.player_one.name
     @player_two = $game.player_two.name

    @player_one_hp = $game.player_one.hp
    @player_two_hp = $game.player_two.hp
    erb :play
  end

  get '/attack' do
    @player_one = $game.player_one.name
    @player_two = $game.player_two.name

  $game.attack($game.player_two)
  erb :attack
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
