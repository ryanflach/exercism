var Words = function(){}

Words.prototype.count = function(words) {
  var counts = Object.create(null);
  var cleanString = words.replace(/\s+/, ' ').trim().toLowerCase();
  cleanString.split(' ').forEach(function(word){
    counts[word] = counts[word] + 1 || 1
  });
  return counts;
};

module.exports = Words;
