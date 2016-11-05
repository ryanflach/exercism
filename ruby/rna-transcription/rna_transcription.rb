module Complement
  def self.of_dna(dna)
    dna.chars.reduce('') do |ending, char|
      rna_char = rna_to_dna[char.to_sym]
      return '' if rna_char.nil?
      ending += rna_char
    end
  end

  private

  def self.rna_to_dna
    {
      "G": "C",
      "C": "G",
      "T": "A",
      "A": "U"
    }
  end
end

module BookKeeping
  VERSION = 4
end
