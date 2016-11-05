module Hamming
  def self.compute(strand_one, strand_two)
    raise ArgumentError if strand_one.length != strand_two.length
    location = 0
    strand_one.split('').reduce(0) do |total, char|
      total += 1 if char != strand_two[location]
      location += 1
      total
    end
  end
end

module BookKeeping
  VERSION = 3
end
