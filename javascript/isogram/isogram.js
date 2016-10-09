var Isogram = function(word) {
  this.input = word;
};

Isogram.prototype.isIsogram = function() {
  var cleanChars = this.input.toLowerCase()
    .replace(/[\s-]/g, '')
    .split('');
  var unique = cleanChars.filter(function(letter, index, array) {
    return array.indexOf(letter) === index;
  });
  return unique.length === cleanChars.length;
};

module.exports = Isogram;
