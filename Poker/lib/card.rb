class Card
  attr_reader :face_value, :suit_value
  
  def initialize(face_value, suit_value)
    @face_value = face_value
    @suit_value = suit_value
  end
  
  def inspect
    "#{@face_value}, #{@suit_value}"
  end
end