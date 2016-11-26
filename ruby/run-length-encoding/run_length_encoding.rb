class RunLengthEncoding
  def self.encode(input)
    output, previous, count = '', '', 0
    input.chars.each_with_index do |char, index|
      at_last_char = index == input.length - 1
      if char == previous
        count += 1
        at_last_char ? output += "#{count}#{previous}" : next
      else
        output += count > 1 ? "#{count}#{previous}" : previous
        return output += char if at_last_char
      end
      previous = char
      count = 1
    end
    output
  end
end

module BookKeeping
  VERSION = 2
end
