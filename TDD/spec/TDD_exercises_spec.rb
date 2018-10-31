require 'TDD_exercises'

RSpec.describe Array do 
  describe "#my_uniq" do
    
    context "there are duplicates" do
      it "removes all duplicates" do
        expect([1,2,1,3,3].my_uniq).to eq([1,2,3])
      end
    end
    
    context "there are no duplicates" do
      it "it does not change the array" do
        expect([1,2,3,4,5].my_uniq).to eq([1,2,3,4,5])
      end
    end
  end
  
  describe "#two_sum" do
    context "array contains pairs that sum to zero" do
      it "return pairs when sum of pair is equal to zero" do
        expect([-1,0,2,-2,1].two_sum).to eq([[0,4], [2,3]])
      end
    end
    
    context "array doesn't contain pairs that sum to zero" do
      it "returns an empty array" do
        expect([-6,2,-15,4,-5].two_sum).to be_empty
      end 
    end
  end
  
  describe "my_transpose" do 
    array = [[0,1,2],[3,4,5],[6,7,8]]
    it "convert betweeen row-oriented & column-oriented" do
      expect(array.my_transpose).to eq([[0,3,6],[1,4,7],[2,5,8]])
    end
  end
  
  describe "stock_picker" do
    array = [10,9,8,11,5]
    it "finds the most profitable pair" do
      expect(array.stock_picker).to eq([2,3])
    end
  end
end

  
