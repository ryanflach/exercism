class Binary
  def initialize(binary_data)
    validate_data(binary_data)
    @binary_data = binary_data
  end

  def to_decimal

  end

  private

  attr_reader :binary_data

  def validate_data(data)
    if /[^0-1]/.match(data)
      raise ArgumentError,
        "String can only contain combinations of '1' and '0'."
    end
  end
end

module BookKeeping
  VERSION = 2
end
