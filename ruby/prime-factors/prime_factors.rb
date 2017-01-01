class PrimeFactors
  MINIMUM_DIVISOR = 2

  attr_reader :factors

  def initialize(product)
    @product = product
    @factors = []
  end

  def self.for(product)
    return [] if product < MINIMUM_DIVISOR
    instance = new(product)
    instance.factors_of(product)
    instance.factors
  end

  def factors_of(value)
    current = MINIMUM_DIVISOR
    while value % current != 0 && current <= value
      current += 1
    end
    factors << current
    factors_of(value / current) if current < value
  end

  private

  attr_reader :product
end
