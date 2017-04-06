require 'towers_of_hanoi'
require 'rspec'

describe Game do
  subject(:towers) { Game.new }

  describe '#initialize' do

    it 'makes the towers' do
      expect(towers.towers).to eq([[3, 2, 1],[],[]])
    end

  end

  describe '#move' do

    it 'takes two numbers as arguments' do
      expect(towers).to receive(:move).with(0, 1)
      towers.move(0, 1)
    end
    it 'updates the towers correctly' do
      towers.move(0, 1)
      expect(towers.towers).to eq([[3, 2], [1], []])
    end

  end

  describe '#won?' do
    it 'should return false before gamestate is complete' do
      expect(towers.won?).to eq(false)
    end
    it 'should return true if the game is over' do
      towers.towers = [[], [], [3,2,1]]
      expect(towers.won?).to eq(true)
    end
  end

  describe '#valid_move?' do
    it 'should return true if its a valid move' do
      expect(towers.valid_move?(0, 1)).to eq(true)
    end
    it 'should return false if its not a valid move' do
      expect(towers.valid_move?(1,0)).to eq(false)
    end
  end




end
