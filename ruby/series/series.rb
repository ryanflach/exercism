class Series
  def initialize(input)
    @input = input
  end

  def slices(length)
    validate_input(length)
    input.chars.each_with_index.reduce([]) do |output, (_char, index)|
      slice = input[index...index + length]
      slice.length < length ? output : output << process_chars(slice)
    end
  end

  private

  attr_reader :input

  def validate_input(length)
    if length > input.length || length <= 0
      raise ArgumentError, "Desired series length of #{length} is " \
      "not valid. Must be between 0 and #{input.length}."
    end
  end

  def process_chars(slice)
    slice.chars.map(&:to_i)
  end
end
