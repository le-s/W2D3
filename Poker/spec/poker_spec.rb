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
    
    it "should shuffle deck" do 
      expect(all_cards.deck).not_to eq(all_cards.deck.sort)
    end
  end
  
  describe "#take_cards(num)" do
    let(:deck) { [[1, "S"], [8, "H"], [11, "C"], [5, "D"]] }
    allow(deck).to receive(:take_cards)
    it "deals num amount of cards that player requests" do
      deck.take_cards(1)
      expect(deck.length).to eq(3)
    end
  end
  
  describe "#deal" do
    
  end
end

RSpec.describe Game do
end

RSpec.describe Hand do
end

RSpec.describe Player do
end

