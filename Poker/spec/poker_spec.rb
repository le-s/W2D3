require 'card'
require 'deck'
require 'game'
require 'hand'
require 'player'

RSpec.describe Card do
  subject(:card) { Card.new(8, "H") }
  describe "#initialize" do
    
    it "contains a face value" do
      expect(card.face_value).to eq(8)
    end
    
    it "contains a suit value" do
      expect(card.suit_value).to eq("H")
    end
  end
end

RSpec.describe Deck do
  subject(:all_cards) { Deck.new }
  describe "#initialize" do    
    it "contains 52 unique cards" do
      expect(all_cards.deck.uniq.length).to eq(52)
    end
  end

end

RSpec.describe Game do
end

RSpec.describe Hand do
end

RSpec.describe Player do
end

