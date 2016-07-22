require_relative 'player'

class Game



  def initialize(player1, player2)
    @players = [player1, player2]

  end

  def attack player
    player.hit
    player_turn
  end

  def player_one
    @players[0]
  end

  def player_two
    @players[1]
  end

  private
    def player_turn
      @players.rotate!
    end


end
