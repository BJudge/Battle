require_relative 'game'

class Player
  attr_reader :name, :hp
  STARTING_HP = 100
  HIT_POWER = 10
  def initialize(name)
    @name = name
    @hp = STARTING_HP
  end

  def hit
    @hp -= HIT_POWER
  end

end
