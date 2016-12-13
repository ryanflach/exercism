const DNA_TO_RNA = {
  'G': 'C',
  'C': 'G',
  'T': 'A',
  'A': 'U'
};

class DnaTranscriber {
  toRna(nucleotides) {
    return (
      nucleotides.split('')
                 .map(nucleotide => DNA_TO_RNA[nucleotide])
                 .join('')
    );
  }
}

module.exports = DnaTranscriber;
