class Array

  def my_uniq
    uniq = []
    self.each do |el|
      uniq << el unless uniq.include?(el)
    end
    uniq
  end

  def two_sum
    pairs = []
    (0...length).each do |i|
      ((i + 1)...length).each do |j|
        sum = self[i] + self[j]
        pairs << [ i,j] if sum == 0
      end
    end
    pairs
  end

  def my_transpose
    transposed = []
    self.each_index do |i|
      sub_transposed = []
      self.each_index do |j|
        sub_transposed << self[j][i]
      end
      transposed << sub_transposed
    end
    transposed
  end

  def stock_picker
    best_days = [0,1]
    self.each_index do |i|
      (i + 1...length).each do |j|
        current_best_sum = self[best_days[1]] - self[best_days[0]]
        current_sum = self[j] - self[i]
        best_days = [i,j] if current_sum > current_best_sum
      end
    end
    "buy day #{best_days[0]}, sell day #{best_days[1]}"
  end
end
