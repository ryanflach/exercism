class Anagram
  def initialize(keyword)
    @keyword                   = keyword.downcase
    @keyword_sorted_characters = @keyword.chars.sort
  end

  def match(words_to_match_against)
    words_to_match_against.select { |word| anagram_to_keyword?(word.downcase) }
  end

  private

  attr_reader :keyword,
              :keyword_sorted_characters

  def anagram_to_keyword?(word)
    word != keyword && keyword_sorted_characters == word.chars.sort
  end
end

module BookKeeping
  VERSION = 2
end