class Phrase
  def initialize(phrase)
    @words = clean_words(phrase)
  end

  def word_count
    words.reduce(Hash.new(0)) do |acc, word|
      acc[word] += 1
      acc
    end
  end

  private

  attr_reader :words

  def clean_words(phrase)
    phrase.downcase.scan(/\b[\w']+\b/)
  end
end

module BookKeeping
  VERSION = 1
end
