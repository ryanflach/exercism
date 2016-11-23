class Bob
  def initialize
  end

  def hey(phrase)
    if yelling?(phrase)
      'Whoa, chill out!'
    elsif question?(phrase)
      'Sure.'
    elsif no_content?(phrase)
      'Fine. Be that way!'
    else
      'Whatever.'
    end
  end

  private

  def yelling?(phrase)
    phrase.upcase == phrase && phrase.upcase.scan(/[A-Z]/).length > 0
  end

  def question?(phrase)
    phrase.chars.last == '?'
  end

  def no_content?(phrase)
    phrase.gsub(/\s+/, '').empty?
  end
end
