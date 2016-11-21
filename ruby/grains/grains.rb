class Grains
  def self.square(square_number)
    2**(square_number - 1)
  end

  def self.total
    1.upto(64).reduce(0) { |total, n| total += square(n) }
  end
end
