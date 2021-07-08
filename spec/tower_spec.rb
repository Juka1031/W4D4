require "tower"

describe Tower do
    subject(:tower) { Tower.new() } 
    
    describe "#initialize" do    
        it  'It initialize a new instance' do
        expect(tower.arr1).to eq([3,2,1])
        expect(tower.arr2).to eq([])
        expect(tower.arr3).to eq([])
        end


    end

end