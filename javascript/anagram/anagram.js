class Anagram {
  constructor(mainWord) {
    this.mainWord = mainWord;
  }

  matches(...listOfWords) {
    const words = arrayOfWords(listOfWords);
    const viableWords = words.filter((word) => {
      return word.length === this.mainWord.length;
    });

    if (viableWords.length === 0) { return []; }

    return viableWords.filter((word) => {
      let characterMatches = 0;
      let originalWord = this.mainWord.toLowerCase();
      if (originalWord === word.toLowerCase()) { return false; }
      for (let i = 0; i < word.length; i ++) {
        if (originalWord.includes(word[i].toLowerCase())) {
          characterMatches++;
          originalWord = originalWord.replace(word[i], '');
        }
      }
      return characterMatches === this.mainWord.length;
    });
  }
}

const arrayOfWords = (args) => {
  if (args.length === 1 && typeof args[0] !== 'string') {
    return args[0];
  } else {
    return args;
  }
};

module.exports = Anagram;
