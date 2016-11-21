class Grains
  FIRST_SQUARE = 1
  LAST_SQUARE  = 64

  def self.square(n)
    if n < FIRST_SQUARE || n > LAST_SQUARE
      raise ArgumentError, "#{n} is invalid. Must be between " \
                           "#{FIRST_SQUARE} and #{LAST_SQUARE}"
    end
    number_of_grains(n)
  end

  def self.total
    FIRST_SQUARE.upto(LAST_SQUARE).reduce(0) do |total_grains, n|
      total_grains += square(n)
    end
  end

  def self.number_of_grains(n)
    2**(n - 1)
  end

  private_class_method :number_of_grains
end
