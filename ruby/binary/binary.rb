class Binary
  BINARY_BASE = 2

  def initialize(binary_data)
    validate_data(binary_data)
    @binary_data = binary_data
  end

  def to_decimal
    reversed_chars = binary_data.reverse.chars
    reversed_chars.each_with_index.reduce(0) do |total, (char, index)|
      value = char.to_i * BINARY_BASE**index
      total += value
    end
  end

  private

  attr_reader :binary_data

  def validate_data(data)
    if /[^0-1]/.match(data)
      raise ArgumentError,
        "#{data} is invalid. Can only contain '1's and '0's."
    end
  end
end

module BookKeeping
  VERSION = 2
end
