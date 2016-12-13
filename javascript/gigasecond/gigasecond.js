const GIGASECOND = 1000000000 * 1000;

class Gigasecond {
  constructor(startingDate) {
    this.startingDate = startingDate;
  }

  date() {
    const startingTime = this.startingDate.getTime();
    const endingTime = startingTime + GIGASECOND;
    return new Date(endingTime);
  }
}

module.exports = Gigasecond;
