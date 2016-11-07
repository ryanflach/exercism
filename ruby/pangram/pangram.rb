module Pangram
  NUM_ALPHABET_CHARS = 26

  def self.is_pangram?(str)
    lower_case_chars_only = str.downcase.gsub(/[^a-z]/, '')
    num_unique_chars = lower_case_chars_only.chars.uniq.length
    num_unique_chars == NUM_ALPHABET_CHARS
  end
end

module BookKeeping
  VERSION = 2
end
