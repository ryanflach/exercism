var DnaTranscriber = function(){};

var dnaToRna = {
  'G': 'C',
  'C': 'G',
  'T': 'A',
  'A': 'U'
};

DnaTranscriber.prototype.toRna = function (nucleotides) {
  return nucleotides.split('').map(function(nucleotide){
    return dnaToRna[nucleotide];
  }).join('');
};

module.exports = DnaTranscriber;
