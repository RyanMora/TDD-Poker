class Game
  attr_accessor :towers

  def initialize
    @towers = [[3, 2 ,1], [], []]
  end


  def move(origin, destination)
    @towers[destination] << @towers[origin].pop
  end

  def won?
    if @towers[0].empty? &&
      (@towers[1] == [3,2,1] || @towers[2] == [3,2,1])
      true
    else
      false
    end
  end

  def valid_move?(origin, destination)
    return false if @towers[origin].empty?
    return true if @towers[destination].empty?
    if @towers[destination].last > @towers[origin].last
      return true
    else
      return false
    end
  end

end
