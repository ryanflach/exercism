const takenNames = {};

const viableLetters = [
  'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I',
  'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
  'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'
];

const twoRandomLetters = () => {
  return (
    `${viableLetters[Math.floor(Math.random() * viableLetters.length)]}` +
    `${viableLetters[Math.floor(Math.random() * viableLetters.length)]}`
  );
};

const threeRandomNumbers = () => {
  return (
    `${Math.floor(Math.random() * 10)}` +
    `${Math.floor(Math.random() * 10)}` +
    `${Math.floor(Math.random() * 10)}`
  );
};

class Robot {
  constructor(){
    this.name = this.generateRandomName();
  }

  generateRandomName(){
    const name = `${twoRandomLetters()}${threeRandomNumbers()}`;
    if (takenNames[name]) {
      this.generateRandomName();
    } else {
      takenNames[name] = name;
      return name;
    }
  }

  reset(){
    this.name = this.generateRandomName();
  }

}

module.exports = Robot;
