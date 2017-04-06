require 'rspec'
require 'hand'

describe Hand do
  subject(:hand) { Hand.new([ [card1], [card2] ,[card3] ,[card4] ,[card5] ])}
  let(:card1) { double(:clubs, 5) }
  let(:card2) { double(:spades, :ace) }
  let(:card3) { double(:spades, :king) }
  let(:card4) { double(:diamonds, :king ) }
  let(:card5) { double(:hearts, :ace) }

  describe '#initialize' do

    it 'should contain 5 cards' do
      expect(hand.cards.length).to eq(5)
    end

  end

  # describe '#set_value' do
  #   it 'should set value to corresponding hand' do
  #     expect(hand.value).to eq()
  #   end
  #
  # end


end
