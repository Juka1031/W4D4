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

    describe "#won?" do    
    # let(:tower) {Tower.new()}
        it  'won?' do   
        tower.arr3 = [3,2,1]
        expect(tower.won?).to eq(true)
        end

    end

    describe "#take_away" do
    
        it  'It should raise and exception when an invalid input is put in' do
            expect{tower.take_away}.to raise_error("asd")
        end

    end
    


end