require 'player'

describe Player do
  it 'is expected to return Player name' do
  player_one = Player.new("Bart")
   expect(player_one.name).to eq "Bart"
  end
end
