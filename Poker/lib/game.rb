require "deck"

class Game
  attr_reader :player1, :player2, :community_pot, :discard_pile
  attr_accessor :current_player, :deck
  
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
    @community_pot = 0
    @discard_pile = []
    @deck = Deck.new
  end
  
  def deal_starting_hands
    
  end  
  
  def deal_next_card
    
  end
  
  def compare_hands
    
  end
end