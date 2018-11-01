require_relative 'card'

class Hand
  def initialize(hand)
    @hand = [] #[[1],[2],[3],[4],[5]]
  end
  
  def calculate_hand
    hand_face_values = []
    hand.each do |card|
      hand_face_values << card.face_value
    end
    
    # if hand_face_values.uniq.length == 5
    #   #we know this has to be a high card hand
    # end
  end
  
  
end 