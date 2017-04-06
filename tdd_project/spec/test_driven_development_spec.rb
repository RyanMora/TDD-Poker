require 'test_driven_development'
require 'rspec'

describe Array do
  subject(:array) {[1, 2, 1, 3, 3]}

  describe '#my_uniq' do
    it 'should take an array' do
      allow(array).to receive(:my_uniq)
    end
    it 'returns an array' do
      expect(array.my_uniq).to be_an(Array)
    end
    it 'returns unique elements' do
      expect(array.my_uniq).to eq([1,2,3])
    end
    it 'returns a new array' do
      expect(array.my_uniq).to_not be(array)
    end
  end

  describe '#two_sum' do
    subject(:array) {[-1, 0, 2, -2, 1]}

    it 'returns all pairs of indicies whose elements sum to 0' do
      expect(array.two_sum).to include([0,4] || [4,0])
    end

    it 'returns pairs in correct order' do
      expect(array.two_sum).to eq([ [0,4], [2,3] ])
    end
  end

  describe '#my_transpose' do
    subject(:array) {[[0,1,2], [3,4,5], [6,7,8]]}

    it 'does not modify elements' do
      expect(array.my_transpose.flatten.sort).to eq(array.flatten.sort)
    end

    it 'returns the transposed array' do
      expect(array.my_transpose).to eq([[0,3,6],[1,4,7],[2,5,8]])
    end

  end

  describe '#stock_picker' do
    subject(:array) {[10, 15, 14, 5, 20, 12]}
    it 'returns a string' do
      expect(array.stock_picker).to be_a(String)
    end
    it 'returns the correct string' do
      expect(array.stock_picker).to eq("buy day 3, sell day 4")
    end
  end

end
