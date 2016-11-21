class Grains
  def self.square(square_number)
    return square_number if square_number < 3
    grains = 2
    3.upto(square_number) do |n|
      grains *= 2
    end
    grains
  end

  def self.total
    total_grains = 0
    current = 1
    while current <= 64
      total_grains += square(current)
      current += 1
    end
    total_grains
  end
end
