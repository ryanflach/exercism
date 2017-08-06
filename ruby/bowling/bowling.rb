require 'pry'
module BookKeeping
 VERSION = 3
end

class Game
  TOTAL_FRAMES  = 10.freeze
  PINS_IN_FRAME = 10.freeze

  class BowlingError < StandardError; end

  def initialize
    @frames         = Array.new(TOTAL_FRAMES) { [] }
    @frame_number   = 0
    @remaining_pins = PINS_IN_FRAME
  end

  def roll(pins)
    raise BowlingError if invalid_roll?(pins)

    add_pins_to_frame(pins)

    clean_up(pins)
  end

  def score
    raise BowlingError unless game_over?

    frames.flatten.reduce(:+)
  end

  private

  attr_reader :frames

  def invalid_roll?(pins)
    pins < 0 ||
      pins > PINS_IN_FRAME ||
      pins > @remaining_pins ||
      game_over?
  end

  def add_pins_to_frame(pins)
    scorable_frames.each { |frame| frame << pins }
  end

  def clean_up(pins)
    @remaining_pins -= pins

    @remaining_pins = 10 if @remaining_pins.zero?

    if full_frame?
      @frame_number += 1
      @remaining_pins = 10
    end
  end

  def full_frame?
    if last_frame?
      (current_frame.count == 2 && current_frame_score < PINS_IN_FRAME) ||
        current_frame.count == 3
    else
      current_frame_score == PINS_IN_FRAME || current_frame.count == 2
    end
  end

  def current_frame
    frames[@frame_number]
   end

  def current_frame_score
    current_frame.reduce(:+)
  end

  def last_frame?
    @frame_number == TOTAL_FRAMES - 1
  end

  def game_over?
    @frame_number == TOTAL_FRAMES
  end

  def scorable_frames
    frames.take(@frame_number +  1).select do |frame|
      frame.length < 2 ||
        frame.length < 3 && (strike_frame?(frame) || spare_frame?(frame))
    end
  end

  def strike_frame?(frame)
    frame.first == PINS_IN_FRAME
  end

  def spare_frame?(frame)
    frame.take(2).reduce(:+) == PINS_IN_FRAME
  end
end