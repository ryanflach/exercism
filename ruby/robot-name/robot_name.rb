class Robot
  attr_reader :name

  @@taken_names = []

  def initialize
    @name = generate_random_name
  end

  def reset
    @@taken_names.delete(name)
    @name = generate_random_name
  end

  private

  VIABLE_LETTERS = ('A'..'Z').to_a

  def generate_random_name
    name = "#{two_random_letters}#{three_random_numbers}"
    if @@taken_names.include?(name)
      generate_random_name
    else
      @@taken_names << name
      name
    end
  end

  def two_random_letters
    "#{VIABLE_LETTERS.sample}#{VIABLE_LETTERS.sample}"
  end

  def three_random_numbers
    "#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}"
  end
end

module BookKeeping
  VERSION = 2
end
