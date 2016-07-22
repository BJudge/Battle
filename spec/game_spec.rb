require 'game'


describe Game do
  let(:player_one) {double :player}
  let(:player_two) {double :player}


  describe '#attack' do
    it "player can receive hits" do
      expect(player_two).to receive(:hit)
      subject.attack(player_two)
    end
  end
end
