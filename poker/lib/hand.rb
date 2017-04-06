require_relative 'card'
require 'byebug'

HAND_VALUES = { high_card: 0,
                pair: 1,
                two_pair: 2,
                three_of_a_kind: 3,
                straight: 4,
                flush: 5,
                full_house: 6,
                four_of_a_kind: 7,
                straight_flush: 8
                }

VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]


class Hand
  attr_reader :cards, :value, :high_card

  def initialize(cards)
    @cards = cards
    @value = 0
    @high_card = 0
  end

  def set_value

  end

  # private

  def straight_flush?

  end

  def four_of_a_kind?

  end

  def full_house?

  end

  def flush?

  end

  def straight?

  end

  def three_of_a_kind?
    (0..4).each do |i|
      (i + 1..4).each do |j|
        (j + 1..4).each do |k|
          return true if @cards[i].value == @cards[j].value &&
          @cards[i].value == @cards[k].value
        end
      end
    end
    false
  end

  def two_pair?
    num_pairs = 0
    (0..4).each do |i|
      ((i+1)..4).each do |j|
        num_pairs += 1 if @cards[i].value == @cards[j].value
        return true if num_pairs == 2
      end
    end
    false
  end

  def pair?
    num_pairs = 0
    (0..4).each do |i|
      ((i+1)..4).each do |j|
        num_pairs += 1 if @cards[i].value == @cards[j].value
      end
    end
    return true if num_pairs == 1
    false
  end


  def sort_cards(hand)
    return hand if hand.length < 2
    first = hand[0]
    left = hand[1..-1].select{ |card| VALUES.index(card.value) < VALUES.index(first.value)}
    right = hand[1..-1].select{ |card| VALUES.index(card.value) > VALUES.index(first.value)}
    sort_cards(left) + [first] + sort_cards(right)
  end
end

p sort_cards([Card.new(:clubs, :king),
                 Card.new(:clubs, 4),
                 Card.new(:spades, 10),
                 Card.new(:diamonds, 2),
                 Card.new(:hearts, :ace)])
