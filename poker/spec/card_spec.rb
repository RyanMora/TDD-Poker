require 'rspec'
require 'card'

describe Card do
  subject(:card) { Card.new("spade", 1)}

  describe '#initialize' do

    it 'should set the value' do
      expect(card.value).to eq(1)
    end

    it 'should set the suit' do
      expect(card.suit).to eq("spade")
    end
    
  end

end
