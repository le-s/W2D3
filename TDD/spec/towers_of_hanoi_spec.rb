require 'towers_of_hanoi'

RSpec.describe TowersOfHanoi do 
  subject(:game) { TowersOfHanoi.new }
  
  describe "#initialize" do
    
    context "create a nested-array board" do
      it "create array with one full tower and two empty towers" do
        expect(game.towers).to eq([[1,2,3], [], []])
      end
    end
  end
  
  describe "#move" do
    let(:towers) {[[2,3],[1],[]]}
    context "if from tower is empty" do
      it "raises an ArgumentError" do
        expect{game.move(2,0)}.to raise_error(ArgumentError)
      end
    end
    context "if from tower is greater than to tower" do
      it "raises an ArgumentError" do
        expect{game.move(0,1)}.to raise_error(ArgumentError)
      end 
    end
    context "if to tower is empty" do
      it "successfully moves towers" do
        expect(game.move(1,2)).not_to raise_error
      end
    end
    context "if from tower is less than to tower"
  end
end

  
  
  