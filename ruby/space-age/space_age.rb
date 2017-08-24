class SpaceAge
  EARTH_YEAR = 31557600.0
  VS_EARTH   = {
    'earth'   => 1.0,
    'mercury' => 0.2408467,
    'venus'   => 0.61519726,
    'mars'    => 1.8808158,
    'jupiter' => 11.862615,
    'saturn'  => 29.447498,
    'uranus'  => 84.016846,
    'neptune' => 164.79132
  }

  def initialize(seconds)
    @seconds = seconds
  end

  def method_missing(method_id)
    planet = method_id.to_s.split('_').last
    super unless VS_EARTH.has_key?(planet)
    earth_years / VS_EARTH[planet]
  end

  private

  attr_reader :seconds

  def earth_years
    seconds / EARTH_YEAR
  end
end

module BookKeeping
  VERSION = 1
end