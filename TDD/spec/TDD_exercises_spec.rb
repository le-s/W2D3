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
end

  
