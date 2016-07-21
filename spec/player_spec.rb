require 'player'

describe Player do
  player_one = Player.new("Bart")
  player_two = Player.new("Victor")

  it 'is expected to return Player name' do
   expect(player_one.name).to eq "Bart"
  end

  it 'players starting HP eq 100' do
    expect(player_one.hp).to eq described_class::STARTING_HP
  end

  describe '#attack' do
    it "player can receive hits" do
      expect(player_two).to receive(:hit)
      player_one.attack(player_two)
    end

    it 'reduces attacked player HP by 10HP' do
      expect{ player_one.attack(player_two) }.to change{ player_two.hp }.by -described_class::HIT_POWER
    end
  end
end
