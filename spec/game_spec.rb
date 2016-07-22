require 'game'


describe Game do
  let(:player_one) {double :player}
  let(:player_two) {double :player}


  it "calls player1" do
    game = Game.new(player_one,player_two)
    expect(game.player_one).to eq player_one
  end

  it "calls player2" do
    game = Game.new(player_one,player_two)
    expect(game.player_two).to eq player_two
  end


  describe '#attack' do
    it "player can receive hits" do
      game = Game.new(player_one,player_two)
      expect(player_two).to receive(:hit)
      game.attack(player_two)
    end
  end




end
