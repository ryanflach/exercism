var Hamming = function() {};

Hamming.prototype.compute = function(inputOne, inputTwo) {
  var count = 0;

  if (inputOne.length !== inputTwo.length) {
    throw new Error('DNA strands must be of equal length.');
  }

  for (var i = 0; i < inputOne.length ; i++) {
    if (inputOne.charAt(i) !== inputTwo.charAt(i)) { count += 1; }
  }

  return count;
};

module.exports = Hamming;
