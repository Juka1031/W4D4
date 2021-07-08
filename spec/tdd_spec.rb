require "tdd"

describe Array do 
    subject(:array) { Array.new([1,1,3,5,6,"hello","hello"]) } 
    describe '#my_uniq' do
        it  'should take in array and return an array of duplicates removed' do
            expect(array.my_uniq).to eq([1,3,5,6,"hello"])
        end

        
    end
    describe "#two_sum" do
    let(:arr) { [-1,1,3,5,-3] }
        it 'should return the index of the value that sum to zero' do
            expect(arr.two_sum).to eq([[0,1],[2,4]])
        end

        it "should raise an error if some of the elements are not integers" do
            expect { array.two_sum }.to raise_error("asd")
        end
    end

    describe "#my_transpose" do
        let(:arr) { [[1,2],[3,4]] }
        it "should return an array thats been transposed" do
            expect(arr.my_transpose).to eq ([[1,3],[2,4]])
        end
        let(:array) { [[1,2],[3,4,5]] }
        it "should raise an error if not all the rows have the same number of elements" do
            expect { array.my_transpose}.to raise_error("asd")
        end
    end

     describe "#stock_picker" do
        let(:arr) { [1,26,7,98,3,5,6,2,10000,3,4] }
        it "should return diff between high and low" do
            expect(arr.stock_picker).to eq ([0,8])
        end

    end

 
end

