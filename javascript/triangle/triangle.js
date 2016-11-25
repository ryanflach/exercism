class Triangle {
  constructor(a, b, c) {
    this.sides = [a, b, c];
    this.uniqueSides = [...new Set(this.sides)];
  }

  kind() {
    this.checkValidity();

    if (this.equilateral()) {
      return 'equilateral';
    } else if (this.isosceles()) {
      return 'isosceles';
    } else {
      return 'scalene';
    }
  }

  equilateral() {
    return this.uniqueSides.length === 1;
  }

  isosceles() {
    return this.uniqueSides.length === 2;
  }

  checkValidity() {
    const invalidLengths = this.uniqueSides
                               .some((sideLength) => sideLength <= 0);
    if (invalidLengths) {
      throw "Sides must all have a positive length.";
    }

    if (this.inequality()) {
      throw "No one side can be greater than the sum of the other two.";
    }
  }

  inequality() {
    const sides = this.sides;
    const length = sides.length;
    for (let i = 0; i < length; i++) {
      let sum;
      if (i === length - 1) {
        sum = sides[0] + sides[1];
      } else if (i === length - 2) {
        sum = sides[0] + sides[i + 1];
      } else {
        sum = sides[i + 1] + sides[i + 2];
      }
      if (sides[i] > sum) { return true; }
    }
  }
}

module.exports = Triangle;
