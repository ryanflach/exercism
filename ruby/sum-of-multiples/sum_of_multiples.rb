class SumOfMultiples
  def initialize(*numbers)
    @divisible_by = numbers
  end

  def to(ending_number)
    (1...ending_number).select do |number|
      divisible_by.any? { |n| number % n == 0 }
    end.reduce(0, :+)
  end

  private

  attr_reader :divisible_by
end
