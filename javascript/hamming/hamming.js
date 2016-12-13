class Hamming {
  compute(firstStrand, secondStrand) {
    let count = 0;

    if (firstStrand.length !== secondStrand.length) {
      throw new Error('DNA strands must be of equal length.');
    }

    for (let i = 0; i < firstStrand.length ; i++) {
      if (firstStrand.charAt(i) !== secondStrand.charAt(i)) { count += 1; }
    }

    return count;
  }
}

module.exports = Hamming;
