class RunLengthEncoding
  def self.encode(input)
    input.scan(/((.)\2*)/).reduce('') do |output, (chain, char)|
      output += chain.length > 1 ? "#{chain.length}#{char}" : char
    end
  end

  def self.decode(input)
    input.scan(/(\d*)(.)/).reduce('') do |output, (length, char)|
      output += length.to_i > 1 ? char * length.to_i : char
    end
  end
end

module BookKeeping
  VERSION = 2
end
