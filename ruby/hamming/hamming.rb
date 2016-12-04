class Hamming
  def initialize(strand_one, strand_two)
    @strand_one = strand_one
    @strand_two = strand_two
    validate_input
  end

  def self.compute(strand_one, strand_two)
    new(strand_one, strand_two).compute_difference
  end

  def compute_difference
    strand_one.chars.select.with_index do |char, index|
      char != strand_two[index]
    end.length
  end

  private

  attr_reader :strand_one,
              :strand_two

  def validate_input
    if strand_one.length != strand_two.length
      raise ArgumentError,
        "Length of strands must be identical. " \
        "#{strand_one.length} != #{strand_two.length}"
    end
  end

end

module BookKeeping
  VERSION = 3
end
