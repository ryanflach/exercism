var Pangram = function(input) {
  this.originalSentence = input;
};

Pangram.prototype.isPangram = function() {
  const cleanString = this.originalSentence
    .toLowerCase()
    .replace(/[^a-z]/g, '');

  return new Set(cleanString).size === 26;
};

module.exports = Pangram;
