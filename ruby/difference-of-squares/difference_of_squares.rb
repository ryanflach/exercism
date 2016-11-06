class Squares
  def initialize(num)
    @num = num
  end

  def square_of_sum
    sum_of_num ** 2
  end

  def sum_of_squares
    squares_of_num.reduce(0) { |total, square| total += square }
  end

  def difference
    square_of_sum - sum_of_squares
  end

  private

  attr_reader :num

  def sum_of_num
    sum = 0
    (num + 1).times { |index| sum += index }
    sum
  end

  def squares_of_num
    squares = []
    (num + 1).times { |index| squares << index ** 2 }
    squares
  end
end

module BookKeeping
  VERSION = 3
end
