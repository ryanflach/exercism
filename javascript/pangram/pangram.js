var Pangram = function(input) {
  this.originalSentence = input;
};

Pangram.prototype.isPangram = function() {
  var letters = Object.create(null);
  const cleanString = this.originalSentence
    .toLowerCase()
    .replace(/[^a-z]/g, '');
  cleanString.split('').forEach(function(letter) {
    letters[letter] = letters[letter] + 1 || 1;
  });
  return Object.keys(letters).length === 26;
};

module.exports = Pangram;
