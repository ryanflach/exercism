const NUM_UNIQUE_CHARS = 26;

class Pangram {
  constructor(input) {
    this.originalSentence = input;
  }

  isPangram() {
    const cleanString = this.originalSentence.toLowerCase()
                                             .replace(/[^a-z]/g, '');

    return new Set(cleanString).size === NUM_UNIQUE_CHARS;
  }
}

module.exports = Pangram;
