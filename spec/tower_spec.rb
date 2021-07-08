require "tower"

describe Tower do
    subject(:tower) { Tower.new() } 
    
    describe "#initialize" do    
        it  'It initialize a new instance' do
        expect(Tower.arr1).to eq([3,2,1])
    end

end