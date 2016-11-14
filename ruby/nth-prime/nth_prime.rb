module Prime
  def self.nth(number)
    raise ArgumentError if number <= 0
    primes = []
    until primes.length == number do
      primes << self.find_next_prime(primes)
    end
    primes[number - 1]
  end

  def self.find_next_prime(previous_primes)
    return 2 if previous_primes.empty?
    current_number = previous_primes.last + 1
    until self.prime?(current_number) do
      current_number += 1
    end
    current_number
  end

  def self.prime?(number)
    2.upto(number - 1) do |n|
      return false if number % n == 0
    end
    true
  end
end

module BookKeeping
  VERSION = 1
end
