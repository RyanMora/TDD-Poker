require_relative 'card'
require 'byebug'

SUITS = [ :clubs,
          :diamonds,
          :hearts,
          :spades]

VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]
class Deck
  attr_reader :deck

  def initialize
    @deck = []
    create_deck
  end

  def create_deck
    SUITS.each do |suit|
      VALUES.each do |val|
        @deck << Card.new(suit, val)
      end
    end
  end

  def check_the_deck
    i = 0
    j = 0

    @deck.each  do |card|
      # byebug
      return false unless card.value == VALUES[i]
      return false unless card.suit == SUITS[j]
      if i == 12
        i = -1
        j += 1
      end
      i+= 1
    end
    true
  end

end
