class FoodChain {

  constructor() {
    this.verseAnimals = {
      1: ['fly', "I don't know why she swallowed the fly. Perhaps she'll die."],
      2: ['spider', "It wriggled and jiggled and tickled inside her."],
      3: ['bird', 'How absurd to swallow a bird!'],
      4: ['cat', 'Imagine that, to swallow a cat!'],
      5: ['dog', 'What a hog, to swallow a dog!'],
      6: ['goat', 'Just opened her throat and swallowed a goat!'],
      7: ['cow', "I don't know how she swallowed a cow!"],
      8: ['horse', "She's dead, of course!"]
    };
  }

  verse(verseNumber) {
    let completeVerse = 'I know an old lady who swallowed a ';
    for (let i = verseNumber; i > 0; i--) {
      let currentAnimal = this.verseAnimals[i][0];
      let previousAnimal = this.verseAnimals[i-1] ? this.verseAnimals[i-1][0] : null;
      let phrase = this.verseAnimals[i][1];
      if (i === verseNumber) { completeVerse += `${currentAnimal}.\n${phrase}\n`; }
      if (i === 8) { return completeVerse; }
      if (i === 1 && verseNumber !== 1) { completeVerse += `${phrase}\n`; }
      if (previousAnimal) {
        completeVerse += `She swallowed the ${currentAnimal} to catch the ${previousAnimal}.\n`;
      }
      if (previousAnimal === 'spider') {
        let lastCharIndex = completeVerse.length - 2;
        completeVerse = completeVerse.substring(0, lastCharIndex) +
                        ' that wriggled and jiggled and tickled inside her.' +
                        completeVerse.substring(lastCharIndex + 1);
      }
    }
    return completeVerse;
  }

  verses(startingVerse, endingVerse) {
    let selectedVerses = `${this.verse(startingVerse)}\n`;
    for (let i = startingVerse + 1; i <= endingVerse; i++) {
      selectedVerses += `${this.verse(i)}\n`;
    }
    return selectedVerses;
  }

}

module.exports = FoodChain;
