class Sieve
  def initialize(ending_number)
    @ending_number = ending_number
  end

  def primes
    multiples, primes = [], []
    2.upto(ending_number) do |n|
      next if multiples.include?(n)
      primes << n
      current = n
      until current > ending_number do
        multiples << current
        current += n
      end
    end
    primes
  end

  private

  attr_reader :ending_number
end

module BookKeeping
  VERSION = 1
end
