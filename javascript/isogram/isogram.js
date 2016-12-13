class Isogram {
  constructor(word) {
    this.input = word;
  }

  isIsogram() {
    const cleanChars = this.input.toLowerCase()
                               .replace(/[\s-]/g, '')
                               .split('');
    const unique = cleanChars.filter((letter, index, array) => {
      return array.indexOf(letter) === index;
    });
    return unique.length === cleanChars.length;
  }
}

module.exports = Isogram;
