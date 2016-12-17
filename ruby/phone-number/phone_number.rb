class PhoneNumber
  VALID_LENGTH = 10
  COUNTRY_CODE = '1'
  INVALID_RETURN = '0000000000'

  def initialize(phone_number)
    @phone_number = phone_number
  end

  def number
    @number ||= if clean_number.length == VALID_LENGTH
                  clean_number
                else
                  INVALID_RETURN
                end
  end

  def area_code
    number[0..2]
  end

  def to_s
    first_three = number[3..5]
    last_four = number[6..10]
    "(#{area_code}) #{first_three}-#{last_four}"
  end

  private

  attr_reader :phone_number

  def digits_only
    return INVALID_RETURN if phone_number.match(/[A-z]/)
    phone_number.gsub(/[^0-9]/, '')
  end

  def handle_country_code(digits)
    if digits.length > VALID_LENGTH && digits.chars.first == COUNTRY_CODE
      digits[1..-1]
    else
      digits
    end
  end

  def clean_number
    handle_country_code(digits_only)
  end
end
