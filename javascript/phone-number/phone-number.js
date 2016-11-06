class PhoneNumber {
  constructor(rawData) {
    this.cleanNumber = rawData.replace(/\D/g, '');
  }

  number() {
    if (this.cleanNumber[0] === '1' && this.cleanNumber.length === 11) {
      return this.cleanNumber.slice(1);
    } else if (this.cleanNumber.length === 10) {
      return this.cleanNumber;
    } else {
      return '0000000000';
    }
  }

  areaCode() {
    if (this.number() !== '0000000000') {
      return this.number().slice(0, 3);
    }
  }

  toString() {
    if (this.areaCode()) {
      const firstThreeDigits = this.number().slice(3, 6);
      const lastFourDigits = this.number().slice(6);
      return `(${this.areaCode()}) ${firstThreeDigits}-${lastFourDigits}`;
    }
  }
}

module.exports = PhoneNumber;
