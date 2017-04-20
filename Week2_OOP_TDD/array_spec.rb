RSpec.describe Array do
    before do
        @a = Array.new()
    end
    it 'drops first n elements from an array and returns rest of elements in array' do
        @a.push(1).push(2).push(3)
        expect(@a.drop(2)).to eq([3])
    end
    it 'removes the last element and returns it' do
        @a.push(1).push(2).push(3)
        expect(@a.pop()).to eq(3)
        expect(@a).to eq([1,2])
    end
    it 'Extracts the nested value specified by the sequence of idx objects by calling dig at each step, returning nil if any intermediate step is nil' do
        @b = [[1, [2,3]]]
        expect{@b.dig(0,1,1)}.to raise_error(NoMethodError)
        expect{@b.method 'dig'}.to raise_error(NameError)
    end
end
