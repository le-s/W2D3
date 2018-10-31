require_relative "card"

class Deck
  attr_reader :deck
  
  FACE = [1,2,3,4,5,6,7,8,9,10,11,12,13]
  SUIT = ["D", "C", "H", "S"]
  
  def initialize
    @deck = []
    populate_shuffled_deck
  end
  
  def populate_shuffled_deck
    FACE.each do |face_value|
      SUIT.each do |suit_value|
        @deck << [Card.new(face_value, suit_value)]
      end
    end
    
    @deck.shuffle!
  end
end