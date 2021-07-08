require "tdd"

describe Array do 
    subject(:array) { Array.new([1,1,3,5,6,"hello","hello"]) } 
    describe '#my_uniq' do
        it  'should take in array and return an array of duplicates removed' do
            expect(array.my_uniq).to eq([1,3,5,6,"hello"])
        end

        
    end

end