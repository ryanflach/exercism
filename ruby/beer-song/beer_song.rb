class BeerSong
  def initialize
    @num_bottles = 0
  end

  def verse(verse_number)
    @num_bottles = verse_number

    num_bottles == 0 ? no_more_bottles : bottles_on_wall + take_down
  end

  def verses(starting_verse, ending_verse)
    output = ''
    starting_verse.downto(ending_verse) do |verse_number|
      output += "#{verse(verse_number)}\n"
    end
    output.chomp
  end

  def lyrics
    verses(99, 0)
  end

  private

  attr_reader :num_bottles

  def bottles_on_wall
    noun = num_bottles > 1 ? 'bottles' : 'bottle'

    "#{num_bottles} #{noun} of beer on the wall, " \
    "#{num_bottles} #{noun} of beer.\n"
  end

  def take_down
    noun = num_bottles > 1 ? 'one' : 'it'

    "Take #{noun} down and pass it around, " \
    "#{remaining_bottles} of beer on the wall.\n"
  end

  def no_more_bottles
    "No more bottles of beer on the wall, no more bottles of beer.\n" \
    "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end

  def remaining_bottles
    case num_bottles
    when 1
      'no more bottles'
    when 2
      '1 bottle'
    else
      "#{num_bottles - 1} bottles"
    end
  end
end

module BookKeeping
  VERSION = 2
end
