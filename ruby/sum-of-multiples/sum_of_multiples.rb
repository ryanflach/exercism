class SumOfMultiples
  def initialize(*numbers)
    @divisible_by = numbers.to_a
  end

  def to(ending_number)
    (1...ending_number).select do |number|
      number if divisible_by.any? { |n| number % n == 0 }
    end.reduce(0, :+)
  end

  private

  attr_reader :divisible_by
end
