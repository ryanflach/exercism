module ETL
  def self.transform(legacy_values)
    legacy_values.reduce({}) do |formatted, (score, letters)|
      letters.each { |letter| formatted[letter.downcase] = score }
      formatted
    end
  end
end
