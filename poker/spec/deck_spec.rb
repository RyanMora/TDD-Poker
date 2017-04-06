require 'rspec'
require 'deck'

describe Deck do
  subject(:deck) { Deck.new() }

  describe '#create_deck' do

    it 'creates a deck of 52 cards' do
      expect(deck.deck.length).to eq(52)
    end

    it 'should create every card combination' do
      expect(deck.check_the_deck).to eq(true)
    end

  end

  describe '#shuffle' do

  end


end
