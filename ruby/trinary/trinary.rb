class Trinary
  TRINARY_MULTIPLIER = 3
  INVALID_RETURN = 0

  def initialize(trinary)
    @trinary = trinary
  end

  def to_decimal
    return INVALID_RETURN if trinary_invalid?

    processable.each_with_index.reduce(0) do |output, (digit, index)|
      output += convert_digit(digit, index)
    end
  end

  private

  attr_reader :trinary

  def convert_digit(digit, location)
    digit.to_i * TRINARY_MULTIPLIER**location
  end

  def processable
    trinary.reverse.chars
  end

  def trinary_invalid?
    trinary =~ /[^0-2]/
  end
end

module BookKeeping
  VERSION = 1
end
