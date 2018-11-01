class Player
  attr_accessor :hand
  
  def initialize(hand)
    @player_hand = Hand.new #[[1],[2],[3],[4],[5]]
  end
end