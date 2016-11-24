const BigI = require('./big-integer');

class Grains {
  square(n) {
    return this.num_grains_in_square(n).toString();
  }

  num_grains_in_square(n) {
    return BigI(2).pow(n - 1);
  }

  total() {
    let total = BigI();
    for (let n = 1; n <= 64; n++) {
      total = total.add(this.num_grains_in_square(n));
    }
    return total.toString();
  }
}

module.exports = Grains;
