class Fixnum

  def to_roman
    zero_padded_digits = RomanHelper.digits(self)

    zero_padded_digits.
      each_with_index.
      reduce('') do |roman_chars, (digit, index)|
      if digit != "0"
        roman_chars += RomanHelper.
                       roman_character_from_digit(digit, index)
      end
      roman_chars
    end
  end

end

module RomanHelper

  def self.roman_character_from_digit(digit, location)
    return "M" * digit.to_i if location == 0
    DICTIONARY[location][digit]
  end

  def self.digits(original_integer)
    padded_with_0_until_length_4 = original_integer.to_s.chars
    until padded_with_0_until_length_4.length == 4 do
      padded_with_0_until_length_4.unshift("0")
    end
    padded_with_0_until_length_4
  end

  DICTIONARY =
    {
      1 => {
        "1" => "C",
        "2" => "CC",
        "3" => "CCC",
        "4" => "CD",
        "5" => "D",
        "6" => "DC",
        "7" => "DCC",
        "8" => "DCCC",
        "9" => "CM",
      },
      2 => {
        "1" => "X",
        "2" => "XX",
        "3" => "XXX",
        "4" => "XL",
        "5" => "L",
        "6" => "LX",
        "7" => "LXX",
        "8" => "LXXX",
        "9" => "XC",
      },
      3 => {
        "1" => "I",
        "2" => "II",
        "3" => "III",
        "4" => "IV",
        "5" => "V",
        "6" => "VI",
        "7" => "VII",
        "8" => "VIII",
        "9" => "IX"
      }
    }

end

module BookKeeping
  VERSION = 2
end
